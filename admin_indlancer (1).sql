-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2017 at 11:50 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_indlancer`
--

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `added_by` int(10) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_premium` tinyint(1) NOT NULL DEFAULT '0',
  `count_bids` int(11) NOT NULL DEFAULT '0',
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_type_id` int(10) UNSIGNED DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `budget` float(7,2) NOT NULL,
  `currency` enum('INR','USD') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `slug`, `description`, `added_by`, `is_active`, `is_premium`, `count_bids`, `location`, `project_type_id`, `start_date`, `end_date`, `budget`, `currency`, `created_at`, `updated_at`) VALUES
(1, 'vfev', 'vfev', 'vrfbwrgb', 3, 0, 1, 0, 'brgbrgb', 2, '2017-10-31 00:00:00', '2017-10-16 00:00:00', 123.00, 'INR', '2017-10-07 10:17:26', '2017-10-07 10:17:26'),
(2, 'csdv', 'csdv', 'cdsv', 3, 1, 1, 0, 'lko', 1, '2017-10-25 00:00:00', '2017-10-11 00:00:00', 12345.00, 'USD', '2017-10-07 10:38:25', '2017-10-07 10:38:25'),
(3, 'vdfb', 'vdfb', 'bfgnh', 3, 1, 1, 0, 'lko', 1, '2017-10-25 00:00:00', '2017-10-11 00:00:00', 124.00, 'INR', '2017-10-07 10:42:26', '2017-10-07 10:42:26'),
(4, 'vdfb', 'vdfb', 'bfgnh', 3, 1, 1, 0, 'lko', 1, '2017-10-25 00:00:00', '2017-10-11 00:00:00', 124.00, 'INR', '2017-10-07 10:42:46', '2017-10-07 10:42:46'),
(5, 'vdfb', 'vdfb', 'bfgnh', 3, 1, 1, 0, 'lko', 1, '2017-10-25 00:00:00', '2017-10-11 00:00:00', 124.00, 'INR', '2017-10-07 10:43:17', '2017-10-07 10:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `project_applicants`
--

CREATE TABLE `project_applicants` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_attachments`
--

CREATE TABLE `project_attachments` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `attachment_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_skills`
--

CREATE TABLE `project_skills` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_skills`
--

INSERT INTO `project_skills` (`id`, `project_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(1, 2, 39, '2017-10-07 16:08:25', '2017-10-07 10:38:25'),
(2, 2, 41, '2017-10-07 16:08:25', '2017-10-07 10:38:25'),
(3, 5, 33, '2017-10-07 16:13:18', '2017-10-07 10:43:18'),
(4, 5, 34, '2017-10-07 16:13:18', '2017-10-07 10:43:18'),
(5, 5, 35, '2017-10-07 16:13:18', '2017-10-07 10:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `project_skill_categories`
--

CREATE TABLE `project_skill_categories` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_skill_categories`
--

INSERT INTO `project_skill_categories` (`id`, `project_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 5, 2, '2017-10-07 16:13:17', '2017-10-07 10:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `project_types`
--

CREATE TABLE `project_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_types`
--

INSERT INTO `project_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Full-Time', '2017-10-07 14:03:29', '2017-10-07 14:03:29'),
(2, 'Part-Time', NULL, NULL),
(3, 'Internship', NULL, NULL),
(4, 'Freelance', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `slug`, `category_id`, `is_visible`, `created_at`, `updated_at`) VALUES
(1, 'HTML5', 'html5', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(2, 'CSS3', 'css3', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(3, 'JavaScript', 'javascript', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(4, 'jQuery', 'jquery', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(5, 'Bootstrap', 'bootstrap', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(6, 'PHP', 'php', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(7, 'Perl', 'perl', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(8, 'Java', 'java', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(9, 'Ruby', 'ruby', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(10, 'VBScript', 'vbscript', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(11, 'Cold Fusion', 'cold-fusion', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(12, 'C Programming', 'c-programming', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(13, 'C++ Programming', 'c-programming-2', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(14, 'C# Programming', 'c-programming-3', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(15, 'Objective C', 'objective-c', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(16, 'Software Development', 'software-development', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(17, 'Git', 'git', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(18, 'Joomla', 'joomla', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(19, 'Drupal', 'drupal', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(20, 'WordPress', 'wordpress', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(21, 'OctoberCMS', 'octobercms', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(22, 'MODx', 'modx', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(23, 'Magento', 'magento', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(24, 'LemonStand', 'lemonstand', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(25, 'Yii', 'yii', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(26, 'CakePHP', 'cakephp', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(27, 'CodeIgniter', 'codeigniter', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(28, 'Laravel', 'laravel', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(29, 'Ruby on Rails', 'ruby-on-rails', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(30, 'Windows', 'windows', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(31, 'OS X', 'os-x', 1, 1, '2017-07-03 09:18:22', '2017-07-03 09:18:22'),
(32, 'Linux', 'linux', 1, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(33, 'Mobile Development', 'mobile-development', 2, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(34, 'iOS', 'ios', 2, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(35, 'iPhone', 'iphone', 2, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(36, 'iPad', 'ipad', 2, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(37, 'Android', 'android', 2, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(38, 'Adobe Flash', 'adobe-flash', 3, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(39, 'Photoshop', 'photoshop', 3, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(40, 'PSD to HTML', 'psd-to-html', 3, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(41, 'Illustrator', 'illustrator', 3, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(42, 'Logo Design', 'logo-design', 3, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(43, 'Web Design', 'web-design', 3, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(44, 'User Interface', 'user-interface', 3, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(45, 'User Experience', 'user-experience', 3, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(46, 'Graphic Design', 'graphic-design', 3, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(47, 'Business Cards', 'business-cards', 3, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(48, 'Photography', 'photography', 3, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(49, 'Copywriting', 'copywriting', 4, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(50, 'Blogging', 'blogging', 4, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(51, 'Proofreading', 'proofreading', 4, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(52, 'Ghostwriting', 'ghostwriting', 4, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(53, 'eBooks', 'ebooks', 4, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(54, 'Translation', 'translation', 4, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(55, 'SEO', 'seo', 4, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(56, 'Online Marketing', 'online-marketing', 5, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(57, 'Article Submission', 'article-submission', 5, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(58, 'Web Scraping', 'web-scraping', 5, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(59, 'Social Networking', 'social-networking', 5, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(60, 'Facebook Marketing', 'facebook-marketing', 5, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(61, 'Twitter Marketing', 'twitter-marketing', 5, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(62, 'Telemarketing', 'telemarketing', 5, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(63, 'System Admin', 'system-admin', 6, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(64, 'Data Entry', 'data-entry', 6, 1, '2017-07-03 09:18:23', '2017-07-03 09:18:23'),
(65, 'Administrative', 'administrative', 13, 1, '2017-07-04 09:06:59', '2017-07-04 09:07:39'),
(66, 'Fix', 'sell', 10, 1, '2017-07-04 09:09:54', '2017-07-04 09:12:01'),
(67, 'Cleaning', 'cleaning', 11, 1, '2017-07-04 09:12:50', '2017-07-04 09:12:50'),
(68, 'Catering', 'catering', 9, 1, '2017-07-04 09:14:10', '2017-07-04 09:14:10'),
(69, 'Cooking', 'cooking', 9, 1, '2017-07-04 09:14:38', '2017-07-04 09:14:38'),
(70, 'Sing', 'sing', 12, 1, '2017-07-04 09:17:37', '2017-07-04 09:17:37'),
(71, 'Dance', 'dance', 12, 1, '2017-07-04 09:17:56', '2017-07-04 09:17:56'),
(72, 'Tricks', 'tricks', 12, 1, '2017-07-04 09:18:56', '2017-07-04 09:18:56'),
(73, 'Clown', 'clown', 12, 1, '2017-07-04 09:19:27', '2017-07-04 09:19:27'),
(74, 'DJ', 'dj', 12, 1, '2017-07-04 09:19:50', '2017-07-04 09:19:50'),
(75, 'Party', 'party', 12, 1, '2017-07-04 09:20:31', '2017-07-04 09:20:31'),
(76, 'Sound Editing', 'sound-editing', 14, 1, '2017-07-04 09:49:18', '2017-07-04 09:49:18'),
(77, 'Musical Composition', 'musical-composition', 14, 1, '2017-07-04 09:50:04', '2017-07-04 09:50:04'),
(78, 'Song Writing', 'song-writing', 14, 1, '2017-07-04 09:50:31', '2017-07-04 09:50:31'),
(79, 'Dubbing', 'dubbing', 14, 1, '2017-07-04 09:50:53', '2017-07-04 09:50:53'),
(80, 'Song Mixing', 'song-mixing', 14, 1, '2017-07-04 09:51:19', '2017-07-04 09:51:19'),
(81, 'Vocalists', 'vocalists', 14, 1, '2017-07-04 09:51:53', '2017-07-04 09:51:53'),
(82, 'Recording Services', 'recording-services', 14, 1, '2017-07-04 09:52:24', '2017-07-04 09:52:24'),
(83, 'People and Portraits', 'people-and-portraits', 15, 1, '2017-07-04 09:53:46', '2017-07-04 09:53:46'),
(84, 'Events', 'events', 15, 1, '2017-07-04 09:54:13', '2017-07-04 09:54:13'),
(85, 'Nature and Animals', 'nature-and-animals', 15, 1, '2017-07-04 09:54:39', '2017-07-04 09:54:39'),
(86, 'Video Production', 'video-production', 15, 1, '2017-07-04 09:55:14', '2017-07-04 09:55:14'),
(87, 'Wedding', 'wedding', 15, 1, '2017-07-04 09:55:42', '2017-07-04 09:55:42'),
(88, 'Fashion', 'fashion', 15, 1, '2017-07-04 09:56:11', '2017-07-04 09:56:11'),
(89, 'Built', 'built', 10, 1, '2017-07-12 05:05:49', '2017-07-12 05:06:02'),
(90, 'Broke Down', 'broke-down', 10, 1, '2017-07-12 05:07:01', '2017-07-12 05:07:11'),
(91, 'Transport', 'transport', 6, 1, '2017-07-12 05:16:47', '2017-07-12 05:16:47'),
(92, 'Babysitter', 'babysitter', 11, 1, '2017-07-12 05:28:03', '2017-07-12 05:28:03'),
(93, 'Translation', 'translation-2', 6, 1, '2017-07-12 05:37:35', '2017-07-12 05:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `skill_categories`
--

CREATE TABLE `skill_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skill_categories`
--

INSERT INTO `skill_categories` (`id`, `name`, `description`, `is_visible`, `created_at`, `updated_at`) VALUES
(1, 'Web & Software Development', NULL, 1, '2017-07-03 09:18:22', '2017-07-04 09:03:53'),
(2, 'Mobile Development', NULL, 1, '2017-07-03 09:18:23', '2017-07-04 09:03:53'),
(3, 'Graphic Design & Media', NULL, 1, '2017-07-03 09:18:23', '2017-07-04 09:03:53'),
(4, 'Writing & Content', NULL, 1, '2017-07-03 09:18:23', '2017-07-04 09:03:53'),
(5, 'Sales & Marketing', NULL, 1, '2017-07-03 09:18:23', '2017-07-04 09:03:53'),
(6, 'Other', NULL, 1, '2017-07-03 09:18:23', '2017-07-04 09:03:53'),
(9, 'Chefs', NULL, 1, '2017-07-04 08:50:46', '2017-07-04 09:03:53'),
(10, 'Tradesmen', NULL, 1, '2017-07-04 08:51:01', '2017-07-04 09:03:53'),
(11, 'Housekeepers', NULL, 1, '2017-07-04 08:52:38', '2017-07-04 09:03:53'),
(12, 'Entertainers', NULL, 1, '2017-07-04 08:52:55', '2017-07-04 09:03:53'),
(13, 'Planners and Personal Assistants', NULL, 1, '2017-07-04 08:53:11', '2017-07-04 09:03:53'),
(14, 'Sound and Music', NULL, 1, '2017-07-04 08:57:38', '2017-07-04 09:03:53'),
(15, 'Photography', NULL, 1, '2017-07-04 08:58:17', '2017-07-04 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `talent_portfolios`
--

CREATE TABLE `talent_portfolios` (
  `id` int(11) NOT NULL,
  `talent_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `talent_portfolios`
--

INSERT INTO `talent_portfolios` (`id`, `talent_id`, `title`, `description`, `link_url`, `thumb_image`, `created_at`, `updated_at`) VALUES
(1, 3, 'kh', 'nln', 'khl', '/uploads/portfolio/150739698320150927-090519.jpg', '2017-10-07 11:53:03', '2017-10-07 11:53:03'),
(3, 3, 'bjhjk', 'bkh', 'nohj', '/uploads/portfolio/150739739246035824.JPG', '2017-10-07 11:59:52', '2017-10-07 11:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `role` enum('admin','talent','employer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'talent',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `user_name`, `linkedin_id`, `google_id`, `facebook_id`, `active`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bipin', 'Yadav', 'bipinyadav007@gmail.com', '$2y$10$a5huvdWfjzV/RQdeoWQQQOGd1colZCFvnmcbtLnB3NoHddKFz6hYy', NULL, NULL, NULL, NULL, '0', 'talent', 'ZxOQz215u0647PU1vsDj1i9lfazx1IQLfeLQpiy4JLzjRwRxY7ZlznPilchf', '2017-09-25 01:46:21', '2017-10-02 14:20:28'),
(2, 'Raghvendra pratap', 'Singh', 'raghugkp10@gmail.com', '$2y$10$5UiXOYlXWVOcJFdqtL3oW./zLKMUe5biO3c.Vk58yfzEZpjr6xutm', NULL, NULL, NULL, NULL, '0', 'talent', 'SOL1HBeBWR2HKwWmRzGareiM2s5MDmg09mFpbu8w1gI822CPS3E9udw9QeaD', '2017-10-04 03:07:51', '2017-10-04 03:07:51'),
(3, 'itz', 'raghu', 'raghu@gmail.com', '$2y$10$21E7uVUVH5CoJ6jVX35dD.6w9LRj37xK8MfH0EriWpEiSmagobgWG', NULL, NULL, NULL, NULL, '0', 'talent', 'hCdonSbxJ4PqUVIqwcCWHotNHwbUbodpN3zryV9nTziZA9SozD0UL8dNpklT', '2017-10-04 03:11:49', '2017-10-07 11:03:55'),
(4, 'Bipin', 'Yadav', 'bipinyadav18390@gmail.com', '$2y$10$o4ZwSsHqKCUBoBwgmDAf5u8XOf7SIunAhBbGU7Jh.eAIq5ksWcjw.', NULL, NULL, NULL, NULL, '0', 'talent', 'Oxmab0aS6NBHgvN590EUR04XYM08DHOe9tPUmf5aKuuEWv6fMdhUdf3dyUAV', '2017-10-04 15:45:13', '2017-10-04 15:45:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ahoy_pyrolancer_projects_slug_index` (`slug`),
  ADD KEY `ahoy_pyrolancer_projects_user_id_index` (`added_by`),
  ADD KEY `ahoy_pyrolancer_projects_project_type_id_index` (`project_type_id`);

--
-- Indexes for table `project_applicants`
--
ALTER TABLE `project_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_attachments`
--
ALTER TABLE `project_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_skills`
--
ALTER TABLE `project_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_skill_categories`
--
ALTER TABLE `project_skill_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_types`
--
ALTER TABLE `project_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skills_slug_unique` (`slug`),
  ADD KEY `skills_category_id_index` (`category_id`);

--
-- Indexes for table `skill_categories`
--
ALTER TABLE `skill_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `talent_portfolios`
--
ALTER TABLE `talent_portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_applicants`
--
ALTER TABLE `project_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_attachments`
--
ALTER TABLE `project_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_skills`
--
ALTER TABLE `project_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_skill_categories`
--
ALTER TABLE `project_skill_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_types`
--
ALTER TABLE `project_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `skill_categories`
--
ALTER TABLE `skill_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `talent_portfolios`
--
ALTER TABLE `talent_portfolios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
