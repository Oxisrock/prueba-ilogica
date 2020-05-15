-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2020 a las 17:14:12
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ms`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-21 13:13:53', '2020-04-21 18:13:53', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_frm_fields`
--

CREATE TABLE `wp_frm_fields` (
  `id` bigint(20) NOT NULL,
  `field_key` varchar(100) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `type` text DEFAULT NULL,
  `default_value` longtext DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `field_order` int(11) DEFAULT 0,
  `required` int(1) DEFAULT NULL,
  `field_options` longtext DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ;

--
-- Volcado de datos para la tabla `wp_frm_fields`
--

INSERT INTO `wp_frm_fields` (`id`, `field_key`, `name`, `description`, `type`, `default_value`, `options`, `field_order`, `required`, `field_options`, `form_id`, `created_at`) VALUES
(1, 'qh4icy', 'Nombre', '', 'text', '', '', 1, 1, 'a:16:{s:4:\"size\";s:0:\"\";s:3:\"max\";s:0:\"\";s:5:\"label\";s:0:\"\";s:5:\"blank\";s:27:\"This field cannot be blank.\";s:18:\"required_indicator\";s:1:\"*\";s:7:\"invalid\";s:15:\"Name is invalid\";s:14:\"separate_value\";i:0;s:14:\"clear_on_focus\";i:0;s:7:\"classes\";s:19:\"frm_full input-form\";s:11:\"custom_html\";s:489:\"<div id=\"frm_field_[id]_container\" class=\"frm_form_field form-field [required_class][error_class]\">\r\n    <label for=\"field_[key]\" id=\"field_[key]_label\" class=\"frm_primary_label\">[field_name]\r\n        <span class=\"frm_required\">[required_label]</span>\r\n    </label>\r\n    [input]\r\n    [if description]<div class=\"frm_description\" id=\"frm_desc_field_[key]\">[description]</div>[/if description]\r\n    [if error]<div class=\"frm_error\" id=\"frm_error_field_[key]\">[error]</div>[/if error]\r\n</div>\";s:6:\"minnum\";i:1;s:6:\"maxnum\";i:10;s:4:\"step\";i:1;s:6:\"format\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:10:\"in_section\";i:0;}', 1, '2020-04-24 20:40:43'),
(3, '29yf4d', 'Email', '', 'email', '', '', 2, 1, 'a:16:{s:4:\"size\";s:0:\"\";s:3:\"max\";s:0:\"\";s:5:\"label\";s:0:\"\";s:5:\"blank\";s:27:\"This field cannot be blank.\";s:18:\"required_indicator\";s:1:\"*\";s:7:\"invalid\";s:34:\"Please enter a valid email address\";s:14:\"separate_value\";i:0;s:14:\"clear_on_focus\";i:0;s:7:\"classes\";s:19:\"frm_full input-form\";s:11:\"custom_html\";s:489:\"<div id=\"frm_field_[id]_container\" class=\"frm_form_field form-field [required_class][error_class]\">\r\n    <label for=\"field_[key]\" id=\"field_[key]_label\" class=\"frm_primary_label\">[field_name]\r\n        <span class=\"frm_required\">[required_label]</span>\r\n    </label>\r\n    [input]\r\n    [if description]<div class=\"frm_description\" id=\"frm_desc_field_[key]\">[description]</div>[/if description]\r\n    [if error]<div class=\"frm_error\" id=\"frm_error_field_[key]\">[error]</div>[/if error]\r\n</div>\";s:6:\"minnum\";i:1;s:6:\"maxnum\";i:10;s:4:\"step\";i:1;s:6:\"format\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:10:\"in_section\";i:0;}', 1, '2020-04-24 20:40:44'),
(5, '9jv0r1', 'Mensaje', '', 'textarea', '', '', 3, 1, 'a:16:{s:4:\"size\";s:0:\"\";s:3:\"max\";s:1:\"5\";s:5:\"label\";s:0:\"\";s:5:\"blank\";s:27:\"This field cannot be blank.\";s:18:\"required_indicator\";s:1:\"*\";s:7:\"invalid\";s:0:\"\";s:14:\"separate_value\";i:0;s:14:\"clear_on_focus\";i:0;s:7:\"classes\";s:19:\"frm_full input-form\";s:11:\"custom_html\";s:489:\"<div id=\"frm_field_[id]_container\" class=\"frm_form_field form-field [required_class][error_class]\">\r\n    <label for=\"field_[key]\" id=\"field_[key]_label\" class=\"frm_primary_label\">[field_name]\r\n        <span class=\"frm_required\">[required_label]</span>\r\n    </label>\r\n    [input]\r\n    [if description]<div class=\"frm_description\" id=\"frm_desc_field_[key]\">[description]</div>[/if description]\r\n    [if error]<div class=\"frm_error\" id=\"frm_error_field_[key]\">[error]</div>[/if error]\r\n</div>\";s:6:\"minnum\";i:1;s:6:\"maxnum\";i:10;s:4:\"step\";i:1;s:6:\"format\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:10:\"in_section\";i:0;}', 1, '2020-04-24 20:40:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_frm_forms`
--

CREATE TABLE `wp_frm_forms` (
  `id` int(11) NOT NULL,
  `form_key` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `parent_form_id` int(11) DEFAULT 0,
  `logged_in` tinyint(1) DEFAULT NULL,
  `editable` tinyint(1) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT 0,
  `default_template` tinyint(1) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL
) ;

--
-- Volcado de datos para la tabla `wp_frm_forms`
--

INSERT INTO `wp_frm_forms` (`id`, `form_key`, `name`, `description`, `parent_form_id`, `logged_in`, `editable`, `is_template`, `default_template`, `status`, `options`, `created_at`) VALUES
(1, 'contact-form', 'Contact Us', '<p>We would like to hear from you. Please send us a message by filling out the form below and we will get back with you shortly.</p>\r\n', 0, 0, 0, 0, 0, 'published', 'a:15:{s:14:\"success_action\";s:7:\"message\";s:11:\"success_url\";s:0:\"\";s:15:\"success_page_id\";s:0:\"\";s:9:\"ajax_load\";s:1:\"1\";s:11:\"success_msg\";s:54:\"Your responses were successfully submitted. Thank you!\";s:12:\"custom_style\";s:2:\"98\";s:12:\"submit_value\";s:6:\"Enviar\";s:10:\"form_class\";s:0:\"\";s:11:\"before_html\";s:232:\"<legend class=\\\"frm_screen_reader\\\">[form_name]</legend>\r\n[if form_name]<h3 class=\\\"frm_form_title\\\">[form_name]</h3>[/if form_name]\r\n[if form_description]<div class=\\\"frm_description\\\">[form_description]</div>[/if form_description]\";s:10:\"after_html\";s:0:\"\";s:11:\"submit_html\";s:492:\"<div class=\\\"frm_submit\\\">\r\n[if back_button]<button type=\\\"submit\\\" name=\\\"frm_prev_page\\\" formnovalidate=\\\"formnovalidate\\\" class=\\\"frm_prev_page\\\" [back_hook]>[back_label] <i class=\\\"far fa-paper-plane\\\"></i></button>[/if back_button]\r\n<button class=\\\"frm_button_submit\\\" type=\\\"submit\\\"  [button_action]>[button_label] <i class=\\\"far fa-paper-plane\\\"></i></button>\r\n[if save_draft]<a href=\\\"#\\\" tabindex=\\\"0\\\" class=\\\"frm_save_draft\\\" [draft_hook]>[draft_label]</a>[/if save_draft]\r\n</div>\";s:9:\"show_form\";i:0;s:7:\"akismet\";s:0:\"\";s:7:\"no_save\";i:0;s:11:\"js_validate\";i:0;}', '2020-04-24 20:40:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_frm_items`
--

CREATE TABLE `wp_frm_items` (
  `id` bigint(20) NOT NULL,
  `item_key` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `parent_item_id` bigint(20) DEFAULT 0,
  `is_draft` tinyint(1) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ;

--
-- Volcado de datos para la tabla `wp_frm_items`
--

INSERT INTO `wp_frm_items` (`id`, `item_key`, `name`, `description`, `ip`, `form_id`, `post_id`, `user_id`, `parent_item_id`, `is_draft`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'i1abd', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:08:51', '2020-04-24 21:08:51'),
(2, 'dakfx', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:11:14', '2020-04-24 21:11:14'),
(3, 'fl013', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 0, 0, 0, 0, '2020-04-24 21:12:02', '2020-04-24 21:12:02'),
(4, '5lhx2', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:13:02', '2020-04-24 21:13:02'),
(5, 'rl6tz', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:17:33', '2020-04-24 21:17:33'),
(6, '7l78l', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:18:38', '2020-04-24 21:18:38'),
(7, 'x1ndu', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:20:20', '2020-04-24 21:20:20'),
(8, 'ebvjj', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:22:00', '2020-04-24 21:22:00'),
(9, 'f3d0i', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:23:06', '2020-04-24 21:23:06'),
(10, 'oj521', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:24:25', '2020-04-24 21:24:25'),
(11, '3v72b', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:26:40', '2020-04-24 21:26:40'),
(12, 'qneyd', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:31:06', '2020-04-24 21:31:06'),
(13, '6p60', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:32:45', '2020-04-24 21:32:45'),
(14, 'vv7jo', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:34:46', '2020-04-24 21:34:46'),
(15, 'w7rm8', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:35:50', '2020-04-24 21:35:50'),
(16, 'yc7ym', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:37:30', '2020-04-24 21:37:30'),
(17, '21kco', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:41:59', '2020-04-24 21:41:59'),
(18, 'nrpf2', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:43:00', '2020-04-24 21:43:00'),
(19, 'gzd9f', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:47:36', '2020-04-24 21:47:36'),
(20, 'ptogv', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 21:59:14', '2020-04-24 21:59:14'),
(21, 'gnpaq', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 22:00:50', '2020-04-24 22:00:50'),
(22, 'hzt91', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-24 22:02:35', '2020-04-24 22:02:35'),
(23, '7pg1y', 'Francisco Aular', '{\"browser\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"referrer\":\"http:\\/\\/ms.test\\/about\\/\"}', '127.0.0.1', 1, 0, 1, 0, 0, 1, '2020-04-27 04:38:07', '2020-04-27 04:38:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_frm_item_metas`
--

CREATE TABLE `wp_frm_item_metas` (
  `id` bigint(20) NOT NULL,
  `meta_value` longtext DEFAULT NULL,
  `field_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL
) ;

--
-- Volcado de datos para la tabla `wp_frm_item_metas`
--

INSERT INTO `wp_frm_item_metas` (`id`, `meta_value`, `field_id`, `item_id`, `created_at`) VALUES
(1, 'Francisco Aular', 1, 1, '2020-04-24 21:08:51'),
(2, 'franciscoaular18@gmail.com', 3, 1, '2020-04-24 21:08:51'),
(3, 'francisco tal cosa', 5, 1, '2020-04-24 21:08:51'),
(4, 'Francisco Aular', 1, 2, '2020-04-24 21:11:14'),
(5, 'franciscoaular18@gmail.com', 3, 2, '2020-04-24 21:11:14'),
(6, 'francisco tal cosa', 5, 2, '2020-04-24 21:11:14'),
(7, 'Francisco Aular', 1, 3, '2020-04-24 21:12:02'),
(8, 'franciscoaular18@gmail.com', 3, 3, '2020-04-24 21:12:02'),
(9, 'dasdadasd', 5, 3, '2020-04-24 21:12:02'),
(10, 'Francisco Aular', 1, 4, '2020-04-24 21:13:02'),
(11, 'franciscoaular18@gmail.com', 3, 4, '2020-04-24 21:13:02'),
(12, 'francisco tal cosa', 5, 4, '2020-04-24 21:13:02'),
(13, 'Francisco Aular', 1, 5, '2020-04-24 21:17:33'),
(14, 'franciscoaular18@gmail.com', 3, 5, '2020-04-24 21:17:33'),
(15, 'francisco tal cosa', 5, 5, '2020-04-24 21:17:33'),
(16, 'Francisco Aular', 1, 6, '2020-04-24 21:18:38'),
(17, 'franciscoaular18@gmail.com', 3, 6, '2020-04-24 21:18:38'),
(18, 'francisco tal cosa', 5, 6, '2020-04-24 21:18:38'),
(19, 'Francisco Aular', 1, 7, '2020-04-24 21:20:20'),
(20, 'franciscoaular18@gmail.com', 3, 7, '2020-04-24 21:20:20'),
(21, 'francisco tal cosa', 5, 7, '2020-04-24 21:20:20'),
(22, 'Francisco Aular', 1, 8, '2020-04-24 21:22:00'),
(23, 'franciscoaular18@gmail.com', 3, 8, '2020-04-24 21:22:00'),
(24, 'francisco tal cosa', 5, 8, '2020-04-24 21:22:00'),
(25, 'Francisco Aular', 1, 9, '2020-04-24 21:23:06'),
(26, 'franciscoaular18@gmail.com', 3, 9, '2020-04-24 21:23:06'),
(27, 'francisco tal cosa', 5, 9, '2020-04-24 21:23:06'),
(28, 'Francisco Aular', 1, 10, '2020-04-24 21:24:25'),
(29, 'franciscoaular18@gmail.com', 3, 10, '2020-04-24 21:24:25'),
(30, 'francisco tal cosa', 5, 10, '2020-04-24 21:24:25'),
(31, 'Francisco Aular', 1, 11, '2020-04-24 21:26:40'),
(32, 'franciscoaular18@gmail.com', 3, 11, '2020-04-24 21:26:40'),
(33, 'francisco tal cosa', 5, 11, '2020-04-24 21:26:40'),
(34, 'Francisco Aular', 1, 12, '2020-04-24 21:31:06'),
(35, 'franciscoaular18@gmail.com', 3, 12, '2020-04-24 21:31:06'),
(36, 'francisco tal cosa', 5, 12, '2020-04-24 21:31:06'),
(37, 'Francisco Aular', 1, 13, '2020-04-24 21:32:46'),
(38, 'franciscoaular18@gmail.com', 3, 13, '2020-04-24 21:32:46'),
(39, 'francisco tal cosa', 5, 13, '2020-04-24 21:32:46'),
(40, 'Francisco Aular', 1, 14, '2020-04-24 21:34:46'),
(41, 'franciscoaular18@gmail.com', 3, 14, '2020-04-24 21:34:46'),
(42, 'francisco tal cosa', 5, 14, '2020-04-24 21:34:46'),
(43, 'Francisco Aular', 1, 15, '2020-04-24 21:35:50'),
(44, 'franciscoaular18@gmail.com', 3, 15, '2020-04-24 21:35:50'),
(45, 'francisco tal cosa', 5, 15, '2020-04-24 21:35:50'),
(46, 'Francisco Aular', 1, 16, '2020-04-24 21:37:30'),
(47, 'franciscoaular18@gmail.com', 3, 16, '2020-04-24 21:37:30'),
(48, 'francisco tal cosa', 5, 16, '2020-04-24 21:37:30'),
(49, 'Francisco Aular', 1, 17, '2020-04-24 21:41:59'),
(50, 'franciscoaular18@gmail.com', 3, 17, '2020-04-24 21:42:00'),
(51, 'francisco tal cosa', 5, 17, '2020-04-24 21:42:00'),
(52, 'Francisco Aular', 1, 18, '2020-04-24 21:43:00'),
(53, 'franciscoaular18@gmail.com', 3, 18, '2020-04-24 21:43:00'),
(54, 'francisco tal cosa', 5, 18, '2020-04-24 21:43:00'),
(55, 'Francisco Aular', 1, 19, '2020-04-24 21:47:36'),
(56, 'franciscoaular18@gmail.com', 3, 19, '2020-04-24 21:47:36'),
(57, 'francisco tal cosa', 5, 19, '2020-04-24 21:47:36'),
(58, 'Francisco Aular', 1, 20, '2020-04-24 21:59:14'),
(59, 'franciscoaular18@gmail.com', 3, 20, '2020-04-24 21:59:15'),
(60, 'francisco tal cosa', 5, 20, '2020-04-24 21:59:15'),
(61, 'Francisco Aular', 1, 21, '2020-04-24 22:00:50'),
(62, 'franciscoaular18@gmail.com', 3, 21, '2020-04-24 22:00:50'),
(63, 'francisco tal cosa', 5, 21, '2020-04-24 22:00:51'),
(64, 'Francisco Aular', 1, 22, '2020-04-24 22:02:35'),
(65, 'franciscoaular18@gmail.com', 3, 22, '2020-04-24 22:02:35'),
(66, 'francisco tal cosa', 5, 22, '2020-04-24 22:02:35'),
(67, 'Francisco Aular', 1, 23, '2020-04-27 04:38:07'),
(68, 'franciscoaular18@gmail.com', 3, 23, '2020-04-27 04:38:07'),
(69, 'todo gg', 5, 23, '2020-04-27 04:38:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_gf_draft_submissions`
--

CREATE TABLE `wp_gf_draft_submissions` (
  `uuid` char(32) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) NOT NULL,
  `source_url` longtext NOT NULL,
  `submission` longtext NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_gf_entry`
--

CREATE TABLE `wp_gf_entry` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `ip` varchar(39) NOT NULL,
  `source_url` varchar(200) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `currency` varchar(5) DEFAULT NULL,
  `payment_status` varchar(15) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_gf_entry_meta`
--

CREATE TABLE `wp_gf_entry_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  `item_index` varchar(60) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_gf_entry_notes`
--

CREATE TABLE `wp_gf_entry_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext DEFAULT NULL,
  `note_type` varchar(50) DEFAULT NULL,
  `sub_type` varchar(50) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_gf_form`
--

CREATE TABLE `wp_gf_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_trash` tinyint(1) NOT NULL DEFAULT 0
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_gf_form_meta`
--

CREATE TABLE `wp_gf_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext DEFAULT NULL,
  `entries_grid_meta` longtext DEFAULT NULL,
  `confirmations` longtext DEFAULT NULL,
  `notifications` longtext DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_gf_form_revisions`
--

CREATE TABLE `wp_gf_form_revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext DEFAULT NULL,
  `date_created` datetime NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_gf_form_view`
--

CREATE TABLE `wp_gf_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT 1
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ms.test', 'yes'),
(2, 'home', 'http://ms.test', 'yes'),
(3, 'blogname', 'prueba', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'franciscoaular18@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:176:{s:9:\"slider/?$\";s:26:\"index.php?post_type=slider\";s:39:\"slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:34:\"slider/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:26:\"slider/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=slider&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"actividades/?$\";s:31:\"index.php?post_type=actividades\";s:44:\"actividades/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=actividades&feed=$matches[1]\";s:39:\"actividades/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=actividades&feed=$matches[1]\";s:31:\"actividades/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=actividades&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"frm_styles/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"frm_styles/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"frm_styles/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"frm_styles/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"frm_styles/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"frm_styles/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"frm_styles/([^/]+)/embed/?$\";s:43:\"index.php?frm_styles=$matches[1]&embed=true\";s:31:\"frm_styles/([^/]+)/trackback/?$\";s:37:\"index.php?frm_styles=$matches[1]&tb=1\";s:39:\"frm_styles/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?frm_styles=$matches[1]&paged=$matches[2]\";s:46:\"frm_styles/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?frm_styles=$matches[1]&cpage=$matches[2]\";s:35:\"frm_styles/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?frm_styles=$matches[1]&page=$matches[2]\";s:27:\"frm_styles/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"frm_styles/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"frm_styles/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"frm_styles/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"frm_styles/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"frm_styles/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:47:\"slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:42:\"slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"frm_form_actions/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"frm_form_actions/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"frm_form_actions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"frm_form_actions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"frm_form_actions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"frm_form_actions/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"frm_form_actions/([^/]+)/embed/?$\";s:49:\"index.php?frm_form_actions=$matches[1]&embed=true\";s:37:\"frm_form_actions/([^/]+)/trackback/?$\";s:43:\"index.php?frm_form_actions=$matches[1]&tb=1\";s:45:\"frm_form_actions/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?frm_form_actions=$matches[1]&paged=$matches[2]\";s:52:\"frm_form_actions/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?frm_form_actions=$matches[1]&cpage=$matches[2]\";s:41:\"frm_form_actions/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?frm_form_actions=$matches[1]&page=$matches[2]\";s:33:\"frm_form_actions/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"frm_form_actions/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"frm_form_actions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"frm_form_actions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"frm_form_actions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"frm_form_actions/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"category_activity/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?category_activity=$matches[1]&feed=$matches[2]\";s:53:\"category_activity/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?category_activity=$matches[1]&feed=$matches[2]\";s:34:\"category_activity/([^/]+)/embed/?$\";s:50:\"index.php?category_activity=$matches[1]&embed=true\";s:46:\"category_activity/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?category_activity=$matches[1]&paged=$matches[2]\";s:28:\"category_activity/([^/]+)/?$\";s:39:\"index.php?category_activity=$matches[1]\";s:39:\"actividades/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"actividades/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"actividades/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"actividades/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"actividades/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"actividades/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"actividades/([^/]+)/embed/?$\";s:44:\"index.php?actividades=$matches[1]&embed=true\";s:32:\"actividades/([^/]+)/trackback/?$\";s:38:\"index.php?actividades=$matches[1]&tb=1\";s:52:\"actividades/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?actividades=$matches[1]&feed=$matches[2]\";s:47:\"actividades/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?actividades=$matches[1]&feed=$matches[2]\";s:40:\"actividades/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?actividades=$matches[1]&paged=$matches[2]\";s:47:\"actividades/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?actividades=$matches[1]&cpage=$matches[2]\";s:36:\"actividades/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?actividades=$matches[1]&page=$matches[2]\";s:28:\"actividades/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"actividades/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"actividades/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"actividades/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"actividades/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"actividades/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:29:\"gravityforms/gravityforms.php\";i:2;s:25:\"formidable/formidable.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-5', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ms', 'yes'),
(41, 'stylesheet', 'ms', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:2;a:4:{s:5:\"title\";s:12:\"ENCUENTRANOS\";s:4:\"text\";s:103:\"<p>Avenida Costanera.<br>Las colinas 1234, Costanera.</p>\r\n            <strong>+56 9 1234 5678</strong>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1603044826', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:67:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"frm_view_forms\";b:1;s:14:\"frm_edit_forms\";b:1;s:16:\"frm_delete_forms\";b:1;s:19:\"frm_change_settings\";b:1;s:16:\"frm_view_entries\";b:1;s:18:\"frm_delete_entries\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'es_CO', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"main_footer\";a:1:{i:0;s:10:\"nav_menu-2\";}s:16:\"main_footer_home\";a:1:{i:0;s:6:\"text-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1588788835;a:2:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1588788837;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1588789911;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588789913;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588790340;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1588797194;a:1:{s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589030710;a:1:{s:21:\"formidable_send_usage\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:\"title\";s:14:\"Sobre nosotros\";s:8:\"nav_menu\";i:6;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587497065;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1588787160;s:7:\"checked\";a:4:{s:2:\"ms\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(144, 'current_theme', 'MS THEME', 'yes'),
(145, 'theme_mods_ms', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"my-custom-menu\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(165, '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":6,\"critical\":1}', 'yes'),
(185, 'acf_version', '5.8.1', 'yes'),
(186, 'options_previo_title', 'Sección brutal', 'no'),
(187, '_options_previo_title', 'field_5ea0b6719f14b', 'no'),
(188, 'options_previo_content', 'contenido brutal', 'no'),
(189, '_options_previo_content', 'field_5ea0b6769f14c', 'no'),
(190, 'options_previo_button', 'todo gg', 'no'),
(191, '_options_previo_button', 'field_5ea0b67f9f14d', 'no'),
(192, 'options_previo_button_link', 'http://ms.test/', 'no'),
(193, '_options_previo_button_link', 'field_5ea0b6889f14e', 'no'),
(194, 'options_previo', '', 'no'),
(195, '_options_previo', 'field_5ea0b6419f149', 'no'),
(197, 'options_image_previo_image', '10', 'no'),
(198, '_options_image_previo_image', 'field_5ea0b936513d6', 'no'),
(199, 'options_image_previo_image2', '10', 'no'),
(200, '_options_image_previo_image2', 'field_5ea0b945513d7', 'no'),
(201, 'options_image_previo_image3', '10', 'no'),
(202, '_options_image_previo_image3', 'field_5ea0b955513d8', 'no'),
(203, 'options_image_previo', '', 'no'),
(204, '_options_image_previo', 'field_5ea0b91d513d5', 'no'),
(205, 'options_title', 'Segunda seccion', 'no'),
(206, '_options_title', 'field_5ea0bcd82d229', 'no'),
(207, 'options_cards_image_card', '36', 'no'),
(208, '_options_cards_image_card', 'field_5ea0bd302d22c', 'no'),
(209, 'options_cards_text_card', 'Corazonadas', 'no'),
(210, '_options_cards_text_card', 'field_5ea0bd3f2d22d', 'no'),
(211, 'options_cards_text_button', 'dame click', 'no'),
(212, '_options_cards_text_button', 'field_5ea0bdeafc4e2', 'no'),
(213, 'options_cards_button_text', 'dame click', 'no'),
(214, '_options_cards_button_text', 'field_5ea0bd432d22e', 'no'),
(215, 'options_cards_link_button', 'http://ms.test/', 'no'),
(216, '_options_cards_link_button', 'field_5ea0bdfafc4e3', 'no'),
(217, 'options_cards', '', 'no'),
(218, '_options_cards', 'field_5ea0bce22d22a', 'no'),
(219, 'options_card_image_card', '36', 'no'),
(220, '_options_card_image_card', 'field_5ea0bd302d22c', 'no'),
(221, 'options_card_text_card', 'Corazonadas', 'no'),
(222, '_options_card_text_card', 'field_5ea0bd3f2d22d', 'no'),
(223, 'options_card_text_button', 'dame click', 'no'),
(224, '_options_card_text_button', 'field_5ea0bdeafc4e2', 'no'),
(225, 'options_card_button_text', 'dame click', 'no'),
(226, '_options_card_button_text', 'field_5ea0bd432d22e', 'no'),
(227, 'options_card_link_button', 'http://ms.test/', 'no'),
(228, '_options_card_link_button', 'field_5ea0bdfafc4e3', 'no'),
(229, 'options_card', '', 'no'),
(230, '_options_card', 'field_5ea0bce22d22a', 'no'),
(231, 'options_card2_image_card', '50', 'no'),
(232, '_options_card2_image_card', 'field_5ea0c0c627202', 'no'),
(233, 'options_card2_text_card', 'Manotazos', 'no'),
(234, '_options_card2_text_card', 'field_5ea0c0c627203', 'no'),
(235, 'options_card2_text_button', 'Dale click', 'no'),
(236, '_options_card2_text_button', 'field_5ea0c0c627204', 'no'),
(237, 'options_card2_button_text', 'Dale click', 'no'),
(238, '_options_card2_button_text', 'field_5ea0c0c627205', 'no'),
(239, 'options_card2_link_button', 'http://ms.test/', 'no'),
(240, '_options_card2_link_button', 'field_5ea0c0c627206', 'no'),
(241, 'options_card2', '', 'no'),
(242, '_options_card2', 'field_5ea0c0c627201', 'no'),
(243, 'options_card3_image_card', '51', 'no'),
(244, '_options_card3_image_card', 'field_5ea0c0da27208', 'no'),
(245, 'options_card3_text_card', 'Maletinzasos', 'no'),
(246, '_options_card3_text_card', 'field_5ea0c0da27209', 'no'),
(247, 'options_card3_text_button', 'Dale click', 'no'),
(248, '_options_card3_text_button', 'field_5ea0c0da2720a', 'no'),
(249, 'options_card3_button_text', 'Dale click', 'no'),
(250, '_options_card3_button_text', 'field_5ea0c0da2720b', 'no'),
(251, 'options_card3_link_button', 'http://ms.test/', 'no'),
(252, '_options_card3_link_button', 'field_5ea0c0da2720c', 'no'),
(253, 'options_card3', '', 'no'),
(254, '_options_card3', 'field_5ea0c0da27207', 'no'),
(256, 'options_title_three', 'tercera sección', 'no'),
(257, '_options_title_three', 'field_5ea0c8bed5354', 'no'),
(258, 'options_logo_0_image', '56', 'no'),
(259, '_options_logo_0_image', 'field_5ea0c90dd5356', 'no'),
(260, 'options_logo_1_image', '60', 'no'),
(261, '_options_logo_1_image', 'field_5ea0c90dd5356', 'no'),
(262, 'options_logo_2_image', '57', 'no'),
(263, '_options_logo_2_image', 'field_5ea0c90dd5356', 'no'),
(264, 'options_logo_3_image', '58', 'no'),
(265, '_options_logo_3_image', 'field_5ea0c90dd5356', 'no'),
(266, 'options_logo_4_image', '57', 'no'),
(267, '_options_logo_4_image', 'field_5ea0c90dd5356', 'no'),
(268, 'options_logo_5_image', '57', 'no'),
(269, '_options_logo_5_image', 'field_5ea0c90dd5356', 'no'),
(270, 'options_logo_6_image', '57', 'no'),
(271, '_options_logo_6_image', 'field_5ea0c90dd5356', 'no'),
(272, 'options_logo_7_image', '57', 'no'),
(273, '_options_logo_7_image', 'field_5ea0c90dd5356', 'no'),
(274, 'options_logo_8_image', '58', 'no'),
(275, '_options_logo_8_image', 'field_5ea0c90dd5356', 'no'),
(276, 'options_logo_9_image', '58', 'no'),
(277, '_options_logo_9_image', 'field_5ea0c90dd5356', 'no'),
(278, 'options_logo_10_image', '58', 'no'),
(279, '_options_logo_10_image', 'field_5ea0c90dd5356', 'no'),
(280, 'options_logo_11_image', '58', 'no'),
(281, '_options_logo_11_image', 'field_5ea0c90dd5356', 'no'),
(282, 'options_logo', '12', 'no'),
(283, '_options_logo', 'field_5ea0c8d5d5355', 'no'),
(335, 'recently_activated', 'a:1:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:1587773529;}', 'yes'),
(336, 'gf_db_version', '2.4.17.22', 'no'),
(337, 'rg_form_version', '2.4.17.22', 'no'),
(338, 'gform_enable_background_updates', '1', 'yes'),
(339, 'gform_pending_installation', '1', 'yes'),
(340, 'widget_gform_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(341, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(342, 'gform_version_info', 'a:5:{s:12:\"is_valid_key\";s:1:\"1\";s:15:\"expiration_time\";i:0;s:7:\"version\";s:5:\"1.7.9\";s:3:\"url\";s:0:\"\";s:9:\"offerings\";a:0:{}}', 'no'),
(349, 'widget_frm_show_form', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(350, 'frm_options', 'O:11:\"FrmSettings\":38:{s:11:\"option_name\";s:11:\"frm_options\";s:4:\"menu\";s:10:\"Formidable\";s:7:\"mu_menu\";s:1:\"0\";s:8:\"use_html\";s:1:\"1\";s:10:\"jquery_css\";i:0;s:12:\"accordion_js\";i:0;s:9:\"fade_form\";i:0;s:7:\"old_css\";s:1:\"1\";s:11:\"success_msg\";s:54:\"Your responses were successfully submitted. Thank you!\";s:9:\"blank_msg\";s:27:\"This field cannot be blank.\";s:10:\"unique_msg\";s:26:\"This value must be unique.\";s:11:\"invalid_msg\";s:66:\"There was a problem with your submission. Errors are marked below.\";s:10:\"failed_msg\";s:57:\"We\'re sorry. It looks like you\'ve already submitted that.\";s:12:\"submit_value\";s:6:\"Submit\";s:9:\"login_msg\";s:45:\"You do not have permission to view this form.\";s:16:\"admin_permission\";s:37:\"You do not have permission to do that\";s:8:\"email_to\";s:13:\"[admin_email]\";s:10:\"load_style\";s:3:\"all\";s:12:\"custom_style\";b:1;s:6:\"pubkey\";s:40:\"6LcW4O0UAAAAAHiLzXJ8d52VdlSHk3FoG4ubxIJs\";s:7:\"privkey\";s:40:\"6LcW4O0UAAAAAKWzyj_cfFhzYX4KLKnI-ZnK1Pa0\";s:7:\"re_lang\";s:0:\"\";s:7:\"re_type\";s:0:\"\";s:6:\"re_msg\";s:39:\"The reCAPTCHA was not entered correctly\";s:8:\"re_multi\";s:1:\"1\";s:6:\"no_ips\";i:0;s:12:\"current_form\";i:0;s:8:\"tracking\";i:0;s:14:\"frm_view_forms\";a:1:{i:0;s:13:\"administrator\";}s:14:\"frm_edit_forms\";a:1:{i:0;s:13:\"administrator\";}s:16:\"frm_delete_forms\";a:1:{i:0;s:13:\"administrator\";}s:19:\"frm_change_settings\";a:1:{i:0;s:13:\"administrator\";}s:16:\"frm_view_entries\";a:1:{i:0;s:13:\"administrator\";}s:18:\"frm_delete_entries\";a:1:{i:0;s:13:\"administrator\";}s:18:\"frm_create_entries\";s:13:\"administrator\";s:16:\"frm_edit_entries\";s:13:\"administrator\";s:16:\"frm_view_reports\";s:13:\"administrator\";s:17:\"frm_edit_displays\";s:13:\"administrator\";}', 'yes'),
(353, 'frm_db_version', '4.04.03-97', 'yes'),
(354, 'frm_last_style_update', '4242111', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(355, 'frmpro_css', '/* WARNING: Any changes made to this file will be lost when your Formidable settings are updated */\n.frm_hidden,.frm_add_form_row.frm_hidden,.frm_remove_form_row.frm_hidden,.with_frm_style .frm_button.frm_hidden{display:none;}form input.frm_verify{display:none !important;}.with_frm_style fieldset{min-width:0;}.with_frm_style fieldset fieldset{border:none;margin:0;padding:0;background-color:transparent;}legend.frm_hidden{display:none !important;}.with_frm_style .frm_form_fields{opacity:1;transition: opacity 0.1s linear;}.with_frm_style .frm_doing_ajax{opacity:.5;}.frm_transparent{color:transparent;}.input[type=file].frm_transparent:focus, .with_frm_style input[type=file]{background-color:transparent;border:none;outline:none;box-shadow:none;}.with_frm_style input[type=file]{display:initial;}.frm_preview_page:before{content:normal !important;}.frm_preview_page{padding:25px;}.with_frm_style .frm_primary_label{max-width:100%;}.with_frm_style .frm_top_container .frm_primary_label,.with_frm_style .frm_hidden_container .frm_primary_label,.with_frm_style .frm_pos_top{display:block;float:none;width:auto;}.with_frm_style .frm_inline_container .frm_primary_label{margin-right:10px;}.with_frm_style .frm_right_container .frm_primary_label,.with_frm_style .frm_pos_right{display:inline;float:right;margin-left:10px;}.with_frm_style .frm_pos_center {text-align: center;}.with_frm_style .frm_none_container .frm_primary_label,.with_frm_style .frm_pos_none,.frm_pos_none,.frm_none_container .frm_primary_label{display:none;}.with_frm_style .frm_section_heading.frm_hide_section{margin-top:0 !important;}.with_frm_style .frm_hidden_container .frm_primary_label,.with_frm_style .frm_pos_hidden,.frm_hidden_container .frm_primary_label{visibility:hidden;white-space:nowrap;}.with_frm_style .frm_inside_container .frm_primary_label{opacity:0;transition: opacity 0.1s linear;}.with_frm_style .frm_inside_container label.frm_visible,.frm_visible{opacity:1;}.with_frm_style .frm_description{clear:both;}.with_frm_style input[type=number][readonly]{-moz-appearance: textfield;}.with_frm_style select[multiple=\"multiple\"]{height:auto;line-height:normal;}.with_frm_style .frm_catlevel_2,.with_frm_style .frm_catlevel_3,.with_frm_style .frm_catlevel_4,.with_frm_style .frm_catlevel_5{margin-left:18px;}.with_frm_style .wp-editor-container{border:1px solid #e5e5e5;}.with_frm_style .quicktags-toolbar input{font-size:12px !important;}.with_frm_style .wp-editor-container textarea{border:none;}.with_frm_style textarea{height:auto;}.with_frm_style .auto_width #loginform input,.with_frm_style .auto_width input,.with_frm_style input.auto_width,.with_frm_style select.auto_width,.with_frm_style textarea.auto_width{width:auto;}.with_frm_style .frm_repeat_buttons{white-space:nowrap;}.with_frm_style .frm_button{text-decoration:none;border:1px solid #eee;padding:5px;display:inline;}.with_frm_style .frm_submit{clear:both;}.frm_inline_form .frm_form_field,.frm_inline_form .frm_submit{grid-column: span 1 / span 1;}.frm_inline_form .frm_submit{margin:0;}.frm_submit.frm_inline_submit input[type=submit],.frm_submit.frm_inline_submit button,.frm_inline_form .frm_submit input[type=submit],.frm_inline_form .frm_submit button{margin-top:0;}.with_frm_style.frm_center_submit .frm_submit{text-align:center;}.with_frm_style.frm_center_submit .frm_submit input[type=submit],.with_frm_style.frm_center_submit .frm_submit input[type=button],.with_frm_style.frm_center_submit .frm_submit button{margin-bottom:8px !important;}.with_frm_style .frm-edit-page-btn,.with_frm_style .frm_submit input[type=submit],.with_frm_style .frm_submit input[type=button],.with_frm_style .frm_submit button{-webkit-appearance: none;cursor: pointer;}.with_frm_style.frm_center_submit .frm_submit .frm_ajax_loading{display: block;margin: 0 auto;}.with_frm_style .frm_loading_prev .frm_ajax_loading,.with_frm_style .frm_loading_form .frm_ajax_loading{visibility:visible !important;}.with_frm_style .frm_loading_prev .frm_prev_page,.with_frm_style .frm_loading_form .frm_button_submit {position: relative;opacity: .8;color: transparent !important;text-shadow: none !important;}.with_frm_style .frm_loading_prev .frm_prev_page:hover,.with_frm_style .frm_loading_prev .frm_prev_page:active,.with_frm_style .frm_loading_prev .frm_prev_page:focus,.with_frm_style .frm_loading_form .frm_button_submit:hover,.with_frm_style .frm_loading_form .frm_button_submit:active,.with_frm_style .frm_loading_form .frm_button_submit:focus {cursor: not-allowed;color: transparent;outline: none !important;box-shadow: none;}.with_frm_style .frm_loading_prev .frm_prev_page::before,.with_frm_style .frm_loading_form .frm_button_submit:before {content: \'\';display: inline-block;position: absolute;background: transparent;border: 1px solid #fff;border-top-color: transparent;border-left-color: transparent;border-radius: 50%;box-sizing: border-box;top: 50%;left: 50%;margin-top: -10px;margin-left: -10px;width: 20px;height: 20px;-webkit-animation: spin 2s linear infinite;-moz-animation:spin 2s linear infinite;-o-animation:  spin 2s linear infinite;animation: spin 2s linear infinite;}.frm_forms.frm_style_formidable-style.with_frm_style{max-width:100%;direction:ltr;}.frm_style_formidable-style.with_frm_style,.frm_style_formidable-style.with_frm_style form,.frm_style_formidable-style.with_frm_style .frm-show-form div.frm_description p {text-align:left;}.frm_style_formidable-style.with_frm_style .frm_form_fields  > fieldset{border-width:0px;border-style:solid;border-color:#000000;margin:0;padding:0 0 15px 0;background-color:transparent;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;}.frm_style_formidable-style.with_frm_style legend + h3,.frm_style_formidable-style.with_frm_style h3.frm_form_title{font-size:20px;color:#444444;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;margin-top:10px;margin-bottom:10px;}.frm_style_formidable-style.with_frm_style .frm_primary_label{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;color:#444444;font-weight:bold;text-align:left;margin:0;padding:0 0 3px 0;width:auto;display:block;}.frm_style_formidable-style.with_frm_style .frm_form_field.frm_html_container,.frm_style_formidable-style.with_frm_style .frm_form_field .frm_show_it{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;color:#666666;}.frm_style_formidable-style.with_frm_style .frm_form_field.frm_html_container{font-size:14px;}.frm_style_formidable-style.with_frm_style .frm_form_field .frm_show_it{font-size:14px;font-weight:normal;}.frm_style_formidable-style.with_frm_style .frm_icon_font{color:#444444;}.frm_style_formidable-style.with_frm_style .frm_icon_font.frm_minus_icon:before{content:\"\\e600\";}.frm_style_formidable-style.with_frm_style .frm_icon_font.frm_plus_icon:before{content:\"\\e602\";}.frm_style_formidable-style.with_frm_style .frm_icon_font.frm_minus_icon:before,.frm_style_formidable-style.with_frm_style .frm_icon_font.frm_plus_icon:before{color:#444444;vertical-align:middle;}.frm_style_formidable-style.with_frm_style .frm_trigger.active .frm_icon_font.frm_arrow_icon:before{content:\"\\e62d\";color:#444444;}.frm_style_formidable-style.with_frm_style .frm_trigger .frm_icon_font.frm_arrow_icon:before{content:\"\\e62a\";color:#444444;}.frm_style_formidable-style.with_frm_style .form-field{margin-bottom:20px;}.frm_style_formidable-style.with_frm_style .frm_grid,.frm_style_formidable-style.with_frm_style .frm_grid_first,.frm_style_formidable-style.with_frm_style .frm_grid_odd {margin-bottom:0;}.frm_style_formidable-style.with_frm_style .form-field.frm_section_heading{margin-bottom:0;}.frm_style_formidable-style.with_frm_style p.description,.frm_style_formidable-style.with_frm_style div.description,.frm_style_formidable-style.with_frm_style div.frm_description,.frm_style_formidable-style.with_frm_style .frm-show-form > div.frm_description,.frm_style_formidable-style.with_frm_style .frm_error{margin:0;padding:0;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:12px;color:#666666;font-weight:normal;text-align:left;font-style:normal;max-width:100%;}.frm_style_formidable-style.with_frm_style .frm-show-form div.frm_description p{font-size:14px;color:#666666;margin-top:10px;margin-bottom:25px;}.frm_style_formidable-style.with_frm_style .frm_form_field.frm_left_container{grid-template-columns: 150px auto;}.frm_style_formidable-style.with_frm_style .frm_form_field.frm_right_container{grid-template-columns: auto 150px;}.frm_form_field.frm_right_container{grid-template-columns: auto 25%;}.frm_style_formidable-style.with_frm_style .frm_inline_container.frm_dynamic_select_container .frm_data_container,.frm_style_formidable-style.with_frm_style .frm_inline_container.frm_dynamic_select_container .frm_opt_container{display:inline;}.frm_style_formidable-style.with_frm_style .frm_pos_right{display:inline;width:150px;}.frm_style_formidable-style.with_frm_style .frm_none_container .frm_primary_label,.frm_style_formidable-style.with_frm_style .frm_pos_none{display:none;}.frm_style_formidable-style.with_frm_style .frm_scale label{font-weight:normal;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:13px;color:#444444;}.frm_style_formidable-style.with_frm_style .frm_required{color:#B94A48;font-weight:bold;}.frm_style_formidable-style.with_frm_style input[type=text],.frm_style_formidable-style.with_frm_style input[type=password],.frm_style_formidable-style.with_frm_style input[type=email],.frm_style_formidable-style.with_frm_style input[type=number],.frm_style_formidable-style.with_frm_style input[type=url],.frm_style_formidable-style.with_frm_style input[type=tel],.frm_style_formidable-style.with_frm_style input[type=search],.frm_style_formidable-style.with_frm_style select,.frm_style_formidable-style.with_frm_style textarea,.frm_style_formidable-style.with_frm_style .frm-card-element.StripeElement,.frm_style_formidable-style.with_frm_style .chosen-container{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;margin-bottom:0;}.frm_style_formidable-style.with_frm_style textarea{vertical-align:top;}.frm_style_formidable-style.with_frm_style input[type=text],.frm_style_formidable-style.with_frm_style input[type=password],.frm_style_formidable-style.with_frm_style input[type=email],.frm_style_formidable-style.with_frm_style input[type=number],.frm_style_formidable-style.with_frm_style input[type=url],.frm_style_formidable-style.with_frm_style input[type=tel],.frm_style_formidable-style.with_frm_style input[type=phone],.frm_style_formidable-style.with_frm_style input[type=search],.frm_style_formidable-style.with_frm_style select,.frm_style_formidable-style.with_frm_style textarea,.frm_form_fields_style,.frm_style_formidable-style.with_frm_style .frm_scroll_box .frm_opt_container,.frm_form_fields_active_style,.frm_form_fields_error_style,.frm_style_formidable-style.with_frm_style .frm-card-element.StripeElement,.frm_style_formidable-style.with_frm_style .chosen-container-multi .chosen-choices,.frm_style_formidable-style.with_frm_style .chosen-container-single .chosen-single{color:#555555;background-color:#ffffff;border-color: #cccccc;border-width:1px;border-style:solid;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;width:100%;max-width:100%;font-size:14px;padding:6px 10px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;outline:none;font-weight:normal;box-shadow:0 1px 1px rgba(0, 0, 0, 0.075) inset;}.frm_style_formidable-style.with_frm_style input[type=radio],.frm_style_formidable-style.with_frm_style input[type=checkbox]{border-color: #cccccc;box-shadow:0 1px 1px rgba(0, 0, 0, 0.075) inset;}.frm_style_formidable-style.with_frm_style input[type=text],.frm_style_formidable-style.with_frm_style input[type=password],.frm_style_formidable-style.with_frm_style input[type=email],.frm_style_formidable-style.with_frm_style input[type=number],.frm_style_formidable-style.with_frm_style input[type=url],.frm_style_formidable-style.with_frm_style input[type=tel],.frm_style_formidable-style.with_frm_style input[type=file],.frm_style_formidable-style.with_frm_style input[type=search],.frm_style_formidable-style.with_frm_style select,.frm_style_formidable-style.with_frm_style .frm-card-element.StripeElement{height:32px;line-height:1.3;}.frm_style_formidable-style.with_frm_style select[multiple=\"multiple\"]{height:auto ;}.frm_style_formidable-style.with_frm_style input[type=file]{color: #555555;padding:0px;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;}.frm_style_formidable-style.with_frm_style input[type=file].frm_transparent{color:transparent;}.frm_style_formidable-style.with_frm_style select{width:100%;max-width:100%;}.frm_style_formidable-style.with_frm_style .wp-editor-wrap{width:100%;max-width:100%;}.frm_style_formidable-style.with_frm_style .wp-editor-container textarea{border:none;}.frm_style_formidable-style.with_frm_style .mceIframeContainer{background-color:#ffffff;}.frm_style_formidable-style.with_frm_style .auto_width input,.frm_style_formidable-style.with_frm_style input.auto_width,.frm_style_formidable-style.with_frm_style select.auto_width,.frm_style_formidable-style.with_frm_style textarea.auto_width{width:auto;}.frm_style_formidable-style.with_frm_style input[disabled],.frm_style_formidable-style.with_frm_style select[disabled],.frm_style_formidable-style.with_frm_style textarea[disabled],.frm_style_formidable-style.with_frm_style input[readonly],.frm_style_formidable-style.with_frm_style select[readonly],.frm_style_formidable-style.with_frm_style textarea[readonly]{background-color:#ffffff;color:#A1A1A1;border-color:#E5E5E5;}.frm_style_formidable-style.with_frm_style input::placeholder,.frm_style_formidable-style.with_frm_style textarea::placeholder{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style input::-webkit-input-placeholder,.frm_style_formidable-style.with_frm_style textarea::-webkit-input-placeholder{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style input::-moz-placeholder,.frm_style_formidable-style.with_frm_style textarea::-moz-placeholder{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style input:-ms-input-placeholder,frm_style_formidable-style.with_frm_style textarea:-ms-input-placeholder{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style input:-moz-placeholder,.frm_style_formidable-style.with_frm_style textarea:-moz-placeholder{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style .frm_default,.frm_style_formidable-style.with_frm_style input.frm_default,.frm_style_formidable-style.with_frm_style textarea.frm_default,.frm_style_formidable-style.with_frm_style select.frm_default,.frm_style_formidable-style.with_frm_style .placeholder,.frm_style_formidable-style.with_frm_style .chosen-container-multi .chosen-choices li.search-field .default,.frm_style_formidable-style.with_frm_style .chosen-container-single .chosen-default{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style .form-field input:not([type=file]):focus,.frm_style_formidable-style.with_frm_style select:focus,.frm_style_formidable-style.with_frm_style textarea:focus,.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=text],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=password],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=email],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=number],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=url],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=tel],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=search],.frm_form_fields_active_style,.frm_style_formidable-style.with_frm_style .frm_focus_field .frm-card-element.StripeElement,.frm_style_formidable-style.with_frm_style .chosen-container-single.chosen-container-active .chosen-single,.frm_style_formidable-style.with_frm_style .chosen-container-active .chosen-choices{background-color:#ffffff;border-color:#66afe9;box-shadow:0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(102,175,233, 0.6);}.frm_style_formidable-style.with_frm_style .frm_compact .frm_dropzone.dz-clickable .dz-message,.frm_style_formidable-style.with_frm_style input[type=submit],.frm_style_formidable-style.with_frm_style .frm_submit input[type=button],.frm_style_formidable-style.with_frm_style .frm_submit button,.frm_form_submit_style,.frm_style_formidable-style.with_frm_style .frm-edit-page-btn {width:auto;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;height:auto;line-height:normal;text-align:center;background:#ffffff;border-width:1px;border-color: #cccccc;border-style:solid;color:#444444;cursor:pointer;font-weight:normal;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;text-shadow:none;padding:6px 11px;-moz-box-sizing:border-box;box-sizing:border-box;-ms-box-sizing:border-box;-moz-box-shadow:0 1px 1px #eeeeee;-webkit-box-shadow:0 1px 1px #eeeeee;box-shadow:0 1px 1px #eeeeee;margin:10px;margin-left:0;margin-right:0;vertical-align:middle;}.frm_style_formidable-style.with_frm_style .frm_compact .frm_dropzone.dz-clickable .dz-message{margin:0;}.frm_style_formidable-style.with_frm_style .frm-edit-page-btn:hover,.frm_style_formidable-style.with_frm_style input[type=submit]:hover,.frm_style_formidable-style.with_frm_style .frm_submit input[type=button]:hover,.frm_style_formidable-style.with_frm_style .frm_submit button:hover{background: #efefef;border-color: #cccccc;color: #444444;}.frm_style_formidable-style.with_frm_style.frm_center_submit .frm_submit .frm_ajax_loading{margin-bottom:10px;}.frm_style_formidable-style.with_frm_style .frm-edit-page-btn:focus,.frm_style_formidable-style.with_frm_style input[type=submit]:focus,.frm_style_formidable-style.with_frm_style .frm_submit input[type=button]:focus,.frm_style_formidable-style.with_frm_style .frm_submit button:focus,.frm_style_formidable-style.with_frm_style input[type=submit]:active,.frm_style_formidable-style.with_frm_style .frm_submit input[type=button]:active,.frm_style_formidable-style.with_frm_style .frm_submit button:active{background: #efefef;border-color: #cccccc;color: #444444;}.frm_style_formidable-style.with_frm_style .frm_loading_prev .frm_prev_page,.frm_style_formidable-style.with_frm_style .frm_loading_prev .frm_prev_page:hover,.frm_style_formidable-style.with_frm_style .frm_loading_prev .frm_prev_page:active,.frm_style_formidable-style.with_frm_style .frm_loading_prev .frm_prev_page:focus,.frm_style_formidable-style.with_frm_style .frm_loading_form .frm_button_submit,.frm_style_formidable-style.with_frm_style .frm_loading_form .frm_button_submit:hover,.frm_style_formidable-style.with_frm_style .frm_loading_form .frm_button_submit:active,.frm_style_formidable-style.with_frm_style .frm_loading_form .frm_button_submit:focus{color: transparent ;background: #ffffff;}.frm_style_formidable-style.with_frm_style .frm_loading_prev .frm_prev_page:before,.frm_style_formidable-style.with_frm_style .frm_loading_form .frm_button_submit:before {border-bottom-color: #444444;border-right-color: #444444;}.frm_style_formidable-style.with_frm_style.frm_inline_top .frm_submit::before,.frm_style_formidable-style.with_frm_style .frm_submit.frm_inline_submit::before {content:\"before\";font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;color:#444444;font-weight:bold;margin:0;padding:0 0 3px 0;width:auto;display:block;visibility:hidden;}.frm_style_formidable-style.with_frm_style.frm_inline_form .frm_submit input,.frm_style_formidable-style.with_frm_style.frm_inline_form .frm_submit button,.frm_style_formidable-style.with_frm_style .frm_submit.frm_inline_submit input,.frm_style_formidable-style.with_frm_style .frm_submit.frm_inline_submit button {margin: 0 !important;}.frm_style_formidable-style.with_frm_style a.frm_save_draft{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;font-weight:normal;}.frm_style_formidable-style.with_frm_style #frm_field_cptch_number_container{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;color:#444444;font-weight:bold;clear:both;}.frm_style_formidable-style.with_frm_style .frm_radio{display:block;}.frm_style_formidable-style.with_frm_style .frm_checkbox{display:block;}.frm_style_formidable-style.with_frm_style .vertical_radio .frm_checkbox,.frm_style_formidable-style.with_frm_style .vertical_radio .frm_radio,.vertical_radio .frm_catlevel_1{display:block;}.frm_style_formidable-style.with_frm_style .horizontal_radio .frm_checkbox,.frm_style_formidable-style.with_frm_style .horizontal_radio .frm_radio,.horizontal_radio .frm_catlevel_1{display:inline-block;}.frm_style_formidable-style.with_frm_style .frm_radio label,.frm_style_formidable-style.with_frm_style .frm_checkbox label{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:13px;color:#444444;font-weight:normal;}.frm_style_formidable-style.with_frm_style .frm_radio input[type=radio],.frm_style_formidable-style.with_frm_style .frm_checkbox input[type=checkbox] {font-size: 13px;position: static;}.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=text],.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=password],.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=url],.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=tel],.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=number],.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=email],.frm_style_formidable-style.with_frm_style .frm_blank_field textarea,.frm_style_formidable-style.with_frm_style .frm_blank_field .mce-edit-area iframe,.frm_style_formidable-style.with_frm_style .frm_blank_field select,.frm_form_fields_error_style,.frm_style_formidable-style.with_frm_style .frm_blank_field .frm-g-recaptcha iframe,.frm_style_formidable-style.with_frm_style .frm_blank_field .g-recaptcha iframe,.frm_style_formidable-style.with_frm_style .frm_blank_field .frm-card-element.StripeElement,.frm_style_formidable-style.with_frm_style .frm_blank_field .chosen-container-multi .chosen-choices,.frm_style_formidable-style.with_frm_style .frm_blank_field .chosen-container-single .chosen-single,.frm_style_formidable-style.with_frm_style .frm_form_field :invalid{color:#444444;background-color:#ffffff;border-color:#B94A48;border-width:1px;border-style:solid;}.frm_style_formidable-style.with_frm_style .frm_blank_field .sigWrapper{border-color:#B94A48 !important;}.frm_style_formidable-style.with_frm_style .frm_error{font-weight:bold;}.frm_style_formidable-style.with_frm_style .frm_blank_field label,.frm_style_formidable-style.with_frm_style .frm_error{color:#B94A48;}.frm_style_formidable-style.with_frm_style .frm_error_style{background-color:#F2DEDE;border:1px solid #EBCCD1;border-radius:4px;color: #B94A48;font-size:14px;margin:0;margin-bottom:20px;}.frm_style_formidable-style.with_frm_style .frm_message,.frm_success_style{border:1px solid #D6E9C6;background-color:#DFF0D8;color:#468847;border-radius:4px;}.frm_style_formidable-style.with_frm_style .frm_message p{color:#468847;}.frm_style_formidable-style.with_frm_style .frm_message{margin:5px 0 15px;font-size:14px;}.frm_style_formidable-style.with_frm_style .frm-grid td,.frm-grid th{border-color:#cccccc;}.form_results.frm_style_formidable-style.with_frm_style{border:1px solid #cccccc;}.form_results.frm_style_formidable-style.with_frm_style tr td{color: #555555;border-top:1px solid #cccccc;}.form_results.frm_style_formidable-style.with_frm_style tr.frm_even,.frm-grid .frm_even{background-color:#ffffff;}.frm_style_formidable-style.with_frm_style #frm_loading .progress-striped .progress-bar{background-image:linear-gradient(45deg, #cccccc 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, #cccccc 50%, #cccccc 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));}.frm_style_formidable-style.with_frm_style #frm_loading .progress-bar{background-color:#ffffff;}.frm_style_formidable-style.with_frm_style .frm_grid,.frm_style_formidable-style.with_frm_style .frm_grid_first,.frm_style_formidable-style.with_frm_style .frm_grid_odd{border-color:#cccccc;}.frm_style_formidable-style.with_frm_style .frm_grid.frm_blank_field,.frm_style_formidable-style.with_frm_style .frm_grid_first.frm_blank_field,.frm_style_formidable-style.with_frm_style .frm_grid_odd.frm_blank_field{background-color:#F2DEDE;border-color:#EBCCD1;}.frm_style_formidable-style.with_frm_style .frm_grid_first,.frm_style_formidable-style.with_frm_style .frm_grid_odd{background-color:#ffffff;}.frm_style_formidable-style.with_frm_style .frm_grid{background-color:#ffffff;}.frm_style_formidable-style.with_frm_style .frm_html_container.frm_scroll_box,.frm_style_formidable-style.with_frm_style .frm_form_field.frm_html_scroll_box{background-color:#ffffff;border-color: #cccccc;border-width:1px;border-style:solid;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;width:100%;font-size:14px;padding:6px 10px;outline:none;}.frm_style_formidable-style.with_frm_style .frm_form_field.frm_total input,.frm_style_formidable-style.with_frm_style .frm_form_field.frm_total textarea{color: #555555;background-color:transparent;border:none;display:inline;width:auto;padding:0;}.frm_style_formidable-style.with_frm_style .frm_button{padding:6px 11px;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;font-size:14px;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-weight:normal;color:#444444;background: #ffffff;border-width:1px;border-color: #cccccc;height:auto;}@media only screen and (max-width: 600px){.frm_style_formidable-style.with_frm_style .frm_repeat_inline,.frm_style_formidable-style.with_frm_style .frm_repeat_grid{margin: 20px 0;}}.frm_ajax_loading{visibility:hidden;width:auto;}.frm_form_submit_style{height:auto;}a.frm_save_draft{cursor:pointer;}.horizontal_radio .frm_radio{margin:0 5px 0 0;}.horizontal_radio .frm_checkbox{margin:0;margin-right:5px;}.vertical_radio .frm_checkbox,.vertical_radio .frm_radio,.vertical_radio .frm_catlevel_1{display:block;}.horizontal_radio .frm_checkbox,.horizontal_radio .frm_radio,.horizontal_radio .frm_catlevel_1{display:inline-block;}.with_frm_style .frm_checkbox label,.with_frm_style .frm_radio label{display: inline;white-space:normal;}.with_frm_style .vertical_radio .frm_checkbox label,.with_frm_style .vertical_radio .frm_radio label{display: block;padding-left: 20px;text-indent: -20px;}.frm_file_container .frm_file_link,.with_frm_style .frm_radio label .frm_file_container,.with_frm_style .frm_checkbox label .frm_file_container{display:inline-block;margin:5px;vertical-align:middle;}.with_frm_style .frm_radio input[type=radio]{-webkit-appearance:radio;border-radius:50%;}.with_frm_style .frm_checkbox input[type=checkbox]{-webkit-appearance:checkbox;border-radius:0;}.with_frm_style .frm_radio input[type=radio],.with_frm_style .frm_checkbox input[type=checkbox]{flex: none;display:inline-block;margin:4px 5px 0 0;width:auto;border:none;vertical-align:baseline;position: initial; }.with_frm_style :invalid,.with_frm_style :-moz-submit-invalid,.with_frm_style :-moz-ui-invalid{box-shadow:none;}.with_frm_style .frm_error_style img{padding-right:10px;vertical-align:middle;border:none;}.with_frm_style .frm_trigger{cursor:pointer;}.with_frm_style .frm_error_style,.with_frm_style .frm_message,.frm_success_style{-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;padding:15px;}.with_frm_style .frm_message p{margin-bottom:5px;}.frm_form_fields_style,.frm_form_fields_active_style,.frm_form_fields_error_style,.frm_form_submit_style{width:auto;}.with_frm_style .frm_trigger span{float:left;}.with_frm_style table.frm-grid,#content .with_frm_style table.frm-grid{border-collapse:collapse;border:none;}.frm-grid td,.frm-grid th{padding:5px;border-width:1px;border-style:solid;border-color:#cccccc;border-top:none;border-left:none;border-right:none;}.frm-alt-table {width:100%;border-collapse:collapse;margin-top:0.5em;font-size:15px;}.frm-alt-table th {width:200px;}.frm-alt-table tr {background-color:transparent;}.frm-alt-table th,.frm-alt-table td {background-color:transparent;vertical-align:top;text-align:left;padding:20px;}.frm-alt-table tr:nth-child(even) {background-color:#f9f9f9;}table.form_results.with_frm_style{border:1px solid #ccc;}table.form_results.with_frm_style tr td{text-align:left;color:#555555;padding:7px 9px;border-top:1px solid #cccccc;}table.form_results.with_frm_style tr.frm_even,.frm-grid .frm_even{background-color:#fff;}table.form_results.with_frm_style tr.frm_odd,.frm-grid .frm_odd{background-color:#f9f9f9;}.frm_collapse .ui-icon{display:inline-block;}.frm_toggle_container{border:1px solid transparent;}.frm_toggle_container ul{margin:5px 0;padding-left:0;list-style-type:none;}.frm_toggle_container .frm_month_heading{text-indent:15px;}.frm_toggle_container .frm_month_listing{margin-left:40px;}#frm_loading{display:none;position:fixed;top:0;left:0;width:100%;height:100%;z-index:99999;}#frm_loading h3{font-weight:500;padding-bottom:15px;color:#fff;font-size:24px;}#frm_loading_content{position:fixed;top:20%;left:33%;width:33%;text-align:center;padding-top:30px;font-weight:bold;z-index:9999999;}#frm_loading img{max-width:100%;}#frm_loading .progress{border-radius:4px;box-shadow:0 1px 2px rgba(0, 0, 0, 0.1) inset;height:20px;margin-bottom:20px;overflow:hidden;}#frm_loading .progress.active .progress-bar{animation:2s linear 0s normal none infinite progress-bar-stripes;}#frm_loading .progress-striped .progress-bar{background-image:linear-gradient(45deg, #cccccc 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, #cccccc 50%, #cccccc 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));background-size:40px 40px;}#frm_loading .progress-bar{background-color:#ffffff;box-shadow:0 -1px 0 rgba(0, 0, 0, 0.15) inset;float:left;height:100%;line-height:20px;text-align:center;transition:width 0.6s ease 0s;width:100%;}.frm_image_from_url{height:50px;}.frm-loading-img{background:url(../images/ajax_loader.gif) no-repeat center center;padding:6px 12px;}select.frm_loading_lookup{background-image: url(../images/ajax_loader.gif) !important;background-position: 10px;background-repeat: no-repeat;color: transparent !important;}.frm_screen_reader {border: 0;clip: rect(1px, 1px, 1px, 1px);-webkit-clip-path: inset(50%);clip-path: inset(50%);height: 1px;margin: -1px;overflow: hidden;padding: 0;position: absolute;width: 1px;word-wrap: normal !important; }.frm_screen_reader.frm_hidden{display:initial;}.frm_clear_none{clear:none;}.frm_clear{clear:both;}.frm_form_field.frm_alignright{float:right !important;}.with_frm_style .frm_form_field{clear:both;}.frm_combo_inputs_container,.frm_grid_container,.frm_form_fields .frm_section_heading,.frm_form_fields .frm_fields_container{display:grid;grid-template-columns: repeat(12, 6.5%);grid-auto-rows: max-content;grid-gap: 0 2%;}.frm_combo_inputs_container > *,.frm_grid_container > *,.frm_section_heading > *,.frm_fields_container .frm_form_field,.frm_fields_container > *{grid-column: span 12 / span 12;}.frm_inline,.frm_form_field.frm_left_inline,.frm_form_field.frm_first_inline,.frm_form_field.frm_inline,.frm_submit.frm_inline,.frm_form_field.frm_right_inline,.frm_form_field.frm_last_inline{width:auto;grid-column: span 2 / span 2;}.frm6,.frm_half,.frm_form_field.frm_three_fifths, .frm_form_field.frm6,.frm_submit.frm6,.frm_form_field.frm_left_half,.frm_form_field.frm_right_half,.frm_form_field.frm_first_half,.frm_form_field.frm_last_half,.frm_form_field.frm_half,.frm_submit.frm_half{grid-column:span 6 / span 6;}.frm4,.frm_third,.frm_form_field.frm_two_fifths, .frm_form_field.frm4,.frm_submit.frm4,.frm_form_field.frm_left_third,.frm_form_field.frm_third,.frm_submit.frm_third,.frm_form_field.frm_right_third,.frm_form_field.frm_first_third,.frm_form_field.frm_last_third{grid-column:span 4 / span 4;}.frm8,.frm_two_thirds,.frm_form_field.frm8,.frm_submit.frm8,.frm_form_field.frm_left_two_thirds,.frm_form_field.frm_right_two_thirds,.frm_form_field.frm_first_two_thirds,.frm_form_field.frm_last_two_thirds,.frm_form_field.frm_two_thirds{grid-column: span 8/span 8;}.frm3,.frm_fourth,.frm_form_field.frm3,.frm_submit.frm3,.frm_form_field.frm_left_fourth,.frm_form_field.frm_fourth,.frm_submit.frm_fourth,.frm_form_field.frm_right_fourth,.frm_form_field.frm_first_fourth,.frm_form_field.frm_last_fourth{grid-column: span 3/span 3;}.frm9,.frm_three_fourths,.frm_form_field.frm_four_fifths, .frm_form_field.frm9,.frm_submit.frm9,.frm_form_field.frm_three_fourths{grid-column: span 9/span 9;}.frm_form_field.frm_left_fifth,.frm_form_field.frm_fifth,.frm_submit.frm_fifth,.frm_form_field.frm_right_fifth,.frm_form_field.frm_first_fifth,.frm_form_field.frm_last_fifth{grid-column: span 2/span 2;}.frm2,.frm_sixth,.frm_form_field.frm2,.frm_submit.frm2,.frm_form_field.frm_sixth,.frm_submit.frm_sixth,.frm_form_field.frm_first_sixth,.frm_form_field.frm_last_sixth{grid-column: span 2/span 2;}.frm10,.frm_form_field.frm10,.frm_submit.frm10{grid-column: span 10/span 10;}.frm1,.frm_form_field.frm1,.frm_submit.frm1,.frm_form_field.frm_seventh,.frm_submit.frm_seventh,.frm_form_field.frm_first_seventh,.frm_form_field.frm_last_seventh.frm_form_field.frm_eighth,.frm_submit.frm_eighth,.frm_form_field.frm_first_eighth,.frm_form_field.frm_last_eighth{grid-column: span 1/span 1;}.frm5,.frm_form_field.frm5,.frm_submit.frm5{grid-column: span 5/span 5;}.frm7,.frm_form_field.frm7,.frm_submit.frm7{grid-column: span 7/span 7;}.frm11,.frm_form_field.frm11,.frm_submit.frm11{grid-column: span 11/span 11;}.frm12,.frm_full,.frm_full .wp-editor-wrap,.frm_full input:not([type=\'checkbox\']):not([type=\'radio\']):not([type=\'button\']),.frm_full select,.frm_full textarea{width:100% !important;grid-column: span 12/span 12;box-sizing: border-box;}.frm_full .wp-editor-wrap input{width:auto !important;}.frm_first,.frm_form_field.frm_left_half,.frm_form_field.frm_left_third,.frm_form_field.frm_left_two_thirds,.frm_form_field.frm_left_fourth,.frm_form_field.frm_left_fifth,.frm_form_field.frm_left_inline,.frm_form_field.frm_first_half,.frm_form_field.frm_first_third,.frm_form_field.frm_first_two_thirds,.frm_form_field.frm_first_fourth,.frm_form_field.frm_first_fifth,.frm_form_field.frm_first_sixth,.frm_form_field.frm_first_seventh,.frm_form_field.frm_first_eighth,.frm_form_field.frm_first_inline,.frm_form_field.frm_first{grid-column-start:1;}.frm_last,.frm_form_field.frm_last,.frm_form_field.frm_alignright{grid-column-end:-1;grid-row-start: span 100;justify-content: end;}.with_frm_style.frm_rtl .frm_form_fields .star-rating{float:right;}.with_frm_style.frm_rtl .frm_grid .frm_primary_label,.with_frm_style.frm_rtl .frm_grid_first .frm_primary_label,.with_frm_style.frm_rtl .frm_grid_odd .frm_primary_label,.with_frm_style.frm_rtl .frm_grid .frm_radio,.with_frm_style.frm_rtl .frm_grid_first .frm_radio,.with_frm_style.frm_rtl .frm_grid_odd .frm_radio,.with_frm_style.frm_rtl .frm_grid .frm_checkbox,.with_frm_style.frm_rtl .frm_grid_first .frm_checkbox,.with_frm_style.frm_rtl .frm_grid_odd .frm_checkbox{float:right !important;margin-right:0 !important;}.with_frm_style.frm_rtl .frm_grid_first .frm_radio label input,.with_frm_style.frm_rtl .frm_grid .frm_radio label input,.with_frm_style.frm_rtl .frm_grid_odd .frm_radio label input,.with_frm_style.frm_rtl .frm_grid_first .frm_checkbox label input,.with_frm_style.frm_rtl .frm_grid .frm_checkbox label input,.with_frm_style.frm_rtl .frm_grid_odd .frm_checkbox label input{float:left;}.with_frm_style.frm_rtl .frm_catlevel_2,.with_frm_style.frm_rtl .frm_catlevel_3,.with_frm_style.frm_rtl .frm_catlevel_4,.with_frm_style.frm_rtl .frm_catlevel_5{margin-right:18px;}.with_frm_style.frm_rtl div > .frm_time_select{margin-right:5px;}.frm_form_field.frm_inline_container,.frm_form_field.frm_right_container,.frm_form_field.frm_left_container{display: grid;grid-template-columns: 25% auto;width:100%;grid-auto-rows: min-content;}.frm_form_field.frm_right_container{grid-template-columns: auto 25%;}.frm_form_field.frm_inline_container{grid-template-columns: repeat(2, minmax(auto, max-content) );}.frm_form_field.frm_inline_container .frm_primary_label,.frm_form_field.frm_right_container .frm_primary_label,.frm_form_field.frm_left_container .frm_primary_label{margin-right:10px;grid-row:span 2/span 2;padding-top:4px;}.frm_form_field.frm_left_container .frm_primary_label{grid-column:1;grid-row:span 2/span 2; }.frm_form_field.frm_right_container .frm_primary_label{grid-column:2;grid-row:1;margin-right:0;margin-left:10px;}.frm_form_field.frm_inline_container .frm_description,.frm_form_field.frm_left_container .frm_description{grid-column:2;}.frm_form_field.frm_right_container .frm_description{grid-column:1;}.frm_conf_field.frm_left_container{grid-template-columns: 67%;}.frm_conf_field.frm_left_container .frm_description{grid-column:1;}.frm-fade-in {-webkit-animation-name: fadeIn;animation-name: fadeIn;-webkit-animation-duration: 1s;animation-duration: 1s;-webkit-animation-fill-mode: both;animation-fill-mode: both;}@keyframes spin {0% { transform: rotate(0deg); }100% { transform: rotate(360deg); }}@keyframes fadeIn {   0% {opacity: 0;}   100% {opacity: 1;}}@media only screen and (max-width: 600px) {.frm_section_heading > .frm_form_field,.frm_fields_container > .frm_submit,.frm_grid_container > .frm_form_field,.frm_fields_container > .frm_form_field{grid-column: 1 / span 12 !important;}.frm_form_field.frm_inline_container,.frm_form_field.frm_right_container,.frm_form_field.frm_left_container{display:block;}}.frm_conf_field.frm_left_container .frm_primary_label{display:none;}.wp-editor-wrap *,.wp-editor-wrap *:after,.wp-editor-wrap *:before{-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;}.with_frm_style .frm_grid,.with_frm_style .frm_grid_first,.with_frm_style .frm_grid_odd{clear:both;margin-bottom:0 !important;padding:5px;border-width:1px;border-style:solid;border-color:#cccccc;border-left:none;border-right:none;}.with_frm_style .frm_grid,.with_frm_style .frm_grid_odd{border-top:none;}.frm_grid .frm_error,.frm_grid_first .frm_error,.frm_grid_odd .frm_error{display:none;}.frm_grid:after,.frm_grid_first:after,.frm_grid_odd:after{visibility:hidden;display:block;font-size:0;content:\" \";clear:both;height:0;}.frm_grid_first{margin-top:20px;}.frm_grid_first,.frm_grid_odd{background-color:#ffffff;}.frm_grid{background-color:#ffffff;}.frm_grid .frm_primary_label,.frm_grid_first .frm_primary_label,.frm_grid_odd .frm_primary_label,.frm_grid .frm_radio,.frm_grid_first .frm_radio,.frm_grid_odd .frm_radio,.frm_grid .frm_checkbox,.frm_grid_first .frm_checkbox,.frm_grid_odd .frm_checkbox{float:left !important;display:block;margin-top:0;margin-left:0 !important;}.frm_grid_first .frm_radio label,.frm_grid .frm_radio label,.frm_grid_odd .frm_radio label,.frm_grid_first .frm_checkbox label,.frm_grid .frm_checkbox label,.frm_grid_odd .frm_checkbox label{visibility:hidden;white-space:nowrap;text-align:left;}.frm_grid_first .frm_radio label input,.frm_grid .frm_radio label input,.frm_grid_odd .frm_radio label input,.frm_grid_first .frm_checkbox label input,.frm_grid .frm_checkbox label input,.frm_grid_odd .frm_checkbox label input{visibility:visible;margin:2px 0 0;float:right;}.frm_grid .frm_radio,.frm_grid_first .frm_radio,.frm_grid_odd .frm_radio,.frm_grid .frm_checkbox,.frm_grid_first .frm_checkbox,.frm_grid_odd .frm_checkbox{display:inline;}.frm_grid_2 .frm_radio,.frm_grid_2 .frm_checkbox,.frm_grid_2 .frm_primary_label{width:48% !important;}.frm_grid_2 .frm_radio,.frm_grid_2 .frm_checkbox{margin-right:4%;}.frm_grid_3 .frm_radio,.frm_grid_3 .frm_checkbox,.frm_grid_3 .frm_primary_label{width:30% !important;}.frm_grid_3 .frm_radio,.frm_grid_3 .frm_checkbox{margin-right:3%;}.frm_grid_4 .frm_radio,.frm_grid_4 .frm_checkbox{width:20% !important;}.frm_grid_4 .frm_primary_label{width:28% !important;}.frm_grid_4 .frm_radio,.frm_grid_4 .frm_checkbox{margin-right:4%;}.frm_grid_5 .frm_primary_label,.frm_grid_7 .frm_primary_label{width:24% !important;}.frm_grid_5 .frm_radio,.frm_grid_5 .frm_checkbox{width:17% !important;margin-right:2%;}.frm_grid_6 .frm_primary_label{width:25% !important;}.frm_grid_6 .frm_radio,.frm_grid_6 .frm_checkbox{width:14% !important;margin-right:1%;}.frm_grid_7 .frm_primary_label{width:22% !important;}.frm_grid_7 .frm_radio,.frm_grid_7 .frm_checkbox{width:12% !important;margin-right:1%;}.frm_grid_8 .frm_primary_label{width:23% !important;}.frm_grid_8 .frm_radio,.frm_grid_8 .frm_checkbox{width:10% !important;margin-right:1%;}.frm_grid_9 .frm_primary_label{width:20% !important;}.frm_grid_9 .frm_radio,.frm_grid_9 .frm_checkbox{width:9% !important;margin-right:1%;}.frm_grid_10 .frm_primary_label{width:19% !important;}.frm_grid_10 .frm_radio,.frm_grid_10 .frm_checkbox{width:8% !important;margin-right:1%;}.frm_form_field.frm_inline_container .frm_opt_container,.frm_form_field.frm_right_container .frm_opt_container,.frm_form_field.frm_left_container .frm_opt_container{padding-top:4px;}.with_frm_style .frm_inline_container.frm_grid_first .frm_primary_label,.with_frm_style .frm_inline_container.frm_grid .frm_primary_label,.with_frm_style .frm_inline_container.frm_grid_odd .frm_primary_label,.with_frm_style .frm_inline_container.frm_grid_first .frm_opt_container,.with_frm_style .frm_inline_container.frm_grid .frm_opt_container,.with_frm_style .frm_inline_container.frm_grid_odd .frm_opt_container{margin-right:0;}.frm_form_field.frm_two_col .frm_opt_container,.frm_form_field.frm_three_col .frm_opt_container,.frm_form_field.frm_four_col .frm_opt_container{display: grid;grid-template-columns: repeat(2, 1fr);grid-auto-rows: max-content;grid-gap: 0 2.5%;}.frm_form_field.frm_three_col .frm_opt_container{grid-template-columns: repeat(3, 1fr);}.frm_form_field.frm_four_col .frm_opt_container{grid-template-columns: repeat(4, 1fr);}.frm_form_field.frm_two_col .frm_radio,.frm_form_field.frm_two_col .frm_checkbox,.frm_form_field.frm_three_col .frm_radio,.frm_form_field.frm_three_col .frm_checkbox,.frm_form_field.frm_four_col .frm_radio,.frm_form_field.frm_four_col .frm_checkbox{grid-column-end: span 1;}.frm_form_field .frm_checkbox,.frm_form_field .frm_checkbox + .frm_checkbox,.frm_form_field .frm_radio,.frm_form_field .frm_radio + .frm_radio{margin-top: 0;margin-bottom: 0;}.frm_form_field.frm_scroll_box .frm_opt_container{height:100px;overflow:auto;}.frm_html_container.frm_scroll_box,.frm_form_field.frm_html_scroll_box{height:100px;overflow:auto;background-color:#ffffff;border-color:#cccccc;border-width:1px;border-style:solid;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;width:100%;max-width:100%;font-size:14px;padding:6px 10px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;outline:none;font-weight:normal;box-shadow:0 1px 1px rgba(0, 0, 0, 0.075) inset;}.frm_form_field.frm_total input,.frm_form_field.frm_total textarea{opacity:1;background-color:transparent !important;border:none !important;font-weight:bold;-moz-box-shadow:none;-webkit-box-shadow:none;width:auto !important;box-shadow:none !important;display:inline;-moz-appearance:textfield;padding:0;}.frm_form_field.frm_total input::-webkit-outer-spin-button,.frm_form_field.frm_total input::-webkit-inner-spin-button {-webkit-appearance: none;}.frm_form_field.frm_total input:focus,.frm_form_field.frm_total textarea:focus{background-color:transparent;border:none;-moz-box-shadow:none;-webkit-box-shadow:none;box-shadow:none;}.frm_form_field.frm_label_justify .frm_primary_label{text-align:justify !important;}.frm_form_field.frm_capitalize input,.frm_form_field.frm_capitalize select,.frm_form_field.frm_capitalize .frm_opt_container label{text-transform:capitalize;}.frm_clearfix:after{content:\".\";display:block;clear:both;visibility:hidden;line-height:0;height:0;}.frm_clearfix{display:block;}@font-face {font-family: \'s11-fp\';src: url(\'../fonts/s11-fp.ttf?v=7\') format(\'truetype\'),url(\'../fonts/s11-fp.woff?v=7\') format(\'woff\'),url(\'../fonts/s11-fp.svg?v=7#s11-fp\') format(\'svg\');font-weight: normal;font-style: normal;}.frmfont,.frm_icon_font,.frm_dashicon_font{text-decoration:none;text-shadow: none;font-weight:normal;display:inline-block;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;text-rendering: auto;line-height: 1;-moz-transition: color .1s ease-in-out, opacity .1s ease-in-out;-webkit-transition: color .1s ease-in-out, opacity .1s ease-in-out;transition: color .1s ease-in-out, opacity .1s ease-in-out;font-size: 18px;}i.frmfont,i.frm_icon_font{font-style:normal;font-variant: normal;speak: none;}.frmfont:before,select.frmfont,.frm_icon_font:before,select.frm_icon_font{font-family: \'s11-fp\' !important;text-align:center;}.frmfont,a.frmfont,.frmfont:hover,a.frmfont:hover.frm_icon_font,a.frm_icon_font,.frm_icon_font:hover,a.frm_icon_font:hover{text-decoration:none !important;box-shadow:none;}.frmfont:focus,.frm_icon_font:focus,.frm_dashicon_font:focus{box-shadow:none;-webkit-box-shadow:none;}.frmfont:active,.frm_icon_font:active{outline:none;}.frm_trigger .frm_icon_font{padding:0 5px;}.frm_logo_icon:before {content: \"\\e601\";}.frm_required_icon:before {content: \"\\e612\";}.frm_delete_icon:before {content: \"\\e610\" !important;}.frm_delete_solid_icon:before {content: \"\\e900\";}.frm_move_icon:before {content: \"\\e61a\";}.frm_drag_icon:before {content: \"\\e93b\";}.frm_clear_icon:before {content: \"\\e60a\";}.frm_noclear_icon:before {content: \"\\e60b\";}.frm_duplicate_icon:before {content: \"\\e61b\";}.frm_copy_icon:before {content: \"\\f0c5\";}.frm_clone_solid_icon:before {content: \"\\f24e\";}.frm_clone_icon:before {content: \"\\f24d\";}.frm_tooltip_icon:before {content: \"\\e611\";}.frm_tooltip_solid_icon:before {content: \"\\e907\";}.frm_forbid_icon:before {content: \"\\e636\";}.frm_checkmark_icon:before {content: \"\\e90a\";}.frm_check_icon:before {content: \"\\e605\";}.frm_check1_icon:before {content: \"\\e606\";}.frm_plus_icon:before {content: \"\\e62f\";}.frm_plus1_icon:before {content: \"\\e602\";}.frm_plus2_icon:before {content: \"\\e603\";}.frm_plus3_icon:before {content: \"\\e632\";}.frm_plus4_icon:before {content: \"\\e60f\";}.frm_minus_icon:before {content: \"\\e62e\";}.frm_minus1_icon:before {content: \"\\e600\";}.frm_minus2_icon:before {content: \"\\e604\";}.frm_minus3_icon:before {content: \"\\e633\";}.frm_minus4_icon:before {content: \"\\e613\";}.frm_cancel_icon:before {content: \"\\e607\";}.frm_cancel1_icon:before {content: \"\\e608\";}.frm_close_icon:before {content: \"\\e928\";}.frm_report_problem_solid_icon:before {content: \"\\e914\";}.frm_report_problem_icon:before {content: \"\\e915\";}.frm_arrowup_icon:before {content: \"\\e60d\";}.frm_arrowup1_icon:before {content: \"\\e60e\";}.frm_arrowup2_icon:before {content: \"\\e630\";}.frm_arrowup3_icon:before {content: \"\\e62b\";}.frm_arrowup4_icon:before {content: \"\\e62c\";}.frm_arrowup5_icon:before {content: \"\\e635\";}.frm_arrowup5_solid_icon:before {content: \"\\e9d\";}.frm_arrowup7_icon:before {content: \"\\e908\";}.frm_arrowup6_icon:before {content: \"\\e62d\";}.frm_arrowdown_icon:before {content: \"\\e609\";}.frm_arrowdown1_icon:before {content: \"\\e60c\";}.frm_arrowdown2_icon:before {content: \"\\e631\";}.frm_arrowdown3_icon:before {content: \"\\e628\";}.frm_arrowdown4_icon:before {content: \"\\e629\";}.frm_arrowdown5_icon:before {content: \"\\e634\";}.frm_arrowdown5_solid_icon:before {content: \"\\e905\";}.frm_arrowdown7_icon:before {content: \"\\e90b\";}.frm_arrowdown6_icon:before {content: \"\\e62a\";}.frm_arrow_left_icon:before {content: \"\\e912\";}.frm_arrow_right_icon:before {content: \"\\e913\";}.frm_filter_icon:before {content: \"\\e90c\";}.frm_download_icon:before {content: \"\\e615\";}.frm_upload2_icon:before {content: \"\\f093\";}.frm_upload_icon:before {content: \"\\e616\";}.frm_download2_icon:before {content: \"\\f019\";}.frm_hard_drive_icon:before {content: \"\\e916\";}.frm_pencil_solid_icon:before {content: \"\\e901\";}.frm_pencil_icon:before {content: \"\\e61d\";}.frm_signature_icon:before {content: \"\\e919\";}.frm_user_icon:before {content: \"\\e7ff\";}.frm_register_icon:before {content: \"\\e637\";}.frm_account_circle_solid_icon:before {content: \"\\e853\";}.frm_account_circle_icon:before {content: \"\\e921\";}.frm_address_card_icon:before {content: \"\\e996\";}.frm_paragraph_icon:before {content: \"\\f1dd\";}.frm_checkbox_unchecked_icon:before {content: \"\\e91e\";}.frm_checkbox_icon:before {content: \"\\e922\";}.frm_checkbox_solid_icon:before {content: \"\\e91f\";}.frm_dropdown_icon:before {content: \"\\e909\";}.frm_caret_square_down_icon:before {content: \"\\f150\";}.frm_check_square_icon:before {content: \"\\f14a\";}.frm_radio_unchecked_icon:before {content: \"\\e971\";}.frm_radio_checked_icon:before {content: \"\\ea54\";}.frm_scrubber_icon:before {content: \"\\f2f8\";}.frm_location_solid_icon:before {content: \"\\e955\";}.frm_location_icon:before {content: \"\\e947\";}.frm_toggle_on_icon:before {content: \"\\f205\";}.frm_toggle_off_icon:before {content: \"\\f204\";}.frm_shield_check_icon:before {content: \"\\f2f7\";}.frm_shield_check_solid_icon:before {content: \"\\e97d\";}.frm_clock_icon:before {content: \"\\e929\";}.frm_clock_solid_icon:before {content: \"\\e985\";}.frm_link_icon:before {content: \"\\f0c1\";}.frm_email_icon:before {content: \"\\e626\";}.frm_email_solid_icon:before {content: \"\\f0e0\";}.frm_mail_bulk_icon:before {content: \"\\e95c\";}.frm_phone_icon:before {content: \"\\e942\";}.frm_calendar_icon:before {content: \"\\f073\";}.frm_code_icon:before {content: \"\\e90d\";}.frm_tag_icon:before {content: \"\\e98b\";}.frm_tag_solid_icon:before {content: \"\\e989\";}.frm_price_tags_icon:before {content: \"\\e936\";}.frm_search_icon:before {content: \"\\e978\";}.frm_sitemap_icon:before {content: \"\\f0e8\";}.frm_file_icon:before {content: \"\\f15b\";}.frm_file_text_solid_icon:before {content: \"\\f15c\";}.frm_file_text_icon:before {content: \"\\e923\";}.frm-option-icon:before, .frm_option_icon:before {content: \"\\e904\";}.frm_option_solid_icon:before {content: \"\\e906\";}.frm_more_horiz_icon:before {content: \"\\e5d3\";}.frm_more_vert_icon:before {content: \"\\e5d4\";}.frm_more_horiz_solid_icon {font-size: 28px !important;font-weight: bold;line-height: 18px;}.frm_more_horiz_solid_icon:before {content: \"\\00B7\\00B7\\00B7\";}.frm_more_vert_solid_icon:before {content: \"\\f142\";}.frm_calculator_icon:before {content: \"\\f1ec\";}.frm_key_icon:before {content: \"\\f084\";}.frm_keyalt_solid_icon:before {content: \"\\e986\";}.frm_keyalt_icon:before {content: \"\\e987\";}.frm_keyboard_icon:before {content: \"\\e924\";}.frm_eye_icon:before {content: \"\\f06e\";}.frm_eye_solid_icon:before {content: \"\\e945\";}.frm_eye_slash_icon:before {content: \"\\f070\";}.frm_eye_slash_solid_icon:before {content: \"\\e949\";}.frm_page_break_icon:before {content: \"\\e8e9\";}.frm_view_day_icon:before {content: \"\\e8ed\";}.frm_attach_file_icon:before {content: \"\\e226\";}.frm_printer_icon:before {content: \"\\e926\";}.frm_header_icon:before {content: \"\\f1dc\";}.frm_h1_icon:before {content: \"\\e94c\";}.frm_repeat_icon:before {content: \"\\f363\";}.frm_repeater_icon:before {content: \"\\e974\";}.frm_hashtag_icon:before {content: \"\\e292\";}.frm_save_icon:before {content: \"\\e927\";}.frm_sliders_icon:before {content: \"\\f1de\";}.frm_code_commit_icon:before {content: \"\\f386\";}.frm_star_icon:before {content: \"\\e9d7\";}.frm_star_full_icon:before {content: \"\\e9d9\";}.frm_star_half_icon:before {content: \"\\e9d8\";}.frm_linear_scale_icon:before {content: \"\\e260\";}.frm_pie_chart_icon:before {content: \"\\e99a\";}.frm_stats_bars_icon:before {content: \"\\e99c\";}.frm_sms_icon:before {content: \"\\e61c\";}.frm_highrise_icon:before {content: \"\\e617\";}.frm_mailchimp_icon:before {content: \"\\e622\";}.frm_feed_icon:before {content: \"\\e624\";}.frm_align_right_icon:before {content: \"\\e90f\";}.frm_align_left_icon:before {content: \"\\e910\";}.frm_button_icon:before {content: \"\\e911\";}.frm_browser_icon:before {content: \"\\e925\";}.frm_cloud_download_solid_icon:before {content: \"\\e92a\";}.frm_cloud_download_icon:before {content: \"\\e92b\";}.frm_cloud_upload_solid_icon:before {content: \"\\e92c\";}.frm_cloud_upload_icon:before {content: \"\\e92d\";}.frm_cloud_solid_icon:before {content: \"\\e92e\";}.frm_cloud_icon:before {content: \"\\e92f\";}.frm_shuffle_icon:before {content: \"\\e917\";}.frm_swap_icon:before {content: \"\\e918\";}.frm_dropper_solid_icon:before {content: \"\\e93c\";}.frm_tint_icon:before {content: \"\\e93e\";}.frm_pallet_solid_icon:before {content: \"\\e96c\";}.frm_pallet_icon:before {content: \"\\e96d\";}.frm_fingerprint_icon:before {content: \"\\e94a\";}.frm_ghost_icon:before {content: \"\\e94b\";}.frm_heart_solid_icon:before {content: \"\\e94d\";}.frm_heart_icon:before {content: \"\\e94e\";}.frm_history_icon:before {content: \"\\e94f\";}.frm_import_icon:before {content: \"\\e91a\";}.frm_export_icon:before {content: \"\\e91b\";}.frm_label_solid_icon:before {content: \"\\e952\";}.frm_label_icon:before {content: \"\\e953\";}.frm_lock_open_icon:before {content: \"\\e957\";}.frm_lock_solid_icon:before {content: \"\\e958\";}.frm_lock_icon:before {content: \"\\e959\";}.frm_magic_wand_icon:before {content: \"\\e997\";}.frm_dollar_sign_icon:before {content: \"\\e91c\";}.frm_percent_icon:before {content: \"\\e939\";}.frm_notification_solid_icon:before {content: \"\\e964\";}.frm_notification_icon:before {content: \"\\e965\";}.frm_external_link_icon:before {content: \"\\e966\";}.frm_pageview_solid_icon:before {content: \"\\e96a\";}.frm_pageview_icon:before {content: \"\\e96b\";}.frm_settings_solid_icon:before {content: \"\\e979\";}.frm_settings_icon:before {content: \"\\e97a\";}.frm_stamp_icon:before {content: \"\\e980\";}.frm_support_icon:before {content: \"\\f1cd\";}.frm_text_solid_icon:before {content: \"\\e98c\";}.frm_text_icon:before {content: \"\\e98d\";}.frm_text2_icon:before {content: \"\\f031\";}.frm_text3_icon:before {content: \"\\e98e\";}.frm_unfold_less_icon:before {content: \"\\e993\";}.frm_unfold_more_icon:before {content: \"\\e994\";}.frm_work_solid_icon:before {content: \"\\e999\";}.frm_work_icon:before {content: \"\\e99e\";}.frm_white_label_icon:before {content: \"\\e91d\" !important;}.frm_zoom_out_icon:before {content: \"\\e99f\";}.frm_maximize_icon:before {content: \"\\e920\";}.frm_minimize_icon:before {content: \"\\e93a\";}.frm_authorize_icon:before {content: \"\\e903\";}.frm_icon_font.frm_activecampaign_icon {background-image: none;}.frm_activecampaign_icon:before {content: \"\\e930\";}.frm_aweber_icon:before {content: \"\\e627\";}.frm_campaignmonitor_icon:before {content: \"\\e946\";}.frm_constant_contact_icon:before {content: \"\\e931\";}.frm_getresponse_icon:before {content: \"\\e932\";}.frm_googlesheets_icon:before {content: \"\\e944\";}.frm_building_icon:before {content: \"\\e93f\";}.frm_hubspot_icon:before {content: \"\\e933\";}.frm_icontact_icon:before {content: \"\\e940\";}.frm_icon_font.frm_mailpoet_icon:before {content: \"\\e934\";}.frm_paypal_icon:before {content: \"\\e61f\";}.frm_sendinblue_icon:before {content: \"\\e943\";}.frm_sendy_icon:before {content: \"\\e941\";}.frm_salesforce_icon:before {content: \"\\e935\";}.frm_salesforcealt_icon:before {content: \"\\e937\";}.frm_stripe_icon:before {content: \"\\e902\";}.frm_stripealt_icon:before {content: \"\\e93d\";}.frm_twilio_icon:before {content: \"\\e620\";}.frm_woocommerce_icon:before {content: \"\\e90e\";}.frm_wordpress_icon:before {content: \"\\f19a\";}.frm_credit_card_icon:before {content: \"\\e938\";}.frm_credit-card-alt_icon:before, .frm_credit_card_alt_icon:before {content: \"\\f283\";}.frm_cc_amex_icon:before {content: \"\\f1f3\";}.frm_cc_discover_icon:before {content: \"\\f1f2\";}.frm_cc_mastercard_icon:before {content: \"\\f1f1\";}.frm_cc_visa_icon:before {content: \"\\f1f0\";}.frm_cc_paypal_icon:before {content: \"\\f1f4\";}.frm_cc_stripe_icon:before {content: \"\\f1f5\";}@media only screen and (max-width: 900px) {.frm_form_field .frm_repeat_grid .frm_form_field.frm_sixth .frm_primary_label,.frm_form_field .frm_repeat_grid .frm_form_field.frm_seventh .frm_primary_label,.frm_form_field .frm_repeat_grid .frm_form_field.frm_eighth .frm_primary_label{display: block !important;}}@media only screen and (max-width: 600px) {.frm_form_field.frm_four_col .frm_opt_container{grid-template-columns: repeat(2, 1fr);}}@media only screen and (max-width: 500px) {.frm_form_field.frm_two_col .frm_radio,.frm_form_field.frm_two_col .frm_checkbox,.frm_form_field.frm_three_col .frm_radio,.frm_form_field.frm_three_col .frm_checkbox{width: auto;margin-right: 0;float: none;display:block;}.frm_form_field input[type=file] {max-width:220px;}.with_frm_style .frm-g-recaptcha > div > div,.with_frm_style .g-recaptcha > div > div{width:inherit !important;display:block;overflow:hidden;max-width:302px;border-right:1px solid #d3d3d3;border-radius:4px;box-shadow:2px 0px 4px -1px rgba(0,0,0,.08);-moz-box-shadow:2px 0px 4px -1px rgba(0,0,0,.08);}.with_frm_style .g-recaptcha iframe,.with_frm_style .frm-g-recaptcha iframe{width:100%;}}.with_frm_style .frm_form_field{clear:both;}.frm_form_field,.frm_form_field.frm_inline_container,.frm_form_field.frm_right_container,.frm_form_field.frm_left_container{width:auto;}.frm_inline_form .frm_form_field.form-field{margin-right:2.5%;display:inline-block;}.frm_inline_form .frm_submit{display:inline-block;}.frm_form_field.frm2,.frm_submit.frm2,.frm_form_field.frm3,.frm_submit.frm3,.frm_form_field.frm4,.frm_submit.frm4,.frm_form_field.frm6,.frm_submit.frm6,.frm_form_field.frm8,.frm_submit.frm8,.frm_form_field.frm9,.frm_submit.frm9,.frm_form_field.frm10,.frm_submit.frm10,.frm_form_field.frm_right_half,.frm_form_field.frm_right_third,.frm_form_field.frm_right_two_thirds,.frm_form_field.frm_right_fourth,.frm_form_field.frm_right_fifth,.frm_form_field.frm_right_inline,.frm_form_field.frm_last_half,.frm_form_field.frm_last_third,.frm_form_field.frm_last_two_thirds,.frm_form_field.frm_last_fourth,.frm_form_field.frm_last_fifth,.frm_form_field.frm_last_sixth,.frm_form_field.frm_last_seventh,.frm_form_field.frm_last_eighth,.frm_form_field.frm_last_inline,.frm_form_field.frm_last,.frm_form_field.frm_half,.frm_submit.frm_half,.frm_form_field.frm_third,.frm_submit.frm_third,.frm_form_field.frm_two_thirds,.frm_form_field.frm_fourth,.frm_submit.frm_fourth,.frm_form_field.frm_three_fourths,.frm_form_field.frm_fifth,.frm_submit.frm_fifth,.frm_form_field.frm_two_fifths,.frm_form_field.frm_three_fifths,.frm_form_field.frm_four_fifths,.frm_form_field.frm_sixth,.frm_submit.frm_sixth,.frm_form_field.frm_seventh,.frm_submit.frm_seventh,.frm_form_field.frm_eighth,.frm_submit.frm_eighth,.frm_form_field.frm_inline,.frm_submit.frm_inline{clear:none;float:left;margin-left:2.5%;}.frm_form_field.frm_left_half,.frm_form_field.frm_left_third,.frm_form_field.frm_left_two_thirds,.frm_form_field.frm_left_fourth,.frm_form_field.frm_left_fifth,.frm_form_field.frm_left_inline,.frm_form_field.frm_first_half,.frm_form_field.frm_first_third,.frm_form_field.frm_first_two_thirds,.frm_form_field.frm_first_fourth,.frm_form_field.frm_first_fifth,.frm_form_field.frm_first_sixth,.frm_form_field.frm_first_seventh,.frm_form_field.frm_first_eighth,.frm_form_field.frm_first_inline,.frm_form_field.frm_first{clear:left;float:left;margin-left:0;}.frm_form_field.frm6,.frm_submit.frm6,.frm_form_field.frm_left_half,.frm_form_field.frm_right_half,.frm_form_field.frm_first_half,.frm_form_field.frm_last_half,.frm_form_field.frm_half,.frm_submit.frm_half{width:48.75%;}.frm_form_field.frm4,.frm_submit.frm4,.frm_form_field.frm_left_third,.frm_form_field.frm_third,.frm_submit.frm_third,.frm_form_field.frm_right_third,.frm_form_field.frm_first_third,.frm_form_field.frm_last_third{width:31.66%;}.frm_form_field.frm8,.frm_submit.frm8,.frm_form_field.frm_left_two_thirds,.frm_form_field.frm_right_two_thirds,.frm_form_field.frm_first_two_thirds,.frm_form_field.frm_last_two_thirds,.frm_form_field.frm_two_thirds{width:65.82%;}.frm_form_field.frm3,.frm_submit.frm3,.frm_form_field.frm_left_fourth,.frm_form_field.frm_fourth,.frm_submit.frm_fourth,.frm_form_field.frm_right_fourth,.frm_form_field.frm_first_fourth,.frm_form_field.frm_last_fourth{width:23.12%;}.frm_form_field.frm9,.frm_form_field.frm_three_fourths{width:74.36%;}.frm_form_field.frm_left_fifth,.frm_form_field.frm_fifth,.frm_submit.frm_fifth,.frm_form_field.frm_right_fifth,.frm_form_field.frm_first_fifth,.frm_form_field.frm_last_fifth{width:18%;}.frm_form_field.frm_two_fifths {width:38.5%;}.frm_form_field.frm_three_fifths {width:59%;}.frm_form_field.frm_four_fifths {width:79.5%;}.frm_form_field.frm2,.frm_submit.frm2,.frm_form_field.frm_sixth,.frm_submit.frm_sixth,.frm_form_field.frm_first_sixth,.frm_form_field.frm_last_sixth{width:14.58%;}.frm_form_field.frm10,.frm_submit.frm10{width:82.92%;}.frm_form_field.frm_seventh,.frm_submit.frm_seventh,.frm_form_field.frm_first_seventh,.frm_form_field.frm_last_seventh{width:12.14%;}.frm_form_field.frm_eighth,.frm_submit.frm_eighth,.frm_form_field.frm_first_eighth,.frm_form_field.frm_last_eighth{width:10.31%;}.frm_form_field.frm_left_inline,.frm_form_field.frm_first_inline,.frm_form_field.frm_inline,.frm_submit.frm_inline,.frm_form_field.frm_right_inline,.frm_form_field.frm_last_inline{width:auto;}.frm_full,.frm_full .wp-editor-wrap,.frm_full input:not([type=\'checkbox\']):not([type=\'radio\']):not([type=\'button\']),.frm_full select,.frm_full textarea{width:100% !important;}.frm_full .wp-editor-wrap input{width:auto !important;}.frm_form_field.frm_inline_container,.frm_form_field.frm_right_container,.frm_form_field.frm_left_container,.frm_combo_inputs_container,.frm_grid_container,.frm_form_fields .frm_section_heading,.frm_form_fields .frm_fields_container,.frm_form_field.frm_two_col .frm_opt_container,.frm_form_field.frm_three_col .frm_opt_container,.frm_form_field.frm_four_col .frm_opt_container{display:block;}.frm_form_field.frm_left_container .frm_primary_label{float:left;display:inline;max-width:33%;margin-right:5%;}.with_frm_style .frm_conf_field.frm_left_container .frm_primary_label{display:inline;visibility:hidden;}.frm_form_field.frm_left_container input:not([type=radio]):not([type=checkbox]),.frm_form_field.frm_left_container:not(.frm_dynamic_select_container) select,.frm_form_field.frm_left_container textarea,.frm_form_field.frm_left_container .wp-editor-wrap,.frm_form_field.frm_left_container .frm_opt_container,.frm_form_field.frm_left_container .frm_dropzone,.frm_form_field.frm_left_container .frm-g-recaptcha,.frm_form_field.frm_left_container .g-recaptcha,.frm_form_field.frm_left_container .chosen-container,.frm_form_field.frm_left_container .frm_combo_inputs_container,.frm_form_field.frm_right_container input:not([type=radio]):not([type=checkbox]),.frm_form_field.frm_right_container:not(.frm_dynamic_select_container) select,.frm_form_field.frm_right_container textarea,.frm_form_field.frm_right_container .wp-editor-wrap,.frm_form_field.frm_right_container .frm_opt_container,.frm_form_field.frm_right_container .frm_dropzone,.frm_form_field.frm_right_container .frm-g-recaptcha,.frm_form_field.frm_right_container .g-recaptcha,.frm_form_field.frm_right_container .chosen-container,.frm_form_field.frm_right_container .frm_combo_inputs_container{max-width:62%;}.frm_form_field.frm_left_container .frm_combo_inputs_container input,.frm_form_field.frm_left_container .frm_combo_inputs_container select,.frm_form_field.frm_right_container .frm_combo_inputs_container input,.frm_form_field.frm_right_container .frm_combo_inputs_container select{max-width:100%;}.frm_form_field.frm_left_container .frm_data_container,.frm_form_field.frm_right_container .frm_data_container,.frm_form_field.frm_inline_container .frm_data_container,.frm_form_field.frm_left_container .frm_opt_container,.frm_form_field.frm_right_container .frm_opt_container,.frm_form_field.frm_inline_container .frm_opt_container,.frm_form_field.frm_left_container .frm_combo_inputs_container,.frm_form_field.frm_right_container .frm_combo_inputs_container,.frm_form_field.frm_inline_container .frm_combo_inputs_container,.frm_form_field.frm_left_container .wp-editor-wrap,.frm_form_field.frm_right_container .wp-editor-wrap,.frm_form_field.frm_inline_container .wp-editor-wrap,.frm_form_field.frm_left_container .frm_dropzone,.frm_form_field.frm_right_container .frm_dropzone,.frm_form_field.frm_inline_container .frm_dropzone,.frm_form_field.frm_left_container .frm-g-recaptcha,.frm_form_field.frm_right_container .frm-g-recaptcha,.frm_form_field.frm_inline_container .frm-g-recaptcha,.frm_form_field.frm_left_container .g-recaptcha,.frm_form_field.frm_right_container .g-recaptcha,.frm_form_field.frm_inline_container .g-recaptcha{display:inline-block;}.frm_form_field.frm_left_half.frm_left_container .frm_primary_label,.frm_form_field.frm_right_half.frm_left_container .frm_primary_label,.frm_form_field.frm_left_half.frm_right_container .frm_primary_label,.frm_form_field.frm_right_half.frm_right_container .frm_primary_label,.frm_form_field.frm_first_half.frm_left_container .frm_primary_label,.frm_form_field.frm_last_half.frm_left_container .frm_primary_label,.frm_form_field.frm_first_half.frm_right_container .frm_primary_label,.frm_form_field.frm_last_half.frm_right_container .frm_primary_label,.frm_form_field.frm_half.frm_right_container .frm_primary_label,.frm_form_field.frm_half.frm_left_container .frm_primary_label{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;max-width:33%;}.with_frm_style .frm_left_container .frm_primary_label{float:left;display:inline !important;width:150px;max-width:33% !important;margin-right:10px !important;}.with_frm_style .frm_right_container .frm_primary_label{display:inline !important;width:150px;max-width:33% !important;margin-left:10px !important;}.with_frm_style .frm_form_field.frm_left_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_left_container:not(.frm_dynamic_select_container) select,.with_frm_style .frm_form_field.frm_left_container textarea,.with_frm_style .frm_form_field.frm_left_container .frm_opt_container,.with_frm_style .frm_form_field.frm_left_container .frm-g-recaptcha,.with_frm_style .frm_form_field.frm_left_container .g-recaptcha,.with_frm_style .frm_form_field.frm_left_container .chosen-container,.with_frm_style .frm_form_field.frm_right_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_right_container:not(.frm_dynamic_select_container) select,.with_frm_style .frm_form_field.frm_right_container textarea,.with_frm_style .frm_form_field.frm_right_container .frm_opt_container,.with_frm_style .frm_form_field.frm_right_container .g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .frm-g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .chosen-container{max-width:62% !important;}.with_frm_style .frm_form_field.frm_left_container .frm_combo_inputs_container .frm_form_field input,.with_frm_style .frm_form_field.frm_left_container .frm_combo_inputs_container .frm_form_field select,.with_frm_style .frm_form_field.frm_right_container .frm_combo_inputs_container .frm_form_field input,.with_frm_style .frm_form_field.frm_right_container .frm_combo_inputs_container .frm_form_field select{max-width:100% !important;}.with_frm_style .frm_form_field.frm_left_container .frm_opt_container,.with_frm_style .frm_form_field.frm_right_container .frm_opt_container,.with_frm_style .frm_form_field.frm_left_container .g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .g-recaptcha,.with_frm_style .frm_form_field.frm_left_container .frm-g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .frm-g-recaptcha{display:inline-block !important;}.with_frm_style .frm_left_container > p.description::before,.with_frm_style .frm_left_container > div.description::before,.with_frm_style .frm_left_container > div.frm_description::before,.with_frm_style .frm_left_container > .frm_error::before,.with_frm_style .frm_right_container > p.description::after,.with_frm_style .frm_right_container > div.description::after,.with_frm_style .frm_right_container > div.frm_description::after,.with_frm_style .frm_right_container > .frm_error::after{content:\'\' !important;display:inline-block !important;width:150px;max-width:33% !important;margin-right:10px !important;}.with_frm_style .frm_left_container.frm_inline .frm_primary_label{max-width:90% !important;}.with_frm_style .form-field.frm_col_field{clear:none;float:left;margin-right:20px;}.with_frm_style .form-field.frm_col_field div.frm_description{width:auto;max-width:100%;}.with_frm_style .frm_inline_container .frm_primary_label,.with_frm_style .frm_inline_container.frm_dynamic_select_container .frm_opt_container{display:inline !important;}.with_frm_style .frm_inline_container .frm_primary_label{margin-right:10px !important;}.frm_form_field.frm_two_col .frm_radio,.frm_form_field.frm_three_col .frm_radio,.frm_form_field.frm_four_col .frm_radio,.frm_form_field.frm_two_col .frm_checkbox,.frm_form_field.frm_three_col .frm_checkbox,.frm_form_field.frm_four_col .frm_checkbox{float:left;}.frm_form_field.frm_two_col .frm_radio,.frm_form_field.frm_two_col .frm_checkbox{width:48%;margin-right:4%;}.frm_form_field.frm_three_col .frm_radio,.frm_form_field.frm_three_col .frm_checkbox{width:30%;margin-right:5%;}.frm_form_field.frm_four_col .frm_radio,.frm_form_field.frm_four_col .frm_checkbox{width:22%;margin-right:4%;}.frm_form_field.frm_two_col .frm_radio:nth-child(2n+2),.frm_form_field.frm_two_col .frm_checkbox:nth-child(2n+2),.frm_form_field.frm_three_col .frm_radio:nth-child(3n+3),.frm_form_field.frm_three_col .frm_checkbox:nth-child(3n+3),.frm_form_field.frm_four_col .frm_radio:nth-child(4n+4),.frm_form_field.frm_four_col .frm_checkbox:nth-child(4n+4){margin-right:0;}.with_frm_style.frm_rtl .frm_form_field.frm2,.with_frm_style.frm_rtl .frm_form_field.frm3,.with_frm_style.frm_rtl .frm_form_field.frm4,.with_frm_style.frm_rtl .frm_form_field.frm6,.with_frm_style.frm_rtl .frm_form_field.frm8,.with_frm_style.frm_rtl .frm_form_field.frm9,.with_frm_style.frm_rtl .frm_form_field.frm10,.with_frm_style.frm_rtl .frm_form_field.frm_half,.with_frm_style.frm_rtl .frm_form_field.frm_third,.with_frm_style.frm_rtl .frm_form_field.frm_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_sixth,.with_frm_style.frm_rtl .frm_form_field.frm_seventh,.with_frm_style.frm_rtl .frm_form_field.frm_eighth,.with_frm_style.frm_rtl .frm_form_field.frm_inline,.with_frm_style.frm_rtl .frm_form_field.frm_left_half,.with_frm_style.frm_rtl .frm_form_field.frm_left_third,.with_frm_style.frm_rtl .frm_form_field.frm_left_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_left_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_left_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_left_inline,.with_frm_style.frm_rtl .frm_form_field.frm_first_half,.with_frm_style.frm_rtl .frm_form_field.frm_first_third,.with_frm_style.frm_rtl .frm_form_field.frm_first_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_first_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_first_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_first_inline,.with_frm_style.frm_rtl .frm_form_field.frm_right_half,.with_frm_style.frm_rtl .frm_form_field.frm_right_third,.with_frm_style.frm_rtl .frm_form_field.frm_right_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_right_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_right_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_right_inline,.with_frm_style.frm_rtl .frm_form_field.frm_last_half,.with_frm_style.frm_rtl .frm_form_field.frm_last_third,.with_frm_style.frm_rtl .frm_form_field.frm_last_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_last_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_last_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_last_inline{float:right;margin-right:2.5%;margin-left:0;clear:none;}.with_frm_style.frm_rtl .frm_form_field.frm_left_half,.with_frm_style.frm_rtl .frm_form_field.frm_first_half,.with_frm_style.frm_rtl .frm_form_field.frm_first,.with_frm_style.frm_rtl .frm_form_field.frm_left_third,.with_frm_style.frm_rtl .frm_form_field.frm_first_third,.with_frm_style.frm_rtl .frm_form_field.frm_first_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_left_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_first_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_left_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_left_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_first_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_left_inline,.with_frm_style.frm_rtl .frm_form_field.frm_first_inline{clear:right;margin-right:0;}.with_frm_style.frm_rtl .frm_form_field.frm_two_col .frm_radio,.with_frm_style.frm_rtl .frm_form_field.frm_three_col .frm_radio,.with_frm_style.frm_rtl .frm_form_field.frm_four_col .frm_radio,.with_frm_style.frm_rtl .frm_form_field.frm_two_col .frm_checkbox,.with_frm_style.frm_rtl .frm_form_field.frm_three_col .frm_checkbox,.with_frm_style.frm_rtl .frm_form_field.frm_four_col .frm_checkbox{float:right;}@media only screen and (max-width: 500px) {.with_frm_style .frm_form_field.frm_left_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_left_container:not(.frm_dynamic_select_container) select,.with_frm_style .frm_form_field.frm_left_container textarea,.with_frm_style .frm_form_field.frm_left_container .frm_opt_container,.with_frm_style .frm_form_field.frm_left_container .frm-g-recaptcha,.with_frm_style .frm_form_field.frm_left_container .g-recaptcha,.with_frm_style .frm_form_field.frm_left_container .chosen-container,.with_frm_style .frm_form_field.frm_right_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_right_container:not(.frm_dynamic_select_container) select,.with_frm_style .frm_form_field.frm_right_container textarea,.with_frm_style .frm_form_field.frm_right_container .frm_opt_container,.with_frm_style .frm_form_field.frm_right_container .frm-g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .chosen-container{max-width:100% !important;}.with_frm_style .frm_left_container > p.description::before,.with_frm_style .frm_left_container > div.description::before,.with_frm_style .frm_left_container > div.frm_description::before,.with_frm_style .frm_left_container > .frm_error::before,.with_frm_style .frm_right_container > p.description::after,.with_frm_style .frm_right_container > div.description::after,.with_frm_style .frm_right_container > div.frm_description::after,.with_frm_style .frm_right_container > .frm_error::after{display:none !important;}.with_frm_style .frm_left_container .frm_primary_label,.with_frm_style .frm_right_container .frm_primary_label{width:100% !important;max-width:100% !important;margin-right:0 !important;margin-left:0 !important;padding-right:0 !important;padding-left:0 !important;}}@media only screen and (max-width: 600px){.with_frm_style .frm_form_field.frm_half.frm_left_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_half.frm_left_container select,.with_frm_style .frm_form_field.frm_half.frm_left_container textarea,.with_frm_style .frm_form_field.frm_half.frm_left_container .frm_opt_container,.with_frm_style .frm_form_field.frm_half.frm_left_container.frm-g-recaptcha,.with_frm_style .frm_form_field.frm_half.frm_left_container.g-recaptcha,.with_frm_style .frm_form_field.frm_half.frm_left_container .chosen-container,.with_frm_style .frm_form_field.frm_half.frm_right_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_half.frm_right_container select,.with_frm_style .frm_form_field.frm_half.frm_right_container textarea,.with_frm_style .frm_form_field.frm_half.frm_right_container .frm_opt_container,.with_frm_style .frm_form_field.frm_half.frm_right_container.frm-g-recaptcha,.with_frm_style .frm_form_field.frm_half.frm_right_container.g-recaptcha,.with_frm_style .frm_form_field.frm_half.frm_right_container .chosen-container{max-width:100% !important;}.with_frm_style .frm_form_field.frm_left_half.frm_left_container .frm_primary_label,.with_frm_style .frm_form_field.frm_right_half.frm_left_container .frm_primary_label,.with_frm_style .frm_form_field.frm_first_half.frm_left_container .frm_primary_label,.with_frm_style .frm_form_field.frm_last_half.frm_left_container .frm_primary_label,.with_frm_style .frm_form_field.frm_half.frm_left_container .frm_primary_label,.with_frm_style .frm_form_field.frm_left_half.frm_right_container .frm_primary_label,.with_frm_style .frm_form_field.frm_right_half.frm_right_container .frm_primary_label,.with_frm_style .frm_form_field.frm_first_half.frm_right_container .frm_primary_label,.with_frm_style .frm_form_field.frm_last_half.frm_right_container .frm_primary_label,.with_frm_style .frm_form_field.frm_half.frm_right_container .frm_primary_label{max-width:100% !important;margin-right:0;margin-left:0;padding-right:0;padding-left:0;width:100% !important;}.with_frm_style .frm_repeat_inline,.with_frm_style .frm_repeat_grid{margin: 20px 0;}.with_frm_style .frm_form_field.frm_first_half.frm_right_container div.frm_description,.with_frm_style .frm_form_field.frm_first_half.frm_right_container .frm_error,.with_frm_style .frm_form_field.frm_first_half .frm_right_container div.frm_description,.with_frm_style .frm_form_field.frm_first_half .frm_right_container .frm_error,.with_frm_style .frm_form_field.frm_last_half.frm_right_container div.frm_description,.with_frm_style .frm_form_field.frm_last_half.frm_right_container .frm_error,.with_frm_style .frm_form_field.frm_half.frm_right_container div.frm_description,.with_frm_style .frm_form_field.frm_half.frm_right_container .frm_error,.with_frm_style .frm_form_field.frm_first_half.frm_left_container div.frm_description,.with_frm_style .frm_form_field.frm_first_half.frm_left_container .frm_error,.with_frm_style .frm_form_field.frm_first_half .frm_left_container div.frm_description,.with_frm_style .frm_form_field.frm_first_half .frm_left_container .frm_error,.with_frm_style .frm_form_field.frm_last_half.frm_left_container div.frm_description,.with_frm_style .frm_form_field.frm_last_half.frm_left_container .frm_error,.with_frm_style .frm_form_field.frm_half.frm_left_container div.frm_description,.with_frm_style .frm_form_field.frm_half.frm_left_container .frm_error{margin-right:0;margin-left:0;padding-right:0;padding-left:0;}.frm_form_field.frm2,.frm_submit.frm2,.frm_form_field.frm3,.frm_submit.frm3,.frm_form_field.frm4,.frm_submit.frm4,.frm_form_field.frm6,.frm_submit.frm6,.frm_form_field.frm8,.frm_submit.frm8,.frm_form_field.frm9,.frm_submit.frm9,.frm_form_field.frm10,.frm_submit.frm10,.frm_form_field.frm_half,.frm_submit.frm_half,.frm_form_field.frm_left_half,.frm_form_field.frm_right_half,.frm_form_field.frm_first_half,.frm_form_field.frm_last_half,.frm_form_field.frm_first_third,.frm_form_field.frm_third,.frm_submit.frm_third,.frm_form_field.frm_last_third,.frm_form_field.frm_first_two_thirds,.frm_form_field.frm_last_two_thirds,.frm_form_field.frm_two_thirds,.frm_form_field.frm_left_fourth,.frm_form_field.frm_fourth,.frm_submit.frm_fourth,.frm_form_field.frm_right_fourth,.frm_form_field.frm_first_fourth,.frm_form_field.frm_last_fourth,.frm_form_field.frm_three_fourths,.frm_form_field.frm_fifth,.frm_submit.frm_fifth,.frm_form_field.frm_two_fifths,.frm_form_field.frm_three_fifths,.frm_form_field.frm_four_fifths,.frm_form_field.frm_sixth,.frm_submit.frm_sixth,.frm_form_field.frm_seventh,.frm_submit.frm_seventh,.frm_form_field.frm_eighth,.frm_submit.frm_eighth,.frm_form_field.frm_first_inline,.frm_form_field.frm_inline,.frm_submit.frm_inline,.frm_form_field.frm_last_inline{width:100%;margin-left:0;margin-right:0;clear:both;float:none;}.frm_form_field.frm_four_col .frm_radio,.frm_form_field.frm_four_col .frm_checkbox{width:48%;}.frm_form_field.frm_four_col .frm_radio:nth-child(2n+2),.frm_form_field.frm_four_col .frm_checkbox:nth-child(2n+2){margin-right:0;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(362, 'frm_addons_l', 'a:3:{s:7:\"timeout\";i:1587961217;s:5:\"value\";s:74088:\"{\"20790298\":{\"title\":\"Active Campaign\",\"name\":\"Active Campaign\",\"slug\":\"activecampaign-wordpress-plugin\",\"version\":\"1.05\",\"new_version\":\"1.05\",\"location\":[\"fp.strategy11.com\\/releases\\/activecampaign\\/formidable-activecampaign-1.05.zip\"],\"excerpt\":\"Add contacts to any ActiveCampaign list from your WordPress forms.\",\"id\":20790298,\"released\":\"2018-07-05 00:00:00\",\"categories\":[\"Elite\",\"Marketing\"],\"docs\":\"https:\\/\\/formidableforms.com\\/knowledgebase\\/activecampaign-forms\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/activecampaign-wordpress-plugin\\/\",\"changelog\":\"\",\"plugin\":\"formidable-activecampaign\\/formidable-activecampaign.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"337527\":{\"title\":\"Authorize.net AIM\",\"name\":\"Authorize.net AIM\",\"slug\":\"authorize-net-aim\",\"version\":\"2.01\",\"new_version\":\"2.01\",\"location\":[\"fp.strategy11.com\\/releases\\/authorize-net\\/formidable-authorize-net-2.01.zip\"],\"excerpt\":\"Accept one-time payments directly on your site, using Authorize.net AIM.\",\"id\":337527,\"released\":\"2016-04-29 00:00:00\",\"categories\":[\"Ecommerce\",\"Elite\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/authorize-net-aim\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/authorize-net-aim\\/\",\"changelog\":\"<h4>v2.01 - March 18, 2019<\\/h4>\\n<ul>\\n<li>Fix: Increase the timeout for creating the payment on Authorize.net in order to prevent false failures.<\\/li>\\n<li>Save the full API response in the log instead of only the body of the response for more helpful debugging messages.<\\/li>\\n<\\/ul>\\n<h4>v2.0 - February 25, 2019<\\/h4>\\n<ul>\\n<li>Requires Formidable 3.0+ and WordPress 4.7+<\\/li>\\n<li>New: Remove the Authorize.net SDK. This greatly reduces the size of the plugin, and resolves PHP 7.0+ compatibility issues.<\\/li>\\n<li>New: Use Webhooks to get notifications from Authorize.net to a REST endpoint when a payment status changes. This includes refunds, voids, and completed transactions. A webhook will be automatically created when the Formidable -&gt; Global settings page is saved.<\\/li>\\n<li>New: Added signature key to Global settings page and removed the Silent Post url. This is used to verify any incoming webhooks.<\\/li>\\n<li>New: Don\'t use MD5 verification, but meet the new sha512 requirement instead.<\\/li>\\n<li>New: Add Bangladeshi Taka currency<\\/li>\\n<li>Fix: Replace usage of deprecated file and functions from Formidable<\\/li>\\n<li>Fix: Added escaping for translatable strings.<\\/li>\\n<\\/ul>\\n<h4>v1.02 - August 31, 2018<\\/h4>\\n<ul>\\n<li>New: Delete entries that don\'t pass credit card validation<\\/li>\\n<li>New: Process shortcodes in the payment amount, description, and actions after payment. This includes default values, field values, and regular WP shortcodes.<\\/li>\\n<li>New: Allow the api key to be overridden with constants. The Authorize account can be set with AUTHORIZENET_TRANSACTION_KEY and AUTHORIZENET_API_LOGIN_ID<\\/li>\\n<li>New: Disable live mode for non-ssl sites. Show the settings and always allow test mode.<\\/li>\\n<li>New: Add option to register user after successful payment<\\/li>\\n<li>New: Add payment triggers to api action<\\/li>\\n<li>New: Add receipt ID shortcode<\\/li>\\n<li>New: Add Pakistani rupee, Chinese Renminbi Yuan, South African Rand, and Sri Lankan Rupee to currency options<\\/li>\\n<li>New: If PayPal is also installed, show the PayPal payment completed status<\\/li>\\n<li>New: Add frm_pay_[payment type]_sidebar hook for adding content to the sidebar of a single payment<\\/li>\\n<li>Fix: Include the customer info with an echeck. Show the address fields in eCheck settings. When only eCheck is selected, the extra fields were not set to show or send to Authnet<\\/li>\\n<li>Fix: Replace the included SSL cert since it is causing errors on some servers<\\/li>\\n<li>Fix: Filter description shortcodes on subscriptions page<\\/li>\\n<li>Fix: Create the post (if applicable) before fields are updated<\\/li>\\n<li>Fix: Use credit card icon instead of Stripe. This will show in 3.0.<\\/li>\\n<li>Fix: Update the gateway field for better 3.0 compatibility<\\/li>\\n<\\/ul>\\n<h4>v1.01 - December 12, 2016<\\/h4>\\n<ul>\\n<li>Prevent errors when Formidable is deactivated<\\/li>\\n<li>Add frm_authnet_invoice_num hook for setting the invoice number<\\/li>\\n<li>Add a link to view the subscriptions<\\/li>\\n<li>If the subscription has failed &gt; 3 times, set it to canceled<\\/li>\\n<li>Show more error messages to a user when the payment fails<\\/li>\\n<li>Remove plugin header for nested plugin to prevent error message when activating from the plugins upload page<\\/li>\\n<li>Use the correct currency for the total on the entry sidebar instead of defaulting to USD<\\/li>\\n<li>Allow field shortcodes in description<\\/li>\\n<li>Add Indian Rupee to currency options<\\/li>\\n<li>Add table headings and subscription description to the frm-subscriptions shortcode<\\/li>\\n<li>Prevent field ids from being used as the amount<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-authorize-net\\/formidable-authorize-net.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"168468\":{\"title\":\"AWeber\",\"name\":\"AWeber\",\"slug\":\"aweber\",\"version\":\"2.01\",\"new_version\":\"2.01\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-aweber\\/formidable-aweber-2.01.zip\"],\"excerpt\":\"AWeber is a powerful email marketing service. Subscribe contacts to an AWeber mailing list when they submit your WordPress contact forms.\",\"id\":168468,\"released\":\"2013-11-26 00:00:00\",\"categories\":[\"Creator\",\"Marketing\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-aweber\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/aweber\\/\",\"changelog\":\"<h4>v2.01 - February 4, 2016<\\/h4>\\n<ul>\\n<li>Make sure the update notice doesn\'t show if the plugin is up to date<\\/li>\\n<\\/ul>\\n<h4>v2.0 - January 15, 2016<\\/h4>\\n<ul>\\n<li>Move the AWeber settings into a form action<\\/li>\\n<li>Make the plugin translatable<\\/li>\\n<li>Now it works with the free version of Formidable<\\/li>\\n<\\/ul>\\n<h4>v1.0.03 - November 13, 2015<\\/h4>\\n<ul>\\n<li>Prevent errors when Formidable is disabled<\\/li>\\n<\\/ul>\\n<h4>v1.0.02 - October 16, 2015<\\/h4>\\n<ul>\\n<li>Get updates from FormidablePro.com<\\/li>\\n<\\/ul>\\n<h4>v1.0.01 - December 2, 2013<\\/h4>\\n<ul>\\n<li>Fixed setting up lists when MailChimp add-on is not installed.<\\/li>\\n<li>Remove a hook to prevent settings from loading twice in recent versions of Formidable<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-aweber\\/formidable-aweber.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"168463\":{\"title\":\"Bootstrap\",\"name\":\"Bootstrap\",\"slug\":\"bootstrap\",\"version\":\"1.02.02\",\"new_version\":\"1.02.02\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-bootstrap\\/formidable-bootstrap-1.02.02.zip\"],\"excerpt\":\"Instantly add Bootstrap styling to all your Formidable forms.\",\"id\":168463,\"released\":\"2014-08-05 00:00:00\",\"categories\":[\"Creator\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-bootstrap\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/bootstrap\\/\",\"changelog\":\"<h4>v1.02.02 - October 9, 2017<\\/h4>\\n<ul>\\n<li>Enhancement: Allow prepend and append options with dropdowns.<\\/li>\\n<\\/ul>\\n<h4>v1.02.01 - March 8, 2017<\\/h4>\\n<ul>\\n<li>Enhancement: Update Bootstrap version to 3.3.7.<\\/li>\\n<li>Enhancement: Add prepend and append options to Lookup &gt; Text fields<\\/li>\\n<\\/ul>\\n<h4>v1.02 - December 13, 2016<\\/h4>\\n<ul>\\n<li>Enhancement: Update Bootstrap version to 3.3.6.<\\/li>\\n<li>Fix: Make sure modified [input] tag works well with Bootstrap append.<\\/li>\\n<li>Fix: Add Bootstrap ID so automatic updates work in the future.<\\/li>\\n<li>Fix: Make sure Lookup checkbox and radio fields look nice.<\\/li>\\n<\\/ul>\\n<h4>v1.01.04 - November 13, 2015<\\/h4>\\n<ul>\\n<li>Prevent errors with Formidable disabled<\\/li>\\n<\\/ul>\\n<h4>v1.01.03 - October 16, 2015<\\/h4>\\n<ul>\\n<li>Get updates from FormidablePro.com<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-bootstrap\\/formidable-bootstrap.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"185013\":{\"title\":\"Bootstrap Modal\",\"name\":\"Bootstrap Modal\",\"slug\":\"bootstrap-modal\",\"version\":\"2.0\",\"new_version\":\"2.0\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-modal\\/formidable-modal-2.0.zip\"],\"excerpt\":\"Open forms, views, other shortcodes, or sections of content in a Bootstrap popup.\",\"id\":185013,\"released\":\"2015-08-26 00:00:00\",\"categories\":[\"Creator\",\"Strategy11\"],\"docs\":\"https:\\/\\/formidableforms.com\\/knowledgebase\\/bootstrap-modal\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/bootstrap-modal\\/\",\"changelog\":\"<h4>v2.0 - August 21, 2017<\\/h4>\\n<ul>\\n<li>Add a new shortcode format for more flexibility. Now you can include whatever you\'d like in the modal.<br \\/>\\n[ frmmodal-content]content here[\\/frmmodal-content]<\\/li>\\n<li>Add frm_modal_shortcode action hook. This is for triggering external scripts that are loaded too late when they aren\'t triggered until the footer.<\\/li>\\n<li>Add modal_class shortcode option. This will add a class to the generated modal.<\\/li>\\n<\\/ul>\\n<h4>v1.04 - April 4, 2016<\\/h4>\\n<ul>\\n<li>Allow size=small or size=large to change the modal size<\\/li>\\n<li>Add modal_title parameter to the shortcode<\\/li>\\n<li>Make sure modal works when no forms are present on the page<\\/li>\\n<li>Fix plugin URI<\\/li>\\n<\\/ul>\\n<h4>v1.03 - January 18, 2016<\\/h4>\\n<ul>\\n<li>Make sure multiple modals on a page work correctly<\\/li>\\n<\\/ul>\\n<h4>v1.02 - December 17, 2015<\\/h4>\\n<ul>\\n<li>Show an icon to close the modal<\\/li>\\n<li>Allow any shortcode to be used for the modal content. For example, use [ frmmodal type=\\\"frm-login\\\" label=\\\"Login\\\"] to show a login form when the registration plugin is active.<\\/li>\\n<li>When the license number is saved, make sure it\'s for the correct plugin<\\/li>\\n<\\/ul>\\n<h4>v1.01 - November 24, 2015<\\/h4>\\n<ul>\\n<li>Allow classes to be added to the modal link. [ frmmodal id=5 label=\\\"click here\\\" class=\\\"your classes here\\\"]<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-modal\\/formidable-modal.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"20891694\":{\"title\":\"Campaign Monitor\",\"name\":\"Campaign Monitor\",\"slug\":\"campaign-monitor\",\"version\":\"1.03\",\"new_version\":\"1.03\",\"location\":[\"fp.strategy11.com\\/releases\\/campaign-monitor\\/formidable-campaignmonitor-1.03.zip\"],\"excerpt\":\"Save time by automatically sending leads from WordPress forms to Campaign Monitor.\",\"id\":20891694,\"released\":\"2019-06-17 00:00:00\",\"categories\":[\"Business\",\"Marketing\"],\"docs\":\"\\/knowledgebase\\/campaign-monitor-forms\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/campaign-monitor\\/\",\"changelog\":\"\",\"plugin\":\"formidable-campaignmonitor\\/formidable-campaignmonitor.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"20826884\":{\"title\":\"Constant Contact\",\"name\":\"Constant Contact\",\"slug\":\"constant-contact\",\"version\":\"1.02\",\"new_version\":\"1.02\",\"location\":[\"fp.strategy11.com\\/releases\\/constant-contact\\/formidable-constantcontact-1.02.zip\"],\"excerpt\":\"Setup WordPress forms to create leads automatically in Constant Contact. Just select a list and match up form fields.\",\"id\":20826884,\"released\":\"2018-10-15 00:00:00\",\"categories\":[\"Business\",\"Marketing\"],\"docs\":\"\\/knowledgebase\\/constant-contact-forms\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/constant-contact\\/\",\"changelog\":\"<h4>v1.02 - December 12, 2019<\\/h4>\\n<ul>\\n<li>New: Make authenticating easier<\\/li>\\n<li>Show more helpful error messages in the global settings and in the form action<\\/li>\\n<li>Use icon instead of image for form action<\\/li>\\n<li>Update form action layout to match v4.0<\\/li>\\n<li>Remove debug mode in favor of logging<\\/li>\\n<li>Fix: When different forms are used to update a contact, only the most recent info was saved and previous values were removed (ie custom fields, selected lists)<\\/li>\\n<li>Fix: If a contact was deleted in Constant Contact, it was causing a failure when updating the contact from Formidable<\\/li>\\n<\\/ul>\\n<h4>v1.01 - October 31, 2018<\\/h4>\\n<ul>\\n<li>Fix: On first install, the Global settings page was not loaded correctly<\\/li>\\n<li>Fix: Allow the debug mode checkbox to be unchecked<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-constantcontact\\/formidable-constantcontact.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"20247260\":{\"title\":\"Datepicker Options\",\"name\":\"Datepicker Options\",\"slug\":\"datepicker-options\",\"version\":\"1.0.04\",\"new_version\":\"1.0.04\",\"location\":[\"fp.strategy11.com\\/releases\\/dates\\/formidable-dates-1.0.04.zip\"],\"excerpt\":\"Add more options to date fields in your forms for so only the dates you choose can be chosen.\",\"id\":20247260,\"released\":\"2018-07-30 00:00:00\",\"categories\":[\"Business\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/datepicker-options\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/datepicker-options\\/\",\"changelog\":\"<h4>v1.0.04 - June 10, 2019<\\/h4>\\n<ul>\\n<li>Fix: Inline datepickers were selecting a default date that wasn\'t allowed with some configurations<\\/li>\\n<li>Fix: Settings to select days of the week weren\'t appearing up in 4.0.<\\/li>\\n<li>Cleanup settings for 4.0<\\/li>\\n<\\/ul>\\n<h4>v1.0.03 - March 18, 2019<\\/h4>\\n<ul>\\n<li>Add minimized js and add pot file.<\\/li>\\n<li>Fix the datepicker appearance in backend settings when the front-end Formidable css is not loaded.<\\/li>\\n<li>Fix error when Formidable Forms is disabled.<\\/li>\\n<\\/ul>\\n<h4>v1.0.02 - October 15, 2018<\\/h4>\\n<ul>\\n<li>Fix: Exceptions couldn\'t be added in repeating date fields<\\/li>\\n<li>Fix: Show inline datepickers when creating or editing an entry on the backend<\\/li>\\n<li>Fix: Inline datepickers were always defaulting to today\'s date<\\/li>\\n<\\/ul>\\n<h4>v1.0.01 - August 6, 2018<\\/h4>\\n<ul>\\n<li>Fix: Load the datepicker javascript when SCRIPT_DEBUG is not enabled<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-dates\\/formidable-dates.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"20897348\":{\"title\":\"Export View to CSV\",\"name\":\"Export View to CSV\",\"slug\":\"export-view\",\"version\":\"1.01\",\"new_version\":\"1.01\",\"location\":[\"fp.strategy11.com\\/releases\\/export-view\\/formidable-export-view-1.01.zip\"],\"excerpt\":\"Easily create custom CSV files and allow users to export their data from the front-end of your site.\",\"id\":20897348,\"released\":\"2019-08-01 00:00:00\",\"categories\":[\"Business\",\"Strategy11\"],\"docs\":\"https:\\/\\/formidableforms.com\\/knowledgebase\\/table-view-to-csv\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/export-view\\/\",\"changelog\":\"<p>No Changes Found<\\/p>\\n\",\"plugin\":\"formidable-export-view\\/formidable-export-view.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"326042\":{\"title\":\"Form Action Automation\",\"name\":\"Form Action Automation\",\"slug\":\"autoresponder\",\"version\":\"2.03\",\"new_version\":\"2.03\",\"location\":[\"fp.strategy11.com\\/releases\\/autoresponder\\/formidable-autoresponder-2.03.zip\"],\"excerpt\":\"Schedule email notifications, SMS messages, and API actions.\",\"id\":326042,\"released\":\"2016-09-21 00:00:00\",\"categories\":[\"Elite\",\"Marketing\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/schedule-autoresponder\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/autoresponder\\/\",\"changelog\":\"<h4>v2.03 - May 30, 2019<\\/h4>\\n<ul>\\n<li>Update the settings layout a bit for Formidable v4.0<\\/li>\\n<li>Code: Add automation for plugin releases<\\/li>\\n<li>Code: Update for better WordPress code styling<\\/li>\\n<\\/ul>\\n<h4>v2.02 - November 7, 2018<\\/h4>\\n<ul>\\n<li>New: Allow user registration to be scheduled with the automation settings<\\/li>\\n<li>Fix: When a form action is disabled, don\'t trigger it with the automation<\\/li>\\n<\\/ul>\\n<h4>v2.01 - August 1, 2018<\\/h4>\\n<ul>\\n<li>Fix: Replace __DIR__ for php 5.2 support<\\/li>\\n<li>Fix: Prevent php warning with empty dates<\\/li>\\n<li>Fix: Switch to non-deprecated save_settings function<\\/li>\\n<li>A bunch of codestyling changes, messages for translators, and escape translated strings<\\/li>\\n<\\/ul>\\n<h4>v2.0 - September 18, 2017<\\/h4>\\n<ul>\\n<li>New: Trigger automation by date + time when time fields are included in the form<\\/li>\\n<li>Tweak: Add entry and action to frm_autoresponder_time hook<\\/li>\\n<li>Tweak: Change naming to Automation instead of Autoresponder to indicate expanded functionality<\\/li>\\n<li>Tweak: Large refactoring in the code behind the scenes<\\/li>\\n<li>Fix: Show the queued time in the current site timezone<\\/li>\\n<li>Fix: Remove queued events when an entry is deleted<\\/li>\\n<\\/ul>\\n<h4>v1.04 - October 12, 2016<\\/h4>\\n<ul>\\n<li>Add logic to stop scheduled events when the form action logic is not met<\\/li>\\n<li>Automatically update the queue times when an entry is updated<\\/li>\\n<li>Only show countdown on the debug queue if the trigger will be happening within the next 3 days<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-autoresponder\\/formidable-autoresponder.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"168072\":{\"title\":\"Formidable API\",\"name\":\"Formidable API\",\"slug\":\"formidable-api\",\"version\":\"1.08\",\"new_version\":\"1.08\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-api\\/formidable-api-1.08.zip\"],\"excerpt\":\"Add a full forms API for forms, form fields, views, and entries. Then send submissions to other sites with REST APIs.\",\"id\":168072,\"released\":\"2016-06-08 00:00:00\",\"categories\":[\"Business\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-api\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/formidable-api\\/\",\"changelog\":\"<h4>v1.08 - May 27, 2019<\\/h4>\\n<ul>\\n<li>New: Add exclude_script and exclude_style parameters to the frm-api shortcode for excluding specific styles and scripts.<\\/li>\\n<li>New: When using the frm-api shortcode, scripts included on the page will be automatically excluded to prevent duplication.<\\/li>\\n<li>Don\'t allow GET access to field routes for those who don\'t have access to view forms on the back end.<\\/li>\\n<li>Switch shortcodes in data settings when form is duplicated.<\\/li>\\n<li>Fix: Javascript was not included with views, so shortcodes like frm-entry-update-field did not respond.<\\/li>\\n<li>Fix: Clicking the + row button quickly was creating duplicate rows.<\\/li>\\n<li>Fix: The ... was missing in 4.0 for newly added data rows. This fix requires Formidable v4.0.02<\\/li>\\n<\\/ul>\\n<h4>v1.07 - December 26, 2018<\\/h4>\\n<ul>\\n<li>Fix: multiple files were not correctly attached to the created entry<\\/li>\\n<li>Fix: when a file was created via the API, it was being duplicated on the receiving end<\\/li>\\n<li>Fix: When the API plugin is active, and Formidable is not, there was an error when creating a new page with the new WP editor<\\/li>\\n<\\/ul>\\n<h4>v1.06 - October 8, 2018<\\/h4>\\n<ul>\\n<li>New: Add image importing via the REST API. Now an image can be uploaded from another site when the URL is included in the API request.<\\/li>\\n<li>Fix: Prevent CORS error with ajax calls. This resolves issues with double submissions, redirecting with validation errors, and adding rows in a repeater.<\\/li>\\n<li>Fix: The returned form object was different after a form was edited than after create or get.<\\/li>\\n<\\/ul>\\n<h4>v1.05.01 - August 22, 2018<\\/h4>\\n<ul>\\n<li>Fix issue with file fields not saving the received value<\\/li>\\n<\\/ul>\\n<h4>v1.05 - July 27, 2018<\\/h4>\\n<ul>\\n<li>New: Add start_date and end_date parameters to filter the route to get entries<\\/li>\\n<li>Fix: Add better functionality to the search parameter in the route to get entries<\\/li>\\n<li>Fix: Allow the registration validation to trigger during API call<\\/li>\\n<li>Fix: reCaptcha was returning an error when creating an entry<\\/li>\\n<li>Fix: Creating an entry that included dynamic fields was causing a fatal error by using deprecated functions<\\/li>\\n<li>Fix: The route to create a form wasn\'t working correctly<\\/li>\\n<li>Remove old sslverify =&gt; false lines since they are no longer recommended<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-api\\/formidable-api.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"20834175\":{\"title\":\"Formidable Payments\",\"name\":\"Formidable Payments\",\"slug\":\"formidable-payments\",\"version\":\"1.14\",\"new_version\":\"1.14\",\"location\":[\"fp.strategy11.com\\/releases\\/payments\\/formidable-payments-1.14.zip\"],\"excerpt\":\"\",\"id\":20834175,\"released\":\"2018-11-06 12:08:25\",\"categories\":[],\"docs\":\"\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/formidable-payments\\/\",\"changelog\":\"\",\"plugin\":\"\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"93790\":{\"title\":\"Formidable Pro\",\"name\":\"Formidable Pro\",\"slug\":\"formidable-pro\",\"version\":\"4.04.03\",\"new_version\":\"4.04.03\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-pro-4.04.03.zip\"],\"excerpt\":\"\",\"id\":93790,\"released\":\"2010-02-01 16:27:26\",\"categories\":[\"Personal\",\"Strategy11\"],\"docs\":\"\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/formidable-pro\\/\",\"changelog\":\"<h4>v4.04.03 - April 23, 2020<\\/h4>\\n<ul>\\n<li>While a file is uploading, disable the Save Draft link too.<\\/li>\\n<li>Added import button on the entries listing page.<\\/li>\\n<li>Adjust the slider styling to make it match the toggle.<\\/li>\\n<li>Improve performance of conditional logic for pricing fields.<\\/li>\\n<li>Fix: Account for conditional logic for skipped pages and hidden sections when calculating totals for pricing fields.<\\/li>\\n<li>Fix: If a dropdown field without a blank option is used in a calculation, correctly get and set the value based on conditional logic.<\\/li>\\n<li>Fix: Required multiple file upload fields were being allowed empty.<\\/li>\\n<li>Fix: Save toggle fields as a single value rather than serialized array.<\\/li>\\n<li>Fix: When truncating a string in a view, don\'t remove extra occurrences of the displayed string.<\\/li>\\n<li>Fix: Don\'t load Formidable scripts on the form settings page when a view is included as a default value in a field.<\\/li>\\n<\\/ul>\\n<h4>v4.04.02 - April 8, 2020<\\/h4>\\n<ul>\\n<li>Tweak: Include the required indicator when field label is the placeholder.<\\/li>\\n<li>New hooks: frm_filter_admin_entries and frm_admin_search_options. These hooks add options to search list entries in custom ways.<\\/li>\\n<li>Include the CSS Layout Classes option in Total fields.<\\/li>\\n<li>Fix: Don\'t require x_order to be included in the frm-graph shortcode to show field options with no responses.<\\/li>\\n<li>Fix: When an \\\"other\\\" box is checked, always require a value to be entered even when another box is checked.<\\/li>\\n<li>Fix: Dependent taxonomies were not getting checked when not on the first page.<\\/li>\\n<li>Fix: With some date formats, date fields inside repeaters were showing the current date in the summary instead of the selected date.<\\/li>\\n<li>Fix: In some cases with conditional logic, the first row in a repeater wasn\'t included in the summary.<\\/li>\\n<li>Auto deactivate Pro after uninstall to prevent tables from being recreated.<\\/li>\\n<li>Fix: Another update for PHP 7.4.<\\/li>\\n<\\/ul>\\n<h4>v4.04.01 - March 2, 2020<\\/h4>\\n<ul>\\n<li>New: Use checkboxes in quantity field settings for selecting the product. This allows for better product variations because the quantity field can be applies to multiple options.<\\/li>\\n<li>New: Include the step option for quantity fields to allow for options like \\\"1.5 hours\\\".<\\/li>\\n<li>Fix: Allow &lt;= in field calculations.<\\/li>\\n<li>Fix: Don\'t allow a negative quantity in pricing fields.<\\/li>\\n<li>Fix: When a number quantity outside the allowed range is used, force the max and min settings.<\\/li>\\n<\\/ul>\\n<h4>v4.04 - February 4, 2020<\\/h4>\\n<ul>\\n<li>New: Pricing fields have been added with a way to use products and quantities, set the currency, and automatically total up the products.<\\/li>\\n<li>New: When a WordPress parameter is added as the View detail slug or in the filters, show a warning to avoid unintended side effects.<\\/li>\\n<\\/ul>\\n<h4>v4.03.07 - January 9, 2020<\\/h4>\\n<ul>\\n<li>Project delight: Add tooltip icons in admin area for consistency instead of using the option label in some cases.<\\/li>\\n<li>Project Delight: Adjust the process before a section is deleted to reinforce the warning about deleting all child fields.<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-pro\\/formidable-pro.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-772x250.png\"},\"beta\":{\"version\":\"4.04.03\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-pro-4.04.03.zip\"],\"plugin\":\"formidable\\/formidable.php\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"20896934\":{\"title\":\"Formidable Pro Basic\",\"name\":\"Formidable Pro Basic\",\"slug\":\"formidable-basic\",\"version\":\"\",\"new_version\":\"\",\"location\":[],\"excerpt\":\"\",\"id\":20896934,\"released\":\"2019-07-22 09:03:39\",\"categories\":[\"Strategy11\"],\"docs\":\"\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/formidable-basic\\/\",\"changelog\":\"\",\"plugin\":\"\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"19366995\":{\"title\":\"Formidable Pro Business Package\",\"name\":\"Formidable Pro Business Package\",\"slug\":\"formidable-pro-small-business-package\",\"version\":\"\",\"new_version\":\"\",\"location\":[],\"excerpt\":\"\",\"id\":19366995,\"released\":\"2017-09-01 12:09:09\",\"categories\":[\"Strategy11\"],\"docs\":\"\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/formidable-pro-small-business-package\\/\",\"changelog\":\"\",\"plugin\":\"\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"19367001\":{\"title\":\"Formidable Pro Creator Package\",\"name\":\"Formidable Pro Creator Package\",\"slug\":\"formidable-pro-professional-package\",\"version\":\"\",\"new_version\":\"\",\"location\":[],\"excerpt\":\"\",\"id\":19367001,\"released\":\"2017-09-01 12:10:24\",\"categories\":[\"Strategy11\"],\"docs\":\"\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/formidable-pro-professional-package\\/\",\"changelog\":\"\",\"plugin\":\"\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"19366992\":{\"title\":\"Formidable Pro Elite Package\",\"name\":\"Formidable Pro Elite Package\",\"slug\":\"formidable-pro-enterprise-package\",\"version\":\"\",\"new_version\":\"\",\"location\":[],\"excerpt\":\"\",\"id\":19366992,\"released\":\"2017-09-01 12:09:38\",\"categories\":[\"Strategy11\"],\"docs\":\"\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/formidable-pro-enterprise-package\\/\",\"changelog\":\"\",\"plugin\":\"\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"19367654\":{\"title\":\"Formidable Pro Single Site\",\"name\":\"Formidable Pro Single Site\",\"slug\":\"formidable-pro-single-site\",\"version\":\"\",\"new_version\":\"\",\"location\":[],\"excerpt\":\"\",\"id\":19367654,\"released\":\"2017-09-01 13:36:16\",\"categories\":[\"Strategy11\"],\"docs\":\"\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/formidable-pro-single-site\\/\",\"changelog\":\"\",\"plugin\":\"\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"20813244\":{\"title\":\"GetResponse\",\"name\":\"GetResponse\",\"slug\":\"getresponse-wordpress-plugin\",\"version\":\"1.04\",\"new_version\":\"1.04\",\"location\":[\"fp.strategy11.com\\/releases\\/getresponse\\/formidable-getresponse-1.04.zip\"],\"excerpt\":\"Collect leads in WordPress forms and automatically add them in GetResponse. Then trigger automatic emails and other GetResponse marketing automations.\",\"id\":20813244,\"released\":\"2018-09-06 00:00:00\",\"categories\":[\"Business\",\"Marketing\"],\"docs\":\"https:\\/\\/formidableforms.com\\/knowledgebase\\/getresponse-forms\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/getresponse-wordpress-plugin\\/\",\"changelog\":\"<h4>v1.04 - October 2, 2019<\\/h4>\\n<ul>\\n<li>Allow 0 for the cycle start day<\\/li>\\n<li>Show more helpful messages in the form action if the GetResponse lists cannot be fetched<\\/li>\\n<li>Update the form action icon for 4.0<\\/li>\\n<li>Remove the debug mode option and use the Logging plugin instead<\\/li>\\n<li>Load all custom fields right away since they aren\'t different for each list. Also don\'t hide the custom fields when a list changes.<\\/li>\\n<li>Prevent error with Formidable disabled<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-getresponse\\/formidable-getresponse.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"180495\":{\"title\":\"Highrise\",\"name\":\"Highrise\",\"slug\":\"highrise\",\"version\":\"1.06\",\"new_version\":\"1.06\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-highrise\\/formidable-highrise-1.06.zip\"],\"excerpt\":\"Capture leads in your WordPress contact forms, and save them in your Highrise CRM account too.\",\"id\":180495,\"released\":\"2013-12-12 00:00:00\",\"categories\":[\"Creator\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-highrise\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/highrise\\/\",\"changelog\":\"<h4>v1.06 - February 29, 2016<\\/h4>\\n<ul>\\n<li>Send the custom fields correctly to Highrise<\\/li>\\n<\\/ul>\\n<h4>v1.05 - February 23, 2016<\\/h4>\\n<ul>\\n<li>Fix email field settings in the Highrise action<\\/li>\\n<li>Make sure the license key is a Highrise license<\\/li>\\n<\\/ul>\\n<h4>v1.04 - February 9, 2016<\\/h4>\\n<ul>\\n<li>Added options to separate out address fields. City, State, Zip, and Country can now be mapped separately.<\\/li>\\n<li>Fixed PHP7 warnings<\\/li>\\n<\\/ul>\\n<h4>v1.03 - December 10, 2015<\\/h4>\\n<ul>\\n<li>Make it compatible with the free version of Formidable<\\/li>\\n<\\/ul>\\n<h4>v1.02 - November 13, 2015<\\/h4>\\n<ul>\\n<li>Prevent error when Formidable is disabled<\\/li>\\n<li>Reduce duplication with initializing the api<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-highrise\\/formidable-highrise.php\",\"icons\":{\"1x\":\"https:\\/\\/formidableforms.com\\/wp-content\\/uploads\\/2012\\/01\\/highrise.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"20811871\":{\"title\":\"HubSpot\",\"name\":\"HubSpot\",\"slug\":\"hubspot-wordpress\",\"version\":\"1.07\",\"new_version\":\"1.07\",\"location\":[\"fp.strategy11.com\\/releases\\/hubspot\\/formidable-hubspot-1.07.zip\"],\"excerpt\":\"Add contacts from your forms to HubSpot.\",\"id\":20811871,\"released\":\"2018-09-04 00:00:00\",\"categories\":[\"CRM\",\"Elite\"],\"docs\":\"https:\\/\\/formidableforms.com\\/knowledgebase\\/hubspot-forms\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/hubspot-wordpress\\/\",\"changelog\":\"<h4>v1.07 - January 22, 2020<\\/h4>\\n<ul>\\n<li>If the API key is missing or incorrect, allow it to be changed inside the form action<\\/li>\\n<li>Auto clear the cache when the api key is changed<\\/li>\\n<li>Include the option to set the lead source<\\/li>\\n<li>Include options from other property groups<\\/li>\\n<li>Add logging (with the Formidable Logs plugin) and remove debug mode<\\/li>\\n<li>Fix: In some cases, contacts were not being updated<\\/li>\\n<\\/ul>\\n<h4>v1.06 - February 11, 2019<\\/h4>\\n<ul>\\n<li>Allow contacts to be updated when the email address matches an existing contact<\\/li>\\n<li>Properly set and reset the cached API calls when getting properties for mapping<\\/li>\\n<li>Add a PO file<\\/li>\\n<li>Alphabetize the list of properties in the form action<\\/li>\\n<li>Include fields that may not be set as form fields in Hubspot, and exclude read only fields instead<\\/li>\\n<li>Remove the \'Default HubSpot Blog Email Subscription\' mapping to a value rather than a field in the form<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-hubspot\\/formidable-hubspot.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"170641\":{\"title\":\"Locations\",\"name\":\"Locations\",\"slug\":\"locations\",\"version\":\"2.02\",\"new_version\":\"2.02\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-locations\\/formidable-locations-2.02.zip\"],\"excerpt\":\"Populate fields with Countries, States\\/Provinces, U.S. Counties, and U.S. Cities. This data can then be used in dependent Data from Entries fields.\",\"id\":170641,\"released\":\"2014-06-21 00:00:00\",\"categories\":[\"Creator\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-locations\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/locations\\/\",\"changelog\":\"<h4>v2.02 - September 11, 2017<\\/h4>\\n<ul>\\n<li>Fix: Remove invalid city data.<\\/li>\\n<\\/ul>\\n<h4>v2.01 - May 10, 2016<\\/h4>\\n<ul>\\n<li>Switch to using Lookup fields<\\/li>\\n<li>Add a link to reset the locations data<\\/li>\\n<\\/ul>\\n<h4>v2.0 - September 14, 2015<\\/h4>\\n<ul>\\n<li>Add options to import specific location groups<\\/li>\\n<li>Import with Ajax instead of page reloading<\\/li>\\n<li>No more annoying banners<\\/li>\\n<\\/ul>\\n<h4>v2.0b1 - August 18, 2015<\\/h4>\\n<ul>\\n<li>Add options to import specific locations<\\/li>\\n<li> Import with Ajax instead of page reloading<\\/li>\\n<li>No more annoying banners<\\/li>\\n<\\/ul>\\n<h4>v1.0.02 - June 21, 2014<\\/h4>\\n<ul>\\n<li>Fix parse error affecting some users <\\/li>\\n<li>This now requires at least v1.07.05 of Formidable<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-locations\\/us_locations.php\",\"icons\":{\"1x\":\"https:\\/\\/formidableforms.com\\/wp-content\\/uploads\\/2013\\/04\\/locations.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"11927748\":{\"title\":\"Logs\",\"name\":\"Logs\",\"slug\":\"logs\",\"version\":\"1.0b1\",\"new_version\":\"1.0b1\",\"location\":[\"fp.strategy11.com\\/releases\\/logs\\/formidable-logs-1.0b1.zip\"],\"excerpt\":\"See your API requests along with their responses from add-ons including Zapier, Formidable API Webhooks, Salesforce and more.\",\"id\":11927748,\"released\":\"2016-12-19 00:00:00\",\"categories\":[\"Business\",\"Strategy11\"],\"docs\":\"\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/logs\\/\",\"changelog\":\"\",\"plugin\":\"formidable-logs\\/formidable-logs.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"170655\":{\"title\":\"MailChimp\",\"name\":\"MailChimp\",\"slug\":\"mailchimp\",\"version\":\"2.04\",\"new_version\":\"2.04\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-mailchimp\\/formidable-mailchimp-2.04.zip\"],\"excerpt\":\"Get on the path to more leads in minutes. Add and update leads in a MailChimp mailing list when a form is submitted.\",\"id\":170655,\"released\":\"2013-10-17 00:00:00\",\"categories\":[\"Creator\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-mailchimp\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/mailchimp\\/\",\"changelog\":\"<h4>v2.04 - July 12, 2019<\\/h4>\\n<ul>\\n<li>Add support for MailChimp tags<\\/li>\\n<li>Add double opt-in for unsubscribed users that are resubscribing<\\/li>\\n<li>Add German translation<\\/li>\\n<li>Log API requests in the Formidable Logs<\\/li>\\n<li>Update the styling for the MailChimp icon in the form actions to better match 4.0<\\/li>\\n<li>Clean up the MailChimp form action settings<\\/li>\\n<li>Clarify the groups settings to make them a bit more intuitive<\\/li>\\n<li>Allow text fields to be selected for groups<\\/li>\\n<li>Show error messages along with the \'no mailing lists found\' message for easier debugging<\\/li>\\n<\\/ul>\\n<h4>v2.03 - October 26, 2017<\\/h4>\\n<ul>\\n<li>New: Add option to unsubscribe users.<\\/li>\\n<li>Enhancement: Automatically update subscriber if their email exists in the selected MailChimp list.<\\/li>\\n<li>Enhancement: Remove files and functions deprecated since version 2.0.<\\/li>\\n<\\/ul>\\n<h4>v2.02 - June 12, 2017<\\/h4>\\n<ul>\\n<li>New: Allow Formidable Address fields to be mapped to MailChimp Address fields.<\\/li>\\n<li>Enhancement: Increase limit to 50 for group options retrieved.<\\/li>\\n<li>Enhancement: Initialize database on initial install.<\\/li>\\n<li>Enhancement: Add basic PHP error log messages for failed subscription.<\\/li>\\n<li>Fix: Don\'t generate PHP error if a timeout occurs when fetching group options.<\\/li>\\n<\\/ul>\\n<h4>v2.01 - March 30, 2017<\\/h4>\\n<ul>\\n<li>Enhancement: Increase merge and group limit to 30<\\/li>\\n<li>Fix: Improve date compatibility between MailChimp and Formidable<\\/li>\\n<li>Fix: Allow groups to be used when running free version of Formidable<\\/li>\\n<li>Fix: Store MailChimp settings as array, rather than object, in database<\\/li>\\n<\\/ul>\\n<h4>v2.0 - December 16, 2016<\\/h4>\\n<ul>\\n<li>Enhancement: Add pot file for more easily adding translations<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-mailchimp\\/formidable-mailchimp.php\",\"icons\":{\"1x\":\"https:\\/\\/formidableforms.com\\/wp-content\\/uploads\\/2013\\/04\\/mailchimp.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"20781560\":{\"title\":\"MailPoet Newsletters\",\"name\":\"MailPoet Newsletters\",\"slug\":\"mailpoet-newsletters\",\"version\":\"1.01\",\"new_version\":\"1.01\",\"location\":[\"fp.strategy11.com\\/releases\\/mailpoet\\/formidable-mailpoet-1.01.zip\"],\"excerpt\":\"Send WordPress newsletters from your own site with MailPoet. And use Formidable to for your newsletter signup forms.\",\"id\":20781560,\"released\":\"2018-06-05 00:00:00\",\"categories\":[\"Creator\",\"Marketing\"],\"docs\":\"https:\\/\\/formidableforms.com\\/knowledgebase\\/mailpoet-newsletter-signup-forms\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/mailpoet-newsletters\\/\",\"changelog\":\"<h4>v1.01 - September 14, 2018<\\/h4>\\n<ul>\\n<li>Fix error after form submit on some sites<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-mailpoet\\/formidable-mailpoet.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"163255\":{\"title\":\"Math Captcha\",\"name\":\"Math Captcha\",\"slug\":\"math-captcha\",\"version\":\"1.15\",\"new_version\":\"1.15\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-math-captcha\\/formidable-math-captcha-1.15.zip\"],\"excerpt\":\"\",\"id\":163255,\"released\":\"2015-10-12 14:00:35\",\"categories\":[],\"docs\":\"\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/math-captcha\\/\",\"changelog\":\"\",\"plugin\":\"\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"172715\":{\"title\":\"PayPal Basic\",\"name\":\"PayPal Basic\",\"slug\":\"paypal-standard-single-payments\",\"version\":\"3.08\",\"new_version\":\"3.08\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-paypal\\/formidable-paypal-3.08.zip\"],\"excerpt\":\"\",\"id\":172715,\"released\":\"2015-10-21 12:20:35\",\"categories\":[\"Ecommerce\",\"Strategy11\"],\"docs\":\"\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/paypal-standard-single-payments\\/\",\"changelog\":\"<h4>v3.02 - September 14, 2018<\\/h4>\\n<ul>\\n<li>Merge the older grandfathered PayPal addon with the updated version.<\\/li>\\n<\\/ul>\\n<h4>v2.04.07 - January 25, 2015<\\/h4>\\n<ul>\\n<li>Allow amounts with . for thousands and , for decimal. If a . is used in the decimal place for the amount when the currency uses a , make it work anyway<\\/li>\\n<li>Redirect to PayPal correctly without Pro<\\/li>\\n<li>Make sure email setting is trimmed before comparing<\\/li>\\n<li>Add download ID to make sure correct license is used<\\/li>\\n<\\/ul>\\n<h4>v2.04.06 - November 17, 2015<\\/h4>\\n<ul>\\n<li>Prevent errors when updating Formidable<\\/li>\\n<\\/ul>\\n<h4>v2.04.05<\\/h4>\\n<ul>\\n<li>Format decimals with . to allow float to work correctly<\\/li>\\n<li>Get updates from FormidablePro.com<\\/li>\\n<\\/ul>\\n<h4>v2.04.04<\\/h4>\\n<ul>\\n<li>Allow the amount to be included in the \\\"other\\\" option<\\/li>\\n<li>Modify the user-agent in the IPN verification to prevent errors from PayPal<\\/li>\\n<\\/ul>\\n<h4>v2.04.03<\\/h4>\\n<ul>\\n<li>Save the IPN parameters with the payment in the format that allows for multiple IPN notifications<\\/li>\\n<li>Fix sending users to Paypal when 2.x is installed, but the old settings haven\'t been moved to a form action<\\/li>\\n<li>Increased security related to XSS add_query_arg vulnerability<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"163257\":{\"title\":\"PayPal Standard\",\"name\":\"PayPal Standard\",\"slug\":\"paypal-standard\",\"version\":\"3.09\",\"new_version\":\"3.09\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-paypal\\/formidable-paypal-3.09.zip\"],\"excerpt\":\"Collect instant payments and recurring payments to automate your online business. Calculate a total and send customers on to PayPal.\",\"id\":163257,\"released\":\"2012-09-04 00:00:00\",\"categories\":[\"Business\",\"Ecommerce\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-paypal\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/paypal-standard\\/\",\"changelog\":\"<h4>v3.09 - July 30, 2019<\\/h4>\\n<ul>\\n<li>New: Account for tax when comparing amounts with the IPN<\\/li>\\n<li>Update form action icon and color<\\/li>\\n<li>Replace call to deprecated function with FrmFieldsHelper::get_user_display_name<\\/li>\\n<li>Requires Formidable v3.0+<\\/li>\\n<\\/ul>\\n<h4>v3.08 - November 18, 2017<\\/h4>\\n<ul>\\n<li>Allow field shortcodes in more payments settings so values can be set from the form: PayPal email, trial amount, repeat period, trial length. This also allows payments to go to other members on your site.<\\/li>\\n<li>Allow regular WordPress shortcodes and Formidable dynamic values (ie [email]) in addition to basic field shortcodes<\\/li>\\n<\\/ul>\\n<h4>v3.07 - November 10, 2017<\\/h4>\\n<ul>\\n<li>Process shortcodes in after payment settings. Allow entry values, default values, and other shortcodes.<\\/li>\\n<li>Clarify the payment trigger options with \\\"Successful PayPal payment\\\"<\\/li>\\n<\\/ul>\\n<h4>v3.06.01 - October 12, 2017<\\/h4>\\n<ul>\\n<li>New: Add Paypal triggers to API action.<\\/li>\\n<li>Fix: Show update notice for administrators only.<\\/li>\\n<li>Fix: Add missing close select tag in global settings.<\\/li>\\n<\\/ul>\\n<h4>v3.06 - December 9, 2016<\\/h4>\\n<ul>\\n<li>New: Add Paypal trigger to registration action for the registration 2.0 release<\\/li>\\n<li>Tweak: Don\'t add columns to entries when there is no form. This is in preparation for Formidable v2.03<\\/li>\\n<li>Tweak: If the log file setting is empty, fill it with the default setting<\\/li>\\n<li>Fix: Show correct values in the \\\"paid\\\" column on the Entries listing page if no payments have been made<\\/li>\\n<li>Fix: Add a fallback if invoice is missing from the IPN. This will help payments get matched up if the id of the payment doesn\'t get sent back to your site.<\\/li>\\n<li>Fix: Payment expiration dates are showing in 1970<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-paypal\\/formidable-paypal.php\",\"icons\":{\"1x\":\"https:\\/\\/formidableforms.com\\/wp-content\\/uploads\\/formidable\\/PayPal-form-action.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"209561\":{\"title\":\"Polylang\",\"name\":\"Polylang\",\"slug\":\"polylang\",\"version\":\"1.07\",\"new_version\":\"1.07\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-polylang\\/formidable-polylang-1.07.zip\"],\"excerpt\":\"Create bilingual or multilingual forms with help from Polylang.\",\"id\":209561,\"released\":\"2016-01-22 00:00:00\",\"categories\":[\"Business\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-polylang\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/polylang\\/\",\"changelog\":\"<h4>v1.07 - February 8, 2018<\\/h4>\\n<ul>\\n<li>Add rootline titles to translation settings<\\/li>\\n<li>Make repeating fields translatable<\\/li>\\n<li>Fix error message when no languages have been added in Polylang<\\/li>\\n<\\/ul>\\n<h4>v1.06 - December 8, 2016<\\/h4>\\n<ul>\\n<li>Fix: Adjusted the way form strings are saved in wp_options table to resolve packet size error.<\\/li>\\n<\\/ul>\\n<h4>v1.05 - May 24, 2016<\\/h4>\\n<ul>\\n<li>Improve compatibility with Polylang 1.9+<\\/li>\\n<\\/ul>\\n<h4>v1.04 - February 11, 2016<\\/h4>\\n<ul>\\n<li>Translate Add and Remove buttons for repeating sections<\\/li>\\n<li>Clear original strings whenever a form is updated instead of only when the translation page is visited<\\/li>\\n<\\/ul>\\n<h4>v1.03 - February 2, 2016<\\/h4>\\n<ul>\\n<li>Show a more helpful message if Polylang isn\'t installed<\\/li>\\n<li>Translate values from confirmation fields<\\/li>\\n<li>Use the \\\"previous\\\" label from the settings instead of defaulting to \\\"Previous\\\"<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-polylang\\/frm-poly.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"20815759\":{\"title\":\"Quiz Maker\",\"name\":\"Quiz Maker\",\"slug\":\"quiz-maker\",\"version\":\"1.01\",\"new_version\":\"1.01\",\"location\":[\"fp.strategy11.com\\/releases\\/quiz\\/formidable-quizzes-1.01.zip\"],\"excerpt\":\"Turn your forms into automated quizzes. Add questions and submit the quiz key. Then all the grading is done for you.\",\"id\":20815759,\"released\":\"2018-09-13 00:00:00\",\"categories\":[\"Business\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/quiz-maker-forms\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/quiz-maker\\/\",\"changelog\":\"\",\"plugin\":\"formidable-quizzes\\/formidable-quizzes.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"20266559\":{\"title\":\"Salesforce\",\"name\":\"Salesforce\",\"slug\":\"salesforce\",\"version\":\"2.04\",\"new_version\":\"2.04\",\"location\":[\"fp.strategy11.com\\/releases\\/salesforce\\/formidable-salesforce-2.04.zip\"],\"excerpt\":\"Add new contacts and leads into your Salesforce CRM directly from the WordPress forms on your site.\",\"id\":20266559,\"released\":\"2018-05-31 00:00:00\",\"categories\":[\"CRM\",\"Elite\"],\"docs\":\"https:\\/\\/formidableforms.com\\/knowledgebase\\/salesforce-forms\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/salesforce\\/\",\"changelog\":\"<h4>v2.04 - December 10, 2019<\\/h4>\\n<ul>\\n<li>New: Show Salesforce Authentication errors on the global settings page<\\/li>\\n<li>Add icon in global settings<\\/li>\\n<li>Use font icon instead of image in form action<\\/li>\\n<li>Remove debug mode in favor of logging<\\/li>\\n<li>Tweak: Clear the settings cache with a link instead of ajax for more reliable cache clearing<\\/li>\\n<li>Fix: Updating data in Salesforce wasn\'t working correctly<\\/li>\\n<li>Fix: There was an error when Formidable was disabled<\\/li>\\n<\\/ul>\\n<h4>v2.03 - October 11, 2018<\\/h4>\\n<ul>\\n<li>New: Add option to update Salesforce records<\\/li>\\n<li>New: Add support for Salesforce Boolean fields<\\/li>\\n<li>Fix: Multiselect picklist fields weren\'t getting correct values from a checkbox<\\/li>\\n<li>Fix: Date fields set as a post field were sending the wrong date format<\\/li>\\n<li>Fix: Fatal error caused by date fields in certain formats<\\/li>\\n<\\/ul>\\n<h4>v2.02 - June 14, 2018<\\/h4>\\n<ul>\\n<li>Add API calls to <a href=\\\"https:\\/\\/formidableforms.com\\/features\\/api-logs\\/\\\">Logs plugin<\\/a><\\/li>\\n<li>Add more messages for debugging<\\/li>\\n<li>Fix issue with authenticating on an SSL site<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-salesforce\\/formidable-salesforce.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"163248\":{\"title\":\"Signature\",\"name\":\"Signature\",\"slug\":\"signature\",\"version\":\"2.03\",\"new_version\":\"2.03\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-signature\\/formidable-signature-2.03.zip\"],\"excerpt\":\"Add an electronic signature to your WordPress form. The visitor may write their signature with a trackpad\\/mouse or type it.\",\"id\":163248,\"released\":\"2013-03-04 00:00:00\",\"categories\":[\"Business\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-signature\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/signature\\/\",\"changelog\":\"<h4>v2.03 - September 24, 2019<\\/h4>\\n<ul>\\n<li>New: Make field labels translatable with WPML<\\/li>\\n<li>Switch back to frm font instead of Font Awesome to avoid conflicts and an external asset.<\\/li>\\n<li>Fix: Importing signatures in an entry wasn\'t working<\\/li>\\n<\\/ul>\\n<h4>v2.02 - January 30, 2019<\\/h4>\\n<ul>\\n<li>Fix: Show the signature correctly in views and emails when Pro is running<\\/li>\\n<\\/ul>\\n<h4>v2.01 - January 16, 2019<\\/h4>\\n<ul>\\n<li>New: Give the signature field a face lift and show the field in the builder<\\/li>\\n<li>New: Show the typed option by default when javascript fails instead of showing nothing<\\/li>\\n<li>New: Don\'t clear the typed box when switching tabs<\\/li>\\n<li>Fix: The signature wasn\'t showing correctly in an email<\\/li>\\n<li>Fix: The signature field wasn\'t appearing for in-place edit<\\/li>\\n<\\/ul>\\n<h4>v2.0 - January 14, 2019<\\/h4>\\n<ul>\\n<li>New: The signature value immediately creates the image when the signature is saved and saves the url of the image for easier display. On update, all previous signatures are updated to the new format saved in the database.<\\/li>\\n<li>New: Add signature support for ajax forms and repeating sections.<\\/li>\\n<li>New: Allow importing from URL and include signature URL in XML.<\\/li>\\n<li>New: Use the 3.0 field object for better forward compatibility and lower baseline memory.<\\/li>\\n<li>New: Requires Formidable 3.0+<\\/li>\\n<li>New: Combine scripts into one file, and don\'t load IE8 fallback script in all browsers.<\\/li>\\n<li>New: Keep drawn signature when switching pages and when there are form validation errors.<\\/li>\\n<li>New: Allow signature editing in single-page form until draft is submitted.<\\/li>\\n<li>Fix: Remove frm_email_value hook for newer versions of Formidable.<\\/li>\\n<li>Fix: Prevent error message when Formidable is disabled<\\/li>\\n<li>Fix: Show the signature image with https when needed<\\/li>\\n<li>Fix: The hide tabs options weren\'t saving since v3.0<\\/li>\\n<\\/ul>\\n<h4>v2.0b1 - December 7, 2017<\\/h4>\\n<ul>\\n<li>New: Add signature support with ajax forms and repeating sections<\\/li>\\n<li>New: Allow importing from URL and include signature URL in XML<\\/li>\\n<li>Fix: Keep drawn signature when switching pages.<\\/li>\\n<li>Fix: Keep drawn signature present when there are form errors.<\\/li>\\n<li>Fix: Allow signature editing until draft is submitted.<\\/li>\\n<li>Fix: Remove frm_email_value hook for newer versions of Formidable.<\\/li>\\n<li>Fix: Resolve error message when Formidable is disabled<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-signature\\/signature.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"310430\":{\"title\":\"Stripe\",\"name\":\"Stripe\",\"slug\":\"stripe\",\"version\":\"2.02\",\"new_version\":\"2.02\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-stripe\\/formidable-stripe-2.02.zip\"],\"excerpt\":\"Any Formidable forms on your site can accept credit card payments without users ever leaving your site.\",\"id\":310430,\"released\":\"2016-04-26 00:00:00\",\"categories\":[\"Ecommerce\",\"Elite\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/stripe\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/stripe\\/\",\"changelog\":\"<h4>v2.02 - March 9, 2020<\\/h4>\\n<ul>\\n<li>Update the Stripe library.<\\/li>\\n<li>New: Include the first and last name on a newly created customer.<\\/li>\\n<li>Fix: If a payment attempt failed after the entry was created, the credit card field was hidden and couldn\'t be updated.<\\/li>\\n<li>Fix: The previous button on the same page as a credit card field wasn\'t doing anything.<\\/li>\\n<li>Fix: Payments weren\'t being collected correctly in Internet Explorer.<\\/li>\\n<li>Fix: The refund button was returning a \\\"Failed\\\" message with some payments.<\\/li>\\n<li>Fix: When the font-family setting included incorrect characters, the credit card field wasn\'t displayed.<\\/li>\\n<li>Fix: Some error messages were being bypassed like strong password and invisible recaptcha.<\\/li>\\n<\\/ul>\\n<h4>v2.01 - September 19, 2019<\\/h4>\\n<ul>\\n<li>New: Hide the Zip\\/Postal code. It\'s not a great user experience, and isn\'t necessary.<\\/li>\\n<li>Fix: Trigger database install or upgrade when activated site wide in WP multisite.<\\/li>\\n<li>Fix: Prevent a fatal error with undefined function on some sites.<\\/li>\\n<li>Fix: Prevent issues with a subsequent payment when customer is deleted in Stripe.<\\/li>\\n<\\/ul>\\n<h4>v2.0 - September 9, 2019<\\/h4>\\n<ul>\\n<li>New: Add support for SCA, Stripe elements, and Secure 3d Payments. More styling for the new credit card field is coming with Formidable v4.02.04.<\\/li>\\n<li>New: Set the locale for the credit card field and instant error messages.<\\/li>\\n<li>New: Add option in payment form actions to authorize one-time payments without capture.<\\/li>\\n<li>New: Include an option to process one-time payments before the entry is created.<\\/li>\\n<li>New: Add minified javascript.<\\/li>\\n<li>Reverse the order of private and public keys to match Stripe account page.<\\/li>\\n<li>Hide settings in credit card field in forms with Stripe including sub field descriptions, placeholders, and options to save card info. These are no longer used with the more secure credit card field.<\\/li>\\n<li>Switch to Stripe js v3<\\/li>\\n<li>Add Bangladeshi Taka currency<\\/li>\\n<li>Fix: some API versions were returning an error when canceling a subscription.<\\/li>\\n<li>Update form action icon<\\/li>\\n<li>Remove incorrect edit link for a subscription<\\/li>\\n<li>Fix error with wrong class name \\\"FrmTransSubscriptionsController\\\"<\\/li>\\n<li>Remove usage of deprecated FrmDb class<\\/li>\\n<\\/ul>\\n<h4>v2.0b2 - September 7, 2019<\\/h4>\\n<ul>\\n<li>Add option in payment form actions to authorize one-time payments without capture.<\\/li>\\n<li>Set the locale for the credit card field including error messages.<\\/li>\\n<li>Reverse the order of private and public keys to match Stripe account page.<\\/li>\\n<li>Hide settings in credit card field in forms with Stripe including sub field descriptions, placeholders, and options to save card info.<\\/li>\\n<li>Fix: Prevent 403 errors on return from Secure 3D approval by generating the success message on return.<\\/li>\\n<\\/ul>\\n<h4>v2.0b - September 2, 2019<\\/h4>\\n<ul>\\n<li>New: Add support for SCA, Stripe elements, and Secure 3d Payments.<\\/li>\\n<li>New: Include an option to process one-time payments before the entry is created.<\\/li>\\n<li>New: Add minified javascript.<\\/li>\\n<li>Switch to Stripe js v3.<\\/li>\\n<li>Add Bangladeshi Taka currency<\\/li>\\n<li>Fix: some API versions were returning an error when canceling a subscription.<\\/li>\\n<li>Update form action icon<\\/li>\\n<li>Remove incorrect edit link for a subscription<\\/li>\\n<li>Fix error with wrong class name \\\"FrmTransSubscriptionsController\\\"<\\/li>\\n<li>Remove usage of deprecated FrmDb class<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-stripe\\/formidable-stripe.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"168460\":{\"title\":\"Twilio\",\"name\":\"Twilio\",\"slug\":\"twilio\",\"version\":\"1.08\",\"new_version\":\"1.08\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-twilio\\/formidable-twilio-1.08.zip\"],\"excerpt\":\"Allow users to text their votes for polls created by Formidable Forms, or send SMS notifications when entries are submitted or updated.\",\"id\":168460,\"released\":\"2014-03-10 00:00:00\",\"categories\":[\"Business\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/twilio-add-on\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/twilio\\/\",\"changelog\":\"<h4>v1.08 - January 16, 2017<\\/h4>\\n<ul>\\n<li>Improved: Removed deprecated instructions and screenshot.<\\/li>\\n<li>Improved: Removed deprecated valign attribute from table HTML.<\\/li>\\n<\\/ul>\\n<h4>v1.07 - November 1, 2016<\\/h4>\\n<ul>\\n<li>When an SMS message is received, run validation and respond with a text that includes any error messages<\\/li>\\n<li>When a text is received successfully, respond with the form success message, filtered list like a form does.<\\/li>\\n<li>Allow for the \\\"other\\\" fields to be filled from a text submission<\\/li>\\n<li>Check if license number is for correct plugin<\\/li>\\n<li>Don\'t try to send messages to a blank number<\\/li>\\n<\\/ul>\\n<h4>v1.06 - November 13, 2015<\\/h4>\\n<ul>\\n<li>Add frmtwlo_format_number filter for formatting the phone number before it\'s sent to Twilio<\\/li>\\n<li>Fix license activation<\\/li>\\n<\\/ul>\\n<h4>v1.05 - October 16, 2015<\\/h4>\\n<ul>\\n<li>Add frmtwlo_sms_response hook for changing the message in the text<\\/li>\\n<li>Allow for 8-digit numbers. +65 phone numbers were having trouble because we assumed they should be US numbers. Now if the number starts with a +, don\'t add the +1<\\/li>\\n<li>Get updates from FormidableForms.com<\\/li>\\n<\\/ul>\\n<h4>v1.04 - September 11, 2015<\\/h4>\\n<ul>\\n<li>Fix error with accepting votes<\\/li>\\n<li>Send a response when a text vote is received<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-twilio\\/formidable-twilio.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"168456\":{\"title\":\"Upload Importer\",\"name\":\"Upload Importer\",\"slug\":\"upload-importer\",\"version\":\"1.0.01\",\"new_version\":\"1.0.01\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-upload-importer\\/formidable-upload-importer-1.0.01.zip\"],\"excerpt\":\"\",\"id\":168456,\"released\":\"2015-10-16 17:05:47\",\"categories\":[\"Strategy11\"],\"docs\":\"\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/upload-importer\\/\",\"changelog\":\"<h4>v1.0.01<\\/h4>\\n<ul>\\n<li>Get updates from FormidablePro.com<\\/li>\\n<\\/ul>\\n<h4>v1.0<\\/h4>\\n<ul>\\n<li>Allow importing of multiple file uploads<\\/li>\\n<li>Replace deprecated mime_content_type with fileinfo<\\/li>\\n<li>Update auto-updating<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"173984\":{\"title\":\"User Registration\",\"name\":\"User Registration\",\"slug\":\"user-registration\",\"version\":\"2.02.02\",\"new_version\":\"2.02.02\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-registration\\/formidable-registration-2.02.02.zip\"],\"excerpt\":\"Give new users access to your site quickly and painlessly. Plus edit profiles and login from the front end.\",\"id\":173984,\"released\":\"2011-12-21 00:00:00\",\"categories\":[\"Business\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/user-registration\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/user-registration\\/\",\"changelog\":\"<h4>v2.02.02 - November 14, 2019<\\/h4>\\n<ul>\\n<li>New: Update for better 4.0 UI and setting layouts.<\\/li>\\n<li>New: Allow rich text fields in registration form action settings.<\\/li>\\n<li>New: Better multilingual support for global messages.<\\/li>\\n<li>New: Added frmreg_global_messages and frmreg_global_pages hooks.<\\/li>\\n<li>Fix: WPML compatibility - Language went back to default language after login.<\\/li>\\n<li>Fix: WPML compatibility - The email confirmation link didn\'t keep the selected language.<\\/li>\\n<li>Fix: Prevent errors when a registration form action is disabled.<\\/li>\\n<li>Fix: API calls were redirected to login page.<\\/li>\\n<li>Fix: Prevent a redirect with the reset password link. If a reset password page was selected in the global settings, the link pointed to the regular WP reset page which redirected.<\\/li>\\n<li>Fix: If custom parameters are included on the login redirect url, keep the correct encoding.<\\/li>\\n<li>Fix: Prevent a + in usernames in order to match WordPress. This was causing issues with auto login and email moderation.<\\/li>\\n<li>Fix: After a user was automatically logged in, wp_get_current_user() in other plugins wasn\'t correct.<\\/li>\\n<\\/ul>\\n<h4>v2.02.01 - September 26, 2018<\\/h4>\\n<ul>\\n<li>Allow user profile updating to be triggered after a successful PayPal payment<\\/li>\\n<li>Fix: Show a blank form to logged in users who have permission to create other users, even if they have an entry in the form<\\/li>\\n<li>New: Added frmreg_allow_edit hook for other plugins to set when profile editing is allowed<\\/li>\\n<\\/ul>\\n<h4>v2.02 - September 14, 2018<\\/h4>\\n<ul>\\n<li>New: Get the page source to check if the page includes the form specified in the global settings (login form, reset password, or registration). This allows for these forms to be included in a sidebar or footer without returning error messages when the global settings are saved.<\\/li>\\n<li>New: Add hooks to change selected pages: frmreg_login_page_id, frmreg_resetpass_page_id, frmreg_register_page_id<\\/li>\\n<li>New: Allow a subsite to be created by a logged in user<\\/li>\\n<li>Fix: Allow user creation via API call<\\/li>\\n<li>Fix: Allow either set password by email or user moderation, but not both<\\/li>\\n<li>Fix: Issue with losing parameters when redirecting for login<\\/li>\\n<li>Fix: The user ID field was defaulting to the current user on registration forms when it should be empty<\\/li>\\n<li>Fix: If an error message is included in the url for password reset, show it instead of an unknown error<\\/li>\\n<li>Fix: Update for WP 3.9 compatibility<\\/li>\\n<li>Fix: Update for deprecated functions: save_settings, FrmForm::get_id_by_key, FrmProFieldsHelper::get_displayed_file_html<\\/li>\\n<li>New: Add Chinese translations<\\/li>\\n<\\/ul>\\n<h4>v2.01.01 - October 26, 2017<\\/h4>\\n<ul>\\n<li>New: Add frmreg_after_create_subsite action.<\\/li>\\n<li>New: Add Norwegian translation.<\\/li>\\n<li>New: Add frmreg_login_error filter.<\\/li>\\n<li>Fix: Make sure show lost password and layout settings apply to widget.<\\/li>\\n<li>Fix: Convert special characters to standard characters in subdomain.<\\/li>\\n<\\/ul>\\n<h4>v2.01 - October 4, 2017<\\/h4>\\n<ul>\\n<li>New: Add global registration page setting.<\\/li>\\n<li>Enhancement: Allow radio and select fields for display name.<\\/li>\\n<li>Enhancement: Change field label in lost password form.<\\/li>\\n<li>Enhancement: Show hidden field type in Subdirectory or Subdomain settings.<\\/li>\\n<li>Enhancement: Always allow administrators to edit profiles through registration form.<\\/li>\\n<li>Enhancement: Redirect to login page if activation link is clicked again after activation.<\\/li>\\n<li>Fix: Show error messages in reset password form.<\\/li>\\n<li>Fix: Set logout label parameter correctly in shortcode builder.<\\/li>\\n<li>Fix: Passwords with special characters not saving as expected.<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-registration\\/formidable-registration.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"170649\":{\"title\":\"User Tracking\",\"name\":\"User Tracking\",\"slug\":\"user-tracking\",\"version\":\"1.0\",\"new_version\":\"1.0\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-user-tracking\\/formidable-user-tracking-1.0.zip\"],\"excerpt\":\"Track which pages a user visits prior to submitting a form.\",\"id\":170649,\"released\":\"2015-10-19 00:00:00\",\"categories\":[\"Creator\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-user-tracking\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/user-tracking\\/\",\"changelog\":\"<h4>v1.0 - August 25, 2016<\\/h4>\\n<ul>\\n<li>Save the tracking info before the email is sent<\\/li>\\n<li>Make sure license key is correct before saving<\\/li>\\n<\\/ul>\\n<h4>v1.0b3<\\/h4>\\n<ul>\\n<li>Get updates from FormidablePro.com<\\/li>\\n<\\/ul>\\n<h4>v1.0b2<\\/h4>\\n<ul>\\n<li>Skip tracking wp-admin\\/ajax.php<\\/li>\\n<li>Remove base url from page list<\\/li>\\n<li>Codestyling to meet WP standards<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-user-tracking\\/formidable-user-tracking.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"174006\":{\"title\":\"WooCommerce\",\"name\":\"WooCommerce\",\"slug\":\"woocommerce\",\"version\":\"1.09\",\"new_version\":\"1.09\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-woocommerce\\/formidable-woocommerce-1.09.zip\"],\"excerpt\":\"Are your WooCommerce product forms too basic? Add custom fields to a product form and collect more data when it is added to the cart.\",\"id\":174006,\"released\":\"2016-01-19 00:00:00\",\"categories\":[\"Ecommerce\",\"Elite\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-woocommerce\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/woocommerce\\/\",\"changelog\":\"\",\"plugin\":\"formidable-woocommerce\\/formidable-woocommerce.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"169998\":{\"title\":\"WP Multilingual\",\"name\":\"WP Multilingual\",\"slug\":\"wp-multilingual\",\"version\":\"1.06\",\"new_version\":\"1.06\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-wpml\\/formidable-wpml-1.06.zip\"],\"excerpt\":\"Translate your forms into multiple languages using the Formidable-integrated WPML plugin.\",\"id\":169998,\"released\":\"2013-04-29 00:00:00\",\"categories\":[\"Business\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-multi-language\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/wp-multilingual\\/\",\"changelog\":\"<h4>v1.04 - October 25th, 2016<\\/h4>\\n<ul>\\n<li>Allow translation of Add\\/Remove buttons<\\/li>\\n<li>Replace some deprecated WPML function calls and constants<\\/li>\\n<li>Make sure wpml strings are updated when form is updated<\\/li>\\n<li>Do not translate default value for all field types<\\/li>\\n<li>Make sure incorrect field message is translated with ajax submit<\\/li>\\n<\\/ul>\\n<h4>v1.03.03 - March 28, 2016<\\/h4>\\n<ul>\\n<li>Send the language in the ajax url differently to prevent 404s during ajax calls. This should help with duplicate submissions.<\\/li>\\n<li>Prevent a license key from being saved for another plugin<\\/li>\\n<\\/ul>\\n<h4>v1.03.02<\\/h4>\\n<ul>\\n<li>Get updates from FormidablePro.com<\\/li>\\n<li>Make it compatible with the free version of Formidable<\\/li>\\n<li>Fix errors when Formidable or WPML are deactivated<\\/li>\\n<li>Include the current language during ajax calls<\\/li>\\n<li>Force an English start language for strings for v2.2.6 of the WPML strings plugin<\\/li>\\n<li>Fix the issue with the default language in WPML being set different than the string language<\\/li>\\n<li>If values in the form settings page changed, update them when going to the translation settings<\\/li>\\n<li>Make sure the \\\"previous\\\" label is translatable when drafts are not enabled<\\/li>\\n<li>Don\'t show strings for inactive languages<\\/li>\\n<li>Translate fields in repeating sections<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-wpml\\/formidable-wpml.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"},\"170645\":{\"title\":\"Zapier\",\"name\":\"Zapier\",\"slug\":\"zapier\",\"version\":\"1.06\",\"new_version\":\"1.06\",\"location\":[\"fp.strategy11.com\\/releases\\/formidable-zapier\\/formidable-zapier-1.06.zip\"],\"excerpt\":\"Connect with hundreds of applications through Zapier. Automatically insert a Google spreadsheet row, tweet, or upload to Dropbox.\",\"id\":170645,\"released\":\"2014-06-04 00:00:00\",\"categories\":[\"Business\",\"Strategy11\"],\"docs\":\"\\/knowledgebase\\/formidable-zapier\\/\",\"link\":\"https:\\/\\/formidableforms.com\\/downloads\\/zapier\\/\",\"changelog\":\"<h4>v1.06 - February 6, 2019<\\/h4>\\n<ul>\\n<li>Add a new fallback for authentication with the API key in the url. When the API key continues to say it is missing, add add_filter( \'frm_zap_url_auth\', \'__return_true\' ); in the theme functions.php.<br \\/>\\nThen use this url in Zapier:<br \\/>\\nhttps:\\/\\/yoursite.com\\/API-KEY-GOES-HERE\\/\\n<\\/li>\\n<li>New: Add frm_zap_sent hook to run after an entry is sent to Zapier<\\/li>\\n<li>Fix: Don\'t send draft entries to Zapier<\\/li>\\n<li>Added automation to release new versions<\\/li>\\n<\\/ul>\\n<h4>v1.05 - July 31, 2018<\\/h4>\\n<ul>\\n<li>New: Add frmzap_entry_array filter to customize the entry values sent to Zapier<\\/li>\\n<li>New: Add logging of Zapier responses into the Logs addon<\\/li>\\n<li>Fix: Prevent a blank response when fetching the list of forms. This was happening on some sites with a lot of forms<\\/li>\\n<\\/ul>\\n<h4>v1.04 - July 31, 2017<\\/h4>\\n<p>Fix a conflict with API keys between the Zapier and API addons on a multisite network. This solves the issue with the incorrect API key error message in Zapier.<\\/p>\\n<h4>v1.03 - June 5, 2017<\\/h4>\\n<ul>\\n<li>Allow field ids to be used in Zapier mapping instead of only field keys<\\/li>\\n<li>Increase the limit of triggered zaps per form from 5 to 40<\\/li>\\n<li>Fix overloaded property error when setting the user for authentication<\\/li>\\n<li>Prevent error reporting during API calls so the response is formatted correctly<\\/li>\\n<\\/ul>\\n<h4>v1.02 - November 13, 2015<\\/h4>\\n<ul>\\n<li>Prevent error when Formidable is disabled<\\/li>\\n<li>Use static classes for fields and forms<\\/li>\\n<\\/ul>\\n\",\"plugin\":\"formidable-zapier\\/formidable-zapier.php\",\"icons\":{\"1x\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/icon-256x256.png\"},\"banners\":{\"high\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\",\"low\":\"https:\\/\\/ps.w.org\\/formidable\\/assets\\/banner-1544x500.png\"},\"expires\":\"\",\"code\":\"\",\"date\":\"\",\"type\":\"free\"}}\";s:7:\"version\";s:7:\"4.04.03\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(383, '_transient_timeout_frmpro_css', '1590354668', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(384, '_transient_frmpro_css', '/* WARNING: Any changes made to this file will be lost when your Formidable settings are updated */\n.frm_hidden,.frm_add_form_row.frm_hidden,.frm_remove_form_row.frm_hidden,.with_frm_style .frm_button.frm_hidden{display:none;}form input.frm_verify{display:none !important;}.with_frm_style fieldset{min-width:0;}.with_frm_style fieldset fieldset{border:none;margin:0;padding:0;background-color:transparent;}legend.frm_hidden{display:none !important;}.with_frm_style .frm_form_fields{opacity:1;transition: opacity 0.1s linear;}.with_frm_style .frm_doing_ajax{opacity:.5;}.frm_transparent{color:transparent;}.input[type=file].frm_transparent:focus, .with_frm_style input[type=file]{background-color:transparent;border:none;outline:none;box-shadow:none;}.with_frm_style input[type=file]{display:initial;}.frm_preview_page:before{content:normal !important;}.frm_preview_page{padding:25px;}.with_frm_style .frm_primary_label{max-width:100%;}.with_frm_style .frm_top_container .frm_primary_label,.with_frm_style .frm_hidden_container .frm_primary_label,.with_frm_style .frm_pos_top{display:block;float:none;width:auto;}.with_frm_style .frm_inline_container .frm_primary_label{margin-right:10px;}.with_frm_style .frm_right_container .frm_primary_label,.with_frm_style .frm_pos_right{display:inline;float:right;margin-left:10px;}.with_frm_style .frm_pos_center {text-align: center;}.with_frm_style .frm_none_container .frm_primary_label,.with_frm_style .frm_pos_none,.frm_pos_none,.frm_none_container .frm_primary_label{display:none;}.with_frm_style .frm_section_heading.frm_hide_section{margin-top:0 !important;}.with_frm_style .frm_hidden_container .frm_primary_label,.with_frm_style .frm_pos_hidden,.frm_hidden_container .frm_primary_label{visibility:hidden;white-space:nowrap;}.with_frm_style .frm_inside_container .frm_primary_label{opacity:0;transition: opacity 0.1s linear;}.with_frm_style .frm_inside_container label.frm_visible,.frm_visible{opacity:1;}.with_frm_style .frm_description{clear:both;}.with_frm_style input[type=number][readonly]{-moz-appearance: textfield;}.with_frm_style select[multiple=\"multiple\"]{height:auto;line-height:normal;}.with_frm_style .frm_catlevel_2,.with_frm_style .frm_catlevel_3,.with_frm_style .frm_catlevel_4,.with_frm_style .frm_catlevel_5{margin-left:18px;}.with_frm_style .wp-editor-container{border:1px solid #e5e5e5;}.with_frm_style .quicktags-toolbar input{font-size:12px !important;}.with_frm_style .wp-editor-container textarea{border:none;}.with_frm_style textarea{height:auto;}.with_frm_style .auto_width #loginform input,.with_frm_style .auto_width input,.with_frm_style input.auto_width,.with_frm_style select.auto_width,.with_frm_style textarea.auto_width{width:auto;}.with_frm_style .frm_repeat_buttons{white-space:nowrap;}.with_frm_style .frm_button{text-decoration:none;border:1px solid #eee;padding:5px;display:inline;}.with_frm_style .frm_submit{clear:both;}.frm_inline_form .frm_form_field,.frm_inline_form .frm_submit{grid-column: span 1 / span 1;}.frm_inline_form .frm_submit{margin:0;}.frm_submit.frm_inline_submit input[type=submit],.frm_submit.frm_inline_submit button,.frm_inline_form .frm_submit input[type=submit],.frm_inline_form .frm_submit button{margin-top:0;}.with_frm_style.frm_center_submit .frm_submit{text-align:center;}.with_frm_style.frm_center_submit .frm_submit input[type=submit],.with_frm_style.frm_center_submit .frm_submit input[type=button],.with_frm_style.frm_center_submit .frm_submit button{margin-bottom:8px !important;}.with_frm_style .frm-edit-page-btn,.with_frm_style .frm_submit input[type=submit],.with_frm_style .frm_submit input[type=button],.with_frm_style .frm_submit button{-webkit-appearance: none;cursor: pointer;}.with_frm_style.frm_center_submit .frm_submit .frm_ajax_loading{display: block;margin: 0 auto;}.with_frm_style .frm_loading_prev .frm_ajax_loading,.with_frm_style .frm_loading_form .frm_ajax_loading{visibility:visible !important;}.with_frm_style .frm_loading_prev .frm_prev_page,.with_frm_style .frm_loading_form .frm_button_submit {position: relative;opacity: .8;color: transparent !important;text-shadow: none !important;}.with_frm_style .frm_loading_prev .frm_prev_page:hover,.with_frm_style .frm_loading_prev .frm_prev_page:active,.with_frm_style .frm_loading_prev .frm_prev_page:focus,.with_frm_style .frm_loading_form .frm_button_submit:hover,.with_frm_style .frm_loading_form .frm_button_submit:active,.with_frm_style .frm_loading_form .frm_button_submit:focus {cursor: not-allowed;color: transparent;outline: none !important;box-shadow: none;}.with_frm_style .frm_loading_prev .frm_prev_page::before,.with_frm_style .frm_loading_form .frm_button_submit:before {content: \'\';display: inline-block;position: absolute;background: transparent;border: 1px solid #fff;border-top-color: transparent;border-left-color: transparent;border-radius: 50%;box-sizing: border-box;top: 50%;left: 50%;margin-top: -10px;margin-left: -10px;width: 20px;height: 20px;-webkit-animation: spin 2s linear infinite;-moz-animation:spin 2s linear infinite;-o-animation:  spin 2s linear infinite;animation: spin 2s linear infinite;}.frm_forms.frm_style_formidable-style.with_frm_style{max-width:100%;direction:ltr;}.frm_style_formidable-style.with_frm_style,.frm_style_formidable-style.with_frm_style form,.frm_style_formidable-style.with_frm_style .frm-show-form div.frm_description p {text-align:left;}.frm_style_formidable-style.with_frm_style .frm_form_fields  > fieldset{border-width:0px;border-style:solid;border-color:#000000;margin:0;padding:0 0 15px 0;background-color:transparent;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;}.frm_style_formidable-style.with_frm_style legend + h3,.frm_style_formidable-style.with_frm_style h3.frm_form_title{font-size:20px;color:#444444;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;margin-top:10px;margin-bottom:10px;}.frm_style_formidable-style.with_frm_style .frm_primary_label{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;color:#444444;font-weight:bold;text-align:left;margin:0;padding:0 0 3px 0;width:auto;display:block;}.frm_style_formidable-style.with_frm_style .frm_form_field.frm_html_container,.frm_style_formidable-style.with_frm_style .frm_form_field .frm_show_it{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;color:#666666;}.frm_style_formidable-style.with_frm_style .frm_form_field.frm_html_container{font-size:14px;}.frm_style_formidable-style.with_frm_style .frm_form_field .frm_show_it{font-size:14px;font-weight:normal;}.frm_style_formidable-style.with_frm_style .frm_icon_font{color:#444444;}.frm_style_formidable-style.with_frm_style .frm_icon_font.frm_minus_icon:before{content:\"\\e600\";}.frm_style_formidable-style.with_frm_style .frm_icon_font.frm_plus_icon:before{content:\"\\e602\";}.frm_style_formidable-style.with_frm_style .frm_icon_font.frm_minus_icon:before,.frm_style_formidable-style.with_frm_style .frm_icon_font.frm_plus_icon:before{color:#444444;vertical-align:middle;}.frm_style_formidable-style.with_frm_style .frm_trigger.active .frm_icon_font.frm_arrow_icon:before{content:\"\\e62d\";color:#444444;}.frm_style_formidable-style.with_frm_style .frm_trigger .frm_icon_font.frm_arrow_icon:before{content:\"\\e62a\";color:#444444;}.frm_style_formidable-style.with_frm_style .form-field{margin-bottom:20px;}.frm_style_formidable-style.with_frm_style .frm_grid,.frm_style_formidable-style.with_frm_style .frm_grid_first,.frm_style_formidable-style.with_frm_style .frm_grid_odd {margin-bottom:0;}.frm_style_formidable-style.with_frm_style .form-field.frm_section_heading{margin-bottom:0;}.frm_style_formidable-style.with_frm_style p.description,.frm_style_formidable-style.with_frm_style div.description,.frm_style_formidable-style.with_frm_style div.frm_description,.frm_style_formidable-style.with_frm_style .frm-show-form > div.frm_description,.frm_style_formidable-style.with_frm_style .frm_error{margin:0;padding:0;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:12px;color:#666666;font-weight:normal;text-align:left;font-style:normal;max-width:100%;}.frm_style_formidable-style.with_frm_style .frm-show-form div.frm_description p{font-size:14px;color:#666666;margin-top:10px;margin-bottom:25px;}.frm_style_formidable-style.with_frm_style .frm_form_field.frm_left_container{grid-template-columns: 150px auto;}.frm_style_formidable-style.with_frm_style .frm_form_field.frm_right_container{grid-template-columns: auto 150px;}.frm_form_field.frm_right_container{grid-template-columns: auto 25%;}.frm_style_formidable-style.with_frm_style .frm_inline_container.frm_dynamic_select_container .frm_data_container,.frm_style_formidable-style.with_frm_style .frm_inline_container.frm_dynamic_select_container .frm_opt_container{display:inline;}.frm_style_formidable-style.with_frm_style .frm_pos_right{display:inline;width:150px;}.frm_style_formidable-style.with_frm_style .frm_none_container .frm_primary_label,.frm_style_formidable-style.with_frm_style .frm_pos_none{display:none;}.frm_style_formidable-style.with_frm_style .frm_scale label{font-weight:normal;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:13px;color:#444444;}.frm_style_formidable-style.with_frm_style .frm_required{color:#B94A48;font-weight:bold;}.frm_style_formidable-style.with_frm_style input[type=text],.frm_style_formidable-style.with_frm_style input[type=password],.frm_style_formidable-style.with_frm_style input[type=email],.frm_style_formidable-style.with_frm_style input[type=number],.frm_style_formidable-style.with_frm_style input[type=url],.frm_style_formidable-style.with_frm_style input[type=tel],.frm_style_formidable-style.with_frm_style input[type=search],.frm_style_formidable-style.with_frm_style select,.frm_style_formidable-style.with_frm_style textarea,.frm_style_formidable-style.with_frm_style .frm-card-element.StripeElement,.frm_style_formidable-style.with_frm_style .chosen-container{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;margin-bottom:0;}.frm_style_formidable-style.with_frm_style textarea{vertical-align:top;}.frm_style_formidable-style.with_frm_style input[type=text],.frm_style_formidable-style.with_frm_style input[type=password],.frm_style_formidable-style.with_frm_style input[type=email],.frm_style_formidable-style.with_frm_style input[type=number],.frm_style_formidable-style.with_frm_style input[type=url],.frm_style_formidable-style.with_frm_style input[type=tel],.frm_style_formidable-style.with_frm_style input[type=phone],.frm_style_formidable-style.with_frm_style input[type=search],.frm_style_formidable-style.with_frm_style select,.frm_style_formidable-style.with_frm_style textarea,.frm_form_fields_style,.frm_style_formidable-style.with_frm_style .frm_scroll_box .frm_opt_container,.frm_form_fields_active_style,.frm_form_fields_error_style,.frm_style_formidable-style.with_frm_style .frm-card-element.StripeElement,.frm_style_formidable-style.with_frm_style .chosen-container-multi .chosen-choices,.frm_style_formidable-style.with_frm_style .chosen-container-single .chosen-single{color:#555555;background-color:#ffffff;border-color: #cccccc;border-width:1px;border-style:solid;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;width:100%;max-width:100%;font-size:14px;padding:6px 10px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;outline:none;font-weight:normal;box-shadow:0 1px 1px rgba(0, 0, 0, 0.075) inset;}.frm_style_formidable-style.with_frm_style input[type=radio],.frm_style_formidable-style.with_frm_style input[type=checkbox]{border-color: #cccccc;box-shadow:0 1px 1px rgba(0, 0, 0, 0.075) inset;}.frm_style_formidable-style.with_frm_style input[type=text],.frm_style_formidable-style.with_frm_style input[type=password],.frm_style_formidable-style.with_frm_style input[type=email],.frm_style_formidable-style.with_frm_style input[type=number],.frm_style_formidable-style.with_frm_style input[type=url],.frm_style_formidable-style.with_frm_style input[type=tel],.frm_style_formidable-style.with_frm_style input[type=file],.frm_style_formidable-style.with_frm_style input[type=search],.frm_style_formidable-style.with_frm_style select,.frm_style_formidable-style.with_frm_style .frm-card-element.StripeElement{height:32px;line-height:1.3;}.frm_style_formidable-style.with_frm_style select[multiple=\"multiple\"]{height:auto ;}.frm_style_formidable-style.with_frm_style input[type=file]{color: #555555;padding:0px;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;}.frm_style_formidable-style.with_frm_style input[type=file].frm_transparent{color:transparent;}.frm_style_formidable-style.with_frm_style select{width:100%;max-width:100%;}.frm_style_formidable-style.with_frm_style .wp-editor-wrap{width:100%;max-width:100%;}.frm_style_formidable-style.with_frm_style .wp-editor-container textarea{border:none;}.frm_style_formidable-style.with_frm_style .mceIframeContainer{background-color:#ffffff;}.frm_style_formidable-style.with_frm_style .auto_width input,.frm_style_formidable-style.with_frm_style input.auto_width,.frm_style_formidable-style.with_frm_style select.auto_width,.frm_style_formidable-style.with_frm_style textarea.auto_width{width:auto;}.frm_style_formidable-style.with_frm_style input[disabled],.frm_style_formidable-style.with_frm_style select[disabled],.frm_style_formidable-style.with_frm_style textarea[disabled],.frm_style_formidable-style.with_frm_style input[readonly],.frm_style_formidable-style.with_frm_style select[readonly],.frm_style_formidable-style.with_frm_style textarea[readonly]{background-color:#ffffff;color:#A1A1A1;border-color:#E5E5E5;}.frm_style_formidable-style.with_frm_style input::placeholder,.frm_style_formidable-style.with_frm_style textarea::placeholder{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style input::-webkit-input-placeholder,.frm_style_formidable-style.with_frm_style textarea::-webkit-input-placeholder{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style input::-moz-placeholder,.frm_style_formidable-style.with_frm_style textarea::-moz-placeholder{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style input:-ms-input-placeholder,frm_style_formidable-style.with_frm_style textarea:-ms-input-placeholder{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style input:-moz-placeholder,.frm_style_formidable-style.with_frm_style textarea:-moz-placeholder{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style .frm_default,.frm_style_formidable-style.with_frm_style input.frm_default,.frm_style_formidable-style.with_frm_style textarea.frm_default,.frm_style_formidable-style.with_frm_style select.frm_default,.frm_style_formidable-style.with_frm_style .placeholder,.frm_style_formidable-style.with_frm_style .chosen-container-multi .chosen-choices li.search-field .default,.frm_style_formidable-style.with_frm_style .chosen-container-single .chosen-default{color: #A1A1A1;}.frm_style_formidable-style.with_frm_style .form-field input:not([type=file]):focus,.frm_style_formidable-style.with_frm_style select:focus,.frm_style_formidable-style.with_frm_style textarea:focus,.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=text],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=password],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=email],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=number],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=url],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=tel],.frm_style_formidable-style.with_frm_style .frm_focus_field input[type=search],.frm_form_fields_active_style,.frm_style_formidable-style.with_frm_style .frm_focus_field .frm-card-element.StripeElement,.frm_style_formidable-style.with_frm_style .chosen-container-single.chosen-container-active .chosen-single,.frm_style_formidable-style.with_frm_style .chosen-container-active .chosen-choices{background-color:#ffffff;border-color:#66afe9;box-shadow:0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(102,175,233, 0.6);}.frm_style_formidable-style.with_frm_style .frm_compact .frm_dropzone.dz-clickable .dz-message,.frm_style_formidable-style.with_frm_style input[type=submit],.frm_style_formidable-style.with_frm_style .frm_submit input[type=button],.frm_style_formidable-style.with_frm_style .frm_submit button,.frm_form_submit_style,.frm_style_formidable-style.with_frm_style .frm-edit-page-btn {width:auto;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;height:auto;line-height:normal;text-align:center;background:#ffffff;border-width:1px;border-color: #cccccc;border-style:solid;color:#444444;cursor:pointer;font-weight:normal;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;text-shadow:none;padding:6px 11px;-moz-box-sizing:border-box;box-sizing:border-box;-ms-box-sizing:border-box;-moz-box-shadow:0 1px 1px #eeeeee;-webkit-box-shadow:0 1px 1px #eeeeee;box-shadow:0 1px 1px #eeeeee;margin:10px;margin-left:0;margin-right:0;vertical-align:middle;}.frm_style_formidable-style.with_frm_style .frm_compact .frm_dropzone.dz-clickable .dz-message{margin:0;}.frm_style_formidable-style.with_frm_style .frm-edit-page-btn:hover,.frm_style_formidable-style.with_frm_style input[type=submit]:hover,.frm_style_formidable-style.with_frm_style .frm_submit input[type=button]:hover,.frm_style_formidable-style.with_frm_style .frm_submit button:hover{background: #efefef;border-color: #cccccc;color: #444444;}.frm_style_formidable-style.with_frm_style.frm_center_submit .frm_submit .frm_ajax_loading{margin-bottom:10px;}.frm_style_formidable-style.with_frm_style .frm-edit-page-btn:focus,.frm_style_formidable-style.with_frm_style input[type=submit]:focus,.frm_style_formidable-style.with_frm_style .frm_submit input[type=button]:focus,.frm_style_formidable-style.with_frm_style .frm_submit button:focus,.frm_style_formidable-style.with_frm_style input[type=submit]:active,.frm_style_formidable-style.with_frm_style .frm_submit input[type=button]:active,.frm_style_formidable-style.with_frm_style .frm_submit button:active{background: #efefef;border-color: #cccccc;color: #444444;}.frm_style_formidable-style.with_frm_style .frm_loading_prev .frm_prev_page,.frm_style_formidable-style.with_frm_style .frm_loading_prev .frm_prev_page:hover,.frm_style_formidable-style.with_frm_style .frm_loading_prev .frm_prev_page:active,.frm_style_formidable-style.with_frm_style .frm_loading_prev .frm_prev_page:focus,.frm_style_formidable-style.with_frm_style .frm_loading_form .frm_button_submit,.frm_style_formidable-style.with_frm_style .frm_loading_form .frm_button_submit:hover,.frm_style_formidable-style.with_frm_style .frm_loading_form .frm_button_submit:active,.frm_style_formidable-style.with_frm_style .frm_loading_form .frm_button_submit:focus{color: transparent ;background: #ffffff;}.frm_style_formidable-style.with_frm_style .frm_loading_prev .frm_prev_page:before,.frm_style_formidable-style.with_frm_style .frm_loading_form .frm_button_submit:before {border-bottom-color: #444444;border-right-color: #444444;}.frm_style_formidable-style.with_frm_style.frm_inline_top .frm_submit::before,.frm_style_formidable-style.with_frm_style .frm_submit.frm_inline_submit::before {content:\"before\";font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;color:#444444;font-weight:bold;margin:0;padding:0 0 3px 0;width:auto;display:block;visibility:hidden;}.frm_style_formidable-style.with_frm_style.frm_inline_form .frm_submit input,.frm_style_formidable-style.with_frm_style.frm_inline_form .frm_submit button,.frm_style_formidable-style.with_frm_style .frm_submit.frm_inline_submit input,.frm_style_formidable-style.with_frm_style .frm_submit.frm_inline_submit button {margin: 0 !important;}.frm_style_formidable-style.with_frm_style a.frm_save_draft{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;font-weight:normal;}.frm_style_formidable-style.with_frm_style #frm_field_cptch_number_container{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:14px;color:#444444;font-weight:bold;clear:both;}.frm_style_formidable-style.with_frm_style .frm_radio{display:block;}.frm_style_formidable-style.with_frm_style .frm_checkbox{display:block;}.frm_style_formidable-style.with_frm_style .vertical_radio .frm_checkbox,.frm_style_formidable-style.with_frm_style .vertical_radio .frm_radio,.vertical_radio .frm_catlevel_1{display:block;}.frm_style_formidable-style.with_frm_style .horizontal_radio .frm_checkbox,.frm_style_formidable-style.with_frm_style .horizontal_radio .frm_radio,.horizontal_radio .frm_catlevel_1{display:inline-block;}.frm_style_formidable-style.with_frm_style .frm_radio label,.frm_style_formidable-style.with_frm_style .frm_checkbox label{font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-size:13px;color:#444444;font-weight:normal;}.frm_style_formidable-style.with_frm_style .frm_radio input[type=radio],.frm_style_formidable-style.with_frm_style .frm_checkbox input[type=checkbox] {font-size: 13px;position: static;}.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=text],.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=password],.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=url],.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=tel],.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=number],.frm_style_formidable-style.with_frm_style .frm_blank_field input[type=email],.frm_style_formidable-style.with_frm_style .frm_blank_field textarea,.frm_style_formidable-style.with_frm_style .frm_blank_field .mce-edit-area iframe,.frm_style_formidable-style.with_frm_style .frm_blank_field select,.frm_form_fields_error_style,.frm_style_formidable-style.with_frm_style .frm_blank_field .frm-g-recaptcha iframe,.frm_style_formidable-style.with_frm_style .frm_blank_field .g-recaptcha iframe,.frm_style_formidable-style.with_frm_style .frm_blank_field .frm-card-element.StripeElement,.frm_style_formidable-style.with_frm_style .frm_blank_field .chosen-container-multi .chosen-choices,.frm_style_formidable-style.with_frm_style .frm_blank_field .chosen-container-single .chosen-single,.frm_style_formidable-style.with_frm_style .frm_form_field :invalid{color:#444444;background-color:#ffffff;border-color:#B94A48;border-width:1px;border-style:solid;}.frm_style_formidable-style.with_frm_style .frm_blank_field .sigWrapper{border-color:#B94A48 !important;}.frm_style_formidable-style.with_frm_style .frm_error{font-weight:bold;}.frm_style_formidable-style.with_frm_style .frm_blank_field label,.frm_style_formidable-style.with_frm_style .frm_error{color:#B94A48;}.frm_style_formidable-style.with_frm_style .frm_error_style{background-color:#F2DEDE;border:1px solid #EBCCD1;border-radius:4px;color: #B94A48;font-size:14px;margin:0;margin-bottom:20px;}.frm_style_formidable-style.with_frm_style .frm_message,.frm_success_style{border:1px solid #D6E9C6;background-color:#DFF0D8;color:#468847;border-radius:4px;}.frm_style_formidable-style.with_frm_style .frm_message p{color:#468847;}.frm_style_formidable-style.with_frm_style .frm_message{margin:5px 0 15px;font-size:14px;}.frm_style_formidable-style.with_frm_style .frm-grid td,.frm-grid th{border-color:#cccccc;}.form_results.frm_style_formidable-style.with_frm_style{border:1px solid #cccccc;}.form_results.frm_style_formidable-style.with_frm_style tr td{color: #555555;border-top:1px solid #cccccc;}.form_results.frm_style_formidable-style.with_frm_style tr.frm_even,.frm-grid .frm_even{background-color:#ffffff;}.frm_style_formidable-style.with_frm_style #frm_loading .progress-striped .progress-bar{background-image:linear-gradient(45deg, #cccccc 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, #cccccc 50%, #cccccc 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));}.frm_style_formidable-style.with_frm_style #frm_loading .progress-bar{background-color:#ffffff;}.frm_style_formidable-style.with_frm_style .frm_grid,.frm_style_formidable-style.with_frm_style .frm_grid_first,.frm_style_formidable-style.with_frm_style .frm_grid_odd{border-color:#cccccc;}.frm_style_formidable-style.with_frm_style .frm_grid.frm_blank_field,.frm_style_formidable-style.with_frm_style .frm_grid_first.frm_blank_field,.frm_style_formidable-style.with_frm_style .frm_grid_odd.frm_blank_field{background-color:#F2DEDE;border-color:#EBCCD1;}.frm_style_formidable-style.with_frm_style .frm_grid_first,.frm_style_formidable-style.with_frm_style .frm_grid_odd{background-color:#ffffff;}.frm_style_formidable-style.with_frm_style .frm_grid{background-color:#ffffff;}.frm_style_formidable-style.with_frm_style .frm_html_container.frm_scroll_box,.frm_style_formidable-style.with_frm_style .frm_form_field.frm_html_scroll_box{background-color:#ffffff;border-color: #cccccc;border-width:1px;border-style:solid;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;width:100%;font-size:14px;padding:6px 10px;outline:none;}.frm_style_formidable-style.with_frm_style .frm_form_field.frm_total input,.frm_style_formidable-style.with_frm_style .frm_form_field.frm_total textarea{color: #555555;background-color:transparent;border:none;display:inline;width:auto;padding:0;}.frm_style_formidable-style.with_frm_style .frm_button{padding:6px 11px;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;font-size:14px;font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,sans-serif;font-weight:normal;color:#444444;background: #ffffff;border-width:1px;border-color: #cccccc;height:auto;}@media only screen and (max-width: 600px){.frm_style_formidable-style.with_frm_style .frm_repeat_inline,.frm_style_formidable-style.with_frm_style .frm_repeat_grid{margin: 20px 0;}}.frm_ajax_loading{visibility:hidden;width:auto;}.frm_form_submit_style{height:auto;}a.frm_save_draft{cursor:pointer;}.horizontal_radio .frm_radio{margin:0 5px 0 0;}.horizontal_radio .frm_checkbox{margin:0;margin-right:5px;}.vertical_radio .frm_checkbox,.vertical_radio .frm_radio,.vertical_radio .frm_catlevel_1{display:block;}.horizontal_radio .frm_checkbox,.horizontal_radio .frm_radio,.horizontal_radio .frm_catlevel_1{display:inline-block;}.with_frm_style .frm_checkbox label,.with_frm_style .frm_radio label{display: inline;white-space:normal;}.with_frm_style .vertical_radio .frm_checkbox label,.with_frm_style .vertical_radio .frm_radio label{display: block;padding-left: 20px;text-indent: -20px;}.frm_file_container .frm_file_link,.with_frm_style .frm_radio label .frm_file_container,.with_frm_style .frm_checkbox label .frm_file_container{display:inline-block;margin:5px;vertical-align:middle;}.with_frm_style .frm_radio input[type=radio]{-webkit-appearance:radio;border-radius:50%;}.with_frm_style .frm_checkbox input[type=checkbox]{-webkit-appearance:checkbox;border-radius:0;}.with_frm_style .frm_radio input[type=radio],.with_frm_style .frm_checkbox input[type=checkbox]{flex: none;display:inline-block;margin:4px 5px 0 0;width:auto;border:none;vertical-align:baseline;position: initial; }.with_frm_style :invalid,.with_frm_style :-moz-submit-invalid,.with_frm_style :-moz-ui-invalid{box-shadow:none;}.with_frm_style .frm_error_style img{padding-right:10px;vertical-align:middle;border:none;}.with_frm_style .frm_trigger{cursor:pointer;}.with_frm_style .frm_error_style,.with_frm_style .frm_message,.frm_success_style{-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;padding:15px;}.with_frm_style .frm_message p{margin-bottom:5px;}.frm_form_fields_style,.frm_form_fields_active_style,.frm_form_fields_error_style,.frm_form_submit_style{width:auto;}.with_frm_style .frm_trigger span{float:left;}.with_frm_style table.frm-grid,#content .with_frm_style table.frm-grid{border-collapse:collapse;border:none;}.frm-grid td,.frm-grid th{padding:5px;border-width:1px;border-style:solid;border-color:#cccccc;border-top:none;border-left:none;border-right:none;}.frm-alt-table {width:100%;border-collapse:collapse;margin-top:0.5em;font-size:15px;}.frm-alt-table th {width:200px;}.frm-alt-table tr {background-color:transparent;}.frm-alt-table th,.frm-alt-table td {background-color:transparent;vertical-align:top;text-align:left;padding:20px;}.frm-alt-table tr:nth-child(even) {background-color:#f9f9f9;}table.form_results.with_frm_style{border:1px solid #ccc;}table.form_results.with_frm_style tr td{text-align:left;color:#555555;padding:7px 9px;border-top:1px solid #cccccc;}table.form_results.with_frm_style tr.frm_even,.frm-grid .frm_even{background-color:#fff;}table.form_results.with_frm_style tr.frm_odd,.frm-grid .frm_odd{background-color:#f9f9f9;}.frm_collapse .ui-icon{display:inline-block;}.frm_toggle_container{border:1px solid transparent;}.frm_toggle_container ul{margin:5px 0;padding-left:0;list-style-type:none;}.frm_toggle_container .frm_month_heading{text-indent:15px;}.frm_toggle_container .frm_month_listing{margin-left:40px;}#frm_loading{display:none;position:fixed;top:0;left:0;width:100%;height:100%;z-index:99999;}#frm_loading h3{font-weight:500;padding-bottom:15px;color:#fff;font-size:24px;}#frm_loading_content{position:fixed;top:20%;left:33%;width:33%;text-align:center;padding-top:30px;font-weight:bold;z-index:9999999;}#frm_loading img{max-width:100%;}#frm_loading .progress{border-radius:4px;box-shadow:0 1px 2px rgba(0, 0, 0, 0.1) inset;height:20px;margin-bottom:20px;overflow:hidden;}#frm_loading .progress.active .progress-bar{animation:2s linear 0s normal none infinite progress-bar-stripes;}#frm_loading .progress-striped .progress-bar{background-image:linear-gradient(45deg, #cccccc 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, #cccccc 50%, #cccccc 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));background-size:40px 40px;}#frm_loading .progress-bar{background-color:#ffffff;box-shadow:0 -1px 0 rgba(0, 0, 0, 0.15) inset;float:left;height:100%;line-height:20px;text-align:center;transition:width 0.6s ease 0s;width:100%;}.frm_image_from_url{height:50px;}.frm-loading-img{background:url(../images/ajax_loader.gif) no-repeat center center;padding:6px 12px;}select.frm_loading_lookup{background-image: url(../images/ajax_loader.gif) !important;background-position: 10px;background-repeat: no-repeat;color: transparent !important;}.frm_screen_reader {border: 0;clip: rect(1px, 1px, 1px, 1px);-webkit-clip-path: inset(50%);clip-path: inset(50%);height: 1px;margin: -1px;overflow: hidden;padding: 0;position: absolute;width: 1px;word-wrap: normal !important; }.frm_screen_reader.frm_hidden{display:initial;}.frm_clear_none{clear:none;}.frm_clear{clear:both;}.frm_form_field.frm_alignright{float:right !important;}.with_frm_style .frm_form_field{clear:both;}.frm_combo_inputs_container,.frm_grid_container,.frm_form_fields .frm_section_heading,.frm_form_fields .frm_fields_container{display:grid;grid-template-columns: repeat(12, 6.5%);grid-auto-rows: max-content;grid-gap: 0 2%;}.frm_combo_inputs_container > *,.frm_grid_container > *,.frm_section_heading > *,.frm_fields_container .frm_form_field,.frm_fields_container > *{grid-column: span 12 / span 12;}.frm_inline,.frm_form_field.frm_left_inline,.frm_form_field.frm_first_inline,.frm_form_field.frm_inline,.frm_submit.frm_inline,.frm_form_field.frm_right_inline,.frm_form_field.frm_last_inline{width:auto;grid-column: span 2 / span 2;}.frm6,.frm_half,.frm_form_field.frm_three_fifths, .frm_form_field.frm6,.frm_submit.frm6,.frm_form_field.frm_left_half,.frm_form_field.frm_right_half,.frm_form_field.frm_first_half,.frm_form_field.frm_last_half,.frm_form_field.frm_half,.frm_submit.frm_half{grid-column:span 6 / span 6;}.frm4,.frm_third,.frm_form_field.frm_two_fifths, .frm_form_field.frm4,.frm_submit.frm4,.frm_form_field.frm_left_third,.frm_form_field.frm_third,.frm_submit.frm_third,.frm_form_field.frm_right_third,.frm_form_field.frm_first_third,.frm_form_field.frm_last_third{grid-column:span 4 / span 4;}.frm8,.frm_two_thirds,.frm_form_field.frm8,.frm_submit.frm8,.frm_form_field.frm_left_two_thirds,.frm_form_field.frm_right_two_thirds,.frm_form_field.frm_first_two_thirds,.frm_form_field.frm_last_two_thirds,.frm_form_field.frm_two_thirds{grid-column: span 8/span 8;}.frm3,.frm_fourth,.frm_form_field.frm3,.frm_submit.frm3,.frm_form_field.frm_left_fourth,.frm_form_field.frm_fourth,.frm_submit.frm_fourth,.frm_form_field.frm_right_fourth,.frm_form_field.frm_first_fourth,.frm_form_field.frm_last_fourth{grid-column: span 3/span 3;}.frm9,.frm_three_fourths,.frm_form_field.frm_four_fifths, .frm_form_field.frm9,.frm_submit.frm9,.frm_form_field.frm_three_fourths{grid-column: span 9/span 9;}.frm_form_field.frm_left_fifth,.frm_form_field.frm_fifth,.frm_submit.frm_fifth,.frm_form_field.frm_right_fifth,.frm_form_field.frm_first_fifth,.frm_form_field.frm_last_fifth{grid-column: span 2/span 2;}.frm2,.frm_sixth,.frm_form_field.frm2,.frm_submit.frm2,.frm_form_field.frm_sixth,.frm_submit.frm_sixth,.frm_form_field.frm_first_sixth,.frm_form_field.frm_last_sixth{grid-column: span 2/span 2;}.frm10,.frm_form_field.frm10,.frm_submit.frm10{grid-column: span 10/span 10;}.frm1,.frm_form_field.frm1,.frm_submit.frm1,.frm_form_field.frm_seventh,.frm_submit.frm_seventh,.frm_form_field.frm_first_seventh,.frm_form_field.frm_last_seventh.frm_form_field.frm_eighth,.frm_submit.frm_eighth,.frm_form_field.frm_first_eighth,.frm_form_field.frm_last_eighth{grid-column: span 1/span 1;}.frm5,.frm_form_field.frm5,.frm_submit.frm5{grid-column: span 5/span 5;}.frm7,.frm_form_field.frm7,.frm_submit.frm7{grid-column: span 7/span 7;}.frm11,.frm_form_field.frm11,.frm_submit.frm11{grid-column: span 11/span 11;}.frm12,.frm_full,.frm_full .wp-editor-wrap,.frm_full input:not([type=\'checkbox\']):not([type=\'radio\']):not([type=\'button\']),.frm_full select,.frm_full textarea{width:100% !important;grid-column: span 12/span 12;box-sizing: border-box;}.frm_full .wp-editor-wrap input{width:auto !important;}.frm_first,.frm_form_field.frm_left_half,.frm_form_field.frm_left_third,.frm_form_field.frm_left_two_thirds,.frm_form_field.frm_left_fourth,.frm_form_field.frm_left_fifth,.frm_form_field.frm_left_inline,.frm_form_field.frm_first_half,.frm_form_field.frm_first_third,.frm_form_field.frm_first_two_thirds,.frm_form_field.frm_first_fourth,.frm_form_field.frm_first_fifth,.frm_form_field.frm_first_sixth,.frm_form_field.frm_first_seventh,.frm_form_field.frm_first_eighth,.frm_form_field.frm_first_inline,.frm_form_field.frm_first{grid-column-start:1;}.frm_last,.frm_form_field.frm_last,.frm_form_field.frm_alignright{grid-column-end:-1;grid-row-start: span 100;justify-content: end;}.with_frm_style.frm_rtl .frm_form_fields .star-rating{float:right;}.with_frm_style.frm_rtl .frm_grid .frm_primary_label,.with_frm_style.frm_rtl .frm_grid_first .frm_primary_label,.with_frm_style.frm_rtl .frm_grid_odd .frm_primary_label,.with_frm_style.frm_rtl .frm_grid .frm_radio,.with_frm_style.frm_rtl .frm_grid_first .frm_radio,.with_frm_style.frm_rtl .frm_grid_odd .frm_radio,.with_frm_style.frm_rtl .frm_grid .frm_checkbox,.with_frm_style.frm_rtl .frm_grid_first .frm_checkbox,.with_frm_style.frm_rtl .frm_grid_odd .frm_checkbox{float:right !important;margin-right:0 !important;}.with_frm_style.frm_rtl .frm_grid_first .frm_radio label input,.with_frm_style.frm_rtl .frm_grid .frm_radio label input,.with_frm_style.frm_rtl .frm_grid_odd .frm_radio label input,.with_frm_style.frm_rtl .frm_grid_first .frm_checkbox label input,.with_frm_style.frm_rtl .frm_grid .frm_checkbox label input,.with_frm_style.frm_rtl .frm_grid_odd .frm_checkbox label input{float:left;}.with_frm_style.frm_rtl .frm_catlevel_2,.with_frm_style.frm_rtl .frm_catlevel_3,.with_frm_style.frm_rtl .frm_catlevel_4,.with_frm_style.frm_rtl .frm_catlevel_5{margin-right:18px;}.with_frm_style.frm_rtl div > .frm_time_select{margin-right:5px;}.frm_form_field.frm_inline_container,.frm_form_field.frm_right_container,.frm_form_field.frm_left_container{display: grid;grid-template-columns: 25% auto;width:100%;grid-auto-rows: min-content;}.frm_form_field.frm_right_container{grid-template-columns: auto 25%;}.frm_form_field.frm_inline_container{grid-template-columns: repeat(2, minmax(auto, max-content) );}.frm_form_field.frm_inline_container .frm_primary_label,.frm_form_field.frm_right_container .frm_primary_label,.frm_form_field.frm_left_container .frm_primary_label{margin-right:10px;grid-row:span 2/span 2;padding-top:4px;}.frm_form_field.frm_left_container .frm_primary_label{grid-column:1;grid-row:span 2/span 2; }.frm_form_field.frm_right_container .frm_primary_label{grid-column:2;grid-row:1;margin-right:0;margin-left:10px;}.frm_form_field.frm_inline_container .frm_description,.frm_form_field.frm_left_container .frm_description{grid-column:2;}.frm_form_field.frm_right_container .frm_description{grid-column:1;}.frm_conf_field.frm_left_container{grid-template-columns: 67%;}.frm_conf_field.frm_left_container .frm_description{grid-column:1;}.frm-fade-in {-webkit-animation-name: fadeIn;animation-name: fadeIn;-webkit-animation-duration: 1s;animation-duration: 1s;-webkit-animation-fill-mode: both;animation-fill-mode: both;}@keyframes spin {0% { transform: rotate(0deg); }100% { transform: rotate(360deg); }}@keyframes fadeIn {   0% {opacity: 0;}   100% {opacity: 1;}}@media only screen and (max-width: 600px) {.frm_section_heading > .frm_form_field,.frm_fields_container > .frm_submit,.frm_grid_container > .frm_form_field,.frm_fields_container > .frm_form_field{grid-column: 1 / span 12 !important;}.frm_form_field.frm_inline_container,.frm_form_field.frm_right_container,.frm_form_field.frm_left_container{display:block;}}.frm_conf_field.frm_left_container .frm_primary_label{display:none;}.wp-editor-wrap *,.wp-editor-wrap *:after,.wp-editor-wrap *:before{-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;}.with_frm_style .frm_grid,.with_frm_style .frm_grid_first,.with_frm_style .frm_grid_odd{clear:both;margin-bottom:0 !important;padding:5px;border-width:1px;border-style:solid;border-color:#cccccc;border-left:none;border-right:none;}.with_frm_style .frm_grid,.with_frm_style .frm_grid_odd{border-top:none;}.frm_grid .frm_error,.frm_grid_first .frm_error,.frm_grid_odd .frm_error{display:none;}.frm_grid:after,.frm_grid_first:after,.frm_grid_odd:after{visibility:hidden;display:block;font-size:0;content:\" \";clear:both;height:0;}.frm_grid_first{margin-top:20px;}.frm_grid_first,.frm_grid_odd{background-color:#ffffff;}.frm_grid{background-color:#ffffff;}.frm_grid .frm_primary_label,.frm_grid_first .frm_primary_label,.frm_grid_odd .frm_primary_label,.frm_grid .frm_radio,.frm_grid_first .frm_radio,.frm_grid_odd .frm_radio,.frm_grid .frm_checkbox,.frm_grid_first .frm_checkbox,.frm_grid_odd .frm_checkbox{float:left !important;display:block;margin-top:0;margin-left:0 !important;}.frm_grid_first .frm_radio label,.frm_grid .frm_radio label,.frm_grid_odd .frm_radio label,.frm_grid_first .frm_checkbox label,.frm_grid .frm_checkbox label,.frm_grid_odd .frm_checkbox label{visibility:hidden;white-space:nowrap;text-align:left;}.frm_grid_first .frm_radio label input,.frm_grid .frm_radio label input,.frm_grid_odd .frm_radio label input,.frm_grid_first .frm_checkbox label input,.frm_grid .frm_checkbox label input,.frm_grid_odd .frm_checkbox label input{visibility:visible;margin:2px 0 0;float:right;}.frm_grid .frm_radio,.frm_grid_first .frm_radio,.frm_grid_odd .frm_radio,.frm_grid .frm_checkbox,.frm_grid_first .frm_checkbox,.frm_grid_odd .frm_checkbox{display:inline;}.frm_grid_2 .frm_radio,.frm_grid_2 .frm_checkbox,.frm_grid_2 .frm_primary_label{width:48% !important;}.frm_grid_2 .frm_radio,.frm_grid_2 .frm_checkbox{margin-right:4%;}.frm_grid_3 .frm_radio,.frm_grid_3 .frm_checkbox,.frm_grid_3 .frm_primary_label{width:30% !important;}.frm_grid_3 .frm_radio,.frm_grid_3 .frm_checkbox{margin-right:3%;}.frm_grid_4 .frm_radio,.frm_grid_4 .frm_checkbox{width:20% !important;}.frm_grid_4 .frm_primary_label{width:28% !important;}.frm_grid_4 .frm_radio,.frm_grid_4 .frm_checkbox{margin-right:4%;}.frm_grid_5 .frm_primary_label,.frm_grid_7 .frm_primary_label{width:24% !important;}.frm_grid_5 .frm_radio,.frm_grid_5 .frm_checkbox{width:17% !important;margin-right:2%;}.frm_grid_6 .frm_primary_label{width:25% !important;}.frm_grid_6 .frm_radio,.frm_grid_6 .frm_checkbox{width:14% !important;margin-right:1%;}.frm_grid_7 .frm_primary_label{width:22% !important;}.frm_grid_7 .frm_radio,.frm_grid_7 .frm_checkbox{width:12% !important;margin-right:1%;}.frm_grid_8 .frm_primary_label{width:23% !important;}.frm_grid_8 .frm_radio,.frm_grid_8 .frm_checkbox{width:10% !important;margin-right:1%;}.frm_grid_9 .frm_primary_label{width:20% !important;}.frm_grid_9 .frm_radio,.frm_grid_9 .frm_checkbox{width:9% !important;margin-right:1%;}.frm_grid_10 .frm_primary_label{width:19% !important;}.frm_grid_10 .frm_radio,.frm_grid_10 .frm_checkbox{width:8% !important;margin-right:1%;}.frm_form_field.frm_inline_container .frm_opt_container,.frm_form_field.frm_right_container .frm_opt_container,.frm_form_field.frm_left_container .frm_opt_container{padding-top:4px;}.with_frm_style .frm_inline_container.frm_grid_first .frm_primary_label,.with_frm_style .frm_inline_container.frm_grid .frm_primary_label,.with_frm_style .frm_inline_container.frm_grid_odd .frm_primary_label,.with_frm_style .frm_inline_container.frm_grid_first .frm_opt_container,.with_frm_style .frm_inline_container.frm_grid .frm_opt_container,.with_frm_style .frm_inline_container.frm_grid_odd .frm_opt_container{margin-right:0;}.frm_form_field.frm_two_col .frm_opt_container,.frm_form_field.frm_three_col .frm_opt_container,.frm_form_field.frm_four_col .frm_opt_container{display: grid;grid-template-columns: repeat(2, 1fr);grid-auto-rows: max-content;grid-gap: 0 2.5%;}.frm_form_field.frm_three_col .frm_opt_container{grid-template-columns: repeat(3, 1fr);}.frm_form_field.frm_four_col .frm_opt_container{grid-template-columns: repeat(4, 1fr);}.frm_form_field.frm_two_col .frm_radio,.frm_form_field.frm_two_col .frm_checkbox,.frm_form_field.frm_three_col .frm_radio,.frm_form_field.frm_three_col .frm_checkbox,.frm_form_field.frm_four_col .frm_radio,.frm_form_field.frm_four_col .frm_checkbox{grid-column-end: span 1;}.frm_form_field .frm_checkbox,.frm_form_field .frm_checkbox + .frm_checkbox,.frm_form_field .frm_radio,.frm_form_field .frm_radio + .frm_radio{margin-top: 0;margin-bottom: 0;}.frm_form_field.frm_scroll_box .frm_opt_container{height:100px;overflow:auto;}.frm_html_container.frm_scroll_box,.frm_form_field.frm_html_scroll_box{height:100px;overflow:auto;background-color:#ffffff;border-color:#cccccc;border-width:1px;border-style:solid;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;width:100%;max-width:100%;font-size:14px;padding:6px 10px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;outline:none;font-weight:normal;box-shadow:0 1px 1px rgba(0, 0, 0, 0.075) inset;}.frm_form_field.frm_total input,.frm_form_field.frm_total textarea{opacity:1;background-color:transparent !important;border:none !important;font-weight:bold;-moz-box-shadow:none;-webkit-box-shadow:none;width:auto !important;box-shadow:none !important;display:inline;-moz-appearance:textfield;padding:0;}.frm_form_field.frm_total input::-webkit-outer-spin-button,.frm_form_field.frm_total input::-webkit-inner-spin-button {-webkit-appearance: none;}.frm_form_field.frm_total input:focus,.frm_form_field.frm_total textarea:focus{background-color:transparent;border:none;-moz-box-shadow:none;-webkit-box-shadow:none;box-shadow:none;}.frm_form_field.frm_label_justify .frm_primary_label{text-align:justify !important;}.frm_form_field.frm_capitalize input,.frm_form_field.frm_capitalize select,.frm_form_field.frm_capitalize .frm_opt_container label{text-transform:capitalize;}.frm_clearfix:after{content:\".\";display:block;clear:both;visibility:hidden;line-height:0;height:0;}.frm_clearfix{display:block;}@font-face {font-family: \'s11-fp\';src: url(\'../fonts/s11-fp.ttf?v=7\') format(\'truetype\'),url(\'../fonts/s11-fp.woff?v=7\') format(\'woff\'),url(\'../fonts/s11-fp.svg?v=7#s11-fp\') format(\'svg\');font-weight: normal;font-style: normal;}.frmfont,.frm_icon_font,.frm_dashicon_font{text-decoration:none;text-shadow: none;font-weight:normal;display:inline-block;-webkit-font-smoothing: antialiased;-moz-osx-font-smoothing: grayscale;text-rendering: auto;line-height: 1;-moz-transition: color .1s ease-in-out, opacity .1s ease-in-out;-webkit-transition: color .1s ease-in-out, opacity .1s ease-in-out;transition: color .1s ease-in-out, opacity .1s ease-in-out;font-size: 18px;}i.frmfont,i.frm_icon_font{font-style:normal;font-variant: normal;speak: none;}.frmfont:before,select.frmfont,.frm_icon_font:before,select.frm_icon_font{font-family: \'s11-fp\' !important;text-align:center;}.frmfont,a.frmfont,.frmfont:hover,a.frmfont:hover.frm_icon_font,a.frm_icon_font,.frm_icon_font:hover,a.frm_icon_font:hover{text-decoration:none !important;box-shadow:none;}.frmfont:focus,.frm_icon_font:focus,.frm_dashicon_font:focus{box-shadow:none;-webkit-box-shadow:none;}.frmfont:active,.frm_icon_font:active{outline:none;}.frm_trigger .frm_icon_font{padding:0 5px;}.frm_logo_icon:before {content: \"\\e601\";}.frm_required_icon:before {content: \"\\e612\";}.frm_delete_icon:before {content: \"\\e610\" !important;}.frm_delete_solid_icon:before {content: \"\\e900\";}.frm_move_icon:before {content: \"\\e61a\";}.frm_drag_icon:before {content: \"\\e93b\";}.frm_clear_icon:before {content: \"\\e60a\";}.frm_noclear_icon:before {content: \"\\e60b\";}.frm_duplicate_icon:before {content: \"\\e61b\";}.frm_copy_icon:before {content: \"\\f0c5\";}.frm_clone_solid_icon:before {content: \"\\f24e\";}.frm_clone_icon:before {content: \"\\f24d\";}.frm_tooltip_icon:before {content: \"\\e611\";}.frm_tooltip_solid_icon:before {content: \"\\e907\";}.frm_forbid_icon:before {content: \"\\e636\";}.frm_checkmark_icon:before {content: \"\\e90a\";}.frm_check_icon:before {content: \"\\e605\";}.frm_check1_icon:before {content: \"\\e606\";}.frm_plus_icon:before {content: \"\\e62f\";}.frm_plus1_icon:before {content: \"\\e602\";}.frm_plus2_icon:before {content: \"\\e603\";}.frm_plus3_icon:before {content: \"\\e632\";}.frm_plus4_icon:before {content: \"\\e60f\";}.frm_minus_icon:before {content: \"\\e62e\";}.frm_minus1_icon:before {content: \"\\e600\";}.frm_minus2_icon:before {content: \"\\e604\";}.frm_minus3_icon:before {content: \"\\e633\";}.frm_minus4_icon:before {content: \"\\e613\";}.frm_cancel_icon:before {content: \"\\e607\";}.frm_cancel1_icon:before {content: \"\\e608\";}.frm_close_icon:before {content: \"\\e928\";}.frm_report_problem_solid_icon:before {content: \"\\e914\";}.frm_report_problem_icon:before {content: \"\\e915\";}.frm_arrowup_icon:before {content: \"\\e60d\";}.frm_arrowup1_icon:before {content: \"\\e60e\";}.frm_arrowup2_icon:before {content: \"\\e630\";}.frm_arrowup3_icon:before {content: \"\\e62b\";}.frm_arrowup4_icon:before {content: \"\\e62c\";}.frm_arrowup5_icon:before {content: \"\\e635\";}.frm_arrowup5_solid_icon:before {content: \"\\e9d\";}.frm_arrowup7_icon:before {content: \"\\e908\";}.frm_arrowup6_icon:before {content: \"\\e62d\";}.frm_arrowdown_icon:before {content: \"\\e609\";}.frm_arrowdown1_icon:before {content: \"\\e60c\";}.frm_arrowdown2_icon:before {content: \"\\e631\";}.frm_arrowdown3_icon:before {content: \"\\e628\";}.frm_arrowdown4_icon:before {content: \"\\e629\";}.frm_arrowdown5_icon:before {content: \"\\e634\";}.frm_arrowdown5_solid_icon:before {content: \"\\e905\";}.frm_arrowdown7_icon:before {content: \"\\e90b\";}.frm_arrowdown6_icon:before {content: \"\\e62a\";}.frm_arrow_left_icon:before {content: \"\\e912\";}.frm_arrow_right_icon:before {content: \"\\e913\";}.frm_filter_icon:before {content: \"\\e90c\";}.frm_download_icon:before {content: \"\\e615\";}.frm_upload2_icon:before {content: \"\\f093\";}.frm_upload_icon:before {content: \"\\e616\";}.frm_download2_icon:before {content: \"\\f019\";}.frm_hard_drive_icon:before {content: \"\\e916\";}.frm_pencil_solid_icon:before {content: \"\\e901\";}.frm_pencil_icon:before {content: \"\\e61d\";}.frm_signature_icon:before {content: \"\\e919\";}.frm_user_icon:before {content: \"\\e7ff\";}.frm_register_icon:before {content: \"\\e637\";}.frm_account_circle_solid_icon:before {content: \"\\e853\";}.frm_account_circle_icon:before {content: \"\\e921\";}.frm_address_card_icon:before {content: \"\\e996\";}.frm_paragraph_icon:before {content: \"\\f1dd\";}.frm_checkbox_unchecked_icon:before {content: \"\\e91e\";}.frm_checkbox_icon:before {content: \"\\e922\";}.frm_checkbox_solid_icon:before {content: \"\\e91f\";}.frm_dropdown_icon:before {content: \"\\e909\";}.frm_caret_square_down_icon:before {content: \"\\f150\";}.frm_check_square_icon:before {content: \"\\f14a\";}.frm_radio_unchecked_icon:before {content: \"\\e971\";}.frm_radio_checked_icon:before {content: \"\\ea54\";}.frm_scrubber_icon:before {content: \"\\f2f8\";}.frm_location_solid_icon:before {content: \"\\e955\";}.frm_location_icon:before {content: \"\\e947\";}.frm_toggle_on_icon:before {content: \"\\f205\";}.frm_toggle_off_icon:before {content: \"\\f204\";}.frm_shield_check_icon:before {content: \"\\f2f7\";}.frm_shield_check_solid_icon:before {content: \"\\e97d\";}.frm_clock_icon:before {content: \"\\e929\";}.frm_clock_solid_icon:before {content: \"\\e985\";}.frm_link_icon:before {content: \"\\f0c1\";}.frm_email_icon:before {content: \"\\e626\";}.frm_email_solid_icon:before {content: \"\\f0e0\";}.frm_mail_bulk_icon:before {content: \"\\e95c\";}.frm_phone_icon:before {content: \"\\e942\";}.frm_calendar_icon:before {content: \"\\f073\";}.frm_code_icon:before {content: \"\\e90d\";}.frm_tag_icon:before {content: \"\\e98b\";}.frm_tag_solid_icon:before {content: \"\\e989\";}.frm_price_tags_icon:before {content: \"\\e936\";}.frm_search_icon:before {content: \"\\e978\";}.frm_sitemap_icon:before {content: \"\\f0e8\";}.frm_file_icon:before {content: \"\\f15b\";}.frm_file_text_solid_icon:before {content: \"\\f15c\";}.frm_file_text_icon:before {content: \"\\e923\";}.frm-option-icon:before, .frm_option_icon:before {content: \"\\e904\";}.frm_option_solid_icon:before {content: \"\\e906\";}.frm_more_horiz_icon:before {content: \"\\e5d3\";}.frm_more_vert_icon:before {content: \"\\e5d4\";}.frm_more_horiz_solid_icon {font-size: 28px !important;font-weight: bold;line-height: 18px;}.frm_more_horiz_solid_icon:before {content: \"\\00B7\\00B7\\00B7\";}.frm_more_vert_solid_icon:before {content: \"\\f142\";}.frm_calculator_icon:before {content: \"\\f1ec\";}.frm_key_icon:before {content: \"\\f084\";}.frm_keyalt_solid_icon:before {content: \"\\e986\";}.frm_keyalt_icon:before {content: \"\\e987\";}.frm_keyboard_icon:before {content: \"\\e924\";}.frm_eye_icon:before {content: \"\\f06e\";}.frm_eye_solid_icon:before {content: \"\\e945\";}.frm_eye_slash_icon:before {content: \"\\f070\";}.frm_eye_slash_solid_icon:before {content: \"\\e949\";}.frm_page_break_icon:before {content: \"\\e8e9\";}.frm_view_day_icon:before {content: \"\\e8ed\";}.frm_attach_file_icon:before {content: \"\\e226\";}.frm_printer_icon:before {content: \"\\e926\";}.frm_header_icon:before {content: \"\\f1dc\";}.frm_h1_icon:before {content: \"\\e94c\";}.frm_repeat_icon:before {content: \"\\f363\";}.frm_repeater_icon:before {content: \"\\e974\";}.frm_hashtag_icon:before {content: \"\\e292\";}.frm_save_icon:before {content: \"\\e927\";}.frm_sliders_icon:before {content: \"\\f1de\";}.frm_code_commit_icon:before {content: \"\\f386\";}.frm_star_icon:before {content: \"\\e9d7\";}.frm_star_full_icon:before {content: \"\\e9d9\";}.frm_star_half_icon:before {content: \"\\e9d8\";}.frm_linear_scale_icon:before {content: \"\\e260\";}.frm_pie_chart_icon:before {content: \"\\e99a\";}.frm_stats_bars_icon:before {content: \"\\e99c\";}.frm_sms_icon:before {content: \"\\e61c\";}.frm_highrise_icon:before {content: \"\\e617\";}.frm_mailchimp_icon:before {content: \"\\e622\";}.frm_feed_icon:before {content: \"\\e624\";}.frm_align_right_icon:before {content: \"\\e90f\";}.frm_align_left_icon:before {content: \"\\e910\";}.frm_button_icon:before {content: \"\\e911\";}.frm_browser_icon:before {content: \"\\e925\";}.frm_cloud_download_solid_icon:before {content: \"\\e92a\";}.frm_cloud_download_icon:before {content: \"\\e92b\";}.frm_cloud_upload_solid_icon:before {content: \"\\e92c\";}.frm_cloud_upload_icon:before {content: \"\\e92d\";}.frm_cloud_solid_icon:before {content: \"\\e92e\";}.frm_cloud_icon:before {content: \"\\e92f\";}.frm_shuffle_icon:before {content: \"\\e917\";}.frm_swap_icon:before {content: \"\\e918\";}.frm_dropper_solid_icon:before {content: \"\\e93c\";}.frm_tint_icon:before {content: \"\\e93e\";}.frm_pallet_solid_icon:before {content: \"\\e96c\";}.frm_pallet_icon:before {content: \"\\e96d\";}.frm_fingerprint_icon:before {content: \"\\e94a\";}.frm_ghost_icon:before {content: \"\\e94b\";}.frm_heart_solid_icon:before {content: \"\\e94d\";}.frm_heart_icon:before {content: \"\\e94e\";}.frm_history_icon:before {content: \"\\e94f\";}.frm_import_icon:before {content: \"\\e91a\";}.frm_export_icon:before {content: \"\\e91b\";}.frm_label_solid_icon:before {content: \"\\e952\";}.frm_label_icon:before {content: \"\\e953\";}.frm_lock_open_icon:before {content: \"\\e957\";}.frm_lock_solid_icon:before {content: \"\\e958\";}.frm_lock_icon:before {content: \"\\e959\";}.frm_magic_wand_icon:before {content: \"\\e997\";}.frm_dollar_sign_icon:before {content: \"\\e91c\";}.frm_percent_icon:before {content: \"\\e939\";}.frm_notification_solid_icon:before {content: \"\\e964\";}.frm_notification_icon:before {content: \"\\e965\";}.frm_external_link_icon:before {content: \"\\e966\";}.frm_pageview_solid_icon:before {content: \"\\e96a\";}.frm_pageview_icon:before {content: \"\\e96b\";}.frm_settings_solid_icon:before {content: \"\\e979\";}.frm_settings_icon:before {content: \"\\e97a\";}.frm_stamp_icon:before {content: \"\\e980\";}.frm_support_icon:before {content: \"\\f1cd\";}.frm_text_solid_icon:before {content: \"\\e98c\";}.frm_text_icon:before {content: \"\\e98d\";}.frm_text2_icon:before {content: \"\\f031\";}.frm_text3_icon:before {content: \"\\e98e\";}.frm_unfold_less_icon:before {content: \"\\e993\";}.frm_unfold_more_icon:before {content: \"\\e994\";}.frm_work_solid_icon:before {content: \"\\e999\";}.frm_work_icon:before {content: \"\\e99e\";}.frm_white_label_icon:before {content: \"\\e91d\" !important;}.frm_zoom_out_icon:before {content: \"\\e99f\";}.frm_maximize_icon:before {content: \"\\e920\";}.frm_minimize_icon:before {content: \"\\e93a\";}.frm_authorize_icon:before {content: \"\\e903\";}.frm_icon_font.frm_activecampaign_icon {background-image: none;}.frm_activecampaign_icon:before {content: \"\\e930\";}.frm_aweber_icon:before {content: \"\\e627\";}.frm_campaignmonitor_icon:before {content: \"\\e946\";}.frm_constant_contact_icon:before {content: \"\\e931\";}.frm_getresponse_icon:before {content: \"\\e932\";}.frm_googlesheets_icon:before {content: \"\\e944\";}.frm_building_icon:before {content: \"\\e93f\";}.frm_hubspot_icon:before {content: \"\\e933\";}.frm_icontact_icon:before {content: \"\\e940\";}.frm_icon_font.frm_mailpoet_icon:before {content: \"\\e934\";}.frm_paypal_icon:before {content: \"\\e61f\";}.frm_sendinblue_icon:before {content: \"\\e943\";}.frm_sendy_icon:before {content: \"\\e941\";}.frm_salesforce_icon:before {content: \"\\e935\";}.frm_salesforcealt_icon:before {content: \"\\e937\";}.frm_stripe_icon:before {content: \"\\e902\";}.frm_stripealt_icon:before {content: \"\\e93d\";}.frm_twilio_icon:before {content: \"\\e620\";}.frm_woocommerce_icon:before {content: \"\\e90e\";}.frm_wordpress_icon:before {content: \"\\f19a\";}.frm_credit_card_icon:before {content: \"\\e938\";}.frm_credit-card-alt_icon:before, .frm_credit_card_alt_icon:before {content: \"\\f283\";}.frm_cc_amex_icon:before {content: \"\\f1f3\";}.frm_cc_discover_icon:before {content: \"\\f1f2\";}.frm_cc_mastercard_icon:before {content: \"\\f1f1\";}.frm_cc_visa_icon:before {content: \"\\f1f0\";}.frm_cc_paypal_icon:before {content: \"\\f1f4\";}.frm_cc_stripe_icon:before {content: \"\\f1f5\";}@media only screen and (max-width: 900px) {.frm_form_field .frm_repeat_grid .frm_form_field.frm_sixth .frm_primary_label,.frm_form_field .frm_repeat_grid .frm_form_field.frm_seventh .frm_primary_label,.frm_form_field .frm_repeat_grid .frm_form_field.frm_eighth .frm_primary_label{display: block !important;}}@media only screen and (max-width: 600px) {.frm_form_field.frm_four_col .frm_opt_container{grid-template-columns: repeat(2, 1fr);}}@media only screen and (max-width: 500px) {.frm_form_field.frm_two_col .frm_radio,.frm_form_field.frm_two_col .frm_checkbox,.frm_form_field.frm_three_col .frm_radio,.frm_form_field.frm_three_col .frm_checkbox{width: auto;margin-right: 0;float: none;display:block;}.frm_form_field input[type=file] {max-width:220px;}.with_frm_style .frm-g-recaptcha > div > div,.with_frm_style .g-recaptcha > div > div{width:inherit !important;display:block;overflow:hidden;max-width:302px;border-right:1px solid #d3d3d3;border-radius:4px;box-shadow:2px 0px 4px -1px rgba(0,0,0,.08);-moz-box-shadow:2px 0px 4px -1px rgba(0,0,0,.08);}.with_frm_style .g-recaptcha iframe,.with_frm_style .frm-g-recaptcha iframe{width:100%;}}.with_frm_style .frm_form_field{clear:both;}.frm_form_field,.frm_form_field.frm_inline_container,.frm_form_field.frm_right_container,.frm_form_field.frm_left_container{width:auto;}.frm_inline_form .frm_form_field.form-field{margin-right:2.5%;display:inline-block;}.frm_inline_form .frm_submit{display:inline-block;}.frm_form_field.frm2,.frm_submit.frm2,.frm_form_field.frm3,.frm_submit.frm3,.frm_form_field.frm4,.frm_submit.frm4,.frm_form_field.frm6,.frm_submit.frm6,.frm_form_field.frm8,.frm_submit.frm8,.frm_form_field.frm9,.frm_submit.frm9,.frm_form_field.frm10,.frm_submit.frm10,.frm_form_field.frm_right_half,.frm_form_field.frm_right_third,.frm_form_field.frm_right_two_thirds,.frm_form_field.frm_right_fourth,.frm_form_field.frm_right_fifth,.frm_form_field.frm_right_inline,.frm_form_field.frm_last_half,.frm_form_field.frm_last_third,.frm_form_field.frm_last_two_thirds,.frm_form_field.frm_last_fourth,.frm_form_field.frm_last_fifth,.frm_form_field.frm_last_sixth,.frm_form_field.frm_last_seventh,.frm_form_field.frm_last_eighth,.frm_form_field.frm_last_inline,.frm_form_field.frm_last,.frm_form_field.frm_half,.frm_submit.frm_half,.frm_form_field.frm_third,.frm_submit.frm_third,.frm_form_field.frm_two_thirds,.frm_form_field.frm_fourth,.frm_submit.frm_fourth,.frm_form_field.frm_three_fourths,.frm_form_field.frm_fifth,.frm_submit.frm_fifth,.frm_form_field.frm_two_fifths,.frm_form_field.frm_three_fifths,.frm_form_field.frm_four_fifths,.frm_form_field.frm_sixth,.frm_submit.frm_sixth,.frm_form_field.frm_seventh,.frm_submit.frm_seventh,.frm_form_field.frm_eighth,.frm_submit.frm_eighth,.frm_form_field.frm_inline,.frm_submit.frm_inline{clear:none;float:left;margin-left:2.5%;}.frm_form_field.frm_left_half,.frm_form_field.frm_left_third,.frm_form_field.frm_left_two_thirds,.frm_form_field.frm_left_fourth,.frm_form_field.frm_left_fifth,.frm_form_field.frm_left_inline,.frm_form_field.frm_first_half,.frm_form_field.frm_first_third,.frm_form_field.frm_first_two_thirds,.frm_form_field.frm_first_fourth,.frm_form_field.frm_first_fifth,.frm_form_field.frm_first_sixth,.frm_form_field.frm_first_seventh,.frm_form_field.frm_first_eighth,.frm_form_field.frm_first_inline,.frm_form_field.frm_first{clear:left;float:left;margin-left:0;}.frm_form_field.frm6,.frm_submit.frm6,.frm_form_field.frm_left_half,.frm_form_field.frm_right_half,.frm_form_field.frm_first_half,.frm_form_field.frm_last_half,.frm_form_field.frm_half,.frm_submit.frm_half{width:48.75%;}.frm_form_field.frm4,.frm_submit.frm4,.frm_form_field.frm_left_third,.frm_form_field.frm_third,.frm_submit.frm_third,.frm_form_field.frm_right_third,.frm_form_field.frm_first_third,.frm_form_field.frm_last_third{width:31.66%;}.frm_form_field.frm8,.frm_submit.frm8,.frm_form_field.frm_left_two_thirds,.frm_form_field.frm_right_two_thirds,.frm_form_field.frm_first_two_thirds,.frm_form_field.frm_last_two_thirds,.frm_form_field.frm_two_thirds{width:65.82%;}.frm_form_field.frm3,.frm_submit.frm3,.frm_form_field.frm_left_fourth,.frm_form_field.frm_fourth,.frm_submit.frm_fourth,.frm_form_field.frm_right_fourth,.frm_form_field.frm_first_fourth,.frm_form_field.frm_last_fourth{width:23.12%;}.frm_form_field.frm9,.frm_form_field.frm_three_fourths{width:74.36%;}.frm_form_field.frm_left_fifth,.frm_form_field.frm_fifth,.frm_submit.frm_fifth,.frm_form_field.frm_right_fifth,.frm_form_field.frm_first_fifth,.frm_form_field.frm_last_fifth{width:18%;}.frm_form_field.frm_two_fifths {width:38.5%;}.frm_form_field.frm_three_fifths {width:59%;}.frm_form_field.frm_four_fifths {width:79.5%;}.frm_form_field.frm2,.frm_submit.frm2,.frm_form_field.frm_sixth,.frm_submit.frm_sixth,.frm_form_field.frm_first_sixth,.frm_form_field.frm_last_sixth{width:14.58%;}.frm_form_field.frm10,.frm_submit.frm10{width:82.92%;}.frm_form_field.frm_seventh,.frm_submit.frm_seventh,.frm_form_field.frm_first_seventh,.frm_form_field.frm_last_seventh{width:12.14%;}.frm_form_field.frm_eighth,.frm_submit.frm_eighth,.frm_form_field.frm_first_eighth,.frm_form_field.frm_last_eighth{width:10.31%;}.frm_form_field.frm_left_inline,.frm_form_field.frm_first_inline,.frm_form_field.frm_inline,.frm_submit.frm_inline,.frm_form_field.frm_right_inline,.frm_form_field.frm_last_inline{width:auto;}.frm_full,.frm_full .wp-editor-wrap,.frm_full input:not([type=\'checkbox\']):not([type=\'radio\']):not([type=\'button\']),.frm_full select,.frm_full textarea{width:100% !important;}.frm_full .wp-editor-wrap input{width:auto !important;}.frm_form_field.frm_inline_container,.frm_form_field.frm_right_container,.frm_form_field.frm_left_container,.frm_combo_inputs_container,.frm_grid_container,.frm_form_fields .frm_section_heading,.frm_form_fields .frm_fields_container,.frm_form_field.frm_two_col .frm_opt_container,.frm_form_field.frm_three_col .frm_opt_container,.frm_form_field.frm_four_col .frm_opt_container{display:block;}.frm_form_field.frm_left_container .frm_primary_label{float:left;display:inline;max-width:33%;margin-right:5%;}.with_frm_style .frm_conf_field.frm_left_container .frm_primary_label{display:inline;visibility:hidden;}.frm_form_field.frm_left_container input:not([type=radio]):not([type=checkbox]),.frm_form_field.frm_left_container:not(.frm_dynamic_select_container) select,.frm_form_field.frm_left_container textarea,.frm_form_field.frm_left_container .wp-editor-wrap,.frm_form_field.frm_left_container .frm_opt_container,.frm_form_field.frm_left_container .frm_dropzone,.frm_form_field.frm_left_container .frm-g-recaptcha,.frm_form_field.frm_left_container .g-recaptcha,.frm_form_field.frm_left_container .chosen-container,.frm_form_field.frm_left_container .frm_combo_inputs_container,.frm_form_field.frm_right_container input:not([type=radio]):not([type=checkbox]),.frm_form_field.frm_right_container:not(.frm_dynamic_select_container) select,.frm_form_field.frm_right_container textarea,.frm_form_field.frm_right_container .wp-editor-wrap,.frm_form_field.frm_right_container .frm_opt_container,.frm_form_field.frm_right_container .frm_dropzone,.frm_form_field.frm_right_container .frm-g-recaptcha,.frm_form_field.frm_right_container .g-recaptcha,.frm_form_field.frm_right_container .chosen-container,.frm_form_field.frm_right_container .frm_combo_inputs_container{max-width:62%;}.frm_form_field.frm_left_container .frm_combo_inputs_container input,.frm_form_field.frm_left_container .frm_combo_inputs_container select,.frm_form_field.frm_right_container .frm_combo_inputs_container input,.frm_form_field.frm_right_container .frm_combo_inputs_container select{max-width:100%;}.frm_form_field.frm_left_container .frm_data_container,.frm_form_field.frm_right_container .frm_data_container,.frm_form_field.frm_inline_container .frm_data_container,.frm_form_field.frm_left_container .frm_opt_container,.frm_form_field.frm_right_container .frm_opt_container,.frm_form_field.frm_inline_container .frm_opt_container,.frm_form_field.frm_left_container .frm_combo_inputs_container,.frm_form_field.frm_right_container .frm_combo_inputs_container,.frm_form_field.frm_inline_container .frm_combo_inputs_container,.frm_form_field.frm_left_container .wp-editor-wrap,.frm_form_field.frm_right_container .wp-editor-wrap,.frm_form_field.frm_inline_container .wp-editor-wrap,.frm_form_field.frm_left_container .frm_dropzone,.frm_form_field.frm_right_container .frm_dropzone,.frm_form_field.frm_inline_container .frm_dropzone,.frm_form_field.frm_left_container .frm-g-recaptcha,.frm_form_field.frm_right_container .frm-g-recaptcha,.frm_form_field.frm_inline_container .frm-g-recaptcha,.frm_form_field.frm_left_container .g-recaptcha,.frm_form_field.frm_right_container .g-recaptcha,.frm_form_field.frm_inline_container .g-recaptcha{display:inline-block;}.frm_form_field.frm_left_half.frm_left_container .frm_primary_label,.frm_form_field.frm_right_half.frm_left_container .frm_primary_label,.frm_form_field.frm_left_half.frm_right_container .frm_primary_label,.frm_form_field.frm_right_half.frm_right_container .frm_primary_label,.frm_form_field.frm_first_half.frm_left_container .frm_primary_label,.frm_form_field.frm_last_half.frm_left_container .frm_primary_label,.frm_form_field.frm_first_half.frm_right_container .frm_primary_label,.frm_form_field.frm_last_half.frm_right_container .frm_primary_label,.frm_form_field.frm_half.frm_right_container .frm_primary_label,.frm_form_field.frm_half.frm_left_container .frm_primary_label{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;max-width:33%;}.with_frm_style .frm_left_container .frm_primary_label{float:left;display:inline !important;width:150px;max-width:33% !important;margin-right:10px !important;}.with_frm_style .frm_right_container .frm_primary_label{display:inline !important;width:150px;max-width:33% !important;margin-left:10px !important;}.with_frm_style .frm_form_field.frm_left_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_left_container:not(.frm_dynamic_select_container) select,.with_frm_style .frm_form_field.frm_left_container textarea,.with_frm_style .frm_form_field.frm_left_container .frm_opt_container,.with_frm_style .frm_form_field.frm_left_container .frm-g-recaptcha,.with_frm_style .frm_form_field.frm_left_container .g-recaptcha,.with_frm_style .frm_form_field.frm_left_container .chosen-container,.with_frm_style .frm_form_field.frm_right_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_right_container:not(.frm_dynamic_select_container) select,.with_frm_style .frm_form_field.frm_right_container textarea,.with_frm_style .frm_form_field.frm_right_container .frm_opt_container,.with_frm_style .frm_form_field.frm_right_container .g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .frm-g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .chosen-container{max-width:62% !important;}.with_frm_style .frm_form_field.frm_left_container .frm_combo_inputs_container .frm_form_field input,.with_frm_style .frm_form_field.frm_left_container .frm_combo_inputs_container .frm_form_field select,.with_frm_style .frm_form_field.frm_right_container .frm_combo_inputs_container .frm_form_field input,.with_frm_style .frm_form_field.frm_right_container .frm_combo_inputs_container .frm_form_field select{max-width:100% !important;}.with_frm_style .frm_form_field.frm_left_container .frm_opt_container,.with_frm_style .frm_form_field.frm_right_container .frm_opt_container,.with_frm_style .frm_form_field.frm_left_container .g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .g-recaptcha,.with_frm_style .frm_form_field.frm_left_container .frm-g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .frm-g-recaptcha{display:inline-block !important;}.with_frm_style .frm_left_container > p.description::before,.with_frm_style .frm_left_container > div.description::before,.with_frm_style .frm_left_container > div.frm_description::before,.with_frm_style .frm_left_container > .frm_error::before,.with_frm_style .frm_right_container > p.description::after,.with_frm_style .frm_right_container > div.description::after,.with_frm_style .frm_right_container > div.frm_description::after,.with_frm_style .frm_right_container > .frm_error::after{content:\'\' !important;display:inline-block !important;width:150px;max-width:33% !important;margin-right:10px !important;}.with_frm_style .frm_left_container.frm_inline .frm_primary_label{max-width:90% !important;}.with_frm_style .form-field.frm_col_field{clear:none;float:left;margin-right:20px;}.with_frm_style .form-field.frm_col_field div.frm_description{width:auto;max-width:100%;}.with_frm_style .frm_inline_container .frm_primary_label,.with_frm_style .frm_inline_container.frm_dynamic_select_container .frm_opt_container{display:inline !important;}.with_frm_style .frm_inline_container .frm_primary_label{margin-right:10px !important;}.frm_form_field.frm_two_col .frm_radio,.frm_form_field.frm_three_col .frm_radio,.frm_form_field.frm_four_col .frm_radio,.frm_form_field.frm_two_col .frm_checkbox,.frm_form_field.frm_three_col .frm_checkbox,.frm_form_field.frm_four_col .frm_checkbox{float:left;}.frm_form_field.frm_two_col .frm_radio,.frm_form_field.frm_two_col .frm_checkbox{width:48%;margin-right:4%;}.frm_form_field.frm_three_col .frm_radio,.frm_form_field.frm_three_col .frm_checkbox{width:30%;margin-right:5%;}.frm_form_field.frm_four_col .frm_radio,.frm_form_field.frm_four_col .frm_checkbox{width:22%;margin-right:4%;}.frm_form_field.frm_two_col .frm_radio:nth-child(2n+2),.frm_form_field.frm_two_col .frm_checkbox:nth-child(2n+2),.frm_form_field.frm_three_col .frm_radio:nth-child(3n+3),.frm_form_field.frm_three_col .frm_checkbox:nth-child(3n+3),.frm_form_field.frm_four_col .frm_radio:nth-child(4n+4),.frm_form_field.frm_four_col .frm_checkbox:nth-child(4n+4){margin-right:0;}.with_frm_style.frm_rtl .frm_form_field.frm2,.with_frm_style.frm_rtl .frm_form_field.frm3,.with_frm_style.frm_rtl .frm_form_field.frm4,.with_frm_style.frm_rtl .frm_form_field.frm6,.with_frm_style.frm_rtl .frm_form_field.frm8,.with_frm_style.frm_rtl .frm_form_field.frm9,.with_frm_style.frm_rtl .frm_form_field.frm10,.with_frm_style.frm_rtl .frm_form_field.frm_half,.with_frm_style.frm_rtl .frm_form_field.frm_third,.with_frm_style.frm_rtl .frm_form_field.frm_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_sixth,.with_frm_style.frm_rtl .frm_form_field.frm_seventh,.with_frm_style.frm_rtl .frm_form_field.frm_eighth,.with_frm_style.frm_rtl .frm_form_field.frm_inline,.with_frm_style.frm_rtl .frm_form_field.frm_left_half,.with_frm_style.frm_rtl .frm_form_field.frm_left_third,.with_frm_style.frm_rtl .frm_form_field.frm_left_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_left_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_left_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_left_inline,.with_frm_style.frm_rtl .frm_form_field.frm_first_half,.with_frm_style.frm_rtl .frm_form_field.frm_first_third,.with_frm_style.frm_rtl .frm_form_field.frm_first_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_first_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_first_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_first_inline,.with_frm_style.frm_rtl .frm_form_field.frm_right_half,.with_frm_style.frm_rtl .frm_form_field.frm_right_third,.with_frm_style.frm_rtl .frm_form_field.frm_right_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_right_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_right_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_right_inline,.with_frm_style.frm_rtl .frm_form_field.frm_last_half,.with_frm_style.frm_rtl .frm_form_field.frm_last_third,.with_frm_style.frm_rtl .frm_form_field.frm_last_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_last_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_last_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_last_inline{float:right;margin-right:2.5%;margin-left:0;clear:none;}.with_frm_style.frm_rtl .frm_form_field.frm_left_half,.with_frm_style.frm_rtl .frm_form_field.frm_first_half,.with_frm_style.frm_rtl .frm_form_field.frm_first,.with_frm_style.frm_rtl .frm_form_field.frm_left_third,.with_frm_style.frm_rtl .frm_form_field.frm_first_third,.with_frm_style.frm_rtl .frm_form_field.frm_first_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_left_two_thirds,.with_frm_style.frm_rtl .frm_form_field.frm_first_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_left_fourth,.with_frm_style.frm_rtl .frm_form_field.frm_left_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_first_fifth,.with_frm_style.frm_rtl .frm_form_field.frm_left_inline,.with_frm_style.frm_rtl .frm_form_field.frm_first_inline{clear:right;margin-right:0;}.with_frm_style.frm_rtl .frm_form_field.frm_two_col .frm_radio,.with_frm_style.frm_rtl .frm_form_field.frm_three_col .frm_radio,.with_frm_style.frm_rtl .frm_form_field.frm_four_col .frm_radio,.with_frm_style.frm_rtl .frm_form_field.frm_two_col .frm_checkbox,.with_frm_style.frm_rtl .frm_form_field.frm_three_col .frm_checkbox,.with_frm_style.frm_rtl .frm_form_field.frm_four_col .frm_checkbox{float:right;}@media only screen and (max-width: 500px) {.with_frm_style .frm_form_field.frm_left_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_left_container:not(.frm_dynamic_select_container) select,.with_frm_style .frm_form_field.frm_left_container textarea,.with_frm_style .frm_form_field.frm_left_container .frm_opt_container,.with_frm_style .frm_form_field.frm_left_container .frm-g-recaptcha,.with_frm_style .frm_form_field.frm_left_container .g-recaptcha,.with_frm_style .frm_form_field.frm_left_container .chosen-container,.with_frm_style .frm_form_field.frm_right_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_right_container:not(.frm_dynamic_select_container) select,.with_frm_style .frm_form_field.frm_right_container textarea,.with_frm_style .frm_form_field.frm_right_container .frm_opt_container,.with_frm_style .frm_form_field.frm_right_container .frm-g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .g-recaptcha,.with_frm_style .frm_form_field.frm_right_container .chosen-container{max-width:100% !important;}.with_frm_style .frm_left_container > p.description::before,.with_frm_style .frm_left_container > div.description::before,.with_frm_style .frm_left_container > div.frm_description::before,.with_frm_style .frm_left_container > .frm_error::before,.with_frm_style .frm_right_container > p.description::after,.with_frm_style .frm_right_container > div.description::after,.with_frm_style .frm_right_container > div.frm_description::after,.with_frm_style .frm_right_container > .frm_error::after{display:none !important;}.with_frm_style .frm_left_container .frm_primary_label,.with_frm_style .frm_right_container .frm_primary_label{width:100% !important;max-width:100% !important;margin-right:0 !important;margin-left:0 !important;padding-right:0 !important;padding-left:0 !important;}}@media only screen and (max-width: 600px){.with_frm_style .frm_form_field.frm_half.frm_left_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_half.frm_left_container select,.with_frm_style .frm_form_field.frm_half.frm_left_container textarea,.with_frm_style .frm_form_field.frm_half.frm_left_container .frm_opt_container,.with_frm_style .frm_form_field.frm_half.frm_left_container.frm-g-recaptcha,.with_frm_style .frm_form_field.frm_half.frm_left_container.g-recaptcha,.with_frm_style .frm_form_field.frm_half.frm_left_container .chosen-container,.with_frm_style .frm_form_field.frm_half.frm_right_container input:not([type=radio]):not([type=checkbox]),.with_frm_style .frm_form_field.frm_half.frm_right_container select,.with_frm_style .frm_form_field.frm_half.frm_right_container textarea,.with_frm_style .frm_form_field.frm_half.frm_right_container .frm_opt_container,.with_frm_style .frm_form_field.frm_half.frm_right_container.frm-g-recaptcha,.with_frm_style .frm_form_field.frm_half.frm_right_container.g-recaptcha,.with_frm_style .frm_form_field.frm_half.frm_right_container .chosen-container{max-width:100% !important;}.with_frm_style .frm_form_field.frm_left_half.frm_left_container .frm_primary_label,.with_frm_style .frm_form_field.frm_right_half.frm_left_container .frm_primary_label,.with_frm_style .frm_form_field.frm_first_half.frm_left_container .frm_primary_label,.with_frm_style .frm_form_field.frm_last_half.frm_left_container .frm_primary_label,.with_frm_style .frm_form_field.frm_half.frm_left_container .frm_primary_label,.with_frm_style .frm_form_field.frm_left_half.frm_right_container .frm_primary_label,.with_frm_style .frm_form_field.frm_right_half.frm_right_container .frm_primary_label,.with_frm_style .frm_form_field.frm_first_half.frm_right_container .frm_primary_label,.with_frm_style .frm_form_field.frm_last_half.frm_right_container .frm_primary_label,.with_frm_style .frm_form_field.frm_half.frm_right_container .frm_primary_label{max-width:100% !important;margin-right:0;margin-left:0;padding-right:0;padding-left:0;width:100% !important;}.with_frm_style .frm_repeat_inline,.with_frm_style .frm_repeat_grid{margin: 20px 0;}.with_frm_style .frm_form_field.frm_first_half.frm_right_container div.frm_description,.with_frm_style .frm_form_field.frm_first_half.frm_right_container .frm_error,.with_frm_style .frm_form_field.frm_first_half .frm_right_container div.frm_description,.with_frm_style .frm_form_field.frm_first_half .frm_right_container .frm_error,.with_frm_style .frm_form_field.frm_last_half.frm_right_container div.frm_description,.with_frm_style .frm_form_field.frm_last_half.frm_right_container .frm_error,.with_frm_style .frm_form_field.frm_half.frm_right_container div.frm_description,.with_frm_style .frm_form_field.frm_half.frm_right_container .frm_error,.with_frm_style .frm_form_field.frm_first_half.frm_left_container div.frm_description,.with_frm_style .frm_form_field.frm_first_half.frm_left_container .frm_error,.with_frm_style .frm_form_field.frm_first_half .frm_left_container div.frm_description,.with_frm_style .frm_form_field.frm_first_half .frm_left_container .frm_error,.with_frm_style .frm_form_field.frm_last_half.frm_left_container div.frm_description,.with_frm_style .frm_form_field.frm_last_half.frm_left_container .frm_error,.with_frm_style .frm_form_field.frm_half.frm_left_container div.frm_description,.with_frm_style .frm_form_field.frm_half.frm_left_container .frm_error{margin-right:0;margin-left:0;padding-right:0;padding-left:0;}.frm_form_field.frm2,.frm_submit.frm2,.frm_form_field.frm3,.frm_submit.frm3,.frm_form_field.frm4,.frm_submit.frm4,.frm_form_field.frm6,.frm_submit.frm6,.frm_form_field.frm8,.frm_submit.frm8,.frm_form_field.frm9,.frm_submit.frm9,.frm_form_field.frm10,.frm_submit.frm10,.frm_form_field.frm_half,.frm_submit.frm_half,.frm_form_field.frm_left_half,.frm_form_field.frm_right_half,.frm_form_field.frm_first_half,.frm_form_field.frm_last_half,.frm_form_field.frm_first_third,.frm_form_field.frm_third,.frm_submit.frm_third,.frm_form_field.frm_last_third,.frm_form_field.frm_first_two_thirds,.frm_form_field.frm_last_two_thirds,.frm_form_field.frm_two_thirds,.frm_form_field.frm_left_fourth,.frm_form_field.frm_fourth,.frm_submit.frm_fourth,.frm_form_field.frm_right_fourth,.frm_form_field.frm_first_fourth,.frm_form_field.frm_last_fourth,.frm_form_field.frm_three_fourths,.frm_form_field.frm_fifth,.frm_submit.frm_fifth,.frm_form_field.frm_two_fifths,.frm_form_field.frm_three_fifths,.frm_form_field.frm_four_fifths,.frm_form_field.frm_sixth,.frm_submit.frm_sixth,.frm_form_field.frm_seventh,.frm_submit.frm_seventh,.frm_form_field.frm_eighth,.frm_submit.frm_eighth,.frm_form_field.frm_first_inline,.frm_form_field.frm_inline,.frm_submit.frm_inline,.frm_form_field.frm_last_inline{width:100%;margin-left:0;margin-right:0;clear:both;float:none;}.frm_form_field.frm_four_col .frm_radio,.frm_form_field.frm_four_col .frm_checkbox{width:48%;}.frm_form_field.frm_four_col .frm_radio:nth-child(2n+2),.frm_form_field.frm_four_col .frm_checkbox:nth-child(2n+2){margin-right:0;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(385, '_transient_frm_options', 'O:11:\"FrmSettings\":38:{s:11:\"option_name\";s:11:\"frm_options\";s:4:\"menu\";s:10:\"Formidable\";s:7:\"mu_menu\";s:1:\"0\";s:8:\"use_html\";s:1:\"1\";s:10:\"jquery_css\";i:0;s:12:\"accordion_js\";i:0;s:9:\"fade_form\";i:0;s:7:\"old_css\";s:1:\"1\";s:11:\"success_msg\";s:54:\"Your responses were successfully submitted. Thank you!\";s:9:\"blank_msg\";s:27:\"This field cannot be blank.\";s:10:\"unique_msg\";s:26:\"This value must be unique.\";s:11:\"invalid_msg\";s:66:\"There was a problem with your submission. Errors are marked below.\";s:10:\"failed_msg\";s:57:\"We\'re sorry. It looks like you\'ve already submitted that.\";s:12:\"submit_value\";s:6:\"Submit\";s:9:\"login_msg\";s:45:\"You do not have permission to view this form.\";s:16:\"admin_permission\";s:37:\"You do not have permission to do that\";s:8:\"email_to\";s:13:\"[admin_email]\";s:10:\"load_style\";s:3:\"all\";s:12:\"custom_style\";b:1;s:6:\"pubkey\";s:40:\"6LcW4O0UAAAAAHiLzXJ8d52VdlSHk3FoG4ubxIJs\";s:7:\"privkey\";s:40:\"6LcW4O0UAAAAAKWzyj_cfFhzYX4KLKnI-ZnK1Pa0\";s:7:\"re_lang\";s:0:\"\";s:7:\"re_type\";s:0:\"\";s:6:\"re_msg\";s:39:\"The reCAPTCHA was not entered correctly\";s:8:\"re_multi\";s:1:\"1\";s:6:\"no_ips\";i:0;s:12:\"current_form\";i:0;s:8:\"tracking\";i:0;s:14:\"frm_view_forms\";a:1:{i:0;s:13:\"administrator\";}s:14:\"frm_edit_forms\";a:1:{i:0;s:13:\"administrator\";}s:16:\"frm_delete_forms\";a:1:{i:0;s:13:\"administrator\";}s:19:\"frm_change_settings\";a:1:{i:0;s:13:\"administrator\";}s:16:\"frm_view_entries\";a:1:{i:0;s:13:\"administrator\";}s:18:\"frm_delete_entries\";a:1:{i:0;s:13:\"administrator\";}s:18:\"frm_create_entries\";s:13:\"administrator\";s:16:\"frm_edit_entries\";s:13:\"administrator\";s:16:\"frm_view_reports\";s:13:\"administrator\";s:17:\"frm_edit_displays\";s:13:\"administrator\";}', 'yes'),
(397, 'cptui_new_install', 'false', 'yes'),
(398, 'cptui_post_types', 'a:1:{s:11:\"actividades\";a:30:{s:4:\"name\";s:11:\"actividades\";s:5:\"label\";s:11:\"actividades\";s:14:\"singular_label\";s:9:\"actividad\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:11:\"actividades\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:14:\"My actividades\";s:9:\"all_items\";s:15:\"All actividades\";s:7:\"add_new\";s:7:\"Add new\";s:12:\"add_new_item\";s:19:\"Add new actividades\";s:9:\"edit_item\";s:16:\"Edit actividades\";s:8:\"new_item\";s:15:\"New actividades\";s:9:\"view_item\";s:16:\"View actividades\";s:10:\"view_items\";s:16:\"View actividades\";s:12:\"search_items\";s:18:\"Search actividades\";s:9:\"not_found\";s:20:\"No actividades found\";s:18:\"not_found_in_trash\";s:29:\"No actividades found in trash\";s:6:\"parent\";s:19:\"Parent actividades:\";s:14:\"featured_image\";s:35:\"Featured image for this actividades\";s:18:\"set_featured_image\";s:39:\"Set featured image for this actividades\";s:21:\"remove_featured_image\";s:42:\"Remove featured image for this actividades\";s:18:\"use_featured_image\";s:42:\"Use as featured image for this actividades\";s:8:\"archives\";s:20:\"actividades archives\";s:16:\"insert_into_item\";s:23:\"Insert into actividades\";s:21:\"uploaded_to_this_item\";s:26:\"Upload to this actividades\";s:17:\"filter_items_list\";s:23:\"Filter actividades list\";s:21:\"items_list_navigation\";s:27:\"actividades list navigation\";s:10:\"items_list\";s:16:\"actividades list\";s:10:\"attributes\";s:22:\"actividades attributes\";s:14:\"name_admin_bar\";s:11:\"actividades\";s:14:\"item_published\";s:21:\"actividades published\";s:24:\"item_published_privately\";s:32:\"actividades published privately.\";s:22:\"item_reverted_to_draft\";s:30:\"actividades reverted to draft.\";s:14:\"item_scheduled\";s:21:\"actividades scheduled\";s:12:\"item_updated\";s:20:\"actividades updated.\";s:17:\"parent_item_colon\";s:19:\"Parent actividades:\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(416, 'category_children', 'a:0:{}', 'yes'),
(419, 'cptui_taxonomies', 'a:1:{s:17:\"category_activity\";a:24:{s:4:\"name\";s:17:\"category_activity\";s:5:\"label\";s:10:\"Categorias\";s:14:\"singular_label\";s:9:\"Categoria\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:11:\"actividades\";}}}', 'yes'),
(455, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(473, 'options_facebook', 'https://www.facebook.com/', 'no'),
(474, '_options_facebook', 'field_5ea47024c59f6', 'no'),
(475, 'options_linkedin', 'https://www.linkedin.com/in/francisco-aular-547649162/', 'no'),
(476, '_options_linkedin', 'field_5ea47045c59f8', 'no'),
(477, 'options_twitter', 'https://twitter.com/monitordolarvla?lang=es', 'no'),
(478, '_options_twitter', 'field_5ea4702ec59f7', 'no'),
(479, 'options_instagram', 'https://www.instagram.com/', 'no'),
(480, '_options_instagram', 'field_5ea4705bc59f9', 'no'),
(481, 'options_youtube', 'https://www.youtube.com/', 'no'),
(482, '_options_youtube', 'field_5ea47073c59fa', 'no'),
(555, 'options_Logo_footer', '120', 'no'),
(556, '_options_Logo_footer', 'field_5ea4d1dd65775', 'no'),
(565, 'options_logo_black', '124', 'no'),
(566, '_options_logo_black', 'field_5ea4d2b88c51f', 'no'),
(567, 'options_logo_white', '120', 'no'),
(568, '_options_logo_white', 'field_5ea4d2c38c520', 'no'),
(630, 'options_title_inta', 'Escogenos', 'no'),
(631, '_options_title_inta', 'field_5ea62bc1ce833', 'no'),
(632, 'options_content_inta', 'Los mejores del mundo mundial', 'no'),
(633, '_options_content_inta', 'field_5ea62bd7ce834', 'no'),
(650, 'options_title_fourth', 'Recomiendanos', 'no'),
(651, '_options_title_fourth', 'field_5ea62bc1ce833', 'no'),
(652, 'options_content_fourth', 'Las mejores arepas del mundo mundial', 'no'),
(653, '_options_content_fourth', 'field_5ea62bd7ce834', 'no'),
(654, 'options_url_button_fourth', 'http://ms.test', 'no'),
(655, '_options_url_button_fourth', 'field_5ea62da94bce5', 'no'),
(656, 'options_text_button_fourth', 'Dame amor', 'no'),
(657, '_options_text_button_fourth', 'field_5ea62db94bce6', 'no'),
(666, 'options_title_second_column', 'Insumos', 'no'),
(667, '_options_title_second_column', 'field_5ea62ee79e3ae', 'no'),
(668, 'options_list_0_text_list', 'Mejorar 2', 'no'),
(669, '_options_list_0_text_list', 'field_5ea62f799e3b2', 'no'),
(670, 'options_list_1_text_list', 'Fronted', 'no'),
(671, '_options_list_1_text_list', 'field_5ea62f799e3b2', 'no'),
(672, 'options_list_2_text_list', 'Digital', 'no'),
(673, '_options_list_2_text_list', 'field_5ea62f799e3b2', 'no'),
(674, 'options_list', '3', 'no'),
(675, '_options_list', 'field_5ea62f5b9e3b1', 'no'),
(765, 'category_activity_children', 'a:0:{}', 'yes'),
(774, '_site_transient_timeout_theme_roots', '1588788960', 'no'),
(775, '_site_transient_theme_roots', 'a:4:{s:2:\"ms\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(777, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1588787301;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.4\";s:25:\"formidable/formidable.php\";s:7:\"4.04.03\";s:29:\"gravityforms/gravityforms.php\";s:9:\"2.4.17.22\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.4\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"formidable/formidable.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/formidable\";s:4:\"slug\";s:10:\"formidable\";s:6:\"plugin\";s:25:\"formidable/formidable.php\";s:11:\"new_version\";s:7:\"4.04.03\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/formidable/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/formidable.4.04.03.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/formidable/assets/icon-256x256.png?rev=1109774\";s:2:\"1x\";s:63:\"https://ps.w.org/formidable/assets/icon-128x128.png?rev=1109774\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/formidable/assets/banner-1544x500.png?rev=2285944\";s:2:\"1x\";s:65:\"https://ps.w.org/formidable/assets/banner-772x250.png?rev=2285944\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(778, '_site_transient_timeout_php_check_141a8d7da406be785ba26084a46e1c00', '1589392017', 'no'),
(779, '_site_transient_php_check_141a8d7da406be785ba26084a46e1c00', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(780, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"es_CO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1588787300;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(781, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"franciscoaular18@gmail.com\";s:7:\"version\";s:5:\"5.4.1\";s:9:\"timestamp\";i:1588787302;}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1587498964:1'),
(4, 9, '_edit_last', '1'),
(5, 9, '_edit_lock', '1587499273:1'),
(6, 10, '_wp_attached_file', '2020/04/19-sportster-1200-custom-hdi-hero-scaled.jpg'),
(7, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1280;s:4:\"file\";s:52:\"2020/04/19-sportster-1200-custom-hdi-hero-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"19-sportster-1200-custom-hdi-hero-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"19-sportster-1200-custom-hdi-hero-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"19-sportster-1200-custom-hdi-hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"19-sportster-1200-custom-hdi-hero-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"19-sportster-1200-custom-hdi-hero-1536x768.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:47:\"19-sportster-1200-custom-hdi-hero-2048x1024.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:37:\"19-sportster-1200-custom-hdi-hero.jpg\";}'),
(8, 9, '_thumbnail_id', '10'),
(9, 11, '_edit_last', '1'),
(10, 11, '_edit_lock', '1587499734:1'),
(11, 11, '_thumbnail_id', '10'),
(16, 16, '_edit_last', '1'),
(17, 16, '_edit_lock', '1587595263:1'),
(30, 26, '_edit_last', '1'),
(31, 26, '_edit_lock', '1587595212:1'),
(32, 36, '_wp_attached_file', '2020/04/group-5.png'),
(33, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:186;s:6:\"height\";i:91;s:4:\"file\";s:19:\"2020/04/group-5.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"group-5-150x91.png\";s:5:\"width\";i:150;s:6:\"height\";i:91;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 50, '_wp_attached_file', '2020/04/group-2.png'),
(35, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:172;s:6:\"height\";i:84;s:4:\"file\";s:19:\"2020/04/group-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"group-2-150x84.png\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 51, '_wp_attached_file', '2020/04/group-7.png'),
(37, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:190;s:6:\"height\";i:81;s:4:\"file\";s:19:\"2020/04/group-7.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"group-7-150x81.png\";s:5:\"width\";i:150;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 52, '_edit_last', '1'),
(39, 52, '_edit_lock', '1587745669:1'),
(40, 56, '_wp_attached_file', '2020/04/bitmap.png'),
(41, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:210;s:6:\"height\";i:44;s:4:\"file\";s:18:\"2020/04/bitmap.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bitmap-150x44.png\";s:5:\"width\";i:150;s:6:\"height\";i:44;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 57, '_wp_attached_file', '2020/04/bitmap-1.png'),
(43, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:86;s:4:\"file\";s:20:\"2020/04/bitmap-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bitmap-1-150x86.png\";s:5:\"width\";i:150;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 58, '_wp_attached_file', '2020/04/bitmap-2.png'),
(45, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:185;s:6:\"height\";i:56;s:4:\"file\";s:20:\"2020/04/bitmap-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bitmap-2-150x56.png\";s:5:\"width\";i:150;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 59, '_wp_attached_file', '2020/04/bitmap-3.png'),
(47, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:42;s:4:\"file\";s:20:\"2020/04/bitmap-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bitmap-3-150x42.png\";s:5:\"width\";i:150;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 60, '_wp_attached_file', '2020/04/bitmap-4.png'),
(49, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:42;s:4:\"file\";s:20:\"2020/04/bitmap-4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bitmap-4-150x42.png\";s:5:\"width\";i:150;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 61, '_edit_lock', '1587965138:1'),
(51, 66, '_edit_last', '1'),
(52, 66, '_edit_lock', '1587758077:1'),
(53, 72, '_wp_attached_file', '2020/04/photo-1517832207067-4db24a2ae47c-scaled.jpg'),
(54, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:51:\"2020/04/photo-1517832207067-4db24a2ae47c-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1517832207067-4db24a2ae47c-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1517832207067-4db24a2ae47c-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1517832207067-4db24a2ae47c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1517832207067-4db24a2ae47c-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"photo-1517832207067-4db24a2ae47c-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"photo-1517832207067-4db24a2ae47c-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:36:\"photo-1517832207067-4db24a2ae47c.jpg\";}'),
(55, 61, '_edit_last', '1'),
(56, 61, 'team_0_image_profile', '72'),
(57, 61, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(58, 61, 'team_0_name_profile', 'Zelena Aular'),
(59, 61, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(60, 61, 'team_0_job', 'Artist'),
(61, 61, '_team_0_job', 'field_5ea31470dd8e3'),
(62, 61, 'team', '4'),
(63, 61, '_team', 'field_5ea3142edd8e0'),
(64, 73, 'team_0_image_profile', '72'),
(65, 73, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(66, 73, 'team_0_name_profile', 'Zelena Aular'),
(67, 73, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(68, 73, 'team_0_job', 'Artist'),
(69, 73, '_team_0_job', 'field_5ea31470dd8e3'),
(70, 73, 'team', '1'),
(71, 73, '_team', 'field_5ea3142edd8e0'),
(72, 61, 'tab_title', 'Creative'),
(73, 61, '_tab_title', 'field_5ea315c1b680b'),
(74, 61, 'tab_title_copy', ''),
(75, 61, '_tab_title_copy', 'field_5ea315dbb680d'),
(76, 61, 'team_copy', ''),
(77, 61, '_team_copy', 'field_5ea315e8b680e'),
(78, 61, 'tab_title_copy2', ''),
(79, 61, '_tab_title_copy2', 'field_5ea315f9b6813'),
(80, 61, 'team_copy2', ''),
(81, 61, '_team_copy2', 'field_5ea315feb6814'),
(82, 87, 'team_0_image_profile', '72'),
(83, 87, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(84, 87, 'team_0_name_profile', 'Zelena Aular'),
(85, 87, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(86, 87, 'team_0_job', 'Artist'),
(87, 87, '_team_0_job', 'field_5ea31470dd8e3'),
(88, 87, 'team', '1'),
(89, 87, '_team', 'field_5ea3142edd8e0'),
(90, 87, 'tab_title', 'Creative'),
(91, 87, '_tab_title', 'field_5ea315c1b680b'),
(92, 87, 'tab_title_copy', ''),
(93, 87, '_tab_title_copy', 'field_5ea315dbb680d'),
(94, 87, 'team_copy', ''),
(95, 87, '_team_copy', 'field_5ea315e8b680e'),
(96, 87, 'tab_title_copy2', ''),
(97, 87, '_tab_title_copy2', 'field_5ea315f9b6813'),
(98, 87, 'team_copy2', ''),
(99, 87, '_team_copy2', 'field_5ea315feb6814'),
(100, 61, 'team_1_image_profile', '72'),
(101, 61, '_team_1_image_profile', 'field_5ea31446dd8e1'),
(102, 61, 'team_1_name_profile', 'anita'),
(103, 61, '_team_1_name_profile', 'field_5ea31462dd8e2'),
(104, 61, 'team_1_job', 'Developer'),
(105, 61, '_team_1_job', 'field_5ea31470dd8e3'),
(106, 61, 'team_2_image_profile', '72'),
(107, 61, '_team_2_image_profile', 'field_5ea31446dd8e1'),
(108, 61, 'team_2_name_profile', '44'),
(109, 61, '_team_2_name_profile', 'field_5ea31462dd8e2'),
(110, 61, 'team_2_job', '74'),
(111, 61, '_team_2_job', 'field_5ea31470dd8e3'),
(112, 61, 'team_3_image_profile', '72'),
(113, 61, '_team_3_image_profile', 'field_5ea31446dd8e1'),
(114, 61, 'team_3_name_profile', '44'),
(115, 61, '_team_3_name_profile', 'field_5ea31462dd8e2'),
(116, 61, 'team_3_job', '23'),
(117, 61, '_team_3_job', 'field_5ea31470dd8e3'),
(130, 61, 'tab_title_2', 'Developer'),
(131, 61, '_tab_title_2', 'field_5ea315dbb680d'),
(132, 61, 'team_2_0_image_profile', '72'),
(133, 61, '_team_2_0_image_profile', 'field_5ea315e8b680f'),
(134, 61, 'team_2_0_name_profile', 'mauricio Lopez'),
(135, 61, '_team_2_0_name_profile', 'field_5ea315e8b6810'),
(136, 61, 'team_2_0_job', 'Designer'),
(137, 61, '_team_2_0_job', 'field_5ea315e8b6811'),
(138, 61, 'team_2_1_image_profile', '72'),
(139, 61, '_team_2_1_image_profile', 'field_5ea315e8b680f'),
(140, 61, 'team_2_1_name_profile', 'Niyi ramirez'),
(141, 61, '_team_2_1_name_profile', 'field_5ea315e8b6810'),
(142, 61, 'team_2_1_job', 'Designer'),
(143, 61, '_team_2_1_job', 'field_5ea315e8b6811'),
(144, 61, 'team_2_2_image_profile', '72'),
(145, 61, '_team_2_2_image_profile', 'field_5ea315e8b680f'),
(146, 61, 'team_2_2_name_profile', 'Francis Zolorsano'),
(147, 61, '_team_2_2_name_profile', 'field_5ea315e8b6810'),
(148, 61, 'team_2_2_job', 'Designer'),
(149, 61, '_team_2_2_job', 'field_5ea315e8b6811'),
(150, 61, 'team_2_3_image_profile', '72'),
(151, 61, '_team_2_3_image_profile', 'field_5ea315e8b680f'),
(152, 61, 'team_2_3_name_profile', 'Oriana Vasque'),
(153, 61, '_team_2_3_name_profile', 'field_5ea315e8b6810'),
(154, 61, 'team_2_3_job', 'Designer'),
(155, 61, '_team_2_3_job', 'field_5ea315e8b6811'),
(156, 61, 'team_2', '4'),
(157, 61, '_team_2', 'field_5ea315e8b680e'),
(158, 61, 'tab_title_3', 'Marketing'),
(159, 61, '_tab_title_3', 'field_5ea315f9b6813'),
(160, 61, 'team_3_0_image_profile', '92'),
(161, 61, '_team_3_0_image_profile', 'field_5ea315ffb6815'),
(162, 61, 'team_3_0_name_profile', 'Katalina Ceballos'),
(163, 61, '_team_3_0_name_profile', 'field_5ea315ffb6816'),
(164, 61, 'team_3_0_job', 'Nine'),
(165, 61, '_team_3_0_job', 'field_5ea315ffb6817'),
(166, 61, 'team_3_1_image_profile', '92'),
(167, 61, '_team_3_1_image_profile', 'field_5ea315ffb6815'),
(168, 61, 'team_3_1_name_profile', 'Catarina Bavaria'),
(169, 61, '_team_3_1_name_profile', 'field_5ea315ffb6816'),
(170, 61, 'team_3_1_job', 'Nani'),
(171, 61, '_team_3_1_job', 'field_5ea315ffb6817'),
(172, 61, 'team_3_2_image_profile', '93'),
(173, 61, '_team_3_2_image_profile', 'field_5ea315ffb6815'),
(174, 61, 'team_3_2_name_profile', 'Wilmar Puente'),
(175, 61, '_team_3_2_name_profile', 'field_5ea315ffb6816'),
(176, 61, 'team_3_2_job', 'Consulting'),
(177, 61, '_team_3_2_job', 'field_5ea315ffb6817'),
(178, 61, 'team_3_3_image_profile', '93'),
(179, 61, '_team_3_3_image_profile', 'field_5ea315ffb6815'),
(180, 61, 'team_3_3_name_profile', 'Venezuela Lopez'),
(181, 61, '_team_3_3_name_profile', 'field_5ea315ffb6816'),
(182, 61, 'team_3_3_job', 'Manage'),
(183, 61, '_team_3_3_job', 'field_5ea315ffb6817'),
(184, 61, 'team_3', '4'),
(185, 61, '_team_3', 'field_5ea315feb6814'),
(186, 88, 'team_0_image_profile', '72'),
(187, 88, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(188, 88, 'team_0_name_profile', 'Zelena Aular'),
(189, 88, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(190, 88, 'team_0_job', 'Artist'),
(191, 88, '_team_0_job', 'field_5ea31470dd8e3'),
(192, 88, 'team', '6'),
(193, 88, '_team', 'field_5ea3142edd8e0'),
(194, 88, 'tab_title', 'Creative'),
(195, 88, '_tab_title', 'field_5ea315c1b680b'),
(196, 88, 'tab_title_copy', ''),
(197, 88, '_tab_title_copy', 'field_5ea315dbb680d'),
(198, 88, 'team_copy', ''),
(199, 88, '_team_copy', 'field_5ea315e8b680e'),
(200, 88, 'tab_title_copy2', ''),
(201, 88, '_tab_title_copy2', 'field_5ea315f9b6813'),
(202, 88, 'team_copy2', ''),
(203, 88, '_team_copy2', 'field_5ea315feb6814'),
(204, 88, 'team_1_image_profile', '10'),
(205, 88, '_team_1_image_profile', 'field_5ea31446dd8e1'),
(206, 88, 'team_1_name_profile', 'anita'),
(207, 88, '_team_1_name_profile', 'field_5ea31462dd8e2'),
(208, 88, 'team_1_job', 'Developer'),
(209, 88, '_team_1_job', 'field_5ea31470dd8e3'),
(210, 88, 'team_2_image_profile', ''),
(211, 88, '_team_2_image_profile', 'field_5ea31446dd8e1'),
(212, 88, 'team_2_name_profile', ''),
(213, 88, '_team_2_name_profile', 'field_5ea31462dd8e2'),
(214, 88, 'team_2_job', ''),
(215, 88, '_team_2_job', 'field_5ea31470dd8e3'),
(216, 88, 'team_3_image_profile', ''),
(217, 88, '_team_3_image_profile', 'field_5ea31446dd8e1'),
(218, 88, 'team_3_name_profile', ''),
(219, 88, '_team_3_name_profile', 'field_5ea31462dd8e2'),
(220, 88, 'team_3_job', ''),
(221, 88, '_team_3_job', 'field_5ea31470dd8e3'),
(222, 88, 'team_4_image_profile', ''),
(223, 88, '_team_4_image_profile', 'field_5ea31446dd8e1'),
(224, 88, 'team_4_name_profile', ''),
(225, 88, '_team_4_name_profile', 'field_5ea31462dd8e2'),
(226, 88, 'team_4_job', ''),
(227, 88, '_team_4_job', 'field_5ea31470dd8e3'),
(228, 88, 'team_5_image_profile', ''),
(229, 88, '_team_5_image_profile', 'field_5ea31446dd8e1'),
(230, 88, 'team_5_name_profile', ''),
(231, 88, '_team_5_name_profile', 'field_5ea31462dd8e2'),
(232, 88, 'team_5_job', ''),
(233, 88, '_team_5_job', 'field_5ea31470dd8e3'),
(234, 88, 'tab_title_2', ''),
(235, 88, '_tab_title_2', 'field_5ea315dbb680d'),
(236, 88, 'team_2_0_image_profile', ''),
(237, 88, '_team_2_0_image_profile', 'field_5ea315e8b680f'),
(238, 88, 'team_2_0_name_profile', ''),
(239, 88, '_team_2_0_name_profile', 'field_5ea315e8b6810'),
(240, 88, 'team_2_0_job', ''),
(241, 88, '_team_2_0_job', 'field_5ea315e8b6811'),
(242, 88, 'team_2_1_image_profile', ''),
(243, 88, '_team_2_1_image_profile', 'field_5ea315e8b680f'),
(244, 88, 'team_2_1_name_profile', ''),
(245, 88, '_team_2_1_name_profile', 'field_5ea315e8b6810'),
(246, 88, 'team_2_1_job', ''),
(247, 88, '_team_2_1_job', 'field_5ea315e8b6811'),
(248, 88, 'team_2_2_image_profile', ''),
(249, 88, '_team_2_2_image_profile', 'field_5ea315e8b680f'),
(250, 88, 'team_2_2_name_profile', ''),
(251, 88, '_team_2_2_name_profile', 'field_5ea315e8b6810'),
(252, 88, 'team_2_2_job', ''),
(253, 88, '_team_2_2_job', 'field_5ea315e8b6811'),
(254, 88, 'team_2_3_image_profile', ''),
(255, 88, '_team_2_3_image_profile', 'field_5ea315e8b680f'),
(256, 88, 'team_2_3_name_profile', ''),
(257, 88, '_team_2_3_name_profile', 'field_5ea315e8b6810'),
(258, 88, 'team_2_3_job', ''),
(259, 88, '_team_2_3_job', 'field_5ea315e8b6811'),
(260, 88, 'team_2', '4'),
(261, 88, '_team_2', 'field_5ea315e8b680e'),
(262, 88, 'tab_title_3', ''),
(263, 88, '_tab_title_3', 'field_5ea315f9b6813'),
(264, 88, 'team_3_0_image_profile', ''),
(265, 88, '_team_3_0_image_profile', 'field_5ea315ffb6815'),
(266, 88, 'team_3_0_name_profile', ''),
(267, 88, '_team_3_0_name_profile', 'field_5ea315ffb6816'),
(268, 88, 'team_3_0_job', ''),
(269, 88, '_team_3_0_job', 'field_5ea315ffb6817'),
(270, 88, 'team_3_1_image_profile', ''),
(271, 88, '_team_3_1_image_profile', 'field_5ea315ffb6815'),
(272, 88, 'team_3_1_name_profile', ''),
(273, 88, '_team_3_1_name_profile', 'field_5ea315ffb6816'),
(274, 88, 'team_3_1_job', ''),
(275, 88, '_team_3_1_job', 'field_5ea315ffb6817'),
(276, 88, 'team_3_2_image_profile', ''),
(277, 88, '_team_3_2_image_profile', 'field_5ea315ffb6815'),
(278, 88, 'team_3_2_name_profile', ''),
(279, 88, '_team_3_2_name_profile', 'field_5ea315ffb6816'),
(280, 88, 'team_3_2_job', ''),
(281, 88, '_team_3_2_job', 'field_5ea315ffb6817'),
(282, 88, 'team_3_3_image_profile', ''),
(283, 88, '_team_3_3_image_profile', 'field_5ea315ffb6815'),
(284, 88, 'team_3_3_name_profile', ''),
(285, 88, '_team_3_3_name_profile', 'field_5ea315ffb6816'),
(286, 88, 'team_3_3_job', ''),
(287, 88, '_team_3_3_job', 'field_5ea315ffb6817'),
(288, 88, 'team_3', '4'),
(289, 88, '_team_3', 'field_5ea315feb6814'),
(290, 89, 'team_0_image_profile', '72'),
(291, 89, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(292, 89, 'team_0_name_profile', 'Zelena Aular'),
(293, 89, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(294, 89, 'team_0_job', 'Artist'),
(295, 89, '_team_0_job', 'field_5ea31470dd8e3'),
(296, 89, 'team', '4'),
(297, 89, '_team', 'field_5ea3142edd8e0'),
(298, 89, 'tab_title', 'Creative'),
(299, 89, '_tab_title', 'field_5ea315c1b680b'),
(300, 89, 'tab_title_copy', ''),
(301, 89, '_tab_title_copy', 'field_5ea315dbb680d'),
(302, 89, 'team_copy', ''),
(303, 89, '_team_copy', 'field_5ea315e8b680e'),
(304, 89, 'tab_title_copy2', ''),
(305, 89, '_tab_title_copy2', 'field_5ea315f9b6813'),
(306, 89, 'team_copy2', ''),
(307, 89, '_team_copy2', 'field_5ea315feb6814'),
(308, 89, 'team_1_image_profile', '72'),
(309, 89, '_team_1_image_profile', 'field_5ea31446dd8e1'),
(310, 89, 'team_1_name_profile', 'anita'),
(311, 89, '_team_1_name_profile', 'field_5ea31462dd8e2'),
(312, 89, 'team_1_job', 'Developer'),
(313, 89, '_team_1_job', 'field_5ea31470dd8e3'),
(314, 89, 'team_2_image_profile', '72'),
(315, 89, '_team_2_image_profile', 'field_5ea31446dd8e1'),
(316, 89, 'team_2_name_profile', '44'),
(317, 89, '_team_2_name_profile', 'field_5ea31462dd8e2'),
(318, 89, 'team_2_job', '74'),
(319, 89, '_team_2_job', 'field_5ea31470dd8e3'),
(320, 89, 'team_3_image_profile', '72'),
(321, 89, '_team_3_image_profile', 'field_5ea31446dd8e1'),
(322, 89, 'team_3_name_profile', '44'),
(323, 89, '_team_3_name_profile', 'field_5ea31462dd8e2'),
(324, 89, 'team_3_job', '23'),
(325, 89, '_team_3_job', 'field_5ea31470dd8e3'),
(326, 89, 'tab_title_2', ''),
(327, 89, '_tab_title_2', 'field_5ea315dbb680d'),
(328, 89, 'team_2_0_image_profile', ''),
(329, 89, '_team_2_0_image_profile', 'field_5ea315e8b680f'),
(330, 89, 'team_2_0_name_profile', ''),
(331, 89, '_team_2_0_name_profile', 'field_5ea315e8b6810'),
(332, 89, 'team_2_0_job', ''),
(333, 89, '_team_2_0_job', 'field_5ea315e8b6811'),
(334, 89, 'team_2_1_image_profile', ''),
(335, 89, '_team_2_1_image_profile', 'field_5ea315e8b680f'),
(336, 89, 'team_2_1_name_profile', ''),
(337, 89, '_team_2_1_name_profile', 'field_5ea315e8b6810'),
(338, 89, 'team_2_1_job', ''),
(339, 89, '_team_2_1_job', 'field_5ea315e8b6811'),
(340, 89, 'team_2_2_image_profile', ''),
(341, 89, '_team_2_2_image_profile', 'field_5ea315e8b680f'),
(342, 89, 'team_2_2_name_profile', ''),
(343, 89, '_team_2_2_name_profile', 'field_5ea315e8b6810'),
(344, 89, 'team_2_2_job', ''),
(345, 89, '_team_2_2_job', 'field_5ea315e8b6811'),
(346, 89, 'team_2_3_image_profile', ''),
(347, 89, '_team_2_3_image_profile', 'field_5ea315e8b680f'),
(348, 89, 'team_2_3_name_profile', ''),
(349, 89, '_team_2_3_name_profile', 'field_5ea315e8b6810'),
(350, 89, 'team_2_3_job', ''),
(351, 89, '_team_2_3_job', 'field_5ea315e8b6811'),
(352, 89, 'team_2', '4'),
(353, 89, '_team_2', 'field_5ea315e8b680e'),
(354, 89, 'tab_title_3', ''),
(355, 89, '_tab_title_3', 'field_5ea315f9b6813'),
(356, 89, 'team_3_0_image_profile', ''),
(357, 89, '_team_3_0_image_profile', 'field_5ea315ffb6815'),
(358, 89, 'team_3_0_name_profile', ''),
(359, 89, '_team_3_0_name_profile', 'field_5ea315ffb6816'),
(360, 89, 'team_3_0_job', ''),
(361, 89, '_team_3_0_job', 'field_5ea315ffb6817'),
(362, 89, 'team_3_1_image_profile', ''),
(363, 89, '_team_3_1_image_profile', 'field_5ea315ffb6815'),
(364, 89, 'team_3_1_name_profile', ''),
(365, 89, '_team_3_1_name_profile', 'field_5ea315ffb6816'),
(366, 89, 'team_3_1_job', ''),
(367, 89, '_team_3_1_job', 'field_5ea315ffb6817'),
(368, 89, 'team_3_2_image_profile', ''),
(369, 89, '_team_3_2_image_profile', 'field_5ea315ffb6815'),
(370, 89, 'team_3_2_name_profile', ''),
(371, 89, '_team_3_2_name_profile', 'field_5ea315ffb6816'),
(372, 89, 'team_3_2_job', ''),
(373, 89, '_team_3_2_job', 'field_5ea315ffb6817'),
(374, 89, 'team_3_3_image_profile', ''),
(375, 89, '_team_3_3_image_profile', 'field_5ea315ffb6815'),
(376, 89, 'team_3_3_name_profile', ''),
(377, 89, '_team_3_3_name_profile', 'field_5ea315ffb6816'),
(378, 89, 'team_3_3_job', ''),
(379, 89, '_team_3_3_job', 'field_5ea315ffb6817'),
(380, 89, 'team_3', '4'),
(381, 89, '_team_3', 'field_5ea315feb6814'),
(382, 90, 'team_0_image_profile', '72'),
(383, 90, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(384, 90, 'team_0_name_profile', 'Zelena Aular'),
(385, 90, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(386, 90, 'team_0_job', 'Artist'),
(387, 90, '_team_0_job', 'field_5ea31470dd8e3'),
(388, 90, 'team', '4'),
(389, 90, '_team', 'field_5ea3142edd8e0'),
(390, 90, 'tab_title', 'Creative'),
(391, 90, '_tab_title', 'field_5ea315c1b680b'),
(392, 90, 'tab_title_copy', ''),
(393, 90, '_tab_title_copy', 'field_5ea315dbb680d'),
(394, 90, 'team_copy', ''),
(395, 90, '_team_copy', 'field_5ea315e8b680e'),
(396, 90, 'tab_title_copy2', ''),
(397, 90, '_tab_title_copy2', 'field_5ea315f9b6813'),
(398, 90, 'team_copy2', ''),
(399, 90, '_team_copy2', 'field_5ea315feb6814'),
(400, 90, 'team_1_image_profile', '72'),
(401, 90, '_team_1_image_profile', 'field_5ea31446dd8e1'),
(402, 90, 'team_1_name_profile', 'anita'),
(403, 90, '_team_1_name_profile', 'field_5ea31462dd8e2'),
(404, 90, 'team_1_job', 'Developer'),
(405, 90, '_team_1_job', 'field_5ea31470dd8e3'),
(406, 90, 'team_2_image_profile', '72'),
(407, 90, '_team_2_image_profile', 'field_5ea31446dd8e1'),
(408, 90, 'team_2_name_profile', '44'),
(409, 90, '_team_2_name_profile', 'field_5ea31462dd8e2'),
(410, 90, 'team_2_job', '74'),
(411, 90, '_team_2_job', 'field_5ea31470dd8e3'),
(412, 90, 'team_3_image_profile', '72'),
(413, 90, '_team_3_image_profile', 'field_5ea31446dd8e1'),
(414, 90, 'team_3_name_profile', '44'),
(415, 90, '_team_3_name_profile', 'field_5ea31462dd8e2'),
(416, 90, 'team_3_job', '23'),
(417, 90, '_team_3_job', 'field_5ea31470dd8e3'),
(418, 90, 'tab_title_2', 'Developer'),
(419, 90, '_tab_title_2', 'field_5ea315dbb680d'),
(420, 90, 'team_2_0_image_profile', ''),
(421, 90, '_team_2_0_image_profile', 'field_5ea315e8b680f'),
(422, 90, 'team_2_0_name_profile', ''),
(423, 90, '_team_2_0_name_profile', 'field_5ea315e8b6810'),
(424, 90, 'team_2_0_job', ''),
(425, 90, '_team_2_0_job', 'field_5ea315e8b6811'),
(426, 90, 'team_2_1_image_profile', ''),
(427, 90, '_team_2_1_image_profile', 'field_5ea315e8b680f'),
(428, 90, 'team_2_1_name_profile', ''),
(429, 90, '_team_2_1_name_profile', 'field_5ea315e8b6810'),
(430, 90, 'team_2_1_job', ''),
(431, 90, '_team_2_1_job', 'field_5ea315e8b6811'),
(432, 90, 'team_2_2_image_profile', ''),
(433, 90, '_team_2_2_image_profile', 'field_5ea315e8b680f'),
(434, 90, 'team_2_2_name_profile', ''),
(435, 90, '_team_2_2_name_profile', 'field_5ea315e8b6810'),
(436, 90, 'team_2_2_job', ''),
(437, 90, '_team_2_2_job', 'field_5ea315e8b6811'),
(438, 90, 'team_2_3_image_profile', ''),
(439, 90, '_team_2_3_image_profile', 'field_5ea315e8b680f'),
(440, 90, 'team_2_3_name_profile', ''),
(441, 90, '_team_2_3_name_profile', 'field_5ea315e8b6810'),
(442, 90, 'team_2_3_job', ''),
(443, 90, '_team_2_3_job', 'field_5ea315e8b6811'),
(444, 90, 'team_2', '4'),
(445, 90, '_team_2', 'field_5ea315e8b680e'),
(446, 90, 'tab_title_3', 'Marketing'),
(447, 90, '_tab_title_3', 'field_5ea315f9b6813'),
(448, 90, 'team_3_0_image_profile', ''),
(449, 90, '_team_3_0_image_profile', 'field_5ea315ffb6815'),
(450, 90, 'team_3_0_name_profile', ''),
(451, 90, '_team_3_0_name_profile', 'field_5ea315ffb6816'),
(452, 90, 'team_3_0_job', ''),
(453, 90, '_team_3_0_job', 'field_5ea315ffb6817'),
(454, 90, 'team_3_1_image_profile', ''),
(455, 90, '_team_3_1_image_profile', 'field_5ea315ffb6815'),
(456, 90, 'team_3_1_name_profile', ''),
(457, 90, '_team_3_1_name_profile', 'field_5ea315ffb6816'),
(458, 90, 'team_3_1_job', ''),
(459, 90, '_team_3_1_job', 'field_5ea315ffb6817'),
(460, 90, 'team_3_2_image_profile', ''),
(461, 90, '_team_3_2_image_profile', 'field_5ea315ffb6815'),
(462, 90, 'team_3_2_name_profile', ''),
(463, 90, '_team_3_2_name_profile', 'field_5ea315ffb6816'),
(464, 90, 'team_3_2_job', ''),
(465, 90, '_team_3_2_job', 'field_5ea315ffb6817'),
(466, 90, 'team_3_3_image_profile', ''),
(467, 90, '_team_3_3_image_profile', 'field_5ea315ffb6815'),
(468, 90, 'team_3_3_name_profile', ''),
(469, 90, '_team_3_3_name_profile', 'field_5ea315ffb6816'),
(470, 90, 'team_3_3_job', ''),
(471, 90, '_team_3_3_job', 'field_5ea315ffb6817'),
(472, 90, 'team_3', '4'),
(473, 90, '_team_3', 'field_5ea315feb6814'),
(474, 91, 'team_0_image_profile', '72'),
(475, 91, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(476, 91, 'team_0_name_profile', 'Zelena Aular'),
(477, 91, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(478, 91, 'team_0_job', 'Artist'),
(479, 91, '_team_0_job', 'field_5ea31470dd8e3'),
(480, 91, 'team', '4'),
(481, 91, '_team', 'field_5ea3142edd8e0'),
(482, 91, 'tab_title', 'Creative'),
(483, 91, '_tab_title', 'field_5ea315c1b680b'),
(484, 91, 'tab_title_copy', ''),
(485, 91, '_tab_title_copy', 'field_5ea315dbb680d'),
(486, 91, 'team_copy', ''),
(487, 91, '_team_copy', 'field_5ea315e8b680e'),
(488, 91, 'tab_title_copy2', ''),
(489, 91, '_tab_title_copy2', 'field_5ea315f9b6813'),
(490, 91, 'team_copy2', ''),
(491, 91, '_team_copy2', 'field_5ea315feb6814'),
(492, 91, 'team_1_image_profile', '72'),
(493, 91, '_team_1_image_profile', 'field_5ea31446dd8e1'),
(494, 91, 'team_1_name_profile', 'anita'),
(495, 91, '_team_1_name_profile', 'field_5ea31462dd8e2'),
(496, 91, 'team_1_job', 'Developer'),
(497, 91, '_team_1_job', 'field_5ea31470dd8e3'),
(498, 91, 'team_2_image_profile', '72'),
(499, 91, '_team_2_image_profile', 'field_5ea31446dd8e1'),
(500, 91, 'team_2_name_profile', '44'),
(501, 91, '_team_2_name_profile', 'field_5ea31462dd8e2'),
(502, 91, 'team_2_job', '74'),
(503, 91, '_team_2_job', 'field_5ea31470dd8e3'),
(504, 91, 'team_3_image_profile', '72'),
(505, 91, '_team_3_image_profile', 'field_5ea31446dd8e1'),
(506, 91, 'team_3_name_profile', '44'),
(507, 91, '_team_3_name_profile', 'field_5ea31462dd8e2'),
(508, 91, 'team_3_job', '23'),
(509, 91, '_team_3_job', 'field_5ea31470dd8e3'),
(510, 91, 'tab_title_2', 'Developer'),
(511, 91, '_tab_title_2', 'field_5ea315dbb680d'),
(512, 91, 'team_2_0_image_profile', '72'),
(513, 91, '_team_2_0_image_profile', 'field_5ea315e8b680f'),
(514, 91, 'team_2_0_name_profile', 'mauricio Lopez'),
(515, 91, '_team_2_0_name_profile', 'field_5ea315e8b6810'),
(516, 91, 'team_2_0_job', 'Designer'),
(517, 91, '_team_2_0_job', 'field_5ea315e8b6811'),
(518, 91, 'team_2_1_image_profile', '72'),
(519, 91, '_team_2_1_image_profile', 'field_5ea315e8b680f'),
(520, 91, 'team_2_1_name_profile', 'Niyi ramirez'),
(521, 91, '_team_2_1_name_profile', 'field_5ea315e8b6810'),
(522, 91, 'team_2_1_job', 'Designer'),
(523, 91, '_team_2_1_job', 'field_5ea315e8b6811'),
(524, 91, 'team_2_2_image_profile', '72'),
(525, 91, '_team_2_2_image_profile', 'field_5ea315e8b680f'),
(526, 91, 'team_2_2_name_profile', 'Francis Zolorsano'),
(527, 91, '_team_2_2_name_profile', 'field_5ea315e8b6810'),
(528, 91, 'team_2_2_job', 'Designer'),
(529, 91, '_team_2_2_job', 'field_5ea315e8b6811'),
(530, 91, 'team_2_3_image_profile', '72'),
(531, 91, '_team_2_3_image_profile', 'field_5ea315e8b680f'),
(532, 91, 'team_2_3_name_profile', 'Oriana Vasque'),
(533, 91, '_team_2_3_name_profile', 'field_5ea315e8b6810'),
(534, 91, 'team_2_3_job', 'Designer'),
(535, 91, '_team_2_3_job', 'field_5ea315e8b6811'),
(536, 91, 'team_2', '4'),
(537, 91, '_team_2', 'field_5ea315e8b680e'),
(538, 91, 'tab_title_3', 'Marketing'),
(539, 91, '_tab_title_3', 'field_5ea315f9b6813'),
(540, 91, 'team_3_0_image_profile', ''),
(541, 91, '_team_3_0_image_profile', 'field_5ea315ffb6815'),
(542, 91, 'team_3_0_name_profile', ''),
(543, 91, '_team_3_0_name_profile', 'field_5ea315ffb6816'),
(544, 91, 'team_3_0_job', ''),
(545, 91, '_team_3_0_job', 'field_5ea315ffb6817'),
(546, 91, 'team_3_1_image_profile', ''),
(547, 91, '_team_3_1_image_profile', 'field_5ea315ffb6815'),
(548, 91, 'team_3_1_name_profile', ''),
(549, 91, '_team_3_1_name_profile', 'field_5ea315ffb6816'),
(550, 91, 'team_3_1_job', ''),
(551, 91, '_team_3_1_job', 'field_5ea315ffb6817'),
(552, 91, 'team_3_2_image_profile', ''),
(553, 91, '_team_3_2_image_profile', 'field_5ea315ffb6815'),
(554, 91, 'team_3_2_name_profile', ''),
(555, 91, '_team_3_2_name_profile', 'field_5ea315ffb6816'),
(556, 91, 'team_3_2_job', ''),
(557, 91, '_team_3_2_job', 'field_5ea315ffb6817'),
(558, 91, 'team_3_3_image_profile', ''),
(559, 91, '_team_3_3_image_profile', 'field_5ea315ffb6815'),
(560, 91, 'team_3_3_name_profile', ''),
(561, 91, '_team_3_3_name_profile', 'field_5ea315ffb6816'),
(562, 91, 'team_3_3_job', ''),
(563, 91, '_team_3_3_job', 'field_5ea315ffb6817'),
(564, 91, 'team_3', '4'),
(565, 91, '_team_3', 'field_5ea315feb6814'),
(566, 92, '_wp_attached_file', '2020/04/01-shutterstock_476340928-Irina-Bg-1024x683-1.jpg'),
(567, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:57:\"2020/04/01-shutterstock_476340928-Irina-Bg-1024x683-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"01-shutterstock_476340928-Irina-Bg-1024x683-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"01-shutterstock_476340928-Irina-Bg-1024x683-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"01-shutterstock_476340928-Irina-Bg-1024x683-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(568, 93, '_wp_attached_file', '2020/04/03-shutterstock_450728395-F8-studio-1024x683-1.jpg'),
(569, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:58:\"2020/04/03-shutterstock_450728395-F8-studio-1024x683-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"03-shutterstock_450728395-F8-studio-1024x683-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"03-shutterstock_450728395-F8-studio-1024x683-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"03-shutterstock_450728395-F8-studio-1024x683-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(570, 94, 'team_0_image_profile', '72'),
(571, 94, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(572, 94, 'team_0_name_profile', 'Zelena Aular'),
(573, 94, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(574, 94, 'team_0_job', 'Artist'),
(575, 94, '_team_0_job', 'field_5ea31470dd8e3'),
(576, 94, 'team', '4'),
(577, 94, '_team', 'field_5ea3142edd8e0'),
(578, 94, 'tab_title', 'Creative'),
(579, 94, '_tab_title', 'field_5ea315c1b680b'),
(580, 94, 'tab_title_copy', ''),
(581, 94, '_tab_title_copy', 'field_5ea315dbb680d'),
(582, 94, 'team_copy', ''),
(583, 94, '_team_copy', 'field_5ea315e8b680e'),
(584, 94, 'tab_title_copy2', ''),
(585, 94, '_tab_title_copy2', 'field_5ea315f9b6813'),
(586, 94, 'team_copy2', ''),
(587, 94, '_team_copy2', 'field_5ea315feb6814'),
(588, 94, 'team_1_image_profile', '72'),
(589, 94, '_team_1_image_profile', 'field_5ea31446dd8e1'),
(590, 94, 'team_1_name_profile', 'anita'),
(591, 94, '_team_1_name_profile', 'field_5ea31462dd8e2'),
(592, 94, 'team_1_job', 'Developer'),
(593, 94, '_team_1_job', 'field_5ea31470dd8e3'),
(594, 94, 'team_2_image_profile', '72'),
(595, 94, '_team_2_image_profile', 'field_5ea31446dd8e1'),
(596, 94, 'team_2_name_profile', '44'),
(597, 94, '_team_2_name_profile', 'field_5ea31462dd8e2'),
(598, 94, 'team_2_job', '74'),
(599, 94, '_team_2_job', 'field_5ea31470dd8e3'),
(600, 94, 'team_3_image_profile', '72'),
(601, 94, '_team_3_image_profile', 'field_5ea31446dd8e1'),
(602, 94, 'team_3_name_profile', '44'),
(603, 94, '_team_3_name_profile', 'field_5ea31462dd8e2'),
(604, 94, 'team_3_job', '23'),
(605, 94, '_team_3_job', 'field_5ea31470dd8e3'),
(606, 94, 'tab_title_2', 'Developer'),
(607, 94, '_tab_title_2', 'field_5ea315dbb680d'),
(608, 94, 'team_2_0_image_profile', '72'),
(609, 94, '_team_2_0_image_profile', 'field_5ea315e8b680f'),
(610, 94, 'team_2_0_name_profile', 'mauricio Lopez'),
(611, 94, '_team_2_0_name_profile', 'field_5ea315e8b6810'),
(612, 94, 'team_2_0_job', 'Designer'),
(613, 94, '_team_2_0_job', 'field_5ea315e8b6811'),
(614, 94, 'team_2_1_image_profile', '72'),
(615, 94, '_team_2_1_image_profile', 'field_5ea315e8b680f'),
(616, 94, 'team_2_1_name_profile', 'Niyi ramirez'),
(617, 94, '_team_2_1_name_profile', 'field_5ea315e8b6810'),
(618, 94, 'team_2_1_job', 'Designer'),
(619, 94, '_team_2_1_job', 'field_5ea315e8b6811'),
(620, 94, 'team_2_2_image_profile', '72'),
(621, 94, '_team_2_2_image_profile', 'field_5ea315e8b680f'),
(622, 94, 'team_2_2_name_profile', 'Francis Zolorsano'),
(623, 94, '_team_2_2_name_profile', 'field_5ea315e8b6810'),
(624, 94, 'team_2_2_job', 'Designer'),
(625, 94, '_team_2_2_job', 'field_5ea315e8b6811'),
(626, 94, 'team_2_3_image_profile', '72'),
(627, 94, '_team_2_3_image_profile', 'field_5ea315e8b680f'),
(628, 94, 'team_2_3_name_profile', 'Oriana Vasque'),
(629, 94, '_team_2_3_name_profile', 'field_5ea315e8b6810'),
(630, 94, 'team_2_3_job', 'Designer'),
(631, 94, '_team_2_3_job', 'field_5ea315e8b6811'),
(632, 94, 'team_2', '4'),
(633, 94, '_team_2', 'field_5ea315e8b680e'),
(634, 94, 'tab_title_3', 'Marketing'),
(635, 94, '_tab_title_3', 'field_5ea315f9b6813'),
(636, 94, 'team_3_0_image_profile', '92'),
(637, 94, '_team_3_0_image_profile', 'field_5ea315ffb6815'),
(638, 94, 'team_3_0_name_profile', 'Katalina Ceballos'),
(639, 94, '_team_3_0_name_profile', 'field_5ea315ffb6816'),
(640, 94, 'team_3_0_job', 'Nine'),
(641, 94, '_team_3_0_job', 'field_5ea315ffb6817'),
(642, 94, 'team_3_1_image_profile', '92'),
(643, 94, '_team_3_1_image_profile', 'field_5ea315ffb6815'),
(644, 94, 'team_3_1_name_profile', 'Catarina Bavaria'),
(645, 94, '_team_3_1_name_profile', 'field_5ea315ffb6816'),
(646, 94, 'team_3_1_job', 'Nani'),
(647, 94, '_team_3_1_job', 'field_5ea315ffb6817'),
(648, 94, 'team_3_2_image_profile', '93'),
(649, 94, '_team_3_2_image_profile', 'field_5ea315ffb6815'),
(650, 94, 'team_3_2_name_profile', 'Wilmar Puente'),
(651, 94, '_team_3_2_name_profile', 'field_5ea315ffb6816'),
(652, 94, 'team_3_2_job', 'Consulting'),
(653, 94, '_team_3_2_job', 'field_5ea315ffb6817'),
(654, 94, 'team_3_3_image_profile', '93'),
(655, 94, '_team_3_3_image_profile', 'field_5ea315ffb6815'),
(656, 94, 'team_3_3_name_profile', 'Venezuela Lopez'),
(657, 94, '_team_3_3_name_profile', 'field_5ea315ffb6816'),
(658, 94, 'team_3_3_job', 'Manage'),
(659, 94, '_team_3_3_job', 'field_5ea315ffb6817'),
(660, 94, 'team_3', '4'),
(661, 94, '_team_3', 'field_5ea315feb6814'),
(662, 95, '_edit_last', '1'),
(663, 95, '_edit_lock', '1587965329:1'),
(665, 100, '_edit_lock', '1587970214:1'),
(666, 100, '_thumbnail_id', '112'),
(677, 103, '_menu_item_type', 'post_type'),
(678, 103, '_menu_item_menu_item_parent', '0'),
(679, 103, '_menu_item_object_id', '61'),
(680, 103, '_menu_item_object', 'page'),
(681, 103, '_menu_item_target', ''),
(682, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(683, 103, '_menu_item_xfn', ''),
(684, 103, '_menu_item_url', ''),
(695, 105, '_menu_item_type', 'custom'),
(696, 105, '_menu_item_menu_item_parent', '0'),
(697, 105, '_menu_item_object_id', '105'),
(698, 105, '_menu_item_object', 'custom'),
(699, 105, '_menu_item_target', ''),
(700, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(701, 105, '_menu_item_xfn', ''),
(702, 105, '_menu_item_url', '/actividades'),
(704, 106, '_edit_last', '1'),
(705, 106, '_edit_lock', '1587842649:1'),
(706, 112, '_wp_attached_file', '2020/04/HT_rugrats_02_jef_160809_4x3_992.jpg'),
(707, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:992;s:6:\"height\";i:744;s:4:\"file\";s:44:\"2020/04/HT_rugrats_02_jef_160809_4x3_992.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"HT_rugrats_02_jef_160809_4x3_992-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"HT_rugrats_02_jef_160809_4x3_992-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"HT_rugrats_02_jef_160809_4x3_992-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(708, 113, '_edit_lock', '1587957022:1'),
(709, 114, '_wp_attached_file', '2020/04/0117051.jpg-c_215_290_x-f_jpg-q_x-xxyxx.jpg'),
(710, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:215;s:6:\"height\";i:290;s:4:\"file\";s:51:\"2020/04/0117051.jpg-c_215_290_x-f_jpg-q_x-xxyxx.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"0117051.jpg-c_215_290_x-f_jpg-q_x-xxyxx-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(711, 113, '_thumbnail_id', '142'),
(712, 115, '_edit_lock', '1587947133:1'),
(713, 116, '_wp_attached_file', '2020/04/04-shutterstock_565988308-Joyseulay-1024x683-1.jpg'),
(714, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:58:\"2020/04/04-shutterstock_565988308-Joyseulay-1024x683-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"04-shutterstock_565988308-Joyseulay-1024x683-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"04-shutterstock_565988308-Joyseulay-1024x683-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"04-shutterstock_565988308-Joyseulay-1024x683-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(715, 115, '_thumbnail_id', '116'),
(716, 113, '_wp_old_date', '2020-04-25'),
(717, 117, '_menu_item_type', 'custom'),
(718, 117, '_menu_item_menu_item_parent', '0'),
(719, 117, '_menu_item_object_id', '117'),
(720, 117, '_menu_item_object', 'custom'),
(721, 117, '_menu_item_target', ''),
(722, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(723, 117, '_menu_item_xfn', ''),
(724, 117, '_menu_item_url', '/about#contact'),
(726, 118, '_edit_last', '1'),
(727, 118, '_edit_lock', '1587859834:1'),
(728, 120, '_wp_attached_file', '2020/04/logo-white.png'),
(729, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:44;s:4:\"file\";s:22:\"2020/04/logo-white.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-white-150x44.png\";s:5:\"width\";i:150;s:6:\"height\";i:44;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(730, 121, '_edit_last', '1'),
(731, 121, '_edit_lock', '1587860058:1'),
(732, 124, '_wp_attached_file', '2020/04/logo-black.png'),
(733, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:44;s:4:\"file\";s:22:\"2020/04/logo-black.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-black-150x44.png\";s:5:\"width\";i:150;s:6:\"height\";i:44;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(734, 125, '_edit_last', '1'),
(735, 125, '_edit_lock', '1587958416:1'),
(736, 136, '_edit_last', '1'),
(737, 136, '_edit_lock', '1587956132:1'),
(738, 140, '_wp_attached_file', '2020/04/agencia-digital-mailify-1-750x400-1.jpg'),
(739, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:400;s:4:\"file\";s:47:\"2020/04/agencia-digital-mailify-1-750x400-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"agencia-digital-mailify-1-750x400-1-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"agencia-digital-mailify-1-750x400-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(740, 61, 'form_contact', '[formidable id=\"1\"]'),
(741, 61, '_form_contact', 'field_5ea34498ce51a'),
(742, 61, 'title_second', '¿Qué nos caracteriza como agencia Digital?'),
(743, 61, '_title_second', 'field_5ea63235ca653'),
(744, 61, 'content_second', 'En nuestra <b>agencia de marketing digital</b>, el proceso de trabajo está basado en el concepto de la creatividad estratégica, abordamos cada proyecto con un enfoque analítico, conjugamos estética, funcionalidad, intuición, inmediatez, tendencia, y experiencia para desarrollar soluciones que marcan la diferencia.'),
(745, 61, '_content_second', 'field_5ea6325aca654'),
(746, 61, 'image_second', '140'),
(747, 61, '_image_second', 'field_5ea6327aca655'),
(748, 141, 'team_0_image_profile', '72'),
(749, 141, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(750, 141, 'team_0_name_profile', 'Zelena Aular'),
(751, 141, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(752, 141, 'team_0_job', 'Artist'),
(753, 141, '_team_0_job', 'field_5ea31470dd8e3'),
(754, 141, 'team', '4'),
(755, 141, '_team', 'field_5ea3142edd8e0'),
(756, 141, 'tab_title', 'Creative'),
(757, 141, '_tab_title', 'field_5ea315c1b680b'),
(758, 141, 'tab_title_copy', ''),
(759, 141, '_tab_title_copy', 'field_5ea315dbb680d'),
(760, 141, 'team_copy', ''),
(761, 141, '_team_copy', 'field_5ea315e8b680e'),
(762, 141, 'tab_title_copy2', ''),
(763, 141, '_tab_title_copy2', 'field_5ea315f9b6813'),
(764, 141, 'team_copy2', ''),
(765, 141, '_team_copy2', 'field_5ea315feb6814'),
(766, 141, 'team_1_image_profile', '72'),
(767, 141, '_team_1_image_profile', 'field_5ea31446dd8e1'),
(768, 141, 'team_1_name_profile', 'anita'),
(769, 141, '_team_1_name_profile', 'field_5ea31462dd8e2'),
(770, 141, 'team_1_job', 'Developer'),
(771, 141, '_team_1_job', 'field_5ea31470dd8e3'),
(772, 141, 'team_2_image_profile', '72'),
(773, 141, '_team_2_image_profile', 'field_5ea31446dd8e1'),
(774, 141, 'team_2_name_profile', '44'),
(775, 141, '_team_2_name_profile', 'field_5ea31462dd8e2'),
(776, 141, 'team_2_job', '74'),
(777, 141, '_team_2_job', 'field_5ea31470dd8e3'),
(778, 141, 'team_3_image_profile', '72'),
(779, 141, '_team_3_image_profile', 'field_5ea31446dd8e1'),
(780, 141, 'team_3_name_profile', '44'),
(781, 141, '_team_3_name_profile', 'field_5ea31462dd8e2'),
(782, 141, 'team_3_job', '23'),
(783, 141, '_team_3_job', 'field_5ea31470dd8e3'),
(784, 141, 'tab_title_2', 'Developer'),
(785, 141, '_tab_title_2', 'field_5ea315dbb680d'),
(786, 141, 'team_2_0_image_profile', '72'),
(787, 141, '_team_2_0_image_profile', 'field_5ea315e8b680f'),
(788, 141, 'team_2_0_name_profile', 'mauricio Lopez'),
(789, 141, '_team_2_0_name_profile', 'field_5ea315e8b6810'),
(790, 141, 'team_2_0_job', 'Designer'),
(791, 141, '_team_2_0_job', 'field_5ea315e8b6811'),
(792, 141, 'team_2_1_image_profile', '72'),
(793, 141, '_team_2_1_image_profile', 'field_5ea315e8b680f'),
(794, 141, 'team_2_1_name_profile', 'Niyi ramirez'),
(795, 141, '_team_2_1_name_profile', 'field_5ea315e8b6810'),
(796, 141, 'team_2_1_job', 'Designer'),
(797, 141, '_team_2_1_job', 'field_5ea315e8b6811'),
(798, 141, 'team_2_2_image_profile', '72'),
(799, 141, '_team_2_2_image_profile', 'field_5ea315e8b680f'),
(800, 141, 'team_2_2_name_profile', 'Francis Zolorsano'),
(801, 141, '_team_2_2_name_profile', 'field_5ea315e8b6810'),
(802, 141, 'team_2_2_job', 'Designer'),
(803, 141, '_team_2_2_job', 'field_5ea315e8b6811'),
(804, 141, 'team_2_3_image_profile', '72'),
(805, 141, '_team_2_3_image_profile', 'field_5ea315e8b680f'),
(806, 141, 'team_2_3_name_profile', 'Oriana Vasque'),
(807, 141, '_team_2_3_name_profile', 'field_5ea315e8b6810'),
(808, 141, 'team_2_3_job', 'Designer'),
(809, 141, '_team_2_3_job', 'field_5ea315e8b6811'),
(810, 141, 'team_2', '4'),
(811, 141, '_team_2', 'field_5ea315e8b680e'),
(812, 141, 'tab_title_3', 'Marketing'),
(813, 141, '_tab_title_3', 'field_5ea315f9b6813'),
(814, 141, 'team_3_0_image_profile', '92'),
(815, 141, '_team_3_0_image_profile', 'field_5ea315ffb6815'),
(816, 141, 'team_3_0_name_profile', 'Katalina Ceballos'),
(817, 141, '_team_3_0_name_profile', 'field_5ea315ffb6816'),
(818, 141, 'team_3_0_job', 'Nine'),
(819, 141, '_team_3_0_job', 'field_5ea315ffb6817'),
(820, 141, 'team_3_1_image_profile', '92'),
(821, 141, '_team_3_1_image_profile', 'field_5ea315ffb6815'),
(822, 141, 'team_3_1_name_profile', 'Catarina Bavaria'),
(823, 141, '_team_3_1_name_profile', 'field_5ea315ffb6816'),
(824, 141, 'team_3_1_job', 'Nani'),
(825, 141, '_team_3_1_job', 'field_5ea315ffb6817'),
(826, 141, 'team_3_2_image_profile', '93'),
(827, 141, '_team_3_2_image_profile', 'field_5ea315ffb6815'),
(828, 141, 'team_3_2_name_profile', 'Wilmar Puente'),
(829, 141, '_team_3_2_name_profile', 'field_5ea315ffb6816'),
(830, 141, 'team_3_2_job', 'Consulting'),
(831, 141, '_team_3_2_job', 'field_5ea315ffb6817');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(832, 141, 'team_3_3_image_profile', '93'),
(833, 141, '_team_3_3_image_profile', 'field_5ea315ffb6815'),
(834, 141, 'team_3_3_name_profile', 'Venezuela Lopez'),
(835, 141, '_team_3_3_name_profile', 'field_5ea315ffb6816'),
(836, 141, 'team_3_3_job', 'Manage'),
(837, 141, '_team_3_3_job', 'field_5ea315ffb6817'),
(838, 141, 'team_3', '4'),
(839, 141, '_team_3', 'field_5ea315feb6814'),
(840, 141, 'form_contact', ''),
(841, 141, '_form_contact', 'field_5ea34498ce51a'),
(842, 141, 'title_second', '¿Qué nos caracteriza como agencia Digital?'),
(843, 141, '_title_second', 'field_5ea63235ca653'),
(844, 141, 'content_second', 'En nuestra <b>agencia de marketing digital</b>, el proceso de trabajo está basado en el concepto de la creatividad estratégica, abordamos cada proyecto con un enfoque analítico, conjugamos estética, funcionalidad, intuición, inmediatez, tendencia, y experiencia para desarrollar soluciones que marcan la diferencia.'),
(845, 141, '_content_second', 'field_5ea6325aca654'),
(846, 141, 'image_second', '140'),
(847, 141, '_image_second', 'field_5ea6327aca655'),
(848, 142, '_wp_attached_file', '2020/04/flight-landscape-nature-sky-36717.jpg'),
(849, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1195;s:4:\"file\";s:45:\"2020/04/flight-landscape-nature-sky-36717.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"flight-landscape-nature-sky-36717-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"flight-landscape-nature-sky-36717-1024x637.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:637;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"flight-landscape-nature-sky-36717-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"flight-landscape-nature-sky-36717-768x478.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:478;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"flight-landscape-nature-sky-36717-1536x956.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:956;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(850, 143, 'team_0_image_profile', '72'),
(851, 143, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(852, 143, 'team_0_name_profile', 'Zelena Aular'),
(853, 143, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(854, 143, 'team_0_job', 'Artist'),
(855, 143, '_team_0_job', 'field_5ea31470dd8e3'),
(856, 143, 'team', '4'),
(857, 143, '_team', 'field_5ea3142edd8e0'),
(858, 143, 'tab_title', 'Creative'),
(859, 143, '_tab_title', 'field_5ea315c1b680b'),
(860, 143, 'tab_title_copy', ''),
(861, 143, '_tab_title_copy', 'field_5ea315dbb680d'),
(862, 143, 'team_copy', ''),
(863, 143, '_team_copy', 'field_5ea315e8b680e'),
(864, 143, 'tab_title_copy2', ''),
(865, 143, '_tab_title_copy2', 'field_5ea315f9b6813'),
(866, 143, 'team_copy2', ''),
(867, 143, '_team_copy2', 'field_5ea315feb6814'),
(868, 143, 'team_1_image_profile', '72'),
(869, 143, '_team_1_image_profile', 'field_5ea31446dd8e1'),
(870, 143, 'team_1_name_profile', 'anita'),
(871, 143, '_team_1_name_profile', 'field_5ea31462dd8e2'),
(872, 143, 'team_1_job', 'Developer'),
(873, 143, '_team_1_job', 'field_5ea31470dd8e3'),
(874, 143, 'team_2_image_profile', '72'),
(875, 143, '_team_2_image_profile', 'field_5ea31446dd8e1'),
(876, 143, 'team_2_name_profile', '44'),
(877, 143, '_team_2_name_profile', 'field_5ea31462dd8e2'),
(878, 143, 'team_2_job', '74'),
(879, 143, '_team_2_job', 'field_5ea31470dd8e3'),
(880, 143, 'team_3_image_profile', '72'),
(881, 143, '_team_3_image_profile', 'field_5ea31446dd8e1'),
(882, 143, 'team_3_name_profile', '44'),
(883, 143, '_team_3_name_profile', 'field_5ea31462dd8e2'),
(884, 143, 'team_3_job', '23'),
(885, 143, '_team_3_job', 'field_5ea31470dd8e3'),
(886, 143, 'tab_title_2', 'Developer'),
(887, 143, '_tab_title_2', 'field_5ea315dbb680d'),
(888, 143, 'team_2_0_image_profile', '72'),
(889, 143, '_team_2_0_image_profile', 'field_5ea315e8b680f'),
(890, 143, 'team_2_0_name_profile', 'mauricio Lopez'),
(891, 143, '_team_2_0_name_profile', 'field_5ea315e8b6810'),
(892, 143, 'team_2_0_job', 'Designer'),
(893, 143, '_team_2_0_job', 'field_5ea315e8b6811'),
(894, 143, 'team_2_1_image_profile', '72'),
(895, 143, '_team_2_1_image_profile', 'field_5ea315e8b680f'),
(896, 143, 'team_2_1_name_profile', 'Niyi ramirez'),
(897, 143, '_team_2_1_name_profile', 'field_5ea315e8b6810'),
(898, 143, 'team_2_1_job', 'Designer'),
(899, 143, '_team_2_1_job', 'field_5ea315e8b6811'),
(900, 143, 'team_2_2_image_profile', '72'),
(901, 143, '_team_2_2_image_profile', 'field_5ea315e8b680f'),
(902, 143, 'team_2_2_name_profile', 'Francis Zolorsano'),
(903, 143, '_team_2_2_name_profile', 'field_5ea315e8b6810'),
(904, 143, 'team_2_2_job', 'Designer'),
(905, 143, '_team_2_2_job', 'field_5ea315e8b6811'),
(906, 143, 'team_2_3_image_profile', '72'),
(907, 143, '_team_2_3_image_profile', 'field_5ea315e8b680f'),
(908, 143, 'team_2_3_name_profile', 'Oriana Vasque'),
(909, 143, '_team_2_3_name_profile', 'field_5ea315e8b6810'),
(910, 143, 'team_2_3_job', 'Designer'),
(911, 143, '_team_2_3_job', 'field_5ea315e8b6811'),
(912, 143, 'team_2', '4'),
(913, 143, '_team_2', 'field_5ea315e8b680e'),
(914, 143, 'tab_title_3', 'Marketing'),
(915, 143, '_tab_title_3', 'field_5ea315f9b6813'),
(916, 143, 'team_3_0_image_profile', '92'),
(917, 143, '_team_3_0_image_profile', 'field_5ea315ffb6815'),
(918, 143, 'team_3_0_name_profile', 'Katalina Ceballos'),
(919, 143, '_team_3_0_name_profile', 'field_5ea315ffb6816'),
(920, 143, 'team_3_0_job', 'Nine'),
(921, 143, '_team_3_0_job', 'field_5ea315ffb6817'),
(922, 143, 'team_3_1_image_profile', '92'),
(923, 143, '_team_3_1_image_profile', 'field_5ea315ffb6815'),
(924, 143, 'team_3_1_name_profile', 'Catarina Bavaria'),
(925, 143, '_team_3_1_name_profile', 'field_5ea315ffb6816'),
(926, 143, 'team_3_1_job', 'Nani'),
(927, 143, '_team_3_1_job', 'field_5ea315ffb6817'),
(928, 143, 'team_3_2_image_profile', '93'),
(929, 143, '_team_3_2_image_profile', 'field_5ea315ffb6815'),
(930, 143, 'team_3_2_name_profile', 'Wilmar Puente'),
(931, 143, '_team_3_2_name_profile', 'field_5ea315ffb6816'),
(932, 143, 'team_3_2_job', 'Consulting'),
(933, 143, '_team_3_2_job', 'field_5ea315ffb6817'),
(934, 143, 'team_3_3_image_profile', '93'),
(935, 143, '_team_3_3_image_profile', 'field_5ea315ffb6815'),
(936, 143, 'team_3_3_name_profile', 'Venezuela Lopez'),
(937, 143, '_team_3_3_name_profile', 'field_5ea315ffb6816'),
(938, 143, 'team_3_3_job', 'Manage'),
(939, 143, '_team_3_3_job', 'field_5ea315ffb6817'),
(940, 143, 'team_3', '4'),
(941, 143, '_team_3', 'field_5ea315feb6814'),
(942, 143, 'form_contact', ''),
(943, 143, '_form_contact', 'field_5ea34498ce51a'),
(944, 143, 'title_second', '¿Qué nos caracteriza como agencia Digital?'),
(945, 143, '_title_second', 'field_5ea63235ca653'),
(946, 143, 'content_second', 'En nuestra <b>agencia de marketing digital</b>, el proceso de trabajo está basado en el concepto de la creatividad estratégica, abordamos cada proyecto con un enfoque analítico, conjugamos estética, funcionalidad, intuición, inmediatez, tendencia, y experiencia para desarrollar soluciones que marcan la diferencia.'),
(947, 143, '_content_second', 'field_5ea6325aca654'),
(948, 143, 'image_second', '140'),
(949, 143, '_image_second', 'field_5ea6327aca655'),
(950, 144, 'team_0_image_profile', '72'),
(951, 144, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(952, 144, 'team_0_name_profile', 'Zelena Aular'),
(953, 144, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(954, 144, 'team_0_job', 'Artist'),
(955, 144, '_team_0_job', 'field_5ea31470dd8e3'),
(956, 144, 'team', '4'),
(957, 144, '_team', 'field_5ea3142edd8e0'),
(958, 144, 'tab_title', 'Creative'),
(959, 144, '_tab_title', 'field_5ea315c1b680b'),
(960, 144, 'tab_title_copy', ''),
(961, 144, '_tab_title_copy', 'field_5ea315dbb680d'),
(962, 144, 'team_copy', ''),
(963, 144, '_team_copy', 'field_5ea315e8b680e'),
(964, 144, 'tab_title_copy2', ''),
(965, 144, '_tab_title_copy2', 'field_5ea315f9b6813'),
(966, 144, 'team_copy2', ''),
(967, 144, '_team_copy2', 'field_5ea315feb6814'),
(968, 144, 'team_1_image_profile', '72'),
(969, 144, '_team_1_image_profile', 'field_5ea31446dd8e1'),
(970, 144, 'team_1_name_profile', 'anita'),
(971, 144, '_team_1_name_profile', 'field_5ea31462dd8e2'),
(972, 144, 'team_1_job', 'Developer'),
(973, 144, '_team_1_job', 'field_5ea31470dd8e3'),
(974, 144, 'team_2_image_profile', '72'),
(975, 144, '_team_2_image_profile', 'field_5ea31446dd8e1'),
(976, 144, 'team_2_name_profile', '44'),
(977, 144, '_team_2_name_profile', 'field_5ea31462dd8e2'),
(978, 144, 'team_2_job', '74'),
(979, 144, '_team_2_job', 'field_5ea31470dd8e3'),
(980, 144, 'team_3_image_profile', '72'),
(981, 144, '_team_3_image_profile', 'field_5ea31446dd8e1'),
(982, 144, 'team_3_name_profile', '44'),
(983, 144, '_team_3_name_profile', 'field_5ea31462dd8e2'),
(984, 144, 'team_3_job', '23'),
(985, 144, '_team_3_job', 'field_5ea31470dd8e3'),
(986, 144, 'tab_title_2', 'Developer'),
(987, 144, '_tab_title_2', 'field_5ea315dbb680d'),
(988, 144, 'team_2_0_image_profile', '72'),
(989, 144, '_team_2_0_image_profile', 'field_5ea315e8b680f'),
(990, 144, 'team_2_0_name_profile', 'mauricio Lopez'),
(991, 144, '_team_2_0_name_profile', 'field_5ea315e8b6810'),
(992, 144, 'team_2_0_job', 'Designer'),
(993, 144, '_team_2_0_job', 'field_5ea315e8b6811'),
(994, 144, 'team_2_1_image_profile', '72'),
(995, 144, '_team_2_1_image_profile', 'field_5ea315e8b680f'),
(996, 144, 'team_2_1_name_profile', 'Niyi ramirez'),
(997, 144, '_team_2_1_name_profile', 'field_5ea315e8b6810'),
(998, 144, 'team_2_1_job', 'Designer'),
(999, 144, '_team_2_1_job', 'field_5ea315e8b6811'),
(1000, 144, 'team_2_2_image_profile', '72'),
(1001, 144, '_team_2_2_image_profile', 'field_5ea315e8b680f'),
(1002, 144, 'team_2_2_name_profile', 'Francis Zolorsano'),
(1003, 144, '_team_2_2_name_profile', 'field_5ea315e8b6810'),
(1004, 144, 'team_2_2_job', 'Designer'),
(1005, 144, '_team_2_2_job', 'field_5ea315e8b6811'),
(1006, 144, 'team_2_3_image_profile', '72'),
(1007, 144, '_team_2_3_image_profile', 'field_5ea315e8b680f'),
(1008, 144, 'team_2_3_name_profile', 'Oriana Vasque'),
(1009, 144, '_team_2_3_name_profile', 'field_5ea315e8b6810'),
(1010, 144, 'team_2_3_job', 'Designer'),
(1011, 144, '_team_2_3_job', 'field_5ea315e8b6811'),
(1012, 144, 'team_2', '4'),
(1013, 144, '_team_2', 'field_5ea315e8b680e'),
(1014, 144, 'tab_title_3', 'Marketing'),
(1015, 144, '_tab_title_3', 'field_5ea315f9b6813'),
(1016, 144, 'team_3_0_image_profile', '92'),
(1017, 144, '_team_3_0_image_profile', 'field_5ea315ffb6815'),
(1018, 144, 'team_3_0_name_profile', 'Katalina Ceballos'),
(1019, 144, '_team_3_0_name_profile', 'field_5ea315ffb6816'),
(1020, 144, 'team_3_0_job', 'Nine'),
(1021, 144, '_team_3_0_job', 'field_5ea315ffb6817'),
(1022, 144, 'team_3_1_image_profile', '92'),
(1023, 144, '_team_3_1_image_profile', 'field_5ea315ffb6815'),
(1024, 144, 'team_3_1_name_profile', 'Catarina Bavaria'),
(1025, 144, '_team_3_1_name_profile', 'field_5ea315ffb6816'),
(1026, 144, 'team_3_1_job', 'Nani'),
(1027, 144, '_team_3_1_job', 'field_5ea315ffb6817'),
(1028, 144, 'team_3_2_image_profile', '93'),
(1029, 144, '_team_3_2_image_profile', 'field_5ea315ffb6815'),
(1030, 144, 'team_3_2_name_profile', 'Wilmar Puente'),
(1031, 144, '_team_3_2_name_profile', 'field_5ea315ffb6816'),
(1032, 144, 'team_3_2_job', 'Consulting'),
(1033, 144, '_team_3_2_job', 'field_5ea315ffb6817'),
(1034, 144, 'team_3_3_image_profile', '93'),
(1035, 144, '_team_3_3_image_profile', 'field_5ea315ffb6815'),
(1036, 144, 'team_3_3_name_profile', 'Venezuela Lopez'),
(1037, 144, '_team_3_3_name_profile', 'field_5ea315ffb6816'),
(1038, 144, 'team_3_3_job', 'Manage'),
(1039, 144, '_team_3_3_job', 'field_5ea315ffb6817'),
(1040, 144, 'team_3', '4'),
(1041, 144, '_team_3', 'field_5ea315feb6814'),
(1042, 144, 'form_contact', ''),
(1043, 144, '_form_contact', 'field_5ea34498ce51a'),
(1044, 144, 'title_second', '¿Qué nos caracteriza como agencia Digital?'),
(1045, 144, '_title_second', 'field_5ea63235ca653'),
(1046, 144, 'content_second', 'En nuestra <b>agencia de marketing digital</b>, el proceso de trabajo está basado en el concepto de la creatividad estratégica, abordamos cada proyecto con un enfoque analítico, conjugamos estética, funcionalidad, intuición, inmediatez, tendencia, y experiencia para desarrollar soluciones que marcan la diferencia.'),
(1047, 144, '_content_second', 'field_5ea6325aca654'),
(1048, 144, 'image_second', '140'),
(1049, 144, '_image_second', 'field_5ea6327aca655'),
(1050, 61, 'text_contact', 'Contactanos y cuentanos tus inquietudes'),
(1051, 61, '_text_contact', 'field_5ea6533bd7ae1'),
(1052, 146, 'team_0_image_profile', '72'),
(1053, 146, '_team_0_image_profile', 'field_5ea31446dd8e1'),
(1054, 146, 'team_0_name_profile', 'Zelena Aular'),
(1055, 146, '_team_0_name_profile', 'field_5ea31462dd8e2'),
(1056, 146, 'team_0_job', 'Artist'),
(1057, 146, '_team_0_job', 'field_5ea31470dd8e3'),
(1058, 146, 'team', '4'),
(1059, 146, '_team', 'field_5ea3142edd8e0'),
(1060, 146, 'tab_title', 'Creative'),
(1061, 146, '_tab_title', 'field_5ea315c1b680b'),
(1062, 146, 'tab_title_copy', ''),
(1063, 146, '_tab_title_copy', 'field_5ea315dbb680d'),
(1064, 146, 'team_copy', ''),
(1065, 146, '_team_copy', 'field_5ea315e8b680e'),
(1066, 146, 'tab_title_copy2', ''),
(1067, 146, '_tab_title_copy2', 'field_5ea315f9b6813'),
(1068, 146, 'team_copy2', ''),
(1069, 146, '_team_copy2', 'field_5ea315feb6814'),
(1070, 146, 'team_1_image_profile', '72'),
(1071, 146, '_team_1_image_profile', 'field_5ea31446dd8e1'),
(1072, 146, 'team_1_name_profile', 'anita'),
(1073, 146, '_team_1_name_profile', 'field_5ea31462dd8e2'),
(1074, 146, 'team_1_job', 'Developer'),
(1075, 146, '_team_1_job', 'field_5ea31470dd8e3'),
(1076, 146, 'team_2_image_profile', '72'),
(1077, 146, '_team_2_image_profile', 'field_5ea31446dd8e1'),
(1078, 146, 'team_2_name_profile', '44'),
(1079, 146, '_team_2_name_profile', 'field_5ea31462dd8e2'),
(1080, 146, 'team_2_job', '74'),
(1081, 146, '_team_2_job', 'field_5ea31470dd8e3'),
(1082, 146, 'team_3_image_profile', '72'),
(1083, 146, '_team_3_image_profile', 'field_5ea31446dd8e1'),
(1084, 146, 'team_3_name_profile', '44'),
(1085, 146, '_team_3_name_profile', 'field_5ea31462dd8e2'),
(1086, 146, 'team_3_job', '23'),
(1087, 146, '_team_3_job', 'field_5ea31470dd8e3'),
(1088, 146, 'tab_title_2', 'Developer'),
(1089, 146, '_tab_title_2', 'field_5ea315dbb680d'),
(1090, 146, 'team_2_0_image_profile', '72'),
(1091, 146, '_team_2_0_image_profile', 'field_5ea315e8b680f'),
(1092, 146, 'team_2_0_name_profile', 'mauricio Lopez'),
(1093, 146, '_team_2_0_name_profile', 'field_5ea315e8b6810'),
(1094, 146, 'team_2_0_job', 'Designer'),
(1095, 146, '_team_2_0_job', 'field_5ea315e8b6811'),
(1096, 146, 'team_2_1_image_profile', '72'),
(1097, 146, '_team_2_1_image_profile', 'field_5ea315e8b680f'),
(1098, 146, 'team_2_1_name_profile', 'Niyi ramirez'),
(1099, 146, '_team_2_1_name_profile', 'field_5ea315e8b6810'),
(1100, 146, 'team_2_1_job', 'Designer'),
(1101, 146, '_team_2_1_job', 'field_5ea315e8b6811'),
(1102, 146, 'team_2_2_image_profile', '72'),
(1103, 146, '_team_2_2_image_profile', 'field_5ea315e8b680f'),
(1104, 146, 'team_2_2_name_profile', 'Francis Zolorsano'),
(1105, 146, '_team_2_2_name_profile', 'field_5ea315e8b6810'),
(1106, 146, 'team_2_2_job', 'Designer'),
(1107, 146, '_team_2_2_job', 'field_5ea315e8b6811'),
(1108, 146, 'team_2_3_image_profile', '72'),
(1109, 146, '_team_2_3_image_profile', 'field_5ea315e8b680f'),
(1110, 146, 'team_2_3_name_profile', 'Oriana Vasque'),
(1111, 146, '_team_2_3_name_profile', 'field_5ea315e8b6810'),
(1112, 146, 'team_2_3_job', 'Designer'),
(1113, 146, '_team_2_3_job', 'field_5ea315e8b6811'),
(1114, 146, 'team_2', '4'),
(1115, 146, '_team_2', 'field_5ea315e8b680e'),
(1116, 146, 'tab_title_3', 'Marketing'),
(1117, 146, '_tab_title_3', 'field_5ea315f9b6813'),
(1118, 146, 'team_3_0_image_profile', '92'),
(1119, 146, '_team_3_0_image_profile', 'field_5ea315ffb6815'),
(1120, 146, 'team_3_0_name_profile', 'Katalina Ceballos'),
(1121, 146, '_team_3_0_name_profile', 'field_5ea315ffb6816'),
(1122, 146, 'team_3_0_job', 'Nine'),
(1123, 146, '_team_3_0_job', 'field_5ea315ffb6817'),
(1124, 146, 'team_3_1_image_profile', '92'),
(1125, 146, '_team_3_1_image_profile', 'field_5ea315ffb6815'),
(1126, 146, 'team_3_1_name_profile', 'Catarina Bavaria'),
(1127, 146, '_team_3_1_name_profile', 'field_5ea315ffb6816'),
(1128, 146, 'team_3_1_job', 'Nani'),
(1129, 146, '_team_3_1_job', 'field_5ea315ffb6817'),
(1130, 146, 'team_3_2_image_profile', '93'),
(1131, 146, '_team_3_2_image_profile', 'field_5ea315ffb6815'),
(1132, 146, 'team_3_2_name_profile', 'Wilmar Puente'),
(1133, 146, '_team_3_2_name_profile', 'field_5ea315ffb6816'),
(1134, 146, 'team_3_2_job', 'Consulting'),
(1135, 146, '_team_3_2_job', 'field_5ea315ffb6817'),
(1136, 146, 'team_3_3_image_profile', '93'),
(1137, 146, '_team_3_3_image_profile', 'field_5ea315ffb6815'),
(1138, 146, 'team_3_3_name_profile', 'Venezuela Lopez'),
(1139, 146, '_team_3_3_name_profile', 'field_5ea315ffb6816'),
(1140, 146, 'team_3_3_job', 'Manage'),
(1141, 146, '_team_3_3_job', 'field_5ea315ffb6817'),
(1142, 146, 'team_3', '4'),
(1143, 146, '_team_3', 'field_5ea315feb6814'),
(1144, 146, 'form_contact', '[formidable id=\"1\"]'),
(1145, 146, '_form_contact', 'field_5ea34498ce51a'),
(1146, 146, 'title_second', '¿Qué nos caracteriza como agencia Digital?'),
(1147, 146, '_title_second', 'field_5ea63235ca653'),
(1148, 146, 'content_second', 'En nuestra <b>agencia de marketing digital</b>, el proceso de trabajo está basado en el concepto de la creatividad estratégica, abordamos cada proyecto con un enfoque analítico, conjugamos estética, funcionalidad, intuición, inmediatez, tendencia, y experiencia para desarrollar soluciones que marcan la diferencia.'),
(1149, 146, '_content_second', 'field_5ea6325aca654'),
(1150, 146, 'image_second', '140'),
(1151, 146, '_image_second', 'field_5ea6327aca655'),
(1152, 146, 'text_contact', 'Contactanos y cuentanos tus inquietudes'),
(1153, 146, '_text_contact', 'field_5ea6533bd7ae1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-21 13:13:53', '2020-04-21 18:13:53', '<!-- wp:paragraph -->\n<p>Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2020-04-21 13:13:53', '2020-04-21 18:13:53', '', 0, 'http://ms.test/?p=1', 0, 'post', '', 1),
(2, 1, '2020-04-21 13:13:53', '2020-04-21 18:13:53', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente de una entrada de blog porque se quedará en ese lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente comienza con una página de acerca de que los introduce a los visitantes potenciales del sitio. Podría decir algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy un Mensajero en bici durante el día, aspirante a actor de noche, y este es mi sitio Web. Vivo en los Ángeles, tengo un gran perro llamado Jack, y me gustan las piñas coladas. (Y estar atrapados en la lluvia.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La Empresa Doohickey XYZ fue fundada en 1971, y ha estado proporcionando cosas de calidad al público desde entonces. Ubicado en la ciudad de Gotham, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas impresionantes para la comunidad gótica.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, debes ir a <a href=\"http://ms.test/wp-admin/\">tu Escritorio</a> para eliminar esta página, y así crear nuevas páginas para su contenido. ¡Que te diviertas!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2020-04-21 13:13:53', '2020-04-21 18:13:53', '', 0, 'http://ms.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-21 13:13:53', '2020-04-21 18:13:53', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nuestra dirección de sitio web es: http://ms.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recopilamos y por qué lo recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en el sitio recopilamos los datos mostrados en el formulario de comentarios, y también la dirección IP del visitante y la cadena del agente de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se puede proporcionar una cadena anónima creada a partir de su dirección de correo electrónico (también denominada hash) al servicio gravatar para ver si la está utilizando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, su imagen de perfil será visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes al sitio web, debes evitar cargar imágenes con datos de ubicación incrustados (EXIF GPS). Los visitantes del sitio web pueden descargar y extraer los datos de la ubicación de las imágenes en el sitio Web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si deja un comentario en nuestro sitio, puedes optar por guardar tu nombre, dirección de correo electrónico y sitio web en cookies. Estos es para tu comodidad y no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán un año de duración.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si visitas nuestra página de Acceso, se instalará una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicies sesión, se instalarán varias cookies para guardar tu información de acceso y opciones de visualización de pantalla. Las cookies de acceso permanecerán por dos días y las cookies de opciones de pantalla se guardarán por un año. Si seleccionas «Recuérdarme» en tu inicio de sesión, estas se guardarán por dos semanas. Si cierra la sesión de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar automáticamente cualquier comentario de seguimiento en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para los usuarios que se registren en nuestro sitio web (si los hay), se almacenarán todos sus datos de información personal que proporcionen. Cualquier usuario puede ver, editar o eliminar su información personal cuando lo desee (a excepción del nombre de usuario que no se puede editar). Los administradores de sitios web, también pueden ver y editar dicha información. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta en este sitio, o ha dejado comentarios, puedes solicitar la exportación de un archivo con tus datos personales recopilados, incluyendo cualquier otro dato que nos haya proporcionado. También puede solicitar la eliminación de cualquier dato personal que guardemos sobre ti. Esto no incluye los datos que estamos obligados a consevar para fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Puede que los comentarios de los visitantes sean validados por un servicio automatico de detección de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos de violación de datos tenemos en marcha</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué toma de decisiones y/o perfiles automatizados haremos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos de divulgación regulatoria de la industria</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'política-privacidad', '', '', '2020-04-21 13:13:53', '2020-04-21 18:13:53', '', 0, 'http://ms.test/?page_id=3', 0, 'page', '', 0),
(9, 1, '2020-04-21 15:03:34', '2020-04-21 20:03:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 'Lorem ipsum dolor sit amet', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-dolor-sit-amet', '', '', '2020-04-21 15:03:34', '2020-04-21 20:03:34', '', 0, 'http://ms.test/?post_type=slider&#038;p=9', 0, 'slider', '', 0),
(10, 1, '2020-04-21 15:03:26', '2020-04-21 20:03:26', '', '19-sportster-1200-custom-hdi-hero', '', 'inherit', 'open', 'closed', '', '19-sportster-1200-custom-hdi-hero', '', '', '2020-04-21 15:03:26', '2020-04-21 20:03:26', '', 9, 'http://ms.test/wp-content/uploads/2020/04/19-sportster-1200-custom-hdi-hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2020-04-21 15:03:55', '2020-04-21 20:03:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 'Nuevo gg', '', 'publish', 'closed', 'closed', '', 'nuevo-gg', '', '', '2020-04-21 15:03:55', '2020-04-21 20:03:55', '', 0, 'http://ms.test/?post_type=slider&#038;p=11', 0, 'slider', '', 0),
(16, 1, '2020-04-22 16:26:57', '2020-04-22 21:26:57', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'First', 'first', 'publish', 'closed', 'closed', '', 'group_5ea0b6301c4bc', '', '', '2020-04-22 17:43:24', '2020-04-22 22:43:24', '', 0, 'http://ms.test/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2020-04-22 16:26:57', '2020-04-22 21:26:57', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'previo', 'previo', 'publish', 'closed', 'closed', '', 'field_5ea0b6419f149', '', '', '2020-04-22 16:38:59', '2020-04-22 21:38:59', '', 16, 'http://ms.test/?post_type=acf-field&#038;p=17', 0, 'acf-field', '', 0),
(18, 1, '2020-04-22 16:26:57', '2020-04-22 21:26:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5ea0b6719f14b', '', '', '2020-04-22 16:26:57', '2020-04-22 21:26:57', '', 17, 'http://ms.test/?post_type=acf-field&p=18', 0, 'acf-field', '', 0),
(19, 1, '2020-04-22 16:26:57', '2020-04-22 21:26:57', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'content', 'content', 'publish', 'closed', 'closed', '', 'field_5ea0b6769f14c', '', '', '2020-04-22 16:38:59', '2020-04-22 21:38:59', '', 17, 'http://ms.test/?post_type=acf-field&#038;p=19', 1, 'acf-field', '', 0),
(20, 1, '2020-04-22 16:26:57', '2020-04-22 21:26:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'button', 'button', 'publish', 'closed', 'closed', '', 'field_5ea0b67f9f14d', '', '', '2020-04-22 16:26:57', '2020-04-22 21:26:57', '', 17, 'http://ms.test/?post_type=acf-field&p=20', 2, 'acf-field', '', 0),
(21, 1, '2020-04-22 16:26:57', '2020-04-22 21:26:57', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'button_link', 'button_link', 'publish', 'closed', 'closed', '', 'field_5ea0b6889f14e', '', '', '2020-04-22 16:38:59', '2020-04-22 21:38:59', '', 17, 'http://ms.test/?post_type=acf-field&#038;p=21', 3, 'acf-field', '', 0),
(22, 1, '2020-04-22 16:38:59', '2020-04-22 21:38:59', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'image_previo', 'image_previo', 'publish', 'closed', 'closed', '', 'field_5ea0b91d513d5', '', '', '2020-04-22 16:39:33', '2020-04-22 21:39:33', '', 16, 'http://ms.test/?post_type=acf-field&#038;p=22', 1, 'acf-field', '', 0),
(23, 1, '2020-04-22 16:39:00', '2020-04-22 21:39:00', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5ea0b936513d6', '', '', '2020-04-22 16:45:19', '2020-04-22 21:45:19', '', 22, 'http://ms.test/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(24, 1, '2020-04-22 16:39:00', '2020-04-22 21:39:00', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image2', 'image2', 'publish', 'closed', 'closed', '', 'field_5ea0b945513d7', '', '', '2020-04-22 16:39:00', '2020-04-22 21:39:00', '', 22, 'http://ms.test/?post_type=acf-field&p=24', 1, 'acf-field', '', 0),
(25, 1, '2020-04-22 16:39:00', '2020-04-22 21:39:00', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image3', 'image3', 'publish', 'closed', 'closed', '', 'field_5ea0b955513d8', '', '', '2020-04-22 16:39:00', '2020-04-22 21:39:00', '', 22, 'http://ms.test/?post_type=acf-field&p=25', 2, 'acf-field', '', 0),
(26, 1, '2020-04-22 16:55:43', '2020-04-22 21:55:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Second', 'second', 'publish', 'closed', 'closed', '', 'group_5ea0bca99a0e9', '', '', '2020-04-22 17:21:24', '2020-04-22 22:21:24', '', 0, 'http://ms.test/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2020-04-22 16:55:43', '2020-04-22 21:55:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5ea0bcd82d229', '', '', '2020-04-22 16:55:43', '2020-04-22 21:55:43', '', 26, 'http://ms.test/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2020-04-22 16:55:43', '2020-04-22 21:55:43', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Card', 'card', 'publish', 'closed', 'closed', '', 'field_5ea0bce22d22a', '', '', '2020-04-22 17:13:27', '2020-04-22 22:13:27', '', 26, 'http://ms.test/?post_type=acf-field&#038;p=28', 1, 'acf-field', '', 0),
(29, 1, '2020-04-22 16:55:43', '2020-04-22 21:55:43', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image card', 'image_card', 'publish', 'closed', 'closed', '', 'field_5ea0bd302d22c', '', '', '2020-04-22 17:06:47', '2020-04-22 22:06:47', '', 28, 'http://ms.test/?post_type=acf-field&#038;p=29', 0, 'acf-field', '', 0),
(30, 1, '2020-04-22 16:55:43', '2020-04-22 21:55:43', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ea0bd14352fa\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'text card', 'text_card', 'publish', 'closed', 'closed', '', 'field_5ea0bd3f2d22d', '', '', '2020-04-22 17:04:37', '2020-04-22 22:04:37', '', 28, 'http://ms.test/?post_type=acf-field&#038;p=30', 1, 'acf-field', '', 0),
(31, 1, '2020-04-22 16:55:43', '2020-04-22 21:55:43', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ea0bd14352fa\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'button text', 'button_text', 'publish', 'closed', 'closed', '', 'field_5ea0bd432d22e', '', '', '2020-04-22 17:04:37', '2020-04-22 22:04:37', '', 28, 'http://ms.test/?post_type=acf-field&#038;p=31', 3, 'acf-field', '', 0),
(34, 1, '2020-04-22 16:59:33', '2020-04-22 21:59:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'text button', 'text_button', 'publish', 'closed', 'closed', '', 'field_5ea0bdeafc4e2', '', '', '2020-04-22 17:04:37', '2020-04-22 22:04:37', '', 28, 'http://ms.test/?post_type=acf-field&#038;p=34', 2, 'acf-field', '', 0),
(35, 1, '2020-04-22 16:59:33', '2020-04-22 21:59:33', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'link button', 'link_button', 'publish', 'closed', 'closed', '', 'field_5ea0bdfafc4e3', '', '', '2020-04-22 17:08:22', '2020-04-22 22:08:22', '', 28, 'http://ms.test/?post_type=acf-field&#038;p=35', 4, 'acf-field', '', 0),
(36, 1, '2020-04-22 17:00:17', '2020-04-22 22:00:17', '', 'group-5', '', 'inherit', 'open', 'closed', '', 'group-5', '', '', '2020-04-22 17:00:17', '2020-04-22 22:00:17', '', 0, 'http://ms.test/wp-content/uploads/2020/04/group-5.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Card2', 'card2', 'publish', 'closed', 'closed', '', 'field_5ea0c0c627201', '', '', '2020-04-22 17:13:27', '2020-04-22 22:13:27', '', 26, 'http://ms.test/?post_type=acf-field&#038;p=38', 2, 'acf-field', '', 0),
(39, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image card', 'image_card', 'publish', 'closed', 'closed', '', 'field_5ea0c0c627202', '', '', '2020-04-22 17:21:24', '2020-04-22 22:21:24', '', 38, 'http://ms.test/?post_type=acf-field&#038;p=39', 0, 'acf-field', '', 0),
(40, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'text card', 'text_card', 'publish', 'closed', 'closed', '', 'field_5ea0c0c627203', '', '', '2020-04-22 17:10:44', '2020-04-22 22:10:44', '', 38, 'http://ms.test/?post_type=acf-field&p=40', 1, 'acf-field', '', 0),
(41, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'text button', 'text_button', 'publish', 'closed', 'closed', '', 'field_5ea0c0c627204', '', '', '2020-04-22 17:10:44', '2020-04-22 22:10:44', '', 38, 'http://ms.test/?post_type=acf-field&p=41', 2, 'acf-field', '', 0),
(42, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'button text', 'button_text', 'publish', 'closed', 'closed', '', 'field_5ea0c0c627205', '', '', '2020-04-22 17:10:44', '2020-04-22 22:10:44', '', 38, 'http://ms.test/?post_type=acf-field&p=42', 3, 'acf-field', '', 0),
(43, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'link button', 'link_button', 'publish', 'closed', 'closed', '', 'field_5ea0c0c627206', '', '', '2020-04-22 17:10:44', '2020-04-22 22:10:44', '', 38, 'http://ms.test/?post_type=acf-field&p=43', 4, 'acf-field', '', 0),
(44, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Card3', 'card3', 'publish', 'closed', 'closed', '', 'field_5ea0c0da27207', '', '', '2020-04-22 17:13:27', '2020-04-22 22:13:27', '', 26, 'http://ms.test/?post_type=acf-field&#038;p=44', 3, 'acf-field', '', 0),
(45, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image card', 'image_card', 'publish', 'closed', 'closed', '', 'field_5ea0c0da27208', '', '', '2020-04-22 17:10:44', '2020-04-22 22:10:44', '', 44, 'http://ms.test/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'text card', 'text_card', 'publish', 'closed', 'closed', '', 'field_5ea0c0da27209', '', '', '2020-04-22 17:10:44', '2020-04-22 22:10:44', '', 44, 'http://ms.test/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'text button', 'text_button', 'publish', 'closed', 'closed', '', 'field_5ea0c0da2720a', '', '', '2020-04-22 17:10:44', '2020-04-22 22:10:44', '', 44, 'http://ms.test/?post_type=acf-field&p=47', 2, 'acf-field', '', 0),
(48, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'button text', 'button_text', 'publish', 'closed', 'closed', '', 'field_5ea0c0da2720b', '', '', '2020-04-22 17:10:44', '2020-04-22 22:10:44', '', 44, 'http://ms.test/?post_type=acf-field&p=48', 3, 'acf-field', '', 0),
(49, 1, '2020-04-22 17:10:44', '2020-04-22 22:10:44', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'link button', 'link_button', 'publish', 'closed', 'closed', '', 'field_5ea0c0da2720c', '', '', '2020-04-22 17:10:44', '2020-04-22 22:10:44', '', 44, 'http://ms.test/?post_type=acf-field&p=49', 4, 'acf-field', '', 0),
(50, 1, '2020-04-22 17:17:06', '2020-04-22 22:17:06', '', 'group-2', '', 'inherit', 'open', 'closed', '', 'group-2', '', '', '2020-04-22 17:17:06', '2020-04-22 22:17:06', '', 0, 'http://ms.test/wp-content/uploads/2020/04/group-2.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2020-04-22 17:17:34', '2020-04-22 22:17:34', '', 'group-7', '', 'inherit', 'open', 'closed', '', 'group-7', '', '', '2020-04-22 17:17:34', '2020-04-22 22:17:34', '', 0, 'http://ms.test/wp-content/uploads/2020/04/group-7.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2020-04-22 17:45:56', '2020-04-22 22:45:56', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'three', 'three', 'publish', 'closed', 'closed', '', 'group_5ea0c89266403', '', '', '2020-04-22 18:07:30', '2020-04-22 23:07:30', '', 0, 'http://ms.test/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2020-04-22 17:45:57', '2020-04-22 22:45:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title_three', 'publish', 'closed', 'closed', '', 'field_5ea0c8bed5354', '', '', '2020-04-22 17:46:27', '2020-04-22 22:46:27', '', 52, 'http://ms.test/?post_type=acf-field&#038;p=53', 0, 'acf-field', '', 0),
(54, 1, '2020-04-22 17:45:57', '2020-04-22 22:45:57', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:4;s:3:\"max\";i:12;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5ea0c8d5d5355', '', '', '2020-04-22 18:06:50', '2020-04-22 23:06:50', '', 52, 'http://ms.test/?post_type=acf-field&#038;p=54', 1, 'acf-field', '', 0),
(55, 1, '2020-04-22 17:45:57', '2020-04-22 22:45:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5ea0c90dd5356', '', '', '2020-04-22 18:06:50', '2020-04-22 23:06:50', '', 54, 'http://ms.test/?post_type=acf-field&#038;p=55', 0, 'acf-field', '', 0),
(56, 1, '2020-04-22 17:50:54', '2020-04-22 22:50:54', '', 'bitmap', '', 'inherit', 'open', 'closed', '', 'bitmap', '', '', '2020-04-22 17:50:54', '2020-04-22 22:50:54', '', 0, 'http://ms.test/wp-content/uploads/2020/04/bitmap.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2020-04-22 17:52:06', '2020-04-22 22:52:06', '', 'bitmap', '', 'inherit', 'open', 'closed', '', 'bitmap-2', '', '', '2020-04-22 17:52:06', '2020-04-22 22:52:06', '', 0, 'http://ms.test/wp-content/uploads/2020/04/bitmap-1.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2020-04-22 17:52:40', '2020-04-22 22:52:40', '', 'bitmap', '', 'inherit', 'open', 'closed', '', 'bitmap-3', '', '', '2020-04-22 17:52:40', '2020-04-22 22:52:40', '', 0, 'http://ms.test/wp-content/uploads/2020/04/bitmap-2.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2020-04-22 18:02:38', '2020-04-22 23:02:38', '', 'bitmap', '', 'inherit', 'open', 'closed', '', 'bitmap-4', '', '', '2020-04-22 18:02:38', '2020-04-22 23:02:38', '', 0, 'http://ms.test/wp-content/uploads/2020/04/bitmap-3.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2020-04-22 18:03:23', '2020-04-22 23:03:23', '', 'bitmap', '', 'inherit', 'open', 'closed', '', 'bitmap-5', '', '', '2020-04-22 18:03:23', '2020-04-22 23:03:23', '', 0, 'http://ms.test/wp-content/uploads/2020/04/bitmap-4.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2020-04-22 18:08:06', '2020-04-22 23:08:06', '<!-- wp:heading {\"level\":4} -->\n<h4>Creciendo entre marcas y personas.</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Como agencia digital líder en el mercado, combinamos&nbsp;<strong>creatividad</strong>&nbsp;y&nbsp;<strong>conocimientos tecnológicos.&nbsp;</strong>Somos el puente entre nuestros clientes y su público objetivo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-04-26 23:20:49', '2020-04-27 04:20:49', '', 0, 'http://ms.test/?page_id=61', 0, 'page', '', 0),
(62, 1, '2020-04-22 18:08:06', '2020-04-22 23:08:06', '', 'about', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-22 18:08:06', '2020-04-22 23:08:06', '', 61, 'http://ms.test/2020/04/22/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-04-22 18:36:40', '2020-04-22 23:36:40', '', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-22 18:36:40', '2020-04-22 23:36:40', '', 61, 'http://ms.test/2020/04/22/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-04-23 12:35:36', '2020-04-23 17:35:36', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-23 12:35:36', '2020-04-23 17:35:36', '', 61, 'http://ms.test/2020/04/23/61-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-04-24 11:32:27', '2020-04-24 16:32:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"61\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tabs about', 'tabs-about', 'publish', 'closed', 'closed', '', 'group_5ea3141670e6b', '', '', '2020-04-24 14:46:08', '2020-04-24 19:46:08', '', 0, 'http://ms.test/?post_type=acf-field-group&#038;p=66', 0, 'acf-field-group', '', 0),
(67, 1, '2020-04-24 11:32:27', '2020-04-24 16:32:27', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Tab', 'tab', 'publish', 'closed', 'closed', '', 'field_5ea3141edd8df', '', '', '2020-04-24 14:46:08', '2020-04-24 19:46:08', '', 66, 'http://ms.test/?post_type=acf-field&#038;p=67', 0, 'acf-field', '', 0),
(68, 1, '2020-04-24 11:32:27', '2020-04-24 16:32:27', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:4;s:3:\"max\";i:8;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:8:\"Add team\";}', 'Team', 'team', 'publish', 'closed', 'closed', '', 'field_5ea3142edd8e0', '', '', '2020-04-24 13:44:31', '2020-04-24 18:44:31', '', 66, 'http://ms.test/?post_type=acf-field&#038;p=68', 2, 'acf-field', '', 0),
(69, 1, '2020-04-24 11:32:28', '2020-04-24 16:32:28', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image profile', 'image_profile', 'publish', 'closed', 'closed', '', 'field_5ea31446dd8e1', '', '', '2020-04-24 11:32:28', '2020-04-24 16:32:28', '', 68, 'http://ms.test/?post_type=acf-field&p=69', 0, 'acf-field', '', 0),
(70, 1, '2020-04-24 11:32:28', '2020-04-24 16:32:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name profile', 'name_profile', 'publish', 'closed', 'closed', '', 'field_5ea31462dd8e2', '', '', '2020-04-24 11:32:28', '2020-04-24 16:32:28', '', 68, 'http://ms.test/?post_type=acf-field&p=70', 1, 'acf-field', '', 0),
(71, 1, '2020-04-24 11:32:28', '2020-04-24 16:32:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'job', 'job', 'publish', 'closed', 'closed', '', 'field_5ea31470dd8e3', '', '', '2020-04-24 11:32:28', '2020-04-24 16:32:28', '', 68, 'http://ms.test/?post_type=acf-field&p=71', 2, 'acf-field', '', 0),
(72, 1, '2020-04-24 11:33:40', '2020-04-24 16:33:40', '', 'photo-1517832207067-4db24a2ae47c', '', 'inherit', 'open', 'closed', '', 'photo-1517832207067-4db24a2ae47c', '', '', '2020-04-24 11:33:40', '2020-04-24 16:33:40', '', 61, 'http://ms.test/wp-content/uploads/2020/04/photo-1517832207067-4db24a2ae47c.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-04-24 11:34:11', '2020-04-24 16:34:11', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-24 11:34:11', '2020-04-24 16:34:11', '', 61, 'http://ms.test/2020/04/24/61-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-04-24 11:38:35', '2020-04-24 16:38:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tab title', 'tab_title', 'publish', 'closed', 'closed', '', 'field_5ea315c1b680b', '', '', '2020-04-24 14:09:04', '2020-04-24 19:09:04', '', 66, 'http://ms.test/?post_type=acf-field&#038;p=74', 1, 'acf-field', '', 0),
(75, 1, '2020-04-24 11:38:35', '2020-04-24 16:38:35', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Tab 2', 'tab_2', 'publish', 'closed', 'closed', '', 'field_5ea315d4b680c', '', '', '2020-04-24 14:09:04', '2020-04-24 19:09:04', '', 66, 'http://ms.test/?post_type=acf-field&#038;p=75', 3, 'acf-field', '', 0),
(76, 1, '2020-04-24 11:38:35', '2020-04-24 16:38:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tab title 2', 'tab_title_2', 'publish', 'closed', 'closed', '', 'field_5ea315dbb680d', '', '', '2020-04-24 14:09:04', '2020-04-24 19:09:04', '', 66, 'http://ms.test/?post_type=acf-field&#038;p=76', 4, 'acf-field', '', 0),
(77, 1, '2020-04-24 11:38:35', '2020-04-24 16:38:35', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:4;s:3:\"max\";i:8;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:8:\"Add team\";}', 'Team 2', 'team_2', 'publish', 'closed', 'closed', '', 'field_5ea315e8b680e', '', '', '2020-04-24 14:09:04', '2020-04-24 19:09:04', '', 66, 'http://ms.test/?post_type=acf-field&#038;p=77', 5, 'acf-field', '', 0),
(78, 1, '2020-04-24 11:38:36', '2020-04-24 16:38:36', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image profile', 'image_profile', 'publish', 'closed', 'closed', '', 'field_5ea315e8b680f', '', '', '2020-04-24 14:45:09', '2020-04-24 19:45:09', '', 77, 'http://ms.test/?post_type=acf-field&#038;p=78', 0, 'acf-field', '', 0),
(79, 1, '2020-04-24 11:38:36', '2020-04-24 16:38:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name profile', 'name_profile', 'publish', 'closed', 'closed', '', 'field_5ea315e8b6810', '', '', '2020-04-24 11:38:36', '2020-04-24 16:38:36', '', 77, 'http://ms.test/?post_type=acf-field&p=79', 1, 'acf-field', '', 0),
(80, 1, '2020-04-24 11:38:36', '2020-04-24 16:38:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'job', 'job', 'publish', 'closed', 'closed', '', 'field_5ea315e8b6811', '', '', '2020-04-24 11:38:36', '2020-04-24 16:38:36', '', 77, 'http://ms.test/?post_type=acf-field&p=80', 2, 'acf-field', '', 0),
(81, 1, '2020-04-24 11:38:36', '2020-04-24 16:38:36', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Tab 3', 'tab_3', 'publish', 'closed', 'closed', '', 'field_5ea315f4b6812', '', '', '2020-04-24 14:09:04', '2020-04-24 19:09:04', '', 66, 'http://ms.test/?post_type=acf-field&#038;p=81', 6, 'acf-field', '', 0),
(82, 1, '2020-04-24 11:38:36', '2020-04-24 16:38:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tab title 3', 'tab_title_3', 'publish', 'closed', 'closed', '', 'field_5ea315f9b6813', '', '', '2020-04-24 14:09:04', '2020-04-24 19:09:04', '', 66, 'http://ms.test/?post_type=acf-field&#038;p=82', 7, 'acf-field', '', 0),
(83, 1, '2020-04-24 11:38:36', '2020-04-24 16:38:36', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:4;s:3:\"max\";i:8;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:8:\"Add team\";}', 'Team 3', 'team_3', 'publish', 'closed', 'closed', '', 'field_5ea315feb6814', '', '', '2020-04-24 14:09:04', '2020-04-24 19:09:04', '', 66, 'http://ms.test/?post_type=acf-field&#038;p=83', 8, 'acf-field', '', 0),
(84, 1, '2020-04-24 11:38:36', '2020-04-24 16:38:36', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image profile', 'image_profile', 'publish', 'closed', 'closed', '', 'field_5ea315ffb6815', '', '', '2020-04-24 11:38:36', '2020-04-24 16:38:36', '', 83, 'http://ms.test/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(85, 1, '2020-04-24 11:38:36', '2020-04-24 16:38:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name profile', 'name_profile', 'publish', 'closed', 'closed', '', 'field_5ea315ffb6816', '', '', '2020-04-24 11:38:36', '2020-04-24 16:38:36', '', 83, 'http://ms.test/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(86, 1, '2020-04-24 11:38:36', '2020-04-24 16:38:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'job', 'job', 'publish', 'closed', 'closed', '', 'field_5ea315ffb6817', '', '', '2020-04-24 11:38:36', '2020-04-24 16:38:36', '', 83, 'http://ms.test/?post_type=acf-field&p=86', 2, 'acf-field', '', 0),
(87, 1, '2020-04-24 11:45:21', '2020-04-24 16:45:21', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-24 11:45:21', '2020-04-24 16:45:21', '', 61, 'http://ms.test/2020/04/24/61-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(88, 1, '2020-04-24 14:13:33', '2020-04-24 19:13:33', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-24 14:13:33', '2020-04-24 19:13:33', '', 61, 'http://ms.test/2020/04/24/61-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-04-24 14:18:04', '2020-04-24 19:18:04', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-24 14:18:04', '2020-04-24 19:18:04', '', 61, 'http://ms.test/2020/04/24/61-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-04-24 14:38:15', '2020-04-24 19:38:15', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-24 14:38:15', '2020-04-24 19:38:15', '', 61, 'http://ms.test/2020/04/24/61-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-04-24 14:41:43', '2020-04-24 19:41:43', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-24 14:41:43', '2020-04-24 19:41:43', '', 61, 'http://ms.test/2020/04/24/61-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-04-24 14:48:12', '2020-04-24 19:48:12', '', '01-shutterstock_476340928-Irina-Bg-1024x683', '', 'inherit', 'open', 'closed', '', '01-shutterstock_476340928-irina-bg-1024x683', '', '', '2020-04-24 14:48:12', '2020-04-24 19:48:12', '', 61, 'http://ms.test/wp-content/uploads/2020/04/01-shutterstock_476340928-Irina-Bg-1024x683-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2020-04-24 14:48:22', '2020-04-24 19:48:22', '', '03-shutterstock_450728395-F8-studio-1024x683', '', 'inherit', 'open', 'closed', '', '03-shutterstock_450728395-f8-studio-1024x683', '', '', '2020-04-24 14:48:22', '2020-04-24 19:48:22', '', 61, 'http://ms.test/wp-content/uploads/2020/04/03-shutterstock_450728395-F8-studio-1024x683-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2020-04-24 14:50:14', '2020-04-24 19:50:14', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-24 14:50:14', '2020-04-24 19:50:14', '', 61, 'http://ms.test/2020/04/24/61-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-04-24 14:57:42', '2020-04-24 19:57:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"61\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_5ea344914338b', '', '', '2020-04-26 22:37:01', '2020-04-27 03:37:01', '', 0, 'http://ms.test/?post_type=acf-field-group&#038;p=95', 9, 'acf-field-group', '', 0),
(96, 1, '2020-04-24 14:57:42', '2020-04-24 19:57:42', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'form contact', 'form_contact', 'publish', 'closed', 'closed', '', 'field_5ea34498ce51a', '', '', '2020-04-26 22:36:51', '2020-04-27 03:36:51', '', 95, 'http://ms.test/?post_type=acf-field&#038;p=96', 1, 'acf-field', '', 0),
(97, 1, '2015-04-06 17:18:12', '2015-04-06 17:18:12', '{\"email_to\":\"[admin_email]\",\"cc\":\"\",\"bcc\":\"\",\"reply_to\":\"[3]\",\"from\":\"[sitename] <[admin_email]>\",\"email_subject\":\"\",\"email_message\":\"[default-message]\",\"event\":[\"create\"],\"conditions\":{\"send_stop\":\"send\",\"any_all\":\"any\"}}', 'Email Notification', 'email', 'publish', 'open', 'open', '', '1_email_1', '', '', '2015-04-06 17:18:12', '2015-04-06 17:18:12', '', 0, 'http://ms.test/frm_form_actions/1_email_1/', 1, 'frm_form_actions', '', 0),
(98, 1, '2020-04-24 15:40:44', '2020-04-24 20:40:44', '{\"theme_css\":\"ui-lightness\",\"theme_name\":\"UI Lightness\",\"center_form\":\"\",\"form_width\":\"100%\",\"form_align\":\"left\",\"direction\":\"ltr\",\"fieldset\":\"0px\",\"fieldset_color\":\"000000\",\"fieldset_padding\":\"0 0 15px 0\",\"fieldset_bg_color\":\"\",\"title_size\":\"20px\",\"title_color\":\"444444\",\"title_margin_top\":\"10px\",\"title_margin_bottom\":\"10px\",\"form_desc_size\":\"14px\",\"form_desc_color\":\"666666\",\"form_desc_margin_top\":\"10px\",\"form_desc_margin_bottom\":\"25px\",\"font\":\"\\\"Lucida Grande\\\",\\\"Lucida Sans Unicode\\\",Tahoma,sans-serif\",\"font_size\":\"14px\",\"label_color\":\"444444\",\"weight\":\"bold\",\"position\":\"none\",\"align\":\"left\",\"width\":\"150px\",\"required_color\":\"B94A48\",\"required_weight\":\"bold\",\"label_padding\":\"0 0 3px 0\",\"description_font_size\":\"12px\",\"description_color\":\"666666\",\"description_weight\":\"normal\",\"description_style\":\"normal\",\"description_align\":\"left\",\"description_margin\":\"0\",\"field_font_size\":\"14px\",\"field_height\":\"32px\",\"line_height\":\"normal\",\"field_width\":\"100%\",\"auto_width\":\"\",\"field_pad\":\"6px 10px\",\"field_margin\":\"20px\",\"field_weight\":\"normal\",\"text_color\":\"555555\",\"border_color\":\"cccccc\",\"field_border_width\":\"1px\",\"field_border_style\":\"solid\",\"bg_color\":\"ffffff\",\"remove_box_shadow\":\"\",\"bg_color_active\":\"ffffff\",\"border_color_active\":\"66afe9\",\"remove_box_shadow_active\":\"\",\"text_color_error\":\"444444\",\"bg_color_error\":\"ffffff\",\"border_color_error\":\"B94A48\",\"border_width_error\":\"1px\",\"border_style_error\":\"solid\",\"bg_color_disabled\":\"ffffff\",\"border_color_disabled\":\"E5E5E5\",\"text_color_disabled\":\"A1A1A1\",\"radio_align\":\"block\",\"check_align\":\"block\",\"check_font_size\":\"13px\",\"check_label_color\":\"444444\",\"check_weight\":\"normal\",\"section_font_size\":\"18px\",\"section_color\":\"444444\",\"section_weight\":\"bold\",\"section_pad\":\"15px 0 3px 0\",\"section_mar_top\":\"15px\",\"section_mar_bottom\":\"12px\",\"section_bg_color\":\"\",\"section_border_color\":\"e8e8e8\",\"section_border_width\":\"2px\",\"section_border_style\":\"solid\",\"section_border_loc\":\"-top\",\"collapse_icon\":\"6\",\"collapse_pos\":\"after\",\"repeat_icon\":\"1\",\"submit_style\":\"\",\"submit_font_size\":\"14px\",\"submit_width\":\"auto\",\"submit_height\":\"auto\",\"submit_bg_color\":\"ffffff\",\"submit_border_color\":\"cccccc\",\"submit_border_width\":\"1px\",\"submit_text_color\":\"444444\",\"submit_weight\":\"normal\",\"submit_border_radius\":\"4px\",\"submit_bg_img\":\"\",\"submit_margin\":\"10px\",\"submit_padding\":\"6px 11px\",\"submit_shadow_color\":\"eeeeee\",\"submit_hover_bg_color\":\"efefef\",\"submit_hover_color\":\"444444\",\"submit_hover_border_color\":\"cccccc\",\"submit_active_bg_color\":\"efefef\",\"submit_active_color\":\"444444\",\"submit_active_border_color\":\"cccccc\",\"border_radius\":\"4px\",\"error_bg\":\"F2DEDE\",\"error_border\":\"EBCCD1\",\"error_text\":\"B94A48\",\"error_font_size\":\"14px\",\"success_bg_color\":\"DFF0D8\",\"success_border_color\":\"D6E9C6\",\"success_text_color\":\"468847\",\"success_font_size\":\"14px\",\"important_style\":\"\",\"progress_bg_color\":\"dddddd\",\"progress_active_color\":\"ffffff\",\"progress_active_bg_color\":\"4199FD\",\"progress_color\":\"ffffff\",\"progress_border_color\":\"dfdfdf\",\"progress_border_size\":\"2px\",\"progress_size\":\"30px\",\"custom_css\":\"\"}', 'Formidable Style', '', 'publish', 'closed', 'closed', '', 'formidable-style', '', '', '2020-04-24 15:40:44', '2020-04-24 20:40:44', '', 0, 'http://ms.test/frm_styles/formidable-style/', 1, 'frm_styles', '', 0),
(100, 1, '2020-04-24 17:40:07', '2020-04-24 22:40:07', '<!-- wp:paragraph -->\n<p><em><strong>Rugrats: La película - Aventuras en pañales</strong></em>&nbsp;(<em><strong>The Rugrats Movie</strong></em>&nbsp;en inglés) es una&nbsp;<a href=\"https://es.wikipedia.org/wiki/Pel%C3%ADcula_infantil\">película infantil</a><a href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">estadounidense</a>&nbsp;de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Animaci%C3%B3n\">animación</a>&nbsp;del año&nbsp;<a href=\"https://es.wikipedia.org/wiki/1998\">1998</a>&nbsp;basada en la serie infantil de animación&nbsp;<a href=\"https://es.wikipedia.org/wiki/Rugrats\">Rugrats</a>. Fue creada por&nbsp;<a href=\"https://es.wikipedia.org/wiki/Nickelodeon_Movies\">Nickelodeon Movies</a>&nbsp;y&nbsp;<a href=\"https://es.wikipedia.org/wiki/Klasky-Csupo\">Klasky-Csupo</a>&nbsp;y lanzada por&nbsp;<a href=\"https://es.wikipedia.org/wiki/Paramount_Pictures\">Paramount Pictures</a>. Fue dirigida por&nbsp;<a href=\"https://es.wikipedia.org/w/index.php?title=Norton_Virgien&amp;action=edit&amp;redlink=1\">Norton Virgien</a>&nbsp;e&nbsp;<a href=\"https://es.wikipedia.org/w/index.php?title=Igor_Kovaljov&amp;action=edit&amp;redlink=1\">Igor Kovaljov</a>. Fue estrenada el&nbsp;<a href=\"https://es.wikipedia.org/wiki/20_de_noviembre\">20 de noviembre</a>&nbsp;de&nbsp;<a href=\"https://es.wikipedia.org/wiki/1998\">1998</a>&nbsp;en&nbsp;<a href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">Estados Unidos</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li><a href=\"Rugrats: La película - Aventuras en pañales (The Rugrats Movie en inglés) es una película infantilestadounidense de animación del año 1998 basada en la serie infantil de animación Rugrats\"><em><strong>Rugrats: La película - Aventuras en pañales</strong></em> (<em><strong>The Rugrats Movie</strong></em> en inglés) es una <a href=\"https://es.wikipedia.org/wiki/Pel%C3%ADcula_infantil\">película infantil</a><a href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">estadounidense</a> de <a href=\"https://es.wikipedia.org/wiki/Animaci%C3%B3n\">animación</a> del año <a href=\"https://es.wikipedia.org/wiki/1998\">1998</a> basada en la serie infantil de animación <a href=\"https://es.wikipedia.org/wiki/Rugrats\">Rugrats</a></a></li><li><em><strong>Rugrats: La película - Aventuras en pañales</strong></em> (<em><strong>The Rugrats Movie</strong></em> en inglés) es una <a href=\"https://es.wikipedia.org/wiki/Pel%C3%ADcula_infantil\">película infantil</a><a href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">estadounidense</a> de <a href=\"https://es.wikipedia.org/wiki/Animaci%C3%B3n\">animación</a> del año <a href=\"https://es.wikipedia.org/wiki/1998\">1998</a> basada en la serie infantil de animación <a href=\"https://es.wikipedia.org/wiki/Rugrats\">Rugrats</a></li><li><em><strong>Rugrats: La película - Aventuras en pañales</strong></em> (<em><strong>The Rugrats Movie</strong></em> en inglés) es una <a href=\"https://es.wikipedia.org/wiki/Pel%C3%ADcula_infantil\">película infantil</a><a href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">estadounidense</a> de <a href=\"https://es.wikipedia.org/wiki/Animaci%C3%B3n\">animación</a> del año <a href=\"https://es.wikipedia.org/wiki/1998\">1998</a> basada en la serie infantil de animación <a href=\"https://es.wikipedia.org/wiki/Rugrats\">Rugrats</a></li><li><em><strong>Rugrats: La película - Aventuras en pañales</strong></em> (<em><strong>The Rugrats Movie</strong></em> en inglés) es una <a href=\"https://es.wikipedia.org/wiki/Pel%C3%ADcula_infantil\">película infantil</a><a href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">estadounidense</a> de <a href=\"https://es.wikipedia.org/wiki/Animaci%C3%B3n\">animación</a> del año <a href=\"https://es.wikipedia.org/wiki/1998\">1998</a> basada en la serie infantil de animación <a href=\"https://es.wikipedia.org/wiki/Rugrats\">Rugrats</a></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>I love you the more in that I believe you had liked me for my own sake and for nothing else.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:gallery {\"ids\":[93,72,92],\"align\":\"center\"} -->\n<figure class=\"wp-block-gallery aligncenter columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://ms.test/wp-content/uploads/2020/04/03-shutterstock_450728395-F8-studio-1024x683-1.jpg\" alt=\"\" data-id=\"93\" data-full-url=\"http://ms.test/wp-content/uploads/2020/04/03-shutterstock_450728395-F8-studio-1024x683-1.jpg\" data-link=\"http://ms.test/about/03-shutterstock_450728395-f8-studio-1024x683/\" class=\"wp-image-93\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://ms.test/wp-content/uploads/2020/04/photo-1517832207067-4db24a2ae47c-1024x684.jpg\" alt=\"\" data-id=\"72\" data-full-url=\"http://ms.test/wp-content/uploads/2020/04/photo-1517832207067-4db24a2ae47c-scaled.jpg\" data-link=\"http://ms.test/about/photo-1517832207067-4db24a2ae47c/\" class=\"wp-image-72\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://ms.test/wp-content/uploads/2020/04/01-shutterstock_476340928-Irina-Bg-1024x683-1.jpg\" alt=\"\" data-id=\"92\" data-full-url=\"http://ms.test/wp-content/uploads/2020/04/01-shutterstock_476340928-Irina-Bg-1024x683-1.jpg\" data-link=\"http://ms.test/about/01-shutterstock_476340928-irina-bg-1024x683/\" class=\"wp-image-92\"/></figure></li></ul></figure>\n<!-- /wp:gallery --></div></div>\n<!-- /wp:group -->', 'Rugrats: La película - Aventuras en pañales', 'es una película infantilestadounidense de animación del año 1998 basada en la serie infantil de animación Rugrats', 'publish', 'closed', 'closed', '', 'asdsad', '', '', '2020-04-27 01:45:04', '2020-04-27 06:45:04', '', 0, 'http://ms.test/?post_type=actividades&#038;p=100', 0, 'actividades', '', 0),
(103, 1, '2020-04-25 11:43:20', '2020-04-25 16:43:20', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2020-04-25 19:10:54', '2020-04-26 00:10:54', '', 0, 'http://ms.test/?p=103', 1, 'nav_menu_item', '', 0),
(105, 1, '2020-04-25 11:52:40', '2020-04-25 16:52:40', '', 'Actividades', '', 'publish', 'closed', 'closed', '', 'actividades', '', '', '2020-04-25 19:10:54', '2020-04-26 00:10:54', '', 0, 'http://ms.test/?p=105', 2, 'nav_menu_item', '', 0),
(106, 1, '2020-04-25 12:16:55', '2020-04-25 17:16:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'rss footer', 'rss-footer', 'publish', 'closed', 'closed', '', 'group_5ea4701d8e545', '', '', '2020-04-25 12:16:55', '2020-04-25 17:16:55', '', 0, 'http://ms.test/?post_type=acf-field-group&#038;p=106', 0, 'acf-field-group', '', 0),
(107, 1, '2020-04-25 12:16:55', '2020-04-25 17:16:55', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5ea47024c59f6', '', '', '2020-04-25 12:16:55', '2020-04-25 17:16:55', '', 106, 'http://ms.test/?post_type=acf-field&p=107', 0, 'acf-field', '', 0),
(108, 1, '2020-04-25 12:16:55', '2020-04-25 17:16:55', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'linkedin', 'linkedin', 'publish', 'closed', 'closed', '', 'field_5ea47045c59f8', '', '', '2020-04-25 12:16:55', '2020-04-25 17:16:55', '', 106, 'http://ms.test/?post_type=acf-field&p=108', 1, 'acf-field', '', 0),
(109, 1, '2020-04-25 12:16:55', '2020-04-25 17:16:55', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5ea4702ec59f7', '', '', '2020-04-25 12:16:55', '2020-04-25 17:16:55', '', 106, 'http://ms.test/?post_type=acf-field&p=109', 2, 'acf-field', '', 0),
(110, 1, '2020-04-25 12:16:55', '2020-04-25 17:16:55', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5ea4705bc59f9', '', '', '2020-04-25 12:16:55', '2020-04-25 17:16:55', '', 106, 'http://ms.test/?post_type=acf-field&p=110', 3, 'acf-field', '', 0),
(111, 1, '2020-04-25 12:16:55', '2020-04-25 17:16:55', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'youtube', 'youtube', 'publish', 'closed', 'closed', '', 'field_5ea47073c59fa', '', '', '2020-04-25 12:16:55', '2020-04-25 17:16:55', '', 106, 'http://ms.test/?post_type=acf-field&p=111', 4, 'acf-field', '', 0),
(112, 1, '2020-04-25 14:29:36', '2020-04-25 19:29:36', '', 'HT_rugrats_02_jef_160809_4x3_992', '', 'inherit', 'open', 'closed', '', 'ht_rugrats_02_jef_160809_4x3_992', '', '', '2020-04-25 14:29:36', '2020-04-25 19:29:36', '', 100, 'http://ms.test/wp-content/uploads/2020/04/HT_rugrats_02_jef_160809_4x3_992.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2020-04-18 17:26:00', '2020-04-18 22:26:00', '<!-- wp:paragraph -->\n<p>En el verano de 1945, se celebra la boda de Connie (Talia Shire) y Carlo Rizzi (Gianni Russo). Connie es la única hija de Don Vito Corleone (Marlon Brando), jefe de una de las familias que ejercen el mando de la Cosa Nostra en la ciudad de Nueva York. Don Vito además tiene otros tres hijos: su primogénito Sonny (James Caan), el endeble Fredo (John Cazale) y el más joven se todos, Michael (Al Pacino), un marine condecorado por su lucha en la Segunda Guerra Mundial que acaba de regresar a su hogar en Nueva York. Por designios de la fortuna, Michael terminará llevando la vida que no deseaba, tomando las riendas del negocio familiar, cambiando su moral y sus valores, para defender a toda costa a su familia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[116,114,112,93]} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://ms.test/wp-content/uploads/2020/04/04-shutterstock_565988308-Joyseulay-1024x683-1.jpg\" alt=\"\" data-id=\"116\" data-full-url=\"http://ms.test/wp-content/uploads/2020/04/04-shutterstock_565988308-Joyseulay-1024x683-1.jpg\" data-link=\"http://ms.test/actividades/sal-del-himalaya/04-shutterstock_565988308-joyseulay-1024x683/\" class=\"wp-image-116\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://ms.test/wp-content/uploads/2020/04/0117051.jpg-c_215_290_x-f_jpg-q_x-xxyxx.jpg\" alt=\"\" data-id=\"114\" data-full-url=\"http://ms.test/wp-content/uploads/2020/04/0117051.jpg-c_215_290_x-f_jpg-q_x-xxyxx.jpg\" data-link=\"http://ms.test/actividades/el-padrino/0117051-jpg-c_215_290_x-f_jpg-q_x-xxyxx/\" class=\"wp-image-114\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://ms.test/wp-content/uploads/2020/04/HT_rugrats_02_jef_160809_4x3_992.jpg\" alt=\"\" data-id=\"112\" data-full-url=\"http://ms.test/wp-content/uploads/2020/04/HT_rugrats_02_jef_160809_4x3_992.jpg\" data-link=\"http://ms.test/actividades/asdsad/ht_rugrats_02_jef_160809_4x3_992/\" class=\"wp-image-112\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://ms.test/wp-content/uploads/2020/04/03-shutterstock_450728395-F8-studio-1024x683-1.jpg\" alt=\"\" data-id=\"93\" data-full-url=\"http://ms.test/wp-content/uploads/2020/04/03-shutterstock_450728395-F8-studio-1024x683-1.jpg\" data-link=\"http://ms.test/about/03-shutterstock_450728395-f8-studio-1024x683/\" class=\"wp-image-93\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'El padrino', 'En el verano de 1945, se celebra la boda de Connie (Talia Shire) y Carlo Rizzi (Gianni Russo). Connie es la única hija de Don Vito Corleone (Marlon Brando), jefe de una de las familias que ejercen el mando de la Cosa Nostra en la ciudad de Nueva York.', 'publish', 'closed', 'closed', '', 'el-padrino', '', '', '2020-04-26 21:58:23', '2020-04-27 02:58:23', '', 0, 'http://ms.test/?post_type=actividades&#038;p=113', 0, 'actividades', '', 0),
(114, 1, '2020-04-25 17:26:18', '2020-04-25 22:26:18', '', '0117051.jpg-c_215_290_x-f_jpg-q_x-xxyxx', '', 'inherit', 'open', 'closed', '', '0117051-jpg-c_215_290_x-f_jpg-q_x-xxyxx', '', '', '2020-04-25 17:26:18', '2020-04-25 22:26:18', '', 113, 'http://ms.test/wp-content/uploads/2020/04/0117051.jpg-c_215_290_x-f_jpg-q_x-xxyxx.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2020-04-25 17:30:13', '2020-04-25 22:30:13', '<!-- wp:paragraph -->\n<p>La&nbsp;<strong>sal del Himalaya</strong>&nbsp;se trata de un tipo de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Sal_(condimento)\">sal</a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Mineral\">mineral</a>&nbsp;procedente de la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Halita\">halita</a>, y que se suele extraer en las&nbsp;<a href=\"https://es.wikipedia.org/wiki/Monta%C3%B1a\">montañas</a>&nbsp;de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Pakist%C3%A1n\">Pakistán</a>.<sup><a href=\"https://es.wikipedia.org/wiki/Sal_del_Himalaya#cite_note-1\">1</a></sup>​ Este tipo de sal ha empezado a comercializarse en diversas partes de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Europa\">Europa</a>,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">Estados Unidos</a>&nbsp;y&nbsp;<a href=\"https://es.wikipedia.org/wiki/Australia\">Australia</a></p>\n<!-- /wp:paragraph -->', 'Sal del himalaya', 'La sal del Himalaya se trata de un tipo de sal mineral procedente de la halita, y que se suele extraer en las montañas de Pakistán.', 'publish', 'closed', 'closed', '', 'sal-del-himalaya', '', '', '2020-04-26 19:27:57', '2020-04-27 00:27:57', '', 0, 'http://ms.test/?post_type=actividades&#038;p=115', 0, 'actividades', '', 0),
(116, 1, '2020-04-25 17:29:47', '2020-04-25 22:29:47', '', '04-shutterstock_565988308-Joyseulay-1024x683', '', 'inherit', 'open', 'closed', '', '04-shutterstock_565988308-joyseulay-1024x683', '', '', '2020-04-25 17:29:47', '2020-04-25 22:29:47', '', 115, 'http://ms.test/wp-content/uploads/2020/04/04-shutterstock_565988308-Joyseulay-1024x683-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2020-04-25 19:10:54', '2020-04-26 00:10:54', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2020-04-25 19:10:54', '2020-04-26 00:10:54', '', 0, 'http://ms.test/?p=117', 3, 'nav_menu_item', '', 0),
(118, 1, '2020-04-25 19:12:50', '2020-04-26 00:12:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Logo Footer', 'logo-footer', 'publish', 'closed', 'closed', '', 'group_5ea4d1d5243dc', '', '', '2020-04-25 19:12:50', '2020-04-26 00:12:50', '', 0, 'http://ms.test/?post_type=acf-field-group&#038;p=118', 0, 'acf-field-group', '', 0),
(119, 1, '2020-04-25 19:12:50', '2020-04-26 00:12:50', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo footer', 'Logo_footer', 'publish', 'closed', 'closed', '', 'field_5ea4d1dd65775', '', '', '2020-04-25 19:12:50', '2020-04-26 00:12:50', '', 118, 'http://ms.test/?post_type=acf-field&p=119', 0, 'acf-field', '', 0),
(120, 1, '2020-04-25 19:13:48', '2020-04-26 00:13:48', '', 'logo-white', '', 'inherit', 'open', 'closed', '', 'logo-white', '', '', '2020-04-25 19:13:48', '2020-04-26 00:13:48', '', 0, 'http://ms.test/wp-content/uploads/2020/04/logo-white.png', 0, 'attachment', 'image/png', 0),
(121, 1, '2020-04-25 19:16:30', '2020-04-26 00:16:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'group_5ea4d2af7d20d', '', '', '2020-04-25 19:16:31', '2020-04-26 00:16:31', '', 0, 'http://ms.test/?post_type=acf-field-group&#038;p=121', 0, 'acf-field-group', '', 0),
(122, 1, '2020-04-25 19:16:30', '2020-04-26 00:16:30', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo Black', 'logo_black', 'publish', 'closed', 'closed', '', 'field_5ea4d2b88c51f', '', '', '2020-04-25 19:16:30', '2020-04-26 00:16:30', '', 121, 'http://ms.test/?post_type=acf-field&p=122', 0, 'acf-field', '', 0),
(123, 1, '2020-04-25 19:16:30', '2020-04-26 00:16:30', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo white', 'logo_white', 'publish', 'closed', 'closed', '', 'field_5ea4d2c38c520', '', '', '2020-04-25 19:16:30', '2020-04-26 00:16:30', '', 121, 'http://ms.test/?post_type=acf-field&p=123', 1, 'acf-field', '', 0),
(124, 1, '2020-04-25 19:16:54', '2020-04-26 00:16:54', '', 'logo-black', '', 'inherit', 'open', 'closed', '', 'logo-black', '', '', '2020-04-25 19:16:54', '2020-04-26 00:16:54', '', 0, 'http://ms.test/wp-content/uploads/2020/04/logo-black.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2020-04-26 19:48:37', '2020-04-27 00:48:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'section fourth', 'section-fourth', 'publish', 'closed', 'closed', '', 'group_5ea62b696dd38', '', '', '2020-04-26 20:08:50', '2020-04-27 01:08:50', '', 0, 'http://ms.test/?post_type=acf-field-group&#038;p=125', 8, 'acf-field-group', '', 0),
(126, 1, '2020-04-26 19:48:37', '2020-04-27 00:48:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'title_fourth', 'publish', 'closed', 'closed', '', 'field_5ea62bc1ce833', '', '', '2020-04-26 20:04:14', '2020-04-27 01:04:14', '', 125, 'http://ms.test/?post_type=acf-field&#038;p=126', 1, 'acf-field', '', 0),
(127, 1, '2020-04-26 19:48:37', '2020-04-27 00:48:37', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'content', 'content_fourth', 'publish', 'closed', 'closed', '', 'field_5ea62bd7ce834', '', '', '2020-04-26 20:04:14', '2020-04-27 01:04:14', '', 125, 'http://ms.test/?post_type=acf-field&#038;p=127', 2, 'acf-field', '', 0),
(128, 1, '2020-04-26 19:56:35', '2020-04-27 00:56:35', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Url Button', 'url_button_fourth', 'publish', 'closed', 'closed', '', 'field_5ea62da94bce5', '', '', '2020-04-26 20:04:14', '2020-04-27 01:04:14', '', 125, 'http://ms.test/?post_type=acf-field&#038;p=128', 3, 'acf-field', '', 0),
(129, 1, '2020-04-26 19:56:35', '2020-04-27 00:56:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text Button', 'text_button_fourth', 'publish', 'closed', 'closed', '', 'field_5ea62db94bce6', '', '', '2020-04-26 20:04:14', '2020-04-27 01:04:14', '', 125, 'http://ms.test/?post_type=acf-field&#038;p=129', 4, 'acf-field', '', 0),
(130, 1, '2020-04-26 20:04:14', '2020-04-27 01:04:14', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Left Column', 'left_column', 'publish', 'closed', 'closed', '', 'field_5ea62f249e3af', '', '', '2020-04-26 20:04:14', '2020-04-27 01:04:14', '', 125, 'http://ms.test/?post_type=acf-field&p=130', 0, 'acf-field', '', 0),
(131, 1, '2020-04-26 20:04:14', '2020-04-27 01:04:14', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Right Column', 'rigth_column', 'publish', 'closed', 'closed', '', 'field_5ea62f409e3b0', '', '', '2020-04-26 20:04:14', '2020-04-27 01:04:14', '', 125, 'http://ms.test/?post_type=acf-field&p=131', 5, 'acf-field', '', 0),
(132, 1, '2020-04-26 20:04:15', '2020-04-27 01:04:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title second column', 'title_second_column', 'publish', 'closed', 'closed', '', 'field_5ea62ee79e3ae', '', '', '2020-04-26 20:04:15', '2020-04-27 01:04:15', '', 125, 'http://ms.test/?post_type=acf-field&p=132', 6, 'acf-field', '', 0),
(133, 1, '2020-04-26 20:04:15', '2020-04-27 01:04:15', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'List', 'list', 'publish', 'closed', 'closed', '', 'field_5ea62f5b9e3b1', '', '', '2020-04-26 20:04:15', '2020-04-27 01:04:15', '', 125, 'http://ms.test/?post_type=acf-field&p=133', 7, 'acf-field', '', 0),
(134, 1, '2020-04-26 20:04:15', '2020-04-27 01:04:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'item list', 'text_list', 'publish', 'closed', 'closed', '', 'field_5ea62f799e3b2', '', '', '2020-04-26 20:04:15', '2020-04-27 01:04:15', '', 133, 'http://ms.test/?post_type=acf-field&p=134', 0, 'acf-field', '', 0),
(136, 1, '2020-04-26 20:17:30', '2020-04-27 01:17:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"61\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Seconds Section', 'seconds-section', 'publish', 'closed', 'closed', '', 'group_5ea632213ba12', '', '', '2020-04-26 20:26:36', '2020-04-27 01:26:36', '', 0, 'http://ms.test/?post_type=acf-field-group&#038;p=136', 0, 'acf-field-group', '', 0),
(137, 1, '2020-04-26 20:17:30', '2020-04-27 01:17:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title second', 'title_second', 'publish', 'closed', 'closed', '', 'field_5ea63235ca653', '', '', '2020-04-26 20:17:30', '2020-04-27 01:17:30', '', 136, 'http://ms.test/?post_type=acf-field&p=137', 0, 'acf-field', '', 0),
(138, 1, '2020-04-26 20:17:31', '2020-04-27 01:17:31', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content second section', 'content_second', 'publish', 'closed', 'closed', '', 'field_5ea6325aca654', '', '', '2020-04-26 20:17:31', '2020-04-27 01:17:31', '', 136, 'http://ms.test/?post_type=acf-field&p=138', 1, 'acf-field', '', 0),
(139, 1, '2020-04-26 20:17:31', '2020-04-27 01:17:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image second section', 'image_second', 'publish', 'closed', 'closed', '', 'field_5ea6327aca655', '', '', '2020-04-26 20:26:36', '2020-04-27 01:26:36', '', 136, 'http://ms.test/?post_type=acf-field&#038;p=139', 2, 'acf-field', '', 0),
(140, 1, '2020-04-26 20:25:58', '2020-04-27 01:25:58', '', 'agencia-digital-mailify-1-750x400', '', 'inherit', 'open', 'closed', '', 'agencia-digital-mailify-1-750x400', '', '', '2020-04-26 20:25:58', '2020-04-27 01:25:58', '', 61, 'http://ms.test/wp-content/uploads/2020/04/agencia-digital-mailify-1-750x400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2020-04-26 20:26:09', '2020-04-27 01:26:09', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-26 20:26:09', '2020-04-27 01:26:09', '', 61, 'http://ms.test/2020/04/26/61-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2020-04-26 21:58:19', '2020-04-27 02:58:19', '', 'flight-landscape-nature-sky-36717', '', 'inherit', 'open', 'closed', '', 'flight-landscape-nature-sky-36717', '', '', '2020-04-26 21:58:19', '2020-04-27 02:58:19', '', 113, 'http://ms.test/wp-content/uploads/2020/04/flight-landscape-nature-sky-36717.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2020-04-26 22:16:01', '2020-04-27 03:16:01', '<!-- wp:heading {\"level\":3} -->\n<h3>Más de<strong>13 AÑOS</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Creciendo entre marcas y personas.</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Como agencia digital líder en el mercado, combinamos&nbsp;<strong>creatividad</strong>&nbsp;y&nbsp;<strong>conocimientos tecnológicos.&nbsp;</strong>Somos el puente entre nuestros clientes y su público objetivo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-26 22:16:01', '2020-04-27 03:16:01', '', 61, 'http://ms.test/2020/04/26/61-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2020-04-26 22:17:25', '2020-04-27 03:17:25', '<!-- wp:heading {\"level\":4} -->\n<h4>Creciendo entre marcas y personas.</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Como agencia digital líder en el mercado, combinamos&nbsp;<strong>creatividad</strong>&nbsp;y&nbsp;<strong>conocimientos tecnológicos.&nbsp;</strong>Somos el puente entre nuestros clientes y su público objetivo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-26 22:17:25', '2020-04-27 03:17:25', '', 61, 'http://ms.test/2020/04/26/61-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2020-04-26 22:36:51', '2020-04-27 03:36:51', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Text contact', 'text_contact', 'publish', 'closed', 'closed', '', 'field_5ea6533bd7ae1', '', '', '2020-04-26 22:36:51', '2020-04-27 03:36:51', '', 95, 'http://ms.test/?post_type=acf-field&p=145', 0, 'acf-field', '', 0),
(146, 1, '2020-04-26 23:20:49', '2020-04-27 04:20:49', '<!-- wp:heading {\"level\":4} -->\n<h4>Creciendo entre marcas y personas.</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Como agencia digital líder en el mercado, combinamos&nbsp;<strong>creatividad</strong>&nbsp;y&nbsp;<strong>conocimientos tecnológicos.&nbsp;</strong>Somos el puente entre nuestros clientes y su público objetivo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-26 23:20:49', '2020-04-27 04:20:49', '', 61, 'http://ms.test/2020/04/26/61-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'fr', 'fr', 0),
(3, 'Usos', 'usos', 0),
(4, 'Aventura', 'aventura', 0),
(5, 'Paisajismo', 'paisajismo', 0),
(6, 'Menu 1', 'menu-1', 0),
(7, 'Poesia', 'poesia', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(100, 3, 0),
(100, 4, 0),
(100, 5, 0),
(100, 7, 0),
(103, 6, 0),
(105, 6, 0),
(113, 3, 0),
(113, 4, 0),
(115, 4, 0),
(115, 5, 0),
(117, 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category_activity', '', 0, 2),
(4, 4, 'category_activity', '', 0, 3),
(5, 5, 'category_activity', '', 0, 2),
(6, 6, 'nav_menu', '', 0, 3),
(7, 7, 'category_activity', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `wp_usermeta`
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
(12, 1, 'wp_capabilities', 'a:7:{s:13:\"administrator\";b:1;s:14:\"frm_view_forms\";b:1;s:14:\"frm_edit_forms\";b:1;s:16:\"frm_delete_forms\";b:1;s:19:\"frm_change_settings\";b:1;s:16:\"frm_view_entries\";b:1;s:18:\"frm_delete_entries\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"69cc8f470d213cb7c312a896ff2f4a76553c8064504c7ca4c4b4781fe59a2f76\";a:4:{s:10:\"expiration\";i:1587940179;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1587767379;}s:64:\"88abe8d0fc40f1a151b8dfa1076f45e828e1831bcac89b9f18a1b7f3ac3e6f74\";a:4:{s:10:\"expiration\";i:1588005628;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1587832828;}s:64:\"855521b1529aba3d741cc1f74e963728ddec336f494b04cc2c3919d420fbd446\";a:4:{s:10:\"expiration\";i:1588105426;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1587932626;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1587499409'),
(21, 1, 'closedpostboxes_toplevel_page_theme-general-settings', 'a:1:{i:0;s:23:\"acf-group_5ea62b696dd38\";}'),
(22, 1, 'metaboxhidden_toplevel_page_theme-general-settings', 'a:0:{}'),
(23, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(24, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:0:{}'),
(27, 1, 'frm_reviewed', 'a:3:{s:4:\"time\";i:1587760866;s:9:\"dismissed\";b:0;s:5:\"asked\";i:0;}'),
(28, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(29, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:20:\"add-post-type-slider\";i:1;s:25:\"add-post-type-actividades\";i:2;s:12:\"add-post_tag\";i:3;s:21:\"add-category_activity\";}'),
(30, 1, 'nav_menu_recently_edited', '6'),
(31, 1, 'meta-box-order_toplevel_page_theme-general-settings', 'a:2:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:95:\"acf-group_5ea0b6301c4bc,acf-group_5ea62b696dd38,acf-group_5ea0bca99a0e9,acf-group_5ea0c89266403\";}'),
(32, 1, 'screen_layout_toplevel_page_theme-general-settings', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BqGgPuu/ksOaOP4KlIMW2VF0a4tuaD/', 'admin', 'franciscoaular18@gmail.com', 'http://ms.test', '2020-04-21 18:13:52', '', 0, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_frm_fields`
--
ALTER TABLE `wp_frm_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `field_key` (`field_key`),
  ADD KEY `form_id` (`form_id`);

--
-- Indices de la tabla `wp_frm_forms`
--
ALTER TABLE `wp_frm_forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `form_key` (`form_key`);

--
-- Indices de la tabla `wp_frm_items`
--
ALTER TABLE `wp_frm_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_key` (`item_key`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent_item_id` (`parent_item_id`);

--
-- Indices de la tabla `wp_frm_item_metas`
--
ALTER TABLE `wp_frm_item_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indices de la tabla `wp_gf_draft_submissions`
--
ALTER TABLE `wp_gf_draft_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Indices de la tabla `wp_gf_entry`
--
ALTER TABLE `wp_gf_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `form_id_status` (`form_id`,`status`);

--
-- Indices de la tabla `wp_gf_entry_meta`
--
ALTER TABLE `wp_gf_entry_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `meta_value` (`meta_value`(191));

--
-- Indices de la tabla `wp_gf_entry_notes`
--
ALTER TABLE `wp_gf_entry_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `entry_user_key` (`entry_id`,`user_id`);

--
-- Indices de la tabla `wp_gf_form`
--
ALTER TABLE `wp_gf_form`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_gf_form_meta`
--
ALTER TABLE `wp_gf_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indices de la tabla `wp_gf_form_revisions`
--
ALTER TABLE `wp_gf_form_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Indices de la tabla `wp_gf_form_view`
--
ALTER TABLE `wp_gf_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_frm_fields`
--
ALTER TABLE `wp_frm_fields`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_frm_forms`
--
ALTER TABLE `wp_frm_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_frm_items`
--
ALTER TABLE `wp_frm_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_frm_item_metas`
--
ALTER TABLE `wp_frm_item_metas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_gf_entry`
--
ALTER TABLE `wp_gf_entry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_gf_entry_meta`
--
ALTER TABLE `wp_gf_entry_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_gf_entry_notes`
--
ALTER TABLE `wp_gf_entry_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_gf_form`
--
ALTER TABLE `wp_gf_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_gf_form_revisions`
--
ALTER TABLE `wp_gf_form_revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_gf_form_view`
--
ALTER TABLE `wp_gf_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
