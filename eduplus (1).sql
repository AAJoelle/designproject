-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2018 at 07:29 AM
-- Server version: 5.5.44-0+deb8u1
-- PHP Version: 5.6.9-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_code` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_name`, `level_id`, `faculty_id`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'CEC201', 'Computers for business', 1, 1, 1, '2018-04-06 15:17:14', '2018-04-06 15:17:14'),
(2, 'CEC301', 'Data structures and Algorithms', 2, 1, 1, '2018-04-06 15:17:36', '2018-04-06 15:17:36'),
(3, 'CEC415', 'Distributed Systems', 3, 1, 1, '2018-04-06 15:17:52', '2018-04-06 15:17:52'),
(4, 'LAW201', 'LAW Fundamentals', 1, 3, 6, '2018-04-06 15:18:36', '2018-04-06 15:18:36'),
(5, 'LAW301', 'LAW in the Yard', 2, 3, 6, '2018-04-06 15:19:06', '2018-04-06 15:19:06'),
(6, 'LAW401', 'Public Law', 3, 3, 6, '2018-04-06 15:19:41', '2018-04-06 15:19:41'),
(7, 'BCM201', 'Biochemistry fundamentals', 1, 5, 8, '2018-04-08 09:44:07', '2018-04-08 09:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(3, 1, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 0, 0, 1, 1, 1, 1, NULL, 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, NULL, 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, NULL, 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(54, 1, 'course_id', 'text', 'Course Id', 1, 1, 1, 1, 1, 1, NULL, 4),
(55, 1, 'material_id', 'select_dropdown', 'Material Id', 1, 1, 1, 1, 1, 1, NULL, 5),
(56, 1, 'academic_year', 'text', 'Academic Year', 1, 1, 1, 1, 1, 1, NULL, 6),
(57, 1, 'post_belongsto_material_relationship', 'relationship', 'materials', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Material\",\"table\":\"materials\",\"type\":\"belongsTo\",\"column\":\"material_id\",\"key\":\"id\",\"label\":\"material_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 16),
(58, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(59, 7, 'material_name', 'text', 'Material Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(62, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(63, 8, 'course_code', 'text', 'Course Code', 1, 1, 1, 1, 1, 1, NULL, 5),
(64, 8, 'course_name', 'text', 'Course Name', 1, 1, 1, 1, 1, 1, NULL, 6),
(65, 8, 'level_id', 'select_dropdown', 'Level Id', 1, 1, 1, 1, 1, 1, NULL, 4),
(66, 8, 'faculty_id', 'select_dropdown', 'Faculty Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(67, 8, 'department_id', 'select_dropdown', 'Department Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(68, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(69, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(71, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(72, 9, 'faculty_abbreviation', 'text', 'Faculty Abbreviation', 1, 1, 1, 1, 1, 1, NULL, 2),
(73, 9, 'faculty_name', 'text', 'Faculty Name', 1, 1, 1, 1, 1, 1, NULL, 3),
(74, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(75, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(76, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(77, 10, 'faculty_id', 'select_dropdown', 'Faculty Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(78, 10, 'department_name', 'text', 'Department Name', 1, 1, 1, 1, 1, 1, NULL, 3),
(79, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(80, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(81, 10, 'department_belongsto_faculty_relationship', 'relationship', 'faculties', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Faculty\",\"table\":\"faculties\",\"type\":\"belongsTo\",\"column\":\"faculty_id\",\"key\":\"id\",\"label\":\"faculty_abbreviation\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 6),
(82, 8, 'course_belongsto_department_relationship', 'relationship', 'departments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Department\",\"table\":\"departments\",\"type\":\"belongsTo\",\"column\":\"department_id\",\"key\":\"id\",\"label\":\"department_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 9),
(83, 8, 'course_belongsto_faculty_relationship', 'relationship', 'faculties', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Faculty\",\"table\":\"faculties\",\"type\":\"belongsTo\",\"column\":\"faculty_id\",\"key\":\"id\",\"label\":\"faculty_abbreviation\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 10),
(84, 8, 'course_belongsto_level_relationship', 'relationship', 'levels', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Level\",\"table\":\"levels\",\"type\":\"belongsTo\",\"column\":\"level_id\",\"key\":\"id\",\"label\":\"level\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 11),
(85, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(86, 11, 'level', 'text', 'Level', 1, 1, 1, 1, 1, 1, NULL, 2),
(87, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(88, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '2018-04-05 21:32:14', '2018-04-06 08:15:25'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-04-05 21:32:14', '2018-04-05 21:32:14'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-04-05 21:32:14', '2018-04-05 21:32:14'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-04-05 21:32:14', '2018-04-05 21:32:14'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-04-05 21:32:14', '2018-04-05 21:32:14'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-04-05 21:32:14', '2018-04-05 21:32:14'),
(7, 'materials', 'materials', 'Material', 'Materials', NULL, 'App\\Material', NULL, NULL, NULL, 1, 0, '2018-04-06 08:19:05', '2018-04-06 08:19:05'),
(8, 'courses', 'courses', 'Course', 'Courses', NULL, 'App\\Course', NULL, NULL, NULL, 1, 0, '2018-04-06 08:19:57', '2018-04-06 08:19:57'),
(9, 'faculties', 'faculties', 'Faculty', 'Faculties', NULL, 'App\\Faculty', NULL, NULL, NULL, 1, 0, '2018-04-06 10:19:27', '2018-04-06 10:19:27'),
(10, 'departments', 'departments', 'Department', 'Departments', NULL, 'App\\Department', NULL, NULL, NULL, 1, 0, '2018-04-06 10:19:58', '2018-04-06 10:19:58'),
(11, 'levels', 'levels', 'Level', 'Levels', NULL, 'App\\Level', NULL, NULL, NULL, 1, 0, '2018-04-06 15:16:31', '2018-04-06 15:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `faculty_id`, `department_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Computer Engineering', '2018-04-06 10:22:52', '2018-04-06 10:22:52'),
(2, 1, 'Electrical and Electronics Engineering', '2018-04-06 10:22:59', '2018-04-06 10:22:59'),
(3, 1, 'Mechanical Engineering', '2018-04-06 10:23:09', '2018-04-06 10:23:09'),
(4, 3, 'Accounting', '2018-04-06 10:23:20', '2018-04-06 10:23:20'),
(5, 3, 'Economics', '2018-04-06 10:23:31', '2018-04-06 10:23:31'),
(6, 3, 'LAW', '2018-04-06 10:23:41', '2018-04-06 10:23:41'),
(7, 5, 'Physics', '2018-04-08 09:06:42', '2018-04-08 09:06:42'),
(8, 5, 'Biochemistry', '2018-04-08 09:06:55', '2018-04-08 09:06:55'),
(9, 5, 'Chemistry', '2018-04-08 09:07:25', '2018-04-08 09:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(10) UNSIGNED NOT NULL,
  `faculty_abbreviation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `faculty_abbreviation`, `faculty_name`, `created_at`, `updated_at`) VALUES
(1, 'COT', 'COLLEGE OF TECHNOLOGY', '2018-04-06 10:20:12', '2018-04-06 10:20:12'),
(2, 'FET', 'FACULTY OF ENGINEERING AND TECHNOLOGY', '2018-04-06 10:20:22', '2018-04-06 10:20:22'),
(3, 'SMS', 'FACULTY OF SOCIAL AND MANAGEMENT SCIENCES', '2018-04-06 10:20:33', '2018-04-06 10:20:33'),
(4, 'ARTS', 'FACULTY OF ARTS', '2018-04-06 10:20:45', '2018-04-06 10:20:45'),
(5, 'SCIENCE', 'FACULTY OF SCIENCE', '2018-04-06 10:20:56', '2018-04-06 10:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level`, `created_at`, `updated_at`) VALUES
(1, 200, '2018-04-06 15:16:43', '2018-04-06 15:16:43'),
(2, 300, '2018-04-06 15:16:49', '2018-04-06 15:16:49'),
(3, 400, '2018-04-06 15:16:57', '2018-04-06 15:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `material_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `material_name`, `created_at`, `updated_at`) VALUES
(1, 'Lecture Notes', '2018-04-06 08:23:14', '2018-04-06 08:23:14'),
(2, 'Tutorials', '2018-04-06 08:23:23', '2018-04-06 08:23:23'),
(3, 'CA Questions', '2018-04-06 08:23:31', '2018-04-06 08:23:31'),
(4, 'Exam Questions', '2018-04-06 08:23:42', '2018-04-06 08:23:42'),
(5, 'Solutions', '2018-04-06 08:23:53', '2018-04-06 08:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-04-05 21:32:17', '2018-04-05 21:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-04-05 21:32:17', '2018-04-05 21:32:17', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 10, '2018-04-05 21:32:17', '2018-04-08 12:41:22', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 8, '2018-04-05 21:32:17', '2018-04-08 12:41:22', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 9, '2018-04-05 21:32:17', '2018-04-08 12:41:22', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 12, '2018-04-05 21:32:17', '2018-04-08 12:41:08', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 11, '2018-04-05 21:32:17', '2018-04-08 12:41:08', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-04-05 21:32:17', '2018-04-05 21:32:17', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 13, '2018-04-05 21:32:17', '2018-04-08 12:40:49', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-04-05 21:32:17', '2018-04-08 12:40:36', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-04-05 21:32:17', '2018-04-08 12:40:36', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-04-05 21:32:17', '2018-04-08 12:40:36', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-04-05 21:32:17', '2018-04-08 12:40:49', 'voyager.settings.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 4, '2018-04-05 21:32:25', '2018-04-08 12:40:37', 'voyager.hooks', NULL),
(14, 1, 'Materials', '/admin/materials', '_self', 'voyager-treasure', '#000000', NULL, 3, '2018-04-06 08:19:05', '2018-04-08 12:52:51', NULL, ''),
(15, 1, 'Courses', '/admin/courses', '_self', 'voyager-logbook', '#000000', NULL, 7, '2018-04-06 08:19:57', '2018-04-08 12:45:16', NULL, ''),
(16, 1, 'Faculties', '/admin/faculties', '_self', 'voyager-study', '#000000', NULL, 4, '2018-04-06 10:19:27', '2018-04-08 12:51:20', NULL, ''),
(17, 1, 'Departments', '/admin/departments', '_self', 'voyager-company', '#000000', NULL, 5, '2018-04-06 10:19:59', '2018-04-08 12:47:59', NULL, ''),
(18, 1, 'Levels', '/admin/levels', '_self', 'voyager-lighthouse', '#000000', NULL, 6, '2018-04-06 15:16:31', '2018-04-08 12:53:34', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(197, '2014_10_12_000000_create_users_table', 1),
(198, '2014_10_12_100000_create_password_resets_table', 1),
(199, '2016_01_01_000000_add_voyager_user_fields', 1),
(200, '2016_01_01_000000_create_data_types_table', 1),
(201, '2016_01_01_000000_create_pages_table', 1),
(202, '2016_01_01_000000_create_posts_table', 1),
(203, '2016_02_15_204651_create_categories_table', 1),
(204, '2016_05_19_173453_create_menu_table', 1),
(205, '2016_10_21_190000_create_roles_table', 1),
(206, '2016_10_21_190000_create_settings_table', 1),
(207, '2016_11_30_135954_create_permission_table', 1),
(208, '2016_11_30_141208_create_permission_role_table', 1),
(209, '2016_12_26_201236_data_types__add__server_side', 1),
(210, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(211, '2017_01_14_005015_create_translations_table', 1),
(212, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(213, '2017_01_15_000000_create_permission_groups_table', 1),
(214, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(215, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(216, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(217, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(218, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(219, '2017_08_05_000000_add_group_to_settings_table', 1),
(220, '2018_01_28_211537_create_levels_table', 1),
(221, '2018_01_28_211720_create_materials_table', 1),
(222, '2018_01_28_211735_create_faculties_table', 1),
(223, '2018_01_28_211751_create_departments_table', 1),
(224, '2018_01_28_211806_create_courses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(2, 'browse_database', NULL, '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(3, 'browse_media', NULL, '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(4, 'browse_compass', NULL, '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(5, 'browse_menus', 'menus', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(6, 'read_menus', 'menus', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(7, 'edit_menus', 'menus', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(8, 'add_menus', 'menus', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(9, 'delete_menus', 'menus', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(10, 'browse_pages', 'pages', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(11, 'read_pages', 'pages', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(12, 'edit_pages', 'pages', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(13, 'add_pages', 'pages', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(14, 'delete_pages', 'pages', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(15, 'browse_roles', 'roles', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(16, 'read_roles', 'roles', '2018-04-05 21:32:18', '2018-04-05 21:32:18', NULL),
(17, 'edit_roles', 'roles', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(18, 'add_roles', 'roles', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(19, 'delete_roles', 'roles', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(20, 'browse_users', 'users', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(21, 'read_users', 'users', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(22, 'edit_users', 'users', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(23, 'add_users', 'users', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(24, 'delete_users', 'users', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(25, 'browse_posts', 'posts', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(26, 'read_posts', 'posts', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(27, 'edit_posts', 'posts', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(28, 'add_posts', 'posts', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(29, 'delete_posts', 'posts', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(30, 'browse_categories', 'categories', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(31, 'read_categories', 'categories', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(32, 'edit_categories', 'categories', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(33, 'add_categories', 'categories', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(34, 'delete_categories', 'categories', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(35, 'browse_settings', 'settings', '2018-04-05 21:32:19', '2018-04-05 21:32:19', NULL),
(36, 'read_settings', 'settings', '2018-04-05 21:32:20', '2018-04-05 21:32:20', NULL),
(37, 'edit_settings', 'settings', '2018-04-05 21:32:20', '2018-04-05 21:32:20', NULL),
(38, 'add_settings', 'settings', '2018-04-05 21:32:20', '2018-04-05 21:32:20', NULL),
(39, 'delete_settings', 'settings', '2018-04-05 21:32:20', '2018-04-05 21:32:20', NULL),
(40, 'browse_hooks', NULL, '2018-04-05 21:32:25', '2018-04-05 21:32:25', NULL),
(41, 'browse_materials', 'materials', '2018-04-06 08:19:05', '2018-04-06 08:19:05', NULL),
(42, 'read_materials', 'materials', '2018-04-06 08:19:05', '2018-04-06 08:19:05', NULL),
(43, 'edit_materials', 'materials', '2018-04-06 08:19:05', '2018-04-06 08:19:05', NULL),
(44, 'add_materials', 'materials', '2018-04-06 08:19:05', '2018-04-06 08:19:05', NULL),
(45, 'delete_materials', 'materials', '2018-04-06 08:19:05', '2018-04-06 08:19:05', NULL),
(46, 'browse_courses', 'courses', '2018-04-06 08:19:57', '2018-04-06 08:19:57', NULL),
(47, 'read_courses', 'courses', '2018-04-06 08:19:57', '2018-04-06 08:19:57', NULL),
(48, 'edit_courses', 'courses', '2018-04-06 08:19:57', '2018-04-06 08:19:57', NULL),
(49, 'add_courses', 'courses', '2018-04-06 08:19:57', '2018-04-06 08:19:57', NULL),
(50, 'delete_courses', 'courses', '2018-04-06 08:19:57', '2018-04-06 08:19:57', NULL),
(51, 'browse_faculties', 'faculties', '2018-04-06 10:19:27', '2018-04-06 10:19:27', NULL),
(52, 'read_faculties', 'faculties', '2018-04-06 10:19:27', '2018-04-06 10:19:27', NULL),
(53, 'edit_faculties', 'faculties', '2018-04-06 10:19:27', '2018-04-06 10:19:27', NULL),
(54, 'add_faculties', 'faculties', '2018-04-06 10:19:27', '2018-04-06 10:19:27', NULL),
(55, 'delete_faculties', 'faculties', '2018-04-06 10:19:27', '2018-04-06 10:19:27', NULL),
(56, 'browse_departments', 'departments', '2018-04-06 10:19:58', '2018-04-06 10:19:58', NULL),
(57, 'read_departments', 'departments', '2018-04-06 10:19:58', '2018-04-06 10:19:58', NULL),
(58, 'edit_departments', 'departments', '2018-04-06 10:19:58', '2018-04-06 10:19:58', NULL),
(59, 'add_departments', 'departments', '2018-04-06 10:19:58', '2018-04-06 10:19:58', NULL),
(60, 'delete_departments', 'departments', '2018-04-06 10:19:58', '2018-04-06 10:19:58', NULL),
(61, 'browse_levels', 'levels', '2018-04-06 15:16:31', '2018-04-06 15:16:31', NULL),
(62, 'read_levels', 'levels', '2018-04-06 15:16:31', '2018-04-06 15:16:31', NULL),
(63, 'edit_levels', 'levels', '2018-04-06 15:16:31', '2018-04-06 15:16:31', NULL),
(64, 'add_levels', 'levels', '2018-04-06 15:16:31', '2018-04-06 15:16:31', NULL),
(65, 'delete_levels', 'levels', '2018-04-06 15:16:31', '2018-04-06 15:16:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
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
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `material_id` int(10) UNSIGNED NOT NULL,
  `academic_year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `course_id`, `material_id`, `academic_year`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 2, '2017', 'First Post', NULL, NULL, '<p>i love computing and IT and STEM</p>', NULL, 'first-post', NULL, NULL, 'PUBLISHED', 1, '2018-04-06 08:24:52', '2018-04-06 08:24:52'),
(2, 1, NULL, 2, 4, '2014', 'Second Post', NULL, NULL, '<p>&nbsp;This is the second Posts. i thank God it worked</p>', NULL, 'second-post', NULL, NULL, 'PUBLISHED', 1, '2018-04-06 13:19:34', '2018-04-06 13:19:34'),
(3, 1, NULL, 3, 4, '2014', 'Third Post', NULL, NULL, '<p>I don\'t know why i am unable to insert pdf files yet</p>', NULL, 'third-post', NULL, NULL, 'PUBLISHED', 0, '2018-04-06 13:32:36', '2018-04-06 13:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-04-05 21:32:17', '2018-04-05 21:32:17'),
(2, 'user', 'Normal User', '2018-04-05 21:32:18', '2018-04-05 21:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Joelle', 'akojoelle@gmail.com', 'users/default.png', '$2y$10$IZtjegrLYEoWHdywRqpjY.kllrkowEf5BBBO9YRuk0wYkmlBZSK8W', NULL, '2018-04-05 21:32:40', '2018-04-05 21:32:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_level_id_foreign` (`level_id`),
  ADD KEY `courses_department_id_foreign` (`department_id`),
  ADD KEY `courses_faculty_id_foreign` (`faculty_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_faculty_id_foreign` (`faculty_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `courses_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `courses_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`);

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`);

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
