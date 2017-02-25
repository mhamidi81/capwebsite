-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 26 Avril 2016 à 16:38
-- Version du serveur :  10.1.9-MariaDB
-- Version de PHP :  5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `capmaroc`
--

-- --------------------------------------------------------

--
-- Structure de la table `adm_cities`
--

CREATE TABLE `adm_cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `adm_cities`
--

INSERT INTO `adm_cities` (`id`, `name`, `region_id`, `country_id`, `created`, `updated`) VALUES
(1, 'Agadir Ida-Outanane', 1, 1, NULL, NULL),
(2, 'Inezgane Aït Melloul', 1, 1, NULL, NULL),
(3, 'Chtouka Aït Baha', 1, 1, NULL, NULL),
(4, 'Taroudante', 1, 1, NULL, NULL),
(5, 'Tiznit', 1, 1, NULL, NULL),
(6, 'Tata', 1, 1, NULL, NULL),
(7, 'Errachidia', 2, 1, '2016-01-04 14:54:34', '2016-01-04 14:54:34'),
(8, 'Ouarzazte', 2, 1, NULL, NULL),
(9, 'Zagora', 2, 1, NULL, NULL),
(10, 'Tinghir ', 2, 1, NULL, NULL),
(11, 'Midelt', 2, 1, NULL, NULL),
(12, 'Guelmim', 3, 1, NULL, NULL),
(13, 'Assa-Zag', 3, 1, NULL, NULL),
(14, 'Tan-Tan', 3, 1, NULL, NULL),
(15, 'Sidi Ifni', 3, 1, NULL, NULL),
(16, 'Laâyoune', 4, 1, NULL, NULL),
(17, 'Boujdour', 4, 1, NULL, NULL),
(18, 'Tarfaya', 4, 1, NULL, NULL),
(19, 'Smara', 4, 1, NULL, NULL),
(20, 'Oued-Eddahab', 5, 1, NULL, NULL),
(21, 'Aousserd', 5, 1, NULL, NULL),
(22, 'Marrakech', 6, 1, NULL, NULL),
(23, 'Chichaoua', 6, 1, NULL, NULL),
(24, 'Al Haouz', 6, 1, NULL, NULL),
(25, 'Kelaa Sraghna', 6, 1, NULL, NULL),
(26, 'Essaouira', 6, 1, NULL, NULL),
(27, 'Rhamna', 6, 1, NULL, NULL),
(28, 'Safi', 6, 1, NULL, NULL),
(29, 'Youssoufia', 6, 1, NULL, NULL),
(30, 'Beni Mellal', 7, 1, NULL, NULL),
(31, 'Azilal', 7, 1, NULL, NULL),
(32, 'Fqih Bensaleh', 7, 1, NULL, NULL),
(33, 'Khénifra', 7, 1, NULL, NULL),
(34, 'Khouribga', 7, 1, NULL, NULL),
(35, 'Fès', 8, 1, NULL, NULL),
(36, 'Meknès', 8, 1, NULL, NULL),
(37, 'Hajeb', 8, 1, NULL, NULL),
(38, 'Ifrane', 8, 1, NULL, NULL),
(39, 'Moulay Yacoub', 8, 1, NULL, NULL),
(40, 'Sefrou', 8, 1, NULL, NULL),
(41, 'Boulmane', 8, 1, NULL, NULL),
(42, 'Taounate', 8, 1, NULL, NULL),
(43, 'Taza', 8, 1, NULL, NULL),
(44, 'Oujda-Angad', 9, 1, NULL, NULL),
(45, 'Nador', 9, 1, NULL, NULL),
(46, 'Jerada', 9, 1, NULL, NULL),
(47, 'Berkane', 9, 1, NULL, NULL),
(48, 'Taourirt', 9, 1, NULL, NULL),
(49, 'Guercif', 9, 1, NULL, NULL),
(50, 'Figuig', 9, 1, NULL, NULL),
(51, 'Rabat', 10, 1, NULL, NULL),
(52, 'Salé', 10, 1, NULL, NULL),
(53, 'Skhirat-Témara', 10, 1, NULL, NULL),
(54, 'Kénitra', 10, 1, NULL, NULL),
(55, 'Khémisset', 10, 1, NULL, NULL),
(56, 'Sidi Kacem', 10, 1, NULL, NULL),
(57, 'Sidi Slimane', 10, 1, NULL, NULL),
(58, 'Tanger-Assilah', 11, 1, NULL, NULL),
(59, 'M’diq-Fnideq', 11, 1, NULL, NULL),
(60, 'Tétouan', 11, 1, NULL, NULL),
(61, 'Fahs-Anjra', 11, 1, NULL, NULL),
(62, 'Larache', 11, 1, NULL, NULL),
(63, 'Al Hoceima', 11, 1, NULL, NULL),
(64, 'Chefchaouen', 11, 1, NULL, NULL),
(65, 'Ouazzane', 11, 1, NULL, NULL),
(66, 'Casablanca', 12, 1, NULL, NULL),
(67, 'Mohammedia', 12, 1, NULL, NULL),
(68, 'El Jadida', 12, 1, NULL, NULL),
(69, 'Nouaceur', 12, 1, NULL, NULL),
(70, 'Mediouna', 12, 1, NULL, NULL),
(71, 'Benslimane', 12, 1, NULL, NULL),
(72, 'Berrechid', 12, 1, NULL, NULL),
(405, 'Settat ', 12, 1, '2016-01-05 11:57:59', '2016-01-05 11:57:59'),
(406, 'Sidi Bennour', 12, 1, '2016-01-05 11:58:26', '2016-01-05 11:58:26'),
(407, 'Azrou', 8, 1, '2016-01-06 10:07:19', '2016-01-06 10:07:19'),
(408, 'Ksar el Kebir', 11, 1, '2016-01-06 10:08:34', '2016-01-06 10:08:34'),
(409, 'El Hajeb', 8, 1, '2016-01-14 13:53:11', '2016-01-14 13:53:11'),
(410, 'Sidi yahya gharb', 10, 1, '2016-01-18 16:06:45', '2016-01-18 16:06:45'),
(411, 'belkssiri', 10, 1, '2016-01-19 14:12:08', '2016-01-19 14:12:08'),
(412, 'Romani', 10, 1, '2016-01-26 15:03:03', '2016-01-26 15:03:03'),
(413, 'Oued Zem', 7, 1, '2016-03-08 14:08:37', '2016-03-08 14:08:37');

-- --------------------------------------------------------

--
-- Structure de la table `adm_countries`
--

CREATE TABLE `adm_countries` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `adm_countries`
--

INSERT INTO `adm_countries` (`id`, `name`, `created`, `updated`) VALUES
(1, 'Maroc', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `adm_regions`
--

CREATE TABLE `adm_regions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `adm_regions`
--

INSERT INTO `adm_regions` (`id`, `name`, `created`, `updated`) VALUES
(1, 'Sous Massa', '2015-12-10 03:15:17', '2016-01-04 14:40:36'),
(2, 'Daraâ Tafilalet', '2016-01-04 14:40:52', '2016-01-04 14:40:52'),
(3, 'Guelmim Oued Noun', '2016-01-04 14:43:39', '2016-01-04 14:43:39'),
(4, 'Laâyoune Sakia Lhamra', '2016-01-04 14:44:03', '2016-01-04 14:44:03'),
(5, 'Dakhla Oued Dahab', '2016-01-04 14:44:16', '2016-01-04 14:44:16'),
(6, 'Marrakech Safi ', '2016-01-04 14:44:29', '2016-01-04 14:44:29'),
(7, 'Beni Mellal Khenifra', '2016-01-04 14:44:44', '2016-01-04 14:44:44'),
(8, 'Fès Meknès', '2016-01-04 14:44:57', '2016-01-04 14:44:57'),
(9, 'Oriental', '2016-01-04 14:45:11', '2016-01-04 14:45:11'),
(10, 'Rabat Salé Kenitra', '2016-01-04 14:45:27', '2016-01-04 14:45:27'),
(11, 'Tanger Tetouan Al Hoceima', '2016-01-04 14:45:40', '2016-01-04 14:45:40'),
(12, 'Grand Casablanca Settat', '2016-01-04 14:45:53', '2016-01-04 14:45:53');

-- --------------------------------------------------------

--
-- Structure de la table `adm_schema_migrations`
--

CREATE TABLE `adm_schema_migrations` (
  `id` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `adm_schema_migrations`
--

INSERT INTO `adm_schema_migrations` (`id`, `class`, `type`, `created`) VALUES
(1, 'InitMigrations', 'Migrations', '2015-12-10 02:33:32'),
(2, 'ConvertVersionToClassNames', 'Migrations', '2015-12-10 02:33:32'),
(3, 'IncreaseClassNameLength', 'Migrations', '2015-12-10 02:33:32');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `all_users`
--
CREATE TABLE `all_users` (
`id` int(20)
,`role_id` int(11)
,`service_id` int(11)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`username` varchar(60)
,`password` varchar(100)
,`name` varchar(50)
,`email` varchar(255)
,`phone` varchar(45)
,`website` varchar(100)
,`activation_key` varchar(60)
,`image` varchar(255)
,`bio` text
,`status` tinyint(4)
,`gender` varchar(10)
,`updated` datetime
,`updated_by` int(20)
,`created` datetime
,`timezone` varchar(40)
,`created_by` int(20)
);

-- --------------------------------------------------------

--
-- Structure de la table `cal_events`
--

CREATE TABLE `cal_events` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  `description` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cap_acos`
--

CREATE TABLE `cap_acos` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cap_acos`
--

INSERT INTO `cap_acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, '', NULL, 'controllers', 1, 572),
(2, 1, '', NULL, 'Acl', 2, 29),
(3, 2, '', NULL, 'AclActions', 3, 18),
(4, 3, '', NULL, 'admin_index', 4, 5),
(5, 3, '', NULL, 'admin_add', 6, 7),
(6, 3, '', NULL, 'admin_edit', 8, 9),
(7, 3, '', NULL, 'admin_delete', 10, 11),
(8, 3, '', NULL, 'admin_move', 12, 13),
(9, 3, '', NULL, 'admin_generate', 14, 15),
(10, 2, '', NULL, 'AclPermissions', 19, 28),
(11, 10, '', NULL, 'admin_index', 20, 21),
(12, 10, '', NULL, 'admin_toggle', 22, 23),
(13, 10, '', NULL, 'admin_upgrade', 24, 25),
(14, 1, '', NULL, 'Blocks', 30, 65),
(15, 14, '', NULL, 'Blocks', 31, 50),
(16, 15, '', NULL, 'admin_toggle', 32, 33),
(17, 15, '', NULL, 'admin_index', 34, 35),
(18, 15, '', NULL, 'admin_add', 36, 37),
(19, 15, '', NULL, 'admin_edit', 38, 39),
(20, 15, '', NULL, 'admin_delete', 40, 41),
(21, 15, '', NULL, 'admin_moveup', 42, 43),
(22, 15, '', NULL, 'admin_movedown', 44, 45),
(23, 15, '', NULL, 'admin_process', 46, 47),
(24, 14, '', NULL, 'Regions', 51, 64),
(25, 24, '', NULL, 'admin_index', 52, 53),
(26, 24, '', NULL, 'admin_add', 54, 55),
(27, 24, '', NULL, 'admin_edit', 56, 57),
(28, 24, '', NULL, 'admin_delete', 58, 59),
(38, 1, '', NULL, 'Contacts', 66, 89),
(39, 38, '', NULL, 'Contacts', 67, 78),
(40, 39, '', NULL, 'admin_index', 68, 69),
(41, 39, '', NULL, 'admin_add', 70, 71),
(42, 39, '', NULL, 'admin_edit', 72, 73),
(43, 39, '', NULL, 'admin_delete', 74, 75),
(44, 39, '', NULL, 'view', 76, 77),
(45, 38, '', NULL, 'Messages', 79, 88),
(46, 45, '', NULL, 'admin_index', 80, 81),
(47, 45, '', NULL, 'admin_edit', 82, 83),
(48, 45, '', NULL, 'admin_delete', 84, 85),
(49, 45, '', NULL, 'admin_process', 86, 87),
(50, 1, '', NULL, 'Croogo', 90, 91),
(51, 1, '', NULL, 'Extensions', 92, 147),
(52, 51, '', NULL, 'ExtensionsLocales', 93, 106),
(53, 52, '', NULL, 'admin_index', 94, 95),
(54, 52, '', NULL, 'admin_activate', 96, 97),
(55, 52, '', NULL, 'admin_add', 98, 99),
(56, 52, '', NULL, 'admin_edit', 100, 101),
(57, 52, '', NULL, 'admin_delete', 102, 103),
(58, 51, '', NULL, 'ExtensionsPlugins', 107, 124),
(59, 58, '', NULL, 'admin_index', 108, 109),
(60, 58, '', NULL, 'admin_add', 110, 111),
(61, 58, '', NULL, 'admin_delete', 112, 113),
(62, 58, '', NULL, 'admin_toggle', 114, 115),
(63, 58, '', NULL, 'admin_migrate', 116, 117),
(64, 51, '', NULL, 'ExtensionsThemes', 125, 140),
(65, 64, '', NULL, 'admin_index', 126, 127),
(66, 64, '', NULL, 'admin_activate', 128, 129),
(67, 64, '', NULL, 'admin_add', 130, 131),
(68, 64, '', NULL, 'admin_editor', 132, 133),
(69, 64, '', NULL, 'admin_save', 134, 135),
(70, 64, '', NULL, 'admin_delete', 136, 137),
(89, 1, '', NULL, 'Install', 148, 161),
(90, 89, '', NULL, 'Install', 149, 160),
(91, 90, '', NULL, 'index', 150, 151),
(92, 90, '', NULL, 'database', 152, 153),
(93, 90, '', NULL, 'data', 154, 155),
(94, 90, '', NULL, 'adminuser', 156, 157),
(95, 90, '', NULL, 'finish', 158, 159),
(112, 1, '', NULL, 'Migrations', 162, 163),
(130, 1, '', NULL, 'Search', 164, 165),
(131, 1, '', NULL, 'Settings', 166, 207),
(132, 131, '', NULL, 'Languages', 167, 184),
(133, 132, '', NULL, 'admin_index', 168, 169),
(134, 132, '', NULL, 'admin_add', 170, 171),
(135, 132, '', NULL, 'admin_edit', 172, 173),
(136, 132, '', NULL, 'admin_delete', 174, 175),
(137, 132, '', NULL, 'admin_moveup', 176, 177),
(138, 132, '', NULL, 'admin_movedown', 178, 179),
(139, 132, '', NULL, 'admin_select', 180, 181),
(140, 131, '', NULL, 'Settings', 185, 206),
(141, 140, '', NULL, 'admin_dashboard', 186, 187),
(142, 140, '', NULL, 'admin_index', 188, 189),
(143, 140, '', NULL, 'admin_view', 190, 191),
(144, 140, '', NULL, 'admin_add', 192, 193),
(145, 140, '', NULL, 'admin_edit', 194, 195),
(146, 140, '', NULL, 'admin_delete', 196, 197),
(147, 140, '', NULL, 'admin_prefix', 198, 199),
(148, 140, '', NULL, 'admin_moveup', 200, 201),
(149, 140, '', NULL, 'admin_movedown', 202, 203),
(171, 1, '', NULL, 'Users', 208, 267),
(172, 171, '', NULL, 'Roles', 209, 220),
(173, 172, '', NULL, 'admin_index', 210, 211),
(174, 172, '', NULL, 'admin_add', 212, 213),
(175, 172, '', NULL, 'admin_edit', 214, 215),
(176, 172, '', NULL, 'admin_delete', 216, 217),
(177, 171, '', NULL, 'Users', 221, 266),
(178, 177, '', NULL, 'admin_index', 222, 223),
(179, 177, '', NULL, 'admin_add', 224, 225),
(180, 177, '', NULL, 'admin_edit', 226, 227),
(181, 177, '', NULL, 'admin_reset_password', 228, 229),
(182, 177, '', NULL, 'admin_delete', 230, 231),
(183, 177, '', NULL, 'admin_login', 232, 233),
(184, 177, '', NULL, 'admin_logout', 234, 235),
(185, 177, '', NULL, 'index', 236, 237),
(186, 177, '', NULL, 'add', 238, 239),
(187, 177, '', NULL, 'activate', 240, 241),
(188, 177, '', NULL, 'edit', 242, 243),
(189, 177, '', NULL, 'forgot', 244, 245),
(190, 177, '', NULL, 'reset', 246, 247),
(191, 177, '', NULL, 'login', 248, 249),
(192, 177, '', NULL, 'logout', 250, 251),
(193, 177, '', NULL, 'view', 252, 253),
(194, 51, NULL, NULL, 'ExtensionsDashboard', 141, 146),
(195, 194, NULL, NULL, 'admin_index', 142, 143),
(196, 58, NULL, NULL, 'admin_moveup', 118, 119),
(197, 58, NULL, NULL, 'admin_movedown', 120, 121),
(206, NULL, NULL, NULL, 'api', 573, 594),
(207, 206, NULL, NULL, 'v1_0', 574, 593),
(208, 207, NULL, NULL, 'Nodes', 575, 580),
(209, 208, NULL, NULL, 'Nodes', 576, 579),
(210, 209, NULL, NULL, 'lookup', 577, 578),
(211, 1, NULL, NULL, 'RequestManagment', 268, 373),
(212, 207, NULL, NULL, 'Users', 581, 586),
(213, 212, NULL, NULL, 'Users', 582, 585),
(214, 213, NULL, NULL, 'lookup', 583, 584),
(216, 211, NULL, NULL, 'Requests', 269, 338),
(217, 216, NULL, NULL, 'admin_get_datagrid_data', 270, 271),
(218, 216, NULL, NULL, 'admin_index', 272, 273),
(219, 216, NULL, NULL, 'admin_add', 274, 275),
(220, 216, NULL, NULL, 'admin_edit', 276, 277),
(221, 216, NULL, NULL, 'admin_delete', 278, 279),
(222, 1, NULL, NULL, 'ProfileManagment', 374, 449),
(227, 1, NULL, NULL, 'CompanyManagment', 450, 457),
(228, 216, NULL, NULL, 'admin_get_requester_data', 280, 281),
(229, 227, NULL, NULL, 'CompaniesDocuments', 451, 456),
(230, 229, NULL, NULL, 'admin_validate_document', 452, 453),
(233, 222, NULL, NULL, 'CounselorsDocuments', 375, 380),
(234, 233, NULL, NULL, 'admin_validate_document', 376, 377),
(235, 216, NULL, NULL, 'admin_completely_required', 282, 283),
(237, 216, NULL, NULL, 'admin_send_to_ministary', 284, 285),
(241, 229, NULL, NULL, 'admin_invalidate_document', 454, 455),
(243, 233, NULL, NULL, 'admin_invalidate_document', 378, 379),
(244, 216, NULL, NULL, 'admin_validate_document_reception', 286, 287),
(245, 1, NULL, NULL, 'MessageManagment', 458, 493),
(246, 245, NULL, NULL, 'Messages', 459, 492),
(247, 246, NULL, NULL, 'admin_index', 460, 461),
(248, 246, NULL, NULL, 'admin_edit', 462, 463),
(249, 246, NULL, NULL, 'admin_delete', 464, 465),
(250, 246, NULL, NULL, 'admin_process', 466, 467),
(251, 216, NULL, NULL, 'admin_receive_request_completely', 288, 289),
(252, 1, NULL, NULL, 'AddressesManagement', 494, 531),
(253, 252, NULL, NULL, 'Cities', 495, 506),
(254, 253, NULL, NULL, 'admin_get_datagrid_data', 496, 497),
(255, 253, NULL, NULL, 'admin_index', 498, 499),
(256, 253, NULL, NULL, 'admin_add', 500, 501),
(257, 253, NULL, NULL, 'admin_edit', 502, 503),
(258, 253, NULL, NULL, 'admin_delete', 504, 505),
(259, 252, NULL, NULL, 'Countries', 507, 518),
(260, 259, NULL, NULL, 'admin_get_datagrid_data', 508, 509),
(261, 259, NULL, NULL, 'admin_index', 510, 511),
(262, 259, NULL, NULL, 'admin_add', 512, 513),
(263, 259, NULL, NULL, 'admin_edit', 514, 515),
(264, 259, NULL, NULL, 'admin_delete', 516, 517),
(267, 216, NULL, NULL, 'admin_save_meeting_request_judgment', 290, 291),
(268, 216, NULL, NULL, 'admin_save_member_request_judgment', 292, 293),
(269, 211, NULL, NULL, 'Meetings', 339, 372),
(270, 269, NULL, NULL, 'admin_get_datagrid_data', 340, 341),
(271, 269, NULL, NULL, 'admin_index', 342, 343),
(272, 269, NULL, NULL, 'admin_open', 344, 345),
(273, 269, NULL, NULL, 'admin_add', 346, 347),
(274, 269, NULL, NULL, 'admin_edit', 348, 349),
(275, 269, NULL, NULL, 'admin_delete', 350, 351),
(276, 269, NULL, NULL, 'admin_get_requests_for_meeting', 352, 353),
(277, 1, NULL, NULL, 'UserManagment', 532, 553),
(278, 277, NULL, NULL, 'Users', 533, 552),
(279, 278, NULL, NULL, 'admin_get_datagrid_data', 534, 535),
(280, 278, NULL, NULL, 'admin_index', 536, 537),
(281, 278, NULL, NULL, 'admin_add', 538, 539),
(282, 278, NULL, NULL, 'admin_edit', 540, 541),
(283, 278, NULL, NULL, 'admin_delete', 542, 543),
(284, 207, NULL, NULL, 'UserManagment', 587, 592),
(285, 284, NULL, NULL, 'Users', 588, 591),
(286, 285, NULL, NULL, 'lookup', 589, 590),
(287, 177, NULL, NULL, 'admin_get_datagrid_data', 254, 255),
(289, 278, NULL, NULL, 'generatePassword', 544, 545),
(290, 177, NULL, NULL, 'generatePassword', 256, 257),
(291, 216, NULL, NULL, 'admin_get_pending_request_datagrid_data', 294, 295),
(292, 222, NULL, NULL, 'Establishments', 381, 392),
(293, 292, NULL, NULL, 'admin_get_datagrid_data', 382, 383),
(294, 292, NULL, NULL, 'admin_index', 384, 385),
(295, 292, NULL, NULL, 'admin_add', 386, 387),
(296, 292, NULL, NULL, 'admin_edit', 388, 389),
(297, 292, NULL, NULL, 'admin_delete', 390, 391),
(298, 216, NULL, NULL, 'admin_save_request_decision', 296, 297),
(299, 246, NULL, NULL, 'admin_get_datagrid_data', 468, 469),
(300, 246, NULL, NULL, 'admin_add', 470, 471),
(301, 216, NULL, NULL, 'admin_get_datagrid_data_for_meeting', 298, 299),
(302, 269, NULL, NULL, 'admin_update_meeting_members', 354, 355),
(303, 269, NULL, NULL, 'admin_update_meeting_requests', 356, 357),
(304, 269, NULL, NULL, 'admin_delete_meeting_request', 358, 359),
(305, 246, NULL, NULL, 'admin_sent', 472, 473),
(306, 246, NULL, NULL, 'admin_get_sentbox', 474, 475),
(307, 3, NULL, NULL, 'getUserMessages', 16, 17),
(308, 10, NULL, NULL, 'getUserMessages', 26, 27),
(311, 15, NULL, NULL, 'getUserMessages', 48, 49),
(312, 24, NULL, NULL, 'getUserMessages', 60, 61),
(314, 194, NULL, NULL, 'getUserMessages', 144, 145),
(315, 52, NULL, NULL, 'getUserMessages', 104, 105),
(316, 58, NULL, NULL, 'getUserMessages', 122, 123),
(317, 64, NULL, NULL, 'getUserMessages', 138, 139),
(321, 222, NULL, NULL, 'Diplomes', 393, 404),
(322, 321, NULL, NULL, 'admin_get_datagrid_data', 394, 395),
(323, 321, NULL, NULL, 'admin_index', 396, 397),
(324, 321, NULL, NULL, 'admin_add', 398, 399),
(325, 321, NULL, NULL, 'admin_edit', 400, 401),
(326, 321, NULL, NULL, 'admin_delete', 402, 403),
(329, 222, NULL, NULL, 'Specialities', 405, 416),
(330, 329, NULL, NULL, 'admin_get_datagrid_data', 406, 407),
(331, 329, NULL, NULL, 'admin_index', 408, 409),
(332, 329, NULL, NULL, 'admin_add', 410, 411),
(333, 329, NULL, NULL, 'admin_edit', 412, 413),
(334, 329, NULL, NULL, 'admin_delete', 414, 415),
(338, 132, NULL, NULL, 'getUserMessages', 182, 183),
(339, 140, NULL, NULL, 'getUserMessages', 204, 205),
(341, 172, NULL, NULL, 'getUserMessages', 218, 219),
(342, 177, NULL, NULL, 'getUserMessages', 258, 259),
(343, 246, NULL, NULL, 'admin_get_inbox', 476, 477),
(344, 246, NULL, NULL, 'admin_get_trash', 478, 479),
(345, 246, NULL, NULL, 'admin_get_unread', 480, 481),
(346, 222, NULL, NULL, 'Counselors', 417, 424),
(347, 246, NULL, NULL, 'admin_get_users', 482, 483),
(348, 246, NULL, NULL, 'admin_search', 484, 485),
(349, 346, NULL, NULL, 'wizard', 418, 419),
(350, 246, NULL, NULL, 'admin_contact', 486, 487),
(351, 222, NULL, NULL, 'Services', 425, 436),
(352, 351, NULL, NULL, 'admin_get_datagrid_data', 426, 427),
(353, 351, NULL, NULL, 'admin_index', 428, 429),
(354, 351, NULL, NULL, 'admin_add', 430, 431),
(355, 351, NULL, NULL, 'admin_edit', 432, 433),
(356, 351, NULL, NULL, 'admin_delete', 434, 435),
(357, 246, NULL, NULL, 'admin_view', 488, 489),
(358, 246, NULL, NULL, 'admin_remettre', 490, 491),
(359, 216, NULL, NULL, 'admin_can_see_all_requests', 300, 301),
(360, 216, NULL, NULL, 'admin_can_see_request_judgment_tab', 302, 303),
(361, 216, NULL, NULL, 'admin_can_see_all_request_judgments', 304, 305),
(362, 216, NULL, NULL, 'admin_rejecte_request', 306, 307),
(363, 216, NULL, NULL, 'admin_send_to_coordinator', 308, 309),
(364, 216, NULL, NULL, 'admin_send_to_commission', 310, 311),
(365, 216, NULL, NULL, 'admin_rollback_request_status', 312, 313),
(366, 216, NULL, NULL, 'admin_can_see_meeting_judgments', 314, 315),
(367, 216, NULL, NULL, 'admin_can_see_only_his_judgment', 316, 317),
(368, 216, NULL, NULL, 'admin_rollback_request_status_to_creation', 318, 319),
(369, 216, NULL, NULL, 'admin_rollback_request_status_to_profile_validation', 320, 321),
(370, 269, NULL, NULL, 'admin_print_meeting_pv', 360, 361),
(371, 269, NULL, NULL, 'admin_aprove_all_meeting_requests', 362, 363),
(372, 269, NULL, NULL, 'admin_close_meeting', 364, 365),
(373, 216, NULL, NULL, 'admin_get_meeting_and_pending_request_datagrid_data', 322, 323),
(374, 216, NULL, NULL, 'admin_provided_request', 324, 325),
(375, 269, NULL, NULL, 'admin_print_meeting_invitations', 366, 367),
(376, 1, NULL, NULL, 'CalendarManagment', 554, 565),
(377, 376, NULL, NULL, 'Events', 555, 564),
(378, 377, NULL, NULL, 'admin_index', 556, 557),
(379, 377, NULL, NULL, 'admin_add', 558, 559),
(380, 377, NULL, NULL, 'admin_edit', 560, 561),
(381, 377, NULL, NULL, 'admin_delete', 562, 563),
(382, 269, NULL, NULL, 'print_meeting_invitations', 368, 369),
(383, 216, NULL, NULL, 'admin_print_granted_request', 326, 327),
(384, 216, NULL, NULL, 'admin_archive_request', 328, 329),
(385, 346, NULL, NULL, 'admin_filter', 420, 421),
(386, 216, NULL, NULL, 'admin_filter', 330, 331),
(387, 269, NULL, NULL, 'admin_archive_meeting', 370, 371),
(388, 252, NULL, NULL, 'Regions', 519, 530),
(389, 388, NULL, NULL, 'admin_get_datagrid_data', 520, 521),
(390, 388, NULL, NULL, 'admin_index', 522, 523),
(391, 388, NULL, NULL, 'admin_add', 524, 525),
(392, 388, NULL, NULL, 'admin_edit', 526, 527),
(393, 388, NULL, NULL, 'admin_delete', 528, 529),
(394, 24, NULL, NULL, 'admin_get_datagrid_data', 62, 63),
(395, 216, NULL, NULL, 'admin_get_filtred_datagrid_data', 332, 333),
(396, 346, NULL, NULL, 'admin_get_filtred_datagrid_data', 422, 423),
(397, 278, NULL, NULL, 'admin_profile', 546, 547),
(398, 278, NULL, NULL, 'admin_change_password', 548, 549),
(399, 278, NULL, NULL, 'admin_edit_user', 550, 551),
(400, 177, NULL, NULL, 'admin_profile', 260, 261),
(401, 177, NULL, NULL, 'admin_change_password', 262, 263),
(402, 177, NULL, NULL, 'admin_edit_user', 264, 265),
(403, 222, NULL, NULL, 'OfficialSpecialities', 437, 448),
(404, 403, NULL, NULL, 'admin_get_datagrid_data', 438, 439),
(405, 403, NULL, NULL, 'admin_index', 440, 441),
(406, 403, NULL, NULL, 'admin_add', 442, 443),
(407, 403, NULL, NULL, 'admin_edit', 444, 445),
(408, 403, NULL, NULL, 'admin_delete', 446, 447),
(409, 216, NULL, NULL, 'admin_print_granted_request_decision', 334, 335),
(410, 216, NULL, NULL, 'admin_print_granted_request_badge', 336, 337),
(411, 1, NULL, NULL, 'Dashboard', 566, 571),
(412, 411, NULL, NULL, 'Dashboards', 567, 570),
(413, 412, NULL, NULL, 'admin_index', 568, 569);

-- --------------------------------------------------------

--
-- Structure de la table `cap_aros`
--

CREATE TABLE `cap_aros` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cap_aros`
--

INSERT INTO `cap_aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, 2, 'Role', 1, 'Role-admin', 5, 30),
(2, 3, 'Role', 2, 'Role-app_user', 4, 39),
(3, NULL, 'Role', 3, 'Role-public', 1, 40),
(4, 1, 'User', 1, 'admin', 6, 7),
(5, 2, 'Role', 4, 'Role-admin_cap', 31, 34),
(6, 5, 'User', 2, 'secretariat', 32, 33),
(15, 1, 'User', 10, 'xxxxxxxxxxx', 8, 9),
(16, 1, 'User', 11, 'xxxxxxxxxxx', 10, 11),
(17, 1, 'User', 12, 'xxxxxxxxxxx', 12, 13),
(18, 1, 'User', 13, 'xxxxxxxxxxx', 14, 15),
(19, 1, 'User', 14, 'xxxxxxxxxxx', 16, 17),
(20, 1, 'User', 15, 'xxxxxxxxxxx', 18, 19),
(21, 1, 'User', 16, 'xxxxxxxxxxx', 20, 21),
(22, 1, 'User', 17, 'zxzxzxzxzx', 22, 23),
(23, 3, 'User', 18, 'XZXZXZXZXZXZXZX', 2, 3),
(24, 1, 'User', 19, 'xzxzxzxzx', 24, 25),
(25, 1, 'User', 20, 'asasasasa', 26, 27),
(26, 1, 'User', 21, 'secretariatddd', 28, 29),
(43, 2, 'Role', 5, 'Role-secretary', 35, 36),
(44, 2, 'Role', 6, 'Role-commission_member', 37, 38),
(48, NULL, 'Role', 9, 'Role-secretary', 41, 46),
(49, NULL, 'Role', 10, 'Role-commission_member', 47, 74),
(50, NULL, 'Role', 11, 'Role-director', 75, 84),
(51, NULL, 'Role', 12, 'Role-minister', 85, 88),
(55, 50, 'User', 51, 'directeur', 76, 77),
(58, 48, 'User', 54, 'touria', 42, 43),
(61, 50, 'User', 57, 'bahaji', 80, 81),
(62, 50, 'User', 58, 'noura', 78, 79),
(63, 49, 'User', 59, 'sabri', 48, 49),
(64, 49, 'User', 60, 'sefiani', 50, 51),
(65, 49, 'User', 61, 'elayyadi', 52, 53),
(66, 49, 'User', 62, 'hamzaoui', 54, 55),
(67, 49, 'User', 63, 'chakib', 56, 57),
(68, 49, 'User', 64, 'elBoukhari', 58, 59),
(69, 49, 'User', 65, 'asri', 60, 61),
(70, 49, 'User', 66, 'chtaina', 62, 63),
(71, 49, 'User', 67, 'aboudrare', 64, 65),
(72, 49, 'User', 68, 'chajai', 66, 67),
(73, 49, 'User', 69, 'Idrissi', 68, 69),
(74, 50, 'User', 70, 'lakhal', 82, 83),
(75, 49, 'User', 71, 'Laalej', 70, 71),
(76, 49, 'User', 72, 'saidi', 72, 73),
(77, 51, 'User', 73, 'ministre', 86, 87),
(78, 48, 'User', 74, 'Rachid', 44, 45);

-- --------------------------------------------------------

--
-- Structure de la table `cap_aros_acos`
--

CREATE TABLE `cap_aros_acos` (
  `id` int(10) NOT NULL,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cap_aros_acos`
--

INSERT INTO `cap_aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(4, 3, 44, '1', '1', '1', '1'),
(10, 2, 185, '-1', '-1', '-1', '-1'),
(11, 3, 186, '-1', '-1', '-1', '-1'),
(12, 3, 187, '-1', '-1', '-1', '-1'),
(13, 2, 188, '-1', '-1', '-1', '-1'),
(14, 3, 189, '-1', '-1', '-1', '-1'),
(15, 3, 190, '-1', '-1', '-1', '-1'),
(16, 3, 191, '-1', '-1', '-1', '-1'),
(17, 2, 192, '1', '1', '1', '1'),
(18, 2, 193, '-1', '-1', '-1', '-1'),
(19, 3, 183, '1', '1', '1', '1'),
(20, 2, 184, '1', '1', '1', '1'),
(21, 2, 181, '1', '1', '1', '1'),
(22, 2, 141, '1', '1', '1', '1'),
(23, 2, 178, '-1', '-1', '-1', '-1'),
(24, 5, 178, '-1', '-1', '-1', '-1'),
(25, 5, 195, '1', '1', '1', '1'),
(26, 2, 195, '1', '1', '1', '1'),
(27, 5, 217, '-1', '-1', '-1', '-1'),
(28, 5, 218, '-1', '-1', '-1', '-1'),
(29, 5, 219, '-1', '-1', '-1', '-1'),
(30, 5, 220, '-1', '-1', '-1', '-1'),
(31, 5, 221, '-1', '-1', '-1', '-1'),
(36, 5, 228, '-1', '-1', '-1', '-1'),
(37, 5, 235, '-1', '-1', '-1', '-1'),
(39, 5, 237, '-1', '-1', '-1', '-1'),
(43, 5, 230, '1', '1', '1', '1'),
(45, 5, 234, '1', '1', '1', '1'),
(46, 5, 243, '1', '1', '1', '1'),
(47, 5, 241, '1', '1', '1', '1'),
(49, 5, 244, '-1', '-1', '-1', '-1'),
(50, 5, 251, '-1', '-1', '-1', '-1'),
(53, 5, 267, '-1', '-1', '-1', '-1'),
(54, 5, 268, '-1', '-1', '-1', '-1'),
(55, 5, 275, '1', '1', '1', '1'),
(56, 5, 274, '1', '1', '1', '1'),
(57, 5, 273, '1', '1', '1', '1'),
(58, 5, 272, '1', '1', '1', '1'),
(59, 5, 271, '1', '1', '1', '1'),
(60, 5, 270, '1', '1', '1', '1'),
(61, 5, 283, '1', '1', '1', '1'),
(62, 5, 282, '1', '1', '1', '1'),
(63, 5, 281, '1', '1', '1', '1'),
(64, 5, 280, '1', '1', '1', '1'),
(65, 5, 279, '1', '1', '1', '1'),
(67, 5, 291, '-1', '-1', '-1', '-1'),
(68, 5, 276, '1', '1', '1', '1'),
(70, 5, 293, '1', '1', '1', '1'),
(71, 5, 294, '1', '1', '1', '1'),
(72, 5, 295, '1', '1', '1', '1'),
(73, 5, 296, '1', '1', '1', '1'),
(74, 5, 297, '1', '1', '1', '1'),
(75, 5, 298, '-1', '-1', '-1', '-1'),
(76, 3, 192, '-1', '-1', '-1', '-1'),
(77, 3, 184, '1', '1', '1', '1'),
(78, 3, 181, '1', '1', '1', '1'),
(79, 2, 186, '-1', '-1', '-1', '-1'),
(80, 2, 187, '-1', '-1', '-1', '-1'),
(81, 2, 189, '-1', '-1', '-1', '-1'),
(82, 2, 190, '-1', '-1', '-1', '-1'),
(83, 2, 191, '1', '1', '1', '1'),
(84, 43, 195, '1', '1', '1', '1'),
(85, 44, 195, '1', '1', '1', '1'),
(88, 43, 217, '1', '1', '1', '1'),
(89, 43, 218, '1', '1', '1', '1'),
(90, 43, 228, '1', '1', '1', '1'),
(91, 43, 235, '1', '1', '1', '1'),
(94, 43, 244, '1', '1', '1', '1'),
(95, 43, 251, '1', '1', '1', '1'),
(96, 44, 217, '1', '1', '1', '1'),
(97, 44, 218, '1', '1', '1', '1'),
(98, 44, 228, '1', '1', '1', '1'),
(99, 44, 268, '1', '1', '1', '1'),
(118, 43, 243, '1', '1', '1', '1'),
(119, 43, 234, '1', '1', '1', '1'),
(120, 43, 241, '1', '1', '1', '1'),
(121, 43, 230, '1', '1', '1', '1'),
(122, 5, 184, '1', '1', '1', '1'),
(123, 5, 183, '1', '1', '1', '1'),
(124, 5, 181, '1', '1', '1', '1'),
(125, 5, 187, '-1', '-1', '-1', '-1'),
(126, 5, 287, '-1', '-1', '-1', '-1'),
(127, 5, 192, '1', '1', '1', '1'),
(128, 5, 191, '1', '1', '1', '1'),
(129, 43, 219, '1', '1', '1', '1'),
(130, 43, 220, '1', '1', '1', '1'),
(131, 43, 221, '1', '1', '1', '1'),
(132, 43, 237, '1', '1', '1', '1'),
(135, 43, 267, '1', '1', '1', '1'),
(136, 43, 268, '1', '1', '1', '1'),
(137, 43, 291, '1', '1', '1', '1'),
(138, 5, 141, '1', '1', '1', '1'),
(139, 43, 141, '1', '1', '1', '1'),
(140, 44, 141, '1', '1', '1', '1'),
(143, 43, 279, '-1', '-1', '-1', '-1'),
(146, 48, 217, '1', '1', '1', '1'),
(147, 48, 218, '1', '1', '1', '1'),
(148, 51, 195, '1', '1', '1', '1'),
(149, 50, 195, '1', '1', '1', '1'),
(150, 49, 195, '1', '1', '1', '1'),
(151, 48, 195, '1', '1', '1', '1'),
(152, 48, 181, '1', '1', '1', '1'),
(153, 49, 181, '1', '1', '1', '1'),
(154, 50, 181, '1', '1', '1', '1'),
(155, 51, 181, '1', '1', '1', '1'),
(156, 48, 183, '1', '1', '1', '1'),
(157, 49, 183, '1', '1', '1', '1'),
(158, 50, 183, '1', '1', '1', '1'),
(159, 51, 183, '1', '1', '1', '1'),
(160, 51, 184, '1', '1', '1', '1'),
(161, 50, 184, '1', '1', '1', '1'),
(162, 49, 184, '1', '1', '1', '1'),
(163, 48, 184, '1', '1', '1', '1'),
(164, 48, 192, '1', '1', '1', '1'),
(165, 48, 191, '1', '1', '1', '1'),
(166, 49, 191, '1', '1', '1', '1'),
(167, 49, 192, '1', '1', '1', '1'),
(168, 50, 192, '1', '1', '1', '1'),
(169, 50, 191, '1', '1', '1', '1'),
(170, 51, 191, '1', '1', '1', '1'),
(171, 51, 192, '1', '1', '1', '1'),
(172, 50, 270, '1', '1', '1', '1'),
(173, 50, 271, '1', '1', '1', '1'),
(174, 50, 276, '1', '1', '1', '1'),
(175, 50, 272, '1', '1', '1', '1'),
(176, 50, 273, '1', '1', '1', '1'),
(177, 50, 274, '1', '1', '1', '1'),
(178, 50, 275, '1', '1', '1', '1'),
(179, 51, 298, '1', '1', '1', '1'),
(180, 50, 291, '1', '1', '1', '1'),
(181, 50, 237, '1', '1', '1', '1'),
(182, 50, 217, '1', '1', '1', '1'),
(183, 50, 218, '1', '1', '1', '1'),
(184, 50, 228, '1', '1', '1', '1'),
(185, 50, 267, '1', '1', '1', '1'),
(186, 50, 268, '1', '1', '1', '1'),
(187, 49, 268, '1', '1', '1', '1'),
(188, 49, 217, '1', '1', '1', '1'),
(189, 49, 218, '1', '1', '1', '1'),
(190, 48, 228, '1', '1', '1', '1'),
(191, 49, 228, '1', '1', '1', '1'),
(192, 51, 228, '1', '1', '1', '1'),
(193, 51, 217, '1', '1', '1', '1'),
(194, 51, 218, '-1', '-1', '-1', '-1'),
(195, 48, 235, '1', '1', '1', '1'),
(198, 48, 244, '1', '1', '1', '1'),
(199, 48, 251, '1', '1', '1', '1'),
(200, 50, 279, '1', '1', '1', '1'),
(201, 5, 301, '-1', '-1', '-1', '-1'),
(202, 50, 301, '1', '1', '1', '1'),
(203, 50, 303, '1', '1', '1', '1'),
(204, 50, 302, '1', '1', '1', '1'),
(205, 5, 303, '1', '1', '1', '1'),
(206, 5, 302, '1', '1', '1', '1'),
(207, 5, 304, '1', '1', '1', '1'),
(208, 50, 304, '1', '1', '1', '1'),
(209, 5, 300, '1', '1', '1', '1'),
(210, 5, 299, '-1', '-1', '-1', '-1'),
(211, 5, 250, '-1', '-1', '-1', '-1'),
(212, 5, 249, '1', '1', '1', '1'),
(213, 5, 248, '1', '1', '1', '1'),
(214, 5, 247, '1', '1', '1', '1'),
(215, 51, 300, '1', '1', '1', '1'),
(216, 51, 247, '1', '1', '1', '1'),
(217, 51, 248, '1', '1', '1', '1'),
(218, 50, 300, '1', '1', '1', '1'),
(219, 50, 248, '1', '1', '1', '1'),
(220, 50, 247, '1', '1', '1', '1'),
(221, 49, 247, '1', '1', '1', '1'),
(222, 49, 248, '1', '1', '1', '1'),
(223, 49, 300, '1', '1', '1', '1'),
(224, 51, 249, '1', '1', '1', '1'),
(225, 50, 249, '1', '1', '1', '1'),
(226, 49, 249, '1', '1', '1', '1'),
(227, 48, 249, '1', '1', '1', '1'),
(228, 48, 248, '1', '1', '1', '1'),
(229, 48, 247, '1', '1', '1', '1'),
(230, 3, 247, '-1', '-1', '-1', '-1'),
(231, 3, 248, '-1', '-1', '-1', '-1'),
(232, 3, 249, '-1', '-1', '-1', '-1'),
(233, 2, 249, '1', '1', '1', '1'),
(234, 2, 248, '1', '1', '1', '1'),
(235, 2, 247, '1', '1', '1', '1'),
(236, 2, 300, '1', '1', '1', '1'),
(237, 3, 300, '-1', '-1', '-1', '-1'),
(238, 48, 300, '1', '1', '1', '1'),
(239, 2, 305, '1', '1', '1', '1'),
(240, 3, 305, '-1', '-1', '-1', '-1'),
(241, 5, 305, '1', '1', '1', '1'),
(242, 48, 305, '1', '1', '1', '1'),
(243, 49, 305, '1', '1', '1', '1'),
(244, 50, 305, '1', '1', '1', '1'),
(245, 51, 305, '1', '1', '1', '1'),
(246, 2, 306, '1', '1', '1', '1'),
(247, 3, 306, '-1', '-1', '-1', '-1'),
(248, 5, 306, '1', '1', '1', '1'),
(249, 48, 306, '1', '1', '1', '1'),
(250, 49, 306, '1', '1', '1', '1'),
(251, 50, 306, '1', '1', '1', '1'),
(252, 51, 306, '1', '1', '1', '1'),
(253, 48, 322, '-1', '-1', '-1', '-1'),
(254, 48, 323, '-1', '-1', '-1', '-1'),
(255, 48, 324, '-1', '-1', '-1', '-1'),
(256, 48, 325, '-1', '-1', '-1', '-1'),
(257, 48, 326, '-1', '-1', '-1', '-1'),
(260, 50, 326, '1', '1', '1', '1'),
(261, 50, 325, '1', '1', '1', '1'),
(262, 50, 324, '1', '1', '1', '1'),
(263, 50, 323, '1', '1', '1', '1'),
(264, 50, 322, '1', '1', '1', '1'),
(266, 5, 326, '1', '1', '1', '1'),
(267, 5, 325, '1', '1', '1', '1'),
(268, 5, 324, '1', '1', '1', '1'),
(269, 5, 323, '1', '1', '1', '1'),
(270, 5, 322, '1', '1', '1', '1'),
(272, 5, 334, '1', '1', '1', '1'),
(273, 5, 333, '1', '1', '1', '1'),
(274, 5, 332, '1', '1', '1', '1'),
(275, 5, 331, '1', '1', '1', '1'),
(276, 5, 330, '1', '1', '1', '1'),
(277, 48, 330, '-1', '-1', '-1', '-1'),
(278, 48, 331, '-1', '-1', '-1', '-1'),
(279, 48, 332, '-1', '-1', '-1', '-1'),
(280, 48, 333, '-1', '-1', '-1', '-1'),
(281, 48, 334, '-1', '-1', '-1', '-1'),
(282, 2, 343, '1', '1', '1', '1'),
(283, 2, 344, '1', '1', '1', '1'),
(284, 2, 345, '1', '1', '1', '1'),
(285, 3, 345, '-1', '-1', '-1', '-1'),
(286, 3, 344, '-1', '-1', '-1', '-1'),
(287, 3, 343, '-1', '-1', '-1', '-1'),
(288, 5, 343, '1', '1', '1', '1'),
(289, 5, 344, '1', '1', '1', '1'),
(290, 5, 345, '1', '1', '1', '1'),
(291, 48, 345, '1', '1', '1', '1'),
(292, 48, 344, '1', '1', '1', '1'),
(293, 48, 343, '1', '1', '1', '1'),
(294, 49, 343, '1', '1', '1', '1'),
(295, 49, 344, '1', '1', '1', '1'),
(296, 49, 345, '1', '1', '1', '1'),
(297, 50, 345, '1', '1', '1', '1'),
(298, 50, 344, '1', '1', '1', '1'),
(299, 50, 343, '1', '1', '1', '1'),
(300, 51, 343, '1', '1', '1', '1'),
(301, 51, 344, '1', '1', '1', '1'),
(302, 51, 345, '1', '1', '1', '1'),
(303, 48, 243, '1', '1', '1', '1'),
(304, 48, 234, '1', '1', '1', '1'),
(305, 48, 230, '1', '1', '1', '1'),
(306, 48, 241, '1', '1', '1', '1'),
(307, 2, 347, '1', '1', '1', '1'),
(308, 3, 347, '-1', '-1', '-1', '-1'),
(309, 5, 347, '1', '1', '1', '1'),
(310, 48, 347, '1', '1', '1', '1'),
(311, 49, 347, '1', '1', '1', '1'),
(312, 50, 347, '1', '1', '1', '1'),
(313, 51, 347, '1', '1', '1', '1'),
(314, 2, 348, '1', '1', '1', '1'),
(315, 3, 348, '-1', '-1', '-1', '-1'),
(316, 5, 348, '1', '1', '1', '1'),
(317, 48, 348, '1', '1', '1', '1'),
(318, 49, 348, '1', '1', '1', '1'),
(319, 50, 348, '1', '1', '1', '1'),
(320, 51, 348, '1', '1', '1', '1'),
(321, 5, 356, '1', '1', '1', '1'),
(322, 5, 355, '1', '1', '1', '1'),
(323, 5, 354, '1', '1', '1', '1'),
(324, 5, 353, '1', '1', '1', '1'),
(325, 5, 352, '1', '1', '1', '1'),
(326, 2, 357, '1', '1', '1', '1'),
(327, 2, 358, '1', '1', '1', '1'),
(328, 3, 358, '-1', '-1', '-1', '-1'),
(329, 3, 357, '-1', '-1', '-1', '-1'),
(330, 5, 357, '1', '1', '1', '1'),
(331, 5, 358, '1', '1', '1', '1'),
(332, 48, 357, '1', '1', '1', '1'),
(333, 48, 358, '1', '1', '1', '1'),
(334, 49, 357, '1', '1', '1', '1'),
(335, 49, 358, '1', '1', '1', '1'),
(336, 50, 357, '1', '1', '1', '1'),
(337, 50, 358, '1', '1', '1', '1'),
(338, 51, 357, '1', '1', '1', '1'),
(339, 51, 358, '1', '1', '1', '1'),
(340, 50, 364, '1', '1', '1', '1'),
(341, 5, 364, '-1', '-1', '-1', '-1'),
(342, 5, 363, '-1', '-1', '-1', '-1'),
(343, 5, 362, '-1', '-1', '-1', '-1'),
(344, 5, 361, '-1', '-1', '-1', '-1'),
(345, 5, 360, '-1', '-1', '-1', '-1'),
(346, 5, 359, '-1', '-1', '-1', '-1'),
(347, 48, 363, '1', '1', '1', '1'),
(348, 48, 362, '1', '1', '1', '1'),
(349, 48, 359, '1', '1', '1', '1'),
(350, 50, 362, '1', '1', '1', '1'),
(351, 50, 361, '1', '1', '1', '1'),
(352, 50, 360, '1', '1', '1', '1'),
(353, 50, 359, '1', '1', '1', '1'),
(354, 51, 359, '1', '1', '1', '1'),
(355, 51, 360, '-1', '-1', '-1', '-1'),
(356, 51, 361, '-1', '-1', '-1', '-1'),
(357, 5, 366, '-1', '-1', '-1', '-1'),
(358, 49, 367, '1', '1', '1', '1'),
(359, 50, 366, '1', '1', '1', '1'),
(360, 48, 360, '-1', '-1', '-1', '-1'),
(361, 50, 365, '1', '1', '1', '1'),
(362, 48, 365, '1', '1', '1', '1'),
(363, 50, 369, '1', '1', '1', '1'),
(364, 48, 368, '1', '1', '1', '1'),
(365, 51, 366, '-1', '-1', '-1', '-1'),
(366, 51, 271, '1', '1', '1', '1'),
(367, 51, 270, '1', '1', '1', '1'),
(368, 51, 272, '1', '1', '1', '1'),
(369, 50, 370, '1', '1', '1', '1'),
(370, 50, 371, '-1', '-1', '-1', '-1'),
(371, 51, 371, '1', '1', '1', '1'),
(372, 51, 370, '1', '1', '1', '1'),
(373, 50, 372, '1', '1', '1', '1'),
(374, 50, 373, '1', '1', '1', '1'),
(375, 50, 374, '1', '1', '1', '1'),
(376, 51, 301, '1', '1', '1', '1'),
(377, 51, 375, '-1', '-1', '-1', '-1'),
(378, 50, 375, '1', '1', '1', '1'),
(379, 51, 378, '1', '1', '1', '1'),
(380, 51, 379, '1', '1', '1', '1'),
(381, 51, 380, '1', '1', '1', '1'),
(382, 51, 381, '1', '1', '1', '1'),
(383, 50, 381, '1', '1', '1', '1'),
(384, 50, 380, '1', '1', '1', '1'),
(385, 50, 379, '1', '1', '1', '1'),
(386, 50, 378, '1', '1', '1', '1'),
(387, 49, 378, '1', '1', '1', '1'),
(388, 49, 379, '1', '1', '1', '1'),
(389, 49, 380, '1', '1', '1', '1'),
(390, 49, 381, '1', '1', '1', '1'),
(391, 48, 378, '1', '1', '1', '1'),
(392, 48, 379, '1', '1', '1', '1'),
(393, 48, 380, '1', '1', '1', '1'),
(394, 48, 381, '1', '1', '1', '1'),
(395, 5, 381, '1', '1', '1', '1'),
(396, 5, 380, '1', '1', '1', '1'),
(397, 5, 379, '1', '1', '1', '1'),
(398, 5, 378, '1', '1', '1', '1'),
(399, 3, 378, '-1', '-1', '-1', '-1'),
(400, 2, 378, '-1', '-1', '-1', '-1'),
(401, 48, 384, '1', '1', '1', '1'),
(402, 48, 383, '1', '1', '1', '1'),
(403, 51, 385, '1', '1', '1', '1'),
(404, 50, 385, '1', '1', '1', '1'),
(405, 48, 385, '1', '1', '1', '1'),
(406, 48, 386, '1', '1', '1', '1'),
(407, 51, 386, '-1', '-1', '-1', '-1'),
(408, 50, 386, '1', '1', '1', '1'),
(409, 51, 387, '1', '1', '1', '1'),
(410, 50, 258, '1', '1', '1', '1'),
(411, 50, 257, '1', '1', '1', '1'),
(412, 50, 256, '1', '1', '1', '1'),
(413, 50, 255, '1', '1', '1', '1'),
(414, 50, 254, '1', '1', '1', '1'),
(415, 50, 393, '1', '1', '1', '1'),
(416, 50, 392, '1', '1', '1', '1'),
(417, 50, 391, '1', '1', '1', '1'),
(418, 50, 390, '1', '1', '1', '1'),
(419, 50, 389, '1', '1', '1', '1'),
(420, 48, 393, '-1', '-1', '-1', '-1'),
(421, 48, 392, '-1', '-1', '-1', '-1'),
(422, 48, 391, '-1', '-1', '-1', '-1'),
(423, 48, 390, '-1', '-1', '-1', '-1'),
(424, 48, 389, '-1', '-1', '-1', '-1'),
(425, 48, 258, '-1', '-1', '-1', '-1'),
(426, 48, 257, '-1', '-1', '-1', '-1'),
(427, 48, 256, '-1', '-1', '-1', '-1'),
(428, 48, 255, '-1', '-1', '-1', '-1'),
(429, 48, 254, '-1', '-1', '-1', '-1'),
(430, 50, 356, '1', '1', '1', '1'),
(431, 50, 355, '1', '1', '1', '1'),
(432, 50, 354, '1', '1', '1', '1'),
(433, 50, 353, '1', '1', '1', '1'),
(434, 50, 352, '1', '1', '1', '1'),
(435, 48, 356, '-1', '-1', '-1', '-1'),
(436, 48, 355, '-1', '-1', '-1', '-1'),
(437, 48, 354, '-1', '-1', '-1', '-1'),
(438, 48, 353, '-1', '-1', '-1', '-1'),
(439, 48, 352, '-1', '-1', '-1', '-1'),
(440, 48, 395, '1', '1', '1', '1'),
(441, 50, 395, '1', '1', '1', '1'),
(442, 51, 396, '-1', '-1', '-1', '-1'),
(443, 50, 396, '1', '1', '1', '1'),
(444, 48, 396, '1', '1', '1', '1'),
(445, 50, 179, '-1', '-1', '-1', '-1'),
(446, 50, 178, '-1', '-1', '-1', '-1'),
(447, 50, 180, '-1', '-1', '-1', '-1'),
(448, 50, 182, '-1', '-1', '-1', '-1'),
(449, 50, 280, '1', '1', '1', '1'),
(450, 50, 281, '1', '1', '1', '1'),
(451, 50, 282, '1', '1', '1', '1'),
(452, 50, 283, '1', '1', '1', '1'),
(453, 50, 399, '1', '1', '1', '1'),
(454, 50, 398, '1', '1', '1', '1'),
(455, 50, 397, '1', '1', '1', '1'),
(456, 49, 399, '1', '1', '1', '1'),
(457, 49, 398, '1', '1', '1', '1'),
(458, 49, 397, '1', '1', '1', '1'),
(459, 49, 289, '-1', '-1', '-1', '-1'),
(460, 51, 397, '1', '1', '1', '1'),
(461, 51, 398, '1', '1', '1', '1'),
(462, 51, 399, '1', '1', '1', '1'),
(463, 48, 399, '1', '1', '1', '1'),
(464, 48, 398, '1', '1', '1', '1'),
(465, 48, 397, '1', '1', '1', '1'),
(466, 5, 399, '1', '1', '1', '1'),
(467, 5, 398, '1', '1', '1', '1'),
(468, 5, 397, '1', '1', '1', '1'),
(469, 50, 244, '-1', '-1', '-1', '-1'),
(470, 50, 297, '1', '1', '1', '1'),
(471, 50, 296, '1', '1', '1', '1'),
(472, 50, 295, '1', '1', '1', '1'),
(473, 50, 294, '1', '1', '1', '1'),
(474, 50, 293, '1', '1', '1', '1'),
(475, 50, 334, '1', '1', '1', '1'),
(476, 50, 333, '1', '1', '1', '1'),
(477, 50, 332, '1', '1', '1', '1'),
(478, 50, 331, '1', '1', '1', '1'),
(479, 50, 330, '1', '1', '1', '1'),
(480, 50, 264, '-1', '-1', '-1', '-1'),
(481, 50, 263, '-1', '-1', '-1', '-1'),
(482, 50, 262, '-1', '-1', '-1', '-1'),
(483, 50, 261, '-1', '-1', '-1', '-1'),
(484, 50, 260, '-1', '-1', '-1', '-1'),
(485, 48, 410, '1', '1', '1', '1'),
(486, 48, 409, '1', '1', '1', '1'),
(487, 50, 408, '1', '1', '1', '1'),
(488, 50, 407, '1', '1', '1', '1'),
(489, 50, 406, '1', '1', '1', '1'),
(490, 50, 405, '1', '1', '1', '1'),
(491, 50, 404, '1', '1', '1', '1'),
(492, 51, 413, '1', '1', '1', '1'),
(493, 50, 413, '1', '1', '1', '1'),
(494, 49, 413, '1', '1', '1', '1'),
(495, 48, 413, '1', '1', '1', '1'),
(496, 49, 359, '1', '1', '1', '1'),
(497, 49, 301, '1', '1', '1', '1'),
(498, 48, 361, '-1', '-1', '-1', '-1');

-- --------------------------------------------------------

--
-- Structure de la table `cap_blocks`
--

CREATE TABLE `cap_blocks` (
  `id` int(20) NOT NULL,
  `region_id` int(20) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `visibility_paths` text COLLATE utf8_unicode_ci,
  `visibility_php` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cap_dashboards`
--

CREATE TABLE `cap_dashboards` (
  `id` int(20) NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(20) NOT NULL DEFAULT '0',
  `column` int(20) NOT NULL DEFAULT '0',
  `weight` int(20) NOT NULL DEFAULT '0',
  `collapsed` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cap_languages`
--

CREATE TABLE `cap_languages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cap_languages`
--

INSERT INTO `cap_languages` (`id`, `title`, `native`, `alias`, `status`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Francais ', 'Francais ', 'fra', 1, 1, '2015-07-08 22:57:30', 1, '2009-11-02 20:52:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cap_regions`
--

CREATE TABLE `cap_regions` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `block_count` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cap_regions`
--

INSERT INTO `cap_regions` (`id`, `title`, `alias`, `description`, `block_count`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(9, 'region1', 'region1', '', 0, '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cap_roles`
--

CREATE TABLE `cap_roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cap_roles`
--

INSERT INTO `cap_roles` (`id`, `title`, `alias`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(1, 'Admin', 'admin', '2009-04-05 00:10:34', NULL, '2009-04-05 00:10:34', NULL),
(2, 'Utilisateur', 'app_user', '2009-04-05 00:10:50', NULL, '2015-09-16 23:02:04', 1),
(3, 'Public', 'public', '2009-04-05 00:12:38', NULL, '2009-04-07 01:41:45', NULL),
(4, 'Administrateur', 'admin_cap', '2015-07-12 04:06:59', 1, '2015-09-16 23:00:42', 1),
(9, 'Secrétariat', 'secretary', '2015-09-17 02:16:38', 1, '2015-09-17 02:16:49', 1),
(10, 'Membre de commission', 'commission_member', '2015-09-17 02:17:05', 1, '2015-09-17 02:17:05', 1),
(11, 'Coordinateur', 'director', '2015-09-17 02:17:16', 1, '2015-09-17 02:17:16', 1),
(12, 'Ministre', 'minister', '2015-09-17 02:17:26', 1, '2015-09-17 02:17:26', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cap_roles_users`
--

CREATE TABLE `cap_roles_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `granted_by` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cap_schema_migrations`
--

CREATE TABLE `cap_schema_migrations` (
  `id` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cap_schema_migrations`
--

INSERT INTO `cap_schema_migrations` (`id`, `class`, `type`, `created`) VALUES
(1, 'InitMigrations', 'Migrations', '2015-07-07 02:13:43'),
(2, 'ConvertVersionToClassNames', 'Migrations', '2015-07-07 02:13:44'),
(3, 'IncreaseClassNameLength', 'Migrations', '2015-07-07 02:13:44'),
(4, 'FirstMigrationSettings', 'Settings', '2015-07-07 02:13:44'),
(5, 'SettingsTrackableFields', 'Settings', '2015-07-07 02:13:45'),
(6, 'AddedAssetTimestampSetting', 'Settings', '2015-07-07 02:13:45'),
(7, 'ExposeSiteThemeAndLocaleAndHomeUrl', 'Settings', '2015-07-07 02:13:45'),
(8, 'FirstMigrationAcl', 'Acl', '2015-07-07 02:13:46'),
(9, 'FirstMigrationBlocks', 'Blocks', '2015-07-07 02:13:46'),
(10, 'BlocksTrackableFields', 'Blocks', '2015-07-07 02:13:47'),
(11, 'BlocksPublishingFields', 'Blocks', '2015-07-07 02:13:48'),
(12, 'FirstMigrationComments', 'Comments', '2015-07-07 02:13:48'),
(13, 'CommentsTrackableFields', 'Comments', '2015-07-07 02:13:48'),
(14, 'AddCommentsForeignKeys', 'Comments', '2015-07-07 02:13:49'),
(15, 'FirstMigrationContacts', 'Contacts', '2015-07-07 02:13:49'),
(16, 'ContactsTrackableFields', 'Contacts', '2015-07-07 02:13:50'),
(17, 'FirstMigrationMenus', 'Menus', '2015-07-07 02:13:50'),
(18, 'MenusTrackableFields', 'Menus', '2015-07-07 02:13:51'),
(19, 'MenusPublishingFields', 'Menus', '2015-07-07 02:13:52'),
(20, 'FirstMigrationMeta', 'Meta', '2015-07-07 02:13:53'),
(21, 'MetaTrackableFields', 'Meta', '2015-07-07 02:13:53'),
(22, 'FirstMigrationNodes', 'Nodes', '2015-07-07 02:13:54'),
(23, 'NodesTrackableFields', 'Nodes', '2015-07-07 02:13:55'),
(24, 'NodesPublishingFields', 'Nodes', '2015-07-07 02:13:55'),
(25, 'FirstMigrationTaxonomy', 'Taxonomy', '2015-07-07 02:13:56'),
(26, 'TaxonomyTrackableFields', 'Taxonomy', '2015-07-07 02:13:57'),
(27, 'RenameNodesTaxonomy', 'Taxonomy', '2015-07-07 02:13:57'),
(28, 'AddModelTaxonomyForeignKey', 'Taxonomy', '2015-07-07 02:13:57'),
(29, 'AddWysisygEnableField', 'Taxonomy', '2015-07-07 02:13:57'),
(30, 'FirstMigrationUsers', 'Users', '2015-07-07 02:13:58'),
(31, 'UsersTrackableFields', 'Users', '2015-07-07 02:13:59'),
(32, 'UsersEnlargeTimezone', 'Users', '2015-07-07 02:13:59'),
(33, 'FirstMigrationDashboard', 'Dashboards', '2015-07-07 02:13:59');

-- --------------------------------------------------------

--
-- Structure de la table `cap_settings`
--

CREATE TABLE `cap_settings` (
  `id` int(20) NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `input_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cap_settings`
--

INSERT INTO `cap_settings` (`id`, `key`, `value`, `title`, `description`, `input_type`, `editable`, `weight`, `params`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(6, 'Site.title', 'Ministère de l’Agriculture et de la Pêche maritime', '', '', '', 1, 1, '', '2015-07-07 02:14:01', NULL, '2015-07-12 03:45:20', 1),
(7, 'Site.tagline', 'Ministère de l’Agriculture et de la Pêche maritime, devenir conseiller agricole agrée', '', '', 'textarea', 1, 2, '', '2015-07-07 02:14:01', NULL, '2015-07-12 03:45:20', 1),
(8, 'Site.email', 'contact@capmaroc.com', '', '', '', 1, 3, '', '2015-07-07 02:14:01', NULL, '2015-09-26 19:42:20', 1),
(9, 'Site.status', '1', '', '', 'checkbox', 1, 6, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:34:44', 1),
(12, 'Meeting.invitation_email_body', 'Vous êtes conviés à la réunion de traitement des demandes d'' agéement', 'Message', '', 'textarea', 1, 7, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:38:12', 1),
(13, 'Meeting.invitation_email_subject', 'Réunion de traitement des demandes d''agréement', 'Sujet de l''email d''invitation pour une réunion', '', 'text', 1, 6, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:36:28', 1),
(14, 'Meeting.invitation_email_body_edition', 'La réunion de traitement des demandes d''agréement du {0} à été repalnifié le {1}', 'Message', '', 'textarea', 1, 9, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:38:30', 1),
(15, 'Meeting.invitation_email_subject_edition', 'Changement de la date de réunion', 'Sujet de l''email de changement de la date de réunion', '', '', 1, 8, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:37:12', 1),
(16, 'Service.akismet_key', 'your-key', '', '', '', 1, 11, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(17, 'Service.recaptcha_public_key', 'your-public-key', '', '', '', 1, 12, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(18, 'Service.recaptcha_private_key', 'your-private-key', '', '', '', 1, 13, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(19, 'Service.akismet_url', 'http://your-blog.com', '', '', '', 1, 10, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(22, 'Reading.nodes_per_page', '5', '', '', '', 1, 14, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(24, 'Meeting.cancellation_email_body', 'La réunion de traitement des demandes d''agréement palnifié le {1} a été annulé.', 'Message', '', 'textarea', 1, 16, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:42:20', 1),
(25, 'Meeting.member_dismiss_subject', 'Révocation de la liste des invitées au réunion de traitement des dossiers des agréements ', 'Sujet de l''email de la révocation d''un membre de commission', '', 'text', 1, 17, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:40:43', 1),
(26, 'Site.locale', 'fra', '', '', 'text', 1, 18, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:39:16', 1),
(27, 'Reading.date_time_format', 'D, M d Y H:i:s', '', '', '', 1, 19, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:39:12', 1),
(28, 'Meeting.member_dismiss_body', 'Vous êtes révoqué du réunion de traitement des demandes d'' agréement planifié le {1}. ', 'Message', '', 'textarea', 1, 20, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:42:00', 1),
(29, 'Site.timezone', 'UTC', '', 'Provide a valid timezone identifier as specified in https://php.net/manual/en/timezones.php', '', 1, 4, '', '2015-07-07 02:14:01', NULL, '2015-07-12 03:45:20', 1),
(32, 'Hook.bootstraps', 'Settings,Users,Blocks,RequestManagment,ProfileManagment,AddressesManagement,CompanyManagment,MessageManagment,UserManagment,CalendarManagment,Dashboard', '', '', '', 0, 21, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:38:55', 1),
(33, 'Meeting.cancellation_email_subject', 'Annulation d''une réunion', 'Sujet d''email Annulation d''une réunion', '', 'text', 1, 15, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:39:45', 1),
(34, 'Access Control.multiRole', '0', 'Enable Multiple Roles', '', 'checkbox', 1, 22, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(35, 'Access Control.rowLevel', '0', 'Row Level Access Control', '', 'checkbox', 1, 23, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(36, 'Access Control.autoLoginDuration', '+1 week', '"Remember Me" Duration', 'Eg: +1 day, +1 week. Leave empty to disable.', 'text', 1, 24, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(37, 'Access Control.models', '', 'Models with Row Level Acl', 'Select models to activate Row Level Access Control on', 'multiple', 1, 23, 'multiple=checkbox\noptions={"Nodes.Node": "Node", "Blocks.Block": "Block", "Menus.Menu": "Menu", "Menus.Link": "Link"}', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(38, 'Site.ipWhitelist', '127.0.0.1', 'Whitelisted IP Addresses', 'Separate multiple IP addresses with comma', 'text', 1, 24, '', '2015-07-07 02:14:01', NULL, '2015-07-12 03:45:20', 1),
(39, 'Site.asset_timestamp', 'force', 'Asset timestamp', 'Appends a timestamp which is last modified time of the particular file at the end of asset files URLs (CSS, JavaScript, Image). Useful to prevent visitors to visit the site with an outdated version of these files in their browser cache.', 'radio', 1, 25, 'options={"0": "Disabled", "1": "Enabled in debug mode only", "force": "Always enabled"}', '2015-07-07 02:14:01', NULL, '2015-07-12 03:45:20', 1),
(40, 'Site.admin_theme', '', 'Administration Theme', '', 'text', 1, 26, '', '2015-07-07 02:14:01', NULL, '2015-07-12 03:45:20', 1),
(41, 'Site.home_url', '/admin', 'Home Url', 'Default action for home page in link string format.', 'text', 1, 27, '', '2015-07-07 02:14:01', NULL, '2015-09-17 21:58:05', 1),
(42, 'Croogo.installed', '1', '', '', '', 0, 28, '', '2015-07-07 02:15:17', NULL, '2015-07-07 02:15:17', NULL),
(43, 'Croogo.version', '2.2.2', '', '', '', 0, 29, '', '2015-07-07 02:48:17', 1, '2015-07-07 02:48:17', 1),
(44, 'Site.direction', 'ltr', 'Orientation du site (LTR ou RTL)', '', 'radio', 1, 30, 'options={"rtl": "RTL", "ltr": "LTR"}', '2015-07-07 03:14:49', 1, '2015-07-12 03:45:20', 1),
(45, 'Site.is_responsive', '1', 'Responsive design', '', 'checkbox', 1, 31, '', '2015-07-07 03:51:07', 1, '2015-07-12 03:45:20', 1),
(46, 'Meeting.schuduled_request_body_edition', '<p>Bonjour</p>,\r\n<p>Les dossiers planifier pour la réunion du {1} ont été modifié </p>\r\n<p>ci-dessous les numéros des dossiers à traitées</p>\r\n{2}', 'Message', '', 'textarea', 1, 33, '', '2015-09-27 03:02:29', 1, '2015-09-27 19:43:05', 1),
(47, 'Meeting.schuduled_request_subject_edition', 'Changement des demandes à traiter durant la réunion', 'Sujet de changement des demandes à traiter durant une réunion', '', 'text', 1, 32, '', '2015-09-27 03:06:18', 1, '2015-09-27 19:42:54', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cap_taxonomies`
--

CREATE TABLE `cap_taxonomies` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `term_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cap_users`
--

CREATE TABLE `cap_users` (
  `id` int(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL DEFAULT '1',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `timezone` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cap_users`
--

INSERT INTO `cap_users` (`id`, `role_id`, `service_id`, `first_name`, `last_name`, `username`, `password`, `name`, `email`, `phone`, `website`, `activation_key`, `image`, `bio`, `status`, `gender`, `updated`, `updated_by`, `created`, `timezone`, `created_by`) VALUES
(1, 1, 1, 'ismail', 'kotbi', 'admin', '9555cabec4152c6aac2e82bafed55480d4c3d74a', 'admin', 'k.dalily@gmail.com', NULL, NULL, '8bf15d797415465ef7f67a6f1b13a526', NULL, NULL, 1, '', '2015-07-07 02:15:16', NULL, '2015-07-07 02:15:16', '0', NULL),
(51, 11, 1, 'directeur', 'directeur', 'directeur', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'directeur@gmail.com', NULL, NULL, '', NULL, NULL, 1, '', '2015-09-20 16:36:55', 44, '2015-09-20 16:36:55', '0', 44),
(54, 9, 4, 'touria', 'dahman saidi', 'touria', '9555cabec4152c6aac2e82bafed55480d4c3d74a', 'Dahmane touria', 'dahmansaiditouria@gmail.com', NULL, '', 'e8862f091f2f6e9fc1884d0aaf9f6550', NULL, NULL, 1, NULL, '2015-12-21 17:45:20', 58, '2015-12-21 17:12:48', 'Africa/Casablanca', 1),
(57, 11, 4, 'jawad', 'BAHAJI', 'bahaji', '9555cabec4152c6aac2e82bafed55480d4c3d74a', 'jawad bahaji', 'jbahaji@gmail.com', NULL, '', '03500bd8fa4962c0a2cdbbc54c459497', NULL, NULL, 1, NULL, '2016-01-07 09:37:27', 58, '2015-12-21 17:37:21', 'Africa/Casablanca', 1),
(58, 11, 4, 'Noura ', 'tlamsani nora', 'noura', '9555cabec4152c6aac2e82bafed55480d4c3d74a', 'Kalaï Tlamsani Noura', 'tlamsani.nora@gmail.com', NULL, '', 'e2646b9ee923690ecb64be1b1d2d5e68', NULL, NULL, 1, NULL, '2015-12-21 17:43:43', 58, '2015-12-21 17:38:36', 'Africa/Casablanca', 1),
(59, 10, 1, 'Hafida', 'SABRI', 'sabri', '9555cabec4152c6aac2e82bafed55480d4c3d74a', 'hafida sabri', 'hafidasabri@yahoo.fr', NULL, '', 'c43fac02e74e901c44287293f721edb6', NULL, NULL, 1, NULL, '2015-12-21 17:46:31', 58, '2015-12-21 17:40:16', 'Africa/Casablanca', 1),
(60, 10, 1, 'mustapha', 'sefiani', 'sefiani', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'mustapha.sefiani@gmail.com', NULL, NULL, '', NULL, NULL, 1, NULL, '2015-12-21 17:47:50', 58, '2015-12-21 17:47:33', '0', 58),
(61, 10, 2, 'Fouad', 'El ayyadi', 'elayyadi', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'elayyadi.f@gmail.com', NULL, NULL, '', NULL, NULL, 1, NULL, '2016-02-24 09:44:58', 58, '2015-12-31 15:04:23', '0', 58),
(62, 10, 3, 'Asma', 'Hamzaoui', 'hamzaoui', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'hamzaoui_asma@yahoo.fr', NULL, NULL, '', NULL, NULL, 1, NULL, '2016-02-24 09:44:49', 58, '2015-12-31 15:10:10', '0', 58),
(63, 10, 8, 'Ilham', 'Chakib', 'chakib', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'ilham.chakib@gmail.com', NULL, NULL, '', NULL, NULL, 1, NULL, '2016-04-13 08:57:51', 58, '2015-12-31 15:12:23', '0', 58),
(64, 10, 7, 'Fethallah', 'El Boukhari', 'elBoukhari', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'feth2@yahoo.fr', NULL, NULL, '', NULL, NULL, 1, NULL, '2016-02-24 09:45:09', 58, '2015-12-31 15:18:41', '0', 58),
(65, 10, 9, 'Mohamed', 'Asri', 'asri', '9555cabec4152c6aac2e82bafed55480d4c3d74a', 'mohamed', 'med.asri@gmail.com', NULL, '', '', NULL, NULL, 1, NULL, '2016-01-06 11:28:17', 1, '2015-12-31 15:20:52', '', 58),
(66, 10, 10, 'Nourreddine', 'Chtaïna', 'chtaina', '9555cabec4152c6aac2e82bafed55480d4c3d74a', 'nourddine', 'n.chtaina@iav.ac.ma', NULL, '', '', NULL, NULL, 1, NULL, '2016-01-06 11:28:37', 1, '2015-12-31 15:22:28', '', 58),
(67, 10, 11, 'Abdellah', 'Aboudrare', 'aboudrare', '9555cabec4152c6aac2e82bafed55480d4c3d74a', 'Abdellah', 'aaboudrare@enameknes.ac.ma', NULL, '', '', NULL, NULL, 1, NULL, '2016-01-06 11:29:46', 1, '2015-12-31 15:24:46', '', 58),
(68, 10, 14, 'Khadija', 'Chajai', 'chajai', '9555cabec4152c6aac2e82bafed55480d4c3d74a', 'chajai', 'k.chajai@gmail.com', NULL, '', '', NULL, NULL, 1, NULL, '2016-01-06 11:30:16', 1, '2015-12-31 15:27:09', '', 58),
(69, 10, 12, 'Zineb', 'Idrissi', 'Idrissi', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'zilidrissi@gmail.com', NULL, NULL, '', NULL, NULL, 1, NULL, '2015-12-31 15:32:28', 58, '2015-12-31 15:32:28', '0', 58),
(70, 11, 4, 'Mohammed', 'Lakhal', 'lakhal', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'lakhal56@hotmail.com', NULL, NULL, '', NULL, NULL, 0, NULL, '2016-04-13 08:54:03', 58, '2015-12-31 15:36:27', '0', 58),
(71, 10, 15, 'Chakib', 'Laalej', 'Laalej', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'fnm@fnm.org.ma', NULL, NULL, '', NULL, NULL, 1, NULL, '2016-01-06 10:55:11', 58, '2016-01-06 10:54:10', '0', 58),
(72, 10, 13, 'khalid', 'Saidi', 'saidi', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'saidikalid@gmail.com', NULL, NULL, '', NULL, NULL, 1, NULL, '2016-01-06 10:56:33', 58, '2016-01-06 10:56:33', '0', 58),
(73, 12, 1, 'ministre', 'ministre', 'ministre', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'ministre@gmail.com', NULL, NULL, '', NULL, NULL, 1, NULL, '2016-01-07 14:58:21', 57, '2016-01-07 14:58:21', '0', 57),
(74, 9, 4, 'Mohammed Rachid', 'Abid', 'Rachid', '8fe936013ea2a32c8db0bf22bf1074b9145e900c', '', 'mrachidabid@gmail.com', NULL, NULL, '', NULL, NULL, 1, NULL, '2016-04-13 08:57:28', 58, '2016-04-13 08:57:07', '0', 58);

-- --------------------------------------------------------

--
-- Structure de la table `cpm_companies`
--

CREATE TABLE `cpm_companies` (
  `id` int(11) NOT NULL,
  `number` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `capital` float NOT NULL,
  `patente` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cnss` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` date DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cpm_companies`
--

INSERT INTO `cpm_companies` (`id`, `number`, `capital`, `patente`, `cnss`, `created_date`, `name`, `counselor_id`, `city_id`, `address`, `email`, `website`, `type`, `phone`, `fax`, `logo`, `created`, `updated`) VALUES
(2, '2485', 100000, '85833', '8747802', NULL, 'SODAGRIM', 26, 51, 'sect 18, res narjiss, im d, app5 hay riyad', 'saidi.comader@gmail.com', '', 'sarl', '0537713452', '0537774020', '26_1451989519.jpg', '2016-01-05 10:02:35', '2016-01-05 11:59:42'),
(3, '11749', 100000, '49814089', '4417409', NULL, 'AGMRCO', 91, 2, 'rue 13 n°71AZI86315 Aït Melloul', 'najiya2030@hotmail.fr', '', 'sarl', '06632722154', '0528847274', '91_1452090488.jpg', '2016-01-06 14:05:03', '2016-01-06 14:28:08'),
(4, '78821', 800, '26322410', '7812515', NULL, 'PCM Consulting', 40, 51, '8 rue Nigeria,Imm7 Regraga,10040', 'idrissi.s@pcmconsultingmaroc.com', '', 'sarl', '05 37 80 83 88', '0537811375', '40_1452101785.jpg', '2016-01-06 14:51:13', '2016-01-07 08:26:58'),
(5, '113843', 1000, '26998878', '4644870', NULL, 'CHIKEN KICHEN', 137, 51, 'Lot El Wifaq, Hay Oued Eddahab, rue Kalaa Magouna, n°7, Temara', 'sofia.hammouch@gmail.com', '', 'sarl', '0653910257', '', NULL, '2016-01-20 14:20:57', '2016-01-20 14:20:57'),
(6, '991', 100000, '42115878', '4575760', NULL, 'UPH', 140, 68, 'Avenue Med Rafii Res obn Zaïdoune Im B App 14 El Jadida', 'cabinet.uph@gmail.com', '', 'sarl', '0661433595', '', '140_1453722229.jpg', '2016-01-25 10:45:52', '2016-01-25 11:43:49'),
(7, '332', 10000, '5585', '8199186', NULL, 'AFROKH AGRI', 141, 2, 'Lot Alfath bloc 4 n°55', 'afrokhagri@gmail.com', '', 'sarl', '0528240129', '', '141_1453723936.jpg', '2016-01-25 12:08:23', '2016-01-25 12:12:16'),
(8, '89401', 10000, '25163408', '8989355', NULL, 'LANORIA', 28, 51, 'n°9 rue arfoud hassan rabat', 'mohamedwakrim@gmail.com', '', 'sarl', '0537762029', '', '28_1453738205.jpg', '2016-01-25 14:51:41', '2016-01-25 16:10:05'),
(9, '109161', 100000, '28200089', '4355170', NULL, 'OMETT', 107, 53, 'massira 2, bloc d, n°15 temara', 's.zbitou3@hotmail.fr', '', 'sarl', '0661160282', '', '107_1453812163.jpg', '2016-01-26 11:50:06', '2016-01-26 12:42:43'),
(10, '999', 10000, '42842217', '82432', NULL, 'Expert Ingénieur Conseil', 143, 406, 'App1, im kabil, avenue des FAR, sidi bennour', 'expert.ingenieur.conseil@gmail.com', '', 'sarl', '0661709360', '0524314210', '143_1453818325.jpg', '2016-01-26 14:06:35', '2016-01-26 14:25:25'),
(11, '37793', 300000, '18011551', '4191954', NULL, 'Cliniques des plantes Maroc', 147, 36, 'Agropolis-gi5 gi6 Commune de Mejjate, Meknès', 'rafik.errakhi@elephantvert.ch', '', 'sarl', '0538004900', '0538004920', '147_1453891839.jpg', '2016-01-27 10:27:39', '2016-01-27 10:50:39'),
(12, '311/99', 10000, '41161180', '9171208', NULL, 'Comptoire agricole du Dades', 148, 32, 'CT 528 Sidi Aissa Fquih ben salah', 'agrisena535@gmail.com', '', 'sarl', '0661325109', '0523430194', '148_1453896105.jpg', '2016-01-27 11:24:51', '2016-01-27 12:01:45'),
(13, '23247', 50000, '55046435', '00000', NULL, 'ILSO BUSINESS', 149, 1, 'complexe khalil nakhil im VII n° 31 agadir', 'faqir745@yahoo.fr', '', 'sarl', '0528827730', '0528827730', '149_1453907042.jpg', '2016-01-27 14:46:08', '2016-01-27 15:04:02'),
(14, '274295', 10000, '34291200', '9405516', NULL, 'Success agro', 150, 66, '10 rue liberté 3e étage n°6 casablanca anfa', 'agrosuccess@yahoo.fr', '', 'sarl', '0537368052', '0537325791', '150_1453909816.jpg', '2016-01-27 15:29:52', '2016-01-27 15:50:16'),
(15, '6555', 10000, '41318792', '4250643', NULL, 'STE INTAJ INGÉNIERIE ET CONSEIL', 174, 30, 'n°18 bloc 1 oulad Ayad Oulad Zahra beni mellal', 'nachek3001@hotmail.com', '', 'sarl', '061549492', '', '174_1454344230.jpg', '2016-02-01 16:15:04', '2016-02-01 16:30:30'),
(16, '3045', 10000, '49908637', '96207854', NULL, 'Assistance Ingenierie Développement', 177, 4, 'N° 234 im bouhou, avenue de la liberté , oulad taïma', 'aidelmorabit1@gmail.com', '', 'sarl', '0601452179', '0528527836', '177_1454509205.jpg', '2016-02-03 13:51:15', '2016-02-03 14:20:05'),
(17, '39407', 100000, '20605594', '9529697', NULL, 'TECHNO E.H.R', 200, 54, 'lotissement dajaj mansour kenitra', 'chrifserhan@gmail.com', '', 'sarl', '0667191125', '', '200_1454675208.jpg', '2016-02-05 12:22:17', '2016-02-05 12:26:48'),
(18, '30629', 300000, '52979521', '7411672', NULL, 'VULTADER ', 210, 58, 'Commune de gzenaya CT 20-01 tanger', 'vultader@hotmail.com', '', 'sarl', '0661224848', '0539322876', '210_1455115768.jpg', '2016-02-10 14:44:25', '2016-02-10 14:49:28'),
(19, '34225', 120000, '62295098', '9217820', NULL, 'CAD inov', 211, 36, 'imm36 n°3 inbiat 2 meknès', 'cadiniv.consult@gmail.com', '', 'sarl', '0661902150', '0535551673', '211_1455117118.jpg', '2016-02-10 15:07:21', '2016-02-10 15:11:58');

-- --------------------------------------------------------

--
-- Structure de la table `cpm_companies_counselors`
--

CREATE TABLE `cpm_companies_counselors` (
  `id` int(11) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cpm_companies_documents`
--

CREATE TABLE `cpm_companies_documents` (
  `id` int(11) NOT NULL,
  `filename` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `edocument_id` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cpm_companies_documents`
--

INSERT INTO `cpm_companies_documents` (`id`, `filename`, `company_id`, `edocument_id`, `is_valid`, `created`, `updated`) VALUES
(1, '26_1451989533.jpg', 2, 1, 0, '2016-01-05 10:25:33', '2016-01-05 10:25:33'),
(2, '26_1451989543.jpg', 2, 2, 0, '2016-01-05 10:25:43', '2016-01-05 10:25:43'),
(3, '26_1451989562.jpg', 2, 3, 0, '2016-01-05 10:26:02', '2016-01-05 10:26:02'),
(4, '91_1452090499.jpg', 3, 1, 0, '2016-01-06 14:28:19', '2016-01-06 14:28:19'),
(5, '91_1452090507.jpg', 3, 2, 0, '2016-01-06 14:28:27', '2016-01-06 14:28:27'),
(6, '91_1452090522.jpg', 3, 3, 0, '2016-01-06 14:28:42', '2016-01-06 14:28:42'),
(7, '40_1452101797.jpg', 4, 1, 0, '2016-01-06 17:36:37', '2016-01-06 17:36:37'),
(8, '40_1452101809.jpg', 4, 2, 0, '2016-01-06 17:36:49', '2016-01-06 17:36:49'),
(9, '40_1452101926.jpg', 4, 3, 0, '2016-01-06 17:38:46', '2016-01-06 17:38:46'),
(10, '140_1453722243.jpg', 6, 1, 0, '2016-01-25 11:44:03', '2016-01-25 11:44:03'),
(11, '140_1453722258.jpg', 6, 2, 0, '2016-01-25 11:44:18', '2016-01-25 11:44:18'),
(12, '140_1453722271.jpg', 6, 3, 0, '2016-01-25 11:44:31', '2016-01-25 11:44:31'),
(13, '141_1453723946.jpg', 7, 1, 0, '2016-01-25 12:12:26', '2016-01-25 12:12:26'),
(14, '141_1453723959.jpg', 7, 2, 0, '2016-01-25 12:12:39', '2016-01-25 12:12:39'),
(15, '141_1453723968.jpg', 7, 3, 0, '2016-01-25 12:12:48', '2016-01-25 12:12:48'),
(16, '28_1453738214.jpg', 8, 1, 0, '2016-01-25 16:10:14', '2016-01-25 16:10:14'),
(17, '28_1453738224.jpg', 8, 2, 0, '2016-01-25 16:10:24', '2016-01-25 16:10:24'),
(18, '28_1453738234.jpg', 8, 3, 0, '2016-01-25 16:10:34', '2016-01-25 16:10:34'),
(19, '107_1453812174.jpg', 9, 1, 0, '2016-01-26 12:42:54', '2016-01-26 12:42:54'),
(20, '107_1453812190.jpg', 9, 3, 0, '2016-01-26 12:43:10', '2016-01-26 12:43:10'),
(21, '107_1453812203.jpg', 9, 2, 0, '2016-01-26 12:43:23', '2016-01-26 12:43:23'),
(22, '143_1453818333.jpg', 10, 1, 0, '2016-01-26 14:25:33', '2016-01-26 14:25:33'),
(23, '143_1453818342.jpg', 10, 2, 0, '2016-01-26 14:25:42', '2016-01-26 14:25:42'),
(24, '143_1453818352.jpg', 10, 3, 0, '2016-01-26 14:25:52', '2016-01-26 14:25:52'),
(25, '147_1453891866.jpg', 11, 1, 0, '2016-01-27 10:51:06', '2016-01-27 10:51:06'),
(26, '147_1453892089.jpg', 11, 2, 0, '2016-01-27 10:54:50', '2016-01-27 10:54:50'),
(27, '147_1453892111.jpg', 11, 3, 0, '2016-01-27 10:55:11', '2016-01-27 10:55:11'),
(28, '148_1453895883.jpg', 12, 1, 0, '2016-01-27 11:58:03', '2016-01-27 11:58:03'),
(29, '148_1453895909.jpg', 12, 2, 0, '2016-01-27 11:58:29', '2016-01-27 11:58:29'),
(30, '148_1453895953.jpg', 12, 3, 0, '2016-01-27 11:59:13', '2016-01-27 11:59:13'),
(31, '149_1453907052.jpg', 13, 1, 0, '2016-01-27 15:04:12', '2016-01-27 15:04:12'),
(32, '149_1453907059.jpg', 13, 2, 0, '2016-01-27 15:04:19', '2016-01-27 15:04:19'),
(33, '149_1453907068.jpg', 13, 3, 0, '2016-01-27 15:04:28', '2016-01-27 15:04:28'),
(34, '150_1453909825.jpg', 14, 1, 0, '2016-01-27 15:50:25', '2016-01-27 15:50:25'),
(35, '150_1453909834.jpg', 14, 2, 0, '2016-01-27 15:50:34', '2016-01-27 15:50:34'),
(36, '150_1453909843.jpg', 14, 3, 0, '2016-01-27 15:50:43', '2016-01-27 15:50:43'),
(37, '174_1454344258.jpg', 15, 1, 0, '2016-02-01 16:30:58', '2016-02-01 16:30:58'),
(38, '174_1454344298.jpg', 15, 2, 0, '2016-02-01 16:31:38', '2016-02-01 16:31:38'),
(39, '174_1454344318.jpg', 15, 3, 0, '2016-02-01 16:31:58', '2016-02-01 16:31:58'),
(40, '177_1454509229.jpg', 16, 1, 0, '2016-02-03 14:20:29', '2016-02-03 14:20:29'),
(41, '177_1454509313.jpg', 16, 2, 0, '2016-02-03 14:21:53', '2016-02-03 14:21:53'),
(42, '177_1454509349.jpg', 16, 3, 0, '2016-02-03 14:22:29', '2016-02-03 14:22:29'),
(43, '200_1454675234.jpg', 17, 1, 0, '2016-02-05 12:27:14', '2016-02-05 12:27:14'),
(44, '200_1454675250.jpg', 17, 2, 0, '2016-02-05 12:27:30', '2016-02-05 12:27:30'),
(45, '200_1454675267.jpg', 17, 3, 0, '2016-02-05 12:27:47', '2016-02-05 12:27:47'),
(46, '210_1455115792.jpg', 18, 1, 0, '2016-02-10 14:49:52', '2016-02-10 14:49:52'),
(47, '210_1455115842.jpg', 18, 2, 0, '2016-02-10 14:50:42', '2016-02-10 14:50:42'),
(48, '210_1455115858.jpg', 18, 3, 0, '2016-02-10 14:50:58', '2016-02-10 14:50:58'),
(49, '211_1455117136.jpg', 19, 1, 0, '2016-02-10 15:12:16', '2016-02-10 15:12:16'),
(50, '211_1455117154.jpg', 19, 2, 0, '2016-02-10 15:12:34', '2016-02-10 15:12:34'),
(51, '211_1455117170.jpg', 19, 3, 0, '2016-02-10 15:12:50', '2016-02-10 15:12:50');

-- --------------------------------------------------------

--
-- Structure de la table `cpm_edocuments`
--

CREATE TABLE `cpm_edocuments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accepted_types` varchar(44) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cpm_edocuments`
--

INSERT INTO `cpm_edocuments` (`id`, `name`, `icon`, `title`, `accepted_types`, `created`, `updated`) VALUES
(1, 'Délégation de pouvoir', 'ti-wand', 'Attachez svp le document de délégation de pouvoir', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00'),
(2, 'Inscription CNSS', 'ti-pencil-alt', 'Attachez svp le document de l''nscription à la CNSS', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00'),
(3, 'Registre de commerce', 'ti-agenda', 'Attachez svp le document de registre de commerce', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `cpm_employees`
--

CREATE TABLE `cpm_employees` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `cin` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cpm_employees`
--

INSERT INTO `cpm_employees` (`id`, `first_name`, `last_name`, `company_id`, `cin`, `cv_file`, `created`, `updated`) VALUES
(4, 'Fatima Ezzahrae', 'El Akhal', 4, 'AB646135', '40_1452102144.pdf', '2016-01-06 17:42:24', '2016-01-07 08:27:10');

-- --------------------------------------------------------

--
-- Structure de la table `cpm_schema_migrations`
--

CREATE TABLE `cpm_schema_migrations` (
  `id` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cpm_schema_migrations`
--

INSERT INTO `cpm_schema_migrations` (`id`, `class`, `type`, `created`) VALUES
(1, 'InitMigrations', 'Migrations', '2015-07-25 20:10:16'),
(2, 'ConvertVersionToClassNames', 'Migrations', '2015-07-25 20:10:16'),
(3, 'IncreaseClassNameLength', 'Migrations', '2015-07-25 20:10:17');

-- --------------------------------------------------------

--
-- Structure de la table `msm_messages`
--

CREATE TABLE `msm_messages` (
  `id` int(11) NOT NULL,
  `email_from` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email_to` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `mailbox` enum('inbox','sent') COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `msm_messages`
--

INSERT INTO `msm_messages` (`id`, `email_from`, `email_to`, `title`, `body`, `status`, `mailbox`, `deleted`, `updated`, `created`) VALUES
(1, 'test@gmail.com', 'contact@gmail.com', 'demande d’éclaircissement ', 'test ', 0, 'inbox', 0, '2016-01-07 12:49:28', '2016-01-07 12:49:28'),
(2, 'test@gmail.com', 'contact@gmail.com', 'demande d’éclaircissement ', 'test ', 1, 'sent', 0, '2016-01-07 12:49:28', '2016-01-07 12:49:28'),
(3, 'dahmansaiditouria@gmail.com', 'test@gmail.com', 'cin manquante', 'cin manquante', 1, 'inbox', 0, '2016-01-07 14:12:21', '2016-01-07 14:11:38'),
(4, 'dahmansaiditouria@gmail.com', 'test@gmail.com', 'cin manquante', 'cin manquante', 1, 'sent', 0, '2016-01-07 14:11:38', '2016-01-07 14:11:38'),
(5, 'tlamsani.nora@gmail.com', 'zilidrissi@gmail.com', 'Réunion de la Commission Nationale de Conseil du 07-01-2016 02:47:16', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 07-01-2016 02:47:16 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>95/2016</li></ul>', 0, 'inbox', 0, '2016-01-07 14:43:50', '2016-01-07 14:43:50'),
(6, 'tlamsani.nora@gmail.com', 'zilidrissi@gmail.com', 'Réunion de la Commission Nationale de Conseil du 07-01-2016 02:47:16', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 07-01-2016 02:47:16 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>95/2016</li></ul>', 1, 'sent', 0, '2016-01-07 14:43:50', '2016-01-07 14:43:50'),
(7, 'tlamsani.nora@gmail.com', 'n.chtaina@iav.ac.ma', 'Réunion de la Commission Nationale de Conseil du 07-01-2016 02:47:16', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 07-01-2016 02:47:16 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>95/2016</li></ul>', 0, 'inbox', 0, '2016-01-07 14:44:04', '2016-01-07 14:44:04'),
(8, 'tlamsani.nora@gmail.com', 'n.chtaina@iav.ac.ma', 'Réunion de la Commission Nationale de Conseil du 07-01-2016 02:47:16', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 07-01-2016 02:47:16 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>95/2016</li></ul>', 1, 'sent', 0, '2016-01-07 14:44:04', '2016-01-07 14:44:04'),
(9, 'jbahaji@gmail.com', 'saidikalid@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(10, 'jbahaji@gmail.com', 'saidikalid@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(11, 'jbahaji@gmail.com', 'fnm@fnm.org.ma', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:36:36', '2016-02-24 12:36:36'),
(12, 'jbahaji@gmail.com', 'fnm@fnm.org.ma', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:36:36', '2016-02-24 12:36:36'),
(13, 'jbahaji@gmail.com', 'zilidrissi@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:36:40', '2016-02-24 12:36:40'),
(14, 'jbahaji@gmail.com', 'zilidrissi@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:36:40', '2016-02-24 12:36:40'),
(15, 'jbahaji@gmail.com', 'k.chajai@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:36:45', '2016-02-24 12:36:45'),
(16, 'jbahaji@gmail.com', 'k.chajai@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:36:45', '2016-02-24 12:36:45'),
(17, 'jbahaji@gmail.com', 'aaboudrare@enameknes.ac.ma', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:36:50', '2016-02-24 12:36:50'),
(18, 'jbahaji@gmail.com', 'aaboudrare@enameknes.ac.ma', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:36:50', '2016-02-24 12:36:50'),
(21, 'jbahaji@gmail.com', 'saidikalid@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:37:10', '2016-02-24 12:37:10'),
(22, 'jbahaji@gmail.com', 'saidikalid@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:37:10', '2016-02-24 12:37:10'),
(23, 'jbahaji@gmail.com', 'fnm@fnm.org.ma', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:37:13', '2016-02-24 12:37:13'),
(24, 'jbahaji@gmail.com', 'fnm@fnm.org.ma', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:37:13', '2016-02-24 12:37:13'),
(25, 'jbahaji@gmail.com', 'zilidrissi@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:37:16', '2016-02-24 12:37:16'),
(26, 'jbahaji@gmail.com', 'zilidrissi@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:37:16', '2016-02-24 12:37:16'),
(27, 'jbahaji@gmail.com', 'k.chajai@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:37:20', '2016-02-24 12:37:20'),
(28, 'jbahaji@gmail.com', 'k.chajai@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:37:20', '2016-02-24 12:37:20'),
(29, 'jbahaji@gmail.com', 'aaboudrare@enameknes.ac.ma', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:37:23', '2016-02-24 12:37:23'),
(30, 'jbahaji@gmail.com', 'aaboudrare@enameknes.ac.ma', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:37:23', '2016-02-24 12:37:23'),
(31, 'jbahaji@gmail.com', 'n.chtaina@iav.ac.ma', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:37:27', '2016-02-24 12:37:27'),
(32, 'jbahaji@gmail.com', 'n.chtaina@iav.ac.ma', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:37:27', '2016-02-24 12:37:27'),
(33, 'jbahaji@gmail.com', 'med.asri@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'inbox', 0, '2016-02-24 12:50:11', '2016-02-24 12:37:30'),
(34, 'jbahaji@gmail.com', 'med.asri@gmail.com', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:37:30', '2016-02-24 12:37:30'),
(35, 'jbahaji@gmail.com', 'feth2@yahoo.fr', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 0, 'inbox', 0, '2016-02-24 12:37:33', '2016-02-24 12:37:33'),
(36, 'jbahaji@gmail.com', 'feth2@yahoo.fr', 'Réunion de la Commission Nationale de Conseil du 24-02-2016 12:40:42', 'J’ai l’honneur de vous demander de bien vouloir participer à la réunion de la Commission Nationale de Conseil Agricole qui aura lieu le 24-02-2016 12:40:42 Cette réunion portera sur l''examen des dossiers ci-dessous : <ul><li>36/2016</li><li>37/2016</li><li>38/2016</li><li>39/2016</li><li>40/2016</li><li>41/2016</li><li>42/2016</li><li>43/2016</li><li>44/2016</li><li>45/2016</li><li>46/2016</li><li>47/2016</li><li>48/2016</li><li>49/2016</li><li>50/2016</li><li>51/2016</li><li>52/2016</li><li>53/2016</li><li>54/2016</li><li>55/2016</li><li>56/2016</li><li>57/2016</li><li>58/2016</li><li>59/2016</li><li>60/2016</li><li>61/2016</li><li>62/2016</li><li>63/2016</li><li>64/2016</li><li>65/2016</li><li>66/2016</li><li>67/2016</li><li>68/2016</li><li>69/2016</li><li>70/2016</li><li>71/2016</li><li>72/2016</li><li>73/2016</li><li>74/2016</li><li>75/2016</li><li>76/2016</li><li>77/2016</li><li>78/2016</li><li>79/2016</li><li>80/2016</li><li>81/2016</li><li>82/2016</li></ul>', 1, 'sent', 0, '2016-02-24 12:37:33', '2016-02-24 12:37:33'),
(37, 'tlamsani.nora@gmail.com', 'mrachidabid@gmail.com', 'test', 'test', 0, 'inbox', 0, '2016-04-13 09:20:28', '2016-04-13 09:20:28'),
(38, 'tlamsani.nora@gmail.com', 'mrachidabid@gmail.com', 'test', 'test', 1, 'sent', 0, '2016-04-13 09:20:28', '2016-04-13 09:20:28'),
(39, 'dahmansaiditouria@gmail.com', 'tlamsani.nora@gmail.com', 'test', 'test', 1, 'inbox', 0, '2016-04-13 09:28:14', '2016-04-13 09:27:49'),
(40, 'dahmansaiditouria@gmail.com', 'tlamsani.nora@gmail.com', 'test', 'test', 1, 'sent', 0, '2016-04-13 09:27:49', '2016-04-13 09:27:49'),
(41, 'tlamsani.nora@gmail.com', 'dahmansaiditouria@gmail.com', 'Re : test', 'jblkhj', 1, 'inbox', 0, '2016-04-13 09:28:53', '2016-04-13 09:28:22'),
(42, 'tlamsani.nora@gmail.com', 'dahmansaiditouria@gmail.com', 'Re : test', 'jblkhj', 1, 'sent', 0, '2016-04-13 09:28:22', '2016-04-13 09:28:22');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_community_activities`
--

CREATE TABLE `pfm_community_activities` (
  `id` int(11) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `association` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_community_activities`
--

INSERT INTO `pfm_community_activities` (`id`, `counselor_id`, `name`, `association`, `description`, `start_date`, `end_date`, `created`, `updated`) VALUES
(2, 17, 'membre', 'association internationale de la sériciculture', '', '1991-12-01', '2012-12-20', '2016-01-05 11:24:27', '2016-01-05 11:24:27');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_counselors`
--

CREATE TABLE `pfm_counselors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `birth_city_id` int(11) DEFAULT NULL,
  `cin` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'male',
  `family_status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_counselors`
--

INSERT INTO `pfm_counselors` (`id`, `user_id`, `first_name`, `last_name`, `address`, `city_id`, `birth_city_id`, `cin`, `birthday`, `gender`, `family_status`, `office_phone`, `mobile_phone`, `email`, `fax`, `image`, `created`, `updated`) VALUES
(3, 44, '', '', NULL, 0, NULL, '', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-21 15:53:04', '2015-12-22 09:06:09'),
(4, 45, 'Naima', 'Taghzout', 'Rue Abderrahim Bouabid, Résidence Boustane, I', 263, 162, 'D362640', '1966-06-28', 'female', '2', '0537623301', '0661105572', 'tatag2020@gmail.com', '', '4_1450797875.PNG', '2015-12-22 09:41:43', '2015-12-22 16:11:10'),
(5, 46, 'Driss', 'Smaili', 'smaildriss@yahoo.fr', 51, 51, 'A376291', '1982-06-26', 'male', '1', '0641674238', '0641674238', 'smailidriss@yahoo.fr', '', '5_1451304469.jpg', '2015-12-28 11:06:16', '2016-01-05 10:01:42'),
(6, 48, 'Naziha', 'merroual', 'Hay Houria janoubia, Rue 27 N°9 El ayoune ouest Sidi Mellouk', 44, 44, 'FC38951', '1985-10-18', 'female', '1', '0668334879', '0668334879', 'merroual@hotmail.fr', '', '6_1451487658.jpg', '2015-12-30 11:51:44', '2016-01-05 10:12:18'),
(7, 49, 'Abderrahmane', 'Hajir', 'Bloc B N° 242Ouled Oujih Kenitra', 54, 31, 'D84975', '1955-01-01', 'male', '2', '0537350228', '0645342646', 'hajirabderrahman@yahoo.fr', '', '7_1451494966.jpg', '2015-12-30 16:51:31', '2016-01-05 10:19:36'),
(8, 50, 'El Mostafa', 'Aissaoui', '9 bis Avenue Abou nouas oujda', 44, 44, 'F44921', '1955-01-01', 'male', '2', '', '0671632306', 'aissaoui_002@hotmail.fr', '', '8_1451898962.jpg', '2015-12-30 17:34:58', '2016-01-05 10:35:46'),
(9, 52, 'Nisrine ', 'Ibouchna', 'Im244, App7, Hay Al Fath Rabat', 51, 51, 'D647925', '1985-11-22', 'female', '2', '', '0667669907', 'IBOUCHNA.Nisrine@gmail.com', '', '9_1451555208.jpg', '2015-12-31 09:30:02', '2016-01-05 10:38:04'),
(10, 53, 'Moumane', 'Cherki', 'hay hanae, rue mesklil, n°18 Khouribga', 34, 31, 'Q8268', '1957-05-20', 'male', '2', '0523490307', '0666516605', 'ch.moumane@hotmail.com', '', '10_1451556073.jpg', '2015-12-31 09:49:40', '2016-01-05 10:42:59'),
(11, 54, 'Mohamed', 'Laamrani', 'N°3, Avenue Hassan II, hay CT temara', 53, 7, 'D51499', '1954-01-01', 'male', '2', '0537642056', '0657832223', 'laamrani.mohamed.1@gmail.com', '', '11_1451557189.jpg', '2015-12-31 10:03:28', '2016-01-05 10:54:27'),
(12, 55, 'Kacem', 'Rami', 'lot sounboula, n°38, rue orz, kharij bab chaafa salé', 52, 57, 'G1418', '1956-08-08', 'male', '2', '0537843752', '0672216990', 'kacem-rami@hotmail.fr', '', '12_1451558297.jpg', '2015-12-31 10:22:28', '2016-01-05 11:00:06'),
(13, 56, 'Abdelhamid', 'Mzibra', 'n°127 boulevard Ouezzane, mechraa belksiri, ', 56, 56, 'G73153', '1960-01-15', 'male', '2', '0537376375', '0607170224', 'mzibraabdelhamid@yahoo.fr', '', '13_1451559145.jpg', '2015-12-31 10:40:46', '2016-01-06 12:01:05'),
(14, 57, 'Abderrahmane', 'Rabbazi', 'rue libya, hay qods, berrechid', 72, 68, 'M425532', '1983-12-11', 'male', '2', '0661887100', '0667462150', 'rabbazi83@gmail.com', '', '14_1451559845.jpg', '2015-12-31 10:54:14', '2016-01-05 11:09:48'),
(15, 58, 'El Hassane', 'Elallaoui', 'lotissement anssar, imm khadija, App 8, route de kenitra salé', 52, 56, 'G43778', '1956-05-21', 'male', '2', '0537886174', '0662114664', 'elhassan41@gmail.com', '', '15_1451924889.jpg', '2015-12-31 11:05:49', '2016-01-05 09:50:12'),
(16, 59, 'Mohamed', 'Ghilani', 'BP 25 chefchaouen 91000', 64, 62, 'L48413', '1953-06-21', 'male', '2', '0539882736', '0667385571', 'mohamed_ghilani@yahoo.fr', '', '16_1451563042.jpg', '2015-12-31 11:47:42', '2016-01-06 11:11:14'),
(17, 60, 'Larbi', 'Manssouri', '31 rue mauritanie, quartier administratif fquih ben salah', 32, 7, 'D46782', '1951-01-01', 'male', '2', '', '0672871209', 'mansouriarbibt@hotmail.com', '0523439509', '17_1451563975.jpg', '2015-12-31 12:00:19', '2016-01-05 11:24:26'),
(18, 61, 'Abderrahim', 'Zegoumou', '16 resd nisrine, angle houmane el foetouaki et saad zaghloul, ville haute de kénitra', 54, 34, 'Q238283', '1983-11-25', 'male', '2', '0537368052', '0661328524', 'zagamo1@hotmail.com', '', '18_1451564468.jpg', '2015-12-31 12:15:12', '2016-01-05 11:28:43'),
(19, 62, 'Noureddine', 'Hanim', 'im 505,res hamichi, n°18, avenue mohamed5, kenitra', 54, 37, 'M205423', '1969-03-26', 'male', '2', '0537373326', '0661840648', 'noureddinehanim@gmail.com', '', '19_1451565275.jpg', '2015-12-31 12:27:10', '2016-01-05 09:44:15'),
(20, 63, 'Sellam', 'El Asassi', 'hay hikma, rue mohamed harchaoui n°2 oujda', 44, 56, 'A78803', '1954-01-01', 'male', '2', '0536504867', '0661365787', 'elassassi2004@yahoo.fr', '0536533725', '20_1451570097.jpg', '2015-12-31 13:45:50', '2016-01-05 11:34:40'),
(21, 64, 'ElHossaine', 'ElMoutaqi', 'derb menjra, rue 70 Im 8 , n°6 casablanca', 66, 405, 'W206430', '1977-03-13', 'male', '1', '0612085673', '0672167550', 'el.elmoutaqi@gmail.com', '0522890261', '21_1451570960.jpg', '2015-12-31 14:01:59', '2016-01-05 12:01:26'),
(22, 65, 'Saad', 'Bouhouch', 'n°10, rue senhaja, n°10 tanger', 58, 51, 'A205964', '1961-10-26', 'male', '2', '0539324971', '0660480139', 'saadbouhouch@gmail.com', '', '22_1451573214.jpg', '2015-12-31 14:26:24', '2016-01-06 11:07:30'),
(23, 66, 'Abdelhamid', 'Bachiri', '64 bir rami est al manzeh 2 kenitra', 54, 44, 'F248013', '1965-12-26', 'male', '2', '0537376451', '0641489315', 'bachiri9@yahoo.fr', '', '23_1451576485.jpg', '2015-12-31 14:49:37', '2016-01-05 12:18:12'),
(24, 51, 'Mohammed', 'Bouazzaoui', 'n°1 rue allouf, residence Al irchad secteur 13 hay riyad rabat', 51, 7, 'A47543', '1953-01-01', 'male', '2', '0537713295', '0661155673', 'bouazzaoui.agriconseil@gmail.com', '', '24_1451923437.jpg', '2015-12-31 15:52:35', '2016-01-04 16:03:57'),
(25, 68, 'Abdelhadi', 'Tahir', 'Avenue Saadiine, Res Jnane Andalous, im E, App 7 Fès', 36, 66, 'BJ288510', '1981-02-14', 'male', '2', '0535501522', '0661709657', 'tahirabel@yahoo.fr', '', '25_1451900017.jpg', '2016-01-04 09:26:17', '2016-01-05 12:12:26'),
(26, 73, 'Mohamed ', 'Saidi', 'sect18, res narjisse, im d, app5, hay riyad', 51, 45, 'S12840', '1952-01-01', 'male', '2', '', '0661427794', 'saidi.comader@gmail.com', '', '26_1451990252.jpg', '2016-01-05 10:02:35', '2016-01-05 11:59:46'),
(27, 82, 'Fouad', 'chigre', 'lot el fathe n°181 sidi bennour', 68, 68, 'MC 129837', '1982-08-06', 'male', '1', '', '0638680227', 'chigrefouad@hotmail.com', '', '27_1451992525.jpg', '2016-01-05 10:31:54', '2016-01-05 11:15:25'),
(28, 79, 'Mohammed', 'Wakrim', 'n°9,rue Arfoud,Hassan,Rabat', 51, 31, 'E30859', '1951-01-01', 'male', '2', '0537762920', '0663718715', 'mohamedwakrim@gmail.com', '', '28_1451991377.jpg', '2016-01-05 10:35:04', '2016-01-25 14:51:51'),
(29, 83, 'Mostafa', 'makmoul', 'hay jawadi bloc19n 18 casablanca', 66, 66, 'BH563727', '1983-01-01', 'male', '2', '', '0661209917', 'mcmol1983@hotmail.com', '', '29_1451991579.jpg', '2016-01-05 10:42:28', '2016-01-05 10:59:39'),
(30, 78, 'Mohamed', 'BAYH', 'n°3rue sidi hrazem hay albaraka alkarya salé', 52, 51, 'AB201797', '1975-08-25', 'male', '1', '0537835701', '0537835701', 'm.bayh@gmail.com', '', NULL, '2016-01-05 11:00:54', '2016-01-07 10:36:34'),
(31, 72, 'Khalid', 'Slaoui', '2 av ossama ibn zaid labita dakarat fes 30000', 35, 35, 'C35358', '1960-04-01', 'male', '2', '0535941247', '0664449703', 'slaouikhalid@hotmail.com', '', '31_1451993040.jpg', '2016-01-05 11:04:49', '2016-01-05 11:24:00'),
(32, 84, 'Abderrahman', 'boukallouch', 'Res Al hanaa , im k, app 5, guich des oudayas temara', 51, 43, 'Z90756', '1966-03-07', 'male', '2', '0537560628', '0661150071', 'abdboukallouch@gmail.com', '', '32_1451992921.jpg', '2016-01-05 11:17:31', '2016-01-05 11:22:01'),
(33, 77, 'Abdelkader', 'chikhi', 'Résidence Alqods,imm6 app2 rue Martyr SghiriHoumani Kénitra', 54, 7, 'D485223', '1954-03-10', 'male', '2', '0660964771', '0662286281', 'chikhiabdelkader@gmail.com', '', '33_1451994091.jpg', '2016-01-05 11:20:11', '2016-01-05 11:41:31'),
(34, 85, 'Abdeljalil', 'Alkama', 'lot abdallaouia, N°63, Assif marrakech', 22, 22, 'D108077', '1954-07-02', 'male', '2', '', '0661340874', 'alkama.abdeljalil@gmail.com', '', '34_1451993384.jpg', '2016-01-05 11:23:51', '2016-01-05 11:29:44'),
(35, 81, 'hassan', 'bechaou', 'lotissement 24 h secteur 2 n° 63 j temara', 53, 44, 'F70713', '1958-03-01', 'male', '2', '0567600623', '0667676754', 'hbyoung13@gmail.com', '', '35_1451994234.jpg', '2016-01-05 11:28:41', '2016-01-05 11:43:54'),
(36, 86, 'Mohamed', 'Lahraoui', 'avenue moukawama, coop miftah, n°6 , BP 397 Sidi Slimane', 57, 56, 'G16972', '1953-01-01', 'male', '2', '0537505894', '0661637245', 'mohamed_lahraoui@hotmail.com', '', '36_1451993904.jpg', '2016-01-05 11:31:15', '2016-01-05 11:38:24'),
(37, 87, 'Ahmed', 'Dahani', 'oulad zaid gharbia, boumaiz, sidislimane', 57, 57, 'GA26010', '1970-09-10', 'male', '2', '', '0662731914', 'ahmeddahani2000@gmail.com', '', '37_1451994454.jpg', '2016-01-05 11:41:46', '2016-01-05 11:47:34'),
(38, 88, 'Mohammed', 'El bekkaoui', '14 bloc 28 hay salam, sidislimane', 57, 47, 'F100014', '1957-01-01', 'male', '1', '0537502481', '0662146655', 'elbekkaouimohamed14@gmail.com', '', '38_1451994882.jpg', '2016-01-05 11:49:22', '2016-01-05 12:30:29'),
(39, 76, 'Ahmed', 'Chaemsi', 'BP5554,hay anahda1 Rabat', 51, 30, 'I45745', '1950-12-31', 'male', '2', '0661784297', '0661784297', 'chemsiahmed@gmail.com', '', '39_1451995867.jpg', '2016-01-05 11:50:02', '2016-01-05 12:11:07'),
(40, 93, 'Sadiq', 'Idrissi', '8 rue nigeria imb 7 regraga 10040 rabat ', 51, 7, 'UA26046', '1972-10-05', 'male', '2', '0537808388', '0661228805', 'idrissi.s@pcmconsultingmaroc.com', '0535811375', '40_1452101712.jpg', '2016-01-05 11:53:29', '2016-01-07 08:27:06'),
(41, 90, 'Abdeslam', 'Aissa', 'Centre de travaux agricole sidi allal bahraoui tiflet', 55, 51, 'A131346', '1954-05-12', 'male', '2', '', '0661535001', 'Apissa19999@gmail.com', '', '41_1451996088.jpg', '2016-01-05 12:06:06', '2016-01-05 12:17:28'),
(42, 75, 'Fatima', 'Zine El Abidine', 'Imm1298,app3lotissement alwifak1 Temara', 53, 51, 'A124827', '1957-01-01', 'female', '1', '0661970928', '0661970928', 'fatimazine@yahoo.com', '', '42_1451996842.jpg', '2016-01-05 12:16:20', '2016-01-05 12:27:22'),
(43, 106, 'Omar', 'Razini', 'N°86lot boutlamine errachidia', 7, 30, 'X51024', '1958-01-01', 'male', '2', '0537571346', '0665719025', 'Omarrazini58@gmail.com', '', '43_1451997292.jpg', '2016-01-05 12:22:59', '2016-01-05 12:34:52'),
(44, 103, 'Mohamed', 'El ouahrani', 'route de larache prés de station ziz B P159 ksar el kebir ', 62, 62, 'LB 3230', '1965-10-10', 'male', '2', '0539918010', '06616061070', 'wahrani-agro@live.fr', '', '44_1451998602.jpg', '2016-01-05 12:28:09', '2016-01-05 12:56:42'),
(45, 94, 'Mohammed', 'Ben Didi', 'res rabat, immmabella, n°2 avenue hassan II rabat', 51, 36, 'D50853', '1956-09-04', 'male', '2', '0537299802', '0661533920', 'bendidimohammed56@gmail.com', '', '45_1452075532.jpg', '2016-01-05 12:31:45', '2016-01-06 10:18:52'),
(46, 74, 'Abdellatif', 'EL ANTAKI', 'hay eljadid n°4 route de larache Ksar Elkabir', 58, 11, 'A143130', '1954-01-01', 'male', '2', '0661665141', '0661665141', 'ab.elantaki@gmail.com', '', '46_1451999817.jpg', '2016-01-05 12:35:59', '2016-01-07 10:01:22'),
(47, 105, 'Ahmed', 'Byoud', 'hay mohammadia, 4 blocd, n°165 sidislimane', 57, 65, 'G251747', '1967-06-30', 'male', '2', '', '0662089055', 'a.byoud@gmail.com', '', '47_1451998004.jpg', '2016-01-05 12:36:09', '2016-01-05 12:46:44'),
(48, 104, 'Moha', 'Chehraoui', 'rue 74 hay mssala, n°15 fqih ben salah', 32, 30, 'I3626', '1952-09-22', 'male', '2', '0523439805', '0670941579', 'chehraoui.moha@gmail.com', '', '48_1451998425.jpg', '2016-01-05 12:48:23', '2016-01-05 12:53:45'),
(49, 91, 'Mbarek', 'Azzouzi', 'lot rachidia 12 rue 10 n°5 guercif 35100', 49, 49, 'F153623', '1955-01-01', 'male', '2', '', '0668346541', 'azz.mbr@gmail.com', '', '49_1451999031.jpg', '2016-01-05 12:55:48', '2016-01-05 13:03:51'),
(50, 102, 'Naser', 'Bekraouyi', 'massira1 imb B2  appt31 cym rabat', 51, 51, 'A 694106', '2009-11-11', 'male', '1', '', '0634080558', 'bekraoui.nasr@gmail.com', '', '50_1452005903.jpg', '2016-01-05 12:59:33', '2016-01-06 10:58:47'),
(51, 107, 'youness', 'bouyamine', 'n°1 im487, riad ismailia meknès', 36, 9, 'G411105', '1983-03-08', 'male', '1', '0535462774', '0661169665', 'youness.bouyamine@gmail.com', '', '51_1451999521.jpg', '2016-01-05 13:05:35', '2016-01-05 13:12:01'),
(52, 108, 'ahmed', 'el hams', '6 rue Abdellah benyassine, taza', 43, 43, 'Z65641', '1963-08-01', 'male', '2', '', '0661604842', 'ahmedelhams@gmail.com', '', '52_1451999978.jpg', '2016-01-05 13:13:57', '2016-01-05 13:19:38'),
(53, 109, 'abdennabi', 'el hbaz', 'mestrkhouch, im salam n°27 tanger', 58, 58, 'G88641', '1957-01-01', 'male', '2', '0539948698', '0662869696', 'elhbaz@hotmail.fr', '', '53_1452000996.jpg', '2016-01-05 13:31:57', '2016-01-05 13:36:36'),
(54, 92, 'Abdelhaq', 'Haytoumi', '274 rue liberté etag4 n°12 casablanca', 66, 34, 'B480282', '1959-08-10', 'male', '2', '0522228011', '0672126174', 'a.haitoumi@gmail.com', '', '54_1452001961.jpg', '2016-01-05 13:39:20', '2016-01-05 13:52:41'),
(55, 100, 'Brahim', 'Ouaddouch', '66 zanket talat farabi1 tilila agadir', 1, 33, 'V5810', '1956-01-01', 'male', '2', '', '0663626774', 'brahim_805@hotmail.com', '', '55_1452002942.jpg', '2016-01-05 13:50:26', '2016-01-05 14:09:02'),
(56, 99, 'Abdel Aziz', 'Dersi', 'N°55 lotissement barkach kénitra', 54, 65, 'D126141', '1961-01-28', 'male', '2', '0661297450', '0661297450', 'dersiaz@hotmail.fr', '', '56_1452003077.jpg', '2016-01-05 13:56:55', '2016-01-05 14:11:17'),
(57, 110, 'Larbi', 'El Addouni', 'hay wifaq n°10 taza', 43, 43, 'Z186554', '1971-12-10', 'male', '2', '', '0661208398', 'eladdouni@foiegras.ma', '', '57_1452003677.jpg', '2016-01-05 14:11:11', '2016-01-05 14:21:17'),
(58, 96, 'Touria', 'Nettah', 'appt 3 residence imame malik oujeh arouss meknes', 36, 36, 'D755898', '1980-11-02', 'male', '1', '', '0666231206', 'touria.nettah@gmail.com', '', '58_1452003760.jpg', '2016-01-05 14:11:22', '2016-01-05 14:22:40'),
(59, 98, 'Lhoussein', 'Bouaddi', '20 rue Mansour Dahbi app1Kénitra', 54, 25, 'G8044', '1949-01-01', 'male', '2', '0537377283', '0668426321', 'bouaddi1@gmail.com', '', '59_1452004604.jpg', '2016-01-05 14:17:57', '2016-01-05 14:36:44'),
(60, 47, '', '', NULL, 0, NULL, '', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-05 14:28:12', '2016-01-05 14:28:12'),
(61, 111, 'Rachid', 'El Baghli', '60, avenue Mohamed V, N°1 el jadida', 68, 68, 'M375655', '1982-11-15', 'male', '2', '', '0656265248', 'infoscomai@gmail.com', '', '61_1452005774.jpg', '2016-01-05 14:32:54', '2016-01-05 14:56:14'),
(62, 97, 'Bousselham', 'Bendaif', 'n°39 hay albasma ouled oujihe Kénitra', 54, 54, 'G117989', '1963-01-01', 'male', '2', '0661641135', '0661641135', 'bendaifb@gmail.com', '', '62_1452005840.jpg', '2016-01-05 14:44:38', '2016-01-05 14:57:20'),
(63, 112, 'Mohamed', 'Sillou', 'sakina n°20route de casablanca Marrakech', 22, 22, 'E35519', '1957-06-12', 'male', '2', '0524313401', '0663484445', 'silloudema@yahoo.fr', '', '63_1452006318.jpg', '2016-01-05 14:57:52', '2016-01-05 15:05:18'),
(64, 95, 'Mohammed', 'Oumlal', 'route de larache, hay ljadid, kser lakbir bp 445', 58, 38, 'L41823', '1951-01-01', 'male', '2', '0539902145', '0678318914', 'oumlal@yahoo.fr', '', '64_1452007060.jpg', '2016-01-05 15:10:53', '2016-01-05 15:17:40'),
(65, 69, 'Smahi', 'Abdelmajid', 'hay jdid boudnib errachidia', 7, 7, 'U40182', '1960-01-01', 'male', '2', '', '0661204172', 'smahi.196005@gmail.com', '', '65_1456395391.jpg', '2016-01-05 15:12:54', '2016-02-25 10:16:31'),
(66, 113, 'Boubker', 'Benitto', 'rue kadissia lot 503 majd tanger', 58, 32, 'D158998', '1960-01-01', 'male', '2', '', '0664656440', 'bentito.boubker@hotmail.com', '', '66_1452007581.jpg', '2016-01-05 15:21:57', '2016-01-05 15:26:21'),
(67, 132, 'said', 'Abaroudi', 'bloc Bextension n° 99 ouled oujih kénitra', 54, 38, 'G 36962', '1949-01-01', 'male', '2', '053735575', '0661222958', 'abaroudi49@gmail.com', '', '67_1452011127.jpg', '2016-01-05 15:24:49', '2016-01-05 16:25:27'),
(68, 114, 'Taib', 'Doubli', 'bloc 13 n°43 hay salam sidislimane 14200', 57, 44, 'F70615', '1951-01-01', 'male', '2', '', '0661637266', 'taibdoubli@gmail.com', '', '68_1452009213.jpg', '2016-01-05 15:42:52', '2016-01-05 15:53:33'),
(69, 115, 'Boujema', 'Bourass', 'N°46, hay chifa, 35020, Taza', 43, 43, 'D46307', '1956-01-01', 'male', '2', '', '0663233131', 'bourass56@yahoo.fr', '', '69_1452009921.jpg', '2016-01-05 15:56:12', '2016-01-05 16:05:21'),
(70, 117, 'Abdelkabir', 'Ammar', 'lot yousra et zarka, im h50, app8, route kenitra, salé', 52, 55, 'A503251', '1954-01-01', 'male', '2', '0537879270', '0666984791', 'abdelkabir.ammar@gmail.com', '', '70_1452010508.jpg', '2016-01-05 16:10:15', '2016-01-05 16:15:08'),
(71, 119, 'Abdelhay', 'Hjiej', '30 jnane chdid sidi boujida fès', 35, 35, 'C906238', '1983-05-04', 'male', '1', '', '0619490388', 'a.hjiej@yahoo.fr', '', '71_1452010940.jpg', '2016-01-05 16:18:39', '2016-01-05 16:22:20'),
(72, 133, 'Ali', 'Bekkouchi', 'Av benzart 46 rce. les jardins fès sais2.', 35, 4, 'D26690', '1949-01-01', 'male', '2', '0535610008', '0661179210', 'alibekou@hotmail.fr', '', '72_1452011450.jpg', '2016-01-05 16:27:04', '2016-01-05 16:30:50'),
(73, 134, 'Ahmed', 'Bouafia', 'n°9, coopérative al khair, kenitra', 54, 30, 'I461', '1951-02-27', 'male', '2', '0537353016', '0661477688', 'ahmed.bouafia@hotmail.fr', '', '73_1452012103.jpg', '2016-01-05 16:32:29', '2016-01-05 16:41:43'),
(74, 135, 'Mohamed', 'Jazouli', '227, bir rami est kenitra', 54, 408, 'G82802', '1950-01-01', 'male', '2', '0537314125', '0662279804', 'jz.api@hotmail.fr', '', '74_1452012504.jpg', '2016-01-05 16:44:00', '2016-01-06 10:53:26'),
(75, 71, 'Boujemaa', 'SIRAT', 'ait amira, bp63 chtouka ait baha agadir', 1, 66, 'B603174', '1954-04-23', 'male', '2', '', '0633587783', 'sirat.ab23@gmail.com', '', '75_1452012806.jpg', '2016-01-05 16:49:59', '2016-01-05 16:53:26'),
(76, 70, 'Harbali', 'Said', 'lot6 assalam1 tranche a, rue 23 1er étage bernoussi', 66, 28, 'H214746', '1969-01-01', 'male', '2', '0651661279', '0654995707', 'harbalisaid@gmail.com', '', '76_1452067031.jpg', '2016-01-06 07:52:10', '2016-01-06 10:51:59'),
(77, 120, 'Driss', 'Jafi', '86demna rue de fès, taounate', 42, 57, 'GA12873', '1966-01-19', 'male', '2', '', '0672278681', 'Driss.jaficon@gmail.com', '', '77_1452067430.jpg', '2016-01-06 07:59:41', '2016-01-06 08:03:50'),
(78, 121, 'Mohammed Hakim', 'Aouad', 'Saniat Zouaouni n°44 sidi idder 11000, salé', 52, 52, 'AB709722', '1985-10-03', 'male', '1', '0537783035', '0616781292', 'aouad.11550@gmail.com', '', '78_1452068038.jpg', '2016-01-06 08:07:51', '2016-01-06 08:13:58'),
(79, 122, 'Azelarab', 'Rechachi', 'n°19, rue 2 jnane mekouar, sidi boujida fès 30000', 35, 42, 'C467140', '1974-06-21', 'male', '2', '', '0661512793', 'azelarab.volaille@gmail.com', '', '79_1452068412.jpg', '2016-01-06 08:15:44', '2016-01-06 08:20:12'),
(80, 123, 'Rachid', 'Sellak', 'centre aït oufella commune itzer, province midelt', 11, 11, 'VA89880', '1986-04-18', 'male', '2', '0661928219', '0667368092', 'rachidselak@gmail.com', '', '80_1452068762.jpg', '2016-01-06 08:21:52', '2016-01-06 08:26:02'),
(81, 124, 'Bouchaib', 'Moujoud', 'BP 2 Aïn Aïcha', 42, 28, 'HA33316', '1970-01-01', 'male', '2', '', '0667741956', 'mbhferme@yahoo.fr', '', '81_1452069176.jpg', '2016-01-06 08:27:48', '2016-01-06 08:32:56'),
(82, 125, 'Ali', 'Lamzouri', 'hay zaytoune, lot benmimoune, rue boughaz, g4, n°35 oujda', 44, 44, 'F54143', '1954-01-01', 'male', '2', '0536501731', '0662434097', 'ali.lamzouri@hotmail.com', '', '82_1452069630.jpg', '2016-01-06 08:34:31', '2016-02-24 10:49:54'),
(83, 126, 'Mohamed', 'Sigue', '7, avenue al majd, imm7, app4, massira3, cym 10000 rabat', 51, 10, 'I153052', '1957-06-12', 'male', '2', '', '0663566681', 'mohamed.sigue@gmail.com', '', '83_1452070101.jpg', '2016-01-06 08:42:50', '2016-01-06 08:48:21'),
(84, 127, 'Hassan', 'Akil', '61 derb chaouni ouezzane', 65, 60, 'GM24236', '1970-10-31', 'male', '1', '', '0699300960', 'hassan.akil@gmail.com', '', '84_1452070622.jpg', '2016-01-06 08:50:46', '2016-01-06 10:45:11'),
(85, 128, 'ismail', 'Bouhamidi', 'lotissement filaha et œuvres sociales , n°93 rachidia', 7, 11, 'U141722', '1983-08-14', 'male', '1', '0535571537', '0663645070', 'bouhamidiismail@gmail.com', '0535752537', '85_1452070987.jpg', '2016-01-06 08:58:21', '2016-01-06 09:03:07'),
(86, 129, 'Rachid', 'Touti', '10 rue youssoufia hay amal route de sefrou, Fès', 35, 35, 'C421176', '1969-07-09', 'male', '2', '0535966482', '0660127018', 'toutirachid@yahoo.fr', '', '86_1452073314.jpg', '2016-01-06 09:36:37', '2016-01-06 09:41:54'),
(87, 131, 'Mohammed', 'Aissi', '15, rue jbel toubkal, n°8 agdal rabat', 51, 44, 'F21116', '1954-12-20', 'male', '2', '0661077909', '0661077909', 'aissimed@hotmail.com', '', '87_1452073926.jpg', '2016-01-06 09:46:41', '2016-01-06 09:52:06'),
(88, 130, 'assadik', 'daoudi', 'douar lakhrib, commune sidi redouane, ouazzane', 65, 65, 'AM85554', '1981-12-31', 'male', '2', '', '0600525225', 'essadik.daoudi@gmail.com', '', '88_1452074580.jpg', '2016-01-06 09:54:39', '2016-01-06 10:03:00'),
(89, 101, 'Abdesselam', 'Bensamah', '131 hay saidia b.m.o. meknes', 36, 36, 'D409461', '1971-12-16', 'male', '2', '', '0662582969', 'abdessalamsamah15@gmail.com', '', '89_1452075167.jpg', '2016-01-06 10:08:03', '2016-01-06 10:12:47'),
(90, 143, 'bouazza', 'elrhzaoui', 'douar oulad bamlmekki, gharbi, n°548 temara', 53, 53, 'AD157366', '1988-05-22', 'male', '3', '', '0610984201', 'elrhzaoui.bouazza@gmail.com', '', '90_1452080564.jpg', '2016-01-06 11:35:14', '2016-01-06 11:42:44'),
(91, 141, 'najat', 'ait abousaoub', 'rue 13n°71 Aït Melloul', 2, 22, 'E15516', '1953-01-01', 'male', '3', '', '0663722154', 'najiya2030@hotmail.fr', '', '91_1452090433.jpg', '2016-01-06 14:05:03', '2016-01-06 14:27:13'),
(92, 144, 'Ahmed', 'El moudni', 'ct oulja salé, bouknadel, salé', 52, 52, 'A538529', '1955-01-01', 'male', '2', '0537822104', '0661400342', 'bouk2210@hotmail.com', '', '92_1452093566.jpg', '2016-01-06 15:10:28', '2016-01-06 15:19:26'),
(93, 145, 'Naima', 'Taghzout', 'rue abderrahim bouabid, res boustane, imm A,I app 3 haroura temara', 51, 38, 'D362640', '1966-06-28', 'male', '2', '0537623301', '0661105572', 'natag2020@gmail.com', '', '93_1452100166.PNG', '2016-01-06 15:37:33', '2016-01-06 17:09:26'),
(94, 146, 'ABDELLAH', 'KHALDOUNE', 'n°53 lotissement salima, bir rami kénitra', 54, 68, 'AB17590', '1961-01-01', 'male', '2', '0537371552', '0661246705', 'khaldouneabdellah3@gmail.com', '', '94_1452100795.jpg', '2016-01-06 17:15:39', '2016-01-06 17:19:55'),
(95, 147, 'test', 'test', 'adresse test', 2, 3, 'A101010', '1965-02-03', 'male', '2', '', '0661616161', 'test@gmail.com', '', '95_1452173037.jpg', '2016-01-07 11:46:33', '2016-02-02 10:46:16'),
(96, 116, 'El hassan', 'El addouni', 'mebrouka, n°46, bir rami, kenitra', 54, 43, 'Z136612', '1963-06-01', 'male', '2', '', '0668295241', 'eladdouni_hassane@hotmail.com', '', '96_1452774153.jpg', '2016-01-14 12:16:39', '2016-01-14 12:22:33'),
(97, 150, 'mohamed', 'sennani', '13 avenue de la victoire sidislimane', 57, 57, 'G46547', '1953-06-02', 'male', '2', '', '0666318915', 'sennamed.53@gmail.com', '', '97_1452775115.jpg', '2016-01-14 12:25:41', '2016-01-14 12:38:35'),
(98, 162, 'Rachid', 'Bentaybi', '24 avenueanoual derb', 405, 405, 'WB632885', '1977-12-29', 'male', '2', '', '0666691388', 'rachidbentaybi@gmail.com', '', '98_1452776849.jpg', '2016-01-14 12:51:55', '2016-01-14 13:11:06'),
(99, 152, 'Abdelkader', 'Elmoene', 'oulad ayad oulad attou beni mellal', 30, 16, 'V245143', '1987-06-28', 'male', '1', '0655164150', '0674604180', 'abdelkabir.svt@gmail.com', '', '99_1452777916.jpg', '2016-01-14 13:14:18', '2016-01-14 13:25:16'),
(100, 154, 'Fouad', 'Elkhammar', 'avenue salam hay kelaa, taounate', 42, 44, 'F355827', '1974-10-12', 'male', '2', '', '0667555475', 'fouad.elkhammar74@gmail.com', '', '100_1452779358.jpg', '2016-01-14 13:43:04', '2016-01-14 13:49:18'),
(101, 155, 'rachid', 'bouhout', '10 rue tétouan v.n meknès', 36, 409, 'D479253', '1970-07-20', 'male', '2', '0671464340', '0644115289', 'rachidb220@gmail.com', '', '101_1452779841.jpg', '2016-01-14 13:50:45', '2016-01-14 13:57:21'),
(102, 156, 'mohamed', 'zizi', 'hay oued dahab lotissement belhssen n°20 temara', 53, 35, 'C52466', '1955-09-16', 'male', '2', '0537747788', '0663396690', 'zizmed.dra@gmail.com', '', '102_1452780463.jpg', '2016-01-14 14:04:00', '2016-01-14 14:07:43'),
(103, 160, 'brahim', 'Elhadji', 'douarkharej massa chtouka Aït baha', 3, 3, 'JB192148', '1978-09-08', 'male', '2', '', '0644444282', 'brahim1208@hotmail.com', '', '103_1452781317.jpg', '2016-01-14 14:09:27', '2016-01-14 14:21:57'),
(104, 159, 'Abdelaziz', 'Taoutaou', '32 quartier essadaka larache', 62, 36, 'D404778', '1967-12-25', 'male', '2', '', '0644129773', 'aataoutaou@gmail.com', '', '104_1452849390.jpg', '2016-01-15 09:10:58', '2016-01-15 09:16:30'),
(105, 161, 'Rida', 'Reguiai', 'lotissement asmae n°21 route aïn chquaf fès', 35, 35, 'C941301', '1982-07-01', 'male', '2', '', '0645343343', 'reg.reda@gmail.com', '', '105_1452849698.jpg', '2016-01-15 09:17:43', '2016-01-15 09:21:38'),
(106, 153, 'rachide', 'marouan', 'douar izkrriten commune sfa chtouka ait baha', 3, 3, 'JB442372', '1989-04-11', 'male', '1', '', '0675565862', 'marouan-456@hotmail.com', '', '106_1452853504.jpg', '2016-01-15 10:08:09', '2016-01-15 10:25:04'),
(107, 163, 'Seghir', 'Zbitou', 'im daifllah, n°12, zenkat kaki, hay riad rabat', 51, 42, 'A75111', '1953-12-31', 'male', '2', '', '0661160282', 's.zbitou3@hotmail.fr', '', '107_1453812124.jpg', '2016-01-18 12:24:20', '2016-01-26 12:42:04'),
(108, 164, 'Farah', 'El MRabet', '70, rue okba ibn nafia, bin jradi taza', 43, 43, 'Z465439', '1991-12-05', 'male', '2', '0535671255', '0676368170', 'elmrabet.farah@gmail.com', '', '108_1453121593.jpg', '2016-01-18 12:25:28', '2016-01-18 12:53:13'),
(109, 168, 'Abdelouahab', 'Lakhal', 'quartier industriel boulmane centre boulmane', 41, 41, 'CB10597', '1965-12-25', 'male', '2', '', '0661913716', 'lakhalabdelouahab@gmail.com', '', '109_1453123334.jpg', '2016-01-18 13:05:18', '2016-01-18 13:22:14'),
(110, 184, 'smail', 'dahkoun', '38 hay massirakhadra rue oulmès chmaïa youssoufia', 29, 68, 'G39650', '1953-01-01', 'male', '2', '', '0673854019', 'smail.dahkoun@gmail.com', '', '110_1453124165.jpg', '2016-01-18 13:31:26', '2016-01-18 13:36:05'),
(111, 185, 'Hassan ', 'Amahmoud', 'exploitation dafea assakera hssaïn salé jadida', 52, 22, 'E183753', '1961-05-09', 'male', '2', '', '0673739981', 'amahmoud.hassan@gmail.com', '', '111_1453125412.jpg', '2016-01-18 13:53:08', '2016-01-18 13:56:52'),
(112, 170, 'Moulay Lhassane', 'Sossey Alaoui ', 'Quartier des cadres ORMVATafilalet', 7, 7, 'A142582', '1954-07-15', 'male', '2', '', '0662156531', 'hassansosseyAlaoui@gmail.com', '', '112_1453126383.jpg', '2016-01-18 14:06:08', '2016-01-18 14:13:03'),
(113, 171, 'Hassar', 'Hassan', '151 lotissement chifae mrchich marrakech', 22, 22, 'E10587', '1955-01-01', 'male', '2', '0524313261', '0662295333', 'hassarhassan@gmail.com', '', '113_1453128031.jpg', '2016-01-18 14:37:01', '2016-01-18 14:40:31'),
(114, 172, 'Rachid', 'Elkourti', '426 hay nahda 1 groupe elahd rabat', 51, 51, 'A595431', '1971-08-20', 'male', '2', '0537722629', '0660248362', 'elKourtirachid@gmail.com', '', '114_1453128794.jpg', '2016-01-18 14:48:06', '2016-01-18 14:53:14'),
(115, 173, 'Ahmed', 'El Faraouy ', 'centre zoumi ouezzane BP 14', 65, 65, 'LC19700', '1968-03-15', 'male', '2', '', '066199358', 'hibafaraouy@gmail.com', '', '115_1453129677.jpg', '2016-01-18 15:02:46', '2016-01-18 15:07:57'),
(116, 174, 'Abdelmalek', 'Moras', '73 rue abi ali youssi larache', 62, 62, 'L63247', '1958-01-23', 'male', '2', '', '0693178472', 'agrimoras@hotmail.com', '', '116_1453130392.jpg', '2016-01-18 15:15:56', '2016-01-18 15:19:52'),
(117, 175, 'Achou', 'El mostafa', 'quartier administratif rue quayraouane n°1 fquih ben salah', 32, 40, 'U81444', '1968-05-10', 'male', '2', '', '0664693277', 'achoumustafa68@gmail.com', '', '117_1453130962.jpg', '2016-01-18 15:24:48', '2016-01-18 15:29:22'),
(118, 176, 'Omar', 'El harradji', '26 lotissement mabrouka fquih ben salah', 32, 72, 'W67373', '1962-08-23', 'male', '2', '0523439907', '0661722391', 'omarelharradji@gmail.com', '', '118_1453131799.jpg', '2016-01-18 15:35:28', '2016-02-25 10:06:22'),
(119, 177, 'Omar', 'Benjrinija', 'Avenue asmae bent abi bakr centre bradya fquih ben salah', 32, 22, 'E224024', '1962-01-01', 'male', '2', '0523479989', '0600618423', 'benjrinijabrahim@gmail.com', '', '119_1453132430.jpg', '2016-01-18 15:49:28', '2016-01-18 15:53:50'),
(120, 186, 'Abdelkader', 'Dakikil', 'lot C n°72 hay menzeh', 51, 410, 'G210860', '1962-01-01', 'male', '2', '0662168860', '0662168860', 'dakikil.abdelkader@gmail.com', '', '120_1453133514.jpg', '2016-01-18 16:03:43', '2016-01-18 16:11:54'),
(121, 178, 'Mbarek', 'Abyaa', 'hay rajaeII souk sebt beni mellal', 30, 11, 'U71094', '1963-01-01', 'male', '2', '', '0661488251', 'tech_mbarek@hotmail.fr', '', '121_1453134174.jpg', '2016-01-18 16:18:27', '2016-01-18 16:22:54'),
(122, 180, 'Jaoud', 'Berkellil', 'n°10 im 80 kasbat lamine casablanca', 66, 28, 'H250608', '1974-08-12', 'male', '2', '0661896652', '0664763610', 'jaoud.berkellil@gmail.com', '', '122_1453203614.jpg', '2016-01-19 11:34:47', '2016-01-19 11:40:14'),
(123, 183, 'Allal', 'Lamdel', 'Avenue Collège Omar bnou khatab  Villa ASLPP  BP 486 Sidi Slimane', 57, 54, 'I41633', '1947-01-01', 'male', '2', '0537503212', '0664935670', 'allal.lamdel@gmail.com', '', '123_1453204259.jpg', '2016-01-19 11:42:17', '2016-01-19 11:50:59'),
(124, 151, 'Abderrahman', 'hamidi', 'BP 849 Taroudant', 4, 11, 'VA19156', '1965-11-28', 'male', '2', '', '0661434267', 'ab.hamidi@hotmail.fr', '', '124_1453205611.jpg', '2016-01-19 12:09:39', '2016-01-19 12:13:31'),
(125, 187, 'Younes', 'Mourchid', 'centre khmiss kdana settat', 405, 405, 'W371512', '1993-11-14', 'male', '1', '', '0676064219', 'younessm@live.fr', '', '125_1453207893.jpg', '2016-01-19 12:48:39', '2016-01-19 12:51:33'),
(126, 188, 'Karim ', 'Abenboutaieb', 'lot razzouki im 10 app 03 temara', 53, 51, 'A720987', '1974-03-12', 'male', '2', '0537659041', '066326209', 'abenboutaieb@gmail.com', '', '126_1453209364.jpg', '2016-01-19 13:12:27', '2016-01-19 13:16:04'),
(127, 189, 'Lahcen', 'Ljouad', 'n°20 lotissement saada fathlkheir temara', 53, 55, 'A84574', '1955-01-01', 'male', '2', '0537640929', '0667545406', 'ljouad.lahcen@gmail.com', '', '127_1453211330.jpg', '2016-01-19 13:33:56', '2016-01-19 13:48:50'),
(128, 190, 'Ali', 'Kandil', 'n°7 charii lalla mleriem mechraa belkssiri', 411, 411, 'GN100762', '1977-07-09', 'male', '1', '', '0671961557', 'arbres.et.fruits@gmail.com', '', '128_1453213372.jpg', '2016-01-19 14:05:55', '2016-01-19 14:22:52'),
(129, 191, 'Hicham', 'Merzoug', 'douar lhal I heddara guercif', 49, 49, 'ZG57993', '1980-02-14', 'male', '1', '', '0670368543', 'merzoughicham@gmail.com', '', '129_1453214282.jpg', '2016-01-19 14:31:56', '2016-01-19 14:38:02'),
(130, 192, 'Abdelkader', ' Aït Rahhou', 'BP 196 Khenifra', 33, 11, 'V2375', '1951-01-01', 'male', '2', '', '0670851226', 'aitrahhou@live.fr', '', '130_1453214922.jpg', '2016-01-19 14:45:55', '2016-01-19 14:48:42'),
(131, 193, 'Hassan', 'Belkhadri', 'rue 7 n°7 Ait si Ali fquih ben salah', 32, 55, 'X57239', '1964-01-01', 'male', '2', '', '0602030320', 'hassan.belkhadri@gmail.com', '', '131_1453215743.jpg', '2016-01-19 14:57:34', '2016-01-19 15:02:23'),
(132, 194, 'Mohssin', 'Nejjar', 'Av Chorfa Zkt 7 Res Mariem et 01 n01 Tetouan', 60, 60, 'L331637', '1979-04-27', 'male', '2', '0539995882', '0661055255', 'nejjarmohssin@gmail.com', '', '132_1453218315.jpg', '2016-01-19 15:37:32', '2016-01-19 15:45:15'),
(133, 196, 'Noureddine', 'Mahrach', 'rue 453 n°53 hay zellaka berkane', 47, 47, 'FA98760', '1979-04-05', 'male', '2', '', '0615513719', 'nouredtechnique@gmail.com', '0536613054', '133_1453219894.jpg', '2016-01-19 16:07:41', '2016-01-19 16:11:34'),
(134, 197, 'Khalid', 'El moussaoui', '86 avenue bekaï lhbil Berkane', 47, 45, 'FA122198', '1987-01-27', 'male', '2', '', '0661301621', 'rochi11_@hotmail.com', '0536613054', '134_1453220713.jpg', '2016-01-19 16:19:47', '2016-01-19 16:25:13'),
(135, 198, 'Abderrahim ', 'El Ouadih', 'chentmar2, n°103, rue ibnou sakir , Maarif, casablanca', 66, 71, 'B75414', '1955-01-01', 'male', '2', '0522948953', '0667523372', 'abdelouadih@hotmai.com', '', '135_1453281799.jpg', '2016-01-20 09:18:13', '2016-01-20 09:23:19'),
(136, 199, 'Mohammed ', 'Touzani', '46, lotissement wifaq, sidi saïd, Meknès', 36, 42, 'F100005', '1955-01-01', 'male', '2', '', '0664273335', 'touzanimed55@gmail.com', '', '136_1453282586.jpg', '2016-01-20 09:32:41', '2016-01-20 09:36:26'),
(137, 202, 'Sofia', 'Hammouch', 'Hay Nahda 1 , n°217 rabat', 51, 51, 'AD174120', '1990-07-17', 'male', '1', '', '0601578015', 'sofia.hammouch@gmail.com', '', NULL, '2016-01-20 14:20:56', '2016-01-20 14:28:32'),
(138, 203, 'Abderrahmane', 'El Qyami', 'n° 35, rue mariniyine ha mokhtalit talbourjt, Agadir', 1, 1, 'G90778', '1949-01-01', 'male', '2', '0528845916', '0673994174', 'qyamyami@gmail.com', '', '138_1453301239.jpg', '2016-01-20 14:36:37', '2016-01-20 14:47:19'),
(139, 167, 'Faîçal', 'Merzouk', '26 rue boughaz hay farah1 Fès', 35, 43, 'BK132817', '1976-06-11', 'male', '2', '', '0615291478', 'faicalmerzouk@gmail.com', '', '139_1453462285.jpg', '2016-01-22 11:28:20', '2016-01-22 11:31:25'),
(140, 142, 'Mostafa', 'Laadnani', '11 lotissement almassab Azemmour', 68, 66, 'B36310', '1954-11-27', 'male', '2', '', '0661433595', 'laadnanim2002@yahoo.fr', '', '140_1453722186.jpg', '2016-01-25 10:45:52', '2016-01-25 11:43:06'),
(141, 136, 'Mehdi', 'Afrokh', 'N°V129 hay elwifaq Agadir', 1, 51, 'JB346470', '1985-04-03', 'male', '2', '', '0661389561', 'afrokh-agri@hotmail.com', '', '141_1453723900.jpg', '2016-01-25 12:08:23', '2016-01-25 12:11:40'),
(142, 118, 'Mohammed', 'El Ammari', 'houari BP 2071 kser lekbir', 408, 50, 'U69371', '1962-01-01', 'male', '2', '', '0666164239', 'graba822@gmail.com', '', '142_1453813010.jpg', '2016-01-26 12:52:23', '2016-01-26 12:56:50'),
(143, 209, 'Fakhreddine', 'El Kardi', 'bloc E, cité sucrière n°5 sidi bennour', 406, 66, 'H219931', '1972-08-30', 'male', '2', '0524314210', '0661709360', 'fakhreddine78@gmail.com', '', '143_1453818287.jpg', '2016-01-26 14:06:35', '2016-01-26 14:24:47'),
(144, 204, 'Abdelhamid', 'Mesbah', '13 rue kods lot laayoune, quartier administratif, chefchaouen', 64, 64, 'I21147', '1956-10-19', 'male', '2', '0539986995', '0661194567', 'hamidmesbah@gmail.com', '', '144_1453819292.jpg', '2016-01-26 14:34:56', '2016-01-26 14:41:32'),
(145, 205, 'Habiba', 'El outmni', 'route la gare de train n°54 Ksar Kebir', 408, 408, 'LB55109', '1977-01-01', 'male', '3', '', '0670154987', 'habibariham@gmail.com', '', '145_1453820013.jpg', '2016-01-26 14:47:56', '2016-01-26 14:53:33'),
(146, 206, 'Karim', 'Fennani', 'Merchouch centre romani', 412, 412, 'X317299', '1988-05-18', 'male', '1', '', '0659515277', 'karim.fennani@gmail.com', '', '146_1453820798.jpg', '2016-01-26 15:00:39', '2016-01-26 15:06:38'),
(147, 138, 'rafik', 'errakhi', 'App 1,E2, Hay riad zitoune Meknès', 36, 25, 'EA57925', '1979-07-17', 'male', '2', '', '0614312391', 'contactmaroc@elephantvert.ch', '', '147_1453891357.jpg', '2016-01-27 10:27:39', '2016-01-27 10:42:37'),
(148, 139, 'Moulay Mhamed', 'EL MOSLI', 'Bloc 2 N° 492 hay hassania Souk sebt oulad nemma fquih Ben Salah', 32, 8, 'PA5836', '1964-01-01', 'male', '2', '', '0661325109', 'agrisena535@gmail.com', '', '148_1453895492.jpg', '2016-01-27 11:24:51', '2016-01-27 11:51:32'),
(149, 137, 'Mohamed', 'Faqir', 'N° 28 rue de paris secteur résidentiel, agadir', 1, 54, 'J2811', '1952-06-30', 'male', '2', '', '0661283706', 'faqir745@yahoo.fr', '0528827730', '149_1453907009.jpg', '2016-01-27 14:46:07', '2016-01-27 15:03:29'),
(150, 213, 'Najiba', 'El Kabili', '16 résidence nisrine angle houmane el foutouaki et saad zaghloul ville haute de kénitra', 54, 35, 'C937742', '1983-11-08', 'male', '2', '0537368052', '0670520989', 'agrosuccess@yahoo.fr', '0537368052', '150_1453909673.jpg', '2016-01-27 15:29:52', '2016-01-27 15:47:53'),
(151, 207, 'Imad', 'Hicham', 'Had ghoualem Romani', 412, 55, 'X370010', '1994-01-30', 'male', '1', '', '0676984501', 'hicham_imad@yahoo.fr', '', '151_1453912030.jpg', '2016-01-27 16:18:08', '2016-01-27 16:27:10'),
(152, 208, 'Lamia', 'Faouzi', 'mhamid n°9 askjour marrakech', 22, 22, 'EE287183', '1987-11-15', 'male', '2', '', '0651177334', 'lamiafaouzi@gmail.com', '', '152_1453912858.jpg', '2016-01-27 16:37:17', '2016-01-27 16:40:58'),
(153, 210, 'Saïd', 'Azerboua', 'unité 4n°577 daoudiate marrakech', 22, 22, 'E508759', '1975-04-30', 'male', '2', '0524302277', '0648384803', 'saidyahya2011@gmail.com', '', '153_1453983987.jpg', '2016-01-28 12:20:51', '2016-01-28 12:26:27'),
(154, 211, 'Samir', 'Azerboua', 'Unité 4 n°577 daoudiate marrakech', 22, 22, 'EE152290', '1984-04-20', 'male', '2', '0524302277', '0661785689', 'said-75@hotmail.com', '', '154_1453984626.jpg', '2016-01-28 12:32:16', '2016-01-28 12:37:06'),
(155, 212, 'Khalid', 'Ourich', 'Bou', 22, 22, 'E513801', '1972-05-18', 'male', '2', '0524386151', '0661922128', 'khalid.o.fida2@gmail.com', '', '155_1453986754.jpg', '2016-01-28 12:42:29', '2016-01-28 13:12:34'),
(156, 214, 'Brahim', 'Jarir', 'hay takaddoum n°1 aguelmous, khenifra', 33, 33, 'V281466', '1988-01-01', 'male', '1', '0629907001', '0626562292', 'jarirbrahim-1998@hotmail.com', '', '156_1453993435.jpg', '2016-01-28 13:14:30', '2016-01-28 15:03:55'),
(157, 215, 'Mohammed', 'Beladel', '197, rue jamae al karaouine hay el ghazali temara', 53, 54, 'G46465', '1958-11-09', 'male', '2', '0537740374', '0661309725', 'belaadelm@gmail.com', '', '157_1453995448.jpg', '2016-01-28 15:31:31', '2016-01-28 15:37:28'),
(158, 216, 'Ahmed', 'Benmoussa', 'lotissement jalil tazi, n°35 secteur 4 sidi slimane', 57, 55, 'G116530', '1963-01-01', 'male', '2', '', '0651287250', 'benmoussahmed@gmail.com', '', '158_1453996046.jpg', '2016-01-28 15:44:17', '2016-01-28 15:47:26'),
(159, 217, 'Lahcen', 'El Aamadi', '40 lotissement tanmia hay ghzali temara', 53, 8, 'E32388', '1956-10-23', 'male', '2', '0537612393', '0661068167', 'lahcenelaamadi@gmail.com', '', '159_1453996950.jpg', '2016-01-28 15:57:59', '2016-01-28 16:02:30'),
(160, 218, 'Saïd ', 'El Ayoubi', 'kser aït saïd aaala amlakou goulmima errachidia', 7, 7, 'UA57222', '1978-08-20', 'male', '2', '', '0666431333', 'saidelayoubi@gmail.com', '', '160_1453997835.jpg', '2016-01-28 16:13:10', '2016-01-28 16:17:15'),
(161, 219, 'Mohamed', 'Azzimani', '9 rue wiam hay amal berkane', 47, 44, 'F268145', '1960-09-07', 'male', '2', '0668578411', '0668578411', 'mohamed.azzimani@hotmail.com', '', '161_1453998719.jpg', '2016-01-28 16:28:24', '2016-01-28 16:31:59'),
(162, 220, 'Adil', 'Taatmant', 'lot bentama n°11 larache', 62, 62, 'LA82889', '1985-05-03', 'male', '2', '0539520265', '0661107643', 'adil.taatmant@gmail.com', '', '162_1453999604.jpg', '2016-01-28 16:42:55', '2016-01-28 16:46:44'),
(163, 221, 'Mhamed', 'Boulahcen', 'n°1, rue 7 avenue hassan II, dar jdida oulad hamdan beni mellal', 30, 10, 'UA26192', '1974-01-01', 'male', '2', '', '0661777289', 'boulahcenmed@gmail.com', '', '163_1454063613.jpg', '2016-01-29 10:29:44', '2016-01-29 10:33:33'),
(164, 222, 'Hassan ', 'Aït Barrehil', '20 coop ouafae kenitra', 54, 30, 'I49280', '1956-01-01', 'male', '2', '', '0661326699', 'hassanrahilou@gmail.com', '', '164_1454064419.jpg', '2016-01-29 10:40:45', '2016-01-29 10:46:59'),
(165, 165, 'Moha', 'Mouden', 'douar aït Aissa, aït ishaq province khenifra', 33, 33, 'V100996', '1971-01-01', 'male', '2', '', '0662189902', 'mouden.mh@gmail.com', '', '165_1454068601.jpg', '2016-01-29 11:52:54', '2016-01-29 11:56:41'),
(166, 166, 'Bendaoud', 'Benamer', 'rue 20 saad n°1 hay ahbass rabat', 51, 51, 'X5054', '1945-01-01', 'male', '1', '', '0537299547', 'bendaoud.benamer@hotmail.com', '', '166_1454069237.jpg', '2016-01-29 12:02:54', '2016-01-29 12:07:17'),
(167, 89, 'El aroussi', 'Tablou', 'goupe G hay andalouss rue n°6 maison n° 9 ksar lekbir', 408, 54, 'G43094', '1959-01-01', 'male', '2', '0533527774', '0666686937', 'elaroussi59@gmail.com', '', '167_1454080105.jpg', '2016-01-29 15:01:46', '2016-01-29 15:08:25'),
(168, 157, 'driss', 'meziane', 'rue nahdan°53 berkane', 47, 47, 'R18890', '1954-01-01', 'male', '2', '0536611193', '0615850281', 'driss.meziane2015@gmail.com', '', '168_1454081725.jpg', '2016-01-29 15:25:29', '2016-01-29 15:35:25'),
(169, 181, 'Abderrahim', 'Belhaj', '3 rue mohammed triki agdal rabat', 51, 51, 'A43235', '1954-02-02', 'male', '2', '', '0662598932', 'abderrahim.belhaj@gmail.com', '', '169_1454082411.jpg', '2016-01-29 15:41:09', '2016-01-29 15:46:51'),
(170, 182, 'ahmed', 'siboub', 'hay takkadoum lotissement mhizate, bloc1 n°15 kesbat tadla, beni mellal', 30, 30, 'I29016', '1950-01-01', 'male', '2', '', '0671870943', 'ahmed.siboub@gmail.com', '', '170_1454083064.jpg', '2016-01-29 15:53:17', '2016-01-29 15:57:44'),
(171, 223, 'Abdelfettah', 'Sabil', '131 saada 1 sidi allal behraoui khemisset', 55, 68, 'M413263', '1983-10-06', 'male', '2', '', '0678365880', 'abdelfettahsabil@gmail.com', '', '171_1454340741.jpg', '2016-02-01 15:23:04', '2016-02-01 15:32:21'),
(172, 224, 'El houssin', 'Attaoui', 'resid Nada im 9 app 2 route kenitra salé', 36, 36, 'D171420', '1963-11-25', 'male', '2', '', '061196335', 'attaouielhoussin@gmail.com', '', '172_1454341567.jpg', '2016-02-01 15:35:05', '2016-02-01 15:46:07'),
(173, 225, 'Youssef', 'Lahlou', 'Resid Menara 2 imm 13 n°18 hay nassim casablanca', 66, 66, 'BE795335', '1986-10-21', 'male', '1', '', '0665361255', 'yssf.lahlou@gmail.com', '', '173_1454342669.jpg', '2016-02-01 15:56:31', '2016-02-01 16:04:29'),
(174, 228, 'said', 'chekairi', '9 rue 21 Aout bloc d khouribga', 34, 34, 'Q113039', '1966-08-06', 'male', '2', '', '0667431186', 'nachek3001@hotmail.com', '', '174_1454344144.jpg', '2016-02-01 16:15:04', '2016-02-01 16:29:04'),
(175, 169, 'Yassine', 'Filali Sadki', 'lotiss  Alem 6 n°300 el bassatine Meknès ', 36, 35, 'D851206', '1989-05-23', 'male', '1', '', '0660074434', 'y.filali.sadki@gmail.com', '', '175_1456239448.jpg', '2016-02-02 15:34:27', '2016-02-23 14:57:28'),
(176, 195, 'Jamal', 'El Hota', 'lotissement ouahda n°292 wislane meknès', 36, 43, 'Z398301', '1984-01-01', 'male', '2', '', '0673154739', 'elhotja@gmail.com', '', '176_1456401428.jpg', '2016-02-03 11:35:02', '2016-02-25 11:57:08'),
(177, 241, 'Ahmed', 'Elmorabit', 'hay kamal eddine avenue de la liberté, oulad taima', 2, 65, 'GM 111616', '1986-04-15', 'male', '1', '', '0601452179', 'ahmedemporabitiaa@gmail.com', '', '177_1454509139.jpg', '2016-02-03 13:51:15', '2016-02-03 14:18:59'),
(178, 226, 'El Houssaini', 'Khabou', 'amlouane amlakou errachidia', 7, 7, 'UA77971', '1984-01-30', 'male', '2', '', '0667526734', 'elhoussain.khabou@gmail.com', '', '178_1454511671.jpg', '2016-02-03 14:53:20', '2016-02-03 15:01:11'),
(179, 227, 'Youssef ', 'Zaza', 'aviation Errich Midelt', 11, 7, 'UB71935', '1988-03-02', 'male', '1', '', '0670950863', 'youssefzaza0@gmail.com', '', '179_1454512288.jpg', '2016-02-03 15:06:19', '2016-02-03 15:11:28'),
(180, 234, 'yassir', 'hammioui', 'res Khannous4 app 6 lotissement mountazah taza', 43, 65, 'LC129984', '1983-08-26', 'male', '2', '0535673300', '0666319640', 'hammiouiyassir@gmail.com', '0535673300', '180_1454513561.jpg', '2016-02-03 15:14:06', '2016-02-03 15:32:41'),
(181, 200, 'El jadd', 'Lahoucine', '63 bloc B, zone d''activité route de Mehdia, Kenitra', 54, 4, 'I3296', '1952-01-01', 'male', '2', '0537356097', '0633282237', 'lhou07@hotmail.com', '', '181_1454688023.jpg', '2016-02-04 10:43:32', '2016-02-05 16:00:23'),
(182, 201, '', '', NULL, 0, NULL, '', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, '2016-02-04 11:08:05', '2016-02-04 11:08:05'),
(183, 232, 'el amine', 'hammioui', 'res nour 742 n°13 lotissement chaabane1 Larache', 62, 65, 'LC62261', '1978-12-31', 'male', '2', '0661666672', '066631249640', 'hammioui5@gmail.com', '', '183_1454690315.jpg', '2016-02-04 12:08:59', '2016-02-05 16:38:35'),
(184, 233, 'abdelkhalak', 'hammioui', 'res khanous n°6 lotissement Mountazah, Taza', 43, 65, 'LC169867', '1986-04-26', 'male', '2', '', '0661384392', 'hammioui.15@gmail.com', '', '184_1454690809.jpg', '2016-02-04 12:09:47', '2016-02-05 16:46:49'),
(185, 243, 'Khalid ', 'Tarraq', 'sebou1 im ch n°18 massira 3 marrakech', 22, 28, 'H363079', '1979-08-09', 'male', '2', '', '0661105456', 'khalidtarraq@gmail.com', '', '185_1454928840.jpg', '2016-02-04 12:44:47', '2016-02-08 10:54:00'),
(186, 237, 'Imad', 'Hayouf', 'tanger balya rue 120 n° b43 tanger', 58, 43, 'C991475', '1985-06-22', 'male', '2', '', '0675575131', 'imadhayouf1985@hotmail.com', '', '186_1454929572.jpg', '2016-02-04 12:45:42', '2016-02-08 11:06:12'),
(187, 229, 'younes', 'farah', 'lotissement zaïtouna n°198 attaouia kelaa sgharna', 25, 30, 'Y205280', '1982-09-15', 'male', '2', '', '0660861680', 'farahyounes0606@gmail.com', '', '187_1454930579.jpg', '2016-02-04 12:46:14', '2016-02-08 11:22:59'),
(188, 238, 'Abdallah', 'Bellamsafar', 'lot saide hajji ret kenitra n°1132 salé', 52, 52, 'AB197635', '1973-01-01', 'male', '2', '', '0659573081', 'mousafir01@gmail.com', '', '188_1454931423.jpg', '2016-02-04 12:47:04', '2016-02-08 11:37:03'),
(189, 231, 'mohamed', 'benhomes', 'BP 900 meknès', 36, 30, 'I7419', '1954-08-29', 'male', '2', '', '0661724085', 'hortimek@hotmail.com', '', '189_1454932002.jpg', '2016-02-04 12:47:32', '2016-02-08 11:46:42'),
(190, 239, 'Rachid', 'Lfadili', '24 vali bassatine menzeh km 18 route zaer rabat', 51, 51, 'A190669', '1962-07-02', 'male', '2', '', '06+61171941', 'lfadeli@yahoo.fr', '', '190_1454932628.jpg', '2016-02-04 12:47:56', '2016-02-08 11:57:08'),
(191, 245, 'Mohammed ', 'Bouaissa', 'av joulane rue ladiquia resid alhidaya app4 93013 aïn melloul tetouan', 60, 63, 'R52469', '1962-01-03', 'male', '2', '', '0662864635', 'mobouaissa@gmail.com', '', '191_1454937925.jpg', '2016-02-04 12:49:17', '2016-02-08 13:25:25'),
(192, 246, 'Abderrahman ', 'Ben Aabyd', 'lotis menzeh 3 n° 1317 boufkrane meknès', 36, 36, 'D524573', '1978-08-25', 'male', '2', '0535436752', '0615812022', 'benaabydabderrahman081978@gmail.com', '', '192_1454939526.jpg', '2016-02-04 12:50:29', '2016-02-08 13:52:06'),
(193, 247, 'Yousra', 'Ouhzizou', 'hay massira khadra rue iatizaz n°8 ksar lekebir', 408, 408, 'LB193576', '1994-12-08', 'male', '1', '', '0627496842', 'yousra.ouhzizou@gmail.com', '', '193_1454940376.jpg', '2016-02-04 12:50:55', '2016-02-08 14:06:16'),
(194, 248, 'Idriss', 'Tahiri', 'douar aït quassi souk lkhmis dades tinghir', 10, 10, 'PA123369', '1987-04-13', 'male', '1', '', '0668775904', 'drisstahiri51@gmail.com', '', '194_1454940995.jpg', '2016-02-04 12:51:31', '2016-02-08 14:16:35'),
(195, 249, 'Jamal', 'Aït Fath', 'douar lhdeb femzguid tata', 6, 6, 'JY28', '1986-06-20', 'male', '1', '', '0666178846', 'tahit-00@hotmail.com', '', '195_1454942457.jpg', '2016-02-04 12:52:19', '2016-02-08 14:40:57'),
(196, 250, 'Abdessamad', 'Laghzaoui', 'bloc E n°126 hay houda agadir', 6, 6, 'JA124813', '1987-01-01', 'male', '1', '', '0666866981', 'lg.abdessamad@gmail.com', '', '196_1454943956.jpg', '2016-02-04 12:52:42', '2016-02-08 15:05:56'),
(197, 251, 'Abdellatif', 'Guedira', 'n°1 rue kabbaj akkari rabat', 51, 51, 'A185883', '1962-04-29', 'male', '2', '', '0663060377', 'guedira.abdellatif@gmail.com', '', '197_1454944562.jpg', '2016-02-04 12:53:19', '2016-02-08 15:16:02'),
(198, 252, 'Jaouad ', 'El Ansari', 'bd atlas alkabir sect 8 im 7 app 3 hay salam salé', 52, 35, 'B122336', '1954-01-01', 'male', '2', '', '0661340890', 'jaouadelansari54@gmail.com', '', '198_1454946713.jpg', '2016-02-04 12:53:38', '2016-02-08 15:51:53'),
(199, 244, 'Mohammed ', 'Lekhessassi', '35 avenue allal ben abdellah vn meknès', 36, 54, 'G236732', '1970-07-04', 'male', '2', '0535524218', '0661661947', 'lekhessassi@gmail.com', '', '199_1454934123.jpg', '2016-02-04 12:55:41', '2016-02-08 12:22:03'),
(200, 242, 'Cherif', 'Serhan', 'sect 123 D haj mansour Kenitra', 54, 54, 'GM30635', '1972-10-01', 'male', '2', '', '0667191125', 'chrifserhan@gmail.com', '', '200_1454675146.jpg', '2016-02-05 12:22:17', '2016-02-05 12:25:46'),
(201, 240, '', '', NULL, 0, NULL, '', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, '2016-02-08 12:17:38', '2016-02-10 14:02:04'),
(202, 253, 'Yassine', 'Zariah', 'douar lkhmiss tizguine amezmiz marrakech', 22, 22, 'EE508721', '1992-12-24', 'male', '1', '', '0668278588', 'yassinezariah@gmail.com', '', '202_1455097769.jpg', '2016-02-09 14:56:17', '2016-02-10 09:49:29'),
(203, 254, 'Abdelmalek', 'Charouani', 'CDA n°536 oulad ayloul souk sebt oulad nemma bp 265 beni mellal', 30, 30, 'I32888', '1954-01-01', 'male', '2', '', '0651589978', 'abdelmalek.charouani@gmail.com', '', '203_1455099517.jpg', '2016-02-09 14:57:13', '2016-02-10 10:18:37'),
(204, 255, 'Jamal', 'El Bark', 'douar bsabes tazouta sefrou', 40, 40, 'CB247801', '1989-08-19', 'male', '1', '', '0623273106', 'jamal.elbark@gmail.com', '', '204_1455099999.jpg', '2016-02-09 14:57:34', '2016-02-10 10:26:39'),
(205, 256, 'Mohamed', ' Lahlali', 'Taza', 43, 43, 'Z461818', '1990-05-01', 'male', '1', '', '0633578901', 'mohammedlahlali1@gmail.com', '', '205_1455102601.jpg', '2016-02-09 14:58:04', '2016-02-10 11:10:01'),
(206, 257, 'Mohcine', 'El Melloumi', 'rue 20 im hafid jadid 16000 sidi kacem', 56, 51, 'A741381', '1991-11-12', 'male', '1', '', '0652401045', 'mohcine.mellouki@gmail.com', '', '206_1455103349.jpg', '2016-02-09 15:00:13', '2016-02-10 11:22:29'),
(207, 258, 'Hassan', 'OumSikou', 'kser aït said ouali amlakou errachidia', 7, 7, 'UA64467', '1982-03-08', 'male', '2', '', '0670221706', 'hsine1982@gmail.com', '', '207_1455106351.jpg', '2016-02-09 15:00:36', '2016-02-10 12:12:31'),
(208, 259, 'Brahim ', 'Oukrid', 'rue oukaïmiden  imm60 app 11 agdal rabat', 51, 50, 'A350533', '1966-02-27', 'male', '2', '0537682674', '0664493972', 'b.oukrid@gmail.com', '', '208_1455107466.jpg', '2016-02-09 15:01:15', '2016-02-10 12:31:06'),
(209, 260, 'Haddou', 'Ouchaali', 'lotissement ziz n°132 rich', 7, 7, 'UA46219', '1976-11-23', 'male', '2', '', '0671917503', 'ouchaali.haddou@gmail.com', '', '209_1455109232.jpg', '2016-02-09 15:01:32', '2016-02-10 13:00:32'),
(210, 261, 'Si Mohamed', 'Sbaï', '42 av la marche verte res habita n°27 tanger', 58, 50, 'D91783', '1955-01-30', 'male', '2', '', '061224848', 'vultader@hotmail.com', '', '210_1455115699.jpg', '2016-02-10 14:44:25', '2016-02-10 14:48:19');
INSERT INTO `pfm_counselors` (`id`, `user_id`, `first_name`, `last_name`, `address`, `city_id`, `birth_city_id`, `cin`, `birthday`, `gender`, `family_status`, `office_phone`, `mobile_phone`, `email`, `fax`, `image`, `created`, `updated`) VALUES
(211, 262, 'Hicham', 'Bouzelmate', 'im 45 app3 belle vue 3 meknès', 36, 36, 'D694267', '1988-05-12', 'male', '1', '0661902150', '0661902150', 'cadinov.consult@gmail.com', '', '211_1455117013.jpg', '2016-02-10 15:07:21', '2016-02-10 15:10:13'),
(212, 764, 'Otmane', 'Hamouyi', 'hay Dchyar rue michelifen n°50 taounate', 42, 42, 'C990916', '1984-10-20', 'male', '2', '', '0656842649', 'otmane-tazi@live.fr', '', '212_1456831917.jpg', '2016-02-23 12:11:52', '2016-03-01 11:31:57'),
(213, 765, 'Tarik', 'Hachimi', 'rue 23 im 80 groupement 20 abouab marrakech ', 22, 11, 'V132521', '1977-09-29', 'male', '2', '', '0662868944', 'htarik29@gmail.com', '', '213_1456832617.jpg', '2016-02-23 12:12:09', '2016-03-01 11:43:37'),
(214, 766, 'Ismail', 'Lyazidi', 'N°290 extension 3 zerhouniya sidi said Meknes', 36, 36, 'D690848', '1988-04-02', 'male', '1', '', '0658963730', 'lyazidi.ismail@gmail.com', '', '214_1456833833.jpg', '2016-02-23 12:12:31', '2016-03-01 12:04:12'),
(215, 767, 'Mohammed', 'Oufkir', 'Av Elmoukawama im dalya b2/2 app7 marrakech', 22, 48, 'F626714', '1980-07-08', 'male', '2', '', '0650288499', 'oufkir.dpa@gmail.com', '', '215_1456834806.jpg', '2016-02-23 12:12:46', '2016-03-01 12:20:06'),
(216, 768, 'Soukaïna', 'El Filali', 'derb berdella el fakharine n°5 bab lkhoukha fès', 35, 35, 'CD135874', '1989-08-01', 'male', '1', '', '0669646975', 'soukainagri@hotmail.com', '', '216_1456836421.jpg', '2016-02-23 12:14:11', '2016-03-01 12:47:01'),
(217, 769, 'El Houssain', 'Kadir ', 'app3 im ibn khaldoun avenue des FAR 50010 meknès', 36, 36, 'A141293', '1954-06-01', 'male', '2', '0535528082', '0661146655', 'vetkad86@gmail.com', '', '217_1456837306.jpg', '2016-02-23 12:14:24', '2016-03-01 13:01:46'),
(218, 770, 'El Mostatafa', 'Aazizi', 'Hay zitoune lotissement ben mimoune n°35 larsaf oujda', 44, 33, 'F29 786', '1956-01-01', 'male', '2', '', '0673285281', 'fatimachaymae@gmail.com', '', '218_1456839533.jpg', '2016-02-23 12:14:56', '2016-03-01 13:38:53'),
(219, 771, 'Mohammed', 'Boukhaffa', 'rue S''mara n°594 hay l''habitat  taourirt', 48, 48, 'F232592', '1957-01-01', 'male', '2', '', '0661764698', 'boukhaffamedmestigmer@gmail.com', '', '219_1456840499.jpg', '2016-02-23 12:15:15', '2016-03-01 13:54:59'),
(220, 772, 'Abdesselam', 'Bounhalli', 'n358 rue kissariat tinghir', 10, 10, 'PA97234', '1985-06-29', 'male', '2', '', '0662269757', 'abdesselambon17@gmail.com', '', '220_1456841112.jpg', '2016-02-23 12:15:28', '2016-03-01 14:05:12'),
(221, 773, 'Abdelaziz', 'Oumorghi', 'hay tadawte n°133 rue 31 zawiyate cheikh beni mellal', 30, 30, 'IA 30814', '1974-04-18', 'male', '2', '', '0616746584', 'aziznacer34@hotmail.fr', '', '221_1456844176.jpg', '2016-02-23 12:15:50', '2016-03-01 14:56:16'),
(222, 774, 'Essalah', 'Gountiti', 'lotissement kamal n°70 jnane ettaher beni mellal BP 407', 30, 28, 'I65681', '1955-07-08', 'male', '2', '', '0661831631', 'gountiti_salah@hotmail.fr', '', '222_1456844968.jpg', '2016-02-23 12:16:04', '2016-03-01 15:09:28'),
(223, 775, 'Mouhcine', 'Dalil', 'hay elqods rue sbata db 16 n°2 wislane meknès', 36, 36, 'DO4050', '1989-06-13', 'male', '1', '', '0606649268', 'dalil.m5.dm@gmail.com', '', '223_1456845690.jpg', '2016-02-23 12:16:17', '2016-03-01 15:21:30'),
(224, 776, 'El Mehdi', 'Najmaoui', 'studio dalas ruealmokawama n°9 sidi slimane', 57, 57, 'GA179261', '1993-08-05', 'male', '1', '', '0689194370', 'elmehdinajmaoui@gmail.com', '', '224_1456846417.jpg', '2016-02-23 12:16:27', '2016-03-01 15:33:37'),
(225, 779, 'bouabid', 'jalal', 'Rue Beni Ameir n°178 Oued Zem', 34, 34, 'QA6182', '1954-01-01', 'male', '2', '', '0671097438', 'bouabid.jalal@gmail.com', '', '225_1457438394.jpg', '2016-02-25 10:35:40', '2016-03-08 11:59:54'),
(226, 780, 'chajai', 'khadija', 'Im 36, App 9, Sect 5, Hay Salam, Salé', 52, 36, 'D187070', '1966-02-24', 'male', '2', '0537806994', '0661909683', 'k.chajai@gmail.com', '', '226_1457440868.jpg', '2016-02-25 10:37:20', '2016-03-08 12:41:08'),
(227, 787, 'mohammed', 'lachhab', '55 rue marrakech Oued zem', 413, 51, 'A256794', '1963-01-01', 'male', '2', '', '0668595147', 'mohlachhab@hotmail.com', '', '227_1457446561.jpg', '2016-03-08 14:07:28', '2016-03-08 14:16:01'),
(228, 789, 'mounia', 'laktob', 'Im 12, Rue Oued Makhazine n°3 larache', 62, 56, 'LB7546', '1966-01-01', 'male', '3', '', '0601754305', 'lakmouna0101@gmail.com', '', '228_1457447748.jpg', '2016-03-08 14:31:11', '2016-03-08 14:35:48');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_counselors_documents`
--

CREATE TABLE `pfm_counselors_documents` (
  `id` int(11) NOT NULL,
  `filename` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_counselors_documents`
--

INSERT INTO `pfm_counselors_documents` (`id`, `filename`, `counselor_id`, `document_id`, `is_valid`, `created`, `updated`) VALUES
(1, '4_1450797792.jpg', 4, 1, 0, '2015-12-22 15:23:12', '2015-12-22 15:23:12'),
(2, '4_1450797802.jpg', 4, 2, 0, '2015-12-22 15:23:22', '2015-12-22 15:23:22'),
(4, '4_1450800646.PNG', 4, 3, 0, '2015-12-22 16:10:46', '2015-12-22 16:10:46'),
(6, '5_1451304652.jpg', 5, 1, 0, '2015-12-28 12:10:52', '2015-12-28 12:10:52'),
(9, '5_1451305031.jpg', 5, 3, 0, '2015-12-28 12:17:11', '2015-12-28 12:17:11'),
(10, '5_1451305117.jpg', 5, 2, 0, '2015-12-28 12:18:37', '2015-12-28 12:18:37'),
(11, '6_1451487676.jpg', 6, 1, 0, '2015-12-30 15:01:16', '2015-12-30 15:01:16'),
(12, '6_1451487888.jpg', 6, 3, 0, '2015-12-30 15:04:48', '2015-12-30 15:04:48'),
(13, '6_1451492802.jpg', 6, 2, 0, '2015-12-30 16:26:42', '2015-12-30 16:26:42'),
(14, '7_1451495033.jpg', 7, 1, 0, '2015-12-30 17:03:53', '2015-12-30 17:03:53'),
(17, '7_1451496739.jpg', 7, 2, 0, '2015-12-30 17:32:19', '2015-12-30 17:32:19'),
(18, '7_1451496765.jpg', 7, 3, 0, '2015-12-30 17:32:45', '2015-12-30 17:32:45'),
(19, '9_1451555225.jpg', 9, 1, 0, '2015-12-31 09:47:05', '2015-12-31 09:47:05'),
(20, '9_1451555237.jpg', 9, 2, 0, '2015-12-31 09:47:17', '2015-12-31 09:47:17'),
(21, '9_1451555257.jpg', 9, 3, 0, '2015-12-31 09:47:37', '2015-12-31 09:47:37'),
(22, '10_1451556088.jpg', 10, 1, 0, '2015-12-31 10:01:28', '2015-12-31 10:01:28'),
(23, '10_1451556101.jpg', 10, 2, 0, '2015-12-31 10:01:41', '2015-12-31 10:01:41'),
(24, '10_1451556113.jpg', 10, 3, 0, '2015-12-31 10:01:53', '2015-12-31 10:01:53'),
(25, '11_1451557202.jpg', 11, 1, 0, '2015-12-31 10:20:02', '2015-12-31 10:20:02'),
(26, '11_1451557211.jpg', 11, 2, 0, '2015-12-31 10:20:11', '2015-12-31 10:20:11'),
(27, '11_1451557221.jpg', 11, 3, 0, '2015-12-31 10:20:21', '2015-12-31 10:20:21'),
(29, '12_1451558345.jpg', 12, 1, 0, '2015-12-31 10:39:05', '2015-12-31 10:39:05'),
(30, '12_1451558356.jpg', 12, 2, 0, '2015-12-31 10:39:16', '2015-12-31 10:39:16'),
(31, '12_1451558366.jpg', 12, 3, 0, '2015-12-31 10:39:26', '2015-12-31 10:39:26'),
(32, '13_1451559154.jpg', 13, 1, 0, '2015-12-31 10:52:34', '2015-12-31 10:52:34'),
(33, '13_1451559164.jpg', 13, 2, 0, '2015-12-31 10:52:44', '2015-12-31 10:52:44'),
(34, '13_1451559177.jpg', 13, 3, 0, '2015-12-31 10:52:57', '2015-12-31 10:52:57'),
(35, '14_1451559858.jpg', 14, 1, 0, '2015-12-31 11:04:18', '2015-12-31 11:04:18'),
(36, '14_1451559869.jpg', 14, 2, 0, '2015-12-31 11:04:29', '2015-12-31 11:04:29'),
(37, '14_1451559882.jpg', 14, 3, 0, '2015-12-31 11:04:42', '2015-12-31 11:04:42'),
(38, '16_1451563067.jpg', 16, 1, 0, '2015-12-31 11:57:47', '2015-12-31 11:57:47'),
(39, '16_1451563078.jpg', 16, 2, 0, '2015-12-31 11:57:58', '2015-12-31 11:57:58'),
(40, '16_1451563091.jpg', 16, 3, 0, '2015-12-31 11:58:11', '2015-12-31 11:58:11'),
(41, '17_1451563986.jpg', 17, 1, 0, '2015-12-31 12:13:06', '2015-12-31 12:13:06'),
(42, '17_1451563996.jpg', 17, 2, 0, '2015-12-31 12:13:16', '2015-12-31 12:13:16'),
(43, '17_1451564008.jpg', 17, 3, 0, '2015-12-31 12:13:28', '2015-12-31 12:13:28'),
(44, '18_1451564493.jpg', 18, 1, 0, '2015-12-31 12:21:33', '2015-12-31 12:21:33'),
(45, '18_1451564505.jpg', 18, 2, 0, '2015-12-31 12:21:45', '2015-12-31 12:21:45'),
(46, '18_1451564516.jpg', 18, 3, 0, '2015-12-31 12:21:56', '2015-12-31 12:21:56'),
(47, '19_1451565283.jpg', 19, 1, 0, '2015-12-31 12:34:43', '2015-12-31 12:34:43'),
(48, '19_1451565294.jpg', 19, 2, 0, '2015-12-31 12:34:54', '2015-12-31 12:34:54'),
(49, '19_1451565306.jpg', 19, 3, 0, '2015-12-31 12:35:06', '2015-12-31 12:35:06'),
(50, '20_1451570121.jpg', 20, 1, 0, '2015-12-31 13:55:21', '2015-12-31 13:55:21'),
(51, '20_1451570132.jpg', 20, 2, 0, '2015-12-31 13:55:32', '2015-12-31 13:55:32'),
(52, '20_1451570144.jpg', 20, 3, 0, '2015-12-31 13:55:44', '2015-12-31 13:55:44'),
(53, '21_1451570973.jpg', 21, 1, 0, '2015-12-31 14:09:33', '2015-12-31 14:09:33'),
(55, '21_1451571001.jpg', 21, 2, 0, '2015-12-31 14:10:01', '2015-12-31 14:10:01'),
(56, '21_1451571014.jpg', 21, 3, 0, '2015-12-31 14:10:14', '2015-12-31 14:10:14'),
(57, '22_1451573255.jpg', 22, 1, 0, '2015-12-31 14:47:35', '2015-12-31 14:47:35'),
(58, '22_1451573271.jpg', 22, 2, 0, '2015-12-31 14:47:51', '2015-12-31 14:47:51'),
(59, '22_1451573291.jpg', 22, 3, 0, '2015-12-31 14:48:11', '2015-12-31 14:48:11'),
(60, '23_1451576545.jpg', 23, 1, 0, '2015-12-31 15:42:25', '2015-12-31 15:42:25'),
(62, '23_1451576760.jpg', 23, 3, 0, '2015-12-31 15:46:00', '2015-12-31 15:46:00'),
(63, '8_1451898973.jpg', 8, 1, 0, '2016-01-04 09:16:13', '2016-01-04 09:16:13'),
(64, '8_1451898994.jpg', 8, 2, 0, '2016-01-04 09:16:34', '2016-01-04 09:16:34'),
(65, '8_1451899011.jpg', 8, 3, 0, '2016-01-04 09:16:51', '2016-01-04 09:16:51'),
(66, '25_1451900304.jpg', 25, 1, 0, '2016-01-04 09:38:24', '2016-01-04 09:38:24'),
(67, '25_1451900349.jpg', 25, 3, 0, '2016-01-04 09:39:09', '2016-01-04 09:39:09'),
(68, '25_1451900649.jpg', 25, 2, 0, '2016-01-04 09:44:09', '2016-01-04 09:44:09'),
(69, '24_1451923457.jpg', 24, 1, 0, '2016-01-04 16:04:17', '2016-01-04 16:04:17'),
(70, '24_1451923474.jpg', 24, 2, 0, '2016-01-04 16:04:34', '2016-01-04 16:04:34'),
(71, '24_1451923497.jpg', 24, 3, 0, '2016-01-04 16:04:57', '2016-01-04 16:04:57'),
(72, '15_1451924758.jpg', 15, 1, 0, '2016-01-04 16:25:58', '2016-01-04 16:25:58'),
(73, '15_1451924777.jpg', 15, 3, 0, '2016-01-04 16:26:17', '2016-01-04 16:26:17'),
(76, '23_1451987146.jpg', 23, 2, 0, '2016-01-05 09:45:46', '2016-01-05 09:45:46'),
(77, '15_1451987454.jpg', 15, 2, 0, '2016-01-05 09:50:54', '2016-01-05 09:50:54'),
(78, '26_1451989344.jpg', 26, 1, 0, '2016-01-05 10:22:24', '2016-01-05 10:22:24'),
(80, '26_1451989478.jpg', 26, 2, 0, '2016-01-05 10:24:38', '2016-01-05 10:24:38'),
(81, '26_1451989512.jpg', 26, 3, 0, '2016-01-05 10:25:12', '2016-01-05 10:25:12'),
(82, '28_1451991396.jpg', 28, 1, 0, '2016-01-05 10:56:36', '2016-01-05 10:56:36'),
(83, '28_1451991413.jpg', 28, 2, 0, '2016-01-05 10:56:53', '2016-01-05 10:56:53'),
(84, '28_1451991536.jpg', 28, 3, 0, '2016-01-05 10:58:56', '2016-01-05 10:58:56'),
(85, '29_1451991590.jpg', 29, 1, 0, '2016-01-05 10:59:50', '2016-01-05 10:59:50'),
(86, '29_1451991607.jpg', 29, 2, 0, '2016-01-05 11:00:07', '2016-01-05 11:00:07'),
(87, '29_1451991618.jpg', 29, 3, 0, '2016-01-05 11:00:18', '2016-01-05 11:00:18'),
(91, '27_1451992538.jpg', 27, 1, 0, '2016-01-05 11:15:38', '2016-01-05 11:15:38'),
(92, '27_1451992551.jpg', 27, 2, 0, '2016-01-05 11:15:51', '2016-01-05 11:15:51'),
(93, '27_1451992566.jpg', 27, 3, 0, '2016-01-05 11:16:06', '2016-01-05 11:16:06'),
(94, '32_1451992932.jpg', 32, 1, 0, '2016-01-05 11:22:12', '2016-01-05 11:22:12'),
(95, '32_1451992942.jpg', 32, 2, 0, '2016-01-05 11:22:22', '2016-01-05 11:22:22'),
(96, '32_1451992951.jpg', 32, 3, 0, '2016-01-05 11:22:31', '2016-01-05 11:22:31'),
(97, '31_1451993050.jpg', 31, 1, 0, '2016-01-05 11:24:10', '2016-01-05 11:24:10'),
(98, '31_1451993067.jpg', 31, 2, 0, '2016-01-05 11:24:27', '2016-01-05 11:24:27'),
(99, '31_1451993080.jpg', 31, 3, 0, '2016-01-05 11:24:40', '2016-01-05 11:24:40'),
(100, '34_1451993394.jpg', 34, 1, 0, '2016-01-05 11:29:54', '2016-01-05 11:29:54'),
(101, '34_1451993402.jpg', 34, 2, 0, '2016-01-05 11:30:02', '2016-01-05 11:30:02'),
(102, '34_1451993410.jpg', 34, 3, 0, '2016-01-05 11:30:10', '2016-01-05 11:30:10'),
(103, '36_1451993927.jpg', 36, 1, 0, '2016-01-05 11:38:47', '2016-01-05 11:38:47'),
(104, '36_1451993939.jpg', 36, 2, 0, '2016-01-05 11:38:59', '2016-01-05 11:38:59'),
(105, '36_1451993967.jpg', 36, 3, 0, '2016-01-05 11:39:27', '2016-01-05 11:39:27'),
(106, '35_1451994262.jpg', 35, 1, 0, '2016-01-05 11:44:22', '2016-01-05 11:44:22'),
(107, '35_1451994273.jpg', 35, 2, 0, '2016-01-05 11:44:33', '2016-01-05 11:44:33'),
(108, '35_1451994281.jpg', 35, 3, 0, '2016-01-05 11:44:41', '2016-01-05 11:44:41'),
(109, '33_1451994459.jpg', 33, 1, 0, '2016-01-05 11:47:39', '2016-01-05 11:47:39'),
(110, '33_1451994473.jpg', 33, 2, 0, '2016-01-05 11:47:53', '2016-01-05 11:47:53'),
(111, '37_1451994475.jpg', 37, 1, 0, '2016-01-05 11:47:55', '2016-01-05 11:47:55'),
(112, '37_1451994483.jpg', 37, 2, 0, '2016-01-05 11:48:03', '2016-01-05 11:48:03'),
(113, '37_1451994492.jpg', 37, 3, 0, '2016-01-05 11:48:12', '2016-01-05 11:48:12'),
(114, '33_1451994494.jpg', 33, 3, 0, '2016-01-05 11:48:14', '2016-01-05 11:48:14'),
(115, '38_1451994898.jpg', 38, 1, 0, '2016-01-05 11:54:58', '2016-01-05 11:54:58'),
(116, '38_1451994909.jpg', 38, 2, 0, '2016-01-05 11:55:09', '2016-01-05 11:55:09'),
(117, '38_1451994918.jpg', 38, 3, 0, '2016-01-05 11:55:18', '2016-01-05 11:55:18'),
(118, '39_1451995875.jpg', 39, 1, 0, '2016-01-05 12:11:15', '2016-01-05 12:11:15'),
(119, '39_1451995885.jpg', 39, 2, 0, '2016-01-05 12:11:25', '2016-01-05 12:11:25'),
(120, '39_1451995903.jpg', 39, 3, 0, '2016-01-05 12:11:43', '2016-01-05 12:11:43'),
(121, '41_1451996100.jpg', 41, 1, 0, '2016-01-05 12:15:00', '2016-01-05 12:15:00'),
(124, '41_1451996380.jpg', 41, 2, 0, '2016-01-05 12:19:40', '2016-01-05 12:19:40'),
(126, '41_1451996447.jpg', 41, 3, 0, '2016-01-05 12:20:47', '2016-01-05 12:20:47'),
(127, '42_1451996998.jpg', 42, 3, 0, '2016-01-05 12:29:58', '2016-01-05 12:29:58'),
(129, '42_1451997038.jpg', 42, 2, 0, '2016-01-05 12:30:38', '2016-01-05 12:30:38'),
(130, '42_1451997189.jpg', 42, 1, 0, '2016-01-05 12:33:09', '2016-01-05 12:33:09'),
(131, '43_1451997301.jpg', 43, 1, 0, '2016-01-05 12:35:01', '2016-01-05 12:35:01'),
(132, '43_1451997309.jpg', 43, 2, 0, '2016-01-05 12:35:09', '2016-01-05 12:35:09'),
(133, '43_1451997318.jpg', 43, 3, 0, '2016-01-05 12:35:18', '2016-01-05 12:35:18'),
(134, '47_1451998013.jpg', 47, 1, 0, '2016-01-05 12:46:53', '2016-01-05 12:46:53'),
(135, '47_1451998023.jpg', 47, 2, 0, '2016-01-05 12:47:03', '2016-01-05 12:47:03'),
(136, '47_1451998032.jpg', 47, 3, 0, '2016-01-05 12:47:12', '2016-01-05 12:47:12'),
(137, '48_1451998439.jpg', 48, 1, 0, '2016-01-05 12:53:59', '2016-01-05 12:53:59'),
(138, '48_1451998457.jpg', 48, 2, 0, '2016-01-05 12:54:17', '2016-01-05 12:54:17'),
(140, '48_1451998489.jpg', 48, 3, 0, '2016-01-05 12:54:49', '2016-01-05 12:54:49'),
(141, '44_1451998616.jpg', 44, 1, 0, '2016-01-05 12:56:56', '2016-01-05 12:56:56'),
(142, '44_1451998629.jpg', 44, 2, 0, '2016-01-05 12:57:09', '2016-01-05 12:57:09'),
(143, '44_1451998647.jpg', 44, 3, 0, '2016-01-05 12:57:27', '2016-01-05 12:57:27'),
(144, '49_1451999048.jpg', 49, 1, 0, '2016-01-05 13:04:08', '2016-01-05 13:04:08'),
(145, '49_1451999055.jpg', 49, 2, 0, '2016-01-05 13:04:15', '2016-01-05 13:04:15'),
(146, '49_1451999063.jpg', 49, 3, 0, '2016-01-05 13:04:23', '2016-01-05 13:04:23'),
(147, '51_1451999532.jpg', 51, 1, 0, '2016-01-05 13:12:12', '2016-01-05 13:12:12'),
(148, '51_1451999542.jpg', 51, 2, 0, '2016-01-05 13:12:22', '2016-01-05 13:12:22'),
(149, '51_1451999553.jpg', 51, 3, 0, '2016-01-05 13:12:33', '2016-01-05 13:12:33'),
(150, '46_1451999828.jpg', 46, 1, 0, '2016-01-05 13:17:08', '2016-01-05 13:17:08'),
(151, '46_1451999839.jpg', 46, 2, 0, '2016-01-05 13:17:19', '2016-01-05 13:17:19'),
(153, '46_1451999856.jpg', 46, 3, 0, '2016-01-05 13:17:36', '2016-01-05 13:17:36'),
(154, '52_1451999988.jpg', 52, 1, 0, '2016-01-05 13:19:48', '2016-01-05 13:19:48'),
(155, '52_1452000001.jpg', 52, 2, 0, '2016-01-05 13:20:02', '2016-01-05 13:20:02'),
(156, '52_1452000012.jpg', 52, 3, 0, '2016-01-05 13:20:12', '2016-01-05 13:20:12'),
(157, '53_1452001003.jpg', 53, 1, 0, '2016-01-05 13:36:43', '2016-01-05 13:36:43'),
(158, '53_1452001009.jpg', 53, 2, 0, '2016-01-05 13:36:50', '2016-01-05 13:36:50'),
(159, '53_1452001018.jpg', 53, 3, 0, '2016-01-05 13:36:58', '2016-01-05 13:36:58'),
(160, '54_1452001972.jpg', 54, 1, 0, '2016-01-05 13:52:52', '2016-01-05 13:52:52'),
(161, '54_1452001998.jpg', 54, 2, 0, '2016-01-05 13:53:18', '2016-01-05 13:53:18'),
(162, '54_1452002034.jpg', 54, 3, 0, '2016-01-05 13:53:54', '2016-01-05 13:53:54'),
(163, '55_1452002954.jpg', 55, 1, 0, '2016-01-05 14:09:14', '2016-01-05 14:09:14'),
(164, '55_1452002976.jpg', 55, 2, 0, '2016-01-05 14:09:36', '2016-01-05 14:09:36'),
(165, '55_1452002988.jpg', 55, 3, 0, '2016-01-05 14:09:48', '2016-01-05 14:09:48'),
(166, '56_1452003089.jpg', 56, 1, 0, '2016-01-05 14:11:29', '2016-01-05 14:11:29'),
(167, '56_1452003143.jpg', 56, 2, 0, '2016-01-05 14:12:23', '2016-01-05 14:12:23'),
(168, '56_1452003154.jpg', 56, 3, 0, '2016-01-05 14:12:34', '2016-01-05 14:12:34'),
(169, '57_1452003704.jpg', 57, 1, 0, '2016-01-05 14:21:44', '2016-01-05 14:21:44'),
(170, '57_1452003743.jpg', 57, 2, 0, '2016-01-05 14:22:23', '2016-01-05 14:22:23'),
(171, '57_1452003759.jpg', 57, 3, 0, '2016-01-05 14:22:39', '2016-01-05 14:22:39'),
(172, '58_1452003771.jpg', 58, 1, 0, '2016-01-05 14:22:51', '2016-01-05 14:22:51'),
(173, '58_1452003792.jpg', 58, 2, 0, '2016-01-05 14:23:12', '2016-01-05 14:23:12'),
(174, '58_1452003807.jpg', 58, 3, 0, '2016-01-05 14:23:27', '2016-01-05 14:23:27'),
(175, '59_1452004613.jpg', 59, 1, 0, '2016-01-05 14:36:53', '2016-01-05 14:36:53'),
(176, '59_1452004623.jpg', 59, 2, 0, '2016-01-05 14:37:03', '2016-01-05 14:37:03'),
(177, '59_1452004634.jpg', 59, 3, 0, '2016-01-05 14:37:14', '2016-01-05 14:37:14'),
(178, '61_1452005784.jpg', 61, 1, 0, '2016-01-05 14:56:24', '2016-01-05 14:56:24'),
(179, '61_1452005797.jpg', 61, 2, 0, '2016-01-05 14:56:37', '2016-01-05 14:56:37'),
(180, '61_1452005807.jpg', 61, 3, 0, '2016-01-05 14:56:47', '2016-01-05 14:56:47'),
(181, '62_1452005850.jpg', 62, 1, 0, '2016-01-05 14:57:30', '2016-01-05 14:57:30'),
(182, '62_1452005869.jpg', 62, 2, 0, '2016-01-05 14:57:49', '2016-01-05 14:57:49'),
(183, '62_1452005885.jpg', 62, 3, 0, '2016-01-05 14:58:05', '2016-01-05 14:58:05'),
(184, '50_1452005914.jpg', 50, 1, 0, '2016-01-05 14:58:34', '2016-01-05 14:58:34'),
(185, '50_1452005925.jpg', 50, 2, 0, '2016-01-05 14:58:45', '2016-01-05 14:58:45'),
(186, '50_1452005936.jpg', 50, 3, 0, '2016-01-05 14:58:56', '2016-01-05 14:58:56'),
(187, '63_1452006329.jpg', 63, 1, 0, '2016-01-05 15:05:29', '2016-01-05 15:05:29'),
(188, '63_1452006338.jpg', 63, 2, 0, '2016-01-05 15:05:38', '2016-01-05 15:05:38'),
(189, '63_1452006355.jpg', 63, 3, 0, '2016-01-05 15:05:55', '2016-01-05 15:05:55'),
(190, '64_1452007068.jpg', 64, 1, 0, '2016-01-05 15:17:48', '2016-01-05 15:17:48'),
(191, '64_1452007075.jpg', 64, 2, 0, '2016-01-05 15:17:55', '2016-01-05 15:17:55'),
(192, '64_1452007083.jpg', 64, 3, 0, '2016-01-05 15:18:03', '2016-01-05 15:18:03'),
(196, '66_1452007590.jpg', 66, 1, 0, '2016-01-05 15:26:30', '2016-01-05 15:26:30'),
(197, '66_1452007597.jpg', 66, 2, 0, '2016-01-05 15:26:37', '2016-01-05 15:26:37'),
(198, '66_1452007606.jpg', 66, 3, 0, '2016-01-05 15:26:46', '2016-01-05 15:26:46'),
(199, '68_1452009221.jpg', 68, 1, 0, '2016-01-05 15:53:41', '2016-01-05 15:53:41'),
(200, '68_1452009232.jpg', 68, 2, 0, '2016-01-05 15:53:52', '2016-01-05 15:53:52'),
(201, '68_1452009242.jpg', 68, 3, 0, '2016-01-05 15:54:02', '2016-01-05 15:54:02'),
(202, '69_1452009931.jpg', 69, 1, 0, '2016-01-05 16:05:31', '2016-01-05 16:05:31'),
(203, '69_1452009939.jpg', 69, 2, 0, '2016-01-05 16:05:39', '2016-01-05 16:05:39'),
(204, '69_1452009950.jpg', 69, 3, 0, '2016-01-05 16:05:50', '2016-01-05 16:05:50'),
(205, '70_1452010516.jpg', 70, 1, 0, '2016-01-05 16:15:16', '2016-01-05 16:15:16'),
(206, '70_1452010525.jpg', 70, 2, 0, '2016-01-05 16:15:25', '2016-01-05 16:15:25'),
(207, '70_1452010533.jpg', 70, 3, 0, '2016-01-05 16:15:33', '2016-01-05 16:15:33'),
(208, '71_1452010948.jpg', 71, 1, 0, '2016-01-05 16:22:28', '2016-01-05 16:22:28'),
(209, '71_1452010955.jpg', 71, 2, 0, '2016-01-05 16:22:35', '2016-01-05 16:22:35'),
(210, '71_1452010962.jpg', 71, 3, 0, '2016-01-05 16:22:42', '2016-01-05 16:22:42'),
(211, '67_1452011138.jpg', 67, 1, 0, '2016-01-05 16:25:38', '2016-01-05 16:25:38'),
(212, '67_1452011148.jpg', 67, 2, 0, '2016-01-05 16:25:48', '2016-01-05 16:25:48'),
(213, '67_1452011157.jpg', 67, 3, 0, '2016-01-05 16:25:57', '2016-01-05 16:25:57'),
(214, '72_1452011460.jpg', 72, 1, 0, '2016-01-05 16:31:00', '2016-01-05 16:31:00'),
(215, '72_1452011470.jpg', 72, 2, 0, '2016-01-05 16:31:10', '2016-01-05 16:31:10'),
(216, '72_1452011482.jpg', 72, 3, 0, '2016-01-05 16:31:22', '2016-01-05 16:31:22'),
(217, '73_1452012110.jpg', 73, 1, 0, '2016-01-05 16:41:50', '2016-01-05 16:41:50'),
(218, '73_1452012129.jpg', 73, 2, 0, '2016-01-05 16:42:09', '2016-01-05 16:42:09'),
(219, '73_1452012138.jpg', 73, 3, 0, '2016-01-05 16:42:18', '2016-01-05 16:42:18'),
(220, '74_1452012512.jpg', 74, 1, 0, '2016-01-05 16:48:32', '2016-01-05 16:48:32'),
(221, '74_1452012526.jpg', 74, 2, 0, '2016-01-05 16:48:46', '2016-01-05 16:48:46'),
(222, '74_1452012534.jpg', 74, 3, 0, '2016-01-05 16:48:54', '2016-01-05 16:48:54'),
(223, '75_1452012813.jpg', 75, 1, 0, '2016-01-05 16:53:33', '2016-01-05 16:53:33'),
(224, '75_1452012821.jpg', 75, 2, 0, '2016-01-05 16:53:41', '2016-01-05 16:53:41'),
(225, '75_1452012828.jpg', 75, 3, 0, '2016-01-05 16:53:48', '2016-01-05 16:53:48'),
(226, '76_1452067040.jpg', 76, 1, 0, '2016-01-06 07:57:20', '2016-01-06 07:57:20'),
(227, '76_1452067058.jpg', 76, 2, 0, '2016-01-06 07:57:38', '2016-01-06 07:57:38'),
(228, '76_1452067067.jpg', 76, 3, 0, '2016-01-06 07:57:47', '2016-01-06 07:57:47'),
(229, '77_1452067437.jpg', 77, 1, 0, '2016-01-06 08:03:57', '2016-01-06 08:03:57'),
(230, '77_1452067444.jpg', 77, 2, 0, '2016-01-06 08:04:04', '2016-01-06 08:04:04'),
(231, '77_1452067452.jpg', 77, 3, 0, '2016-01-06 08:04:12', '2016-01-06 08:04:12'),
(232, '78_1452068048.jpg', 78, 1, 0, '2016-01-06 08:14:08', '2016-01-06 08:14:08'),
(233, '78_1452068055.jpg', 78, 2, 0, '2016-01-06 08:14:15', '2016-01-06 08:14:15'),
(234, '78_1452068064.jpg', 78, 3, 0, '2016-01-06 08:14:24', '2016-01-06 08:14:24'),
(235, '79_1452068420.jpg', 79, 1, 0, '2016-01-06 08:20:20', '2016-01-06 08:20:20'),
(236, '79_1452068437.jpg', 79, 2, 0, '2016-01-06 08:20:37', '2016-01-06 08:20:37'),
(237, '79_1452068447.jpg', 79, 3, 0, '2016-01-06 08:20:47', '2016-01-06 08:20:47'),
(238, '80_1452068770.jpg', 80, 1, 0, '2016-01-06 08:26:10', '2016-01-06 08:26:10'),
(239, '80_1452068784.jpg', 80, 2, 0, '2016-01-06 08:26:25', '2016-01-06 08:26:25'),
(240, '80_1452068792.jpg', 80, 3, 0, '2016-01-06 08:26:32', '2016-01-06 08:26:32'),
(241, '81_1452069191.jpg', 81, 1, 0, '2016-01-06 08:33:11', '2016-01-06 08:33:11'),
(242, '81_1452069205.jpg', 81, 2, 0, '2016-01-06 08:33:25', '2016-01-06 08:33:25'),
(243, '81_1452069213.jpg', 81, 3, 0, '2016-01-06 08:33:33', '2016-01-06 08:33:33'),
(244, '82_1452069655.jpg', 82, 1, 0, '2016-01-06 08:40:55', '2016-01-06 08:40:55'),
(245, '82_1452069663.jpg', 82, 2, 0, '2016-01-06 08:41:03', '2016-01-06 08:41:03'),
(246, '82_1452069672.jpg', 82, 3, 0, '2016-01-06 08:41:12', '2016-01-06 08:41:12'),
(247, '83_1452070109.jpg', 83, 1, 0, '2016-01-06 08:48:29', '2016-01-06 08:48:29'),
(248, '83_1452070115.jpg', 83, 2, 0, '2016-01-06 08:48:35', '2016-01-06 08:48:35'),
(249, '83_1452070121.jpg', 83, 3, 0, '2016-01-06 08:48:41', '2016-01-06 08:48:41'),
(250, '84_1452070629.jpg', 84, 1, 0, '2016-01-06 08:57:09', '2016-01-06 08:57:09'),
(251, '84_1452070636.jpg', 84, 2, 0, '2016-01-06 08:57:16', '2016-01-06 08:57:16'),
(252, '84_1452070642.jpg', 84, 3, 0, '2016-01-06 08:57:22', '2016-01-06 08:57:22'),
(253, '85_1452070995.jpg', 85, 1, 0, '2016-01-06 09:03:15', '2016-01-06 09:03:15'),
(254, '85_1452071002.jpg', 85, 2, 0, '2016-01-06 09:03:22', '2016-01-06 09:03:22'),
(255, '85_1452071052.jpg', 85, 3, 0, '2016-01-06 09:04:12', '2016-01-06 09:04:12'),
(256, '86_1452073513.jpg', 86, 1, 0, '2016-01-06 09:45:13', '2016-01-06 09:45:13'),
(257, '86_1452073520.jpg', 86, 2, 0, '2016-01-06 09:45:20', '2016-01-06 09:45:20'),
(258, '86_1452073528.jpg', 86, 3, 0, '2016-01-06 09:45:28', '2016-01-06 09:45:28'),
(259, '87_1452073933.jpg', 87, 1, 0, '2016-01-06 09:52:13', '2016-01-06 09:52:13'),
(260, '87_1452073946.jpg', 87, 2, 0, '2016-01-06 09:52:27', '2016-01-06 09:52:27'),
(261, '87_1452073955.jpg', 87, 3, 0, '2016-01-06 09:52:35', '2016-01-06 09:52:35'),
(262, '88_1452074602.jpg', 88, 1, 0, '2016-01-06 10:03:22', '2016-01-06 10:03:22'),
(263, '88_1452074610.jpg', 88, 2, 0, '2016-01-06 10:03:30', '2016-01-06 10:03:30'),
(264, '88_1452074619.jpg', 88, 3, 0, '2016-01-06 10:03:39', '2016-01-06 10:03:39'),
(265, '89_1452075176.jpg', 89, 1, 0, '2016-01-06 10:12:56', '2016-01-06 10:12:56'),
(266, '89_1452075183.jpg', 89, 2, 0, '2016-01-06 10:13:03', '2016-01-06 10:13:03'),
(267, '89_1452075193.jpg', 89, 3, 0, '2016-01-06 10:13:13', '2016-01-06 10:13:13'),
(268, '45_1452075550.jpg', 45, 1, 0, '2016-01-06 10:19:10', '2016-01-06 10:19:10'),
(269, '45_1452075556.jpg', 45, 2, 0, '2016-01-06 10:19:16', '2016-01-06 10:19:16'),
(270, '45_1452075563.jpg', 45, 3, 0, '2016-01-06 10:19:23', '2016-01-06 10:19:23'),
(271, '90_1452080577.jpg', 90, 1, 0, '2016-01-06 11:42:57', '2016-01-06 11:42:57'),
(272, '90_1452080584.jpg', 90, 2, 0, '2016-01-06 11:43:04', '2016-01-06 11:43:04'),
(273, '90_1452080594.jpg', 90, 3, 0, '2016-01-06 11:43:14', '2016-01-06 11:43:14'),
(274, '91_1452090455.jpg', 91, 1, 0, '2016-01-06 14:27:35', '2016-01-06 14:27:35'),
(275, '91_1452090471.jpg', 91, 2, 0, '2016-01-06 14:27:51', '2016-01-06 14:27:51'),
(276, '91_1452090480.jpg', 91, 3, 0, '2016-01-06 14:28:00', '2016-01-06 14:28:00'),
(277, '92_1452093596.jpg', 92, 1, 0, '2016-01-06 15:19:56', '2016-01-06 15:19:56'),
(278, '92_1452093609.jpg', 92, 2, 0, '2016-01-06 15:20:09', '2016-01-06 15:20:09'),
(279, '92_1452093617.jpg', 92, 3, 0, '2016-01-06 15:20:17', '2016-01-06 15:20:17'),
(280, '93_1452100145.jpg', 93, 3, 0, '2016-01-06 17:09:05', '2016-01-06 17:09:05'),
(281, '93_1452100466.jpg', 93, 1, 0, '2016-01-06 17:14:26', '2016-01-06 17:14:26'),
(282, '93_1452100476.jpg', 93, 2, 0, '2016-01-06 17:14:36', '2016-01-06 17:14:36'),
(283, '94_1452100804.jpg', 94, 1, 0, '2016-01-06 17:20:04', '2016-01-06 17:20:04'),
(284, '94_1452100815.jpg', 94, 2, 0, '2016-01-06 17:20:15', '2016-01-06 17:20:15'),
(285, '94_1452100826.jpg', 94, 3, 0, '2016-01-06 17:20:26', '2016-01-06 17:20:26'),
(286, '40_1452101738.jpg', 40, 1, 0, '2016-01-06 17:35:38', '2016-01-06 17:35:38'),
(287, '40_1452101753.jpg', 40, 2, 0, '2016-01-06 17:35:53', '2016-01-06 17:35:53'),
(288, '40_1452101772.jpg', 40, 3, 0, '2016-01-06 17:36:12', '2016-01-06 17:36:12'),
(290, '95_1452167361.jpg', 95, 2, 1, '2016-01-07 11:49:21', '2016-01-07 14:08:52'),
(291, '95_1452167368.PNG', 95, 3, 1, '2016-01-07 11:49:29', '2016-01-07 14:13:20'),
(292, '95_1452173795.jpg', 95, 1, 1, '2016-01-07 13:36:35', '2016-01-07 14:07:29'),
(293, '96_1452774170.jpg', 96, 1, 0, '2016-01-14 12:22:50', '2016-01-14 12:22:50'),
(294, '96_1452774192.jpg', 96, 2, 0, '2016-01-14 12:23:12', '2016-01-14 12:23:12'),
(295, '96_1452774205.jpg', 96, 3, 0, '2016-01-14 12:23:25', '2016-01-14 12:23:25'),
(296, '97_1452775126.jpg', 97, 1, 0, '2016-01-14 12:38:46', '2016-01-14 12:38:46'),
(297, '97_1452775159.jpg', 97, 2, 0, '2016-01-14 12:39:19', '2016-01-14 12:39:19'),
(298, '97_1452775192.jpg', 97, 3, 0, '2016-01-14 12:39:52', '2016-01-14 12:39:52'),
(299, '98_1452776857.jpg', 98, 1, 0, '2016-01-14 13:07:37', '2016-01-14 13:07:37'),
(300, '98_1452776868.jpg', 98, 2, 0, '2016-01-14 13:07:48', '2016-01-14 13:07:48'),
(301, '98_1452776877.jpg', 98, 3, 0, '2016-01-14 13:07:57', '2016-01-14 13:07:57'),
(302, '99_1452777926.jpg', 99, 1, 0, '2016-01-14 13:25:26', '2016-01-14 13:25:26'),
(303, '99_1452777934.jpg', 99, 2, 0, '2016-01-14 13:25:34', '2016-01-14 13:25:34'),
(304, '99_1452777961.jpg', 99, 3, 0, '2016-01-14 13:26:01', '2016-01-14 13:26:01'),
(305, '100_1452779367.jpg', 100, 1, 0, '2016-01-14 13:49:27', '2016-01-14 13:49:27'),
(306, '100_1452779381.jpg', 100, 2, 0, '2016-01-14 13:49:41', '2016-01-14 13:49:41'),
(307, '100_1452779391.jpg', 100, 3, 0, '2016-01-14 13:49:51', '2016-01-14 13:49:51'),
(308, '101_1452779868.jpg', 101, 1, 0, '2016-01-14 13:57:48', '2016-01-14 13:57:48'),
(309, '101_1452779901.jpg', 101, 2, 0, '2016-01-14 13:58:21', '2016-01-14 13:58:21'),
(310, '101_1452779916.jpg', 101, 3, 0, '2016-01-14 13:58:36', '2016-01-14 13:58:36'),
(311, '102_1452780473.jpg', 102, 1, 0, '2016-01-14 14:07:53', '2016-01-14 14:07:53'),
(312, '102_1452780489.jpg', 102, 2, 0, '2016-01-14 14:08:09', '2016-01-14 14:08:09'),
(313, '102_1452780497.jpg', 102, 3, 0, '2016-01-14 14:08:17', '2016-01-14 14:08:17'),
(314, '103_1452781337.jpg', 103, 1, 0, '2016-01-14 14:22:17', '2016-01-14 14:22:17'),
(315, '103_1452781354.jpg', 103, 2, 0, '2016-01-14 14:22:34', '2016-01-14 14:22:34'),
(316, '103_1452781364.jpg', 103, 3, 0, '2016-01-14 14:22:44', '2016-01-14 14:22:44'),
(317, '104_1452849398.jpg', 104, 1, 0, '2016-01-15 09:16:38', '2016-01-15 09:16:38'),
(318, '104_1452849406.jpg', 104, 2, 0, '2016-01-15 09:16:46', '2016-01-15 09:16:46'),
(319, '104_1452849414.jpg', 104, 3, 0, '2016-01-15 09:16:54', '2016-01-15 09:16:54'),
(320, '105_1452849708.jpg', 105, 1, 0, '2016-01-15 09:21:48', '2016-01-15 09:21:48'),
(321, '105_1452849719.jpg', 105, 2, 0, '2016-01-15 09:21:59', '2016-01-15 09:21:59'),
(322, '105_1452849729.jpg', 105, 3, 0, '2016-01-15 09:22:09', '2016-01-15 09:22:09'),
(323, '106_1452853514.jpg', 106, 1, 0, '2016-01-15 10:25:14', '2016-01-15 10:25:14'),
(324, '106_1452853521.jpg', 106, 2, 0, '2016-01-15 10:25:22', '2016-01-15 10:25:22'),
(325, '106_1452853529.jpg', 106, 3, 0, '2016-01-15 10:25:29', '2016-01-15 10:25:29'),
(326, '108_1453121605.jpg', 108, 1, 0, '2016-01-18 12:53:25', '2016-01-18 12:53:25'),
(327, '108_1453121677.jpg', 108, 2, 0, '2016-01-18 12:54:37', '2016-01-18 12:54:37'),
(328, '108_1453121686.jpg', 108, 3, 0, '2016-01-18 12:54:46', '2016-01-18 12:54:46'),
(329, '109_1453123341.jpg', 109, 1, 0, '2016-01-18 13:22:21', '2016-01-18 13:22:21'),
(330, '109_1453123351.jpg', 109, 2, 0, '2016-01-18 13:22:31', '2016-01-18 13:22:31'),
(331, '109_1453123359.jpg', 109, 3, 0, '2016-01-18 13:22:39', '2016-01-18 13:22:39'),
(332, '110_1453124174.jpg', 110, 1, 0, '2016-01-18 13:36:14', '2016-01-18 13:36:14'),
(334, '110_1453124193.jpg', 110, 2, 0, '2016-01-18 13:36:33', '2016-01-18 13:36:33'),
(335, '110_1453124204.jpg', 110, 3, 0, '2016-01-18 13:36:44', '2016-01-18 13:36:44'),
(336, '111_1453125419.jpg', 111, 1, 0, '2016-01-18 13:56:59', '2016-01-18 13:56:59'),
(337, '111_1453125428.jpg', 111, 2, 0, '2016-01-18 13:57:08', '2016-01-18 13:57:08'),
(338, '111_1453125437.jpg', 111, 3, 0, '2016-01-18 13:57:17', '2016-01-18 13:57:17'),
(339, '112_1453126392.jpg', 112, 1, 0, '2016-01-18 14:13:12', '2016-01-18 14:13:12'),
(340, '112_1453126399.jpg', 112, 2, 0, '2016-01-18 14:13:19', '2016-01-18 14:13:19'),
(341, '112_1453126407.jpg', 112, 3, 0, '2016-01-18 14:13:27', '2016-01-18 14:13:27'),
(342, '113_1453128039.jpg', 113, 1, 0, '2016-01-18 14:40:39', '2016-01-18 14:40:39'),
(343, '113_1453128047.jpg', 113, 2, 0, '2016-01-18 14:40:47', '2016-01-18 14:40:47'),
(344, '113_1453128054.jpg', 113, 3, 0, '2016-01-18 14:40:54', '2016-01-18 14:40:54'),
(345, '114_1453128801.jpg', 114, 1, 0, '2016-01-18 14:53:21', '2016-01-18 14:53:21'),
(346, '114_1453128808.jpg', 114, 2, 0, '2016-01-18 14:53:28', '2016-01-18 14:53:28'),
(347, '114_1453128816.jpg', 114, 3, 0, '2016-01-18 14:53:36', '2016-01-18 14:53:36'),
(348, '115_1453129685.jpg', 115, 1, 0, '2016-01-18 15:08:05', '2016-01-18 15:08:05'),
(349, '115_1453129695.jpg', 115, 2, 0, '2016-01-18 15:08:15', '2016-01-18 15:08:15'),
(350, '115_1453129704.jpg', 115, 3, 0, '2016-01-18 15:08:24', '2016-01-18 15:08:24'),
(351, '116_1453130400.jpg', 116, 1, 0, '2016-01-18 15:20:00', '2016-01-18 15:20:00'),
(352, '116_1453130407.jpg', 116, 2, 0, '2016-01-18 15:20:07', '2016-01-18 15:20:07'),
(353, '116_1453130414.jpg', 116, 3, 0, '2016-01-18 15:20:14', '2016-01-18 15:20:14'),
(354, '117_1453130969.jpg', 117, 1, 0, '2016-01-18 15:29:29', '2016-01-18 15:29:29'),
(355, '117_1453130976.jpg', 117, 2, 0, '2016-01-18 15:29:36', '2016-01-18 15:29:36'),
(356, '117_1453130983.jpg', 117, 3, 0, '2016-01-18 15:29:43', '2016-01-18 15:29:43'),
(357, '118_1453131806.jpg', 118, 1, 0, '2016-01-18 15:43:26', '2016-01-18 15:43:26'),
(359, '118_1453131820.jpg', 118, 3, 0, '2016-01-18 15:43:40', '2016-01-18 15:43:40'),
(360, '119_1453132439.jpg', 119, 1, 0, '2016-01-18 15:53:59', '2016-01-18 15:53:59'),
(361, '119_1453132447.jpg', 119, 2, 0, '2016-01-18 15:54:07', '2016-01-18 15:54:07'),
(362, '119_1453132454.jpg', 119, 3, 0, '2016-01-18 15:54:14', '2016-01-18 15:54:14'),
(363, '120_1453133522.jpg', 120, 1, 0, '2016-01-18 16:12:02', '2016-01-18 16:12:02'),
(364, '120_1453133527.jpg', 120, 2, 0, '2016-01-18 16:12:07', '2016-01-18 16:12:07'),
(365, '120_1453133535.jpg', 120, 3, 0, '2016-01-18 16:12:15', '2016-01-18 16:12:15'),
(366, '121_1453134195.jpg', 121, 1, 0, '2016-01-18 16:23:15', '2016-01-18 16:23:15'),
(367, '121_1453134205.jpg', 121, 2, 0, '2016-01-18 16:23:25', '2016-01-18 16:23:25'),
(368, '121_1453134212.jpg', 121, 3, 0, '2016-01-18 16:23:32', '2016-01-18 16:23:32'),
(369, '122_1453203622.jpg', 122, 1, 0, '2016-01-19 11:40:22', '2016-01-19 11:40:22'),
(370, '122_1453203630.jpg', 122, 2, 0, '2016-01-19 11:40:30', '2016-01-19 11:40:30'),
(371, '122_1453203637.jpg', 122, 3, 0, '2016-01-19 11:40:37', '2016-01-19 11:40:37'),
(372, '123_1453204266.jpg', 123, 1, 0, '2016-01-19 11:51:06', '2016-01-19 11:51:06'),
(373, '123_1453204273.jpg', 123, 2, 0, '2016-01-19 11:51:13', '2016-01-19 11:51:13'),
(374, '123_1453204283.jpg', 123, 3, 0, '2016-01-19 11:51:23', '2016-01-19 11:51:23'),
(375, '124_1453205618.jpg', 124, 1, 0, '2016-01-19 12:13:38', '2016-01-19 12:13:38'),
(376, '124_1453205626.jpg', 124, 2, 0, '2016-01-19 12:13:46', '2016-01-19 12:13:46'),
(377, '124_1453205633.jpg', 124, 3, 0, '2016-01-19 12:13:53', '2016-01-19 12:13:53'),
(378, '125_1453207899.jpg', 125, 1, 0, '2016-01-19 12:51:39', '2016-01-19 12:51:39'),
(379, '125_1453207905.jpg', 125, 2, 0, '2016-01-19 12:51:45', '2016-01-19 12:51:45'),
(380, '125_1453207912.jpg', 125, 3, 0, '2016-01-19 12:51:53', '2016-01-19 12:51:53'),
(381, '126_1453209370.jpg', 126, 1, 0, '2016-01-19 13:16:10', '2016-01-19 13:16:10'),
(382, '126_1453209375.jpg', 126, 2, 0, '2016-01-19 13:16:15', '2016-01-19 13:16:15'),
(383, '126_1453209386.jpg', 126, 3, 0, '2016-01-19 13:16:26', '2016-01-19 13:16:26'),
(384, '127_1453211340.jpg', 127, 1, 0, '2016-01-19 13:49:00', '2016-01-19 13:49:00'),
(385, '127_1453211350.jpg', 127, 2, 0, '2016-01-19 13:49:10', '2016-01-19 13:49:10'),
(386, '127_1453211359.jpg', 127, 3, 0, '2016-01-19 13:49:19', '2016-01-19 13:49:19'),
(387, '128_1453213379.jpg', 128, 1, 0, '2016-01-19 14:22:59', '2016-01-19 14:22:59'),
(388, '128_1453213386.jpg', 128, 2, 0, '2016-01-19 14:23:06', '2016-01-19 14:23:06'),
(389, '128_1453213392.jpg', 128, 3, 0, '2016-01-19 14:23:12', '2016-01-19 14:23:12'),
(390, '129_1453214302.jpg', 129, 1, 0, '2016-01-19 14:38:22', '2016-01-19 14:38:22'),
(391, '129_1453214315.jpg', 129, 2, 0, '2016-01-19 14:38:35', '2016-01-19 14:38:35'),
(392, '129_1453214338.jpg', 129, 3, 0, '2016-01-19 14:38:58', '2016-01-19 14:38:58'),
(393, '130_1453214941.jpg', 130, 1, 0, '2016-01-19 14:49:01', '2016-01-19 14:49:01'),
(394, '130_1453214954.jpg', 130, 2, 0, '2016-01-19 14:49:14', '2016-01-19 14:49:14'),
(395, '130_1453214977.jpg', 130, 3, 0, '2016-01-19 14:49:37', '2016-01-19 14:49:37'),
(396, '131_1453215762.jpg', 131, 1, 0, '2016-01-19 15:02:42', '2016-01-19 15:02:42'),
(397, '131_1453215886.jpg', 131, 2, 0, '2016-01-19 15:04:46', '2016-01-19 15:04:46'),
(398, '131_1453215906.jpg', 131, 3, 0, '2016-01-19 15:05:06', '2016-01-19 15:05:06'),
(399, '132_1453218355.jpg', 132, 1, 0, '2016-01-19 15:45:55', '2016-01-19 15:45:55'),
(400, '132_1453218370.jpg', 132, 2, 0, '2016-01-19 15:46:10', '2016-01-19 15:46:10'),
(401, '132_1453218393.jpg', 132, 3, 0, '2016-01-19 15:46:33', '2016-01-19 15:46:33'),
(402, '133_1453219913.jpg', 133, 1, 0, '2016-01-19 16:11:53', '2016-01-19 16:11:53'),
(403, '133_1453219928.jpg', 133, 2, 0, '2016-01-19 16:12:08', '2016-01-19 16:12:08'),
(404, '133_1453219946.jpg', 133, 3, 0, '2016-01-19 16:12:26', '2016-01-19 16:12:26'),
(405, '134_1453220787.jpg', 134, 1, 0, '2016-01-19 16:26:27', '2016-01-19 16:26:27'),
(406, '134_1453220794.jpg', 134, 2, 0, '2016-01-19 16:26:34', '2016-01-19 16:26:34'),
(407, '134_1453220800.jpg', 134, 3, 0, '2016-01-19 16:26:40', '2016-01-19 16:26:40'),
(408, '135_1453281816.jpg', 135, 1, 0, '2016-01-20 09:23:36', '2016-01-20 09:23:36'),
(409, '135_1453281849.jpg', 135, 2, 0, '2016-01-20 09:24:09', '2016-01-20 09:24:09'),
(410, '135_1453281855.jpg', 135, 3, 0, '2016-01-20 09:24:15', '2016-01-20 09:24:15'),
(411, '136_1453282602.jpg', 136, 1, 0, '2016-01-20 09:36:42', '2016-01-20 09:36:42'),
(412, '136_1453282616.jpg', 136, 2, 0, '2016-01-20 09:36:56', '2016-01-20 09:36:56'),
(413, '136_1453282634.jpg', 136, 3, 0, '2016-01-20 09:37:14', '2016-01-20 09:37:14'),
(414, '138_1453301257.jpg', 138, 1, 0, '2016-01-20 14:47:37', '2016-01-20 14:47:37'),
(415, '138_1453301274.jpg', 138, 2, 0, '2016-01-20 14:47:54', '2016-01-20 14:47:54'),
(416, '138_1453301296.jpg', 138, 3, 0, '2016-01-20 14:48:16', '2016-01-20 14:48:16'),
(417, '139_1453462293.jpg', 139, 1, 0, '2016-01-22 11:31:33', '2016-01-22 11:31:33'),
(418, '139_1453462301.jpg', 139, 2, 0, '2016-01-22 11:31:41', '2016-01-22 11:31:41'),
(419, '139_1453462310.jpg', 139, 3, 0, '2016-01-22 11:31:50', '2016-01-22 11:31:50'),
(420, '140_1453722195.jpg', 140, 1, 0, '2016-01-25 11:43:15', '2016-01-25 11:43:15'),
(421, '140_1453722210.jpg', 140, 2, 0, '2016-01-25 11:43:30', '2016-01-25 11:43:30'),
(422, '140_1453722221.jpg', 140, 3, 0, '2016-01-25 11:43:41', '2016-01-25 11:43:41'),
(423, '141_1453723909.jpg', 141, 1, 0, '2016-01-25 12:11:49', '2016-01-25 12:11:49'),
(424, '141_1453723918.jpg', 141, 2, 0, '2016-01-25 12:11:58', '2016-01-25 12:11:58'),
(425, '141_1453723928.jpg', 141, 3, 0, '2016-01-25 12:12:08', '2016-01-25 12:12:08'),
(426, '107_1453812132.jpg', 107, 1, 0, '2016-01-26 12:42:12', '2016-01-26 12:42:12'),
(427, '107_1453812143.jpg', 107, 2, 0, '2016-01-26 12:42:23', '2016-01-26 12:42:23'),
(428, '107_1453812154.jpg', 107, 3, 0, '2016-01-26 12:42:34', '2016-01-26 12:42:34'),
(429, '142_1453813018.jpg', 142, 1, 0, '2016-01-26 12:56:58', '2016-01-26 12:56:58'),
(430, '142_1453813059.jpg', 142, 2, 0, '2016-01-26 12:57:39', '2016-01-26 12:57:39'),
(431, '142_1453813068.jpg', 142, 3, 0, '2016-01-26 12:57:48', '2016-01-26 12:57:48'),
(432, '143_1453818297.jpg', 143, 1, 0, '2016-01-26 14:24:57', '2016-01-26 14:24:57'),
(433, '143_1453818306.jpg', 143, 2, 0, '2016-01-26 14:25:06', '2016-01-26 14:25:06'),
(434, '143_1453818315.jpg', 143, 3, 0, '2016-01-26 14:25:15', '2016-01-26 14:25:15'),
(435, '144_1453819314.jpg', 144, 1, 0, '2016-01-26 14:41:54', '2016-01-26 14:41:54'),
(436, '144_1453819334.jpg', 144, 2, 0, '2016-01-26 14:42:14', '2016-01-26 14:42:14'),
(437, '144_1453819356.jpg', 144, 3, 0, '2016-01-26 14:42:36', '2016-01-26 14:42:36'),
(438, '145_1453820031.jpg', 145, 1, 0, '2016-01-26 14:53:51', '2016-01-26 14:53:51'),
(439, '145_1453820045.jpg', 145, 2, 0, '2016-01-26 14:54:05', '2016-01-26 14:54:05'),
(440, '145_1453820068.jpg', 145, 3, 0, '2016-01-26 14:54:28', '2016-01-26 14:54:28'),
(441, '146_1453820817.jpg', 146, 1, 0, '2016-01-26 15:06:57', '2016-01-26 15:06:57'),
(442, '146_1453820830.jpg', 146, 2, 0, '2016-01-26 15:07:10', '2016-01-26 15:07:10'),
(443, '146_1453820847.jpg', 146, 3, 0, '2016-01-26 15:07:27', '2016-01-26 15:07:27'),
(444, '147_1453891379.jpg', 147, 1, 0, '2016-01-27 10:42:59', '2016-01-27 10:42:59'),
(445, '147_1453891404.jpg', 147, 2, 0, '2016-01-27 10:43:24', '2016-01-27 10:43:24'),
(446, '147_1453891428.jpg', 147, 3, 0, '2016-01-27 10:43:48', '2016-01-27 10:43:48'),
(448, '148_1453895802.jpg', 148, 1, 0, '2016-01-27 11:56:42', '2016-01-27 11:56:42'),
(449, '148_1453895810.jpg', 148, 2, 0, '2016-01-27 11:56:50', '2016-01-27 11:56:50'),
(450, '148_1453895836.jpg', 148, 3, 0, '2016-01-27 11:57:16', '2016-01-27 11:57:16'),
(451, '149_1453907017.jpg', 149, 1, 0, '2016-01-27 15:03:37', '2016-01-27 15:03:37'),
(452, '149_1453907025.jpg', 149, 2, 0, '2016-01-27 15:03:45', '2016-01-27 15:03:45'),
(453, '149_1453907034.jpg', 149, 3, 0, '2016-01-27 15:03:54', '2016-01-27 15:03:54'),
(454, '150_1453909686.jpg', 150, 1, 0, '2016-01-27 15:48:06', '2016-01-27 15:48:06'),
(455, '150_1453909796.jpg', 150, 2, 0, '2016-01-27 15:49:56', '2016-01-27 15:49:56'),
(456, '150_1453909808.jpg', 150, 3, 0, '2016-01-27 15:50:08', '2016-01-27 15:50:08'),
(457, '151_1453912048.jpg', 151, 1, 0, '2016-01-27 16:27:28', '2016-01-27 16:27:28'),
(458, '151_1453912063.jpg', 151, 2, 0, '2016-01-27 16:27:43', '2016-01-27 16:27:43'),
(459, '151_1453912080.jpg', 151, 3, 0, '2016-01-27 16:28:00', '2016-01-27 16:28:00'),
(460, '152_1453912875.jpg', 152, 1, 0, '2016-01-27 16:41:15', '2016-01-27 16:41:15'),
(461, '152_1453912890.jpg', 152, 2, 0, '2016-01-27 16:41:30', '2016-01-27 16:41:30'),
(462, '152_1453912910.jpg', 152, 3, 0, '2016-01-27 16:41:50', '2016-01-27 16:41:50'),
(463, '153_1453983995.jpg', 153, 1, 0, '2016-01-28 12:26:35', '2016-01-28 12:26:35'),
(464, '153_1453984002.jpg', 153, 2, 0, '2016-01-28 12:26:42', '2016-01-28 12:26:42'),
(465, '153_1453984022.jpg', 153, 3, 0, '2016-01-28 12:27:02', '2016-01-28 12:27:02'),
(466, '154_1453984636.jpg', 154, 1, 0, '2016-01-28 12:37:16', '2016-01-28 12:37:16'),
(467, '154_1453984644.jpg', 154, 2, 0, '2016-01-28 12:37:24', '2016-01-28 12:37:24'),
(468, '154_1453984653.jpg', 154, 3, 0, '2016-01-28 12:37:33', '2016-01-28 12:37:33'),
(469, '155_1453986772.jpg', 155, 1, 0, '2016-01-28 13:12:52', '2016-01-28 13:12:52'),
(470, '155_1453986785.jpg', 155, 2, 0, '2016-01-28 13:13:05', '2016-01-28 13:13:05'),
(471, '155_1453986803.jpg', 155, 3, 0, '2016-01-28 13:13:23', '2016-01-28 13:13:23'),
(472, '156_1453993487.jpg', 156, 1, 0, '2016-01-28 15:04:47', '2016-01-28 15:04:47'),
(473, '156_1453993506.jpg', 156, 2, 0, '2016-01-28 15:05:06', '2016-01-28 15:05:06'),
(474, '156_1453993553.jpg', 156, 3, 0, '2016-01-28 15:05:53', '2016-01-28 15:05:53'),
(475, '157_1453995469.jpg', 157, 1, 0, '2016-01-28 15:37:49', '2016-01-28 15:37:49'),
(476, '157_1453995481.jpg', 157, 2, 0, '2016-01-28 15:38:01', '2016-01-28 15:38:01'),
(477, '157_1453995501.jpg', 157, 3, 0, '2016-01-28 15:38:21', '2016-01-28 15:38:21'),
(478, '158_1453996066.jpg', 158, 1, 0, '2016-01-28 15:47:46', '2016-01-28 15:47:46'),
(479, '158_1453996081.jpg', 158, 2, 0, '2016-01-28 15:48:01', '2016-01-28 15:48:01'),
(480, '158_1453996099.jpg', 158, 3, 0, '2016-01-28 15:48:19', '2016-01-28 15:48:19'),
(481, '159_1453996968.jpg', 159, 1, 0, '2016-01-28 16:02:48', '2016-01-28 16:02:48'),
(482, '159_1453996983.jpg', 159, 2, 0, '2016-01-28 16:03:03', '2016-01-28 16:03:03'),
(483, '159_1453997001.jpg', 159, 3, 0, '2016-01-28 16:03:21', '2016-01-28 16:03:21'),
(484, '160_1453997854.jpg', 160, 1, 0, '2016-01-28 16:17:34', '2016-01-28 16:17:34'),
(485, '160_1453997874.jpg', 160, 2, 0, '2016-01-28 16:17:54', '2016-01-28 16:17:54'),
(486, '160_1453997892.jpg', 160, 3, 0, '2016-01-28 16:18:12', '2016-01-28 16:18:12'),
(487, '161_1453998740.jpg', 161, 1, 0, '2016-01-28 16:32:20', '2016-01-28 16:32:20'),
(488, '161_1453998754.jpg', 161, 2, 0, '2016-01-28 16:32:34', '2016-01-28 16:32:34'),
(489, '161_1453998782.jpg', 161, 3, 0, '2016-01-28 16:33:02', '2016-01-28 16:33:02'),
(490, '162_1453999622.jpg', 162, 1, 0, '2016-01-28 16:47:02', '2016-01-28 16:47:02'),
(491, '162_1453999637.jpg', 162, 2, 0, '2016-01-28 16:47:17', '2016-01-28 16:47:17'),
(492, '162_1453999654.jpg', 162, 3, 0, '2016-01-28 16:47:34', '2016-01-28 16:47:34'),
(493, '163_1454063631.jpg', 163, 1, 0, '2016-01-29 10:33:51', '2016-01-29 10:33:51'),
(494, '163_1454063643.jpg', 163, 2, 0, '2016-01-29 10:34:03', '2016-01-29 10:34:03'),
(495, '163_1454063660.jpg', 163, 3, 0, '2016-01-29 10:34:20', '2016-01-29 10:34:20'),
(496, '164_1454064444.jpg', 164, 1, 0, '2016-01-29 10:47:24', '2016-01-29 10:47:24'),
(497, '164_1454064463.jpg', 164, 2, 0, '2016-01-29 10:47:43', '2016-01-29 10:47:43'),
(498, '164_1454064483.jpg', 164, 3, 0, '2016-01-29 10:48:03', '2016-01-29 10:48:03'),
(499, '165_1454068613.jpg', 165, 1, 0, '2016-01-29 11:56:53', '2016-01-29 11:56:53'),
(500, '165_1454068623.jpg', 165, 2, 0, '2016-01-29 11:57:03', '2016-01-29 11:57:03'),
(501, '165_1454068634.jpg', 165, 3, 0, '2016-01-29 11:57:14', '2016-01-29 11:57:14'),
(502, '166_1454069299.jpg', 166, 1, 0, '2016-01-29 12:08:19', '2016-01-29 12:08:19'),
(503, '166_1454069318.jpg', 166, 2, 0, '2016-01-29 12:08:38', '2016-01-29 12:08:38'),
(504, '166_1454069337.jpg', 166, 3, 0, '2016-01-29 12:08:57', '2016-01-29 12:08:57'),
(505, '167_1454080113.jpg', 167, 1, 0, '2016-01-29 15:08:33', '2016-01-29 15:08:33'),
(506, '167_1454080120.jpg', 167, 2, 0, '2016-01-29 15:08:40', '2016-01-29 15:08:40'),
(507, '167_1454080127.jpg', 167, 3, 0, '2016-01-29 15:08:47', '2016-01-29 15:08:47'),
(508, '168_1454081741.jpg', 168, 1, 0, '2016-01-29 15:35:41', '2016-01-29 15:35:41'),
(509, '168_1454081769.jpg', 168, 2, 0, '2016-01-29 15:36:09', '2016-01-29 15:36:09'),
(510, '168_1454081788.jpg', 168, 3, 0, '2016-01-29 15:36:28', '2016-01-29 15:36:28'),
(511, '169_1454082431.jpg', 169, 1, 0, '2016-01-29 15:47:11', '2016-01-29 15:47:11'),
(512, '169_1454082444.jpg', 169, 2, 0, '2016-01-29 15:47:24', '2016-01-29 15:47:24'),
(513, '169_1454082461.jpg', 169, 3, 0, '2016-01-29 15:47:41', '2016-01-29 15:47:41'),
(514, '170_1454083081.jpg', 170, 1, 0, '2016-01-29 15:58:01', '2016-01-29 15:58:01'),
(515, '170_1454083093.jpg', 170, 2, 0, '2016-01-29 15:58:13', '2016-01-29 15:58:13'),
(516, '170_1454083109.jpg', 170, 3, 0, '2016-01-29 15:58:29', '2016-01-29 15:58:29'),
(517, '171_1454340759.jpg', 171, 1, 0, '2016-02-01 15:32:39', '2016-02-01 15:32:39'),
(518, '171_1454340775.jpg', 171, 2, 0, '2016-02-01 15:32:55', '2016-02-01 15:32:55'),
(519, '171_1454340793.jpg', 171, 3, 0, '2016-02-01 15:33:13', '2016-02-01 15:33:13'),
(520, '172_1454341573.jpg', 172, 1, 0, '2016-02-01 15:46:13', '2016-02-01 15:46:13'),
(521, '172_1454341594.jpg', 172, 2, 0, '2016-02-01 15:46:34', '2016-02-01 15:46:34'),
(522, '172_1454341609.jpg', 172, 3, 0, '2016-02-01 15:46:49', '2016-02-01 15:46:49'),
(523, '173_1454342693.jpg', 173, 1, 0, '2016-02-01 16:04:53', '2016-02-01 16:04:53'),
(524, '173_1454342708.jpg', 173, 2, 0, '2016-02-01 16:05:08', '2016-02-01 16:05:08'),
(525, '173_1454342725.jpg', 173, 3, 0, '2016-02-01 16:05:25', '2016-02-01 16:05:25'),
(526, '174_1454344168.jpg', 174, 1, 0, '2016-02-01 16:29:28', '2016-02-01 16:29:28'),
(527, '174_1454344195.jpg', 174, 2, 0, '2016-02-01 16:29:55', '2016-02-01 16:29:55'),
(528, '174_1454344213.jpg', 174, 3, 0, '2016-02-01 16:30:13', '2016-02-01 16:30:13'),
(529, '177_1454509156.jpg', 177, 1, 0, '2016-02-03 14:19:16', '2016-02-03 14:19:16'),
(530, '177_1454509170.jpg', 177, 2, 0, '2016-02-03 14:19:30', '2016-02-03 14:19:30'),
(531, '177_1454509187.jpg', 177, 3, 0, '2016-02-03 14:19:47', '2016-02-03 14:19:47'),
(532, '178_1454511686.jpg', 178, 1, 0, '2016-02-03 15:01:26', '2016-02-03 15:01:26'),
(533, '178_1454511700.jpg', 178, 2, 0, '2016-02-03 15:01:40', '2016-02-03 15:01:40'),
(534, '178_1454511718.jpg', 178, 3, 0, '2016-02-03 15:01:58', '2016-02-03 15:01:58'),
(535, '179_1454512306.jpg', 179, 1, 0, '2016-02-03 15:11:46', '2016-02-03 15:11:46'),
(536, '179_1454512319.jpg', 179, 2, 0, '2016-02-03 15:11:59', '2016-02-03 15:11:59'),
(537, '179_1454512336.jpg', 179, 3, 0, '2016-02-03 15:12:16', '2016-02-03 15:12:16'),
(538, '180_1454513580.jpg', 180, 1, 0, '2016-02-03 15:33:00', '2016-02-03 15:33:00'),
(539, '180_1454513593.jpg', 180, 2, 0, '2016-02-03 15:33:13', '2016-02-03 15:33:13'),
(540, '180_1454513616.jpg', 180, 3, 0, '2016-02-03 15:33:36', '2016-02-03 15:33:36'),
(541, '200_1454675162.jpg', 200, 1, 0, '2016-02-05 12:26:02', '2016-02-05 12:26:02'),
(542, '200_1454675174.jpg', 200, 2, 0, '2016-02-05 12:26:14', '2016-02-05 12:26:14'),
(543, '200_1454675193.jpg', 200, 3, 0, '2016-02-05 12:26:33', '2016-02-05 12:26:33'),
(544, '181_1454688040.jpg', 181, 1, 0, '2016-02-05 16:00:40', '2016-02-05 16:00:40'),
(545, '181_1454688054.jpg', 181, 2, 0, '2016-02-05 16:00:54', '2016-02-05 16:00:54'),
(546, '181_1454688071.jpg', 181, 3, 0, '2016-02-05 16:01:11', '2016-02-05 16:01:11'),
(547, '183_1454690332.jpg', 183, 1, 0, '2016-02-05 16:38:52', '2016-02-05 16:38:52'),
(548, '183_1454690347.jpg', 183, 2, 0, '2016-02-05 16:39:07', '2016-02-05 16:39:07'),
(549, '183_1454690364.jpg', 183, 3, 0, '2016-02-05 16:39:24', '2016-02-05 16:39:24'),
(550, '184_1454690827.jpg', 184, 1, 0, '2016-02-05 16:47:07', '2016-02-05 16:47:07'),
(551, '184_1454690841.jpg', 184, 2, 0, '2016-02-05 16:47:21', '2016-02-05 16:47:21'),
(552, '184_1454690858.jpg', 184, 3, 0, '2016-02-05 16:47:38', '2016-02-05 16:47:38'),
(553, '185_1454928858.jpg', 185, 1, 0, '2016-02-08 10:54:18', '2016-02-08 10:54:18'),
(554, '185_1454928872.jpg', 185, 2, 0, '2016-02-08 10:54:32', '2016-02-08 10:54:32'),
(555, '185_1454928890.jpg', 185, 3, 0, '2016-02-08 10:54:50', '2016-02-08 10:54:50'),
(556, '186_1454929591.jpg', 186, 1, 0, '2016-02-08 11:06:31', '2016-02-08 11:06:31'),
(557, '186_1454929604.jpg', 186, 2, 0, '2016-02-08 11:06:44', '2016-02-08 11:06:44'),
(558, '186_1454929717.jpg', 186, 3, 0, '2016-02-08 11:08:37', '2016-02-08 11:08:37'),
(559, '187_1454930601.jpg', 187, 1, 0, '2016-02-08 11:23:21', '2016-02-08 11:23:21'),
(560, '187_1454930608.jpg', 187, 2, 0, '2016-02-08 11:23:28', '2016-02-08 11:23:28'),
(561, '187_1454930615.jpg', 187, 3, 0, '2016-02-08 11:23:35', '2016-02-08 11:23:35'),
(562, '188_1454931439.jpg', 188, 1, 0, '2016-02-08 11:37:19', '2016-02-08 11:37:19'),
(563, '188_1454931453.jpg', 188, 2, 0, '2016-02-08 11:37:33', '2016-02-08 11:37:33'),
(564, '188_1454931472.jpg', 188, 3, 0, '2016-02-08 11:37:52', '2016-02-08 11:37:52'),
(565, '189_1454932018.jpg', 189, 1, 0, '2016-02-08 11:46:58', '2016-02-08 11:46:58'),
(566, '189_1454932046.jpg', 189, 2, 0, '2016-02-08 11:47:26', '2016-02-08 11:47:26'),
(567, '189_1454932063.jpg', 189, 3, 0, '2016-02-08 11:47:43', '2016-02-08 11:47:43'),
(568, '190_1454932646.jpg', 190, 1, 0, '2016-02-08 11:57:26', '2016-02-08 11:57:26'),
(569, '190_1454932658.jpg', 190, 2, 0, '2016-02-08 11:57:38', '2016-02-08 11:57:38'),
(570, '190_1454932674.jpg', 190, 3, 0, '2016-02-08 11:57:54', '2016-02-08 11:57:54'),
(571, '199_1454934140.jpg', 199, 1, 0, '2016-02-08 12:22:20', '2016-02-08 12:22:20'),
(572, '199_1454934152.jpg', 199, 2, 0, '2016-02-08 12:22:32', '2016-02-08 12:22:32'),
(573, '199_1454934174.jpg', 199, 3, 0, '2016-02-08 12:22:54', '2016-02-08 12:22:54'),
(574, '191_1454937968.jpg', 191, 1, 0, '2016-02-08 13:26:08', '2016-02-08 13:26:08'),
(575, '191_1454937983.jpg', 191, 2, 0, '2016-02-08 13:26:23', '2016-02-08 13:26:23'),
(576, '191_1454938000.jpg', 191, 3, 0, '2016-02-08 13:26:40', '2016-02-08 13:26:40'),
(577, '192_1454939543.jpg', 192, 1, 0, '2016-02-08 13:52:23', '2016-02-08 13:52:23'),
(578, '192_1454939558.jpg', 192, 2, 0, '2016-02-08 13:52:38', '2016-02-08 13:52:38'),
(579, '192_1454939576.jpg', 192, 3, 0, '2016-02-08 13:52:56', '2016-02-08 13:52:56'),
(580, '193_1454940395.jpg', 193, 1, 0, '2016-02-08 14:06:35', '2016-02-08 14:06:35'),
(581, '193_1454940414.jpg', 193, 2, 0, '2016-02-08 14:06:54', '2016-02-08 14:06:54'),
(582, '193_1454940430.jpg', 193, 3, 0, '2016-02-08 14:07:10', '2016-02-08 14:07:10'),
(583, '194_1454941011.jpg', 194, 1, 0, '2016-02-08 14:16:51', '2016-02-08 14:16:51'),
(584, '194_1454941026.jpg', 194, 2, 0, '2016-02-08 14:17:06', '2016-02-08 14:17:06'),
(585, '194_1454941042.jpg', 194, 3, 0, '2016-02-08 14:17:22', '2016-02-08 14:17:22'),
(586, '195_1454942477.jpg', 195, 1, 0, '2016-02-08 14:41:17', '2016-02-08 14:41:17'),
(587, '195_1454942490.jpg', 195, 2, 0, '2016-02-08 14:41:30', '2016-02-08 14:41:30'),
(588, '195_1454942505.jpg', 195, 3, 0, '2016-02-08 14:41:45', '2016-02-08 14:41:45'),
(589, '196_1454943973.jpg', 196, 1, 0, '2016-02-08 15:06:13', '2016-02-08 15:06:13'),
(590, '196_1454943988.jpg', 196, 2, 0, '2016-02-08 15:06:28', '2016-02-08 15:06:28'),
(591, '196_1454944005.jpg', 196, 3, 0, '2016-02-08 15:06:45', '2016-02-08 15:06:45'),
(592, '197_1454944582.jpg', 197, 1, 0, '2016-02-08 15:16:22', '2016-02-08 15:16:22'),
(593, '197_1454944596.jpg', 197, 2, 0, '2016-02-08 15:16:36', '2016-02-08 15:16:36'),
(594, '197_1454944614.jpg', 197, 3, 0, '2016-02-08 15:16:54', '2016-02-08 15:16:54'),
(595, '198_1454946729.jpg', 198, 1, 0, '2016-02-08 15:52:09', '2016-02-08 15:52:09'),
(596, '198_1454946742.jpg', 198, 2, 0, '2016-02-08 15:52:22', '2016-02-08 15:52:22'),
(597, '198_1454946760.jpg', 198, 3, 0, '2016-02-08 15:52:40', '2016-02-08 15:52:40'),
(598, '202_1455097788.jpg', 202, 1, 0, '2016-02-10 09:49:48', '2016-02-10 09:49:48'),
(599, '202_1455097807.jpg', 202, 2, 0, '2016-02-10 09:50:07', '2016-02-10 09:50:07'),
(600, '202_1455097825.jpg', 202, 3, 0, '2016-02-10 09:50:25', '2016-02-10 09:50:25'),
(601, '203_1455099533.jpg', 203, 1, 0, '2016-02-10 10:18:53', '2016-02-10 10:18:53'),
(602, '203_1455099546.jpg', 203, 2, 0, '2016-02-10 10:19:06', '2016-02-10 10:19:06'),
(603, '203_1455099564.jpg', 203, 3, 0, '2016-02-10 10:19:24', '2016-02-10 10:19:24'),
(604, '204_1455100015.jpg', 204, 1, 0, '2016-02-10 10:26:55', '2016-02-10 10:26:55'),
(605, '204_1455100028.jpg', 204, 2, 0, '2016-02-10 10:27:08', '2016-02-10 10:27:08'),
(606, '204_1455100043.jpg', 204, 3, 0, '2016-02-10 10:27:23', '2016-02-10 10:27:23'),
(607, '205_1455102618.jpg', 205, 1, 0, '2016-02-10 11:10:18', '2016-02-10 11:10:18'),
(608, '205_1455102632.jpg', 205, 2, 0, '2016-02-10 11:10:32', '2016-02-10 11:10:32'),
(609, '205_1455102650.jpg', 205, 3, 0, '2016-02-10 11:10:50', '2016-02-10 11:10:50'),
(610, '206_1455103290.jpg', 206, 1, 0, '2016-02-10 11:21:30', '2016-02-10 11:21:30'),
(611, '206_1455103336.jpg', 206, 2, 0, '2016-02-10 11:22:16', '2016-02-10 11:22:16'),
(612, '206_1455103366.jpg', 206, 3, 0, '2016-02-10 11:22:46', '2016-02-10 11:22:46'),
(613, '207_1455106368.jpg', 207, 1, 0, '2016-02-10 12:12:48', '2016-02-10 12:12:48'),
(614, '207_1455106381.jpg', 207, 2, 0, '2016-02-10 12:13:01', '2016-02-10 12:13:01'),
(615, '207_1455106397.jpg', 207, 3, 0, '2016-02-10 12:13:17', '2016-02-10 12:13:17'),
(616, '208_1455107483.jpg', 208, 1, 0, '2016-02-10 12:31:23', '2016-02-10 12:31:23'),
(617, '208_1455107495.jpg', 208, 2, 0, '2016-02-10 12:31:35', '2016-02-10 12:31:35'),
(618, '208_1455107513.jpg', 208, 3, 0, '2016-02-10 12:31:53', '2016-02-10 12:31:53'),
(619, '209_1455109254.jpg', 209, 1, 0, '2016-02-10 13:00:54', '2016-02-10 13:00:54'),
(620, '209_1455109271.jpg', 209, 2, 0, '2016-02-10 13:01:11', '2016-02-10 13:01:11'),
(621, '209_1455109290.jpg', 209, 3, 0, '2016-02-10 13:01:30', '2016-02-10 13:01:30'),
(622, '210_1455115717.jpg', 210, 1, 0, '2016-02-10 14:48:37', '2016-02-10 14:48:37'),
(623, '210_1455115731.jpg', 210, 2, 0, '2016-02-10 14:48:51', '2016-02-10 14:48:51'),
(624, '210_1455115750.jpg', 210, 3, 0, '2016-02-10 14:49:10', '2016-02-10 14:49:10'),
(625, '211_1455117073.jpg', 211, 1, 0, '2016-02-10 15:11:13', '2016-02-10 15:11:13'),
(626, '211_1455117086.jpg', 211, 2, 0, '2016-02-10 15:11:26', '2016-02-10 15:11:26'),
(627, '211_1455117101.jpg', 211, 3, 0, '2016-02-10 15:11:41', '2016-02-10 15:11:41'),
(628, '175_1456239467.jpg', 175, 1, 0, '2016-02-23 14:57:47', '2016-02-23 14:57:47'),
(629, '175_1456239480.jpg', 175, 2, 0, '2016-02-23 14:58:00', '2016-02-23 14:58:00');
INSERT INTO `pfm_counselors_documents` (`id`, `filename`, `counselor_id`, `document_id`, `is_valid`, `created`, `updated`) VALUES
(630, '175_1456239496.jpg', 175, 3, 0, '2016-02-23 14:58:16', '2016-02-23 14:58:16'),
(631, '118_1456394811.jpg', 118, 2, 0, '2016-02-25 10:06:51', '2016-02-25 10:06:51'),
(632, '65_1456395397.jpg', 65, 1, 0, '2016-02-25 10:16:37', '2016-02-25 10:16:37'),
(633, '65_1456395426.jpg', 65, 2, 0, '2016-02-25 10:17:06', '2016-02-25 10:17:06'),
(634, '65_1456395452.jpg', 65, 3, 0, '2016-02-25 10:17:32', '2016-02-25 10:17:32'),
(635, '176_1456401445.jpg', 176, 1, 0, '2016-02-25 11:57:25', '2016-02-25 11:57:25'),
(636, '176_1456401456.jpg', 176, 2, 0, '2016-02-25 11:57:36', '2016-02-25 11:57:36'),
(637, '176_1456401472.jpg', 176, 3, 0, '2016-02-25 11:57:52', '2016-02-25 11:57:52'),
(638, '212_1456831944.jpg', 212, 1, 0, '2016-03-01 11:32:24', '2016-03-01 11:32:24'),
(639, '212_1456831965.jpg', 212, 2, 0, '2016-03-01 11:32:45', '2016-03-01 11:32:45'),
(640, '212_1456831983.jpg', 212, 3, 0, '2016-03-01 11:33:03', '2016-03-01 11:33:03'),
(641, '213_1456832637.jpg', 213, 1, 0, '2016-03-01 11:43:57', '2016-03-01 11:43:57'),
(642, '213_1456832649.jpg', 213, 2, 0, '2016-03-01 11:44:09', '2016-03-01 11:44:09'),
(643, '213_1456832668.jpg', 213, 3, 0, '2016-03-01 11:44:28', '2016-03-01 11:44:28'),
(644, '214_1456833681.jpg', 214, 1, 0, '2016-03-01 12:01:21', '2016-03-01 12:01:21'),
(645, '214_1456833719.jpg', 214, 2, 0, '2016-03-01 12:01:59', '2016-03-01 12:01:59'),
(646, '214_1456833862.jpg', 214, 1, 0, '2016-03-01 12:04:22', '2016-03-01 12:04:22'),
(647, '214_1456833874.jpg', 214, 2, 0, '2016-03-01 12:04:34', '2016-03-01 12:04:34'),
(648, '214_1456833917.jpg', 214, 3, 0, '2016-03-01 12:05:17', '2016-03-01 12:05:17'),
(649, '215_1456834837.jpg', 215, 1, 0, '2016-03-01 12:20:37', '2016-03-01 12:20:37'),
(650, '215_1456834883.jpg', 215, 2, 0, '2016-03-01 12:21:23', '2016-03-01 12:21:23'),
(651, '215_1456834989.jpg', 215, 3, 0, '2016-03-01 12:23:09', '2016-03-01 12:23:09'),
(652, '216_1456836438.jpg', 216, 1, 0, '2016-03-01 12:47:18', '2016-03-01 12:47:18'),
(653, '216_1456836451.jpg', 216, 2, 0, '2016-03-01 12:47:31', '2016-03-01 12:47:31'),
(654, '216_1456836467.jpg', 216, 3, 0, '2016-03-01 12:47:47', '2016-03-01 12:47:47'),
(655, '217_1456837327.jpg', 217, 1, 0, '2016-03-01 13:02:07', '2016-03-01 13:02:07'),
(656, '217_1456837345.jpg', 217, 2, 0, '2016-03-01 13:02:25', '2016-03-01 13:02:25'),
(657, '217_1456837363.jpg', 217, 3, 0, '2016-03-01 13:02:43', '2016-03-01 13:02:43'),
(658, '218_1456839550.jpg', 218, 1, 0, '2016-03-01 13:39:10', '2016-03-01 13:39:10'),
(659, '218_1456839562.jpg', 218, 2, 0, '2016-03-01 13:39:22', '2016-03-01 13:39:22'),
(660, '218_1456839579.jpg', 218, 3, 0, '2016-03-01 13:39:39', '2016-03-01 13:39:39'),
(661, '219_1456840526.jpg', 219, 1, 0, '2016-03-01 13:55:26', '2016-03-01 13:55:26'),
(662, '219_1456840542.jpg', 219, 2, 0, '2016-03-01 13:55:42', '2016-03-01 13:55:42'),
(663, '219_1456840558.jpg', 219, 3, 0, '2016-03-01 13:55:58', '2016-03-01 13:55:58'),
(664, '220_1456841130.jpg', 220, 1, 0, '2016-03-01 14:05:30', '2016-03-01 14:05:30'),
(665, '220_1456841143.jpg', 220, 2, 0, '2016-03-01 14:05:43', '2016-03-01 14:05:43'),
(666, '220_1456841160.jpg', 220, 3, 0, '2016-03-01 14:06:00', '2016-03-01 14:06:00'),
(667, '221_1456844198.jpg', 221, 1, 0, '2016-03-01 14:56:38', '2016-03-01 14:56:38'),
(668, '221_1456844218.jpg', 221, 2, 0, '2016-03-01 14:56:58', '2016-03-01 14:56:58'),
(669, '221_1456844243.jpg', 221, 3, 0, '2016-03-01 14:57:23', '2016-03-01 14:57:23'),
(670, '222_1456844995.jpg', 222, 1, 0, '2016-03-01 15:09:55', '2016-03-01 15:09:55'),
(671, '222_1456845024.jpg', 222, 2, 0, '2016-03-01 15:10:24', '2016-03-01 15:10:24'),
(672, '222_1456845049.jpg', 222, 3, 0, '2016-03-01 15:10:49', '2016-03-01 15:10:49'),
(673, '223_1456845717.jpg', 223, 1, 0, '2016-03-01 15:21:57', '2016-03-01 15:21:57'),
(674, '223_1456845738.jpg', 223, 2, 0, '2016-03-01 15:22:18', '2016-03-01 15:22:18'),
(675, '223_1456845759.jpg', 223, 3, 0, '2016-03-01 15:22:39', '2016-03-01 15:22:39'),
(676, '224_1456846442.jpg', 224, 1, 0, '2016-03-01 15:34:02', '2016-03-01 15:34:02'),
(677, '224_1456846459.jpg', 224, 2, 0, '2016-03-01 15:34:19', '2016-03-01 15:34:19'),
(678, '224_1456846485.jpg', 224, 3, 0, '2016-03-01 15:34:45', '2016-03-01 15:34:45'),
(679, '225_1457438413.jpg', 225, 1, 0, '2016-03-08 12:00:13', '2016-03-08 12:00:13'),
(680, '225_1457438427.jpg', 225, 2, 0, '2016-03-08 12:00:27', '2016-03-08 12:00:27'),
(681, '225_1457438446.jpg', 225, 3, 0, '2016-03-08 12:00:46', '2016-03-08 12:00:46'),
(682, '226_1457440885.jpg', 226, 1, 0, '2016-03-08 12:41:25', '2016-03-08 12:41:25'),
(683, '226_1457440901.jpg', 226, 2, 0, '2016-03-08 12:41:41', '2016-03-08 12:41:41'),
(684, '226_1457440919.jpg', 226, 3, 0, '2016-03-08 12:41:59', '2016-03-08 12:41:59'),
(685, '227_1457446578.jpg', 227, 1, 0, '2016-03-08 14:16:18', '2016-03-08 14:16:18'),
(686, '227_1457446591.jpg', 227, 2, 0, '2016-03-08 14:16:31', '2016-03-08 14:16:31'),
(687, '227_1457446608.jpg', 227, 3, 0, '2016-03-08 14:16:48', '2016-03-08 14:16:48'),
(688, '228_1457447763.jpg', 228, 1, 0, '2016-03-08 14:36:03', '2016-03-08 14:36:03'),
(689, '228_1457447775.jpg', 228, 2, 0, '2016-03-08 14:36:15', '2016-03-08 14:36:15'),
(690, '228_1457447792.jpg', 228, 3, 0, '2016-03-08 14:36:32', '2016-03-08 14:36:32');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_counselors_languages`
--

CREATE TABLE `pfm_counselors_languages` (
  `id` int(11) NOT NULL,
  `language` varchar(44) COLLATE utf8_unicode_ci NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `read` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `write` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `speak` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_counselors_languages`
--

INSERT INTO `pfm_counselors_languages` (`id`, `language`, `counselor_id`, `read`, `write`, `speak`, `created`, `updated`) VALUES
(21, 'Arabe', 4, 'Excellent', 'Excellent', 'Excellent', '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(22, 'Amazigh', 4, 'faible', 'faible', 'Assez bien', '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(23, 'Français', 4, 'Excellent', 'Excellent', 'Excellent', '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(24, 'Anglais', 4, 'Assez bien', 'Assez bien', 'Assez bien', '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(25, 'Espagnol', 4, 'Très bien', 'Bien', 'Bien', '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(98, 'Arabe', 24, 'Bien', 'Bien', 'Bien', '2016-01-04 16:02:06', '2016-01-04 16:02:06'),
(99, 'Français', 24, 'Bien', 'Bien', 'Bien', '2016-01-04 16:02:06', '2016-01-04 16:02:06'),
(100, 'Anglais', 24, 'Moyen', 'Moyen', 'Moyen', '2016-01-04 16:02:06', '2016-01-04 16:02:06'),
(101, 'Amazigh', 24, 'faible', 'faible', 'faible', '2016-01-04 16:02:06', '2016-01-04 16:02:06'),
(109, 'Arabe', 19, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 09:44:15', '2016-01-05 09:44:15'),
(110, 'Français', 19, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 09:44:15', '2016-01-05 09:44:15'),
(111, 'Anglais', 19, 'Bien', 'Bien', 'Bien', '2016-01-05 09:44:15', '2016-01-05 09:44:15'),
(112, 'Arabe', 15, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 09:50:12', '2016-01-05 09:50:12'),
(113, 'Amazigh', 15, 'faible', 'faible', 'faible', '2016-01-05 09:50:12', '2016-01-05 09:50:12'),
(114, 'Français', 15, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 09:50:12', '2016-01-05 09:50:12'),
(115, 'Anglais', 15, 'Bien', 'Bien', 'Assez bien', '2016-01-05 09:50:12', '2016-01-05 09:50:12'),
(116, 'Espagnol', 15, 'Assez bien', 'Moyen', 'faible', '2016-01-05 09:50:12', '2016-01-05 09:50:12'),
(117, 'Arabe', 5, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 10:01:42', '2016-01-05 10:01:42'),
(118, 'Français', 5, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 10:01:42', '2016-01-05 10:01:42'),
(119, 'Anglais', 5, 'Moyen', 'Moyen', 'Moyen', '2016-01-05 10:01:42', '2016-01-05 10:01:42'),
(120, 'Amazigh', 5, 'faible', 'faible', 'faible', '2016-01-05 10:01:42', '2016-01-05 10:01:42'),
(121, 'Espagnol', 5, 'faible', 'faible', 'faible', '2016-01-05 10:01:42', '2016-01-05 10:01:42'),
(122, 'Arabe', 6, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 10:12:19', '2016-01-05 10:12:19'),
(123, 'Amazigh', 6, 'faible', 'faible', 'faible', '2016-01-05 10:12:19', '2016-01-05 10:12:19'),
(124, 'Français', 6, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 10:12:19', '2016-01-05 10:12:19'),
(125, 'Anglais', 6, 'Assez bien', 'Assez bien', 'Moyen', '2016-01-05 10:12:19', '2016-01-05 10:12:19'),
(128, 'Arabe', 7, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 10:19:36', '2016-01-05 10:19:36'),
(129, 'Français', 7, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 10:19:36', '2016-01-05 10:19:36'),
(130, 'Amazigh', 7, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 10:19:36', '2016-01-05 10:19:36'),
(133, 'Arabe', 8, 'Excellent', 'Excellent', 'Très bien', '2016-01-05 10:35:46', '2016-01-05 10:35:46'),
(134, 'Français', 8, 'Excellent', 'Excellent', 'Très bien', '2016-01-05 10:35:46', '2016-01-05 10:35:46'),
(137, 'Arabe', 9, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 10:38:04', '2016-01-05 10:38:04'),
(138, 'Français', 9, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 10:38:04', '2016-01-05 10:38:04'),
(139, 'Anglais', 9, 'Moyen', 'Moyen', 'Moyen', '2016-01-05 10:38:04', '2016-01-05 10:38:04'),
(142, 'Arabe', 10, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 10:42:59', '2016-01-05 10:42:59'),
(143, 'Français', 10, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 10:42:59', '2016-01-05 10:42:59'),
(144, 'Anglais', 10, 'Assez bien', 'Assez bien', 'Assez bien', '2016-01-05 10:42:59', '2016-01-05 10:42:59'),
(148, 'Arabe', 29, 'Excellent', 'Bien', 'Bien', '2016-01-05 10:51:34', '2016-01-05 10:51:34'),
(149, 'Arabe', 11, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 10:54:27', '2016-01-05 10:54:27'),
(150, 'Amazigh', 11, 'faible', 'faible', 'Très bien', '2016-01-05 10:54:27', '2016-01-05 10:54:27'),
(151, 'Français', 11, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 10:54:27', '2016-01-05 10:54:27'),
(152, 'Anglais', 11, 'faible', 'Moyen', 'Assez bien', '2016-01-05 10:54:27', '2016-01-05 10:54:27'),
(155, 'Arabe', 12, 'Excellent', 'Excellent', 'Bien', '2016-01-05 11:00:06', '2016-01-05 11:00:06'),
(156, 'Français', 12, 'Excellent', 'Excellent', 'Bien', '2016-01-05 11:00:06', '2016-01-05 11:00:06'),
(157, 'Anglais', 12, 'Assez bien', 'Assez bien', 'faible', '2016-01-05 11:00:06', '2016-01-05 11:00:06'),
(162, 'Arabe', 14, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:09:48', '2016-01-05 11:09:48'),
(163, 'Français', 14, 'Assez bien', 'Assez bien', 'Assez bien', '2016-01-05 11:09:48', '2016-01-05 11:09:48'),
(166, 'Arabe', 27, 'Excellent', 'Bien', 'Bien', '2016-01-05 11:15:10', '2016-01-05 11:15:10'),
(167, 'Français', 27, 'Bien', 'Bien', 'Bien', '2016-01-05 11:15:10', '2016-01-05 11:15:10'),
(168, 'Anglais', 27, 'Assez bien', 'Assez bien', 'Assez bien', '2016-01-05 11:15:10', '2016-01-05 11:15:10'),
(169, 'Arabe', 32, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:21:50', '2016-01-05 11:21:50'),
(170, 'Français', 32, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:21:50', '2016-01-05 11:21:50'),
(171, 'Arabe', 31, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:21:51', '2016-01-05 11:21:51'),
(172, 'Arabe', 17, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:24:27', '2016-01-05 11:24:27'),
(173, 'Français', 17, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:24:27', '2016-01-05 11:24:27'),
(174, 'Arabe', 18, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:28:43', '2016-01-05 11:28:43'),
(175, 'Amazigh', 18, 'faible', 'faible', 'Excellent', '2016-01-05 11:28:43', '2016-01-05 11:28:43'),
(176, 'Français', 18, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:28:43', '2016-01-05 11:28:43'),
(177, 'Arabe', 34, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 11:29:26', '2016-01-05 11:29:26'),
(178, 'Français', 34, 'Bien', 'Bien', 'Bien', '2016-01-05 11:29:26', '2016-01-05 11:29:26'),
(179, 'Arabe', 20, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:34:40', '2016-01-05 11:34:40'),
(180, 'Français', 20, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:34:40', '2016-01-05 11:34:40'),
(181, 'Arabe', 36, 'Bien', 'Bien', 'Bien', '2016-01-05 11:38:03', '2016-01-05 11:38:03'),
(182, 'Arabe', 33, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 11:39:38', '2016-01-05 11:39:38'),
(183, 'Français', 33, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 11:39:38', '2016-01-05 11:39:38'),
(184, 'Anglais', 33, 'Assez bien', 'Assez bien', 'Assez bien', '2016-01-05 11:39:38', '2016-01-05 11:39:38'),
(185, 'Amazigh', 33, 'faible', 'faible', 'Très bien', '2016-01-05 11:39:38', '2016-01-05 11:39:38'),
(186, 'Arabe', 35, 'Excellent', 'Très bien', 'Bien', '2016-01-05 11:42:09', '2016-01-05 11:42:09'),
(187, 'Amazigh', 35, 'faible', 'faible', 'faible', '2016-01-05 11:42:09', '2016-01-05 11:42:09'),
(188, 'Français', 35, 'Très bien', 'Excellent', 'Très bien', '2016-01-05 11:42:09', '2016-01-05 11:42:09'),
(189, 'Anglais', 35, 'Bien', 'Bien', 'Assez bien', '2016-01-05 11:42:09', '2016-01-05 11:42:09'),
(190, 'Arabe', 37, 'Bien', 'Bien', 'Bien', '2016-01-05 11:47:20', '2016-01-05 11:47:20'),
(192, 'Arabe', 26, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:59:47', '2016-01-05 11:59:47'),
(193, 'Français', 26, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 11:59:47', '2016-01-05 11:59:47'),
(196, 'Arabe', 21, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:01:26', '2016-01-05 12:01:26'),
(197, 'Français', 21, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:01:26', '2016-01-05 12:01:26'),
(198, 'Arabe', 39, 'Bien', 'Bien', 'Bien', '2016-01-05 12:09:31', '2016-01-05 12:09:31'),
(199, 'Français', 39, 'Bien', 'Bien', 'Bien', '2016-01-05 12:09:31', '2016-01-05 12:09:31'),
(200, 'Arabe', 25, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:12:26', '2016-01-05 12:12:26'),
(201, 'Français', 25, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:12:26', '2016-01-05 12:12:26'),
(202, 'Anglais', 25, 'Excellent', 'Bien', 'Bien', '2016-01-05 12:12:26', '2016-01-05 12:12:26'),
(211, 'Arabe', 41, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:17:28', '2016-01-05 12:17:28'),
(212, 'Français', 41, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 12:17:28', '2016-01-05 12:17:28'),
(213, 'Arabe', 23, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:18:12', '2016-01-05 12:18:12'),
(214, 'Français', 23, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 12:18:12', '2016-01-05 12:18:12'),
(215, 'Arabe', 42, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:27:01', '2016-01-05 12:27:01'),
(216, 'Amazigh', 42, 'Moyen', 'Très bien', 'Très bien', '2016-01-05 12:27:01', '2016-01-05 12:27:01'),
(217, 'Français', 42, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:27:01', '2016-01-05 12:27:01'),
(218, 'Arabe', 38, 'Bien', 'Bien', 'Assez bien', '2016-01-05 12:30:29', '2016-01-05 12:30:29'),
(219, 'Arabe', 43, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:32:25', '2016-01-05 12:32:25'),
(220, 'Arabe', 47, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:40:50', '2016-01-05 12:40:50'),
(221, 'Arabe', 48, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:53:25', '2016-01-05 12:53:25'),
(222, 'Arabe', 44, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 12:54:13', '2016-01-05 12:54:13'),
(223, 'Amazigh', 44, 'faible', 'faible', 'faible', '2016-01-05 12:54:13', '2016-01-05 12:54:13'),
(224, 'Français', 44, 'Excellent', 'Très bien', 'Bien', '2016-01-05 12:54:13', '2016-01-05 12:54:13'),
(225, 'Anglais', 44, 'Assez bien', 'Moyen', 'Moyen', '2016-01-05 12:54:13', '2016-01-05 12:54:13'),
(226, 'Espagnol', 44, 'Moyen', 'faible', 'faible', '2016-01-05 12:54:13', '2016-01-05 12:54:13'),
(227, 'Arabe', 49, 'Bien', 'Bien', 'Bien', '2016-01-05 13:03:24', '2016-01-05 13:03:24'),
(228, 'Arabe', 51, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 13:10:25', '2016-01-05 13:10:25'),
(229, 'Français', 51, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 13:10:25', '2016-01-05 13:10:25'),
(232, 'Arabe', 52, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 13:18:06', '2016-01-05 13:18:06'),
(233, 'Français', 52, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 13:18:06', '2016-01-05 13:18:06'),
(234, 'Arabe', 53, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 13:36:23', '2016-01-05 13:36:23'),
(235, 'Anglais', 53, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 13:36:23', '2016-01-05 13:36:23'),
(236, 'Arabe', 54, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 13:51:45', '2016-01-05 13:51:45'),
(237, 'Français', 54, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 13:51:45', '2016-01-05 13:51:45'),
(238, 'Arabe', 55, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 14:08:20', '2016-01-05 14:08:20'),
(239, 'Amazigh', 55, 'faible', 'faible', 'Très bien', '2016-01-05 14:08:20', '2016-01-05 14:08:20'),
(240, 'Français', 55, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 14:08:20', '2016-01-05 14:08:20'),
(241, 'Anglais', 55, 'Bien', 'Bien', 'Assez bien', '2016-01-05 14:08:20', '2016-01-05 14:08:20'),
(242, 'Arabe', 56, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 14:09:22', '2016-01-05 14:09:22'),
(243, 'Français', 56, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 14:09:22', '2016-01-05 14:09:22'),
(244, 'Arabe', 57, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 14:16:26', '2016-01-05 14:16:26'),
(245, 'Arabe', 58, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 14:22:05', '2016-01-05 14:22:05'),
(246, 'Français', 58, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 14:22:05', '2016-01-05 14:22:05'),
(247, 'Espagnol', 58, 'Bien', 'Bien', 'Bien', '2016-01-05 14:22:05', '2016-01-05 14:22:05'),
(248, 'Arabe', 59, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 14:36:22', '2016-01-05 14:36:22'),
(249, 'Français', 59, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 14:36:22', '2016-01-05 14:36:22'),
(250, 'Arabe', 62, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 14:54:51', '2016-01-05 14:54:51'),
(251, 'Français', 62, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 14:54:51', '2016-01-05 14:54:51'),
(252, 'Arabe', 61, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 14:55:57', '2016-01-05 14:55:57'),
(256, 'Arabe', 63, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 15:03:18', '2016-01-05 15:03:18'),
(257, 'Français', 63, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 15:03:18', '2016-01-05 15:03:18'),
(258, 'Arabe', 64, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 15:17:23', '2016-01-05 15:17:23'),
(259, 'Amazigh', 64, 'faible', 'faible', 'Très bien', '2016-01-05 15:17:23', '2016-01-05 15:17:23'),
(264, 'Arabe', 66, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 15:26:03', '2016-01-05 15:26:03'),
(265, 'Français', 66, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 15:26:03', '2016-01-05 15:26:03'),
(270, 'Arabe', 68, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 15:53:22', '2016-01-05 15:53:22'),
(271, 'Amazigh', 68, 'faible', 'faible', 'Excellent', '2016-01-05 15:53:22', '2016-01-05 15:53:22'),
(272, 'Arabe', 69, 'Excellent', 'Très bien', 'Excellent', '2016-01-05 16:04:58', '2016-01-05 16:04:58'),
(273, 'Arabe', 70, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 16:14:57', '2016-01-05 16:14:57'),
(274, 'Amazigh', 70, 'faible', 'faible', 'Bien', '2016-01-05 16:14:57', '2016-01-05 16:14:57'),
(275, 'Arabe', 71, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 16:22:10', '2016-01-05 16:22:10'),
(276, 'Français', 71, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 16:22:10', '2016-01-05 16:22:10'),
(277, 'Arabe', 67, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 16:25:06', '2016-01-05 16:25:06'),
(278, 'Amazigh', 67, 'faible', 'faible', 'Excellent', '2016-01-05 16:25:06', '2016-01-05 16:25:06'),
(279, 'Français', 67, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 16:25:06', '2016-01-05 16:25:06'),
(280, 'Anglais', 67, 'Très bien', 'Très bien', 'Très bien', '2016-01-05 16:25:06', '2016-01-05 16:25:06'),
(281, 'Arabe', 72, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 16:30:38', '2016-01-05 16:30:38'),
(282, 'Arabe', 73, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 16:36:15', '2016-01-05 16:36:15'),
(283, 'Amazigh', 73, 'faible', 'faible', 'Bien', '2016-01-05 16:36:15', '2016-01-05 16:36:15'),
(285, 'Arabe', 75, 'Excellent', 'Excellent', 'Excellent', '2016-01-05 16:53:15', '2016-01-05 16:53:15'),
(287, 'Arabe', 77, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 08:03:35', '2016-01-06 08:03:35'),
(288, 'Arabe', 78, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 08:12:28', '2016-01-06 08:12:28'),
(289, 'Arabe', 79, 'Très bien', 'Très bien', 'Très bien', '2016-01-06 08:20:01', '2016-01-06 08:20:01'),
(290, 'Arabe', 80, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 08:25:49', '2016-01-06 08:25:49'),
(291, 'Arabe', 81, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 08:32:08', '2016-01-06 08:32:08'),
(294, 'Arabe', 83, 'Très bien', 'Bien', 'Très bien', '2016-01-06 08:47:46', '2016-01-06 08:47:46'),
(296, 'Arabe', 85, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 09:02:53', '2016-01-06 09:02:53'),
(297, 'Arabe', 86, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 09:41:21', '2016-01-06 09:41:21'),
(298, 'Anglais', 86, 'Excellent', 'Bien', 'Bien', '2016-01-06 09:41:21', '2016-01-06 09:41:21'),
(299, 'Arabe', 87, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 09:51:55', '2016-01-06 09:51:55'),
(300, 'Anglais', 87, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 09:51:55', '2016-01-06 09:51:55'),
(301, 'Arabe', 88, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 10:02:18', '2016-01-06 10:02:18'),
(302, 'Arabe', 89, 'Très bien', 'Très bien', 'Très bien', '2016-01-06 10:12:20', '2016-01-06 10:12:20'),
(303, 'Arabe', 45, 'Très bien', 'Très bien', 'Très bien', '2016-01-06 10:18:43', '2016-01-06 10:18:43'),
(304, 'Arabe', 84, 'Bien', 'Très bien', 'Bien', '2016-01-06 10:45:11', '2016-01-06 10:45:11'),
(305, 'Arabe', 76, 'Très bien', 'Très bien', 'Très bien', '2016-01-06 10:51:59', '2016-01-06 10:51:59'),
(306, 'Arabe', 74, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 10:53:26', '2016-01-06 10:53:26'),
(307, 'Arabe', 50, 'Très bien', 'Très bien', 'Très bien', '2016-01-06 10:58:47', '2016-01-06 10:58:47'),
(308, 'Français', 50, 'Très bien', 'Très bien', 'Très bien', '2016-01-06 10:58:47', '2016-01-06 10:58:47'),
(309, 'Anglais', 50, 'Très bien', 'Très bien', 'Très bien', '2016-01-06 10:58:47', '2016-01-06 10:58:47'),
(310, 'Arabe', 22, 'Bien', 'Bien', 'Bien', '2016-01-06 11:07:30', '2016-01-06 11:07:30'),
(311, 'Français', 22, 'Bien', 'Bien', 'Bien', '2016-01-06 11:07:30', '2016-01-06 11:07:30'),
(314, 'Arabe', 16, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 11:11:14', '2016-01-06 11:11:14'),
(315, 'Français', 16, 'Bien', 'Bien', 'Bien', '2016-01-06 11:11:14', '2016-01-06 11:11:14'),
(316, 'Arabe', 90, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 11:42:34', '2016-01-06 11:42:34'),
(317, 'Arabe', 13, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 12:01:05', '2016-01-06 12:01:05'),
(318, 'Français', 13, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 12:01:05', '2016-01-06 12:01:05'),
(319, 'Arabe', 91, 'Bien', 'Bien', 'Bien', '2016-01-06 14:14:08', '2016-01-06 14:14:08'),
(324, 'Arabe', 92, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 15:18:41', '2016-01-06 15:18:41'),
(328, 'Arabe', 93, 'Excellent', 'Excellent', 'Excellent', '2016-01-06 17:07:05', '2016-01-06 17:07:05'),
(329, 'Arabe', 94, 'Très bien', 'Très bien', 'Très bien', '2016-01-06 17:19:45', '2016-01-06 17:19:45'),
(334, 'Arabe', 40, 'Très bien', 'Très bien', 'Très bien', '2016-01-07 08:27:06', '2016-01-07 08:27:06'),
(335, 'Amazigh', 40, 'faible', 'Très bien', 'faible', '2016-01-07 08:27:06', '2016-01-07 08:27:06'),
(336, 'Français', 40, 'Très bien', 'Très bien', 'Très bien', '2016-01-07 08:27:06', '2016-01-07 08:27:06'),
(337, 'Anglais', 40, 'Moyen', 'Moyen', 'Assez bien', '2016-01-07 08:27:06', '2016-01-07 08:27:06'),
(338, 'Arabe', 46, 'Excellent', 'Excellent', 'Excellent', '2016-01-07 10:01:22', '2016-01-07 10:01:22'),
(339, 'Français', 46, 'Excellent', 'Bien', 'Bien', '2016-01-07 10:01:22', '2016-01-07 10:01:22'),
(340, 'Arabe', 30, 'Bien', 'Bien', 'Bien', '2016-01-07 10:36:34', '2016-01-07 10:36:34'),
(341, 'Français', 30, 'Bien', 'Bien', 'Bien', '2016-01-07 10:36:34', '2016-01-07 10:36:34'),
(345, 'Français', 95, 'Excellent', 'Excellent', 'Excellent', '2016-01-07 13:36:15', '2016-01-07 13:36:15'),
(346, 'Arabe', 95, 'Très bien', 'Assez bien', 'Assez bien', '2016-01-07 13:36:15', '2016-01-07 13:36:15'),
(347, 'Arabe', 96, 'Très bien', 'Très bien', 'Très bien', '2016-01-14 12:20:11', '2016-01-14 12:20:11'),
(348, 'Arabe', 97, 'Excellent', 'Excellent', 'Excellent', '2016-01-14 12:33:16', '2016-01-14 12:33:16'),
(350, 'Arabe', 98, 'Excellent', 'Excellent', 'Excellent', '2016-01-14 13:11:06', '2016-01-14 13:11:06'),
(351, 'Amazigh', 99, 'Assez bien', 'Moyen', 'Excellent', '2016-01-14 13:25:00', '2016-01-14 13:25:00'),
(352, 'Arabe', 100, 'Excellent', 'Excellent', 'Excellent', '2016-01-14 13:48:33', '2016-01-14 13:48:33'),
(353, 'Arabe', 101, 'Excellent', 'Excellent', 'Excellent', '2016-01-14 13:57:08', '2016-01-14 13:57:08'),
(354, 'Arabe', 102, 'Très bien', 'Très bien', 'Très bien', '2016-01-14 14:07:28', '2016-01-14 14:07:28'),
(355, 'Amazigh', 103, 'Excellent', 'faible', 'Excellent', '2016-01-14 14:15:14', '2016-01-14 14:15:14'),
(356, 'Arabe', 104, 'Excellent', 'Excellent', 'Excellent', '2016-01-15 09:16:07', '2016-01-15 09:16:07'),
(357, 'Anglais', 104, 'Excellent', 'Excellent', 'Excellent', '2016-01-15 09:16:07', '2016-01-15 09:16:07'),
(358, 'Arabe', 105, 'Excellent', 'Excellent', 'Excellent', '2016-01-15 09:21:17', '2016-01-15 09:21:17'),
(359, 'Arabe', 106, 'Excellent', 'Excellent', 'Excellent', '2016-01-15 10:24:48', '2016-01-15 10:24:48'),
(360, 'Arabe', 108, 'Excellent', 'Excellent', 'Excellent', '2016-01-18 12:52:47', '2016-01-18 12:52:47'),
(361, 'Arabe', 109, 'Excellent', 'Excellent', 'Excellent', '2016-01-18 13:14:31', '2016-01-18 13:14:31'),
(362, 'Arabe', 110, 'Très bien', 'Très bien', 'Très bien', '2016-01-18 13:35:51', '2016-01-18 13:35:51'),
(363, 'Arabe', 111, 'Bien', 'Bien', 'Bien', '2016-01-18 13:56:40', '2016-01-18 13:56:40'),
(364, 'Arabe', 112, 'Excellent', 'Excellent', 'Excellent', '2016-01-18 14:12:54', '2016-01-18 14:12:54'),
(365, 'Arabe', 113, 'Excellent', 'Excellent', 'Excellent', '2016-01-18 14:40:22', '2016-01-18 14:40:22'),
(366, 'Arabe', 114, 'Excellent', 'Excellent', 'Excellent', '2016-01-18 14:53:03', '2016-01-18 14:53:03'),
(367, 'Arabe', 115, 'Très bien', 'Très bien', 'Très bien', '2016-01-18 15:06:37', '2016-01-18 15:06:37'),
(368, 'Arabe', 116, 'Excellent', 'Excellent', 'Excellent', '2016-01-18 15:19:26', '2016-01-18 15:19:26'),
(369, 'Arabe', 117, 'Très bien', 'Très bien', 'Très bien', '2016-01-18 15:28:19', '2016-01-18 15:28:19'),
(371, 'Arabe', 119, 'Excellent', 'Excellent', 'Excellent', '2016-01-18 15:53:36', '2016-01-18 15:53:36'),
(372, 'Arabe', 120, 'Très bien', 'Très bien', 'Très bien', '2016-01-18 16:11:38', '2016-01-18 16:11:38'),
(373, 'Arabe', 121, 'Très bien', 'Très bien', 'Très bien', '2016-01-18 16:21:22', '2016-01-18 16:21:22'),
(374, 'Arabe', 122, 'Excellent', 'Excellent', 'Excellent', '2016-01-19 11:39:23', '2016-01-19 11:39:23'),
(375, 'Arabe', 123, 'Très bien', 'Très bien', 'Très bien', '2016-01-19 11:50:40', '2016-01-19 11:50:40'),
(376, 'Arabe', 124, 'Très bien', 'Très bien', 'Très bien', '2016-01-19 12:13:23', '2016-01-19 12:13:23'),
(377, 'Arabe', 125, 'Très bien', 'Très bien', 'Très bien', '2016-01-19 12:51:26', '2016-01-19 12:51:26'),
(378, 'Arabe', 126, 'Excellent', 'Excellent', 'Excellent', '2016-01-19 13:15:52', '2016-01-19 13:15:52'),
(379, 'Français', 127, 'Excellent', 'Excellent', 'Excellent', '2016-01-19 13:48:16', '2016-01-19 13:48:16'),
(380, 'Arabe', 128, 'Excellent', 'Excellent', 'Excellent', '2016-01-19 14:22:36', '2016-01-19 14:22:36'),
(381, 'Arabe', 129, 'Excellent', 'Excellent', 'Excellent', '2016-01-19 14:37:39', '2016-01-19 14:37:39'),
(382, 'Arabe', 130, 'Bien', 'Bien', 'Bien', '2016-01-19 14:48:22', '2016-01-19 14:48:22'),
(383, 'Arabe', 131, 'Très bien', 'Très bien', 'Très bien', '2016-01-19 15:01:54', '2016-01-19 15:01:54'),
(384, 'Arabe', 132, 'Excellent', 'Excellent', 'Excellent', '2016-01-19 15:44:47', '2016-01-19 15:44:47'),
(385, 'Arabe', 133, 'Excellent', 'Excellent', 'Excellent', '2016-01-19 16:11:15', '2016-01-19 16:11:15'),
(386, 'Arabe', 134, 'Excellent', 'Excellent', 'Excellent', '2016-01-19 16:23:56', '2016-01-19 16:23:56'),
(387, 'Arabe', 135, 'Bien', 'Excellent', 'Bien', '2016-01-20 09:22:58', '2016-01-20 09:22:58'),
(388, 'Arabe', 136, 'Excellent', 'Excellent', 'Excellent', '2016-01-20 09:36:04', '2016-01-20 09:36:04'),
(389, 'Arabe', 137, 'Excellent', 'Excellent', 'Excellent', '2016-01-20 14:28:32', '2016-01-20 14:28:32'),
(390, 'Arabe', 138, 'Bien', 'Bien', 'Très bien', '2016-01-20 14:46:41', '2016-01-20 14:46:41'),
(391, 'Arabe', 139, 'Excellent', 'Excellent', 'Excellent', '2016-01-22 11:31:12', '2016-01-22 11:31:12'),
(392, 'Anglais', 140, 'Excellent', 'Très bien', 'Excellent', '2016-01-25 11:41:29', '2016-01-25 11:41:29'),
(393, 'Amazigh', 141, 'Excellent', 'Excellent', 'Excellent', '2016-01-25 12:11:27', '2016-01-25 12:11:27'),
(394, 'Arabe', 28, 'Très bien', 'Très bien', 'Très bien', '2016-01-25 14:51:51', '2016-01-25 14:51:51'),
(395, 'Français', 28, 'Très bien', 'Très bien', 'Très bien', '2016-01-25 14:51:51', '2016-01-25 14:51:51'),
(396, 'Arabe', 107, 'Excellent', 'Excellent', 'Excellent', '2016-01-26 12:19:30', '2016-01-26 12:19:30'),
(397, 'Arabe', 142, 'Excellent', 'Excellent', 'Excellent', '2016-01-26 12:56:21', '2016-01-26 12:56:21'),
(398, 'Arabe', 143, 'Excellent', 'Excellent', 'Excellent', '2016-01-26 14:11:09', '2016-01-26 14:11:09'),
(399, 'Anglais', 144, 'Très bien', 'Bien', 'Bien', '2016-01-26 14:40:50', '2016-01-26 14:40:50'),
(400, 'Arabe', 145, 'Excellent', 'Excellent', 'Excellent', '2016-01-26 14:53:12', '2016-01-26 14:53:12'),
(401, 'Arabe', 146, 'Excellent', 'Excellent', 'Excellent', '2016-01-26 15:06:17', '2016-01-26 15:06:17'),
(402, 'Arabe', 147, 'Excellent', 'Excellent', 'Excellent', '2016-01-27 10:34:06', '2016-01-27 10:34:06'),
(403, 'Arabe', 148, 'Excellent', 'Excellent', 'Excellent', '2016-01-27 11:49:45', '2016-01-27 11:49:45'),
(404, 'Arabe', 149, 'Excellent', 'Excellent', 'Excellent', '2016-01-27 15:03:18', '2016-01-27 15:03:18'),
(405, 'Arabe', 150, 'Excellent', 'Excellent', 'Excellent', '2016-01-27 15:36:09', '2016-01-27 15:36:09'),
(406, 'Arabe', 151, 'Excellent', 'Excellent', 'Excellent', '2016-01-27 16:26:38', '2016-01-27 16:26:38'),
(407, 'Arabe', 152, 'Excellent', 'Excellent', 'Excellent', '2016-01-27 16:40:36', '2016-01-27 16:40:36'),
(408, 'Arabe', 153, 'Très bien', 'Très bien', 'Très bien', '2016-01-28 12:26:14', '2016-01-28 12:26:14'),
(409, 'Arabe', 154, 'Très bien', 'Très bien', 'Très bien', '2016-01-28 12:35:12', '2016-01-28 12:35:12'),
(410, 'Arabe', 155, 'Excellent', 'Excellent', 'Excellent', '2016-01-28 13:12:09', '2016-01-28 13:12:09'),
(411, 'Amazigh', 156, 'Excellent', 'Excellent', 'Excellent', '2016-01-28 15:03:34', '2016-01-28 15:03:34'),
(412, 'Arabe', 157, 'Très bien', 'Très bien', 'Très bien', '2016-01-28 15:36:52', '2016-01-28 15:36:52'),
(413, 'Arabe', 158, 'Très bien', 'Très bien', 'Très bien', '2016-01-28 15:47:06', '2016-01-28 15:47:06'),
(414, 'Arabe', 159, 'Excellent', 'Excellent', 'Excellent', '2016-01-28 16:02:04', '2016-01-28 16:02:04'),
(415, 'Amazigh', 160, 'Bien', 'Bien', 'Excellent', '2016-01-28 16:16:37', '2016-01-28 16:16:37'),
(416, 'Arabe', 161, 'Excellent', 'Excellent', 'Excellent', '2016-01-28 16:31:39', '2016-01-28 16:31:39'),
(417, 'Arabe', 162, 'Très bien', 'Très bien', 'Très bien', '2016-01-28 16:46:24', '2016-01-28 16:46:24'),
(418, 'Amazigh', 163, 'Bien', 'Bien', 'Excellent', '2016-01-29 10:32:59', '2016-01-29 10:32:59'),
(419, 'Arabe', 164, 'Très bien', 'Très bien', 'Très bien', '2016-01-29 10:43:37', '2016-01-29 10:43:37'),
(420, 'Amazigh', 165, 'Assez bien', 'Assez bien', 'Excellent', '2016-01-29 11:56:32', '2016-01-29 11:56:32'),
(421, 'Arabe', 166, 'Très bien', 'Très bien', 'Très bien', '2016-01-29 12:07:08', '2016-01-29 12:07:08'),
(422, 'Arabe', 167, 'Excellent', 'Excellent', 'Excellent', '2016-01-29 15:08:15', '2016-01-29 15:08:15'),
(423, 'Arabe', 168, 'Excellent', 'Excellent', 'Excellent', '2016-01-29 15:29:26', '2016-01-29 15:29:26'),
(424, 'Arabe', 169, 'Excellent', 'Excellent', 'Excellent', '2016-01-29 15:46:34', '2016-01-29 15:46:34'),
(425, 'Arabe', 170, 'Excellent', 'Excellent', 'Excellent', '2016-01-29 15:57:28', '2016-01-29 15:57:28'),
(426, 'Arabe', 171, 'Excellent', 'Excellent', 'Excellent', '2016-02-01 15:27:17', '2016-02-01 15:27:17'),
(427, 'Arabe', 172, 'Très bien', 'Bien', 'Très bien', '2016-02-01 15:40:53', '2016-02-01 15:40:53'),
(428, 'Arabe', 173, 'Très bien', 'Très bien', 'Très bien', '2016-02-01 16:04:02', '2016-02-01 16:04:02'),
(429, 'Arabe', 174, 'Excellent', 'Excellent', 'Excellent', '2016-02-01 16:22:37', '2016-02-01 16:22:37'),
(430, 'Anglais', 177, 'Excellent', 'Excellent', 'Très bien', '2016-02-03 13:59:16', '2016-02-03 13:59:16'),
(431, 'Arabe', 178, 'Bien', 'Bien', 'Bien', '2016-02-03 15:00:50', '2016-02-03 15:00:50'),
(432, 'Arabe', 179, 'Bien', 'Bien', 'Bien', '2016-02-03 15:11:08', '2016-02-03 15:11:08'),
(433, 'Arabe', 180, 'Excellent', 'Excellent', 'Excellent', '2016-02-03 15:27:26', '2016-02-03 15:27:26'),
(434, 'Arabe', 200, 'Bien', 'Bien', 'Bien', '2016-02-05 12:25:05', '2016-02-05 12:25:05'),
(435, 'Arabe', 181, 'Excellent', 'Excellent', 'Excellent', '2016-02-05 14:35:10', '2016-02-05 14:35:10'),
(436, 'Arabe', 183, 'Excellent', 'Excellent', 'Excellent', '2016-02-05 16:38:00', '2016-02-05 16:38:00'),
(437, 'Arabe', 184, 'Excellent', 'Excellent', 'Excellent', '2016-02-05 16:44:56', '2016-02-05 16:44:56'),
(438, 'Arabe', 185, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 10:53:21', '2016-02-08 10:53:21'),
(439, 'Arabe', 186, 'Très bien', 'Très bien', 'Très bien', '2016-02-08 11:05:43', '2016-02-08 11:05:43'),
(440, 'Arabe', 187, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 11:21:42', '2016-02-08 11:21:42'),
(441, 'Arabe', 188, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 11:36:36', '2016-02-08 11:36:36'),
(442, 'Arabe', 189, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 11:46:22', '2016-02-08 11:46:22'),
(443, 'Arabe', 190, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 11:56:48', '2016-02-08 11:56:48'),
(444, 'Arabe', 199, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 12:21:41', '2016-02-08 12:21:41'),
(445, 'Arabe', 191, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 13:20:51', '2016-02-08 13:20:51'),
(446, 'Arabe', 192, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 13:51:42', '2016-02-08 13:51:42'),
(447, 'Arabe', 193, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 14:05:31', '2016-02-08 14:05:31'),
(448, 'Amazigh', 194, 'Assez bien', 'Assez bien', 'Excellent', '2016-02-08 14:16:14', '2016-02-08 14:16:14'),
(449, 'Arabe', 195, 'Très bien', 'Très bien', 'Très bien', '2016-02-08 14:40:36', '2016-02-08 14:40:36'),
(450, 'Amazigh', 196, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 15:05:24', '2016-02-08 15:05:24'),
(451, 'Arabe', 197, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 15:15:40', '2016-02-08 15:15:40'),
(452, 'Arabe', 198, 'Excellent', 'Excellent', 'Excellent', '2016-02-08 15:51:08', '2016-02-08 15:51:08'),
(453, 'Amazigh', 202, 'Assez bien', 'Assez bien', 'Excellent', '2016-02-10 09:48:53', '2016-02-10 09:48:53'),
(454, 'Arabe', 203, 'Excellent', 'Excellent', 'Excellent', '2016-02-10 10:17:40', '2016-02-10 10:17:40'),
(455, 'Arabe', 204, 'Excellent', 'Excellent', 'Excellent', '2016-02-10 10:26:18', '2016-02-10 10:26:18'),
(456, 'Arabe', 205, 'Excellent', 'Excellent', 'Excellent', '2016-02-10 11:08:59', '2016-02-10 11:08:59'),
(457, 'Arabe', 206, 'Excellent', 'Excellent', 'Excellent', '2016-02-10 11:20:55', '2016-02-10 11:20:55'),
(458, 'Amazigh', 207, 'Moyen', 'Moyen', 'Excellent', '2016-02-10 12:11:40', '2016-02-10 12:11:40'),
(459, 'Amazigh', 208, 'Moyen', 'Moyen', 'Excellent', '2016-02-10 12:30:45', '2016-02-10 12:30:45'),
(460, 'Amazigh', 209, 'Bien', 'Excellent', 'Excellent', '2016-02-10 12:59:33', '2016-02-10 12:59:33'),
(461, 'Arabe', 210, 'Excellent', 'Excellent', 'Excellent', '2016-02-10 14:47:45', '2016-02-10 14:47:45'),
(462, 'Arabe', 211, 'Excellent', 'Excellent', 'Excellent', '2016-02-10 15:09:41', '2016-02-10 15:09:41'),
(463, 'Arabe', 175, 'Excellent', 'Excellent', 'Excellent', '2016-02-23 14:57:05', '2016-02-23 14:57:05'),
(464, 'Arabe', 82, 'Excellent', 'Excellent', 'Excellent', '2016-02-24 10:49:54', '2016-02-24 10:49:54'),
(465, 'Amazigh', 82, 'faible', 'faible', 'Excellent', '2016-02-24 10:49:54', '2016-02-24 10:49:54'),
(466, 'Arabe', 118, 'Excellent', 'Excellent', 'Excellent', '2016-02-25 10:06:22', '2016-02-25 10:06:22'),
(467, 'Arabe', 65, 'Excellent', 'Excellent', 'Excellent', '2016-02-25 10:09:42', '2016-02-25 10:09:42'),
(468, 'Amazigh', 65, 'faible', 'faible', 'faible', '2016-02-25 10:09:42', '2016-02-25 10:09:42'),
(469, 'Français', 65, 'Excellent', 'Excellent', 'Très bien', '2016-02-25 10:09:42', '2016-02-25 10:09:42'),
(470, 'Anglais', 65, 'Très bien', 'Très bien', 'Assez bien', '2016-02-25 10:09:42', '2016-02-25 10:09:42'),
(471, 'Arabe', 176, 'Excellent', 'Excellent', 'Excellent', '2016-02-25 11:56:39', '2016-02-25 11:56:39'),
(472, 'Arabe', 212, 'Excellent', 'Excellent', 'Excellent', '2016-03-01 11:31:25', '2016-03-01 11:31:25'),
(473, 'Arabe', 213, 'Très bien', 'Très bien', 'Très bien', '2016-03-01 11:43:11', '2016-03-01 11:43:11'),
(476, 'Arabe', 214, 'Excellent', 'Excellent', 'Excellent', '2016-03-01 12:04:12', '2016-03-01 12:04:12'),
(477, 'Arabe', 215, 'Très bien', 'Très bien', 'Très bien', '2016-03-01 12:19:36', '2016-03-01 12:19:36'),
(478, 'Arabe', 216, 'Excellent', 'Excellent', 'Excellent', '2016-03-01 12:46:26', '2016-03-01 12:46:26'),
(479, 'Amazigh', 217, 'faible', 'faible', 'Excellent', '2016-03-01 13:01:22', '2016-03-01 13:01:22'),
(480, 'Arabe', 218, 'Excellent', 'Excellent', 'Excellent', '2016-03-01 13:38:35', '2016-03-01 13:38:35'),
(481, 'Arabe', 219, 'Très bien', 'Très bien', 'Très bien', '2016-03-01 13:54:37', '2016-03-01 13:54:37'),
(482, 'Amazigh', 220, 'faible', 'faible', 'Très bien', '2016-03-01 14:04:17', '2016-03-01 14:04:17'),
(483, 'Arabe', 221, 'Très bien', 'Très bien', 'Très bien', '2016-03-01 14:55:33', '2016-03-01 14:55:33'),
(484, 'Arabe', 222, 'Excellent', 'Excellent', 'Excellent', '2016-03-01 15:08:49', '2016-03-01 15:08:49'),
(485, 'Arabe', 223, 'Très bien', 'Très bien', 'Très bien', '2016-03-01 15:21:07', '2016-03-01 15:21:07'),
(486, 'Arabe', 224, 'Très bien', 'Très bien', 'Très bien', '2016-03-01 15:31:57', '2016-03-01 15:31:57'),
(487, 'Arabe', 225, 'Excellent', 'Excellent', 'Excellent', '2016-03-08 11:59:06', '2016-03-08 11:59:06'),
(488, 'Arabe', 226, 'Excellent', 'Excellent', 'Excellent', '2016-03-08 12:37:53', '2016-03-08 12:37:53'),
(489, 'Arabe', 227, 'Excellent', 'Excellent', 'Excellent', '2016-03-08 14:15:39', '2016-03-08 14:15:39'),
(490, 'Arabe', 228, 'Excellent', 'Très bien', 'Très bien', '2016-03-08 14:35:28', '2016-03-08 14:35:28');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_counselors_specialities`
--

CREATE TABLE `pfm_counselors_specialities` (
  `id` int(11) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `speciality_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pfm_diplomes`
--

CREATE TABLE `pfm_diplomes` (
  `id` int(11) NOT NULL,
  `diplome_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_diplomes`
--

INSERT INTO `pfm_diplomes` (`id`, `diplome_type_id`, `name`, `created`, `updated`) VALUES
(1, 1, 'Ingénieur', '2015-07-23 00:00:00', '2015-12-21 16:10:41'),
(2, 2, 'Technicien', '2015-07-23 00:00:00', '2016-04-13 09:15:54'),
(4, 1, 'Autre', '2015-12-21 16:15:20', '2016-04-13 09:16:21');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_diplome_types`
--

CREATE TABLE `pfm_diplome_types` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `grade` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_diplome_types`
--

INSERT INTO `pfm_diplome_types` (`id`, `name`, `grade`, `created`, `updated`) VALUES
(1, 'Ingénierie', 1, '2015-07-11 19:46:14', '2015-07-11 19:46:14'),
(2, 'Technique', 2, '2015-07-16 00:00:00', '2015-07-23 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_documents`
--

CREATE TABLE `pfm_documents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accepted_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_documents`
--

INSERT INTO `pfm_documents` (`id`, `name`, `icon`, `title`, `accepted_types`, `created`, `updated`) VALUES
(1, 'CIN', 'ti-id-badge', 'Attachez svp une copie de votre CIN', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00'),
(2, 'Diplôme', 'ti-medall', 'Attachez svp une copie de votre diplôme', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00'),
(3, 'Fiche anthropométrique  ou casier judiciaire', 'ti-file', 'Attachez svp une copie de votre fiche anthropométrique  ou casier judiciaire', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_establishments`
--

CREATE TABLE `pfm_establishments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abreviation` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_establishments`
--

INSERT INTO `pfm_establishments` (`id`, `name`, `abreviation`, `logo`, `created`, `updated`) VALUES
(1, 'Institut agronomique et vétérinaire Hassan II', 'IAV', '1_logo_1441316695.png', '2015-07-23 00:00:00', '2015-07-23 00:00:00'),
(5, 'Autre', 'Autre', NULL, NULL, NULL),
(6, 'Institut Royal des Techniciens Spécialisés en Eaux et Forêts de Salé', 'IRTSEF salé', NULL, '2016-01-04 11:08:11', '2016-01-04 11:41:50'),
(7, 'Institut Technique Agricole de Tiflet', 'ITA Tiflet', NULL, '2016-01-04 11:09:49', '2016-01-04 11:57:00'),
(8, 'Institut des Techniciens Spécialisés en Agriculture de Témara', 'ITSA Temara', NULL, '2016-01-04 11:10:31', '2016-01-04 11:41:44'),
(9, 'Institut des Techniciens Spécialisés en  Mécanique Agricole et en Equipement Rural de Bouknadel ', 'ITSMAER Bouknadel', NULL, '2016-01-04 11:10:44', '2016-01-04 11:42:05'),
(10, 'Institut Royal des Techniciens Spécialisés en Elevage de Fouarat –Kénitra', 'IRTSE Fouarate', NULL, '2016-01-04 11:11:04', '2016-01-04 11:19:21'),
(11, 'Institut Technique Agricole de Mechrâa Belksiri', 'ITA Belksiri', NULL, '2016-01-04 11:11:19', '2016-01-04 11:19:59'),
(12, 'Institut Prince Sidi Mohammed des Techniciens Spécialisés en Gestion et en Commerce  Agricole', 'ITPSMGCA', NULL, '2016-01-04 11:11:31', '2016-01-05 10:48:16'),
(13, 'Institut Technique Agricole de la Chaouia', 'ITA Chaouia', NULL, '2016-01-04 11:11:44', '2016-01-04 11:42:14'),
(14, 'Institut Technique Agricole Khmiss M’touh', 'ITA Khmiss M’touh', NULL, '2016-01-04 11:11:57', '2016-01-04 11:34:08'),
(15, 'Complexe FBS ', 'Complexe FBS ', NULL, '2016-01-04 11:12:13', '2016-01-04 11:12:13'),
(16, 'Institut Technique Agricole de Ben Khlil-Khénifra', 'ITA Ben Khélil', NULL, '2016-01-04 11:12:24', '2016-01-04 11:22:50'),
(17, 'Institut Technique Agricole de Guelmim', 'ITA Guelmim', NULL, '2016-01-04 11:12:57', '2016-01-04 11:42:26'),
(18, 'Institut des Techniciens Spécialisés en Agriculture d’Ouled Taima', 'ITSA Ouled Teima', NULL, '2016-01-04 11:13:12', '2016-01-04 11:42:35'),
(19, 'Institut des Techniciens Spécialisés en Agriculture Ait Melloul', 'ITSA Ait Melloul', NULL, '2016-01-04 11:13:31', '2016-01-04 11:36:01'),
(20, 'Institut des Techniciens Spécialisés en Horticulture de Meknès', 'ITSH Meknès', NULL, '2016-01-04 11:13:45', '2016-01-04 11:25:44'),
(21, 'Institut Technique Agricole d’Ain Taoujdate', 'ITA Ain Taoujdate', NULL, '2016-01-04 11:13:59', '2016-01-04 11:26:13'),
(22, 'Institut des Techniciens Spécialisés en  Génie Rural et en Topograpghie de Meknès', 'ITSGRT Meknès', NULL, '2016-01-04 11:14:11', '2016-01-04 11:26:34'),
(23, 'Institut Technique Agricole d’Oued Amlil', 'ITA Oued Amlil', NULL, '2016-01-04 11:14:29', '2016-01-04 11:26:59'),
(24, 'Institut Technique Agricole de Sahel Boutaher', 'ITA Sahel Boutahar', NULL, '2016-01-04 11:14:42', '2016-01-04 11:27:23'),
(25, 'Institut des Techniciens Spécialisés en Agriculture Zraib', 'ITSA Zraib', NULL, '2016-01-04 11:14:52', '2016-01-04 11:34:43'),
(26, 'Institut technique agricole Berkane', 'ITA Berkane', NULL, '2016-01-04 11:15:03', '2016-01-05 10:31:40'),
(27, 'Institut des Techniciens Spécialisés en Agriculture  d’Errachidia', 'ITSA d’Errachidia', NULL, '2016-01-04 11:15:13', '2016-01-04 11:31:33'),
(28, 'Institut des Techniciens Spécialisés en Agriculture de Souihla –Marrakech', 'ITSA Souihla', NULL, '2016-01-04 11:15:25', '2016-01-04 11:32:02'),
(29, 'Institut Technique Agricole de Jemaa Shaim', 'ITA Jemma Shaim', NULL, '2016-01-04 11:15:46', '2016-01-04 11:32:35'),
(30, 'Institut Technique Agricole de Larache', 'ITA Larache', NULL, '2016-01-04 11:16:23', '2016-01-04 11:33:04'),
(31, 'Institut des Techniciens Spécialisés en Agriculture de Ben Karrich-Tétouan', 'ITSA Ben Karrich', NULL, '2016-01-04 11:16:53', '2016-01-04 11:43:13'),
(32, 'Institut des Techniciens Spécialisés en Horticulture et Commercialisation Agadir', 'ITSHC Agadir', NULL, '2016-01-04 11:39:50', '2016-01-04 11:39:50'),
(33, 'Ecole Nationale d''Agriculture de Meknès', 'ENA Meknès', NULL, '2016-01-04 11:53:22', '2016-01-04 11:53:22'),
(34, 'Ecole national forestiere des ingenieurs de Salé', 'ENFI Salé', NULL, '2016-01-04 11:54:41', '2016-01-04 11:54:41'),
(35, 'Institut Technique Agricole Fquih Ben salah', 'ITA FBS', NULL, '2016-01-14 13:19:44', '2016-01-14 13:19:44');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_languages`
--

CREATE TABLE `pfm_languages` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pfm_official_specialities`
--

CREATE TABLE `pfm_official_specialities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pfm_official_specialities`
--

INSERT INTO `pfm_official_specialities` (`id`, `name`, `created`, `updated`) VALUES
(1, 'Protection des Cultures et de l''Environnement', '2016-01-19 10:10:56', '2016-04-18 09:22:27'),
(2, 'Marché et Commercialisation des Produits,Intrants Agricoles et Agroéquipement ', '2016-01-19 10:11:05', '2016-04-18 09:44:51'),
(5, 'Productions Animales ,Pastoralisme et Biotechnologie Animale', '2016-01-19 10:11:38', '2016-04-18 09:19:00'),
(6, 'Gestion des  Entreprises Agricoles', '2016-01-19 10:11:52', '2016-04-18 09:23:02'),
(7, 'Agriculture Générale', '2016-01-19 10:12:01', '2016-04-18 09:23:13'),
(8, 'Productions Végétales et Biotechnologie Végétale', '2016-01-19 10:12:09', '2016-04-18 09:20:29'),
(9, 'Industries  et Valorisation des Produits Agricoles  et Alimentaires ', '2016-01-19 10:12:18', '2016-04-18 09:22:16'),
(10, 'Agroéquipements et Génie Rural', '2016-01-19 10:12:29', '2016-01-19 10:12:29'),
(11, 'Développement Economique et Sociale ', '2016-01-19 10:12:40', '2016-04-18 09:21:50'),
(12, 'Qualité Agricole et Alimentaire', '2016-01-19 10:13:02', '2016-04-18 09:22:01'),
(14, 'Ressources Naturelles et Environnement ', '2016-01-19 10:13:19', '2016-04-18 09:21:32');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_professional_experiences`
--

CREATE TABLE `pfm_professional_experiences` (
  `id` int(11) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `function` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organisation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_actual` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_professional_experiences`
--

INSERT INTO `pfm_professional_experiences` (`id`, `counselor_id`, `start_date`, `end_date`, `function`, `organisation`, `is_actual`, `type`, `created`, `updated`) VALUES
(21, 4, '2013-09-01', '2015-12-22', 'Directrice et consultante', 'Cabinet d''etude AGINOVA consult', 1, NULL, '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(22, 4, '2011-03-01', '2013-08-01', 'Chef de la division de suivi des financements extérieurs à la direction de gestion des projets', 'Agence pour le Développement agricole - ADA', 0, NULL, '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(23, 4, '2009-08-01', '2011-02-01', 'Chef de la division de la zone nord à la direction de gestion des projets', 'Agence pour le Développement agricole - ADA', 0, NULL, '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(24, 4, '2005-05-01', '2009-06-01', 'Chef de service de l''orientation de la production animale', 'Direction de l’élevage, MAPM', 0, NULL, '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(25, 4, '2008-01-01', '2008-12-31', 'Chef de la file du team sur la stratégie de développement des viandes rouges', 'Direction de l’élevage, MAPM', 0, NULL, '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(52, 24, '1982-01-01', '1992-01-01', 'Ingénieur', 'COMAGRI', 0, NULL, '2016-01-04 16:02:06', '2016-01-04 16:02:06'),
(53, 24, '1992-02-01', '2005-01-01', 'Responsable(Amélioration génétique)', 'Ministère de l''agriculture', 0, NULL, '2016-01-04 16:02:06', '2016-01-04 16:02:06'),
(56, 19, '2013-01-01', '2015-12-31', 'conseiller', 'société', 1, NULL, '2016-01-05 09:44:15', '2016-01-05 09:44:15'),
(57, 15, '1978-09-07', '1984-07-24', 'Technicien', 'Ferme d’Application IAV', 0, NULL, '2016-01-05 09:50:12', '2016-01-05 09:50:12'),
(58, 5, '2003-12-01', '2004-03-31', 'qualité', 'DANONE', 0, NULL, '2016-01-05 10:01:42', '2016-01-05 10:01:42'),
(59, 5, '2002-01-01', '2002-02-01', 'Stagiaire', 'CocaCola', 0, NULL, '2016-01-05 10:01:42', '2016-01-05 10:01:42'),
(60, 6, '2013-10-01', '2015-12-30', 'Chef de projet', 'ADA-LRK', 1, NULL, '2016-01-05 10:12:19', '2016-01-05 10:12:19'),
(62, 7, '2011-01-01', '2012-12-30', 'Conseiller DG', 'COSUMAR', 0, NULL, '2016-01-05 10:19:36', '2016-01-05 10:19:36'),
(64, 8, '2012-11-19', '2015-06-01', 'directeur', 'Crédit Agricole', 0, NULL, '2016-01-05 10:35:46', '2016-01-05 10:35:46'),
(66, 9, '2011-01-01', '2011-12-25', 'Ingénieur conseil', 'Conseil, Ingénierie et Développement', 0, NULL, '2016-01-05 10:38:04', '2016-01-05 10:38:04'),
(68, 10, '1995-01-01', '2005-12-30', 'chef de service', 'Inspection régionale de protection des plantes beni mellal azilal', 0, NULL, '2016-01-05 10:42:59', '2016-01-05 10:42:59'),
(70, 29, '2005-01-01', '2015-01-01', 'attaché commercial', 'Labo Gaya', 0, NULL, '2016-01-05 10:51:34', '2016-01-05 10:51:34'),
(71, 11, '2012-01-01', '2014-12-31', 'Inspécteur général', 'MAPM', 0, NULL, '2016-01-05 10:54:27', '2016-01-05 10:54:27'),
(73, 12, '1994-01-01', '2005-12-30', 'responsable pépinières', 'MAPM / DDFP', 0, NULL, '2016-01-05 11:00:06', '2016-01-05 11:00:06'),
(76, 14, '2010-11-01', '2014-12-31', 'commercial', 'renouvelables', 0, NULL, '2016-01-05 11:09:48', '2016-01-05 11:09:48'),
(78, 27, '2009-01-10', '2015-05-30', 'Attaché commercial', 'souvagro', 0, NULL, '2016-01-05 11:15:10', '2016-01-05 11:15:10'),
(79, 32, '2015-01-01', '2016-01-05', 'sales manager maghreb', 'Boehriger', 1, NULL, '2016-01-05 11:21:50', '2016-01-05 11:21:50'),
(80, 31, '2015-01-01', '2015-12-31', 'expert', 'mamda', 0, NULL, '2016-01-05 11:21:51', '2016-01-05 11:21:51'),
(81, 17, '2006-01-01', '2015-12-31', 'conseiller et formateur', 'BE', 1, NULL, '2016-01-05 11:24:27', '2016-01-05 11:24:27'),
(82, 18, '2013-01-01', '2015-12-31', 'chargé du projet', 'COSUMAR', 1, NULL, '2016-01-05 11:28:43', '2016-01-05 11:28:43'),
(83, 34, '1996-01-02', '2000-02-03', 'responsable projet', 'DPA marrakech', 0, NULL, '2016-01-05 11:29:26', '2016-01-05 11:29:26'),
(84, 20, '2009-07-27', '2014-12-31', 'chef de service GRH', 'DPA oujda', 0, NULL, '2016-01-05 11:34:40', '2016-01-05 11:34:40'),
(85, 36, '1985-01-01', '1988-12-28', 'directeur cda', 'ORMVA Tafilalet', 0, NULL, '2016-01-05 11:38:03', '2016-01-05 11:38:03'),
(86, 33, '1979-01-01', '1984-01-01', 'Chef ', 'ORMVA Tadla', 0, NULL, '2016-01-05 11:39:38', '2016-01-05 11:39:38'),
(87, 33, '2004-04-01', '2013-02-01', 'Responsable', 'Centre Régional de la recherche agricole Errachidia', 0, NULL, '2016-01-05 11:39:38', '2016-01-05 11:39:38'),
(88, 35, '1985-01-01', '2011-10-31', 'cadre tech comercial+ chef de centre regional', 'sonacos', 0, NULL, '2016-01-05 11:42:09', '2016-01-05 11:42:09'),
(89, 37, '2006-01-02', '2015-12-31', 'formateur', 'MFR', 1, NULL, '2016-01-05 11:47:20', '2016-01-05 11:47:20'),
(91, 26, '2006-04-01', '2015-06-01', 'directeur', 'COMADER', 0, NULL, '2016-01-05 11:59:47', '2016-01-05 11:59:47'),
(93, 21, '2013-05-15', '2015-08-16', 'responsable travaux agricoles', 'société privée', 0, NULL, '2016-01-05 12:01:26', '2016-01-05 12:01:26'),
(94, 39, '2006-01-01', '2009-12-01', 'Chef de service', 'DEFR', 0, NULL, '2016-01-05 12:09:31', '2016-01-05 12:09:31'),
(95, 25, '2015-03-01', '2016-01-04', 'directeur commercial', 'Société AGRIVIVOS', 1, NULL, '2016-01-05 12:12:26', '2016-01-05 12:12:26'),
(100, 41, '1994-12-27', '1999-01-04', 'chargé centre de formation', 'mapm', 0, NULL, '2016-01-05 12:17:28', '2016-01-05 12:17:28'),
(101, 23, '2013-01-01', '2015-12-31', 'chef de projet', 'GEO Développement centre kenitra', 1, NULL, '2016-01-05 12:18:12', '2016-01-05 12:18:12'),
(102, 42, '1980-01-01', '1989-01-31', 'chercheur', 'INRA', 0, NULL, '2016-01-05 12:27:01', '2016-01-05 12:27:01'),
(103, 38, '2002-12-31', '2015-12-01', 'directeur technique', 'société', 1, NULL, '2016-01-05 12:30:29', '2016-01-05 12:30:29'),
(104, 43, '1980-01-02', '2010-01-08', 'conseil client', 'crédit agricole', 0, NULL, '2016-01-05 12:32:25', '2016-01-05 12:32:25'),
(105, 47, '2011-11-01', '2016-01-04', 'inséminateur', 'ANEB', 1, NULL, '2016-01-05 12:40:50', '2016-01-05 12:40:50'),
(106, 48, '2011-01-03', '2012-12-27', 'chef de bureau vulgarisation et appui', 'ORMVA Tadla', 0, NULL, '2016-01-05 12:53:25', '2016-01-05 12:53:25'),
(107, 44, '2007-07-01', '2013-11-30', 'inséminateur', 'ASSOCIATION SOUHOUL k. kebir', 0, NULL, '2016-01-05 12:54:13', '2016-01-05 12:54:13'),
(108, 44, '2013-12-09', '2016-01-04', 'contrôleur laitier ', 'colainord(feneprol)', 0, NULL, '2016-01-05 12:54:13', '2016-01-05 12:54:13'),
(109, 49, '2010-01-03', '2015-12-31', 'encadrant', 'coopérative mrada', 1, NULL, '2016-01-05 13:03:24', '2016-01-05 13:03:24'),
(110, 51, '2015-01-01', '2015-12-31', 'responsable développement technique', 'SIPCAM', 1, NULL, '2016-01-05 13:10:25', '2016-01-05 13:10:25'),
(113, 52, '2014-07-01', '2015-12-24', 'agent de développement', 'UNOPS', 1, NULL, '2016-01-05 13:18:06', '2016-01-05 13:18:06'),
(114, 53, '1989-01-06', '2002-12-03', 'directeur production', 'colainord', 0, NULL, '2016-01-05 13:36:23', '2016-01-05 13:36:23'),
(115, 54, '1990-01-01', '1998-01-01', 'cadre', 'crédit agricole', 0, NULL, '2016-01-05 13:51:45', '2016-01-05 13:51:45'),
(116, 55, '2012-04-02', '2015-04-30', 'directeur de centre à souss massa', 'apefel', 0, NULL, '2016-01-05 14:08:20', '2016-01-05 14:08:20'),
(117, 56, '2015-01-01', '2016-01-01', 'Conseiller', 'société Art Vert', 1, NULL, '2016-01-05 14:09:22', '2016-01-05 14:09:22'),
(118, 57, '2014-01-03', '2015-12-31', 'directeur', 'GIE', 0, NULL, '2016-01-05 14:16:26', '2016-01-05 14:16:26'),
(119, 58, '2010-01-01', '2013-01-01', 'suivi les réalisation des projets', 'manage-act consulting', 0, NULL, '2016-01-05 14:22:05', '2016-01-05 14:22:05'),
(120, 59, '1970-01-01', '2016-01-01', 'professionnel', 'libérale', 1, NULL, '2016-01-05 14:36:22', '2016-01-05 14:36:22'),
(121, 62, '2007-01-01', '2015-01-01', 'conseiller', 'socièté horticulture moderne', 1, NULL, '2016-01-05 14:54:51', '2016-01-05 14:54:51'),
(122, 61, '2014-08-01', '2016-01-04', 'responsable commercial', 'SCOMAI', 1, NULL, '2016-01-05 14:55:57', '2016-01-05 14:55:57'),
(124, 63, '2015-01-02', '2015-12-31', 'formateur', 'Ingénieur conseil', 1, NULL, '2016-01-05 15:03:18', '2016-01-05 15:03:18'),
(125, 64, '2013-01-02', '2015-12-31', 'ingénieur gérant de la société', 'MEAHANDASSA', 1, NULL, '2016-01-05 15:17:23', '2016-01-05 15:17:23'),
(127, 66, '1997-09-01', '2005-08-31', 'directeur agence', 'crédit agricole', 0, NULL, '2016-01-05 15:26:03', '2016-01-05 15:26:03'),
(129, 68, '2006-01-01', '2015-01-01', 'conseiller agricole', 'gharb', 0, NULL, '2016-01-05 15:53:22', '2016-01-05 15:53:22'),
(130, 69, '2012-01-03', '2014-12-31', 'expert production animale', 'UGP', 0, NULL, '2016-01-05 16:04:58', '2016-01-05 16:04:58'),
(131, 70, '2009-01-02', '2014-12-25', 'directeur agence', 'wafa assurance', 0, NULL, '2016-01-05 16:14:57', '2016-01-05 16:14:57'),
(132, 71, '2012-09-02', '2016-01-05', 'responsable développement', 'AGRONOMIA', 1, NULL, '2016-01-05 16:22:10', '2016-01-05 16:22:10'),
(133, 67, '2015-01-01', '2015-12-01', 'INGÉNIER D''ETUDES à la fédam', 'FIFAFM', 0, NULL, '2016-01-05 16:25:06', '2016-01-05 16:25:06'),
(134, 72, '2003-01-01', '2009-12-31', 'DPA', 'DPA Sidi Kacem', 0, NULL, '2016-01-05 16:30:38', '2016-01-05 16:30:38'),
(135, 73, '2015-01-01', '2015-12-31', 'consultant', 'Burea d''étude', 0, NULL, '2016-01-05 16:36:15', '2016-01-05 16:36:15'),
(137, 75, '2015-01-01', '2015-12-31', 'formateur', 'aid', 1, NULL, '2016-01-05 16:53:15', '2016-01-05 16:53:15'),
(139, 77, '2011-01-03', '2015-12-31', 'conseiller et formateur', 'UNOPS', 0, NULL, '2016-01-06 08:03:35', '2016-01-06 08:03:35'),
(140, 78, '2013-08-02', '2015-12-31', 'contrôle laitier', 'colainord', 0, NULL, '2016-01-06 08:12:28', '2016-01-06 08:12:28'),
(141, 79, '2013-12-01', '2015-12-31', 'contrôle unité vollailles', 'société fès aliments poussins ', 1, NULL, '2016-01-06 08:20:01', '2016-01-06 08:20:01'),
(142, 80, '2013-09-01', '2015-12-31', 'technicien', 'PCM consulting', 1, NULL, '2016-01-06 08:25:49', '2016-01-06 08:25:49'),
(143, 81, '2010-01-07', '2013-12-27', 'responsable canaux d''irrigation', 'NOVEC', 0, NULL, '2016-01-06 08:32:08', '2016-01-06 08:32:08'),
(145, 83, '1997-10-01', '2003-12-31', 'chef service aménagement hydroagricole', 'sodea', 0, NULL, '2016-01-06 08:47:46', '2016-01-06 08:47:46'),
(147, 85, '2012-05-05', '2015-06-30', 'responsable commercial', 'stokvis', 0, NULL, '2016-01-06 09:02:53', '2016-01-06 09:02:53'),
(148, 86, '1997-01-03', '2015-12-31', 'programmes intégrés ', 'privé', 1, NULL, '2016-01-06 09:41:21', '2016-01-06 09:41:21'),
(149, 87, '2009-06-01', '2014-12-20', 'chef division partenariat', 'DRA rabat', 0, NULL, '2016-01-06 09:51:55', '2016-01-06 09:51:55'),
(150, 88, '2013-01-02', '2016-01-06', 'formateur', 'CQA', 1, NULL, '2016-01-06 10:02:18', '2016-01-06 10:02:18'),
(151, 89, '2011-08-01', '2014-10-30', 'agent commercial', 'Agrirobada', 0, NULL, '2016-01-06 10:12:20', '2016-01-06 10:12:20'),
(152, 45, '1990-01-04', '2005-12-22', 'chef de service répression des fraudes', 'DPA ', 0, NULL, '2016-01-06 10:18:43', '2016-01-06 10:18:43'),
(153, 84, '2011-03-16', '2011-05-28', 'technicien', 'OFPT', 0, NULL, '2016-01-06 10:45:11', '2016-01-06 10:45:11'),
(154, 76, '2014-01-02', '2015-12-31', 'apiculture', 'BE Afroukh', 1, NULL, '2016-01-06 10:51:59', '2016-01-06 10:51:59'),
(155, 74, '1970-01-01', '2016-01-02', 'apiculteur', 'privé', 1, NULL, '2016-01-06 10:53:26', '2016-01-06 10:53:26'),
(156, 50, '2014-01-01', '2014-10-08', 'étude des systèmes de commercialisation   ', 'the coca cola export corporation', 0, NULL, '2016-01-06 10:58:47', '2016-01-06 10:58:47'),
(157, 22, '2009-01-02', '2015-12-31', 'chef de service', 'DPA Tanger', 0, NULL, '2016-01-06 11:07:30', '2016-01-06 11:07:30'),
(159, 16, '2010-11-01', '2013-06-21', 'responsable qualité', 'service vétérinaire chefchaouen', 0, NULL, '2016-01-06 11:11:14', '2016-01-06 11:11:14'),
(160, 90, '2013-01-01', '2015-11-30', 'gérant', 'exploitation agricole', 0, NULL, '2016-01-06 11:42:34', '2016-01-06 11:42:34'),
(161, 13, '2015-01-01', '2015-12-31', 'expert agricole', 'cours ', 1, NULL, '2016-01-06 12:01:05', '2016-01-06 12:01:05'),
(162, 91, '1985-01-01', '2005-05-31', 'chef service', 'ORMVA agadir', 0, NULL, '2016-01-06 14:14:07', '2016-01-06 14:14:07'),
(165, 92, '2010-01-03', '2013-02-03', 'directeur', 'cpam', 0, NULL, '2016-01-06 15:18:41', '2016-01-06 15:18:41'),
(168, 93, '2011-03-03', '2013-08-30', 'chef de division ', 'ADA', 0, NULL, '2016-01-06 17:07:05', '2016-01-06 17:07:05'),
(169, 94, '2013-01-01', '2016-01-06', 'encadrement technique', 'privé', 1, NULL, '2016-01-06 17:19:45', '2016-01-06 17:19:45'),
(172, 40, '2008-05-02', '2008-05-02', 'fondateur directeur général', 'PCM Consulting', 0, NULL, '2016-01-07 08:27:06', '2016-01-07 08:27:06'),
(173, 40, '2006-05-02', '2008-06-30', 'DIRECTEUR DU PROJET ARGANIER', 'AGENCE DE DEVELOPPEMENT SOCIAL', 0, NULL, '2016-01-07 08:27:06', '2016-01-07 08:27:06'),
(174, 46, '1982-01-01', '1995-12-31', 'cadre', 'ORMVA Tadla', 0, NULL, '2016-01-07 10:01:22', '2016-01-07 10:01:22'),
(175, 46, '1996-01-01', '2014-12-31', 'cadre', 'ORMVA Loukkos', 0, NULL, '2016-01-07 10:01:22', '2016-01-07 10:01:22'),
(176, 30, '1994-01-01', '2015-12-31', 'Technicien', 'Domaines Royaux', 0, NULL, '2016-01-07 10:36:34', '2016-01-07 10:36:34'),
(179, 95, '2015-08-01', '2016-01-07', 'chef de service', 'Société X', 1, NULL, '2016-01-07 13:36:15', '2016-01-07 13:36:15'),
(180, 96, '2008-01-03', '2015-12-31', 'gérant', 'exploitation agricole', 0, NULL, '2016-01-14 12:20:11', '2016-01-14 12:20:11'),
(181, 97, '2010-01-04', '2013-06-02', 'chef service', 'ONSSA', 0, NULL, '2016-01-14 12:33:16', '2016-01-14 12:33:16'),
(183, 98, '2007-01-12', '2007-06-02', 'gérant', 'exploitation agricole', 0, NULL, '2016-01-14 13:11:06', '2016-01-14 13:11:06'),
(184, 99, '2012-01-02', '2015-12-31', 'technicien commercialisation', 'minnat allah service', 0, NULL, '2016-01-14 13:25:00', '2016-01-14 13:25:00'),
(185, 100, '2015-07-01', '2015-08-08', 'conseiller', 'novec', 0, NULL, '2016-01-14 13:48:33', '2016-01-14 13:48:33'),
(186, 101, '2010-01-04', '2014-12-30', 'directeur technique', 'Agri robada', 0, NULL, '2016-01-14 13:57:08', '2016-01-14 13:57:08'),
(187, 102, '2015-08-01', '2015-12-31', 'chef service', 'DRA Rabat Salé Zemmour zaer', 0, NULL, '2016-01-14 14:07:28', '2016-01-14 14:07:28'),
(188, 103, '2000-01-03', '2004-12-31', 'technicien', 'cabinet vétérinaire tiznit', 0, NULL, '2016-01-14 14:15:14', '2016-01-14 14:15:14'),
(189, 104, '2014-01-10', '2015-12-24', 'conseil technique', 'freelance', 0, NULL, '2016-01-15 09:16:07', '2016-01-15 09:16:07'),
(190, 105, '2015-11-20', '2016-01-07', 'responsable collecte lait', 'lait Saïss', 1, NULL, '2016-01-15 09:21:17', '2016-01-15 09:21:17'),
(191, 106, '2014-07-04', '2015-02-23', 'technicien', 'exploitation agricole sbaï taroudant', 0, NULL, '2016-01-15 10:24:48', '2016-01-15 10:24:48'),
(192, 108, '2014-09-09', '2016-01-10', 'rien', 'rien', 0, NULL, '2016-01-18 12:52:47', '2016-01-18 12:52:47'),
(193, 109, '2004-01-04', '2008-12-24', 'vente des produits agricoles', 'privé', 0, NULL, '2016-01-18 13:14:31', '2016-01-18 13:14:31'),
(194, 110, '1975-08-01', '2013-12-31', 'vulgarisateur', 'CT had kourt', 0, NULL, '2016-01-18 13:35:51', '2016-01-18 13:35:51'),
(195, 111, '2004-01-09', '2006-12-28', 'technicien', 'domaine royale', 0, NULL, '2016-01-18 13:56:40', '2016-01-18 13:56:40'),
(196, 112, '1993-01-01', '1997-12-31', 'chef service équipement', 'INRA', 0, NULL, '2016-01-18 14:12:54', '2016-01-18 14:12:54'),
(197, 113, '2012-01-02', '2015-12-31', 'chef service réforme agraire', 'ORMVA haouz', 0, NULL, '2016-01-18 14:40:22', '2016-01-18 14:40:22'),
(198, 114, '2009-01-04', '2016-01-18', 'responsable technique', 'société AGROPROGRESS', 1, NULL, '2016-01-18 14:53:03', '2016-01-18 14:53:03'),
(199, 115, '2013-01-06', '2016-01-18', 'président', 'coopérative agricole', 1, NULL, '2016-01-18 15:06:37', '2016-01-18 15:06:37'),
(200, 116, '2005-01-02', '2015-12-31', 'coordinateur', 'labomag', 0, NULL, '2016-01-18 15:19:26', '2016-01-18 15:19:26'),
(201, 117, '2000-01-02', '2015-12-31', 'prestataire', 'société', 0, NULL, '2016-01-18 15:28:19', '2016-01-18 15:28:19'),
(203, 119, '1999-01-03', '2015-12-31', 'chef de centre', 'coopérative agricole', 0, NULL, '2016-01-18 15:53:36', '2016-01-18 15:53:36'),
(204, 120, '2004-06-01', '2011-05-31', 'chef de centre', 'coopérative agricole', 0, NULL, '2016-01-18 16:11:37', '2016-01-18 16:11:37'),
(205, 121, '2009-01-04', '2014-12-31', 'chef de centre', 'cam moyen atlas', 0, NULL, '2016-01-18 16:21:22', '2016-01-18 16:21:22'),
(206, 122, '2013-01-01', '2014-12-31', 'technicien', 'phytosouss', 0, NULL, '2016-01-19 11:39:23', '2016-01-19 11:39:23'),
(207, 123, '1987-01-01', '2016-01-18', 'apiculteur', 'privé', 1, NULL, '2016-01-19 11:50:40', '2016-01-19 11:50:40'),
(208, 124, '2010-10-01', '2015-12-31', 'gérant', 'exploitation agricole', 0, NULL, '2016-01-19 12:13:23', '2016-01-19 12:13:23'),
(209, 125, '2014-01-01', '2014-12-31', 'technicien', 'cabinet vétérinaire ', 0, NULL, '2016-01-19 12:51:26', '2016-01-19 12:51:26'),
(210, 126, '2010-01-03', '2016-01-19', 'responsable commercial', 'société arzak ', 1, NULL, '2016-01-19 13:15:52', '2016-01-19 13:15:52'),
(211, 127, '2009-01-01', '2014-12-31', 'directeur de l''économie sociale', 'Agence du Sud', 0, NULL, '2016-01-19 13:48:16', '2016-01-19 13:48:16'),
(212, 128, '2014-04-14', '2015-05-16', 'arboriculture', 'exploitation agricole', 0, NULL, '2016-01-19 14:22:36', '2016-01-19 14:22:36'),
(213, 129, '2011-01-02', '2013-12-31', 'formateur', 'midar', 0, NULL, '2016-01-19 14:37:39', '2016-01-19 14:37:39'),
(214, 130, '2013-01-01', '2014-12-30', 'technicien', 'BET Rabat', 0, NULL, '2016-01-19 14:48:22', '2016-01-19 14:48:22'),
(215, 131, '1999-07-01', '2014-06-30', 'chef de centre', 'coopérative agricole', 0, NULL, '2016-01-19 15:01:54', '2016-01-19 15:01:54'),
(216, 132, '2015-09-22', '2016-01-19', 'directeur pôle agriculture', 'BE GLOBALDEV', 1, NULL, '2016-01-19 15:44:47', '2016-01-19 15:44:47'),
(217, 133, '2009-09-01', '2016-01-19', 'gérant', 'exploitation agricole', 1, NULL, '2016-01-19 16:11:15', '2016-01-19 16:11:15'),
(218, 134, '2010-09-01', '2016-01-19', 'représentant', 'privé', 1, NULL, '2016-01-19 16:23:56', '2016-01-19 16:23:56'),
(219, 135, '2015-11-01', '2015-12-31', 'chef service', 'inspection générale MAPM', 0, NULL, '2016-01-20 09:22:58', '2016-01-20 09:22:58'),
(220, 136, '2012-01-02', '2014-12-31', 'Suivi propjets pilier II', 'DPA Meknès', 0, NULL, '2016-01-20 09:36:04', '2016-01-20 09:36:04'),
(221, 137, '2012-01-02', '2012-12-31', 'responsable qualité', 'privé', 0, NULL, '2016-01-20 14:28:32', '2016-01-20 14:28:32'),
(222, 138, '2003-01-02', '2005-11-30', 'coordinateur', 'DPA agadir', 0, NULL, '2016-01-20 14:46:41', '2016-01-20 14:46:41'),
(223, 139, '2011-01-01', '2016-01-20', 'directeur technique', 'société', 1, NULL, '2016-01-22 11:31:12', '2016-01-22 11:31:12'),
(224, 140, '2009-01-01', '2014-11-27', 'DPA', 'DPA Safi', 0, NULL, '2016-01-25 11:41:29', '2016-01-25 11:41:29'),
(225, 141, '2009-01-01', '2016-01-25', 'gérant', 'BE Afroukh', 1, NULL, '2016-01-25 12:11:27', '2016-01-25 12:11:27'),
(226, 28, '2006-01-01', '2010-01-01', 'Cadre', 'Ministère de l''Agriculture', 0, NULL, '2016-01-25 14:51:51', '2016-01-25 14:51:51'),
(227, 107, '2000-05-02', '2005-07-31', 'chef de division ', 'DPA Casablanca', 0, NULL, '2016-01-26 12:19:30', '2016-01-26 12:19:30'),
(228, 142, '1990-01-01', '2007-12-31', 'gérant station de pompage', 'ORMVA loukkos', 0, NULL, '2016-01-26 12:56:21', '2016-01-26 12:56:21'),
(229, 143, '2008-01-02', '2010-12-31', 'consultant', 'privé', 0, NULL, '2016-01-26 14:11:09', '2016-01-26 14:11:09'),
(230, 144, '2004-01-07', '2005-12-30', 'suivi et exécution de programmes de formation', 'DPA chefchaouen', 0, NULL, '2016-01-26 14:40:50', '2016-01-26 14:40:50'),
(231, 145, '2013-01-01', '2016-01-26', 'vente des produits agricoles', 'addam elfilahi', 1, NULL, '2016-01-26 14:53:12', '2016-01-26 14:53:12'),
(232, 146, '2015-06-30', '2016-01-26', 'technicien', 'cabinet vétérinaire ', 1, NULL, '2016-01-26 15:06:17', '2016-01-26 15:06:17'),
(233, 147, '2014-01-01', '2016-01-28', 'directeur', 'Privé', 1, NULL, '2016-01-27 10:34:06', '2016-01-27 10:34:06'),
(234, 148, '2010-01-03', '2016-01-28', 'directeur', 'privé', 1, NULL, '2016-01-27 11:49:45', '2016-01-27 11:49:45'),
(235, 149, '1995-01-03', '1998-12-31', 'directeur', 'ORMVA agadir', 0, NULL, '2016-01-27 15:03:18', '2016-01-27 15:03:18'),
(236, 150, '2013-01-02', '2016-01-28', 'Ingénieur agronome', 'success agro', 1, NULL, '2016-01-27 15:36:09', '2016-01-27 15:36:09'),
(237, 151, '2015-08-10', '2015-12-25', 'technicien', 'cabinet vétérinaire ', 0, NULL, '2016-01-27 16:26:38', '2016-01-27 16:26:38'),
(238, 152, '2014-10-01', '2016-01-27', 'consultant', 'Expert ingénieur conseil', 1, NULL, '2016-01-27 16:40:36', '2016-01-27 16:40:36'),
(239, 153, '2015-04-01', '2016-01-28', 'technicien', 'Expert ingénieur conseil', 1, NULL, '2016-01-28 12:26:14', '2016-01-28 12:26:14'),
(240, 154, '2015-03-01', '2016-01-28', 'technicien', 'BE Fath', 1, NULL, '2016-01-28 12:35:12', '2016-01-28 12:35:12'),
(241, 155, '2013-01-01', '2016-01-28', 'assistance technique', 'dpa marrakech', 1, NULL, '2016-01-28 13:12:09', '2016-01-28 13:12:09'),
(242, 156, '2014-01-05', '2016-01-28', 'technicien commercialisation', 'privé', 1, NULL, '2016-01-28 15:03:34', '2016-01-28 15:03:34'),
(243, 157, '2013-04-01', '2016-01-28', 'assistance technique', 'SODEA SA', 1, NULL, '2016-01-28 15:36:52', '2016-01-28 15:36:52'),
(244, 158, '2013-01-01', '2016-01-28', 'technicien commercialisation', 'privé', 1, NULL, '2016-01-28 15:47:06', '2016-01-28 15:47:06'),
(245, 159, '2001-01-01', '2005-12-31', 'chef service', 'DPA El kelaa', 0, NULL, '2016-01-28 16:02:04', '2016-01-28 16:02:04'),
(246, 160, '2011-08-01', '2016-01-28', 'technicien arboriculture', 'BE', 1, NULL, '2016-01-28 16:16:37', '2016-01-28 16:16:37'),
(247, 161, '1987-01-01', '2016-01-28', 'gérant', 'exploitation agricole', 1, NULL, '2016-01-28 16:31:39', '2016-01-28 16:31:39'),
(248, 162, '2013-01-01', '2016-01-28', 'Ingénieur agronome', 'Syngenta maroc', 1, NULL, '2016-01-28 16:46:24', '2016-01-28 16:46:24'),
(249, 163, '2010-05-03', '2016-01-29', 'vulgarisation agricole', 'fertima', 1, NULL, '2016-01-29 10:32:59', '2016-01-29 10:32:59'),
(250, 164, '2007-01-03', '2013-12-26', 'consultant', 'privé', 0, NULL, '2016-01-29 10:43:37', '2016-01-29 10:43:37'),
(251, 165, '2009-01-01', '2016-01-29', 'conseiller', 'CR', 1, NULL, '2016-01-29 11:56:32', '2016-01-29 11:56:32'),
(252, 166, '1972-01-01', '2005-12-31', 'vulgarisation agricole', 'CT', 0, NULL, '2016-01-29 12:07:08', '2016-01-29 12:07:08'),
(253, 167, '2011-06-15', '2012-06-30', 'enquêteur', 'privé', 0, NULL, '2016-01-29 15:08:15', '2016-01-29 15:08:15'),
(254, 168, '2010-10-30', '2014-10-30', 'formateur', 'lycée agricole berkane', 0, NULL, '2016-01-29 15:29:26', '2016-01-29 15:29:26'),
(255, 169, '1996-01-01', '2000-12-26', 'comptable', 'CT Skhirat', 0, NULL, '2016-01-29 15:46:34', '2016-01-29 15:46:34'),
(256, 170, '1971-01-01', '2010-12-31', 'vulgarisation agricole', 'CT', 0, NULL, '2016-01-29 15:57:28', '2016-01-29 15:57:28'),
(257, 171, '2010-12-10', '2016-02-01', 'technicien', 'BE DIRASSA', 1, NULL, '2016-02-01 15:27:17', '2016-02-01 15:27:17'),
(258, 172, '2008-01-01', '2016-02-01', 'directeur technique', 'univers horticole', 1, NULL, '2016-02-01 15:40:53', '2016-02-01 15:40:53'),
(259, 173, '2013-04-01', '2013-09-30', 'animateur', 'RAMES', 0, NULL, '2016-02-01 16:04:02', '2016-02-01 16:04:02'),
(260, 174, '2015-01-01', '2016-02-01', 'gérant', 'privé', 1, NULL, '2016-02-01 16:22:37', '2016-02-01 16:22:37'),
(261, 177, '2013-07-01', '2016-02-03', 'directeur', 'BE', 1, NULL, '2016-02-03 13:59:16', '2016-02-03 13:59:16'),
(262, 178, '2015-06-15', '2016-02-03', 'responsable technique', 'Domaine HM Fruit Maroc', 1, NULL, '2016-02-03 15:00:50', '2016-02-03 15:00:50'),
(263, 179, '2011-01-01', '2016-02-03', 'responsable technique', 'Domaine Aderdour', 1, NULL, '2016-02-03 15:11:08', '2016-02-03 15:11:08'),
(264, 180, '2012-04-10', '2015-10-30', 'technicien', 'CID', 0, NULL, '2016-02-03 15:27:26', '2016-02-03 15:27:26'),
(265, 200, '2014-01-01', '2015-12-31', 'formteur', 'ITREF', 0, NULL, '2016-02-05 12:25:05', '2016-02-05 12:25:05'),
(266, 181, '2003-01-01', '2005-12-31', 'chef de centre', 'INRA', 0, NULL, '2016-02-05 14:35:10', '2016-02-05 14:35:10'),
(267, 183, '2009-11-01', '2016-02-05', 'technicien', 'CID', 1, NULL, '2016-02-05 16:38:00', '2016-02-05 16:38:00'),
(268, 184, '2012-12-24', '2016-02-05', 'technicien arboriculture', 'CID', 1, NULL, '2016-02-05 16:44:56', '2016-02-05 16:44:56'),
(269, 185, '2012-01-01', '2016-02-08', 'technicien commercialisation', 'privé', 1, NULL, '2016-02-08 10:53:21', '2016-02-08 10:53:21'),
(270, 186, '2010-07-02', '2010-09-02', 'qualité', 'Fondation', 0, NULL, '2016-02-08 11:05:43', '2016-02-08 11:05:43'),
(271, 187, '2015-01-01', '2016-02-08', 'technicien', 'ALPHA WATER', 1, NULL, '2016-02-08 11:21:42', '2016-02-08 11:21:42'),
(272, 188, '2010-01-01', '2012-12-31', 'technicien', 'GECKO italie', 0, NULL, '2016-02-08 11:36:36', '2016-02-08 11:36:36'),
(273, 189, '2009-09-01', '2014-12-31', 'directeur', 'ITGRT', 0, NULL, '2016-02-08 11:46:22', '2016-02-08 11:46:22'),
(274, 190, '1990-01-01', '2016-02-08', 'conseiller', 'ets hakam frères', 1, NULL, '2016-02-08 11:56:48', '2016-02-08 11:56:48'),
(275, 199, '2010-01-01', '2016-02-08', 'directeur', 'MTDI', 1, NULL, '2016-02-08 12:21:41', '2016-02-08 12:21:41'),
(276, 191, '2012-01-01', '2016-02-08', 'superviseur', 'ANOC Nord', 1, NULL, '2016-02-08 13:20:51', '2016-02-08 13:20:51'),
(277, 192, '2012-01-01', '2016-02-08', 'technicien arboriculture', 'BE', 1, NULL, '2016-02-08 13:51:42', '2016-02-08 13:51:42'),
(278, 193, '2015-06-30', '2016-02-08', 'RAS', 'RAS', 0, NULL, '2016-02-08 14:05:31', '2016-02-08 14:05:31'),
(279, 194, '2015-08-04', '2015-11-28', 'technicien', 'société', 0, NULL, '2016-02-08 14:16:14', '2016-02-08 14:16:14'),
(280, 195, '2014-04-01', '2015-04-01', 'technicien', 'COPAG', 0, NULL, '2016-02-08 14:40:36', '2016-02-08 14:40:36'),
(281, 196, '2015-01-01', '2016-02-08', 'suivi projets irrigation goutte à goutte', 'société', 1, NULL, '2016-02-08 15:05:24', '2016-02-08 15:05:24'),
(282, 197, '2009-01-01', '2011-12-31', 'responsable qualité', 'privé', 0, NULL, '2016-02-08 15:15:40', '2016-02-08 15:15:40'),
(283, 198, '2011-08-01', '2016-02-08', 'responsable formation', 'ANOC', 1, NULL, '2016-02-08 15:51:08', '2016-02-08 15:51:08'),
(284, 202, '2014-07-07', '2016-02-10', 'RAS', 'RAS', 0, NULL, '2016-02-10 09:48:53', '2016-02-10 09:48:53'),
(285, 203, '2010-01-01', '2014-12-31', 'chef de bureau vulgarisation et appui', 'ORMVA Tadla', 0, NULL, '2016-02-10 10:17:40', '2016-02-10 10:17:40'),
(286, 204, '2015-03-23', '2015-12-31', 'encadrement technique', 'BE', 0, NULL, '2016-02-10 10:26:18', '2016-02-10 10:26:18'),
(287, 205, '2015-05-08', '2016-02-10', 'vente des produits agricoles', 'privé', 1, NULL, '2016-02-10 11:08:59', '2016-02-10 11:08:59'),
(288, 206, '2015-02-01', '2016-01-31', 'technicien arboriculture', 'domaine agricole noufissa', 0, NULL, '2016-02-10 11:20:55', '2016-02-10 11:20:55'),
(289, 207, '2012-12-01', '2016-02-10', 'technicien', 'BE', 1, NULL, '2016-02-10 12:11:40', '2016-02-10 12:11:40'),
(290, 208, '2014-07-01', '2016-02-10', 'Ingénieur agronome', 'DMIC', 1, NULL, '2016-02-10 12:30:45', '2016-02-10 12:30:45'),
(291, 209, '2011-01-01', '2016-02-10', 'technicien arboriculture', 'BE', 1, NULL, '2016-02-10 12:59:33', '2016-02-10 12:59:33'),
(292, 210, '2007-01-01', '2016-02-10', 'directeur', 'privé', 1, NULL, '2016-02-10 14:47:45', '2016-02-10 14:47:45'),
(293, 211, '2012-08-01', '2016-02-10', 'directeur', 'privé', 1, NULL, '2016-02-10 15:09:41', '2016-02-10 15:09:41'),
(294, 175, '2013-02-03', '2014-02-03', 'technicien', 'cabinet vétérinaire ', 0, NULL, '2016-02-23 14:57:04', '2016-02-23 14:57:04'),
(295, 82, '1999-09-01', '2015-12-31', 'inspecteur', 'inspection agriculture oujda', 0, NULL, '2016-02-24 10:49:54', '2016-02-24 10:49:54'),
(296, 118, '1999-06-30', '2015-12-31', 'chef de centre', 'coopérative agricole', 0, NULL, '2016-02-25 10:06:22', '2016-02-25 10:06:22'),
(297, 65, '1989-01-01', '2014-01-01', 'technicien agricole comercial ', 'sofisa', 0, NULL, '2016-02-25 10:09:42', '2016-02-25 10:09:42'),
(298, 176, '2010-01-01', '2013-12-31', 'gérant', 'pépinière', 0, NULL, '2016-02-25 11:56:39', '2016-02-25 11:56:39'),
(299, 212, '2014-02-17', '2016-03-01', 'gérant', 'exploitation agricole', 1, NULL, '2016-03-01 11:31:25', '2016-03-01 11:31:25'),
(300, 213, '2008-10-01', '2016-03-01', 'gérant', 'privé', 1, NULL, '2016-03-01 11:43:11', '2016-03-01 11:43:11'),
(303, 214, '2013-01-01', '2014-03-31', 'technicien commercialisation', 'privé', 0, NULL, '2016-03-01 12:04:12', '2016-03-01 12:04:12'),
(304, 215, '2013-01-01', '2016-03-01', 'assistance technique', 'Expert ingénieur conseil', 1, NULL, '2016-03-01 12:19:36', '2016-03-01 12:19:36'),
(305, 216, '2011-01-01', '2015-12-24', 'technicien', 'Agrilabo', 0, NULL, '2016-03-01 12:46:26', '2016-03-01 12:46:26'),
(306, 217, '1986-03-01', '2016-03-01', 'privé', 'privé', 1, NULL, '2016-03-01 13:01:22', '2016-03-01 13:01:22'),
(307, 218, '2007-03-01', '2016-03-01', 'animateur', 'ANOC', 1, NULL, '2016-03-01 13:38:35', '2016-03-01 13:38:35'),
(308, 219, '1995-01-01', '1998-12-31', 'technicien', 'CT', 0, NULL, '2016-03-01 13:54:37', '2016-03-01 13:54:37'),
(309, 220, '2014-01-01', '2016-03-01', 'technicien commercialisation', 'société', 1, NULL, '2016-03-01 14:04:17', '2016-03-01 14:04:17'),
(310, 221, '2002-01-01', '2016-03-01', 'technicien', 'privé', 1, NULL, '2016-03-01 14:55:33', '2016-03-01 14:55:33'),
(311, 222, '2009-01-01', '2015-07-08', 'chef service', 'DRA Tadla Azilal', 0, NULL, '2016-03-01 15:08:49', '2016-03-01 15:08:49'),
(312, 223, '2015-05-01', '2015-08-31', 'technicien', 'privé', 0, NULL, '2016-03-01 15:21:07', '2016-03-01 15:21:07'),
(313, 224, '2015-04-01', '2015-07-01', 'technicien', 'privé', 0, NULL, '2016-03-01 15:31:57', '2016-03-01 15:31:57'),
(314, 225, '1977-01-01', '2007-12-31', 'vulgarisation agricole', 'CT Oued Zem', 0, NULL, '2016-03-08 11:59:06', '2016-03-08 11:59:06'),
(315, 226, '2011-07-01', '2016-03-08', 'Directrice', 'FIVIAR', 1, NULL, '2016-03-08 12:37:53', '2016-03-08 12:37:53'),
(316, 227, '2004-06-01', '2011-05-30', 'chef service', 'coopérative agricole', 0, NULL, '2016-03-08 14:15:39', '2016-03-08 14:15:39'),
(317, 228, '2009-10-01', '2012-12-18', 'gérant', 'société', 0, NULL, '2016-03-08 14:35:28', '2016-03-08 14:35:28');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_publication_researches`
--

CREATE TABLE `pfm_publication_researches` (
  `id` int(11) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `event_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_publication_researches`
--

INSERT INTO `pfm_publication_researches` (`id`, `counselor_id`, `name`, `description`, `event_date`, `created`, `updated`) VALUES
(25, 4, 'Évaluation du plan d''action de la stratégie de développement des aliments composés pour ruminants en 2008', '', '2008-01-01', '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(26, 4, 'Intérêt de l''utilisation du blé germé dans les aliments composés pour volailles', '', '2004-01-01', '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(27, 4, 'Etude du marché du bovin maigre au Maroc', 'Revue AL Aalaf, n°6', '2003-01-01', '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(28, 4, 'Présentation du secteur de fabrication des aliments composés(co-auteur) ', 'Magazine l''Espace vétérinaire n°8', '1997-01-01', '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(29, 4, 'Secteur de l''aviculture: Etude rétrospéctive de quelques indicateurs économiques(co-auteur) ', 'Magazine l''espace vétérinaire °8', '1996-01-01', '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(30, 4, 'Evolution de l''effectif des vaches de race pure entre 1970 et 1995', 'Simulation et éléments d''analyse (co-auteur) ', '1995-01-01', '2015-12-22 16:11:10', '2015-12-22 16:11:10');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_qualifications`
--

CREATE TABLE `pfm_qualifications` (
  `id` int(11) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `diplome_id` int(11) NOT NULL,
  `speciality_id` int(11) NOT NULL,
  `establishment_id` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_qualifications`
--

INSERT INTO `pfm_qualifications` (`id`, `counselor_id`, `diplome_id`, `speciality_id`, `establishment_id`, `year`, `description`, `created`, `updated`) VALUES
(5, 4, 2, 2, 1, 1992, '', '2015-12-22 16:11:10', '2015-12-22 16:11:10'),
(35, 24, 1, 2, 1, 1981, '', '2016-01-04 16:02:06', '2016-01-04 16:02:06'),
(38, 19, 1, 6, 1, 1994, '', '2016-01-05 09:44:15', '2016-01-05 09:44:15'),
(39, 15, 2, 2, 10, 1978, '', '2016-01-05 09:50:12', '2016-01-05 09:50:12'),
(40, 5, 4, 11, 5, 2010, 'ensia montpelier', '2016-01-05 10:01:42', '2016-01-05 10:01:42'),
(41, 6, 1, 17, 33, 2010, 'ENA de Meknès', '2016-01-05 10:12:19', '2016-01-05 10:12:19'),
(43, 7, 2, 6, 33, 1978, 'ENA de Meknès', '2016-01-05 10:19:36', '2016-01-05 10:19:36'),
(45, 8, 2, 1, 25, 1979, 'Zraïb', '2016-01-05 10:35:46', '2016-01-05 10:35:46'),
(47, 9, 1, 3, 33, 2011, 'ENA de Meknès', '2016-01-05 10:38:04', '2016-01-05 10:38:04'),
(49, 10, 2, 6, 5, 1992, 'ENA de Meknès', '2016-01-05 10:42:59', '2016-01-05 10:42:59'),
(51, 29, 2, 36, 12, 2004, '', '2016-01-05 10:51:34', '2016-01-05 10:51:34'),
(52, 11, 1, 53, 33, 1979, '', '2016-01-05 10:54:27', '2016-01-05 10:54:27'),
(54, 12, 1, 8, 1, 1989, '', '2016-01-05 11:00:06', '2016-01-05 11:00:06'),
(57, 14, 2, 15, 13, 2010, 'Chaouia', '2016-01-05 11:09:48', '2016-01-05 11:09:48'),
(59, 27, 2, 36, 12, 2004, '', '2016-01-05 11:15:10', '2016-01-05 11:15:10'),
(60, 32, 1, 2, 1, 1992, '', '2016-01-05 11:21:50', '2016-01-05 11:21:50'),
(61, 31, 1, 8, 1, 1989, '', '2016-01-05 11:21:51', '2016-01-05 11:21:51'),
(62, 17, 1, 8, 1, 1988, '', '2016-01-05 11:24:26', '2016-01-05 11:24:26'),
(63, 18, 1, 18, 33, 2008, 'ENA de Meknès', '2016-01-05 11:28:43', '2016-01-05 11:28:43'),
(64, 34, 1, 23, 33, 1981, '', '2016-01-05 11:29:26', '2016-01-05 11:29:26'),
(65, 20, 1, 11, 1, 1980, '', '2016-01-05 11:34:40', '2016-01-05 11:34:40'),
(66, 36, 2, 8, 20, 1977, '', '2016-01-05 11:38:03', '2016-01-05 11:38:03'),
(67, 33, 1, 2, 1, 1979, '', '2016-01-05 11:39:38', '2016-01-05 11:39:38'),
(68, 35, 1, 53, 33, 1984, '', '2016-01-05 11:42:09', '2016-01-05 11:42:09'),
(69, 37, 2, 13, 20, 1995, '', '2016-01-05 11:47:20', '2016-01-05 11:47:20'),
(71, 26, 1, 53, 33, 1974, '', '2016-01-05 11:59:47', '2016-01-05 11:59:47'),
(73, 21, 1, 1, 1, 2002, '', '2016-01-05 12:01:26', '2016-01-05 12:01:26'),
(74, 39, 1, 8, 1, 1985, '', '2016-01-05 12:09:31', '2016-01-05 12:09:31'),
(75, 25, 1, 18, 33, 2005, 'ENA de Meknès', '2016-01-05 12:12:26', '2016-01-05 12:12:26'),
(79, 41, 4, 2, 5, 1973, 'centre prof d''apiculture prince sidi mohamed', '2016-01-05 12:17:28', '2016-01-05 12:17:28'),
(80, 23, 1, 6, 1, 1987, '', '2016-01-05 12:18:12', '2016-01-05 12:18:12'),
(81, 42, 1, 6, 1, 1980, '', '2016-01-05 12:27:01', '2016-01-05 12:27:01'),
(82, 38, 2, 56, 26, 1978, '', '2016-01-05 12:30:29', '2016-01-05 12:30:29'),
(83, 43, 2, 56, 25, 1980, '', '2016-01-05 12:32:25', '2016-01-05 12:32:25'),
(84, 47, 2, 23, 10, 1992, '', '2016-01-05 12:40:50', '2016-01-05 12:40:50'),
(85, 48, 2, 56, 28, 1974, '', '2016-01-05 12:53:25', '2016-01-05 12:53:25'),
(86, 44, 2, 23, 10, 1987, '', '2016-01-05 12:54:13', '2016-01-05 12:54:13'),
(87, 49, 2, 56, 25, 1979, '', '2016-01-05 13:03:24', '2016-01-05 13:03:24'),
(88, 51, 1, 6, 33, 2007, '', '2016-01-05 13:10:25', '2016-01-05 13:10:25'),
(90, 52, 2, 51, 24, 1987, '', '2016-01-05 13:18:06', '2016-01-05 13:18:06'),
(91, 53, 1, 11, 1, 1982, '', '2016-01-05 13:36:23', '2016-01-05 13:36:23'),
(92, 54, 1, 11, 5, 1989, 'université zaghrebe ', '2016-01-05 13:51:45', '2016-01-05 13:51:45'),
(93, 55, 1, 18, 1, 1990, '', '2016-01-05 14:08:20', '2016-01-05 14:08:20'),
(94, 56, 2, 8, 33, 1981, '', '2016-01-05 14:09:22', '2016-01-05 14:09:22'),
(95, 57, 2, 42, 7, 1999, '', '2016-01-05 14:16:26', '2016-01-05 14:16:26'),
(96, 58, 2, 42, 16, 2009, '', '2016-01-05 14:22:05', '2016-01-05 14:22:05'),
(97, 59, 2, 23, 12, 1970, '', '2016-01-05 14:36:22', '2016-01-05 14:36:22'),
(98, 62, 2, 8, 33, 1987, '', '2016-01-05 14:54:51', '2016-01-05 14:54:51'),
(99, 61, 4, 11, 5, 2009, 'CIHEAM', '2016-01-05 14:55:57', '2016-01-05 14:55:57'),
(101, 63, 1, 8, 1, 1981, '', '2016-01-05 15:03:18', '2016-01-05 15:03:18'),
(102, 64, 1, 12, 1, 1975, '', '2016-01-05 15:17:23', '2016-01-05 15:17:23'),
(104, 66, 1, 53, 33, 1983, '', '2016-01-05 15:26:03', '2016-01-05 15:26:03'),
(106, 68, 2, 56, 25, 1971, '', '2016-01-05 15:53:22', '2016-01-05 15:53:22'),
(107, 69, 1, 23, 33, 1983, '', '2016-01-05 16:04:58', '2016-01-05 16:04:58'),
(108, 70, 1, 14, 1, 1989, '', '2016-01-05 16:14:57', '2016-01-05 16:14:57'),
(109, 71, 1, 18, 33, 2007, '', '2016-01-05 16:22:10', '2016-01-05 16:22:10'),
(110, 67, 2, 8, 20, 1967, '', '2016-01-05 16:25:06', '2016-01-05 16:25:06'),
(111, 72, 1, 56, 33, 1974, '', '2016-01-05 16:30:38', '2016-01-05 16:30:38'),
(112, 73, 1, 8, 1, 1988, '', '2016-01-05 16:36:15', '2016-01-05 16:36:15'),
(114, 75, 2, 8, 28, 1996, '', '2016-01-05 16:53:15', '2016-01-05 16:53:15'),
(116, 77, 2, 51, 7, 1993, '', '2016-01-06 08:03:35', '2016-01-06 08:03:35'),
(117, 78, 2, 23, 10, 2007, '', '2016-01-06 08:12:28', '2016-01-06 08:12:28'),
(118, 79, 2, 42, 7, 1997, '', '2016-01-06 08:20:01', '2016-01-06 08:20:01'),
(119, 80, 2, 42, 16, 2011, '', '2016-01-06 08:25:49', '2016-01-06 08:25:49'),
(120, 81, 2, 12, 1, 1996, '', '2016-01-06 08:32:08', '2016-01-06 08:32:08'),
(122, 83, 1, 12, 1, 1983, '', '2016-01-06 08:47:46', '2016-01-06 08:47:46'),
(124, 85, 2, 33, 9, 2007, '', '2016-01-06 09:02:53', '2016-01-06 09:02:53'),
(125, 86, 1, 6, 33, 1996, '', '2016-01-06 09:41:21', '2016-01-06 09:41:21'),
(126, 87, 1, 23, 5, 1984, 'New mexico', '2016-01-06 09:51:55', '2016-01-06 09:51:55'),
(127, 88, 2, 2, 10, 1981, '', '2016-01-06 10:02:18', '2016-01-06 10:02:18'),
(128, 89, 2, 42, 7, 1996, '', '2016-01-06 10:12:20', '2016-01-06 10:12:20'),
(129, 45, 1, 11, 1, 1982, '', '2016-01-06 10:18:43', '2016-01-06 10:18:43'),
(130, 84, 2, 59, 5, 1994, 'ITA laayoune', '2016-01-06 10:45:11', '2016-01-06 10:45:11'),
(131, 76, 2, 58, 10, 1996, '', '2016-01-06 10:51:59', '2016-01-06 10:51:59'),
(132, 74, 4, 58, 5, 1970, 'centre professionnel d''apiculture', '2016-01-06 10:53:26', '2016-01-06 10:53:26'),
(133, 50, 4, 59, 34, 2015, '', '2016-01-06 10:58:47', '2016-01-06 10:58:47'),
(134, 22, 1, 25, 1, 1989, '', '2016-01-06 11:07:30', '2016-01-06 11:07:30'),
(136, 16, 2, 23, 10, 1976, 'Fouarat', '2016-01-06 11:11:14', '2016-01-06 11:11:14'),
(137, 90, 2, 42, 8, 2007, '', '2016-01-06 11:42:34', '2016-01-06 11:42:34'),
(138, 13, 1, 6, 33, 1986, 'ENA de Meknès', '2016-01-06 12:01:05', '2016-01-06 12:01:05'),
(139, 91, 1, 8, 33, 1976, '', '2016-01-06 14:14:07', '2016-01-06 14:14:07'),
(141, 92, 2, 8, 33, 1996, '', '2016-01-06 15:18:41', '2016-01-06 15:18:41'),
(144, 93, 1, 2, 1, 1992, '', '2016-01-06 17:07:05', '2016-01-06 17:07:05'),
(145, 94, 1, 53, 33, 1985, '', '2016-01-06 17:19:45', '2016-01-06 17:19:45'),
(147, 40, 1, 14, 33, 1998, '', '2016-01-07 08:27:06', '2016-01-07 08:27:06'),
(148, 46, 1, 12, 1, 1981, '', '2016-01-07 10:01:22', '2016-01-07 10:01:22'),
(149, 30, 2, 58, 10, 1998, '', '2016-01-07 10:36:34', '2016-01-07 10:36:34'),
(152, 95, 1, 2, 1, 2007, '', '2016-01-07 13:36:15', '2016-01-07 13:36:15'),
(153, 96, 2, 13, 26, 1993, '', '2016-01-14 12:20:11', '2016-01-14 12:20:11'),
(154, 97, 1, 6, 33, 1994, '', '2016-01-14 12:33:16', '2016-01-14 12:33:16'),
(156, 98, 2, 42, 13, 2007, '', '2016-01-14 13:11:06', '2016-01-14 13:11:06'),
(157, 99, 2, 42, 35, 2011, '', '2016-01-14 13:25:00', '2016-01-14 13:25:00'),
(158, 100, 2, 42, 24, 2000, '', '2016-01-14 13:48:33', '2016-01-14 13:48:33'),
(159, 101, 2, 42, 7, 1997, '', '2016-01-14 13:57:08', '2016-01-14 13:57:08'),
(160, 102, 1, 30, 1, 1991, '', '2016-01-14 14:07:28', '2016-01-14 14:07:28'),
(161, 103, 2, 23, 10, 2000, '', '2016-01-14 14:15:14', '2016-01-14 14:15:14'),
(162, 104, 1, 30, 5, 1996, 'université fatih Libie', '2016-01-15 09:16:07', '2016-01-15 09:16:07'),
(163, 105, 1, 2, 33, 2007, '', '2016-01-15 09:21:17', '2016-01-15 09:21:17'),
(164, 106, 2, 23, 18, 2014, '', '2016-01-15 10:24:48', '2016-01-15 10:24:48'),
(165, 108, 1, 3, 33, 2014, '', '2016-01-18 12:52:47', '2016-01-18 12:52:47'),
(166, 109, 2, 20, 24, 1989, '', '2016-01-18 13:14:31', '2016-01-18 13:14:31'),
(167, 110, 2, 33, 12, 1975, '', '2016-01-18 13:35:50', '2016-01-18 13:35:50'),
(168, 111, 2, 69, 12, 1985, '', '2016-01-18 13:56:40', '2016-01-18 13:56:40'),
(169, 112, 1, 79, 1, 1989, '', '2016-01-18 14:12:54', '2016-01-18 14:12:54'),
(170, 113, 1, 19, 33, 1981, '', '2016-01-18 14:40:22', '2016-01-18 14:40:22'),
(171, 114, 2, 8, 32, 1993, '', '2016-01-18 14:53:03', '2016-01-18 14:53:03'),
(172, 115, 2, 28, 5, 1996, 'OFPPT', '2016-01-18 15:06:37', '2016-01-18 15:06:37'),
(173, 116, 1, 2, 33, 1984, '', '2016-01-18 15:19:26', '2016-01-18 15:19:26'),
(174, 117, 2, 26, 1, 1994, '', '2016-01-18 15:28:19', '2016-01-18 15:28:19'),
(176, 119, 2, 36, 12, 1987, '', '2016-01-18 15:53:36', '2016-01-18 15:53:36'),
(177, 120, 2, 36, 12, 1987, '', '2016-01-18 16:11:37', '2016-01-18 16:11:37'),
(178, 121, 2, 36, 12, 1987, '', '2016-01-18 16:21:22', '2016-01-18 16:21:22'),
(179, 122, 2, 13, 24, 2000, '', '2016-01-19 11:39:23', '2016-01-19 11:39:23'),
(180, 123, 2, 33, 28, 1971, '', '2016-01-19 11:50:40', '2016-01-19 11:50:40'),
(181, 124, 2, 8, 1, 1994, '', '2016-01-19 12:13:23', '2016-01-19 12:13:23'),
(182, 125, 2, 42, 13, 2013, '', '2016-01-19 12:51:26', '2016-01-19 12:51:26'),
(183, 126, 2, 8, 1, 1994, '', '2016-01-19 13:15:52', '2016-01-19 13:15:52'),
(184, 127, 1, 25, 1, 1981, '', '2016-01-19 13:48:16', '2016-01-19 13:48:16'),
(185, 128, 4, 13, 11, 2005, '', '2016-01-19 14:22:36', '2016-01-19 14:22:36'),
(186, 129, 2, 8, 25, 2011, '', '2016-01-19 14:37:39', '2016-01-19 14:37:39'),
(187, 130, 2, 64, 9, 1998, '', '2016-01-19 14:48:22', '2016-01-19 14:48:22'),
(188, 131, 2, 36, 12, 1987, '', '2016-01-19 15:01:54', '2016-01-19 15:01:54'),
(189, 132, 1, 72, 33, 2004, '', '2016-01-19 15:44:47', '2016-01-19 15:44:47'),
(190, 133, 2, 8, 26, 2003, '', '2016-01-19 16:11:15', '2016-01-19 16:11:15'),
(191, 134, 2, 36, 25, 2009, '', '2016-01-19 16:23:56', '2016-01-19 16:23:56'),
(192, 135, 1, 14, 1, 1994, '', '2016-01-20 09:22:58', '2016-01-20 09:22:58'),
(193, 136, 2, 1, 25, 1978, '', '2016-01-20 09:36:04', '2016-01-20 09:36:04'),
(194, 137, 2, 24, 10, 2011, '', '2016-01-20 14:28:32', '2016-01-20 14:28:32'),
(195, 138, 1, 73, 33, 1973, '', '2016-01-20 14:46:41', '2016-01-20 14:46:41'),
(196, 139, 1, 8, 1, 1999, '', '2016-01-22 11:31:12', '2016-01-22 11:31:12'),
(197, 140, 1, 41, 5, 1985, 'Wyoming University Laramie USA', '2016-01-25 11:41:29', '2016-01-25 11:41:29'),
(198, 141, 2, 8, 32, 2009, '', '2016-01-25 12:11:27', '2016-01-25 12:11:27'),
(199, 28, 1, 18, 1, 1984, '', '2016-01-25 14:51:51', '2016-01-25 14:51:51'),
(200, 107, 1, 53, 1, 1979, '', '2016-01-26 12:19:30', '2016-01-26 12:19:30'),
(201, 142, 2, 28, 9, 1990, '', '2016-01-26 12:56:21', '2016-01-26 12:56:21'),
(202, 143, 1, 14, 33, 1997, '', '2016-01-26 14:11:09', '2016-01-26 14:11:09'),
(203, 144, 1, 72, 5, 1989, 'université oklahoma USA', '2016-01-26 14:40:50', '2016-01-26 14:40:50'),
(204, 145, 2, 42, 16, 2006, '', '2016-01-26 14:53:12', '2016-01-26 14:53:12'),
(205, 146, 2, 60, 7, 2015, '', '2016-01-26 15:06:17', '2016-01-26 15:06:17'),
(206, 147, 4, 26, 5, 2008, 'Institut National polytechnique de Toulouse', '2016-01-27 10:34:06', '2016-01-27 10:34:06'),
(207, 148, 2, 8, 28, 1992, '', '2016-01-27 11:49:45', '2016-01-27 11:49:45'),
(208, 149, 1, 1, 1, 1976, '', '2016-01-27 15:03:18', '2016-01-27 15:03:18'),
(209, 150, 1, 72, 33, 2008, '', '2016-01-27 15:36:09', '2016-01-27 15:36:09'),
(210, 151, 2, 23, 7, 2015, '', '2016-01-27 16:26:38', '2016-01-27 16:26:38'),
(211, 152, 1, 14, 33, 2011, '', '2016-01-27 16:40:36', '2016-01-27 16:40:36'),
(212, 153, 2, 8, 28, 2001, '', '2016-01-28 12:26:14', '2016-01-28 12:26:14'),
(213, 154, 2, 8, 28, 2007, '', '2016-01-28 12:35:12', '2016-01-28 12:35:12'),
(214, 155, 2, 8, 28, 1998, '', '2016-01-28 13:12:09', '2016-01-28 13:12:09'),
(215, 156, 2, 37, 31, 2010, '', '2016-01-28 15:03:34', '2016-01-28 15:03:34'),
(216, 157, 2, 8, 32, 1983, '', '2016-01-28 15:36:52', '2016-01-28 15:36:52'),
(217, 158, 2, 20, 7, 1987, '', '2016-01-28 15:47:06', '2016-01-28 15:47:06'),
(218, 159, 1, 11, 5, 1995, 'université laval', '2016-01-28 16:02:04', '2016-01-28 16:02:04'),
(219, 160, 2, 42, 27, 2003, '', '2016-01-28 16:16:37', '2016-01-28 16:16:37'),
(220, 161, 2, 20, 25, 1984, '', '2016-01-28 16:31:39', '2016-01-28 16:31:39'),
(221, 162, 1, 17, 1, 2009, '', '2016-01-28 16:46:24', '2016-01-28 16:46:24'),
(222, 163, 2, 42, 27, 1998, '', '2016-01-29 10:32:59', '2016-01-29 10:32:59'),
(223, 164, 2, 20, 28, 1978, '', '2016-01-29 10:43:37', '2016-01-29 10:43:37'),
(224, 165, 4, 20, 16, 1994, '', '2016-01-29 11:56:32', '2016-01-29 11:56:32'),
(225, 166, 4, 20, 13, 1972, '', '2016-01-29 12:07:08', '2016-01-29 12:07:08'),
(226, 167, 4, 20, 7, 1979, '', '2016-01-29 15:08:15', '2016-01-29 15:08:15'),
(227, 168, 2, 23, 10, 1984, '', '2016-01-29 15:29:26', '2016-01-29 15:29:26'),
(228, 169, 4, 20, 24, 1973, '', '2016-01-29 15:46:34', '2016-01-29 15:46:34'),
(229, 170, 4, 20, 24, 1971, '', '2016-01-29 15:57:28', '2016-01-29 15:57:28'),
(230, 171, 2, 42, 13, 2010, '', '2016-02-01 15:27:17', '2016-02-01 15:27:17'),
(231, 172, 1, 17, 1, 1986, '', '2016-02-01 15:40:53', '2016-02-01 15:40:53'),
(232, 173, 4, 7, 5, 2008, 'université Aïn Cok', '2016-02-01 16:04:02', '2016-02-01 16:04:02'),
(233, 174, 1, 29, 1, 1998, '', '2016-02-01 16:22:37', '2016-02-01 16:22:37'),
(234, 177, 1, 30, 1, 2010, '', '2016-02-03 13:59:16', '2016-02-03 13:59:16'),
(235, 178, 2, 42, 16, 2008, '', '2016-02-03 15:00:50', '2016-02-03 15:00:50'),
(236, 179, 2, 42, 16, 2009, '', '2016-02-03 15:11:08', '2016-02-03 15:11:08'),
(237, 180, 2, 24, 10, 2008, '', '2016-02-03 15:27:26', '2016-02-03 15:27:26'),
(238, 200, 2, 58, 10, 1999, '', '2016-02-05 12:25:05', '2016-02-05 12:25:05'),
(239, 181, 1, 39, 33, 1974, '', '2016-02-05 14:35:10', '2016-02-05 14:35:10'),
(240, 183, 2, 42, 7, 1999, '', '2016-02-05 16:38:00', '2016-02-05 16:38:00'),
(241, 184, 2, 8, 30, 2012, '', '2016-02-05 16:44:56', '2016-02-05 16:44:56'),
(242, 185, 2, 37, 12, 2002, '', '2016-02-08 10:53:21', '2016-02-08 10:53:21'),
(243, 186, 4, 42, 24, 2008, '', '2016-02-08 11:05:43', '2016-02-08 11:05:43'),
(244, 187, 2, 37, 28, 2009, '', '2016-02-08 11:21:42', '2016-02-08 11:21:42'),
(245, 188, 2, 29, 9, 2000, '', '2016-02-08 11:36:36', '2016-02-08 11:36:36'),
(246, 189, 1, 8, 1, 1992, '', '2016-02-08 11:46:22', '2016-02-08 11:46:22'),
(247, 190, 1, 17, 1, 1986, '', '2016-02-08 11:56:48', '2016-02-08 11:56:48'),
(248, 199, 1, 1, 33, 1995, '', '2016-02-08 12:21:41', '2016-02-08 12:21:41'),
(249, 191, 1, 23, 33, 1987, '', '2016-02-08 13:20:50', '2016-02-08 13:20:50'),
(250, 192, 1, 42, 16, 2002, '', '2016-02-08 13:51:41', '2016-02-08 13:51:41'),
(251, 193, 2, 24, 10, 2015, '', '2016-02-08 14:05:31', '2016-02-08 14:05:31'),
(252, 194, 2, 42, 13, 2009, '', '2016-02-08 14:16:14', '2016-02-08 14:16:14'),
(253, 195, 2, 23, 28, 2011, '', '2016-02-08 14:40:36', '2016-02-08 14:40:36'),
(254, 196, 2, 8, 28, 2010, '', '2016-02-08 15:05:24', '2016-02-08 15:05:24'),
(255, 197, 1, 17, 1, 1988, '', '2016-02-08 15:15:40', '2016-02-08 15:15:40'),
(256, 198, 1, 23, 33, 1979, '', '2016-02-08 15:51:08', '2016-02-08 15:51:08'),
(257, 202, 2, 8, 18, 2014, '', '2016-02-10 09:48:53', '2016-02-10 09:48:53'),
(258, 203, 2, 1, 28, 1976, '', '2016-02-10 10:17:40', '2016-02-10 10:17:40'),
(259, 204, 2, 42, 23, 2011, '', '2016-02-10 10:26:18', '2016-02-10 10:26:18'),
(260, 205, 2, 42, 23, 2011, '', '2016-02-10 11:08:59', '2016-02-10 11:08:59'),
(261, 206, 2, 37, 12, 2013, '', '2016-02-10 11:20:55', '2016-02-10 11:20:55'),
(262, 207, 2, 42, 16, 2008, '', '2016-02-10 12:11:40', '2016-02-10 12:11:40'),
(263, 208, 1, 30, 5, 1997, 'Université agraire d''état de Kharkov V.V Dokoutchaev Ukraine', '2016-02-10 12:30:45', '2016-02-10 12:30:45'),
(264, 209, 2, 42, 27, 2004, '', '2016-02-10 12:59:33', '2016-02-10 12:59:33'),
(265, 210, 1, 19, 33, 1980, '', '2016-02-10 14:47:45', '2016-02-10 14:47:45'),
(266, 211, 1, 3, 33, 2011, '', '2016-02-10 15:09:41', '2016-02-10 15:09:41'),
(267, 175, 2, 24, 10, 2011, '', '2016-02-23 14:57:04', '2016-02-23 14:57:04'),
(268, 82, 1, 29, 5, 1982, 'Ecole supérieur allemagne', '2016-02-24 10:49:54', '2016-02-24 10:49:54'),
(269, 118, 2, 36, 12, 1987, '', '2016-02-25 10:06:22', '2016-02-25 10:06:22'),
(270, 65, 2, 56, 28, 1982, '', '2016-02-25 10:09:42', '2016-02-25 10:09:42'),
(271, 176, 2, 42, 23, 2009, '', '2016-02-25 11:56:39', '2016-02-25 11:56:39'),
(272, 212, 2, 42, 24, 2008, '', '2016-03-01 11:31:25', '2016-03-01 11:31:25'),
(273, 213, 2, 17, 20, 2001, '', '2016-03-01 11:43:11', '2016-03-01 11:43:11'),
(276, 214, 2, 24, 10, 2008, '', '2016-03-01 12:04:12', '2016-03-01 12:04:12'),
(277, 215, 2, 8, 25, 2002, '', '2016-03-01 12:19:36', '2016-03-01 12:19:36'),
(278, 216, 2, 42, 23, 2010, '', '2016-03-01 12:46:26', '2016-03-01 12:46:26'),
(279, 217, 4, 23, 1, 1980, '', '2016-03-01 13:01:22', '2016-03-01 13:01:22'),
(280, 218, 1, 23, 33, 1980, '', '2016-03-01 13:38:35', '2016-03-01 13:38:35'),
(281, 219, 2, 42, 25, 1981, '', '2016-03-01 13:54:37', '2016-03-01 13:54:37'),
(282, 220, 2, 42, 18, 2009, '', '2016-03-01 14:04:17', '2016-03-01 14:04:17'),
(283, 221, 4, 20, 35, 1994, '', '2016-03-01 14:55:33', '2016-03-01 14:55:33'),
(284, 222, 2, 42, 28, 1978, '', '2016-03-01 15:08:49', '2016-03-01 15:08:49'),
(285, 223, 2, 8, 20, 2014, '', '2016-03-01 15:21:07', '2016-03-01 15:21:07'),
(286, 224, 2, 60, 7, 2014, '', '2016-03-01 15:31:57', '2016-03-01 15:31:57'),
(287, 225, 2, 20, 12, 1977, '', '2016-03-08 11:59:06', '2016-03-08 11:59:06'),
(288, 226, 1, 23, 33, 1988, '', '2016-03-08 12:37:53', '2016-03-08 12:37:53'),
(289, 227, 2, 36, 12, 1987, '', '2016-03-08 14:15:39', '2016-03-08 14:15:39'),
(290, 228, 2, 20, 13, 1994, '', '2016-03-08 14:35:28', '2016-03-08 14:35:28');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_schema_migrations`
--

CREATE TABLE `pfm_schema_migrations` (
  `id` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_schema_migrations`
--

INSERT INTO `pfm_schema_migrations` (`id`, `class`, `type`, `created`) VALUES
(1, 'InitMigrations', 'Migrations', '2015-07-11 18:14:19'),
(2, 'ConvertVersionToClassNames', 'Migrations', '2015-07-11 18:14:20'),
(3, 'IncreaseClassNameLength', 'Migrations', '2015-07-11 18:14:20');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_services`
--

CREATE TABLE `pfm_services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abreviation` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_services`
--

INSERT INTO `pfm_services` (`id`, `name`, `abreviation`, `logo`, `created`, `updated`) VALUES
(1, 'Ministère de l''Enseignement Supérieur, de la Recherche Scientifique et de la Formation des Cadres/Direction des Affaires Juridiques, des Equivalences et du contentieux', 'DAJEC', '', '2015-07-23 00:00:00', '2016-04-18 12:50:51'),
(2, 'La Direction de l''Irrigation et de l''Aménagement de l''Espace Agricole ', 'DIAEA', '', '2015-09-03 11:55:56', '2015-12-21 17:09:21'),
(3, 'La Direction du Développement des Filières de Production ', 'DDFP', '', '2015-09-03 21:37:08', '2015-12-21 17:07:13'),
(4, 'La Direction de l''Enseignement, de la Formation et de la Recherche', 'DEFR', '', '2015-09-03 21:44:55', '2015-12-21 17:06:01'),
(6, 'Ministère de l''Education Nationale et de la Formation Professionnelle/ Direction des Affaires Juridiques et du Contentieux', 'DAJC', NULL, '2015-12-21 17:12:28', '2016-04-18 12:51:57'),
(7, 'L''Office National du Conseil Agricole ', 'ONCA', NULL, '2015-12-21 17:16:13', '2015-12-21 17:16:13'),
(8, 'L’Office National de Sécurité Sanitaire des Produits Alimentaires', 'ONSSPA', NULL, '2015-12-21 17:17:06', '2015-12-21 17:17:06'),
(9, 'L’Institut National de la Recherche Agronomique ', 'INRA', NULL, '2015-12-21 17:17:29', '2015-12-21 17:17:29'),
(10, 'L’Institut Agronomique et Vétérinaire Hassan II ', 'IAV', NULL, '2015-12-21 17:18:05', '2015-12-21 17:18:05'),
(11, 'L’Ecole Nationale d’Agriculture de Meknès', 'ENAM', NULL, '2015-12-21 17:18:34', '2015-12-21 17:18:34'),
(12, 'La Fédération des Chambres d''Agriculture', 'FECAM', NULL, '2015-12-21 17:20:54', '2016-04-18 12:55:01'),
(13, 'La Fédération Interprofessionnelle des Producteurs et exportateurs de Fruits et Légumes ', 'FIFEL', NULL, '2015-12-21 17:22:22', '2016-04-18 13:06:39'),
(14, 'La Fédération Interprofessionnelle des Viandes Rouges ', 'FIVIAR', NULL, '2015-12-21 17:22:55', '2016-04-18 13:07:10'),
(15, 'La Fédération Interprofessionnelle des Céréales', 'FIAC', NULL, '2015-12-21 17:23:23', '2016-04-18 13:10:16'),
(18, 'Confédération Marocaine de l''Agriculture et du Développement Rural', 'COMADER', NULL, '2016-04-18 13:18:01', '2016-04-18 13:18:01'),
(20, 'Autre', 'Autre', NULL, '2016-04-18 13:19:39', '2016-04-18 13:19:39');

-- --------------------------------------------------------

--
-- Structure de la table `pfm_specialities`
--

CREATE TABLE `pfm_specialities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `official_speciality_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pfm_specialities`
--

INSERT INTO `pfm_specialities` (`id`, `name`, `official_speciality_id`, `created`, `updated`) VALUES
(1, 'Production végétale ', 8, '2015-07-23 00:00:00', '2016-04-18 09:28:50'),
(2, 'Ingénierie des Productions Animales ', 5, '2015-07-23 00:00:00', '2016-04-18 09:31:46'),
(3, 'Ingénierie de Développement ', 11, '2015-12-21 16:23:03', '2016-04-18 09:32:41'),
(4, 'Ecologie et Management des Ressources Naturelles ', 14, '2015-12-21 16:23:29', '2016-04-18 09:33:10'),
(6, 'Oléiculture et Viticulture', 8, '2015-12-21 16:24:06', '2016-01-19 10:24:31'),
(7, 'Protection des Plantes et de l''Environnement', 1, '2015-12-21 16:24:25', '2016-04-18 09:33:53'),
(8, 'Horticulture', 8, '2015-12-21 16:24:39', '2016-01-19 10:25:43'),
(9, 'Maraîchage', 8, '2015-12-21 16:24:52', '2016-01-19 10:25:57'),
(10, 'Technologie Alimentaire', 9, '2015-12-21 16:25:06', '2016-01-19 10:26:14'),
(11, 'Industries Agricoles et Alimentaires', 9, '2015-12-21 16:25:19', '2016-01-19 10:26:35'),
(12, 'Génie rural:Energie et Agroéquipement', 10, '2015-12-21 16:25:31', '2016-02-24 13:51:37'),
(13, 'Arboriculture Fruitière', 8, '2015-12-21 16:26:58', '2016-04-18 09:34:52'),
(14, 'Agro-économique', 11, '2015-12-21 16:27:09', '2016-01-19 10:28:21'),
(16, 'Productions Animales et Pastoralisme', 5, '2015-12-21 16:27:40', '2016-01-19 10:29:38'),
(17, 'Protection des Plantes ', 1, '2015-12-21 16:27:53', '2016-01-19 10:33:30'),
(18, 'Sciences et Techniques des Productions Végétales', 8, '2015-12-21 16:28:07', '2016-01-19 10:33:52'),
(19, 'Techniques et Développement', 8, '2015-12-21 16:28:25', '2016-01-19 10:34:08'),
(20, 'Grandes cultures', 8, '2016-01-04 16:38:39', '2016-01-19 10:34:24'),
(21, 'Valorisation des Plantes Aromatiques et Médicinales', 9, '2016-01-04 16:38:50', '2016-04-18 09:37:44'),
(23, 'Elevage', 5, '2016-01-04 16:39:30', '2016-01-19 10:35:30'),
(24, 'Aviculture', 5, '2016-01-04 16:39:41', '2016-01-19 10:35:53'),
(25, 'Science du sol', 14, '2016-01-04 16:39:50', '2016-01-19 10:36:14'),
(27, 'Gestion et Maitrise de L''eau', 10, '2016-01-04 16:40:23', '2016-01-19 10:37:01'),
(28, 'Electromécanique', 10, '2016-01-04 16:40:32', '2016-01-19 10:55:36'),
(29, 'Machinisme agricole', 10, '2016-01-04 16:41:17', '2016-01-19 10:56:18'),
(30, 'Agronomie', 8, '2016-01-04 16:41:42', '2016-01-19 10:57:04'),
(31, 'Technico-commercial en Agroéquipement', 2, '2016-01-04 16:41:59', '2016-04-18 09:45:24'),
(33, 'Arboriculture', 8, '2016-01-04 16:42:25', '2016-01-19 10:58:17'),
(34, 'Qualité des Produits Animaux et d''Origine Animale', 12, '2016-01-04 16:42:44', '2016-01-19 10:58:40'),
(35, 'Technicien en Santé Animale', 5, '2016-01-04 16:44:18', '2016-04-18 09:55:11'),
(36, 'Gestion des entreprises agricoles', 6, '2016-01-04 16:44:54', '2016-01-19 10:59:23'),
(37, 'Commercialisation des intrants agricoles', 2, '2016-01-04 16:45:47', '2016-01-19 10:59:45'),
(38, 'Horticulture ornementale et aménagement des espaces verts', 8, '2016-01-04 16:45:56', '2016-01-19 11:00:08'),
(39, 'Phytiatrie', 1, '2016-01-04 16:46:57', '2016-01-19 11:00:24'),
(40, 'Qualité en agroalimentaire', 12, '2016-01-04 16:47:42', '2016-01-19 11:00:38'),
(41, 'Pastoralisme', 5, '2016-01-04 16:48:00', '2016-01-19 11:00:55'),
(42, 'Polyculture élevage ', 7, '2016-01-04 16:48:31', '2016-01-19 11:01:18'),
(44, 'Grandes cultures et élevage', 7, '2016-01-04 16:49:46', '2016-01-19 11:01:54'),
(45, 'Valorisation et marketing des produits et intrants agricoles', 2, '2016-01-04 16:49:55', '2016-01-19 11:03:07'),
(46, 'Produits de terroir', 8, '2016-01-04 16:51:32', '2016-02-24 13:10:55'),
(47, 'Plantes Aromatiques et Médicinales', 8, '2016-01-04 16:55:16', '2016-04-18 10:03:51'),
(48, 'Technico-commercial en productions horticoles', 2, '2016-01-04 16:55:34', '2016-01-19 11:04:07'),
(49, 'Elevage des Ruminants', 5, '2016-01-04 16:55:48', '2016-04-18 10:04:31'),
(50, 'Elevage du Dromadaire', 5, '2016-01-04 16:56:25', '2016-04-18 10:04:48'),
(51, 'Bovins laitiers', 5, '2016-01-04 16:58:07', '2016-01-19 11:05:35'),
(52, 'Elevage Ovin Caprin', 5, '2016-01-04 16:58:28', '2016-01-19 11:05:50'),
(53, 'Zootechnie', 5, '2016-01-04 16:59:59', '2016-01-19 11:06:07'),
(54, 'Ingénierie de développement rural', 11, '2016-01-04 17:00:20', '2016-01-19 11:06:38'),
(56, 'Sciences et Techniques des Productions Arboricoles', 8, '2016-01-05 11:52:41', '2016-04-18 10:05:51'),
(57, 'Arboriculture Fruitière, Oléiculture , Viticulture', 8, '2016-01-06 10:04:18', '2016-04-18 10:06:35'),
(58, 'Apiculture', 5, '2016-01-06 10:04:42', '2016-01-19 11:07:30'),
(59, 'Phoeniciculture, Safran et Rose', 8, '2016-01-06 10:06:31', '2016-04-18 10:07:12'),
(60, 'Elevage Bovins, Ovins, Caprins', 5, '2016-01-15 16:07:51', '2016-04-18 10:07:59'),
(61, 'Amélioration génétique animale', 5, '2016-01-15 16:09:06', '2016-01-19 11:08:25'),
(62, 'Management des productions végétales et environnement', 8, '2016-01-15 16:10:06', '2016-01-19 11:09:09'),
(63, 'Production maraîchères et grandes cultures', 8, '2016-01-15 16:10:51', '2016-01-19 11:22:54'),
(64, 'Equipement rural', 10, '2016-01-15 16:11:22', '2016-01-19 11:25:47'),
(65, 'Travaux ruraux', 10, '2016-01-15 16:11:41', '2016-01-19 11:26:32'),
(66, 'Installation des systèmes d''irrigation', 10, '2016-01-15 16:12:06', '2016-01-19 11:26:53'),
(67, 'Génie rural:Irrigation et infrastructures', 10, '2016-01-15 16:12:25', '2016-02-24 13:52:18'),
(68, 'Développement rural', 11, '2016-01-15 16:12:44', '2016-01-19 11:27:50'),
(69, 'Gestion', 11, '2016-01-15 16:12:58', '2016-01-19 11:28:07'),
(70, 'Ingénierie de développement économique et social', 11, '2016-01-15 16:13:33', '2016-01-19 11:28:26'),
(71, 'Economie et Management des systèmes agro alimentaires', 11, '2016-01-15 16:14:09', '2016-01-19 11:29:02'),
(72, 'Vulgarisation agricole', 11, '2016-01-15 16:14:40', '2016-01-19 11:29:25'),
(73, 'Pédagogie agricole', 11, '2016-01-15 16:15:22', '2016-01-19 11:29:38'),
(74, 'Labo et agroalimentaire', 12, '2016-01-15 16:16:07', '2016-01-19 11:29:53'),
(75, 'Management des ressources en sol et eau', 14, '2016-01-15 16:16:37', '2016-01-19 11:30:13'),
(76, 'Amélioration génétique végétale', 8, '2016-01-15 16:17:04', '2016-04-18 10:10:38'),
(77, 'Ingénierie des productions des semences et plants', 8, '2016-01-15 16:18:19', '2016-04-18 10:10:57'),
(78, 'Génétique et production des semences et plants', 8, '2016-01-15 16:18:52', '2016-04-18 10:13:30'),
(79, 'Génie Rural', 10, '2016-01-18 14:09:15', '2016-01-19 11:31:43'),
(80, 'Ingénierie Agro-économique', 11, '2016-02-24 13:54:39', '2016-02-24 13:54:39'),
(81, 'Pédologie', 14, '2016-02-24 13:56:56', '2016-02-24 13:56:56'),
(82, 'Mécanique Agricole', 10, '2016-02-24 13:57:37', '2016-02-24 13:57:37'),
(83, 'Chimie', 12, '2016-02-24 14:40:48', '2016-02-24 14:40:48'),
(84, 'Agro-industrie', 9, '2016-02-25 10:41:55', '2016-02-25 10:41:55'),
(85, 'Elevage Bovins, Ovins', 5, '2016-04-18 10:22:19', '2016-04-18 10:22:19'),
(86, 'Biotechnologie Animale', 5, '2016-04-18 10:22:47', '2016-04-18 10:22:47'),
(87, 'Production Animale', 5, '2016-04-18 10:24:31', '2016-04-18 10:24:31'),
(88, 'Ingénierie en Industrie Agro-Alimentaire', 9, '2016-04-18 10:28:21', '2016-04-18 10:28:21'),
(89, 'Gestion', 11, '2016-04-18 10:28:46', '2016-04-18 10:28:46'),
(90, 'Economie Rurale', 11, '2016-04-18 10:29:11', '2016-04-18 10:29:11'),
(91, 'Agroenvirennement ', 14, '2016-04-18 10:30:07', '2016-04-18 10:30:07'),
(92, 'Foresterie', 14, '2016-04-18 10:30:29', '2016-04-18 10:30:29'),
(93, 'Ecologie végétale', 14, '2016-04-18 10:30:55', '2016-04-18 10:30:55');

-- --------------------------------------------------------

--
-- Structure de la table `rqm_administrations`
--

CREATE TABLE `rqm_administrations` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rqm_final_judgments`
--

CREATE TABLE `rqm_final_judgments` (
  `id` int(11) NOT NULL,
  `judgment_id` int(11) NOT NULL,
  `event_date` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rqm_judgments`
--

CREATE TABLE `rqm_judgments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `highlight` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rqm_judgments`
--

INSERT INTO `rqm_judgments` (`id`, `name`, `alias`, `color`, `highlight`, `created`, `updated`) VALUES
(1, 'Favorable', 'favorable', 'green', '#5AD3D1', '2015-08-04 00:00:00', '2015-08-04 00:00:00'),
(2, 'Défavorable', 'unfavorable', 'red', '#FF5A5E', '2015-08-04 00:00:00', '2015-08-04 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `rqm_meetings`
--

CREATE TABLE `rqm_meetings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_date` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rqm_meetings`
--

INSERT INTO `rqm_meetings` (`id`, `user_id`, `event_date`, `name`, `description`, `closed`, `archived`, `created`, `updated`) VALUES
(1, 58, '2016-01-07 02:47:16', 'Réunion de la Commission Nationale de Conseil du {1}', NULL, 1, 0, '2016-01-07 14:43:50', '2016-01-07 14:54:58'),
(2, 57, '2016-02-24 12:40:42', 'Réunion de la Commission Nationale de Conseil du {1}', NULL, 0, 0, '2016-02-24 12:36:30', '2016-02-24 12:36:30');

-- --------------------------------------------------------

--
-- Structure de la table `rqm_meetings_requests`
--

CREATE TABLE `rqm_meetings_requests` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `judgment_id` int(11) DEFAULT NULL,
  `specialities` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rqm_meetings_requests`
--

INSERT INTO `rqm_meetings_requests` (`id`, `request_id`, `meeting_id`, `judgment_id`, `specialities`, `description`, `created`, `updated`) VALUES
(1, 95, 1, 1, NULL, 'avis de la commission ', '2016-01-07 14:43:50', '2016-01-07 14:54:24'),
(96, 82, 2, 1, '["10"]', '', '2016-02-24 15:01:15', '2016-02-24 15:10:01'),
(97, 83, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(98, 84, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(99, 88, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(100, 85, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(101, 86, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(102, 87, 2, 1, '["5"]', '', '2016-02-24 15:01:15', '2016-04-13 09:06:33'),
(103, 98, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(104, 67, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(105, 74, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(106, 72, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(107, 73, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(108, 75, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(109, 97, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(110, 76, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(111, 65, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(112, 92, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(113, 93, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(114, 124, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(115, 108, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(116, 99, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(117, 142, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(118, 106, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(119, 100, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(120, 101, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(121, 122, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(122, 169, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(123, 170, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(124, 123, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(125, 102, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(126, 168, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(127, 104, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(128, 103, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(129, 105, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(130, 109, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(131, 175, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(132, 110, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(133, 111, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(134, 112, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(135, 113, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(136, 114, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(137, 115, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(138, 116, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(139, 117, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(140, 118, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(141, 119, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(142, 120, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(143, 121, 2, NULL, NULL, NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15');

-- --------------------------------------------------------

--
-- Structure de la table `rqm_meetings_users`
--

CREATE TABLE `rqm_meetings_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `presence` tinyint(1) NOT NULL,
  `created` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rqm_meetings_users`
--

INSERT INTO `rqm_meetings_users` (`id`, `user_id`, `meeting_id`, `presence`, `created`, `updated`) VALUES
(1, 69, 1, 0, '1452177830', '1452177830'),
(2, 66, 1, 0, '1452177830', '1452177830'),
(3, 60, 1, 0, '1452177830', '1452177830'),
(4, 67, 1, 0, '1452177830', '1452177830'),
(5, 62, 1, 0, '1452177830', '1452177830'),
(6, 71, 1, 0, '1452177830', '1452177830'),
(7, 64, 1, 0, '1452177830', '1452177830'),
(8, 61, 1, 0, '1452177830', '1452177830'),
(9, 59, 1, 0, '1452177830', '1452177830'),
(10, 63, 1, 0, '1452177830', '1452177830'),
(11, 68, 1, 0, '1452177830', '1452177830'),
(12, 72, 1, 0, '1452177830', '1452177830'),
(13, 65, 1, 0, '1452177830', '1452177830'),
(14, 72, 2, 0, '1456317390', '1456317390'),
(15, 71, 2, 0, '1456317390', '1456317390'),
(16, 69, 2, 0, '1456317390', '1456317390'),
(17, 68, 2, 0, '1456317390', '1456317390'),
(18, 67, 2, 0, '1456317391', '1456317391'),
(19, 66, 2, 0, '1456317391', '1456317391'),
(20, 65, 2, 0, '1456317391', '1456317391'),
(21, 64, 2, 0, '1456317391', '1456317391'),
(22, 63, 2, 0, '1456317391', '1456317391'),
(23, 62, 2, 0, '1456317391', '1456317391'),
(24, 61, 2, 0, '1456317391', '1456317391'),
(25, 60, 2, 0, '1456317391', '1456317391'),
(26, 59, 2, 0, '1456317391', '1456317391');

-- --------------------------------------------------------

--
-- Structure de la table `rqm_members_requests`
--

CREATE TABLE `rqm_members_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `judgment_id` int(11) NOT NULL,
  `specialities` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rqm_members_requests`
--

INSERT INTO `rqm_members_requests` (`id`, `user_id`, `request_id`, `judgment_id`, `specialities`, `event_date`, `description`, `created`, `updated`) VALUES
(1, 57, 46, 1, NULL, '2016-01-07 00:00:00', '', '2016-01-07 10:12:58', '2016-01-07 10:12:58'),
(2, 57, 42, 1, NULL, '2016-01-07 00:00:00', '', '2016-01-07 10:14:18', '2016-01-07 10:14:18'),
(3, 57, 33, 1, NULL, '2016-01-07 00:00:00', '', '2016-01-07 10:46:48', '2016-01-07 10:46:48'),
(4, 57, 25, 1, NULL, '2016-01-07 00:00:00', 'Arboculture', '2016-01-07 10:47:48', '2016-01-07 11:31:45'),
(5, 57, 54, 1, NULL, '2016-01-07 00:00:00', 'PA', '2016-01-07 11:01:49', '2016-01-07 11:01:49'),
(6, 57, 36, 1, NULL, '2016-01-07 00:00:00', 'Horticulture', '2016-01-07 11:08:21', '2016-01-07 11:55:23'),
(7, 57, 31, 1, NULL, '2016-01-07 00:00:00', 'Horticulture', '2016-01-07 11:32:28', '2016-01-07 11:33:11'),
(8, 57, 35, 1, NULL, '2016-01-07 00:00:00', 'T&D', '2016-01-07 11:33:49', '2016-01-07 11:33:49'),
(9, 57, 27, 1, NULL, '2016-01-07 00:00:00', 'GEA', '2016-01-07 11:35:02', '2016-01-07 11:35:02'),
(10, 57, 29, 1, NULL, '2016-01-07 00:00:00', 'GEA', '2016-01-07 11:52:56', '2016-01-07 11:52:56'),
(11, 57, 32, 1, NULL, '2016-01-07 00:00:00', 'PA', '2016-01-07 11:54:17', '2016-01-07 11:54:17'),
(12, 57, 34, 1, NULL, '2016-01-07 00:00:00', 'PA\r\n', '2016-01-07 11:54:53', '2016-01-07 11:54:53'),
(13, 57, 37, 1, NULL, '2016-01-07 00:00:00', 'Arbo. fruitière', '2016-01-07 11:58:05', '2016-01-07 11:58:05'),
(14, 57, 41, 2, NULL, '2016-01-07 00:00:00', 'Agent', '2016-01-07 11:58:49', '2016-01-07 11:58:49'),
(15, 57, 49, 1, NULL, '2016-01-07 00:00:00', 'Grande culture', '2016-01-07 11:59:35', '2016-01-07 12:02:06'),
(16, 57, 45, 1, NULL, '2016-01-07 00:00:00', 'Indus. Agro-Alimentaire', '2016-01-07 12:04:37', '2016-01-07 12:04:37'),
(17, 57, 58, 1, NULL, '2016-01-07 00:00:00', 'Polyculture', '2016-01-07 12:35:00', '2016-01-07 12:35:00'),
(18, 58, 95, 1, NULL, '2016-01-07 00:00:00', 'commentaire noura', '2016-01-07 14:24:27', '2016-01-07 14:24:27'),
(19, 67, 95, 2, NULL, '2016-01-07 00:00:00', 'avis Mr Aboudrar:\r\nagent technique', '2016-01-07 14:41:32', '2016-01-07 14:41:32'),
(20, 57, 59, 2, NULL, '2016-01-07 00:00:00', 'Agent technique', '2016-01-07 15:10:20', '2016-01-07 15:10:20'),
(21, 57, 55, 1, NULL, '2016-01-07 00:00:00', 'DVPT économique et social', '2016-01-07 15:12:02', '2016-01-07 15:12:02'),
(22, 57, 94, 1, NULL, '2016-01-07 00:00:00', 'production végétal', '2016-01-07 15:16:49', '2016-01-07 15:16:49'),
(23, 57, 50, 2, NULL, '2016-01-07 00:00:00', 'Diplôme non conforme', '2016-01-07 15:18:30', '2016-01-07 15:18:30'),
(24, 57, 89, 1, NULL, '2016-01-07 00:00:00', 'culture et elevage', '2016-01-07 15:23:07', '2016-01-07 15:23:07'),
(25, 57, 78, 1, NULL, '2016-01-07 00:00:00', 'elevage', '2016-01-07 15:24:58', '2016-01-07 15:24:58'),
(26, 57, 79, 1, NULL, '2016-01-07 00:00:00', 'Grande culture et elevage', '2016-01-07 15:26:19', '2016-01-07 15:26:19'),
(27, 57, 80, 1, NULL, '2016-01-07 00:00:00', 'Grande culture et elevage', '2016-01-07 15:28:59', '2016-01-07 15:28:59'),
(28, 57, 81, 1, NULL, '2016-01-07 00:00:00', 'Génie rural', '2016-01-07 15:32:32', '2016-01-07 15:32:32'),
(29, 58, 94, 1, NULL, '2016-01-13 00:00:00', 'Production Végétale', '2016-01-13 10:03:39', '2016-01-13 10:04:07'),
(30, 62, 82, 1, '["8"]', '2016-02-24 00:00:00', '', '2016-02-24 11:48:16', '2016-02-24 11:48:16'),
(31, 63, 82, 1, '["10"]', '2016-02-24 00:00:00', '', '2016-02-24 11:50:41', '2016-02-24 11:50:41'),
(32, 57, 82, 1, '["10"]', '2016-02-24 00:00:00', '', '2016-02-24 12:56:57', '2016-02-24 14:19:05');

-- --------------------------------------------------------

--
-- Structure de la table `rqm_requests`
--

CREATE TABLE `rqm_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `requester_type` enum('natural','legal') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'natural',
  `number` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `event_date` date NOT NULL,
  `status_id` int(11) NOT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `pdf_downloaded` tinyint(1) NOT NULL DEFAULT '0',
  `qr_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rqm_requests`
--

INSERT INTO `rqm_requests` (`id`, `user_id`, `requester_id`, `requester_type`, `number`, `event_date`, `status_id`, `archived`, `pdf_downloaded`, `qr_code`, `created`, `updated`) VALUES
(5, 46, 5, 'natural', '1/2015', '2015-12-05', 6, 0, 1, 'a87ff679a2f3e71d9181a67b7542122c', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(6, 48, 6, 'natural', '14/2015', '2015-12-05', 6, 0, 0, 'e4da3b7fbbce2345d7772b0674a318d5', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(7, 49, 7, 'natural', '3/2015', '2015-12-05', 6, 0, 0, '1679091c5a880faf6fb5e6087eb1b2dc', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(8, 50, 8, 'natural', '4/2015', '2015-12-05', 6, 0, 0, '8f14e45fceea167a5a36dedd4bea2543', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(9, 52, 9, 'natural', '7/2015', '2015-12-05', 6, 0, 0, 'c9f0f895fb98ab9159f51fd0297e236d', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(10, 53, 10, 'natural', '8/2015', '2015-12-05', 6, 0, 0, '45c48cce2e2d7fbdea1afc51c7c6ad26', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(11, 54, 11, 'natural', '9/2015', '2015-12-05', 6, 0, 0, 'd3d9446802a44259755d38e6d163e820', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(12, 55, 12, 'natural', '10/2015', '2015-12-05', 6, 0, 0, '6512bd43d9caa6e02c990b0a82652dca', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(13, 56, 13, 'natural', '11/2015', '2015-12-05', 6, 0, 0, 'c20ad4d76fe97759aa27a0c99bff6710', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(14, 57, 14, 'natural', '12/2015', '2015-12-05', 6, 0, 0, 'c51ce410c124a10e0db5e4b97fc2af39', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(15, 58, 15, 'natural', '13/2015', '2015-12-05', 6, 0, 1, 'aab3238922bcc25a6f606eb525ffdc56', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(16, 59, 16, 'natural', '15/2015', '2015-12-05', 6, 0, 0, '9bf31c7ff062936a96d3c8bd1f8f2ff3', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(17, 60, 17, 'natural', '16/2015', '2015-12-05', 6, 0, 0, 'c74d97b01eae257e44aa9d5bade97baf', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(18, 61, 18, 'natural', '17/2015', '2015-12-05', 6, 0, 0, '70efdf2ec9b086079795c442636b55fb', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(19, 62, 19, 'natural', '19/2015', '2015-12-05', 6, 0, 0, '6f4922f45568161a8cdf4ad2299f6d23', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(20, 63, 20, 'natural', '20/2015', '2015-12-05', 6, 0, 1, '1f0e3dad99908345f7439f8ffabdffc4', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(21, 64, 21, 'natural', '21/2015', '2015-12-05', 6, 0, 0, '98f13708210194c475687be6106a3b84', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(22, 65, 22, 'natural', '22/2015', '2015-12-05', 6, 0, 0, '3c59dc048e8850243be8079a5c74d079', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(23, 66, 23, 'natural', '23/2015', '2015-12-05', 6, 0, 0, 'b6d767d2f8ed5d21a44b0e5886680cb9', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(24, 51, 24, 'natural', '5/2015', '2015-12-05', 6, 0, 0, '37693cfc748049e45d87b8c7d8b9aacd', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(25, 68, 25, 'natural', '6/2016', '2016-01-04', 6, 0, 0, 'c4ca4238a0b923820dcc509a6f75849b', '2016-01-04 09:26:17', '2016-01-05 12:11:01'),
(26, 73, 2, 'legal', '46/2015', '2015-12-05', 6, 0, 0, '8e296a067a37563370ded05f5a3bf3ec', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(27, 82, 27, 'natural', '9/2016', '2016-01-05', 6, 0, 0, '4e732ced3463d06de0ca9a15b6153677', '2016-01-05 10:31:54', '2016-01-05 11:15:05'),
(28, 79, 8, 'legal', '45/2015', '2015-12-05', 6, 0, 0, '02e74f10e0327ad868d138f2b4fdd6f0', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(29, 83, 29, 'natural', '10/2016', '2016-01-05', 6, 0, 0, '33e75ff09dd601bbe69f351039152189', '2016-01-05 10:42:28', '2016-01-05 10:42:28'),
(30, 78, 30, 'natural', '5/2016', '2016-01-05', 6, 0, 0, '6ea9ab1baa0efb9e19094440c317e21b', '2016-01-05 11:00:54', '2016-01-07 10:36:01'),
(31, 72, 31, 'natural', '7/2016', '2016-01-05', 6, 0, 0, '34173cb38f07f89ddbebc2ac9128303f', '2016-01-05 11:04:49', '2016-01-05 11:20:26'),
(32, 84, 32, 'natural', '11/2016', '2016-01-05', 6, 0, 0, 'c16a5320fa475530d9583c34fd356ef5', '2016-01-05 11:17:31', '2016-01-05 11:17:31'),
(33, 77, 33, 'natural', '4/2016', '2016-01-05', 6, 0, 0, '6364d3f0f495b6ab9dcf8d3b5c6e0b01', '2016-01-05 11:20:11', '2016-01-05 11:20:11'),
(34, 85, 34, 'natural', '12/2016', '2016-01-05', 6, 0, 0, '182be0c5cdcd5072bb1864cdee4d3d6e', '2016-01-05 11:23:52', '2016-01-05 11:23:52'),
(35, 81, 35, 'natural', '8/2016', '2016-01-05', 6, 0, 0, 'e369853df766fa44e1ed0ff613f563bd', '2016-01-05 11:28:41', '2016-01-05 11:28:41'),
(36, 86, 36, 'natural', '13/2016', '2016-01-05', 6, 0, 0, '1c383cd30b7c298ab50293adfecb7b18', '2016-01-05 11:31:15', '2016-01-05 11:31:15'),
(37, 87, 37, 'natural', '14/2016', '2016-01-05', 6, 0, 0, '19ca14e7ea6328a42e0eb13d585e4c22', '2016-01-05 11:41:46', '2016-01-05 11:41:46'),
(38, 88, 38, 'natural', '15/2016', '2016-01-05', 6, 0, 0, 'a5bfc9e07964f8dddeb95fc584cd965d', '2016-01-05 11:49:22', '2016-01-05 12:29:56'),
(39, 76, 39, 'natural', '3/2016', '2016-01-05', 6, 0, 0, 'a5771bce93e200c36f7cd9dfd0e5deaa', '2016-01-05 11:50:02', '2016-01-05 11:50:02'),
(40, 93, 4, 'legal', '48/2015', '2015-12-05', 6, 0, 1, 'd67d8ab4f4c10bf22aa353e27879133c', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(41, 90, 41, 'natural', '17/2016', '2016-01-05', 6, 0, 0, 'd645920e395fedad7bbbed0eca3fe2e0', '2016-01-05 12:06:07', '2016-01-05 12:17:22'),
(42, 75, 42, 'natural', '2/2016', '2016-01-05', 6, 0, 0, '3416a75f4cea9109507cacd8e2f2aefc', '2016-01-05 12:16:20', '2016-01-05 12:16:20'),
(43, 106, 43, 'natural', '25/2015', '2015-12-05', 6, 0, 0, 'a1d0c6e83f027327d8461063f4ac58a6', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(44, 103, 44, 'natural', '29/2016', '2016-01-05', 6, 0, 0, '17e62166fc8586dfa4d1bc0e1742c08b', '2016-01-05 12:28:09', '2016-01-05 12:28:09'),
(45, 94, 45, 'natural', '20/2016', '2016-01-05', 6, 0, 0, 'f7177163c833dff4b38fc8d2872f1ec6', '2016-01-05 12:31:45', '2016-01-06 10:14:33'),
(46, 74, 46, 'natural', '1/2016', '2016-01-05', 6, 0, 1, '6c8349cc7260ae62e3b1396831a8398f', '2016-01-05 12:35:59', '2016-01-07 10:01:33'),
(47, 105, 47, 'natural', '6/2015', '2015-12-05', 6, 0, 0, 'd9d4f495e875a2e075a1a4a6e1b9770f', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(48, 104, 48, 'natural', '18/2015', '2015-12-05', 6, 0, 0, '67c6a1e7ce56d3d6fa748ab6d9af3fd7', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(49, 91, 49, 'natural', '18/2016', '2016-01-05', 6, 0, 0, '642e92efb79421734881b53e1e1b18b6', '2016-01-05 12:55:48', '2016-01-05 12:55:48'),
(50, 102, 50, 'natural', '28/2016', '2016-01-05', 6, 0, 0, 'f457c545a9ded88f18ecee47145a72c0', '2016-01-05 12:59:33', '2016-01-06 10:58:22'),
(51, 107, 51, 'natural', '26/2015', '2015-12-05', 6, 0, 0, 'c0c7c76d30bd3dcaefc96f40275bdc0a', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(52, 108, 52, 'natural', '27/2015', '2015-12-05', 6, 0, 0, '2838023a778dfaecdc212708f721b788', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(53, 109, 53, 'natural', '28/2015', '2015-12-05', 6, 0, 1, '9a1158154dfa42caddbd0694a4e9bdc8', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(54, 92, 54, 'natural', '19/2016', '2016-01-05', 6, 0, 0, 'd82c8d1619ad8176d665453cfb2e55f0', '2016-01-05 13:39:20', '2016-01-05 13:39:20'),
(55, 100, 55, 'natural', '26/2016', '2016-01-05', 6, 0, 0, 'a684eceee76fc522773286a895bc8436', '2016-01-05 13:50:26', '2016-01-05 13:50:26'),
(56, 99, 56, 'natural', '25/2016', '2016-01-05', 6, 0, 0, 'b53b3a3d6ab90ce0268229151c9bde11', '2016-01-05 13:56:55', '2016-01-05 13:56:55'),
(57, 110, 57, 'natural', '29/2015', '2015-12-05', 6, 0, 0, '9f61408e3afb633e50cdf1b20de6f466', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(58, 96, 58, 'natural', '22/2016', '2016-01-05', 6, 0, 0, '72b32a1f754ba1c09b3695e0cb6cde7f', '2016-01-05 14:11:22', '2016-01-05 14:11:22'),
(59, 98, 59, 'natural', '24/2016', '2016-01-05', 6, 0, 0, '66f041e16a60928b05a7e228a89c3799', '2016-01-05 14:17:57', '2016-01-05 14:17:57'),
(61, 111, 61, 'natural', '31/2015', '2015-12-05', 6, 0, 0, '072b030ba126b2f4b2374f342be9ed44', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(62, 97, 62, 'natural', '23/2016', '2016-01-05', 6, 0, 0, '7f39f8317fbdb1988ef4c628eba02591', '2016-01-05 14:44:38', '2016-01-05 14:44:38'),
(63, 112, 63, 'natural', '32/2015', '2015-12-05', 6, 0, 0, '44f683a84163b3523afe57c2e008bc8c', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(64, 95, 64, 'natural', '21/2016', '2016-01-05', 6, 0, 0, '03afdbd66e7929b125f8597834fa83a4', '2016-01-05 15:10:53', '2016-01-05 15:10:53'),
(65, 69, 65, 'natural', '51/2016', '2016-01-05', 5, 0, 0, 'ea5d2f1c4608232e07d3aa3d998e5135', '2016-01-05 15:12:54', '2016-02-25 10:09:35'),
(66, 113, 66, 'natural', '33/2015', '2015-12-05', 6, 0, 0, 'fc490ca45c00b1249bbe3554a4fdf6fb', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(67, 132, 67, 'natural', '44/2016', '2016-01-05', 5, 0, 0, '3295c76acbf4caaed33c36b1b5fc2cb1', '2016-01-05 15:24:49', '2016-02-24 15:01:15'),
(68, 114, 68, 'natural', '34/2015', '2015-12-05', 6, 0, 0, '735b90b4568125ed6c3f678819b6e058', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(69, 115, 69, 'natural', '35/2015', '2015-12-05', 6, 0, 0, 'a3f390d88e4c41f2747bfa2f1b5f87db', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(70, 117, 70, 'natural', '37/2015', '2015-12-05', 6, 0, 0, '14bfa6bb14875e45bba028a21ed38046', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(71, 119, 71, 'natural', '39/2015', '2015-12-05', 6, 0, 0, '7cbbc409ec990f19c78c75bd1e06f215', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(72, 133, 72, 'natural', '46/2016', '2016-01-05', 5, 0, 0, 'e2c420d928d4bf8ce0ff2ec19b371514', '2016-01-05 16:27:04', '2016-02-24 15:01:15'),
(73, 134, 73, 'natural', '47/2016', '2016-01-05', 5, 0, 0, '32bb90e8976aab5298d5da10fe66f21d', '2016-01-05 16:32:29', '2016-02-24 15:01:15'),
(74, 135, 74, 'natural', '45/2016', '2016-01-05', 5, 0, 0, 'd2ddea18f00665ce8623e36bd4e3c7c5', '2016-01-05 16:44:00', '2016-02-24 15:01:15'),
(75, 71, 75, 'natural', '48/2016', '2016-01-05', 5, 0, 0, 'ad61ab143223efbc24c7d2583be69251', '2016-01-05 16:50:00', '2016-02-24 15:01:15'),
(76, 70, 76, 'natural', '50/2016', '2016-01-06', 5, 0, 0, 'd09bf41544a3365a46c9077ebb5e35c3', '2016-01-06 07:52:10', '2016-02-24 15:01:15'),
(77, 120, 77, 'natural', '31/2016', '2016-01-06', 6, 0, 0, 'fbd7939d674997cdb4692d34de8633c4', '2016-01-06 07:59:41', '2016-01-06 07:59:41'),
(78, 121, 78, 'natural', '32/2016', '2016-01-06', 6, 0, 0, '28dd2c7955ce926456240b2ff0100bde', '2016-01-06 08:07:51', '2016-01-06 08:07:51'),
(79, 122, 79, 'natural', '33/2016', '2016-01-06', 6, 0, 0, '35f4a8d465e6e1edc05f3d8ab658c551', '2016-01-06 08:15:44', '2016-01-06 08:15:44'),
(80, 123, 80, 'natural', '34/2016', '2016-01-06', 6, 0, 0, 'd1fe173d08e959397adf34b1d77e88d7', '2016-01-06 08:21:52', '2016-01-06 08:21:52'),
(81, 124, 81, 'natural', '35/2016', '2016-01-06', 6, 0, 0, 'f033ab37c30201f73f142449d037028d', '2016-01-06 08:27:48', '2016-01-06 08:27:48'),
(82, 125, 82, 'natural', '36/2016', '2016-01-06', 5, 0, 0, '43ec517d68b6edd3015b3edc9a11367b', '2016-01-06 08:34:31', '2016-02-24 15:01:15'),
(83, 126, 83, 'natural', '37/2016', '2016-01-06', 5, 0, 1, '9778d5d219c5080b9a6a17bef029331c', '2016-01-06 08:42:50', '2016-02-24 15:01:15'),
(84, 127, 84, 'natural', '38/2016', '2016-01-06', 5, 0, 0, 'fe9fc289c3ff0af142b6d3bead98a923', '2016-01-06 08:50:46', '2016-02-24 15:01:15'),
(85, 128, 85, 'natural', '40/2016', '2016-01-06', 5, 0, 1, '68d30a9594728bc39aa24be94b319d21', '2016-01-06 08:58:21', '2016-02-24 15:01:15'),
(86, 129, 86, 'natural', '41/2016', '2016-01-06', 5, 0, 0, '3ef815416f775098fe977004015c6193', '2016-01-06 09:36:37', '2016-02-24 15:01:15'),
(87, 131, 87, 'natural', '42/2016', '2016-01-06', 5, 0, 0, '93db85ed909c13838ff95ccfa94cebd9', '2016-01-06 09:46:41', '2016-02-24 15:01:15'),
(88, 130, 88, 'natural', '39/2016', '2016-01-06', 5, 0, 0, 'c7e1249ffc03eb9ded908c236bd1996d', '2016-01-06 09:54:39', '2016-02-24 15:01:15'),
(89, 101, 89, 'natural', '27/2016', '2016-01-06', 6, 0, 0, '2a38a4a9316c49e5a833517c45d31070', '2016-01-06 10:08:03', '2016-01-06 10:08:03'),
(90, 143, 90, 'natural', '40/2015', '2015-12-05', 6, 0, 0, '7647966b7343c29048673252e490f736', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(91, 141, 3, 'legal', '44/2015', '2015-12-05', 6, 0, 0, '8613985ec49eb8f757ae6439e879bb2a', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(92, 144, 92, 'natural', '52/2016', '2016-01-06', 5, 0, 0, '54229abfcfa5649e7003b83dd4755294', '2016-01-06 15:10:28', '2016-02-24 15:01:15'),
(93, 145, 93, 'natural', '53/2016', '2016-01-06', 5, 0, 0, '92cc227532d17e56e07902b254dfad10', '2016-01-06 15:37:33', '2016-02-24 15:01:15'),
(94, 146, 94, 'natural', '30/2016', '2016-01-06', 6, 0, 0, '98dce83da57b0395e163467c9dae521b', '2016-01-06 17:15:39', '2016-01-06 17:15:39'),
(95, 147, 95, 'natural', '500/2016', '2016-01-07', 9, 0, 1, 'f4b9ec30ad9f68f89b29639786cb62ef', '2016-01-07 11:46:33', '2016-02-02 10:46:16'),
(96, 116, 96, 'natural', '36/2015', '2015-12-05', 6, 0, 1, '812b4ba287f5ee0bc9d43bbf5bbe87fb', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(97, 150, 97, 'natural', '49/2016', '2016-01-14', 5, 0, 0, '26657d5ff9020d2abefe558796b99584', '2016-01-14 12:25:41', '2016-02-24 15:01:15'),
(98, 162, 98, 'natural', '43/2016', '2016-01-14', 5, 0, 1, 'e2ef524fbf3d9fe611d5a8e90fefdc9c', '2016-01-14 12:51:55', '2016-02-24 15:01:15'),
(99, 152, 99, 'natural', '56/2016', '2016-01-14', 5, 0, 0, 'ed3d2c21991e3bef5e069713af9fa6ca', '2016-01-14 13:14:18', '2016-02-24 15:01:15'),
(100, 154, 100, 'natural', '59/2016', '2016-01-14', 5, 0, 0, 'ac627ab1ccbdb62ec96e702f07f6425b', '2016-01-14 13:43:04', '2016-02-24 15:01:15'),
(101, 155, 101, 'natural', '60/2016', '2016-01-14', 5, 0, 0, 'f899139df5e1059396431415e770c6dd', '2016-01-14 13:50:45', '2016-02-24 15:01:15'),
(102, 156, 102, 'natural', '65/2016', '2016-01-14', 5, 0, 0, '38b3eff8baf56627478ec76a704e9b52', '2016-01-14 14:04:00', '2016-02-24 15:01:15'),
(103, 160, 103, 'natural', '68/2016', '2016-01-14', 5, 0, 0, 'ec8956637a99787bd197eacd77acce5e', '2016-01-14 14:09:27', '2016-02-24 15:01:15'),
(104, 159, 104, 'natural', '67/2016', '2016-01-15', 5, 0, 0, '6974ce5ac660610b44d9b9fed0ff9548', '2016-01-15 09:10:58', '2016-02-24 15:01:15'),
(105, 161, 105, 'natural', '69/2016', '2016-01-15', 5, 0, 0, 'c9e1074f5b3f9fc8ea15d152add07294', '2016-01-15 09:17:43', '2016-02-24 15:01:15'),
(106, 153, 106, 'natural', '58/2016', '2016-01-15', 5, 0, 0, '65b9eea6e1cc6bb9f0cd2a47751a186f', '2016-01-15 10:08:09', '2016-02-24 15:01:15'),
(107, 163, 9, 'legal', '145/2016', '2016-01-18', 3, 0, 0, 'f0935e4cd5920aa6c7c996a5ee53a70f', '2016-01-18 12:24:20', '2016-01-26 11:50:07'),
(108, 164, 108, 'natural', '55/2016', '2016-01-18', 5, 0, 0, 'a97da629b098b75c294dffdc3e463904', '2016-01-18 12:25:28', '2016-02-24 15:01:15'),
(109, 168, 109, 'natural', '70/2016', '2016-01-18', 5, 0, 0, 'a3c65c2974270fd093ee8a9bf8ae7d0b', '2016-01-18 13:05:18', '2016-02-24 15:01:15'),
(110, 184, 110, 'natural', '72/2016', '2016-01-18', 5, 0, 0, '2723d092b63885e0d7c260cc007e8b9d', '2016-01-18 13:31:26', '2016-02-24 15:01:15'),
(111, 185, 111, 'natural', '73/2016', '2016-01-18', 5, 0, 0, '5f93f983524def3dca464469d2cf9f3e', '2016-01-18 13:53:08', '2016-02-24 15:01:15'),
(112, 170, 112, 'natural', '74/2016', '2016-01-18', 5, 0, 0, '698d51a19d8a121ce581499d7b701668', '2016-01-18 14:06:08', '2016-02-24 15:01:15'),
(113, 171, 113, 'natural', '75/2016', '2016-01-18', 5, 0, 0, '7f6ffaa6bb0b408017b62254211691b5', '2016-01-18 14:37:01', '2016-02-24 15:01:15'),
(114, 172, 114, 'natural', '76/2016', '2016-01-18', 5, 0, 0, '73278a4a86960eeb576a8fd4c9ec6997', '2016-01-18 14:48:06', '2016-02-24 15:01:15'),
(115, 173, 115, 'natural', '77/2016', '2016-01-18', 5, 0, 0, '5fd0b37cd7dbbb00f97ba6ce92bf5add', '2016-01-18 15:02:46', '2016-02-24 15:01:15'),
(116, 174, 116, 'natural', '78/2016', '2016-01-18', 5, 0, 0, '2b44928ae11fb9384c4cf38708677c48', '2016-01-18 15:15:56', '2016-02-24 15:01:15'),
(117, 175, 117, 'natural', '79/2016', '2016-01-18', 5, 0, 0, 'c45147dee729311ef5b5c3003946c48f', '2016-01-18 15:24:48', '2016-02-24 15:01:15'),
(118, 176, 118, 'natural', '80/2016', '2016-01-18', 5, 0, 0, 'eb160de1de89d9058fcb0b968dbbbd68', '2016-01-18 15:35:28', '2016-02-25 10:06:15'),
(119, 177, 119, 'natural', '81/2016', '2016-01-18', 5, 0, 0, '5ef059938ba799aaa845e1c2e8a762bd', '2016-01-18 15:49:28', '2016-02-24 15:01:15'),
(120, 186, 120, 'natural', '82/2016', '2016-01-18', 5, 0, 0, '07e1cd7dca89a1678042477183b7ac3f', '2016-01-18 16:03:43', '2016-02-24 15:01:15'),
(121, 178, 121, 'natural', '83/2016', '2016-01-18', 5, 0, 0, 'da4fb5c6e93e74d3df8527599fa62642', '2016-01-18 16:18:27', '2016-02-24 15:01:15'),
(122, 180, 122, 'natural', '61/2016', '2016-01-19', 5, 0, 0, '4c56ff4ce4aaf9573aa5dff913df997a', '2016-01-19 11:34:47', '2016-02-24 15:01:15'),
(123, 183, 123, 'natural', '64/2016', '2016-01-19', 5, 0, 0, 'a0a080f42e6f13b3a2df133f073095dd', '2016-01-19 11:42:17', '2016-02-24 15:01:15'),
(124, 151, 124, 'natural', '54/2016', '2016-01-19', 5, 0, 0, '202cb962ac59075b964b07152d234b70', '2016-01-19 12:09:39', '2016-02-24 15:01:15'),
(125, 187, 125, 'natural', '84/2016', '2016-01-19', 3, 0, 0, 'c8ffe9a587b126f152ed3d89a146b445', '2016-01-19 12:48:39', '2016-01-19 12:48:39'),
(126, 188, 126, 'natural', '85/2016', '2016-01-19', 3, 0, 0, '3def184ad8f4755ff269862ea77393dd', '2016-01-19 13:12:27', '2016-01-19 13:12:27'),
(127, 189, 127, 'natural', '86/2016', '2016-01-19', 3, 0, 0, '069059b7ef840f0c74a814ec9237b6ec', '2016-01-19 13:33:56', '2016-01-19 13:33:56'),
(128, 190, 128, 'natural', '87/2016', '2016-01-19', 3, 0, 0, 'ec5decca5ed3d6b8079e2e7e7bacc9f2', '2016-01-19 14:05:55', '2016-01-19 14:12:28'),
(129, 191, 129, 'natural', '88/2016', '2016-01-19', 3, 0, 0, '76dc611d6ebaafc66cc0879c71b5db5c', '2016-01-19 14:31:56', '2016-01-19 14:31:56'),
(130, 192, 130, 'natural', '89/2016', '2016-01-19', 3, 0, 0, 'd1f491a404d6854880943e5c3cd9ca25', '2016-01-19 14:45:55', '2016-01-19 14:45:55'),
(131, 193, 131, 'natural', '90/2016', '2016-01-19', 3, 0, 0, '9b8619251a19057cff70779273e95aa6', '2016-01-19 14:57:34', '2016-01-19 14:57:34'),
(132, 194, 132, 'natural', '91/2016', '2016-01-19', 3, 0, 0, '1afa34a7f984eeabdbb0a7d494132ee5', '2016-01-19 15:37:32', '2016-01-19 15:37:32'),
(133, 196, 133, 'natural', '93/2016', '2016-01-19', 3, 0, 0, '65ded5353c5ee48d0b7d48c591b8f430', '2016-01-19 16:07:41', '2016-01-19 16:07:41'),
(134, 197, 134, 'natural', '94/2016', '2016-01-19', 3, 0, 0, '9fc3d7152ba9336a670e36d0ed79bc43', '2016-01-19 16:19:47', '2016-01-19 16:19:47'),
(135, 198, 135, 'natural', '95/2016', '2016-01-20', 3, 0, 0, '02522a2b2726fb0a03bb19f2d8d9524d', '2016-01-20 09:18:13', '2016-01-20 09:18:13'),
(136, 199, 136, 'natural', '96/2016', '2016-01-20', 3, 0, 0, '7f1de29e6da19d22b51c68001e7e0e54', '2016-01-20 09:32:41', '2016-01-20 09:32:41'),
(137, 202, 5, 'legal', '141/2016', '2016-01-20', 9, 0, 0, '42a0e188f5033bc65bf8d78622277c4e', '2016-01-20 14:20:57', '2016-01-20 14:20:57'),
(138, 203, 138, 'natural', '98/2016', '2016-01-20', 3, 0, 0, '3988c7f88ebcb58c6ce932b957b6f332', '2016-01-20 14:36:37', '2016-01-20 14:36:37'),
(139, 167, 139, 'natural', '38/2015', '2015-12-05', 6, 0, 0, '013d407166ec4fa56eb1e1f8cbe183b9', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(140, 142, 6, 'legal', '42/2015', '2015-12-05', 6, 0, 0, '013d407166ec4fa56eb1e1f8cbe183b9', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(141, 136, 7, 'legal', '41/2015', '2015-12-05', 6, 0, 0, '1385974ed5904a438616ff7bdb3f7439', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(142, 118, 142, 'natural', '57/2016', '2016-01-26', 5, 0, 0, '013d407166ec4fa56eb1e1f8cbe183b9', '2016-01-26 12:52:23', '2016-02-24 15:01:15'),
(143, 209, 10, 'legal', '142/2016', '2016-01-26', 3, 0, 0, 'a8baa56554f96369ab93e4f3bb068c22', '2016-01-26 14:06:35', '2016-01-26 14:06:35'),
(144, 204, 144, 'natural', '99/2016', '2016-01-26', 3, 0, 0, '903ce9225fca3e988c2af215d4e544d3', '2016-01-26 14:34:56', '2016-01-26 14:34:56'),
(145, 205, 145, 'natural', '100/2016', '2016-01-26', 3, 0, 0, '0a09c8844ba8f0936c20bd791130d6b6', '2016-01-26 14:47:56', '2016-01-26 14:48:13'),
(146, 206, 146, 'natural', '101/2016', '2016-01-26', 3, 0, 0, '2b24d495052a8ce66358eb576b8912c8', '2016-01-26 15:00:39', '2016-01-26 15:03:13'),
(147, 138, 11, 'legal', '43/2015', '2015-12-05', 6, 0, 0, 'a5e00132373a7031000fd987a3c9f87b', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(148, 139, 12, 'legal', '49/2015', '2015-12-05', 6, 0, 0, '8d5e957f297893487bd98fa830fa6413', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(149, 137, 13, 'legal', '50/2015', '2015-12-05', 6, 0, 0, '47d1e990583c9c67424d369f3414728e', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(150, 213, 14, 'legal', '47/2015', '2015-12-05', 6, 0, 0, 'f2217062e9a397a1dca429e7d70bc6ca', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(151, 207, 151, 'natural', '102/2016', '2016-01-27', 3, 0, 0, '7ef605fc8dba5425d6965fbd4c8fbe1f', '2016-01-27 16:18:09', '2016-01-27 16:18:09'),
(152, 208, 152, 'natural', '103/2016', '2016-01-27', 3, 0, 0, 'a8f15eda80c50adb0e71943adc8015cf', '2016-01-27 16:37:17', '2016-01-27 16:37:17'),
(153, 210, 153, 'natural', '104/2016', '2016-01-28', 3, 0, 0, '37a749d808e46495a8da1e5352d03cae', '2016-01-28 12:20:51', '2016-01-28 12:20:51'),
(154, 211, 154, 'natural', '105/2016', '2016-01-28', 3, 0, 0, 'b3e3e393c77e35a4a3f3cbd1e429b5dc', '2016-01-28 12:32:16', '2016-01-28 12:32:16'),
(155, 212, 155, 'natural', '106/2016', '2016-01-28', 3, 0, 0, '1d7f7abc18fcb43975065399b0d1e48e', '2016-01-28 12:42:29', '2016-01-28 12:42:29'),
(156, 214, 156, 'natural', '107/2016', '2016-01-28', 3, 0, 0, '2a79ea27c279e471f4d180b08d62b00a', '2016-01-28 13:14:30', '2016-01-28 13:14:30'),
(157, 215, 157, 'natural', '108/2016', '2016-01-28', 3, 0, 0, '1c9ac0159c94d8d0cbedc973445af2da', '2016-01-28 15:31:31', '2016-01-28 15:31:31'),
(158, 216, 158, 'natural', '109/2016', '2016-01-28', 3, 0, 0, '6c4b761a28b734fe93831e3fb400ce87', '2016-01-28 15:44:17', '2016-01-28 15:44:17'),
(159, 217, 159, 'natural', '110/2016', '2016-01-28', 3, 0, 0, '06409663226af2f3114485aa4e0a23b4', '2016-01-28 15:57:59', '2016-01-28 15:57:59'),
(160, 218, 160, 'natural', '111/2016', '2016-01-28', 3, 0, 0, '140f6969d5213fd0ece03148e62e461e', '2016-01-28 16:13:10', '2016-01-28 16:13:10'),
(161, 219, 161, 'natural', '112/2016', '2016-01-28', 3, 0, 0, 'b73ce398c39f506af761d2277d853a92', '2016-01-28 16:28:24', '2016-01-28 16:28:24'),
(162, 220, 162, 'natural', '113/2016', '2016-01-28', 3, 0, 0, 'bd4c9ab730f5513206b999ec0d90d1fb', '2016-01-28 16:42:55', '2016-01-28 16:42:55'),
(163, 221, 163, 'natural', '114/2016', '2016-01-29', 3, 0, 0, '82aa4b0af34c2313a562076992e50aa3', '2016-01-29 10:29:45', '2016-01-29 10:29:45'),
(164, 222, 164, 'natural', '115/2016', '2016-01-29', 3, 0, 0, '0777d5c17d4066b82ab86dff8a46af6f', '2016-01-29 10:40:45', '2016-01-29 10:40:45'),
(165, 165, 165, 'natural', '2/2015', '2015-12-05', 6, 0, 0, 'fa7cdfad1a5aaf8370ebeda47a1ff1c3', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(166, 166, 166, 'natural', '24/2015', '2015-12-05', 6, 0, 0, '9766527f2b5d3e95d4a733fcfb77bd7e', '2015-12-05 10:35:04', '2015-12-05 10:35:04'),
(167, 89, 167, 'natural', '16/2016', '2016-01-29', 6, 0, 0, '7e7757b1e12abcb736ab9a754ffb617a', '2016-01-29 15:01:46', '2016-01-29 15:01:46'),
(168, 157, 168, 'natural', '66/2016', '2016-01-29', 5, 0, 0, '5878a7ab84fb43402106c575658472fa', '2016-01-29 15:25:29', '2016-02-24 15:01:15'),
(169, 181, 169, 'natural', '62/2016', '2016-01-29', 5, 0, 0, '006f52e9102a8d3be2fe5614f42ba989', '2016-01-29 15:41:09', '2016-02-24 15:01:15'),
(170, 182, 170, 'natural', '63/2016', '2016-01-29', 5, 0, 0, '3636638817772e42b59d74cff571fbb3', '2016-01-29 15:53:17', '2016-02-24 15:01:15'),
(171, 223, 171, 'natural', '116/2016', '2016-02-01', 3, 0, 0, '149e9677a5989fd342ae44213df68868', '2016-02-01 15:23:04', '2016-02-01 15:23:04'),
(172, 224, 172, 'natural', '117/2016', '2016-02-01', 3, 0, 0, 'a4a042cf4fd6bfb47701cbc8a1653ada', '2016-02-01 15:35:05', '2016-02-01 15:35:05'),
(173, 225, 173, 'natural', '118/2016', '2016-02-01', 3, 0, 0, '1ff8a7b5dc7a7d1f0ed65aaa29c04b1e', '2016-02-01 15:56:31', '2016-02-01 15:56:31'),
(174, 228, 15, 'legal', '143/2016', '2016-02-01', 3, 0, 0, 'f7e6c85504ce6e82442c770f7c8606f0', '2016-02-01 16:15:04', '2016-02-01 16:19:57'),
(175, 169, 175, 'natural', '71/2016', '2016-02-02', 5, 0, 0, 'bf8229696f7a3bb4700cfddef19fa23f', '2016-02-02 15:34:27', '2016-02-24 15:01:15'),
(176, 195, 176, 'natural', '92/2016', '2016-02-03', 1, 0, 0, '82161242827b703e6acf9c726942a1e4', '2016-02-03 11:35:02', '2016-02-25 11:53:51'),
(177, 241, 16, 'legal', '140/2016', '2016-02-03', 3, 0, 0, '38af86134b65d0f10fe33d30dd76442e', '2016-02-03 13:51:15', '2016-02-03 13:51:15'),
(178, 226, 178, 'natural', '119/2016', '2016-02-03', 3, 0, 0, '96da2f590cd7246bbde0051047b0d6f7', '2016-02-03 14:53:20', '2016-02-03 14:53:20'),
(179, 227, 179, 'natural', '120/2016', '2016-02-03', 3, 0, 0, '8f85517967795eeef66c225f7883bdcb', '2016-02-03 15:06:19', '2016-02-03 15:06:19'),
(180, 234, 180, 'natural', '121/2016', '2016-02-03', 3, 0, 0, '8f53295a73878494e9bc8dd6c3c7104f', '2016-02-03 15:14:06', '2016-02-03 15:14:06'),
(181, 200, 181, 'natural', '30/2015', '2015-12-05', 6, 0, 0, '045117b0e0a11a242b9765e79cbf113f', '2015-12-05 10:43:32', '2016-02-05 14:24:24'),
(182, 201, 182, 'natural', '97/2016', '2016-02-04', 9, 0, 0, '045117b0e0a11a242b9765e79cbf113f', '2016-02-04 11:08:05', '2016-02-04 11:08:05'),
(183, 232, 183, 'natural', '122/2016', '2016-02-04', 3, 0, 0, '4c5bde74a8f110656874902f07378009', '2016-02-04 12:08:59', '2016-02-05 16:31:24'),
(184, 233, 184, 'natural', '123/2016', '2016-02-04', 3, 0, 0, 'cedebb6e872f539bef8c3f919874e9d7', '2016-02-04 12:09:47', '2016-02-05 16:41:26'),
(185, 243, 185, 'natural', '124/2016', '2016-02-04', 3, 0, 0, '6cdd60ea0045eb7a6ec44c54d29ed402', '2016-02-04 12:44:47', '2016-02-08 10:34:44'),
(186, 237, 186, 'natural', '125/2016', '2016-02-04', 3, 0, 0, 'eecca5b6365d9607ee5a9d336962c534', '2016-02-04 12:45:42', '2016-02-08 10:58:05'),
(187, 229, 187, 'natural', '126/2016', '2016-02-04', 3, 0, 0, '9872ed9fc22fc182d371c3e9ed316094', '2016-02-04 12:46:14', '2016-02-08 11:13:02'),
(188, 238, 188, 'natural', '127/2016', '2016-02-04', 3, 0, 0, '31fefc0e570cb3860f2a6d4b38c6490d', '2016-02-04 12:47:04', '2016-02-08 11:29:15'),
(189, 231, 189, 'natural', '128/2016', '2016-02-04', 3, 0, 0, '9dcb88e0137649590b755372b040afad', '2016-02-04 12:47:32', '2016-02-08 11:42:49'),
(190, 239, 190, 'natural', '129/2016', '2016-02-04', 3, 0, 0, 'a2557a7b2e94197ff767970b67041697', '2016-02-04 12:47:56', '2016-02-08 11:53:17'),
(191, 245, 191, 'natural', '131/2016', '2016-02-04', 3, 0, 0, 'cfecdb276f634854f3ef915e2e980c31', '2016-02-04 12:49:17', '2016-02-08 12:35:30'),
(192, 246, 192, 'natural', '132/2016', '2016-02-04', 3, 0, 0, '0aa1883c6411f7873cb83dacb17b0afc', '2016-02-04 12:50:29', '2016-02-08 13:47:58'),
(193, 247, 193, 'natural', '133/2016', '2016-02-04', 3, 0, 0, '58a2fc6ed39fd083f55d4182bf88826d', '2016-02-04 12:50:56', '2016-02-08 14:01:09'),
(194, 248, 194, 'natural', '134/2016', '2016-02-04', 3, 0, 0, 'bd686fd640be98efaae0091fa301e613', '2016-02-04 12:51:31', '2016-02-08 14:13:09'),
(195, 249, 195, 'natural', '135/2016', '2016-02-04', 3, 0, 0, 'a597e50502f5ff68e3e25b9114205d4a', '2016-02-04 12:52:19', '2016-02-08 14:18:57'),
(196, 250, 196, 'natural', '136/2016', '2016-02-04', 3, 0, 0, '0336dcbab05b9d5ad24f4333c7658a0e', '2016-02-04 12:52:42', '2016-02-08 14:48:21'),
(197, 251, 197, 'natural', '137/2016', '2016-02-04', 3, 0, 0, '084b6fbb10729ed4da8c3d3f5a3ae7c9', '2016-02-04 12:53:19', '2016-02-08 15:11:41'),
(198, 252, 198, 'natural', '138/2016', '2016-02-04', 3, 0, 0, '85d8ce590ad8981ca2c8286f79f59954', '2016-02-04 12:53:38', '2016-02-08 15:23:40'),
(199, 244, 199, 'natural', '130/2016', '2016-02-04', 3, 0, 0, '0e65972dce68dad4d52d063967f0a705', '2016-02-04 12:55:41', '2016-02-08 12:18:27'),
(200, 242, 17, 'legal', '139/2016', '2016-02-05', 3, 0, 0, '84d9ee44e457ddef7f2c4f25dc8fa865', '2016-02-05 12:22:17', '2016-02-05 12:22:17'),
(201, 240, 201, 'natural', '144/2016', '2016-02-08', 9, 0, 0, '3644a684f98ea8fe223c713b77189a77', '2016-02-08 12:17:38', '2016-02-10 14:02:04'),
(202, 253, 202, 'natural', '147/2016', '2016-02-09', 3, 0, 0, '757b505cfd34c64c85ca5b5690ee5293', '2016-02-09 14:56:18', '2016-02-10 09:35:41'),
(203, 254, 203, 'natural', '148/2016', '2016-02-09', 3, 0, 0, '854d6fae5ee42911677c739ee1734486', '2016-02-09 14:57:13', '2016-02-10 10:13:12'),
(204, 255, 204, 'natural', '149/2016', '2016-02-09', 3, 0, 0, 'e2c0be24560d78c5e599c2a9c9d0bbd2', '2016-02-09 14:57:34', '2016-02-10 10:21:55'),
(205, 256, 205, 'natural', '150/2016', '2016-02-09', 3, 0, 0, '274ad4786c3abca69fa097b85867d9a4', '2016-02-09 14:58:04', '2016-02-10 10:42:14'),
(206, 257, 206, 'natural', '151/2016', '2016-02-09', 3, 0, 0, 'eae27d77ca20db309e056e3d2dcd7d69', '2016-02-09 15:00:13', '2016-02-10 11:15:17'),
(207, 258, 207, 'natural', '152/2016', '2016-02-09', 3, 0, 0, '7eabe3a1649ffa2b3ff8c02ebfd5659f', '2016-02-09 15:00:36', '2016-02-10 11:38:33'),
(208, 259, 208, 'natural', '153/2016', '2016-02-09', 3, 0, 0, '69adc1e107f7f7d035d7baf04342e1ca', '2016-02-09 15:01:15', '2016-02-10 12:22:19'),
(209, 260, 209, 'natural', '154/2016', '2016-02-09', 3, 0, 0, '091d584fced301b442654dd8c23b3fc9', '2016-02-09 15:01:32', '2016-02-10 12:52:54'),
(210, 261, 18, 'legal', '146/2016', '2016-02-10', 3, 0, 0, 'b1d10e7bafa4421218a51b1e1f1b0ba2', '2016-02-10 14:44:25', '2016-02-10 14:44:25'),
(211, 262, 19, 'legal', '168/2016', '2016-02-10', 3, 0, 0, '6f3ef77ac0e3619e98159e9b6febf557', '2016-02-10 15:07:22', '2016-02-10 15:07:22'),
(212, 764, 212, 'natural', '155/2016', '2016-02-23', 1, 0, 0, 'eb163727917cbba1eea208541a643e74', '2016-02-23 12:11:52', '2016-03-01 11:26:21'),
(213, 765, 213, 'natural', '156/2016', '2016-02-23', 1, 0, 1, '1534b76d325a8f591b52d302e7181331', '2016-02-23 12:12:09', '2016-03-01 11:44:46'),
(214, 766, 214, 'natural', '157/2016', '2016-02-23', 1, 0, 0, '979d472a84804b9f647bc185a877a8b5', '2016-02-23 12:12:31', '2016-03-01 12:04:07'),
(215, 767, 215, 'natural', '158/2016', '2016-02-23', 1, 0, 0, 'ca46c1b9512a7a8315fa3c5a946e8265', '2016-02-23 12:12:46', '2016-03-01 12:13:37'),
(216, 768, 216, 'natural', '159/2016', '2016-02-23', 1, 0, 0, '3b8a614226a953a8cd9526fca6fe9ba5', '2016-02-23 12:14:11', '2016-03-01 12:42:48'),
(217, 769, 217, 'natural', '160/2016', '2016-02-23', 1, 0, 0, '45fbc6d3e05ebd93369ce542e8f2322d', '2016-02-23 12:14:24', '2016-03-01 12:51:40'),
(218, 770, 218, 'natural', '161/2016', '2016-02-23', 1, 0, 0, '63dc7ed1010d3c3b8269faf0ba7491d4', '2016-02-23 12:14:56', '2016-03-01 13:25:08'),
(219, 771, 219, 'natural', '162/2016', '2016-02-23', 1, 0, 0, 'e96ed478dab8595a7dbda4cbcbee168f', '2016-02-23 12:15:15', '2016-03-01 13:48:46'),
(220, 772, 220, 'natural', '163/2016', '2016-02-23', 1, 0, 0, 'c0e190d8267e36708f955d7ab048990d', '2016-02-23 12:15:29', '2016-03-01 13:58:10'),
(221, 773, 221, 'natural', '164/2016', '2016-02-23', 1, 0, 0, 'ec8ce6abb3e952a85b8551ba726a1227', '2016-02-23 12:15:50', '2016-03-01 14:50:23'),
(222, 774, 222, 'natural', '165/2016', '2016-02-23', 1, 0, 0, '060ad92489947d410d897474079c1477', '2016-02-23 12:16:04', '2016-03-01 15:04:05'),
(223, 775, 223, 'natural', '166/2016', '2016-02-23', 1, 0, 0, 'bcbe3365e6ac95ea2c0343a2395834dd', '2016-02-23 12:16:17', '2016-03-01 15:17:36'),
(224, 776, 224, 'natural', '167/2016', '2016-02-23', 1, 0, 0, '115f89503138416a242f40fb7d7f338e', '2016-02-23 12:16:27', '2016-03-01 15:26:43'),
(225, 779, 225, 'natural', '225/2016', '2016-02-25', 1, 0, 0, '13fe9d84310e77f13a6d184dbf1232f3', '2016-02-25 10:35:40', '2016-03-08 11:44:51'),
(226, 780, 226, 'natural', '226/2016', '2016-02-25', 1, 0, 1, 'd1c38a09acc34845c6be3a127a5aacaf', '2016-02-25 10:37:20', '2016-03-08 12:45:55'),
(227, 787, 227, 'natural', '227/2016', '2016-03-08', 1, 0, 0, '9cfdf10e8fc047a44b08ed031e1f0ed1', '2016-03-08 14:07:28', '2016-03-08 14:10:06'),
(228, 789, 228, 'natural', '228/2016', '2016-03-08', 1, 0, 0, '705f2172834666788607efbfca35afb3', '2016-03-08 14:31:11', '2016-03-08 14:31:11');

-- --------------------------------------------------------

--
-- Structure de la table `rqm_requests_companies`
--

CREATE TABLE `rqm_requests_companies` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rqm_request_statuses`
--

CREATE TABLE `rqm_request_statuses` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `event_date` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `extra` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rqm_request_statuses`
--

INSERT INTO `rqm_request_statuses` (`id`, `request_id`, `user_id`, `status_id`, `event_date`, `description`, `extra`, `created`, `updated`) VALUES
(1, 4, 54, 3, '2015-12-22 04:33:43', '', NULL, '2015-12-22 16:33:43', '2015-12-22 16:33:43'),
(2, 95, 54, 2, '2016-01-07 02:11:38', '', NULL, '2016-01-07 14:11:38', '2016-01-07 14:11:38'),
(3, 95, 54, 3, '2016-01-07 02:13:32', '', NULL, '2016-01-07 14:13:32', '2016-01-07 14:13:32'),
(4, 95, 54, 10, '2016-01-07 02:13:50', '', NULL, '2016-01-07 14:13:50', '2016-01-07 14:13:50'),
(5, 95, 58, 4, '2016-01-07 02:15:58', '', NULL, '2016-01-07 14:15:58', '2016-01-07 14:15:58'),
(6, 95, 58, 5, '2016-01-07 02:43:50', '', NULL, '2016-01-07 14:43:50', '2016-01-07 14:43:50'),
(7, 95, 58, 6, '2016-01-07 02:54:58', '', NULL, '2016-01-07 14:54:58', '2016-01-07 14:54:58'),
(8, 95, 73, 8, '2016-01-07 03:01:28', '', NULL, '2016-01-07 15:01:28', '2016-01-07 15:01:28'),
(9, 82, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(10, 83, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(11, 84, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(12, 88, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(13, 85, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(14, 86, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(15, 87, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(16, 98, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(17, 67, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(18, 74, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(19, 72, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(20, 73, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(21, 75, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(22, 97, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(23, 76, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(24, 65, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(25, 92, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(26, 93, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(27, 124, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(28, 108, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(29, 99, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(30, 142, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(31, 106, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(32, 100, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(33, 101, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(34, 122, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(35, 169, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(36, 170, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(37, 123, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(38, 102, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(39, 168, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(40, 104, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(41, 103, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(42, 105, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(43, 109, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(44, 175, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(45, 110, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(46, 111, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(47, 112, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(48, 113, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(49, 114, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(50, 115, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(51, 116, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(52, 117, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(53, 118, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(54, 119, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(55, 120, 57, 5, '2016-02-24 12:36:31', '', NULL, '2016-02-24 12:36:31', '2016-02-24 12:36:31'),
(56, 82, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(57, 83, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(58, 84, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(59, 88, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(60, 85, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(61, 86, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(62, 87, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(63, 98, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(64, 67, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(65, 74, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(66, 72, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(67, 73, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(68, 75, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(69, 97, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(70, 76, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(71, 65, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(72, 92, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(73, 93, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(74, 124, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(75, 108, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(76, 99, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(77, 142, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(78, 106, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(79, 100, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(80, 101, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(81, 122, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(82, 169, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(83, 170, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(84, 123, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(85, 102, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(86, 168, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(87, 104, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(88, 103, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(89, 105, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(90, 109, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(91, 175, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(92, 110, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(93, 111, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(94, 112, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(95, 113, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(96, 114, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(97, 115, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(98, 116, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(99, 117, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(100, 118, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(101, 119, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(102, 120, 57, 5, '2016-02-24 12:37:09', '', NULL, '2016-02-24 12:37:09', '2016-02-24 12:37:09'),
(103, 82, 57, 4, '2016-02-24 12:38:08', 'Annulation de la réunion', NULL, '2016-02-24 12:38:08', '2016-02-24 12:38:08'),
(104, 83, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(105, 84, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(106, 88, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(107, 85, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(108, 86, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(109, 87, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(110, 98, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(111, 67, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(112, 74, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(113, 72, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(114, 73, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(115, 75, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(116, 97, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(117, 76, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(118, 65, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(119, 92, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(120, 93, 57, 4, '2016-02-24 12:38:09', 'Annulation de la réunion', NULL, '2016-02-24 12:38:09', '2016-02-24 12:38:09'),
(121, 124, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(122, 108, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(123, 99, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(124, 142, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(125, 106, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(126, 100, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(127, 101, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(128, 122, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(129, 169, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(130, 170, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(131, 123, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(132, 102, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(133, 168, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(134, 104, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(135, 103, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(136, 105, 57, 4, '2016-02-24 12:38:10', 'Annulation de la réunion', NULL, '2016-02-24 12:38:10', '2016-02-24 12:38:10'),
(137, 109, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(138, 175, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(139, 110, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(140, 111, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(141, 112, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(142, 113, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(143, 114, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(144, 115, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(145, 116, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(146, 117, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(147, 118, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(148, 119, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(149, 120, 57, 4, '2016-02-24 12:38:11', 'Annulation de la réunion', NULL, '2016-02-24 12:38:11', '2016-02-24 12:38:11'),
(150, 82, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(151, 83, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(152, 84, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(153, 88, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(154, 85, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(155, 86, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(156, 87, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(157, 98, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(158, 67, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(159, 74, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(160, 72, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(161, 73, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(162, 75, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(163, 97, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(164, 76, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(165, 65, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(166, 92, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(167, 93, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(168, 124, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(169, 108, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(170, 99, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(171, 142, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(172, 106, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(173, 100, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(174, 101, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(175, 122, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(176, 169, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(177, 170, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(178, 123, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(179, 102, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(180, 168, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(181, 104, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(182, 103, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(183, 105, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(184, 109, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(185, 175, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(186, 110, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(187, 111, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(188, 112, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(189, 113, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(190, 114, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(191, 115, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(192, 116, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(193, 117, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(194, 118, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(195, 119, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(196, 120, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15'),
(197, 121, 57, 5, '2016-02-24 03:01:15', '', NULL, '2016-02-24 15:01:15', '2016-02-24 15:01:15');

-- --------------------------------------------------------

--
-- Structure de la table `rqm_schema_migrations`
--

CREATE TABLE `rqm_schema_migrations` (
  `id` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rqm_schema_migrations`
--

INSERT INTO `rqm_schema_migrations` (`id`, `class`, `type`, `created`) VALUES
(1, 'InitMigrations', 'Migrations', '2015-07-16 03:25:14'),
(2, 'ConvertVersionToClassNames', 'Migrations', '2015-07-16 03:25:15'),
(3, 'IncreaseClassNameLength', 'Migrations', '2015-07-16 03:25:15');

-- --------------------------------------------------------

--
-- Structure de la table `rqm_statuses`
--

CREATE TABLE `rqm_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rqm_statuses`
--

INSERT INTO `rqm_statuses` (`id`, `name`, `alias`, `order`, `created`, `updated`) VALUES
(1, 'Attente dossier papier', 'pending_postale_papers', 2, '2015-07-21 00:00:00', '2015-07-21 00:00:00'),
(2, 'Attente complétement de dossier', 'pending_completely', 2, '2015-07-21 00:00:00', '2015-07-21 00:00:00'),
(3, 'Dossier papier reçus', 'profile_validation', 3, '2015-07-29 00:00:00', '2015-07-29 00:00:00'),
(4, 'En cour d''etude par la CNCAP', 'commission', 5, '2015-07-29 00:00:00', '2015-07-29 00:00:00'),
(5, 'Planifier pour réunion de commission', 'commission_meeting', 6, '2015-09-19 00:00:00', '2015-09-19 00:00:00'),
(6, 'Envoyé pour décision', 'ministry', 7, '2015-07-29 00:00:00', '2015-07-29 00:00:00'),
(7, 'Refusé', 'refused', 8, '2015-07-29 00:00:00', '2015-07-29 00:00:00'),
(8, 'Accordé', 'granted', 8, '2015-07-29 00:00:00', '2015-07-29 00:00:00'),
(9, 'Création', 'creation', 1, '2015-10-01 00:00:00', '2015-10-01 00:00:00'),
(10, 'Dossier vérifié', 'profile_validated', 4, '2015-10-18 00:00:00', '2015-10-18 00:00:00'),
(11, 'Rejeté', 'rejected', 10, '2015-10-18 00:00:00', '2015-10-18 00:00:00'),
(12, 'Sous réserve', 'provided', 8, '2015-11-13 00:00:00', '2015-11-13 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `web_acos`
--

CREATE TABLE `web_acos` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_acos`
--

INSERT INTO `web_acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, '', NULL, 'controllers', 1, 654),
(2, 1, '', NULL, 'Acl', 2, 25),
(3, 2, '', NULL, 'AclActions', 3, 16),
(4, 3, '', NULL, 'admin_index', 4, 5),
(5, 3, '', NULL, 'admin_add', 6, 7),
(6, 3, '', NULL, 'admin_edit', 8, 9),
(7, 3, '', NULL, 'admin_delete', 10, 11),
(8, 3, '', NULL, 'admin_move', 12, 13),
(9, 3, '', NULL, 'admin_generate', 14, 15),
(10, 2, '', NULL, 'AclPermissions', 17, 24),
(11, 10, '', NULL, 'admin_index', 18, 19),
(12, 10, '', NULL, 'admin_toggle', 20, 21),
(13, 10, '', NULL, 'admin_upgrade', 22, 23),
(14, 1, '', NULL, 'Blocks', 26, 55),
(15, 14, '', NULL, 'Blocks', 27, 44),
(16, 15, '', NULL, 'admin_toggle', 28, 29),
(17, 15, '', NULL, 'admin_index', 30, 31),
(18, 15, '', NULL, 'admin_add', 32, 33),
(19, 15, '', NULL, 'admin_edit', 34, 35),
(20, 15, '', NULL, 'admin_delete', 36, 37),
(21, 15, '', NULL, 'admin_moveup', 38, 39),
(22, 15, '', NULL, 'admin_movedown', 40, 41),
(23, 15, '', NULL, 'admin_process', 42, 43),
(24, 14, '', NULL, 'Regions', 45, 54),
(25, 24, '', NULL, 'admin_index', 46, 47),
(26, 24, '', NULL, 'admin_add', 48, 49),
(27, 24, '', NULL, 'admin_edit', 50, 51),
(28, 24, '', NULL, 'admin_delete', 52, 53),
(29, 1, '', NULL, 'Comments', 56, 73),
(30, 29, '', NULL, 'Comments', 57, 72),
(31, 30, '', NULL, 'admin_index', 58, 59),
(32, 30, '', NULL, 'admin_edit', 60, 61),
(33, 30, '', NULL, 'admin_delete', 62, 63),
(34, 30, '', NULL, 'admin_process', 64, 65),
(35, 30, '', NULL, 'index', 66, 67),
(36, 30, '', NULL, 'add', 68, 69),
(37, 30, '', NULL, 'delete', 70, 71),
(38, 1, '', NULL, 'Contacts', 74, 97),
(39, 38, '', NULL, 'Contacts', 75, 86),
(40, 39, '', NULL, 'admin_index', 76, 77),
(41, 39, '', NULL, 'admin_add', 78, 79),
(42, 39, '', NULL, 'admin_edit', 80, 81),
(43, 39, '', NULL, 'admin_delete', 82, 83),
(44, 39, '', NULL, 'view', 84, 85),
(45, 38, '', NULL, 'Messages', 87, 96),
(46, 45, '', NULL, 'admin_index', 88, 89),
(47, 45, '', NULL, 'admin_edit', 90, 91),
(48, 45, '', NULL, 'admin_delete', 92, 93),
(49, 45, '', NULL, 'admin_process', 94, 95),
(50, 1, '', NULL, 'Croogo', 98, 99),
(51, 1, '', NULL, 'Extensions', 100, 147),
(52, 51, '', NULL, 'ExtensionsLocales', 101, 112),
(53, 52, '', NULL, 'admin_index', 102, 103),
(54, 52, '', NULL, 'admin_activate', 104, 105),
(55, 52, '', NULL, 'admin_add', 106, 107),
(56, 52, '', NULL, 'admin_edit', 108, 109),
(57, 52, '', NULL, 'admin_delete', 110, 111),
(58, 51, '', NULL, 'ExtensionsPlugins', 113, 128),
(59, 58, '', NULL, 'admin_index', 114, 115),
(60, 58, '', NULL, 'admin_add', 116, 117),
(61, 58, '', NULL, 'admin_delete', 118, 119),
(62, 58, '', NULL, 'admin_toggle', 120, 121),
(63, 58, '', NULL, 'admin_migrate', 122, 123),
(64, 51, '', NULL, 'ExtensionsThemes', 129, 142),
(65, 64, '', NULL, 'admin_index', 130, 131),
(66, 64, '', NULL, 'admin_activate', 132, 133),
(67, 64, '', NULL, 'admin_add', 134, 135),
(68, 64, '', NULL, 'admin_editor', 136, 137),
(69, 64, '', NULL, 'admin_save', 138, 139),
(70, 64, '', NULL, 'admin_delete', 140, 141),
(71, 1, '', NULL, 'FileManager', 148, 183),
(72, 71, '', NULL, 'Attachments', 149, 160),
(73, 72, '', NULL, 'admin_index', 150, 151),
(74, 72, '', NULL, 'admin_add', 152, 153),
(75, 72, '', NULL, 'admin_edit', 154, 155),
(76, 72, '', NULL, 'admin_delete', 156, 157),
(77, 72, '', NULL, 'admin_browse', 158, 159),
(78, 71, '', NULL, 'FileManager', 161, 182),
(79, 78, '', NULL, 'admin_index', 162, 163),
(80, 78, '', NULL, 'admin_browse', 164, 165),
(81, 78, '', NULL, 'admin_editfile', 166, 167),
(82, 78, '', NULL, 'admin_upload', 168, 169),
(83, 78, '', NULL, 'admin_delete_file', 170, 171),
(84, 78, '', NULL, 'admin_delete_directory', 172, 173),
(85, 78, '', NULL, 'admin_rename', 174, 175),
(86, 78, '', NULL, 'admin_create_directory', 176, 177),
(87, 78, '', NULL, 'admin_create_file', 178, 179),
(88, 78, '', NULL, 'admin_chmod', 180, 181),
(89, 1, '', NULL, 'Install', 184, 197),
(90, 89, '', NULL, 'Install', 185, 196),
(91, 90, '', NULL, 'index', 186, 187),
(92, 90, '', NULL, 'database', 188, 189),
(93, 90, '', NULL, 'data', 190, 191),
(94, 90, '', NULL, 'adminuser', 192, 193),
(95, 90, '', NULL, 'finish', 194, 195),
(96, 1, '', NULL, 'Menus', 198, 231),
(97, 96, '', NULL, 'Links', 199, 218),
(98, 97, '', NULL, 'admin_toggle', 200, 201),
(99, 97, '', NULL, 'admin_index', 202, 203),
(100, 97, '', NULL, 'admin_add', 204, 205),
(101, 97, '', NULL, 'admin_edit', 206, 207),
(102, 97, '', NULL, 'admin_delete', 208, 209),
(103, 97, '', NULL, 'admin_moveup', 210, 211),
(104, 97, '', NULL, 'admin_movedown', 212, 213),
(105, 97, '', NULL, 'admin_process', 214, 215),
(106, 96, '', NULL, 'Menus', 219, 230),
(107, 106, '', NULL, 'admin_index', 220, 221),
(108, 106, '', NULL, 'admin_add', 222, 223),
(109, 106, '', NULL, 'admin_edit', 224, 225),
(110, 106, '', NULL, 'admin_delete', 226, 227),
(111, 1, '', NULL, 'Meta', 232, 239),
(112, 1, '', NULL, 'Migrations', 240, 241),
(113, 1, '', NULL, 'Nodes', 242, 281),
(114, 113, '', NULL, 'Nodes', 243, 280),
(115, 114, '', NULL, 'admin_toggle', 244, 245),
(116, 114, '', NULL, 'admin_index', 246, 247),
(117, 114, '', NULL, 'admin_create', 248, 249),
(118, 114, '', NULL, 'admin_add', 250, 251),
(119, 114, '', NULL, 'admin_edit', 252, 253),
(120, 114, '', NULL, 'admin_update_paths', 254, 255),
(121, 114, '', NULL, 'admin_delete', 256, 257),
(122, 114, '', NULL, 'admin_delete_meta', 258, 259),
(123, 114, '', NULL, 'admin_add_meta', 260, 261),
(124, 114, '', NULL, 'admin_process', 262, 263),
(125, 114, '', NULL, 'index', 264, 265),
(126, 114, '', NULL, 'term', 266, 267),
(127, 114, '', NULL, 'promoted', 268, 269),
(128, 114, '', NULL, 'search', 270, 271),
(129, 114, '', NULL, 'view', 272, 273),
(130, 1, '', NULL, 'Search', 282, 283),
(131, 1, '', NULL, 'Settings', 284, 321),
(132, 131, '', NULL, 'Languages', 285, 300),
(133, 132, '', NULL, 'admin_index', 286, 287),
(134, 132, '', NULL, 'admin_add', 288, 289),
(135, 132, '', NULL, 'admin_edit', 290, 291),
(136, 132, '', NULL, 'admin_delete', 292, 293),
(137, 132, '', NULL, 'admin_moveup', 294, 295),
(138, 132, '', NULL, 'admin_movedown', 296, 297),
(139, 132, '', NULL, 'admin_select', 298, 299),
(140, 131, '', NULL, 'Settings', 301, 320),
(141, 140, '', NULL, 'admin_dashboard', 302, 303),
(142, 140, '', NULL, 'admin_index', 304, 305),
(143, 140, '', NULL, 'admin_view', 306, 307),
(144, 140, '', NULL, 'admin_add', 308, 309),
(145, 140, '', NULL, 'admin_edit', 310, 311),
(146, 140, '', NULL, 'admin_delete', 312, 313),
(147, 140, '', NULL, 'admin_prefix', 314, 315),
(148, 140, '', NULL, 'admin_moveup', 316, 317),
(149, 140, '', NULL, 'admin_movedown', 318, 319),
(150, 1, '', NULL, 'Taxonomy', 322, 361),
(151, 150, '', NULL, 'Terms', 323, 336),
(152, 151, '', NULL, 'admin_index', 324, 325),
(153, 151, '', NULL, 'admin_add', 326, 327),
(154, 151, '', NULL, 'admin_edit', 328, 329),
(155, 151, '', NULL, 'admin_delete', 330, 331),
(156, 151, '', NULL, 'admin_moveup', 332, 333),
(157, 151, '', NULL, 'admin_movedown', 334, 335),
(158, 150, '', NULL, 'Types', 337, 346),
(159, 158, '', NULL, 'admin_index', 338, 339),
(160, 158, '', NULL, 'admin_add', 340, 341),
(161, 158, '', NULL, 'admin_edit', 342, 343),
(162, 158, '', NULL, 'admin_delete', 344, 345),
(163, 150, '', NULL, 'Vocabularies', 347, 360),
(164, 163, '', NULL, 'admin_index', 348, 349),
(165, 163, '', NULL, 'admin_add', 350, 351),
(166, 163, '', NULL, 'admin_edit', 352, 353),
(167, 163, '', NULL, 'admin_delete', 354, 355),
(168, 163, '', NULL, 'admin_moveup', 356, 357),
(169, 163, '', NULL, 'admin_movedown', 358, 359),
(170, 1, '', NULL, 'Ckeditor', 362, 363),
(171, 1, '', NULL, 'Users', 364, 411),
(172, 171, '', NULL, 'Roles', 365, 374),
(173, 172, '', NULL, 'admin_index', 366, 367),
(174, 172, '', NULL, 'admin_add', 368, 369),
(175, 172, '', NULL, 'admin_edit', 370, 371),
(176, 172, '', NULL, 'admin_delete', 372, 373),
(177, 171, '', NULL, 'Users', 375, 410),
(178, 177, '', NULL, 'admin_index', 376, 377),
(179, 177, '', NULL, 'admin_add', 378, 379),
(180, 177, '', NULL, 'admin_edit', 380, 381),
(181, 177, '', NULL, 'admin_reset_password', 382, 383),
(182, 177, '', NULL, 'admin_delete', 384, 385),
(183, 177, '', NULL, 'admin_login', 386, 387),
(184, 177, '', NULL, 'admin_logout', 388, 389),
(185, 177, '', NULL, 'index', 390, 391),
(186, 177, '', NULL, 'add', 392, 393),
(187, 177, '', NULL, 'activate', 394, 395),
(188, 177, '', NULL, 'edit', 396, 397),
(189, 177, '', NULL, 'forgot', 398, 399),
(190, 177, '', NULL, 'reset', 400, 401),
(191, 177, '', NULL, 'login', 402, 403),
(192, 177, '', NULL, 'logout', 404, 405),
(193, 177, '', NULL, 'view', 406, 407),
(194, 1, NULL, NULL, 'CapMaroc', 412, 417),
(195, 194, NULL, NULL, 'Caps', 413, 416),
(196, 195, NULL, NULL, 'faq', 414, 415),
(197, 1, NULL, NULL, 'ClearCaches', 418, 423),
(198, 197, NULL, NULL, 'ClearCaches', 419, 422),
(199, 198, NULL, NULL, 'admin_clear', 420, 421),
(200, 51, NULL, NULL, 'ExtensionsDashboard', 143, 146),
(201, 200, NULL, NULL, 'admin_index', 144, 145),
(202, 58, NULL, NULL, 'admin_moveup', 124, 125),
(203, 58, NULL, NULL, 'admin_movedown', 126, 127),
(204, 1, NULL, NULL, 'MeioUpload', 424, 425),
(205, 97, NULL, NULL, 'admin_link_chooser', 216, 217),
(206, 106, NULL, NULL, 'admin_toggle', 228, 229),
(207, 111, NULL, NULL, 'Meta', 233, 238),
(208, 207, NULL, NULL, 'admin_delete_meta', 234, 235),
(209, 207, NULL, NULL, 'admin_add_meta', 236, 237),
(210, 114, NULL, NULL, 'admin_hierarchy', 274, 275),
(211, 114, NULL, NULL, 'admin_moveup', 276, 277),
(212, 114, NULL, NULL, 'admin_movedown', 278, 279),
(213, NULL, NULL, NULL, 'api', 655, 676),
(214, 213, NULL, NULL, 'v1_0', 656, 675),
(215, 214, NULL, NULL, 'Nodes', 657, 662),
(216, 215, NULL, NULL, 'Nodes', 658, 661),
(217, 216, NULL, NULL, 'lookup', 659, 660),
(218, 1, NULL, NULL, 'ProfileManagment', 426, 493),
(219, 218, NULL, NULL, 'Counselors', 427, 450),
(220, 219, NULL, NULL, 'home', 428, 429),
(221, 218, NULL, NULL, 'CounselorsDocuments', 451, 456),
(222, 221, NULL, NULL, 'admin_validate_document', 452, 453),
(223, 221, NULL, NULL, 'admin_invalidate_document', 454, 455),
(224, 218, NULL, NULL, 'Diplomes', 457, 468),
(225, 224, NULL, NULL, 'admin_get_datagrid_data', 458, 459),
(226, 224, NULL, NULL, 'admin_index', 460, 461),
(227, 224, NULL, NULL, 'admin_add', 462, 463),
(228, 224, NULL, NULL, 'admin_edit', 464, 465),
(229, 224, NULL, NULL, 'admin_delete', 466, 467),
(230, 218, NULL, NULL, 'Establishments', 469, 480),
(231, 230, NULL, NULL, 'admin_get_datagrid_data', 470, 471),
(232, 230, NULL, NULL, 'admin_index', 472, 473),
(233, 230, NULL, NULL, 'admin_add', 474, 475),
(234, 230, NULL, NULL, 'admin_edit', 476, 477),
(235, 230, NULL, NULL, 'admin_delete', 478, 479),
(236, 218, NULL, NULL, 'Specialities', 481, 492),
(237, 236, NULL, NULL, 'admin_get_datagrid_data', 482, 483),
(238, 236, NULL, NULL, 'admin_index', 484, 485),
(239, 236, NULL, NULL, 'admin_add', 486, 487),
(240, 236, NULL, NULL, 'admin_edit', 488, 489),
(241, 236, NULL, NULL, 'admin_delete', 490, 491),
(242, 214, NULL, NULL, 'Users', 663, 668),
(243, 242, NULL, NULL, 'Users', 664, 667),
(244, 243, NULL, NULL, 'lookup', 665, 666),
(245, 1, NULL, NULL, 'Wysiwyg', 494, 495),
(246, 1, NULL, NULL, 'AddressesManagement', 496, 521),
(247, 246, NULL, NULL, 'Cities', 497, 508),
(248, 247, NULL, NULL, 'admin_get_datagrid_data', 498, 499),
(249, 247, NULL, NULL, 'admin_index', 500, 501),
(250, 247, NULL, NULL, 'admin_add', 502, 503),
(251, 247, NULL, NULL, 'admin_edit', 504, 505),
(252, 247, NULL, NULL, 'admin_delete', 506, 507),
(253, 246, NULL, NULL, 'Countries', 509, 520),
(254, 253, NULL, NULL, 'admin_get_datagrid_data', 510, 511),
(255, 253, NULL, NULL, 'admin_index', 512, 513),
(256, 253, NULL, NULL, 'admin_add', 514, 515),
(257, 253, NULL, NULL, 'admin_edit', 516, 517),
(258, 253, NULL, NULL, 'admin_delete', 518, 519),
(259, 1, NULL, NULL, 'CompanyManagment', 522, 529),
(260, 259, NULL, NULL, 'CompaniesDocuments', 523, 528),
(261, 260, NULL, NULL, 'admin_validate_document', 524, 525),
(262, 260, NULL, NULL, 'admin_invalidate_document', 526, 527),
(269, 219, NULL, NULL, 'add', 430, 431),
(270, 219, NULL, NULL, 'upload', 432, 433),
(271, 219, NULL, NULL, 'delete_file', 434, 435),
(272, 219, NULL, NULL, 'save_step1', 436, 437),
(273, 219, NULL, NULL, 'save_step2', 438, 439),
(274, 1, NULL, NULL, 'RequestManagment', 530, 587),
(275, 274, NULL, NULL, 'Meetings', 531, 550),
(276, 275, NULL, NULL, 'admin_get_datagrid_data', 532, 533),
(277, 275, NULL, NULL, 'admin_index', 534, 535),
(278, 275, NULL, NULL, 'admin_add', 536, 537),
(279, 275, NULL, NULL, 'admin_edit', 538, 539),
(280, 275, NULL, NULL, 'admin_update_meeting_members', 540, 541),
(281, 275, NULL, NULL, 'admin_update_meeting_requests', 542, 543),
(282, 275, NULL, NULL, 'admin_delete', 544, 545),
(283, 275, NULL, NULL, 'admin_delete_meeting_request', 546, 547),
(284, 275, NULL, NULL, 'admin_open', 548, 549),
(285, 274, NULL, NULL, 'Requests', 551, 586),
(286, 285, NULL, NULL, 'admin_save_meeting_request_judgment', 552, 553),
(287, 285, NULL, NULL, 'admin_save_member_request_judgment', 554, 555),
(288, 285, NULL, NULL, 'admin_validate_document_reception', 556, 557),
(289, 285, NULL, NULL, 'admin_completely_required', 558, 559),
(290, 285, NULL, NULL, 'admin_receive_request_completely', 560, 561),
(291, 285, NULL, NULL, 'admin_invalidate_requester', 562, 563),
(292, 285, NULL, NULL, 'admin_send_to_ministary', 564, 565),
(293, 285, NULL, NULL, 'admin_save_request_decision', 566, 567),
(294, 285, NULL, NULL, 'admin_validate_requester', 568, 569),
(295, 285, NULL, NULL, 'admin_get_requester_data', 570, 571),
(296, 285, NULL, NULL, 'admin_get_pending_request_datagrid_data', 572, 573),
(297, 285, NULL, NULL, 'admin_get_datagrid_data', 574, 575),
(298, 285, NULL, NULL, 'admin_get_datagrid_data_for_meeting', 576, 577),
(299, 285, NULL, NULL, 'admin_index', 578, 579),
(300, 285, NULL, NULL, 'admin_add', 580, 581),
(301, 285, NULL, NULL, 'admin_edit', 582, 583),
(302, 285, NULL, NULL, 'admin_delete', 584, 585),
(303, 1, NULL, NULL, 'UserManagment', 588, 625),
(304, 303, NULL, NULL, 'Users', 589, 624),
(305, 304, NULL, NULL, 'admin_index', 590, 591),
(306, 304, NULL, NULL, 'admin_add', 592, 593),
(307, 304, NULL, NULL, 'admin_edit', 594, 595),
(308, 304, NULL, NULL, 'admin_reset_password', 596, 597),
(309, 304, NULL, NULL, 'admin_delete', 598, 599),
(310, 304, NULL, NULL, 'admin_login', 600, 601),
(311, 304, NULL, NULL, 'admin_logout', 602, 603),
(312, 304, NULL, NULL, 'index', 604, 605),
(313, 304, NULL, NULL, 'add', 606, 607),
(314, 304, NULL, NULL, 'activate', 608, 609),
(315, 304, NULL, NULL, 'edit', 610, 611),
(316, 304, NULL, NULL, 'forgot', 612, 613),
(317, 304, NULL, NULL, 'reset', 614, 615),
(318, 304, NULL, NULL, 'login', 616, 617),
(319, 304, NULL, NULL, 'logout', 618, 619),
(320, 304, NULL, NULL, 'view', 620, 621),
(321, 214, NULL, NULL, 'UserManagment', 669, 674),
(322, 321, NULL, NULL, 'Users', 670, 673),
(323, 322, NULL, NULL, 'lookup', 671, 672),
(324, 219, NULL, NULL, 'save_step3', 440, 441),
(325, 219, NULL, NULL, 'save_step4', 442, 443),
(326, 304, NULL, NULL, 'admin_get_datagrid_data', 622, 623),
(327, 177, NULL, NULL, 'admin_get_datagrid_data', 408, 409),
(328, 219, NULL, NULL, 'viewpdf', 444, 445),
(329, 219, NULL, NULL, 'change_password', 446, 447),
(330, 219, NULL, NULL, 'edit_user', 448, 449),
(351, 1, NULL, NULL, 'MessageManagment', 626, 653),
(352, 351, NULL, NULL, 'Messages', 627, 652),
(353, 352, NULL, NULL, 'admin_index', 628, 629),
(354, 352, NULL, NULL, 'admin_add', 630, 631),
(355, 352, NULL, NULL, 'admin_contact', 632, 633),
(356, 352, NULL, NULL, 'admin_view', 634, 635),
(357, 352, NULL, NULL, 'admin_get_inbox', 636, 637),
(358, 352, NULL, NULL, 'admin_get_sentbox', 638, 639),
(359, 352, NULL, NULL, 'admin_get_trash', 640, 641),
(360, 352, NULL, NULL, 'admin_search', 642, 643),
(361, 352, NULL, NULL, 'admin_get_unread', 644, 645),
(362, 352, NULL, NULL, 'admin_get_users', 646, 647),
(363, 352, NULL, NULL, 'admin_delete', 648, 649),
(365, 352, NULL, NULL, 'admin_remettre', 650, 651);

-- --------------------------------------------------------

--
-- Structure de la table `web_aros`
--

CREATE TABLE `web_aros` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_aros`
--

INSERT INTO `web_aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, 2, 'Role', 1, 'Role-admin', 3, 6),
(2, 3, 'Role', 2, 'Role-registered', 2, 1651),
(3, NULL, 'Role', 3, 'Role-public', 1, 1652),
(4, 1, 'User', 1, 'admin', 4, 5),
(5, 12, 'User', 2, 'Secret', 18, 19),
(6, 12, 'User', 3, 'lb91705', 16, 17),
(7, 13, 'User', 4, 'ge91705', 22, 23),
(8, 2, 'User', 5, 'wertu7', 7, 8),
(9, 2, 'User', 6, 'jhfjhfhg', 9, 10),
(10, 2, 'User', 7, 'test', 11, 12),
(11, 2, 'Role', 4, 'Role-secretariat', 13, 14),
(12, 2, 'Role', 5, 'Role-counselor', 15, 20),
(13, 2, 'Role', 6, 'Role-manager', 21, 24),
(14, 2, 'User', 9, 'qaqa', 25, 26),
(15, 2, 'User', 10, 'qqqqw', 27, 28),
(16, 2, 'User', 11, NULL, 29, 30),
(17, 2, 'User', 12, NULL, 31, 32),
(18, 2, 'User', 13, NULL, 33, 34),
(19, 2, 'User', 14, NULL, 35, 36),
(20, 2, 'User', 15, NULL, 37, 38),
(21, 2, 'User', 16, NULL, 39, 40),
(22, 2, 'User', 17, NULL, 41, 42),
(23, 2, 'User', 18, NULL, 43, 44),
(24, 2, 'User', 19, NULL, 45, 46),
(25, 2, 'User', 20, NULL, 47, 48),
(26, 2, 'User', 21, NULL, 49, 50),
(27, 2, 'User', 22, NULL, 51, 52),
(28, 2, 'User', 23, NULL, 53, 54),
(29, 2, 'User', 24, NULL, 55, 56),
(30, 2, 'User', 25, NULL, 57, 58),
(31, 2, 'User', 26, NULL, 59, 60),
(32, 2, 'User', 27, NULL, 61, 62),
(33, 2, 'User', 28, NULL, 63, 64),
(34, 2, 'User', 29, NULL, 65, 66),
(35, 2, 'User', 30, NULL, 67, 68),
(36, 2, 'User', 31, NULL, 69, 70),
(37, 2, 'User', 32, NULL, 71, 72),
(38, 2, 'User', 33, NULL, 73, 74),
(39, 2, 'User', 34, NULL, 75, 76),
(40, 2, 'User', 35, NULL, 77, 78),
(41, 2, 'User', 36, NULL, 79, 80),
(42, 2, 'User', 37, NULL, 81, 82),
(43, 2, 'User', 38, NULL, 83, 84),
(44, 2, 'User', 39, NULL, 85, 86),
(45, 2, 'User', 40, NULL, 87, 88),
(46, 2, 'User', 41, NULL, 89, 90),
(47, 2, 'User', 42, NULL, 91, 92),
(48, 2, 'User', 43, NULL, 93, 94),
(49, 2, 'User', 44, NULL, 95, 96),
(50, 2, 'User', 45, NULL, 97, 98),
(51, 2, 'User', 46, NULL, 99, 100),
(52, 2, 'User', 47, NULL, 101, 102),
(53, 2, 'User', 48, NULL, 103, 104),
(54, 2, 'User', 49, NULL, 105, 106),
(55, 2, 'User', 50, NULL, 107, 108),
(56, 2, 'User', 51, NULL, 109, 110),
(57, 2, 'User', 52, NULL, 111, 112),
(58, 2, 'User', 53, NULL, 113, 114),
(59, 2, 'User', 54, NULL, 115, 116),
(60, 2, 'User', 55, NULL, 117, 118),
(61, 2, 'User', 56, NULL, 119, 120),
(62, 2, 'User', 57, NULL, 121, 122),
(63, 2, 'User', 58, NULL, 123, 124),
(64, 2, 'User', 59, NULL, 125, 126),
(65, 2, 'User', 60, NULL, 127, 128),
(66, 2, 'User', 61, NULL, 129, 130),
(67, 2, 'User', 62, NULL, 131, 132),
(68, 2, 'User', 63, NULL, 133, 134),
(69, 2, 'User', 64, NULL, 135, 136),
(70, 2, 'User', 65, NULL, 137, 138),
(71, 2, 'User', 66, NULL, 139, 140),
(72, 2, 'User', 67, NULL, 141, 142),
(73, 2, 'User', 68, NULL, 143, 144),
(74, 2, 'User', 69, NULL, 145, 146),
(75, 2, 'User', 70, NULL, 147, 148),
(76, 2, 'User', 71, NULL, 149, 150),
(77, 2, 'User', 72, NULL, 151, 152),
(78, 2, 'User', 73, NULL, 153, 154),
(79, 2, 'User', 74, NULL, 155, 156),
(80, 2, 'User', 75, NULL, 157, 158),
(81, 2, 'User', 76, NULL, 159, 160),
(82, 2, 'User', 77, NULL, 161, 162),
(83, 2, 'User', 78, NULL, 163, 164),
(84, 2, 'User', 79, NULL, 165, 166),
(85, 2, 'User', 80, NULL, 167, 168),
(86, 2, 'User', 81, NULL, 169, 170),
(87, 2, 'User', 82, NULL, 171, 172),
(88, 2, 'User', 83, NULL, 173, 174),
(89, 2, 'User', 84, NULL, 175, 176),
(90, 2, 'User', 85, NULL, 177, 178),
(91, 2, 'User', 86, NULL, 179, 180),
(92, 2, 'User', 87, NULL, 181, 182),
(93, 2, 'User', 88, NULL, 183, 184),
(94, 2, 'User', 89, NULL, 185, 186),
(95, 2, 'User', 90, NULL, 187, 188),
(96, 2, 'User', 91, NULL, 189, 190),
(97, 2, 'User', 92, NULL, 191, 192),
(98, 2, 'User', 93, NULL, 193, 194),
(99, 2, 'User', 94, NULL, 195, 196),
(100, 2, 'User', 95, NULL, 197, 198),
(101, 2, 'User', 96, NULL, 199, 200),
(102, 2, 'User', 97, NULL, 201, 202),
(103, 2, 'User', 98, NULL, 203, 204),
(104, 2, 'User', 99, NULL, 205, 206),
(105, 2, 'User', 100, NULL, 207, 208),
(106, 2, 'User', 101, NULL, 209, 210),
(107, 2, 'User', 102, NULL, 211, 212),
(108, 2, 'User', 103, NULL, 213, 214),
(109, 2, 'User', 104, NULL, 215, 216),
(110, 2, 'User', 105, NULL, 217, 218),
(111, 2, 'User', 106, NULL, 219, 220),
(112, 2, 'User', 107, NULL, 221, 222),
(113, 2, 'User', 108, NULL, 223, 224),
(114, 2, 'User', 109, NULL, 225, 226),
(115, 2, 'User', 110, NULL, 227, 228),
(116, 2, 'User', 111, NULL, 229, 230),
(117, 2, 'User', 112, NULL, 231, 232),
(118, 2, 'User', 113, NULL, 233, 234),
(119, 2, 'User', 114, NULL, 235, 236),
(120, 2, 'User', 115, NULL, 237, 238),
(121, 2, 'User', 116, NULL, 239, 240),
(122, 2, 'User', 117, NULL, 241, 242),
(123, 2, 'User', 118, NULL, 243, 244),
(124, 2, 'User', 119, NULL, 245, 246),
(125, 2, 'User', 120, NULL, 247, 248),
(126, 2, 'User', 121, NULL, 249, 250),
(127, 2, 'User', 122, NULL, 251, 252),
(128, 2, 'User', 123, NULL, 253, 254),
(129, 2, 'User', 124, NULL, 255, 256),
(130, 2, 'User', 125, NULL, 257, 258),
(131, 2, 'User', 126, NULL, 259, 260),
(132, 2, 'User', 127, NULL, 261, 262),
(133, 2, 'User', 128, NULL, 263, 264),
(134, 2, 'User', 129, NULL, 265, 266),
(135, 2, 'User', 130, NULL, 267, 268),
(136, 2, 'User', 131, NULL, 269, 270),
(137, 2, 'User', 132, NULL, 271, 272),
(138, 2, 'User', 133, NULL, 273, 274),
(139, 2, 'User', 134, NULL, 275, 276),
(140, 2, 'User', 135, NULL, 277, 278),
(141, 2, 'User', 136, NULL, 279, 280),
(142, 2, 'User', 137, NULL, 281, 282),
(143, 2, 'User', 138, NULL, 283, 284),
(144, 2, 'User', 139, NULL, 285, 286),
(145, 2, 'User', 140, NULL, 287, 288),
(146, 2, 'User', 141, NULL, 289, 290),
(147, 2, 'User', 142, NULL, 291, 292),
(148, 2, 'User', 143, NULL, 293, 294),
(149, 2, 'User', 144, NULL, 295, 296),
(150, 2, 'User', 145, NULL, 297, 298),
(151, 2, 'User', 146, NULL, 299, 300),
(152, 2, 'User', 147, NULL, 301, 302),
(153, 2, 'User', 148, NULL, 303, 304),
(154, 2, 'User', 149, NULL, 305, 306),
(155, 2, 'User', 150, NULL, 307, 308),
(156, 2, 'User', 151, NULL, 309, 310),
(157, 2, 'User', 152, NULL, 311, 312),
(158, 2, 'User', 153, NULL, 313, 314),
(159, 2, 'User', 154, NULL, 315, 316),
(160, 2, 'User', 155, NULL, 317, 318),
(161, 2, 'User', 156, NULL, 319, 320),
(162, 2, 'User', 157, NULL, 321, 322),
(163, 2, 'User', 158, NULL, 323, 324),
(164, 2, 'User', 159, NULL, 325, 326),
(165, 2, 'User', 160, NULL, 327, 328),
(166, 2, 'User', 161, NULL, 329, 330),
(167, 2, 'User', 162, NULL, 331, 332),
(168, 2, 'User', 163, NULL, 333, 334),
(169, 2, 'User', 164, NULL, 335, 336),
(170, 2, 'User', 165, NULL, 337, 338),
(171, 2, 'User', 166, NULL, 339, 340),
(172, 2, 'User', 167, NULL, 341, 342),
(173, 2, 'User', 168, NULL, 343, 344),
(174, 2, 'User', 169, NULL, 345, 346),
(175, 2, 'User', 170, NULL, 347, 348),
(176, 2, 'User', 171, NULL, 349, 350),
(177, 2, 'User', 172, NULL, 351, 352),
(178, 2, 'User', 173, NULL, 353, 354),
(179, 2, 'User', 174, NULL, 355, 356),
(180, 2, 'User', 175, NULL, 357, 358),
(181, 2, 'User', 176, NULL, 359, 360),
(182, 2, 'User', 177, NULL, 361, 362),
(183, 2, 'User', 178, NULL, 363, 364),
(184, 2, 'User', 179, NULL, 365, 366),
(185, 2, 'User', 180, NULL, 367, 368),
(186, 2, 'User', 181, NULL, 369, 370),
(187, 2, 'User', 182, NULL, 371, 372),
(188, 2, 'User', 183, NULL, 373, 374),
(189, 2, 'User', 184, NULL, 375, 376),
(190, 2, 'User', 185, NULL, 377, 378),
(191, 2, 'User', 186, NULL, 379, 380),
(192, 2, 'User', 187, NULL, 381, 382),
(193, 2, 'User', 188, NULL, 383, 384),
(194, 2, 'User', 189, NULL, 385, 386),
(195, 2, 'User', 190, NULL, 387, 388),
(196, 2, 'User', 191, NULL, 389, 390),
(197, 2, 'User', 192, NULL, 391, 392),
(198, 2, 'User', 193, NULL, 393, 394),
(199, 2, 'User', 194, NULL, 395, 396),
(200, 2, 'User', 195, NULL, 397, 398),
(201, 2, 'User', 196, NULL, 399, 400),
(202, 2, 'User', 197, NULL, 401, 402),
(203, 2, 'User', 198, NULL, 403, 404),
(204, 2, 'User', 199, NULL, 405, 406),
(205, 2, 'User', 200, NULL, 407, 408),
(206, 2, 'User', 201, NULL, 409, 410),
(207, 2, 'User', 202, NULL, 411, 412),
(208, 2, 'User', 203, NULL, 413, 414),
(209, 2, 'User', 204, NULL, 415, 416),
(210, 2, 'User', 205, NULL, 417, 418),
(211, 2, 'User', 206, NULL, 419, 420),
(212, 2, 'User', 207, NULL, 421, 422),
(213, 2, 'User', 208, NULL, 423, 424),
(214, 2, 'User', 209, NULL, 425, 426),
(215, 2, 'User', 210, NULL, 427, 428),
(216, 2, 'User', 211, NULL, 429, 430),
(217, 2, 'User', 212, NULL, 431, 432),
(218, 2, 'User', 213, NULL, 433, 434),
(219, 2, 'User', 214, NULL, 435, 436),
(220, 2, 'User', 215, NULL, 437, 438),
(221, 2, 'User', 216, NULL, 439, 440),
(222, 2, 'User', 217, NULL, 441, 442),
(223, 2, 'User', 218, NULL, 443, 444),
(224, 2, 'User', 219, NULL, 445, 446),
(225, 2, 'User', 220, NULL, 447, 448),
(226, 2, 'User', 221, NULL, 449, 450),
(227, 2, 'User', 222, NULL, 451, 452),
(228, 2, 'User', 223, NULL, 453, 454),
(229, 2, 'User', 224, NULL, 455, 456),
(230, 2, 'User', 225, NULL, 457, 458),
(231, 2, 'User', 226, NULL, 459, 460),
(232, 2, 'User', 227, NULL, 461, 462),
(233, 2, 'User', 228, NULL, 463, 464),
(234, 2, 'User', 229, NULL, 465, 466),
(235, 2, 'User', 230, NULL, 467, 468),
(236, 2, 'User', 231, NULL, 469, 470),
(237, 2, 'User', 232, NULL, 471, 472),
(238, 2, 'User', 233, NULL, 473, 474),
(239, 2, 'User', 234, NULL, 475, 476),
(240, 2, 'User', 235, NULL, 477, 478),
(241, 2, 'User', 236, NULL, 479, 480),
(242, 2, 'User', 237, NULL, 481, 482),
(243, 2, 'User', 238, NULL, 483, 484),
(244, 2, 'User', 239, NULL, 485, 486),
(245, 2, 'User', 240, NULL, 487, 488),
(246, 2, 'User', 241, NULL, 489, 490),
(247, 2, 'User', 242, NULL, 491, 492),
(248, 2, 'User', 243, NULL, 493, 494),
(249, 2, 'User', 244, NULL, 495, 496),
(250, 2, 'User', 245, NULL, 497, 498),
(251, 2, 'User', 246, NULL, 499, 500),
(252, 2, 'User', 247, NULL, 501, 502),
(253, 2, 'User', 248, NULL, 503, 504),
(254, 2, 'User', 249, NULL, 505, 506),
(255, 2, 'User', 250, NULL, 507, 508),
(256, 2, 'User', 251, NULL, 509, 510),
(257, 2, 'User', 252, NULL, 511, 512),
(258, 2, 'User', 253, NULL, 513, 514),
(259, 2, 'User', 254, NULL, 515, 516),
(260, 2, 'User', 255, NULL, 517, 518),
(261, 2, 'User', 256, NULL, 519, 520),
(262, 2, 'User', 257, NULL, 521, 522),
(263, 2, 'User', 258, NULL, 523, 524),
(264, 2, 'User', 259, NULL, 525, 526),
(265, 2, 'User', 260, NULL, 527, 528),
(266, 2, 'User', 261, NULL, 529, 530),
(267, 2, 'User', 262, NULL, 531, 532),
(268, 2, 'User', 263, NULL, 533, 534),
(269, 2, 'User', 264, NULL, 535, 536),
(270, 2, 'User', 265, NULL, 537, 538),
(271, 2, 'User', 266, NULL, 539, 540),
(272, 2, 'User', 267, NULL, 541, 542),
(273, 2, 'User', 268, NULL, 543, 544),
(274, 2, 'User', 269, NULL, 545, 546),
(275, 2, 'User', 270, NULL, 547, 548),
(276, 2, 'User', 271, NULL, 549, 550),
(277, 2, 'User', 272, NULL, 551, 552),
(278, 2, 'User', 273, NULL, 553, 554),
(279, 2, 'User', 274, NULL, 555, 556),
(280, 2, 'User', 275, NULL, 557, 558),
(281, 2, 'User', 276, NULL, 559, 560),
(282, 2, 'User', 277, NULL, 561, 562),
(283, 2, 'User', 278, NULL, 563, 564),
(284, 2, 'User', 279, NULL, 565, 566),
(285, 2, 'User', 280, NULL, 567, 568),
(286, 2, 'User', 281, NULL, 569, 570),
(287, 2, 'User', 282, NULL, 571, 572),
(288, 2, 'User', 283, NULL, 573, 574),
(289, 2, 'User', 284, NULL, 575, 576),
(290, 2, 'User', 285, NULL, 577, 578),
(291, 2, 'User', 286, NULL, 579, 580),
(292, 2, 'User', 287, NULL, 581, 582),
(293, 2, 'User', 288, NULL, 583, 584),
(294, 2, 'User', 289, NULL, 585, 586),
(295, 2, 'User', 290, NULL, 587, 588),
(296, 2, 'User', 291, NULL, 589, 590),
(297, 2, 'User', 292, NULL, 591, 592),
(298, 2, 'User', 293, NULL, 593, 594),
(299, 2, 'User', 294, NULL, 595, 596),
(300, 2, 'User', 295, NULL, 597, 598),
(301, 2, 'User', 296, NULL, 599, 600),
(302, 2, 'User', 297, NULL, 601, 602),
(303, 2, 'User', 298, NULL, 603, 604),
(304, 2, 'User', 299, NULL, 605, 606),
(305, 2, 'User', 300, NULL, 607, 608),
(306, 2, 'User', 301, NULL, 609, 610),
(307, 2, 'User', 302, NULL, 611, 612),
(308, 2, 'User', 303, NULL, 613, 614),
(309, 2, 'User', 304, NULL, 615, 616),
(310, 2, 'User', 305, NULL, 617, 618),
(311, 2, 'User', 306, NULL, 619, 620),
(312, 2, 'User', 307, NULL, 621, 622),
(313, 2, 'User', 308, NULL, 623, 624),
(314, 2, 'User', 309, NULL, 625, 626),
(315, 2, 'User', 310, NULL, 627, 628),
(316, 2, 'User', 311, NULL, 629, 630),
(317, 2, 'User', 312, NULL, 631, 632),
(318, 2, 'User', 313, NULL, 633, 634),
(319, 2, 'User', 314, NULL, 635, 636),
(320, 2, 'User', 315, NULL, 637, 638),
(321, 2, 'User', 316, NULL, 639, 640),
(322, 2, 'User', 317, NULL, 641, 642),
(323, 2, 'User', 318, NULL, 643, 644),
(324, 2, 'User', 319, NULL, 645, 646),
(325, 2, 'User', 320, NULL, 647, 648),
(326, 2, 'User', 321, NULL, 649, 650),
(327, 2, 'User', 322, NULL, 651, 652),
(328, 2, 'User', 323, NULL, 653, 654),
(329, 2, 'User', 324, NULL, 655, 656),
(330, 2, 'User', 325, NULL, 657, 658),
(331, 2, 'User', 326, NULL, 659, 660),
(332, 2, 'User', 327, NULL, 661, 662),
(333, 2, 'User', 328, NULL, 663, 664),
(334, 2, 'User', 329, NULL, 665, 666),
(335, 2, 'User', 330, NULL, 667, 668),
(336, 2, 'User', 331, NULL, 669, 670),
(337, 2, 'User', 332, NULL, 671, 672),
(338, 2, 'User', 333, NULL, 673, 674),
(339, 2, 'User', 334, NULL, 675, 676),
(340, 2, 'User', 335, NULL, 677, 678),
(341, 2, 'User', 336, NULL, 679, 680),
(342, 2, 'User', 337, NULL, 681, 682),
(343, 2, 'User', 338, NULL, 683, 684),
(344, 2, 'User', 339, NULL, 685, 686),
(345, 2, 'User', 340, NULL, 687, 688),
(346, 2, 'User', 341, NULL, 689, 690),
(347, 2, 'User', 342, NULL, 691, 692),
(348, 2, 'User', 343, NULL, 693, 694),
(349, 2, 'User', 344, NULL, 695, 696),
(350, 2, 'User', 345, NULL, 697, 698),
(351, 2, 'User', 346, NULL, 699, 700),
(352, 2, 'User', 347, NULL, 701, 702),
(353, 2, 'User', 348, NULL, 703, 704),
(354, 2, 'User', 349, NULL, 705, 706),
(355, 2, 'User', 350, NULL, 707, 708),
(356, 2, 'User', 351, NULL, 709, 710),
(357, 2, 'User', 352, NULL, 711, 712),
(358, 2, 'User', 353, NULL, 713, 714),
(359, 2, 'User', 354, NULL, 715, 716),
(360, 2, 'User', 355, NULL, 717, 718),
(361, 2, 'User', 356, NULL, 719, 720),
(362, 2, 'User', 357, NULL, 721, 722),
(363, 2, 'User', 358, NULL, 723, 724),
(364, 2, 'User', 359, NULL, 725, 726),
(365, 2, 'User', 360, NULL, 727, 728),
(366, 2, 'User', 361, NULL, 729, 730),
(367, 2, 'User', 362, NULL, 731, 732),
(368, 2, 'User', 363, NULL, 733, 734),
(369, 2, 'User', 364, NULL, 735, 736),
(370, 2, 'User', 365, NULL, 737, 738),
(371, 2, 'User', 366, NULL, 739, 740),
(372, 2, 'User', 367, NULL, 741, 742),
(373, 2, 'User', 368, NULL, 743, 744),
(374, 2, 'User', 369, NULL, 745, 746),
(375, 2, 'User', 370, NULL, 747, 748),
(376, 2, 'User', 371, NULL, 749, 750),
(377, 2, 'User', 372, NULL, 751, 752),
(378, 2, 'User', 373, NULL, 753, 754),
(379, 2, 'User', 374, NULL, 755, 756),
(380, 2, 'User', 375, NULL, 757, 758),
(381, 2, 'User', 376, NULL, 759, 760),
(382, 2, 'User', 377, NULL, 761, 762),
(383, 2, 'User', 378, NULL, 763, 764),
(384, 2, 'User', 379, NULL, 765, 766),
(385, 2, 'User', 380, NULL, 767, 768),
(386, 2, 'User', 381, NULL, 769, 770),
(387, 2, 'User', 382, NULL, 771, 772),
(388, 2, 'User', 383, NULL, 773, 774),
(389, 2, 'User', 384, NULL, 775, 776),
(390, 2, 'User', 385, NULL, 777, 778),
(391, 2, 'User', 386, NULL, 779, 780),
(392, 2, 'User', 387, NULL, 781, 782),
(393, 2, 'User', 388, NULL, 783, 784),
(394, 2, 'User', 389, NULL, 785, 786),
(395, 2, 'User', 390, NULL, 787, 788),
(396, 2, 'User', 391, NULL, 789, 790),
(397, 2, 'User', 392, NULL, 791, 792),
(398, 2, 'User', 393, NULL, 793, 794),
(399, 2, 'User', 394, NULL, 795, 796),
(400, 2, 'User', 395, NULL, 797, 798),
(401, 2, 'User', 396, NULL, 799, 800),
(402, 2, 'User', 397, NULL, 801, 802),
(403, 2, 'User', 398, NULL, 803, 804),
(404, 2, 'User', 399, NULL, 805, 806),
(405, 2, 'User', 400, NULL, 807, 808),
(406, 2, 'User', 401, NULL, 809, 810),
(407, 2, 'User', 402, NULL, 811, 812),
(408, 2, 'User', 403, NULL, 813, 814),
(409, 2, 'User', 404, NULL, 815, 816),
(410, 2, 'User', 405, NULL, 817, 818),
(411, 2, 'User', 406, NULL, 819, 820),
(412, 2, 'User', 407, NULL, 821, 822),
(413, 2, 'User', 408, NULL, 823, 824),
(414, 2, 'User', 409, NULL, 825, 826),
(415, 2, 'User', 410, NULL, 827, 828),
(416, 2, 'User', 411, NULL, 829, 830),
(417, 2, 'User', 412, NULL, 831, 832),
(418, 2, 'User', 413, NULL, 833, 834),
(419, 2, 'User', 414, NULL, 835, 836),
(420, 2, 'User', 415, NULL, 837, 838),
(421, 2, 'User', 416, NULL, 839, 840),
(422, 2, 'User', 417, NULL, 841, 842),
(423, 2, 'User', 418, NULL, 843, 844),
(424, 2, 'User', 419, NULL, 845, 846),
(425, 2, 'User', 420, NULL, 847, 848),
(426, 2, 'User', 421, NULL, 849, 850),
(427, 2, 'User', 422, NULL, 851, 852),
(428, 2, 'User', 423, NULL, 853, 854),
(429, 2, 'User', 424, NULL, 855, 856),
(430, 2, 'User', 425, NULL, 857, 858),
(431, 2, 'User', 426, NULL, 859, 860),
(432, 2, 'User', 427, NULL, 861, 862),
(433, 2, 'User', 428, NULL, 863, 864),
(434, 2, 'User', 429, NULL, 865, 866),
(435, 2, 'User', 430, NULL, 867, 868),
(436, 2, 'User', 431, NULL, 869, 870),
(437, 2, 'User', 432, NULL, 871, 872),
(438, 2, 'User', 433, NULL, 873, 874),
(439, 2, 'User', 434, NULL, 875, 876),
(440, 2, 'User', 435, NULL, 877, 878),
(441, 2, 'User', 436, NULL, 879, 880),
(442, 2, 'User', 437, NULL, 881, 882),
(443, 2, 'User', 438, NULL, 883, 884),
(444, 2, 'User', 439, NULL, 885, 886),
(445, 2, 'User', 440, NULL, 887, 888),
(446, 2, 'User', 441, NULL, 889, 890),
(447, 2, 'User', 442, NULL, 891, 892),
(448, 2, 'User', 443, NULL, 893, 894),
(449, 2, 'User', 444, NULL, 895, 896),
(450, 2, 'User', 445, NULL, 897, 898),
(451, 2, 'User', 446, NULL, 899, 900),
(452, 2, 'User', 447, NULL, 901, 902),
(453, 2, 'User', 448, NULL, 903, 904),
(454, 2, 'User', 449, NULL, 905, 906),
(455, 2, 'User', 450, NULL, 907, 908),
(456, 2, 'User', 451, NULL, 909, 910),
(457, 2, 'User', 452, NULL, 911, 912),
(458, 2, 'User', 453, NULL, 913, 914),
(459, 2, 'User', 454, NULL, 915, 916),
(460, 2, 'User', 455, NULL, 917, 918),
(461, 2, 'User', 456, NULL, 919, 920),
(462, 2, 'User', 457, NULL, 921, 922),
(463, 2, 'User', 458, NULL, 923, 924),
(464, 2, 'User', 459, NULL, 925, 926),
(465, 2, 'User', 460, NULL, 927, 928),
(466, 2, 'User', 461, NULL, 929, 930),
(467, 2, 'User', 462, NULL, 931, 932),
(468, 2, 'User', 463, NULL, 933, 934),
(469, 2, 'User', 464, NULL, 935, 936),
(470, 2, 'User', 465, NULL, 937, 938),
(471, 2, 'User', 466, NULL, 939, 940),
(472, 2, 'User', 467, NULL, 941, 942),
(473, 2, 'User', 468, NULL, 943, 944),
(474, 2, 'User', 469, NULL, 945, 946),
(475, 2, 'User', 470, NULL, 947, 948),
(476, 2, 'User', 471, NULL, 949, 950),
(477, 2, 'User', 472, NULL, 951, 952),
(478, 2, 'User', 473, NULL, 953, 954),
(479, 2, 'User', 474, NULL, 955, 956),
(480, 2, 'User', 475, NULL, 957, 958),
(481, 2, 'User', 476, NULL, 959, 960),
(482, 2, 'User', 477, NULL, 961, 962),
(483, 2, 'User', 478, NULL, 963, 964),
(484, 2, 'User', 479, NULL, 965, 966),
(485, 2, 'User', 480, NULL, 967, 968),
(486, 2, 'User', 481, NULL, 969, 970),
(487, 2, 'User', 482, NULL, 971, 972),
(488, 2, 'User', 483, NULL, 973, 974),
(489, 2, 'User', 484, NULL, 975, 976),
(490, 2, 'User', 485, NULL, 977, 978),
(491, 2, 'User', 486, NULL, 979, 980),
(492, 2, 'User', 487, NULL, 981, 982),
(493, 2, 'User', 488, NULL, 983, 984),
(494, 2, 'User', 489, NULL, 985, 986),
(495, 2, 'User', 490, NULL, 987, 988),
(496, 2, 'User', 491, NULL, 989, 990),
(497, 2, 'User', 492, NULL, 991, 992),
(498, 2, 'User', 493, NULL, 993, 994),
(499, 2, 'User', 494, NULL, 995, 996),
(500, 2, 'User', 495, NULL, 997, 998),
(501, 2, 'User', 496, NULL, 999, 1000),
(502, 2, 'User', 497, NULL, 1001, 1002),
(503, 2, 'User', 498, NULL, 1003, 1004),
(504, 2, 'User', 499, NULL, 1005, 1006),
(505, 2, 'User', 500, NULL, 1007, 1008),
(506, 2, 'User', 501, NULL, 1009, 1010),
(507, 2, 'User', 502, NULL, 1011, 1012),
(508, 2, 'User', 503, NULL, 1013, 1014),
(509, 2, 'User', 504, NULL, 1015, 1016),
(510, 2, 'User', 505, NULL, 1017, 1018),
(511, 2, 'User', 506, NULL, 1019, 1020),
(512, 2, 'User', 507, NULL, 1021, 1022),
(513, 2, 'User', 508, NULL, 1023, 1024),
(514, 2, 'User', 509, NULL, 1025, 1026),
(515, 2, 'User', 510, NULL, 1027, 1028),
(516, 2, 'User', 511, NULL, 1029, 1030),
(517, 2, 'User', 512, NULL, 1031, 1032),
(518, 2, 'User', 513, NULL, 1033, 1034),
(519, 2, 'User', 514, NULL, 1035, 1036),
(520, 2, 'User', 515, NULL, 1037, 1038),
(521, 2, 'User', 516, NULL, 1039, 1040),
(522, 2, 'User', 517, NULL, 1041, 1042),
(523, 2, 'User', 518, NULL, 1043, 1044),
(524, 2, 'User', 519, NULL, 1045, 1046),
(525, 2, 'User', 520, NULL, 1047, 1048),
(526, 2, 'User', 521, NULL, 1049, 1050),
(527, 2, 'User', 522, NULL, 1051, 1052),
(528, 2, 'User', 523, NULL, 1053, 1054),
(529, 2, 'User', 524, NULL, 1055, 1056),
(530, 2, 'User', 525, NULL, 1057, 1058),
(531, 2, 'User', 526, NULL, 1059, 1060),
(532, 2, 'User', 527, NULL, 1061, 1062),
(533, 2, 'User', 528, NULL, 1063, 1064),
(534, 2, 'User', 529, NULL, 1065, 1066),
(535, 2, 'User', 530, NULL, 1067, 1068),
(536, 2, 'User', 531, NULL, 1069, 1070),
(537, 2, 'User', 532, NULL, 1071, 1072),
(538, 2, 'User', 533, NULL, 1073, 1074),
(539, 2, 'User', 534, NULL, 1075, 1076),
(540, 2, 'User', 535, NULL, 1077, 1078),
(541, 2, 'User', 536, NULL, 1079, 1080),
(542, 2, 'User', 537, NULL, 1081, 1082),
(543, 2, 'User', 538, NULL, 1083, 1084),
(544, 2, 'User', 539, NULL, 1085, 1086),
(545, 2, 'User', 540, NULL, 1087, 1088),
(546, 2, 'User', 541, NULL, 1089, 1090),
(547, 2, 'User', 542, NULL, 1091, 1092),
(548, 2, 'User', 543, NULL, 1093, 1094),
(549, 2, 'User', 544, NULL, 1095, 1096),
(550, 2, 'User', 545, NULL, 1097, 1098),
(551, 2, 'User', 546, NULL, 1099, 1100),
(552, 2, 'User', 547, NULL, 1101, 1102),
(553, 2, 'User', 548, NULL, 1103, 1104),
(554, 2, 'User', 549, NULL, 1105, 1106),
(555, 2, 'User', 550, NULL, 1107, 1108),
(556, 2, 'User', 551, NULL, 1109, 1110),
(557, 2, 'User', 552, NULL, 1111, 1112),
(558, 2, 'User', 553, NULL, 1113, 1114),
(559, 2, 'User', 554, NULL, 1115, 1116),
(560, 2, 'User', 555, NULL, 1117, 1118),
(561, 2, 'User', 556, NULL, 1119, 1120),
(562, 2, 'User', 557, NULL, 1121, 1122),
(563, 2, 'User', 558, NULL, 1123, 1124),
(564, 2, 'User', 559, NULL, 1125, 1126),
(565, 2, 'User', 560, NULL, 1127, 1128),
(566, 2, 'User', 561, NULL, 1129, 1130),
(567, 2, 'User', 562, NULL, 1131, 1132),
(568, 2, 'User', 563, NULL, 1133, 1134),
(569, 2, 'User', 564, NULL, 1135, 1136),
(570, 2, 'User', 565, NULL, 1137, 1138),
(571, 2, 'User', 566, NULL, 1139, 1140),
(572, 2, 'User', 567, NULL, 1141, 1142),
(573, 2, 'User', 568, NULL, 1143, 1144),
(574, 2, 'User', 569, NULL, 1145, 1146),
(575, 2, 'User', 570, NULL, 1147, 1148),
(576, 2, 'User', 571, NULL, 1149, 1150),
(577, 2, 'User', 572, NULL, 1151, 1152),
(578, 2, 'User', 573, NULL, 1153, 1154),
(579, 2, 'User', 574, NULL, 1155, 1156),
(580, 2, 'User', 575, NULL, 1157, 1158),
(581, 2, 'User', 576, NULL, 1159, 1160),
(582, 2, 'User', 577, NULL, 1161, 1162),
(583, 2, 'User', 578, NULL, 1163, 1164),
(584, 2, 'User', 579, NULL, 1165, 1166),
(585, 2, 'User', 580, NULL, 1167, 1168),
(586, 2, 'User', 581, NULL, 1169, 1170),
(587, 2, 'User', 582, NULL, 1171, 1172),
(588, 2, 'User', 583, NULL, 1173, 1174),
(589, 2, 'User', 584, NULL, 1175, 1176),
(590, 2, 'User', 585, NULL, 1177, 1178),
(591, 2, 'User', 586, NULL, 1179, 1180),
(592, 2, 'User', 587, NULL, 1181, 1182),
(593, 2, 'User', 588, NULL, 1183, 1184),
(594, 2, 'User', 589, NULL, 1185, 1186),
(595, 2, 'User', 590, NULL, 1187, 1188),
(596, 2, 'User', 591, NULL, 1189, 1190),
(597, 2, 'User', 592, NULL, 1191, 1192),
(598, 2, 'User', 593, NULL, 1193, 1194),
(599, 2, 'User', 594, NULL, 1195, 1196),
(600, 2, 'User', 595, NULL, 1197, 1198),
(601, 2, 'User', 596, NULL, 1199, 1200),
(602, 2, 'User', 597, NULL, 1201, 1202),
(603, 2, 'User', 598, NULL, 1203, 1204),
(604, 2, 'User', 599, NULL, 1205, 1206),
(605, 2, 'User', 600, NULL, 1207, 1208),
(606, 2, 'User', 601, NULL, 1209, 1210),
(607, 2, 'User', 602, NULL, 1211, 1212),
(608, 2, 'User', 603, NULL, 1213, 1214),
(609, 2, 'User', 604, NULL, 1215, 1216),
(610, 2, 'User', 605, NULL, 1217, 1218),
(611, 2, 'User', 606, NULL, 1219, 1220),
(612, 2, 'User', 607, NULL, 1221, 1222),
(613, 2, 'User', 608, NULL, 1223, 1224),
(614, 2, 'User', 609, NULL, 1225, 1226),
(615, 2, 'User', 610, NULL, 1227, 1228),
(616, 2, 'User', 611, NULL, 1229, 1230),
(617, 2, 'User', 612, NULL, 1231, 1232),
(618, 2, 'User', 613, NULL, 1233, 1234),
(619, 2, 'User', 614, NULL, 1235, 1236),
(620, 2, 'User', 615, NULL, 1237, 1238),
(621, 2, 'User', 616, NULL, 1239, 1240),
(622, 2, 'User', 617, NULL, 1241, 1242),
(623, 2, 'User', 618, NULL, 1243, 1244),
(624, 2, 'User', 619, NULL, 1245, 1246),
(625, 2, 'User', 620, NULL, 1247, 1248),
(626, 2, 'User', 621, NULL, 1249, 1250),
(627, 2, 'User', 622, NULL, 1251, 1252),
(628, 2, 'User', 623, NULL, 1253, 1254),
(629, 2, 'User', 624, NULL, 1255, 1256),
(630, 2, 'User', 625, NULL, 1257, 1258),
(631, 2, 'User', 626, NULL, 1259, 1260),
(632, 2, 'User', 627, NULL, 1261, 1262),
(633, 2, 'User', 628, NULL, 1263, 1264),
(634, 2, 'User', 629, NULL, 1265, 1266),
(635, 2, 'User', 630, NULL, 1267, 1268),
(636, 2, 'User', 631, NULL, 1269, 1270),
(637, 2, 'User', 632, NULL, 1271, 1272),
(638, 2, 'User', 633, NULL, 1273, 1274),
(639, 2, 'User', 634, NULL, 1275, 1276),
(640, 2, 'User', 635, NULL, 1277, 1278),
(641, 2, 'User', 636, NULL, 1279, 1280),
(642, 2, 'User', 637, NULL, 1281, 1282),
(643, 2, 'User', 638, NULL, 1283, 1284),
(644, 2, 'User', 639, NULL, 1285, 1286),
(645, 2, 'User', 640, NULL, 1287, 1288),
(646, 2, 'User', 641, NULL, 1289, 1290),
(647, 2, 'User', 642, NULL, 1291, 1292),
(648, 2, 'User', 643, NULL, 1293, 1294),
(649, 2, 'User', 644, NULL, 1295, 1296),
(650, 2, 'User', 645, NULL, 1297, 1298),
(651, 2, 'User', 646, NULL, 1299, 1300),
(652, 2, 'User', 647, NULL, 1301, 1302),
(653, 2, 'User', 648, NULL, 1303, 1304),
(654, 2, 'User', 649, NULL, 1305, 1306),
(655, 2, 'User', 650, NULL, 1307, 1308),
(656, 2, 'User', 651, NULL, 1309, 1310),
(657, 2, 'User', 652, NULL, 1311, 1312),
(658, 2, 'User', 653, NULL, 1313, 1314),
(659, 2, 'User', 654, NULL, 1315, 1316),
(660, 2, 'User', 655, NULL, 1317, 1318),
(661, 2, 'User', 656, NULL, 1319, 1320),
(662, 2, 'User', 657, NULL, 1321, 1322),
(663, 2, 'User', 658, NULL, 1323, 1324),
(664, 2, 'User', 659, NULL, 1325, 1326),
(665, 2, 'User', 660, NULL, 1327, 1328),
(666, 2, 'User', 661, NULL, 1329, 1330),
(667, 2, 'User', 662, NULL, 1331, 1332),
(668, 2, 'User', 663, NULL, 1333, 1334),
(669, 2, 'User', 664, NULL, 1335, 1336),
(670, 2, 'User', 665, NULL, 1337, 1338),
(671, 2, 'User', 666, NULL, 1339, 1340),
(672, 2, 'User', 667, NULL, 1341, 1342),
(673, 2, 'User', 668, NULL, 1343, 1344),
(674, 2, 'User', 669, NULL, 1345, 1346),
(675, 2, 'User', 670, NULL, 1347, 1348),
(676, 2, 'User', 671, NULL, 1349, 1350),
(677, 2, 'User', 672, NULL, 1351, 1352),
(678, 2, 'User', 673, NULL, 1353, 1354),
(679, 2, 'User', 674, NULL, 1355, 1356),
(680, 2, 'User', 675, NULL, 1357, 1358),
(681, 2, 'User', 676, NULL, 1359, 1360),
(682, 2, 'User', 677, NULL, 1361, 1362),
(683, 2, 'User', 678, NULL, 1363, 1364),
(684, 2, 'User', 679, NULL, 1365, 1366),
(685, 2, 'User', 680, NULL, 1367, 1368),
(686, 2, 'User', 681, NULL, 1369, 1370),
(687, 2, 'User', 682, NULL, 1371, 1372),
(688, 2, 'User', 683, NULL, 1373, 1374),
(689, 2, 'User', 684, NULL, 1375, 1376),
(690, 2, 'User', 685, NULL, 1377, 1378),
(691, 2, 'User', 686, NULL, 1379, 1380),
(692, 2, 'User', 687, NULL, 1381, 1382),
(693, 2, 'User', 688, NULL, 1383, 1384),
(694, 2, 'User', 689, NULL, 1385, 1386),
(695, 2, 'User', 690, NULL, 1387, 1388),
(696, 2, 'User', 691, NULL, 1389, 1390),
(697, 2, 'User', 692, NULL, 1391, 1392),
(698, 2, 'User', 693, NULL, 1393, 1394),
(699, 2, 'User', 694, NULL, 1395, 1396),
(700, 2, 'User', 695, NULL, 1397, 1398),
(701, 2, 'User', 696, NULL, 1399, 1400),
(702, 2, 'User', 697, NULL, 1401, 1402),
(703, 2, 'User', 698, NULL, 1403, 1404),
(704, 2, 'User', 699, NULL, 1405, 1406),
(705, 2, 'User', 700, NULL, 1407, 1408),
(706, 2, 'User', 701, NULL, 1409, 1410),
(707, 2, 'User', 702, NULL, 1411, 1412),
(708, 2, 'User', 703, NULL, 1413, 1414),
(709, 2, 'User', 704, NULL, 1415, 1416),
(710, 2, 'User', 705, NULL, 1417, 1418),
(711, 2, 'User', 706, NULL, 1419, 1420),
(712, 2, 'User', 707, NULL, 1421, 1422),
(713, 2, 'User', 708, NULL, 1423, 1424),
(714, 2, 'User', 709, NULL, 1425, 1426),
(715, 2, 'User', 710, NULL, 1427, 1428),
(716, 2, 'User', 711, NULL, 1429, 1430),
(717, 2, 'User', 712, NULL, 1431, 1432),
(718, 2, 'User', 713, NULL, 1433, 1434),
(719, 2, 'User', 714, NULL, 1435, 1436),
(720, 2, 'User', 715, NULL, 1437, 1438),
(721, 2, 'User', 716, NULL, 1439, 1440),
(722, 2, 'User', 717, NULL, 1441, 1442),
(723, 2, 'User', 718, NULL, 1443, 1444),
(724, 2, 'User', 719, NULL, 1445, 1446),
(725, 2, 'User', 720, NULL, 1447, 1448),
(726, 2, 'User', 721, NULL, 1449, 1450),
(727, 2, 'User', 722, NULL, 1451, 1452),
(728, 2, 'User', 723, NULL, 1453, 1454),
(729, 2, 'User', 724, NULL, 1455, 1456),
(730, 2, 'User', 725, NULL, 1457, 1458),
(731, 2, 'User', 726, NULL, 1459, 1460),
(732, 2, 'User', 727, NULL, 1461, 1462),
(733, 2, 'User', 728, NULL, 1463, 1464),
(734, 2, 'User', 729, NULL, 1465, 1466),
(735, 2, 'User', 730, NULL, 1467, 1468),
(736, 2, 'User', 731, NULL, 1469, 1470),
(737, 2, 'User', 732, NULL, 1471, 1472),
(738, 2, 'User', 733, NULL, 1473, 1474),
(739, 2, 'User', 734, NULL, 1475, 1476),
(740, 2, 'User', 735, NULL, 1477, 1478),
(741, 2, 'User', 736, NULL, 1479, 1480),
(742, 2, 'User', 737, NULL, 1481, 1482),
(743, 2, 'User', 738, NULL, 1483, 1484),
(744, 2, 'User', 739, NULL, 1485, 1486),
(745, 2, 'User', 740, NULL, 1487, 1488),
(746, 2, 'User', 741, NULL, 1489, 1490),
(747, 2, 'User', 742, NULL, 1491, 1492),
(748, 2, 'User', 743, NULL, 1493, 1494),
(749, 2, 'User', 744, NULL, 1495, 1496),
(750, 2, 'User', 745, NULL, 1497, 1498),
(751, 2, 'User', 746, NULL, 1499, 1500),
(752, 2, 'User', 747, NULL, 1501, 1502),
(753, 2, 'User', 748, NULL, 1503, 1504),
(754, 2, 'User', 749, NULL, 1505, 1506),
(755, 2, 'User', 750, NULL, 1507, 1508),
(756, 2, 'User', 751, NULL, 1509, 1510),
(757, 2, 'User', 752, NULL, 1511, 1512),
(758, 2, 'User', 753, NULL, 1513, 1514),
(759, 2, 'User', 754, NULL, 1515, 1516),
(760, 2, 'User', 755, NULL, 1517, 1518),
(761, 2, 'User', 756, NULL, 1519, 1520),
(762, 2, 'User', 757, NULL, 1521, 1522),
(763, 2, 'User', 758, NULL, 1523, 1524),
(764, 2, 'User', 759, NULL, 1525, 1526),
(765, 2, 'User', 760, NULL, 1527, 1528),
(766, 2, 'User', 761, NULL, 1529, 1530),
(767, 2, 'User', 762, NULL, 1531, 1532),
(768, 2, 'User', 763, NULL, 1533, 1534),
(769, 2, 'User', 764, NULL, 1535, 1536),
(770, 2, 'User', 765, NULL, 1537, 1538),
(771, 2, 'User', 766, NULL, 1539, 1540),
(772, 2, 'User', 767, NULL, 1541, 1542),
(773, 2, 'User', 768, NULL, 1543, 1544),
(774, 2, 'User', 769, NULL, 1545, 1546),
(775, 2, 'User', 770, NULL, 1547, 1548),
(776, 2, 'User', 771, NULL, 1549, 1550),
(777, 2, 'User', 772, NULL, 1551, 1552),
(778, 2, 'User', 773, NULL, 1553, 1554),
(779, 2, 'User', 774, NULL, 1555, 1556),
(780, 2, 'User', 775, NULL, 1557, 1558),
(781, 2, 'User', 776, NULL, 1559, 1560),
(782, 2, 'User', 777, NULL, 1561, 1562),
(783, 2, 'User', 778, NULL, 1563, 1564),
(784, 2, 'User', 779, NULL, 1565, 1566),
(785, 2, 'User', 780, NULL, 1567, 1568),
(786, 2, 'User', 781, NULL, 1569, 1570),
(787, 2, 'User', 782, NULL, 1571, 1572),
(788, 2, 'User', 783, NULL, 1573, 1574),
(789, 2, 'User', 784, NULL, 1575, 1576),
(790, 2, 'User', 785, NULL, 1577, 1578),
(791, 2, 'User', 786, NULL, 1579, 1580),
(792, 2, 'User', 787, NULL, 1581, 1582),
(793, 2, 'User', 788, NULL, 1583, 1584),
(794, 2, 'User', 789, NULL, 1585, 1586),
(795, 2, 'User', 790, NULL, 1587, 1588),
(796, 2, 'User', 791, NULL, 1589, 1590),
(797, 2, 'User', 792, NULL, 1591, 1592),
(798, 2, 'User', 793, NULL, 1593, 1594),
(799, 2, 'User', 794, NULL, 1595, 1596),
(800, 2, 'User', 795, NULL, 1597, 1598),
(801, 2, 'User', 796, NULL, 1599, 1600),
(802, 2, 'User', 797, NULL, 1601, 1602),
(803, 2, 'User', 798, NULL, 1603, 1604),
(804, 2, 'User', 799, NULL, 1605, 1606),
(805, 2, 'User', 800, NULL, 1607, 1608),
(806, 2, 'User', 801, NULL, 1609, 1610),
(807, 2, 'User', 802, NULL, 1611, 1612),
(808, 2, 'User', 803, NULL, 1613, 1614),
(809, 2, 'User', 804, NULL, 1615, 1616),
(810, 2, 'User', 805, NULL, 1617, 1618),
(811, 2, 'User', 806, NULL, 1619, 1620),
(812, 2, 'User', 807, NULL, 1621, 1622),
(813, 2, 'User', 808, NULL, 1623, 1624),
(814, 2, 'User', 809, NULL, 1625, 1626),
(815, 2, 'User', 810, NULL, 1627, 1628),
(816, 2, 'User', 811, NULL, 1629, 1630),
(817, 2, 'User', 812, NULL, 1631, 1632),
(818, 2, 'User', 813, NULL, 1633, 1634),
(819, 2, 'User', 814, NULL, 1635, 1636),
(820, 2, 'User', 815, NULL, 1637, 1638),
(821, 2, 'User', 816, NULL, 1639, 1640),
(822, 2, 'User', 817, NULL, 1641, 1642),
(823, 2, 'User', 818, NULL, 1643, 1644),
(824, 2, 'User', 819, NULL, 1645, 1646),
(825, 2, 'User', 820, NULL, 1647, 1648),
(826, 2, 'User', 821, NULL, 1649, 1650);

-- --------------------------------------------------------

--
-- Structure de la table `web_aros_acos`
--

CREATE TABLE `web_aros_acos` (
  `id` int(10) NOT NULL,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_aros_acos`
--

INSERT INTO `web_aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 3, 35, '1', '1', '1', '1'),
(2, 3, 36, '1', '1', '1', '1'),
(3, 2, 37, '1', '1', '1', '1'),
(4, 3, 44, '1', '1', '1', '1'),
(5, 3, 125, '1', '1', '1', '1'),
(6, 3, 126, '1', '1', '1', '1'),
(7, 3, 127, '1', '1', '1', '1'),
(8, 3, 128, '1', '1', '1', '1'),
(9, 3, 129, '1', '1', '1', '1'),
(10, 2, 185, '1', '1', '1', '1'),
(11, 3, 186, '1', '1', '1', '1'),
(12, 3, 187, '1', '1', '1', '1'),
(13, 2, 188, '1', '1', '1', '1'),
(14, 3, 189, '1', '1', '1', '1'),
(15, 3, 190, '1', '1', '1', '1'),
(16, 3, 191, '1', '1', '1', '1'),
(17, 2, 192, '1', '1', '1', '1'),
(18, 2, 193, '1', '1', '1', '1'),
(19, 3, 183, '1', '1', '1', '1'),
(20, 2, 220, '1', '1', '1', '1'),
(21, 3, 220, '-1', '-1', '-1', '-1'),
(22, 11, 220, '-1', '-1', '-1', '-1'),
(23, 12, 220, '-1', '-1', '-1', '-1'),
(24, 13, 220, '-1', '-1', '-1', '-1'),
(25, 2, 269, '1', '1', '1', '1'),
(26, 2, 270, '1', '1', '1', '1'),
(27, 2, 271, '1', '1', '1', '1'),
(28, 2, 272, '1', '1', '1', '1'),
(29, 2, 273, '1', '1', '1', '1'),
(30, 2, 324, '1', '1', '1', '1'),
(31, 2, 325, '1', '1', '1', '1'),
(36, 2, 327, '1', '1', '1', '1'),
(37, 2, 328, '1', '1', '1', '1'),
(38, 2, 196, '1', '1', '1', '1'),
(39, 3, 196, '1', '1', '1', '1'),
(40, 2, 329, '1', '1', '1', '1'),
(41, 2, 330, '1', '1', '1', '1'),
(43, 2, 363, '1', '1', '1', '1'),
(44, 2, 362, '1', '1', '1', '1'),
(45, 2, 361, '1', '1', '1', '1'),
(46, 2, 360, '1', '1', '1', '1'),
(47, 2, 359, '1', '1', '1', '1'),
(48, 2, 358, '1', '1', '1', '1'),
(49, 2, 357, '1', '1', '1', '1'),
(50, 2, 356, '1', '1', '1', '1'),
(51, 2, 355, '1', '1', '1', '1'),
(52, 2, 354, '1', '1', '1', '1'),
(53, 2, 353, '1', '1', '1', '1'),
(54, 2, 365, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Structure de la table `web_blocks`
--

CREATE TABLE `web_blocks` (
  `id` int(20) NOT NULL,
  `region_id` int(20) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `visibility_paths` text COLLATE utf8_unicode_ci,
  `visibility_php` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_blocks`
--

INSERT INTO `web_blocks` (`id`, `region_id`, `title`, `alias`, `body`, `show_title`, `class`, `status`, `weight`, `element`, `visibility_roles`, `visibility_paths`, `visibility_php`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(3, 4, 'About', 'about', 'This is the content of your block. Can be modified in admin panel.', 1, '', 0, 2, '', '', '', '', '', NULL, NULL, '2015-08-03 04:35:08', 1, '2009-07-26 17:13:14', NULL),
(5, 4, 'Meta', 'meta', '[menu:meta]', 1, '', 0, 6, '', '', '', '', '', NULL, NULL, '2015-08-03 04:35:12', 1, '2009-09-12 06:36:22', NULL),
(6, 4, 'Blogroll', 'blogroll', '[menu:blogroll]', 1, '', 0, 4, '', '', '', '', '', NULL, NULL, '2015-08-03 04:35:10', 1, '2009-09-12 23:33:27', NULL),
(7, 4, 'Categories', 'categories', '[vocabulary:categories type="blog"]', 1, '', 0, 3, '', '', '', '', '', NULL, NULL, '2015-08-03 04:35:09', 1, '2009-10-03 16:52:50', NULL),
(8, 4, 'Search', 'search', '', 0, '', 0, 1, 'Nodes.search', '', '', '', '', NULL, NULL, '2015-08-03 04:35:08', 1, '2009-12-20 03:07:27', NULL),
(9, 4, 'Recent Posts', 'recent_posts', '[node:recent_posts conditions="Node.type:blog" order="Node.id DESC" limit="5"]', 1, '', 0, 5, '', '', '', '', '', NULL, NULL, '2015-08-03 04:35:11', 1, '2009-12-22 05:17:32', NULL),
(10, 7, 'Header', 'Header', '', 0, '', 1, 7, 'header', '', '', NULL, '', NULL, NULL, '2015-08-03 04:02:20', 1, '2015-07-12 00:44:39', 1),
(11, 9, 'Menu', 'menu', '', 0, '', 1, 8, 'menu', '', '', NULL, '', NULL, NULL, '2015-07-12 00:50:34', 1, '2015-07-12 00:50:34', 1),
(12, 10, 'Slider', 'slider', '', 0, '', 1, 9, 'slider', '', '', NULL, '', NULL, NULL, '2015-09-29 11:53:41', 1, '2015-07-12 00:51:53', 1),
(13, 11, 'Créer un compte utilisateur', 'add_account', '<div class="four columns ">\r\n	<div class="column-service-title-wrapper">\r\n		<div class="span4 fp-one">\r\n			<div class="widget-front">\r\n				<h2>1 - Créer un compte utilisateur </h2>\r\n				<div class="thumb-wrapper ">\r\n					<a class="round-div" href="#" title="Créer un compte utilisateur"></a>\r\n<img src="/capwebsite/theme/Cap/img/account-icon.jpg" style="width:auto; height:250px;left: 2px; top: 1px;" alt="">\r\n</div>	\r\n			</div><!-- /.widget-front -->\r\n		</div>\r\n	</div>\r\n</div>', 0, '', 1, 10, '', '', '', NULL, '', NULL, NULL, '2015-09-29 01:19:56', 1, '2015-07-12 01:01:29', 1),
(14, 11, 'Completer votre profil', 'complet_profile', '				<div class="four columns ">\r\n					<div class="column-service-title-wrapper">\r\n						<div class="span4 fp-two">\r\n							<div class="widget-front">\r\n								<h2>2 - Completer votre profil </h2>\r\n								<div class="thumb-wrapper ">\r\n									<a class="round-div" href="#" title="Déposer votre dossier"></a>\r\n								 <img src="/capwebsite/theme/Cap/img/request.jpg" style="width:auto; height:250px;left: 2px; top: 1px;" alt="">								</div>\r\n								\r\n							</div><!-- /.widget-front -->\r\n						</div>\r\n					</div>\r\n				</div>', 0, '', 1, 11, '', '', '', NULL, '', NULL, NULL, '2015-09-29 01:20:14', 1, '2015-07-12 01:05:23', 1),
(15, 11, 'Déposer votre dossier', 'deposer_dossier', '				<div class="four columns ">\r\n					<div class="column-service-title-wrapper">\r\n						<div class="span4 fp-three">\r\n							<div class="widget-front">\r\n								<h2>3 - Déposer votre dossier </h2>\r\n								<div class="thumb-wrapper ">\r\n									<a class="round-div" href="#" title="Suivi votre demande en ligne"></a>\r\n<img src="/capwebsite/theme/Cap/img/icon-timeline-inactive.png" style="width:auto; height:250px;left: 2px; top: 1px;" alt="">\r\n								</div>\r\n								\r\n							</div><!-- /.widget-front -->\r\n						</div>\r\n					</div>\r\n				</div>', 0, '', 1, 12, '', '', '', NULL, '', NULL, NULL, '2015-09-29 01:20:28', 1, '2015-07-12 01:10:04', 1),
(16, 12, 'Champs d’activités', 'champs_activity', '				<div class="four columns ">\r\n					<div class="column-service-wrapper">\r\n						<div class="column-service-title-wrapper">\r\n							<h2 class="column-service-title">Champs d’activités</h2>\r\n							<div class="column-service-caption">\r\n								Les conseillers se répartissent dans trois grandes spécialités : agronomie-environnement économie-gestion d’entreprise développement territorial.\r\n							</div>\r\n							<a class="gdl-button" href="#">Lire la suite</a>\r\n						</div>\r\n					</div>\r\n				</div>', 0, '', 1, 13, '', '', '', NULL, '', NULL, NULL, '2015-07-12 01:19:22', 1, '2015-07-12 01:19:22', 1),
(17, 12, 'Compétences requises', 'competences_requises', '				<div class="four columns ">\r\n					<div class="column-service-wrapper">\r\n						<div class="column-service-title-wrapper">\r\n							<h2 class="column-service-title">Compétences requises</h2>\r\n							<div class="column-service-caption">\r\n								Avoir un bon bagage technique Pour réaliser des études et des expérimentations (tests de culture, de produits phytosanitaires&#8230;) et élaborer des [&hellip;]\r\n							</div>\r\n							<a class="gdl-button" href="#">Lire la suite</a>\r\n						</div>\r\n					</div>\r\n				</div>', 0, '', 1, 14, '', '', '', NULL, '', NULL, NULL, '2015-07-12 01:19:55', 1, '2015-07-12 01:19:55', 1),
(18, 12, 'Mission de conseiller agricole', 'mission_conseiller', '				<div class="four columns ">\r\n					<div class="column-service-wrapper">\r\n						<div class="column-service-title-wrapper">\r\n							<h2 class="column-service-title">Mission de conseiller agricole</h2>\r\n							<div class="column-service-caption">\r\n								Le conseiller agricole aide les exploitations agricoles à améliorer la quantité et la qualité de leur production (végétale ou animale) ou leurs [&hellip;]\r\n							</div>\r\n							<a class="gdl-button" href="#">Lire la suite</a>\r\n						</div>\r\n					</div>\r\n				</div>', 0, '', 1, 15, '', '', '', NULL, '', NULL, NULL, '2015-07-12 01:20:36', 1, '2015-07-12 01:20:36', 1),
(19, 13, 'Gallery', 'gallery', '', 0, '', 1, 16, 'gallery', '', '', NULL, '', NULL, NULL, '2015-07-12 01:28:02', 1, '2015-07-12 01:28:02', 1),
(20, 14, 'Objectifs', 'objectifs', '', 0, '', 1, 17, 'objectifs', '', '', NULL, '', NULL, NULL, '2015-07-12 04:07:05', 1, '2015-07-12 04:07:05', 1),
(21, 8, 'Footer', 'footer', '', 0, '', 1, 18, 'footer', '', '', NULL, '', NULL, NULL, '2015-07-12 23:19:40', 1, '2015-07-12 23:19:40', 1),
(22, 15, 'Copyright', 'copyright', '', 0, '', 1, 19, 'copyright', '', '', NULL, '', NULL, NULL, '2015-07-12 23:20:07', 1, '2015-07-12 23:20:07', 1),
(23, 16, 'Contact info', 'contact_info', '', 0, '', 1, 20, 'contact_info', '', '', NULL, '', NULL, NULL, '2015-07-14 02:37:58', 1, '2015-07-13 01:15:32', 1),
(24, 3, 'Map', 'map', '', 0, '', 1, 21, 'map', '', '', NULL, '', NULL, NULL, '2015-11-04 13:06:44', 1, '2015-07-13 01:19:10', 1),
(25, 16, 'Centre d''information', 'centre-information', '		<div class="custom-sidebar">\r\n			<h3 class="custom-sidebar-title gdl-border-x bottom">\r\n				Centre d''information\r\n			</h3>\r\n			<div class="textwidget">\r\n				<img src="/capwebsite/theme/CapAdmin/img/centre-information-fr.gif" style="width:200px;" alt="">\r\n			</div>\r\n		</div>', 0, '', 1, 24, '', '', '', NULL, '', NULL, NULL, '2015-11-24 18:48:34', 1, '2015-07-18 03:15:10', 1),
(26, 16, 'Partenariat', 'partenariat', '', 0, '', 1, 23, 'partenariat', '', '', NULL, '', NULL, NULL, '2015-11-24 18:48:34', 1, '2015-07-18 03:39:55', 1),
(27, 16, 'Spots Vidéo', 'spots-video', '		<div class="custom-sidebar">\r\n			<h3 class="custom-sidebar-title gdl-border-x bottom">\r\n				Spots Vidéo\r\n			</h3>\r\n			<div class="textwidget">\r\n<iframe width="200" height="200" src="https://www.youtube.com/embed/tDYA3mnKsxE?list=PLdFvlCAa2mGPp7sYIirwRNLhXIiw4Ng8y" frameborder="0" allowfullscreen></iframe>\r\n			</div>\r\n		</div>', 0, '', 1, 22, '', '', '', NULL, '', NULL, NULL, '2015-11-24 18:48:25', 1, '2015-07-18 04:45:34', 1),
(28, 18, 'Menu conseiller', 'menu_user', '', 0, '', 1, 25, 'menu_user', '', '', NULL, '', NULL, NULL, '2015-08-27 08:29:26', 1, '2015-08-27 08:27:18', 1);

-- --------------------------------------------------------

--
-- Structure de la table `web_comments`
--

CREATE TABLE `web_comments` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) NOT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'comment',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `web_contacts`
--

CREATE TABLE `web_contacts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_status` tinyint(1) NOT NULL DEFAULT '1',
  `message_archive` tinyint(1) NOT NULL DEFAULT '1',
  `message_count` int(11) NOT NULL DEFAULT '0',
  `message_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `message_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `message_notify` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_contacts`
--

INSERT INTO `web_contacts` (`id`, `title`, `alias`, `body`, `name`, `position`, `address`, `address2`, `state`, `country`, `postcode`, `phone`, `fax`, `email`, `message_status`, `message_archive`, `message_count`, `message_spam_protection`, `message_captcha`, `message_notify`, `status`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Contact', 'contact', 'Pour tout renseignement complémentaire n''hésitez pas à nous contacter', '', '', '', '', '', '', '', '', '', 'm.elbakai@gmail.com', 1, 1, 5, 0, 0, 1, 1, '2015-07-13 02:02:19', 1, '2009-09-16 01:45:17', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `web_dashboards`
--

CREATE TABLE `web_dashboards` (
  `id` int(20) NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(20) NOT NULL DEFAULT '0',
  `column` int(20) NOT NULL DEFAULT '0',
  `weight` int(20) NOT NULL DEFAULT '0',
  `collapsed` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `web_languages`
--

CREATE TABLE `web_languages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_languages`
--

INSERT INTO `web_languages` (`id`, `title`, `native`, `alias`, `status`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Francais ', 'Francais ', 'fra', 1, 1, '2015-07-08 22:57:30', 1, '2009-11-02 20:52:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `web_links`
--

CREATE TABLE `web_links` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `menu_id` int(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_links`
--

INSERT INTO `web_links` (`id`, `parent_id`, `menu_id`, `title`, `class`, `description`, `link`, `target`, `rel`, `status`, `lft`, `rght`, `visibility_roles`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(5, NULL, 4, 'About', 'about', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:about', '', '', 1, 3, 4, '', '', NULL, NULL, '2009-10-06 23:14:21', NULL, '2009-08-19 12:23:33', NULL),
(6, NULL, 4, 'Contact', 'contact', '', 'plugin:contacts/controller:contacts/action:view/contact', '', '', 1, 5, 6, '', '', NULL, NULL, '2009-10-06 23:14:45', NULL, '2009-08-19 12:34:56', NULL),
(7, NULL, 3, 'Acceuil', 'acceuil', '', '/', '', '', 1, 5, 6, '', '', NULL, NULL, '2015-11-04 03:16:54', 1, '2009-09-06 21:32:54', NULL),
(8, NULL, 3, 'Mission', 'mission', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:missions-des-conseillers-agricole', '', '', 1, 7, 8, '', '', NULL, NULL, '2015-11-04 02:05:24', 1, '2009-09-06 21:34:57', NULL),
(10, NULL, 5, 'Site Admin', 'site-admin', '', '/admin', '', '', 1, 1, 2, '', '', NULL, NULL, '2009-09-12 06:34:09', NULL, '2009-09-12 06:34:09', NULL),
(11, NULL, 5, 'Log out', 'log-out', '', '/plugin:users/controller:users/action:logout', '', '', 1, 7, 8, '["1","2"]', '', NULL, NULL, '2009-09-12 06:35:22', NULL, '2009-09-12 06:34:41', NULL),
(12, NULL, 6, 'Croogo', 'croogo', '', 'http://www.croogo.org', '', '', 1, 3, 4, '', '', NULL, NULL, '2009-09-12 23:31:59', NULL, '2009-09-12 23:31:59', NULL),
(14, NULL, 6, 'CakePHP', 'cakephp', '', 'http://www.cakephp.org', '', '', 1, 1, 2, '', '', NULL, NULL, '2009-10-07 03:25:25', NULL, '2009-09-12 23:38:43', NULL),
(15, NULL, 3, 'Contact', 'contact', '', '/plugin:contacts/controller:contacts/action:view/contact', '', '', 1, 17, 18, '', '', NULL, NULL, '2009-09-16 07:54:13', NULL, '2009-09-16 07:53:33', NULL),
(16, NULL, 5, 'Entries (RSS)', 'entries-rss', '', '/promoted.rss', '', '', 1, 3, 4, '', '', NULL, NULL, '2009-10-27 17:46:22', NULL, '2009-10-27 17:46:22', NULL),
(17, NULL, 5, 'Comments (RSS)', 'comments-rss', '', '/comments.rss', '', '', 1, 5, 6, '', '', NULL, NULL, '2009-10-27 17:46:54', NULL, '2009-10-27 17:46:54', NULL),
(18, NULL, 3, 'Actualité', 'actualite', '', 'plugin:nodes/controller:nodes/action:term/type:node/slug:actualites', '', '', 0, 11, 12, '', '', NULL, NULL, '2016-03-14 22:04:31', 1, '2015-11-04 02:06:40', 1),
(19, NULL, 3, 'FAQ', 'faq', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:faq', '', '', 1, 13, 14, '', '', NULL, NULL, '2015-11-04 02:14:44', 1, '2015-11-04 02:14:44', 1),
(20, NULL, 3, 'Objectifs de la loi n° 62-12', 'objectifs-de-la-loi-n-62-12', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:objectifs-de-la-loi-n-62-12', '', '', 0, 15, 16, '', '', NULL, NULL, '2015-11-17 13:48:18', 1, '2015-11-04 02:16:19', 1),
(21, NULL, 3, 'Composition du dossier', 'composition-du-dossier', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:composition-de-dossier-conseiller-agricole', '', '', 1, 9, 10, '', '', NULL, NULL, '2015-11-17 13:50:27', 1, '2015-11-17 13:50:27', 1);

-- --------------------------------------------------------

--
-- Structure de la table `web_menus`
--

CREATE TABLE `web_menus` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `link_count` int(11) NOT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_menus`
--

INSERT INTO `web_menus` (`id`, `title`, `alias`, `class`, `description`, `status`, `weight`, `link_count`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(3, 'Menu principale', 'main', '', '', 1, NULL, 7, '', NULL, NULL, '2015-11-04 02:03:10', 1, '2009-07-22 01:49:53', NULL),
(4, 'Footer', 'footer', '', '', 1, NULL, 2, '', NULL, NULL, '2009-08-19 12:22:42', NULL, '2009-08-19 12:22:42', NULL),
(5, 'Meta', 'meta', '', '', 1, NULL, 4, '', NULL, NULL, '2009-09-12 06:33:29', NULL, '2009-09-12 06:33:29', NULL),
(6, 'Blogroll', 'blogroll', '', '', 1, NULL, 2, '', NULL, NULL, '2009-09-12 23:30:24', NULL, '2009-09-12 23:30:24', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `web_messages`
--

CREATE TABLE `web_messages` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `message_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_messages`
--

INSERT INTO `web_messages` (`id`, `contact_id`, `name`, `email`, `title`, `body`, `website`, `phone`, `address`, `message_type`, `status`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 1, 'Mustapha ELBAKAI', 'test@test.fr', '0667122249', 'mmm', NULL, NULL, NULL, NULL, 0, '2015-07-13 00:26:18', 1, '2015-07-13 00:26:18', 1),
(2, 1, 'test', 'm.elbakai@gmail.com', 'test', 'l', NULL, NULL, NULL, NULL, 0, '2015-07-13 00:29:04', 1, '2015-07-13 00:29:04', 1),
(3, 1, 'test', 'test@test.fr', '0667122249', 'dfgdfgd', NULL, NULL, NULL, NULL, 0, '2015-07-13 00:36:13', 1, '2015-07-13 00:36:13', 1),
(4, 1, 'test', 'test@test.fr', 'test', 'mn', NULL, NULL, NULL, NULL, 0, '2015-07-13 00:39:21', 1, '2015-07-13 00:39:21', 1),
(5, 1, 'zxzxz', 'zxzxz@asasasa.com', 'zxzxzx', 'zxzxzx', NULL, NULL, NULL, NULL, 0, '2015-11-04 04:43:27', 1, '2015-11-04 04:43:27', 1);

-- --------------------------------------------------------

--
-- Structure de la table `web_meta`
--

CREATE TABLE `web_meta` (
  `id` int(20) NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `web_model_taxonomies`
--

CREATE TABLE `web_model_taxonomies` (
  `id` int(20) NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) NOT NULL DEFAULT '0',
  `taxonomy_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_model_taxonomies`
--

INSERT INTO `web_model_taxonomies` (`id`, `model`, `foreign_key`, `taxonomy_id`) VALUES
(24, 'Node', 25, 4),
(27, 'Node', 10, 6),
(34, 'Node', 34, 5),
(35, 'Node', 35, 5),
(37, 'Node', 36, 5),
(41, 'Node', 15, 4),
(42, 'Node', 14, 4),
(44, 'Node', 16, 4),
(47, 'Node', 37, 5);

-- --------------------------------------------------------

--
-- Structure de la table `web_nodes`
--

CREATE TABLE `web_nodes` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `promote` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'node',
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesize` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_nodes`
--

INSERT INTO `web_nodes` (`id`, `parent_id`, `user_id`, `title`, `slug`, `body`, `excerpt`, `status`, `mime_type`, `comment_status`, `comment_count`, `promote`, `path`, `terms`, `sticky`, `lft`, `rght`, `visibility_roles`, `type`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`, `filename`, `filesize`, `dir`, `video`) VALUES
(10, NULL, 1, 'Le Conseil Agricole', 'le-conseil-agricole', '<p>La nouvelle strat&eacute;gie relative au d&eacute;veloppement du &laquo; Conseil Agricole &raquo; a &eacute;t&eacute; &eacute;labor&eacute;e par le D&eacute;partement de l&#39;Agriculture avec pour objectif l&#39;accompagnement des agriculteurs et le transfert du savoir-faire agricole sur le terrain.</p>\r\n\r\n<p><span style="line-height: 1.6em;">Cette strat&eacute;gie vient pallier les nombreuses d&eacute;ficiences constat&eacute;es dans le dispositif dit de &quot; vulgarisation&quot;, qui p&ecirc;chait par sa faible couverture r&eacute;gionale, ses moyens inadapt&eacute;s, et la faiblesse des ressources humaines et financi&egrave;res qui lui sont consacr&eacute;es.</span></p>\r\n\r\n<p><span style="line-height: 1.6em;">Le lancement de cette strat&eacute;gie sous sa nouvelle appellation de &quot;Conseil Agricole&quot;, marque donc une rupture qui vise la valorisation de ce maillon essentiel et incontournable de la cha&icirc;ne de production en vue de la modernisation des pratiques des agriculteurs. Inspir&eacute;e de plusieurs exp&eacute;riences internationales, la nouvelle strat&eacute;gie de &laquo;Conseil agricole &raquo; s&#39;articule autour de 3 axes :</span></p>\r\n\r\n<p><span style="line-height: 1.6em;">Le d&eacute;veloppement du conseil agricole priv&eacute;, en le dotant d&rsquo;un cadre l&eacute;gal appropri&eacute;, et le subventionnement d&eacute;gressif des prestations de conseil agricoles sous certaines conditions. La pluralit&eacute; des acteurs de Conseil Agricole, ainsi consacr&eacute;e, devra stimuler la performance des Conseillers et &agrave; am&eacute;liorer le service aux agriculteurs, en adaptant l&#39;offre &agrave; leurs besoins sp&eacute;cifiques.</span></p>\r\n\r\n<p><span style="line-height: 1.6em;">La redynamisation des services de l&#39;Etat &agrave; travers la modernisation des structures de proximit&eacute;, la restructuration du r&eacute;seau autour de 16 Centres R&eacute;gionaux, le renforcement et formation des effectifs de conseillers et la mise en place de nouveaux outils modernes de communication et de gestion des connaissances.</span></p>\r\n\r\n<p><span style="line-height: 1.6em;">La responsabilisation des instances repr&eacute;sentatives des agriculteurs (chambres d&rsquo;Agriculture et interprofessions) &agrave; travers un engagement contractuel sur une feuille de route et le renforcement de la coordination globale du dispositif.</span></p>\r\n\r\n<p><span style="line-height: 1.6em;">La nouvelle strat&eacute;gie de Conseil agricole pr&eacute;voit &eacute;galement la mise en place d&rsquo;outils d&rsquo;information et de communication moderne afin de g&eacute;n&eacute;raliser l&rsquo;information agricole. Un centre d&rsquo;appel, des sites Internet, des programmes sp&eacute;cialis&eacute;s sur les m&eacute;dias de masse sont ainsi pr&eacute;vus dans le dispositif mis en place par le D&eacute;partement de l&rsquo;Agriculture.</span></p>\r\n\r\n<p><span style="line-height: 1.6em;">Ainsi, le nouveau dispositif permettra &agrave; l&#39;Etat de continuer &agrave; garantir un service public de proximit&eacute; pour tous les agriculteurs, tout en r&eacute;gulant et en incitant le d&eacute;veloppement du conseil agricole priv&eacute;.</span></p>\r\n', 'La nouvelle stratégie relative au développement du « Conseil Agricole » a été élaborée par le Département de l''Agriculture avec pour objectif l''accompagnement des agriculteurs et le transfert du savoir-faire agricole sur le terrain.', 1, NULL, 2, 0, 0, '/node/le-conseil-agricole', '{"6":"actualites"}', 0, 1, 2, '', 'node', NULL, NULL, '2015-07-14 18:09:18', 1, '2015-07-11 02:20:43', 1, 'conseiller-agricole.jpg', NULL, NULL, NULL),
(14, NULL, 1, 'Conseillers agricoles', 'conseillers-agricoles', '<p><span style="line-height: 1.6em;">Cherchez parmi les conseillers d&#39;agriculture au Maroc les profils qui vous int&eacute;ressent, p</span><span style="line-height: 1.6em;">roposez-leur de vous rencontrer, selon vos objectifs.</span></p>\r\n', 'Rencontrez des conseillers proches de vous', 1, NULL, 2, 0, 0, '/node/conseillers-agricoles', '{"4":"gallery"}', 0, 1, 2, '', 'node', NULL, NULL, '2015-08-02 20:30:04', 1, '2015-07-14 01:12:45', 1, 'SAM_0545.jpg', '', '', NULL),
(15, NULL, 1, 'Conseil technique', 'conseil-technique-gallery', '<p>Consiste &agrave; assister l&rsquo;agriculteur dans le transfert et la maitrise des techniques de production agricole de l&rsquo;amont &agrave; l&rsquo;aval de la fili&egrave;re</p>\r\n', 'Consiste à assister l’agriculteur dans le transfert et la maitrise des techniques de production agricole de l’amont à l’aval de la filière', 1, NULL, 2, 0, 0, '/node/conseil-technique-gallery', '{"4":"gallery"}', 0, 3, 4, '', 'node', NULL, NULL, '2015-08-02 20:28:27', 1, '2015-07-14 01:13:10', 1, 'conseiller-agricole.jpg', '', '', ''),
(16, NULL, 1, 'Information et formation', 'information-et-formation', '<p>Lors de r&eacute;unions techniques, le conseiller agricole informe des groupes d&#39;agriculteurs. Il r&eacute;dige des rapports, transmet les r&eacute;sultats de la recherche agronomique aux producteurs, et les sensibilise aux probl&eacute;matiques de l&#39;environnement, des crises sanitaires et de la fluctuation des prix. Il organise aussi des sessions de formation portant sur divers th&egrave;mes&nbsp;: la comptabilit&eacute; et la gestion, le passage vers une agriculture raisonn&eacute;e, le montage de demandes de subventions, etc.</p>\r\n', 'Information et formation, Lors de réunions techniques, le conseiller agricole informe des groupes d''agriculteurs.', 1, 'image/jpeg', 2, 0, 0, '/node/information-et-formation', '{"4":"gallery"}', 0, 5, 6, '', 'node', NULL, NULL, '2015-08-02 20:45:30', 1, '2015-07-14 01:14:22', 1, 'SAM_0498-0.jpg', '152542', 'uploads/node/images', NULL),
(23, NULL, 1, 'A propos', 'a-propos', '<p>Donec sed odio dui. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Donec ullamcorper nulla non metus auctor fringilla. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Aenean eu leo quam.</p>\r\n\r\n<p>Donec id elit non mi porta gravida at eget metus. Aenean lacinia bibendum nulla sed consectetur. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec ullamcorper nulla non metus auctor fringilla. Donec ullamcorper nulla non metus auctor fringilla. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>\r\n\r\n<blockquote class="center">\r\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla.</p>\r\n</blockquote>\r\n\r\n<p>Pellentesque ornare sem lacinia quam venenatis vestibulum. Aenean lacinia bibendum nulla sed consectetur.Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id elit non mi porta gravida at eget metus. Vestibulum id ligula porta felis euismod semper. Vestibulum id ligula porta felis euismod semper.</p>\r\n\r\n<p>Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>\r\n\r\n<div class="clear">&nbsp;</div>\r\n', 'A propos', 1, NULL, 1, 0, 0, '/a-propos', '', 0, 7, 8, '', 'page', NULL, NULL, '2015-07-14 13:03:23', 1, '2015-07-14 02:13:47', 1, 'onca.jpg', NULL, NULL, NULL),
(24, NULL, 1, 'Support', 'support', '<p>Donec sed odio dui. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Donec ullamcorper nulla non metus auctor fringilla. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Aenean eu leo quam.</p>\r\n\r\n<p>Donec id elit non mi porta gravida at eget metus. Aenean lacinia bibendum nulla sed consectetur. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec ullamcorper nulla non metus auctor fringilla. Donec ullamcorper nulla non metus auctor fringilla. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>\r\n\r\n<blockquote class="center">\r\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla.</p>\r\n</blockquote>\r\n\r\n<p>Pellentesque ornare sem lacinia quam venenatis vestibulum. Aenean lacinia bibendum nulla sed consectetur.Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id elit non mi porta gravida at eget metus. Vestibulum id ligula porta felis euismod semper. Vestibulum id ligula porta felis euismod semper.</p>\r\n\r\n<p>Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>\r\n\r\n<div class="clear">&nbsp;</div>\r\n', 'Support', 1, NULL, 1, 0, 0, '/support', '', 0, 9, 10, '', 'page', NULL, NULL, '2015-07-14 13:08:55', 1, '2015-07-14 02:22:56', 1, 'onca.jpg', NULL, NULL, NULL),
(25, NULL, 1, 'Conseillers agricoles', 'conseillers-agricoles-video', '', 'Conseillers agricoles', 1, NULL, 2, 0, 0, '/node/conseillers-agricoles-video', '{"4":"gallery"}', 0, 11, 12, '', 'node', NULL, NULL, '2015-07-14 14:02:44', 1, '2015-07-14 14:02:44', 1, '', NULL, NULL, 'http://player.vimeo.com/video/132995970'),
(28, NULL, 1, 'Missions des conseillers agricole', 'missions-des-conseillers-agricole', '<div>\r\n<p>Le Minist&egrave;re de l&rsquo;Agriculture et de la P&ecirc;che Maritime a men&eacute; plusieurs chantiers de reformes notamment celui de la r&eacute;gulation de la profession du conseiller agricole.<br />\r\nAinsi, la loi 62-12 relative &agrave; l&rsquo;organisation de la profession de conseiller agricole d&eacute;finie le cadre juridique pour la pratique d&rsquo;un consulting rationnel, op&eacute;rationnel et vecteur d&rsquo;innovations et de changements positifs.<br />\r\nPubli&eacute;e au BO n&deg; 6262 du 7 chaabane 1435 (5 juin 2014), la loi 62-12 stipule que pour exercer la profession de conseiller agricole, il est strictement indispensable d&#39;avoir un agr&eacute;ment d&eacute;livr&eacute; par l&rsquo;autorit&eacute; gouvernementale charg&eacute;e de l&rsquo;agriculture;</p>\r\n\r\n<p style="color: #3A5795;">Les objectifs&nbsp;vis&eacute;s sont de:</p>\r\n\r\n<ul class="list-style-3 colored">\r\n	<li>professionnaliser l&rsquo;activit&eacute; d&rsquo;encadrement et pr&eacute;parer l&rsquo;&eacute;mergence d&rsquo;un corps de conseillers agricoles et de consulting op&eacute;rationnel et efficace;</li>\r\n	<li>encourager l&rsquo;organisation des producteurs et des fili&egrave;res de production et favoriser la prise en charge du d&eacute;veloppement agricole par les acteurs concern&eacute;s;</li>\r\n	<li>d&eacute;velopper les opportunit&eacute;s d&rsquo;emploi pour les laur&eacute;ats des &eacute;tablissements de l&#39;enseignement sup&eacute;rieur et de la formation professionnelle agricole;</li>\r\n	<li>mettre en place un relais de l&rsquo;Etat dans un cadre contractuel, pour l&rsquo;encadrement des producteurs et des organisations professionnelles agricoles.</li>\r\n</ul>\r\n\r\n<div class="prom-box prom-box-info shadow1">\r\n<p>Ainsi, le conseiller agricole a pour mission de prodiguer le conseil et l&#39;encadrement technique et technologique dans les domaines de production agricole, d&#39;utilisation des facteurs de production agricole, d&#39;am&eacute;nagement hydro-agricole et foncier, de gestion technique et &eacute;conomique des exploitations agricoles, de valorisation et de commercialisation des produits agricoles, d&#39;organisation professionnelle et tous autre domaines li&eacute;s &agrave; l&#39;activit&eacute; agricole.</p>\r\n</div>\r\n\r\n<p style="color: #3A5795;">A cet effet, le conseiller agricole doit assurer :</p>\r\n\r\n<ul class="list-style-3 colored">\r\n	<li>Le conseil technique qui porte sur l&#39;encadrement, l&#39;assistance et l&#39;accompagnement des agriculteurs dans le transfert et la maitrise des techniques de production agricole durant les diff&eacute;rentes &eacute;tapes du cycle de production;</li>\r\n	<li>Le conseil d&rsquo;entreprise agricole qui porte sur l&#39;appui et l&#39;accompagnement &agrave; l&#39;installation et le d&eacute;veloppement des d&icirc;tes entreprises &agrave; travers le diagnostic, l&#39;analyse du fonctionnement de l&#39;exploitation agricole et la proposition de mod&egrave;le de d&eacute;veloppement ad&eacute;quat;</li>\r\n	<li>le conseil en mati&egrave;re de projet de d&eacute;veloppement agricole qui porte sur l&#39;animation, l&#39;appui et l&#39;accompagnement des agriculteurs &agrave; moderniser leurs techniques de production, am&eacute;liorer les outils de gestion de leurs exploitations et entreprises agricoles et les aider &agrave; la r&eacute;alisation des projets de d&eacute;veloppement agricole individuel ou collectifs, sur demandes de ces derniers, de l&#39;administration, des organisations professionnelles ou des autres organismes de droit public ou priv&eacute;.</li>\r\n</ul>\r\n</div>\r\n\r\n<div>\r\n<h3>bulletins officiels</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><a href="/capwebsite/theme/CapAdmin/img/bo_ar.pdf"><img class="img-polaroid" src="/capwebsite/theme/CapAdmin/img/bo_ar.png" /> </a></td>\r\n			<td><a href="/capwebsite/theme/CapAdmin/img/bo_fr.pdf"><img class="img-polaroid" src="/capwebsite/theme/CapAdmin/img/bo_fr.png" /> </a></td>\r\n			<td><a href="/capwebsite/theme/CapAdmin/img/bo_fr_1.pdf"><img class="img-polaroid" src="/capwebsite/theme/CapAdmin/img/bo_fr_1.png" /> </a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n', 'Missions des conseillers agricole', 1, 'image/png', 1, 0, 0, '/page/missions-des-conseillers-agricole', '', 0, 13, 14, '', 'page', NULL, NULL, '2015-11-24 18:46:13', 1, '2015-08-02 12:37:15', 1, 'mission.png', '53545', 'uploads/node/images', NULL),
(33, NULL, 1, 'Textes juridiques et objectifs', 'objectifs-de-la-loi-n-62-12', '<div class="shortcode-list arrow">\r\n<ul>\r\n	<li>Professionnaliser l&rsquo;activit&eacute; d&rsquo;encadrement et pr&eacute;parer l&rsquo;&eacute;mergence d&rsquo;un corps de vulgarisation et de consulting op&eacute;rationnel et efficace;</li>\r\n	<li>Encourager l&rsquo;organisation des producteurs et des fili&egrave;res de production et favoriser la prise en charge du d&eacute;veloppement agricole par les acteurs concern&eacute;s;</li>\r\n	<li>D&eacute;velopper les opportunit&eacute;s d&rsquo;emploi pour les laur&eacute;ats des &eacute;tablissements de l&rsquo;enseignement Sup&eacute;rieur et de la formation professionnelle agricole;</li>\r\n	<li>Mettre en place un relais de l&rsquo;Etat dans un cadre contractuel pour l&rsquo;encadrement des producteurs et des OP</li>\r\n</ul>\r\n</div>\r\n', 'Objectifs de la loi n° 62-12', 1, NULL, 1, 0, 0, '/page/objectifs-de-la-loi-n-62-12', '', 0, 15, 16, '', 'page', NULL, NULL, '2015-11-10 13:55:10', 1, '2015-08-02 18:17:01', 1, NULL, '', '', NULL),
(34, NULL, 1, ' Conditions d''éligibilité', 'conditions-deligibilite', '<p>Nul ne peut exercer cette profession, s&rsquo;il n&rsquo;est pas d&eacute;tenteur d&rsquo;un agr&eacute;ment d&eacute;livr&eacute; par l&rsquo;autorit&eacute; gouvernementale charg&eacute;e de l&rsquo;agriculture.</p>\r\n', 'Conditions d''éligibilité', 1, NULL, 2, 0, 0, '/node/conditions-deligibilite', '{"5":"objectifs"}', 0, 17, 18, '', 'node', NULL, NULL, '2015-08-02 18:17:59', 1, '2015-08-02 18:17:59', 1, NULL, '', '', NULL),
(35, NULL, 1, 'Les prestations du Conseiller en agriculture', 'les-prestations-du-conseiller-en-agriculture', '<p>Ce contrat doit contenir obligatoirement les clauses suivantes:</p>\r\n<div class="shortcode-list arrow">\r\n	<ul>\r\n		<li>La durée, la nature et la consistance des prestations du CA;</li>\r\n\r\n		<li>Le calendrier des interventions;</li>\r\n\r\n		<li>Les obligations et les droits des parties contractantes;</li>\r\n\r\n		<li>Les honoraires du CA et les modalités de leur règlement;</li>\r\n	</ul>\r\n</div>', 'Les prestations du Conseiller en agriculture doivent faire l’objet d’un contrat , qui demeure soumis aux dispositions du Dahir des Obligations et Contrats', 1, NULL, 2, 0, 0, '/node/les-prestations-du-conseiller-en-agriculture', '{"5":"objectifs"}', 0, 19, 20, '', 'node', NULL, NULL, '2015-08-02 18:20:25', 1, '2015-08-02 18:20:25', 1, NULL, '', '', NULL),
(36, NULL, 1, 'Conseil technique', 'conseil-technique', 'consiste à assister l’agriculteur dans le transfert et la maitrise des techniques de production agricole de l’amont à l’aval de la filière', 'consiste à assister l’agriculteur dans le transfert et la maitrise des techniques de production agricole de l’amont à l’aval de la filière', 1, NULL, 2, 0, 0, '/node/conseil-technique', '{"5":"objectifs"}', 0, 21, 22, '', 'node', NULL, NULL, '2015-08-02 18:22:35', 1, '2015-08-02 18:22:35', 1, NULL, '', '', NULL),
(37, NULL, 1, 'Conditions d’exercice de la profession de conseiller agricole', 'conditions-dexercice-de-la-profession-de-conseiller-agricole', '<div class="shortcode-list arrow">\r\n<ul>\r\n	<li>Les personnes physiques ou morales de droit priv&eacute;, qui remplissent les conditions pr&eacute;vues par la loi;</li>\r\n	<li>L&rsquo;agr&eacute;ment est d&eacute;livr&eacute; pour une p&eacute;riode de 5 ans renouvelables;</li>\r\n	<li>L&rsquo;exercice est subordonn&eacute; &agrave; l&rsquo;obtention d&rsquo;un agr&eacute;ment d&eacute;livr&eacute;e par l&rsquo;autorit&eacute; gouvernementale charg&eacute;e de l&rsquo;Agriculture apr&egrave;s avis de la Commission Nationale de Conseil Agricole;</li>\r\n	<li>Les conditions d&rsquo;octroi, de retrait et de renouvellement de cet agr&eacute;ment sont fix&eacute;es par voie r&eacute;glementaire;</li>\r\n</ul>\r\n</div>\r\n', 'Conditions d’exercice de la profession de conseiller agricole', 1, NULL, 2, 0, 0, '/node/conditions-dexercice-de-la-profession-de-conseiller-agricole', '{"5":"objectifs"}', 0, 23, 24, '["1","2","3"]', 'node', NULL, NULL, '2015-11-04 04:30:22', 1, '2015-08-02 19:31:20', 1, NULL, '', '', NULL),
(40, NULL, 1, 'FAQ', 'faq', '<h5>Q : Quelles sont les conditions d&#39;&eacute;ligibilit&eacute; pour exercer le m&eacute;tier de conseiller agricole ?</h5>\r\n\r\n<ul>\r\n	<li>Nul ne peut exercer cette profession, s&rsquo;il n&rsquo;est pas d&eacute;tenteur d&rsquo;un agr&eacute;ment d&eacute;livr&eacute; par l&rsquo;autorit&eacute; gouvernementale charg&eacute;e de l&rsquo;agriculture.</li>\r\n</ul>\r\n\r\n<h5>Q: Quelles sont les conditions d&rsquo;exercice de la profession de conseiller agricole ?</h5>\r\n\r\n<ul>\r\n	<li>Les personnes physiques ou morales de droit priv&eacute;, qui remplissent les conditions pr&eacute;vues par la loi;</li>\r\n	<li>L&#39;agr&eacute;ment est d&eacute;livr&eacute; pour une p&eacute;riode de 5 ans renouvelables;</li>\r\n	<li>L&#39;exercice est subordonn&eacute; &agrave; l&rsquo;obtention d&rsquo;un agr&eacute;ment d&eacute;livr&eacute;e par l&rsquo;autorit&eacute; gouvernementale charg&eacute;e de l&rsquo;Agriculture apr&egrave;s avis de la Commission Nationale de Conseil Agricole;</li>\r\n	<li>Les conditions d&rsquo;octroi, de retrait et de renouvellement de cet agr&eacute;ment sont fix&eacute;es par voie r&eacute;glementaire.</li>\r\n</ul>\r\n\r\n<h5>Q : Quels sont les domaines d&#39;intervention du conseiller agricole ?</h5>\r\n\r\n<ul>\r\n	<li><strong>Conseil technique :</strong> consiste &agrave; assister l&rsquo;agriculteur dans le transfert et la maitrise des techniques de production agricole de l&rsquo;amont &agrave; l&rsquo;aval de la fili&egrave;re;</li>\r\n	<li><strong>Conseil dans le domaine de l&#39;entreprise agricole&nbsp;:</strong> consiste en l&rsquo;appui et l&#39;accompagnement &agrave; la mise en place et le d&eacute;veloppement de ces entreprises, en se basant sur le diagnostic et l&#39;analyse de la conduite de l&#39;exploitation agricole et la proposition d&#39;un mod&egrave;le de d&eacute;veloppement appropri&eacute;.</li>\r\n	<li><strong>Conseil dans le domaine de projet de d&eacute;veloppement agricole&nbsp;:</strong> consiste en l&#39;accompagnement des agriculteurs &agrave; moderniser leurs techniques de production, &agrave; am&eacute;liorer les m&eacute;thodes de gestion des exploitations et entreprises agricoles et les aider au montage de projets de d&eacute;veloppement agricole.</li>\r\n</ul>\r\n\r\n<h5>Q : Quelle sera la relation du CAP avec l&#39;agriculteur ?</h5>\r\n\r\n<ul>\r\n	<li>Les prestations du Conseiller en agriculture doivent faire l&rsquo;objet d&rsquo;un contrat, qui demeure soumis aux dispositions du Dahir des Obligations et Contrats Ce contrat doit contenir obligatoirement les clauses suivantes:\r\n	<ul>\r\n		<li>La dur&eacute;e, la nature et la consistance des prestations du CA</li>\r\n		<li>Le calendrier des interventions</li>\r\n		<li>Les obligations et les droits des parties contractantes</li>\r\n		<li>Les honoraires du CA et les modalit&eacute;s de leur r&egrave;glement.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h5>Q : Ya t-ils des obligations des deux parties :</h5>\r\n\r\n<h4>OUI</h4>\r\n\r\n<ul>\r\n	<li><strong>Le Conseiller Agricole:</strong>\r\n\r\n	<ul>\r\n		<li>Il doit inscrire ses observations et recommandations dans un registre tenu sur les lieux de l&rsquo;exploitation ou de l&rsquo;entreprise agricole concern&eacute;e.</li>\r\n		<li>Il est tenu d&rsquo;informer l&rsquo;administration des maladies, parasites ou fl&eacute;aux constat&eacute;es lors de l&rsquo;exercice de sa mission</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>L&#39;agriculteur:</strong>\r\n	<ul>\r\n		<li>Il doit inscrire au m&ecirc;me registre les travaux effectu&eacute;s par lui en application des recommandations du conseiller agricole.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '', 1, NULL, 1, 0, 0, '/page/faq', '', 0, 25, 26, '', 'page', NULL, NULL, '2015-11-24 04:40:18', 1, '2015-11-04 02:10:51', 1, NULL, '', '', NULL),
(41, NULL, 1, 'Accueil', 'accueil', '<h1 class="mainTitle">Bienvenue sur l&#39;application informatique</h1>\r\n\r\n<p>Cette application est con&ccedil;ue de mani&egrave;re &agrave; constituer un guide pour tous ceux et celles qui d&eacute;sirent exercer le m&eacute;tier de conseiller agricole priv&eacute;. :</p>\r\n\r\n<p>Notre but est de g&eacute;rer de fa&ccedil;on &eacute;lectronique les flux de dossiers de demandes d&#39;agr&eacute;ments dont les objectifs sont :</p>\r\n\r\n<ul class="header-list">\r\n	<li><i class="fa fa-gears">&nbsp;</i> L&#39;automatisation des inscriptions;</li>\r\n	<li><i class="fa fa-retweet">&nbsp;</i> La Diminution des&nbsp;&eacute;changes administratifs avec les Conseillers agricoles et avec membres de la CNCA.</li>\r\n	<li><i class="fa  fa-thumbs-o-up">&nbsp;</i> L&#39;am&eacute;lioration de la&nbsp;qualit&eacute; et de la fiabilit&eacute;</li>\r\n</ul>\r\n\r\n<div class="prom-box prom-box-default shadow1">\r\n<p>Que vous &ecirc;tes personne morale ou physique, ing&eacute;nieur ou &eacute;quivalent, technicien ou &eacute;quivalent que vous remplissez les conditions d&#39;exercice du m&eacute;tier de CAP , nous esp&eacute;rons que cette application sera pour vous un outil utile. Si vous avez d&eacute;posez votre dossier, cette application vous permet de suivre l&#39;&eacute;volution de votre dossier, jusqu&#39;&agrave; recevoir votre agr&eacute;ment.<br />\r\nVous pourrez &eacute;galement trouver des informations et des actualit&eacute;s sur le CAP pour vous orienter..</p>\r\n</div>\r\n\r\n<h4 class="alert-heading margin-bottom-10">Recommandations!</h4>\r\n\r\n<div class="shortcode-list">\r\n<ul style="margin-left: 0px;">\r\n	<li>Documents ou photocopies manquants = dossier incomplet.</li>\r\n	<li>Tous les documents sont &agrave; pr&eacute;senter en originaux ou en copie certifi&eacute;e conforme.</li>\r\n	<li>Tous les documents doivent &ecirc;tre en langue Arabe ou en langue Fran&ccedil;aise.</li>\r\n</ul>\r\n</div>\r\n', '', 1, NULL, 1, 0, 0, '/page/accueil', '', 0, 27, 28, '["1","2","3"]', 'page', NULL, NULL, '2015-11-24 02:53:08', 1, '2015-11-04 02:24:47', 1, NULL, '', '', NULL),
(42, NULL, 1, 'Composition du dossier', 'composition-de-dossier-conseiller-agricole', '<p>Dossier de demande d&rsquo;agr&eacute;ment:</p>\r\n\r\n<h4><i class="fa fa-user">&nbsp;</i>Personne physique</h4>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li><i class="ti-check">&nbsp;</i> Demande &eacute;crite</li>\r\n				<li><i class="ti-check">&nbsp;</i> Copie CNI &eacute;lectronique</li>\r\n				<li><i class="ti-check">&nbsp;</i> Extrait casier judiciaire ou fiche anthropom&eacute;trique</li>\r\n				<li><i class="ti-check">&nbsp;</i> curriculum vit&aelig;</li>\r\n				<li><i class="ti-check">&nbsp;</i> D&eacute;claration sur l&rsquo;honneur</li>\r\n				<li><i class="ti-check">&nbsp;</i> Copie dipl&ocirc;me ou certificat</li>\r\n			</ul>\r\n			</td>\r\n			<td><img alt="" src="/capwebsite/theme/CapAdmin/img/human.png" title="Missions des conseillers agricole" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h4><i class="fa fa-bank">&nbsp;</i>Personne morale</h4>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li><strong>Pi&egrave;ces relatives &agrave; la soci&eacute;t&eacute;</strong>\r\n\r\n				<ul>\r\n					<li><i class="ti-check">&nbsp;</i> Demande &eacute;crite</li>\r\n					<li><i class="ti-check">&nbsp;</i> Copie de d&eacute;l&eacute;gation de pouvoir</li>\r\n					<li><i class="ti-check">&nbsp;</i> D&eacute;claration sur l&rsquo;honneur</li>\r\n					<li><i class="ti-check">&nbsp;</i> Copie CNSS</li>\r\n					<li><i class="ti-check">&nbsp;</i> Inscription registre de commerce</li>\r\n					<li><i class="ti-check">&nbsp;</i> Liste des CV des personnes charg&eacute;es de CA</li>\r\n				</ul>\r\n				</li>\r\n				<li><strong>Pi&egrave;ces relatives au/aux dirigeants</strong>\r\n				<ul>\r\n					<li><i class="ti-check">&nbsp;</i> Copie CNI</li>\r\n					<li><i class="ti-check">&nbsp;</i> Extrait casier judiciaire ou fiche anthropom&eacute;trique</li>\r\n					<li><i class="ti-check">&nbsp;</i> Extrait casier judiciaire ou fiche anthropom&eacute;trique</li>\r\n				</ul>\r\n				</li>\r\n			</ul>\r\n			</td>\r\n			<td></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 1, NULL, 1, 0, 0, '/page/composition-de-dossier-conseiller-agricole', '', 0, 29, 30, '', 'page', NULL, NULL, '2015-11-24 04:17:23', 1, '2015-11-10 13:38:33', 1, NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `web_regions`
--

CREATE TABLE `web_regions` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `block_count` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_regions`
--

INSERT INTO `web_regions` (`id`, `title`, `alias`, `description`, `block_count`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(3, 'none', 'none', '', 1, '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(4, 'right', 'right', '', 0, '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(6, 'left', 'left', '', 0, '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(7, 'header', 'header', '', 1, '2015-07-07 02:14:01', NULL, '2015-07-12 00:43:58', 1),
(8, 'footer', 'footer', '', 1, '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(9, 'menu', 'menu', '', 1, '2015-07-07 02:14:01', NULL, '2015-07-12 00:50:12', 1),
(10, 'slider', 'slider', '', 1, '2015-07-07 02:14:01', NULL, '2015-07-12 00:51:31', 1),
(11, 'user_account', 'user_account', '', 3, '2015-07-07 02:14:01', NULL, '2015-07-12 01:01:51', 1),
(12, 'info_block', 'info_block', '', 3, '2015-07-07 02:14:01', NULL, '2015-07-12 01:18:10', 1),
(13, 'gallery', 'gallery', '', 1, '2015-07-07 02:14:01', NULL, '2015-07-12 01:27:33', 1),
(14, 'objectifs', 'objectifs', '', 1, '2015-07-07 02:14:01', NULL, '2015-07-12 04:06:40', 1),
(15, 'copyright', 'copyright', '', 1, '2015-07-07 02:14:01', NULL, '2015-07-12 23:19:17', 1),
(16, 'right_side', 'right_side', '', 4, '2015-07-07 02:14:01', NULL, '2015-07-12 23:31:49', 1),
(17, 'region9', 'region9', '', 0, '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(18, 'Menu con', 'menu_user', NULL, 1, '2015-08-27 08:27:32', 1, '2015-08-27 08:27:32', 1);

-- --------------------------------------------------------

--
-- Structure de la table `web_roles`
--

CREATE TABLE `web_roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_roles`
--

INSERT INTO `web_roles` (`id`, `title`, `alias`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(1, 'Admin', 'admin', '2009-04-05 00:10:34', NULL, '2009-04-05 00:10:34', NULL),
(2, 'Registered', 'registered', '2009-04-05 00:10:50', NULL, '2009-04-06 05:20:38', NULL),
(3, 'Public', 'public', '2009-04-05 00:12:38', NULL, '2009-04-07 01:41:45', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `web_roles_users`
--

CREATE TABLE `web_roles_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `granted_by` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `web_schema_migrations`
--

CREATE TABLE `web_schema_migrations` (
  `id` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_schema_migrations`
--

INSERT INTO `web_schema_migrations` (`id`, `class`, `type`, `created`) VALUES
(1, 'InitMigrations', 'Migrations', '2015-07-07 02:13:43'),
(2, 'ConvertVersionToClassNames', 'Migrations', '2015-07-07 02:13:44'),
(3, 'IncreaseClassNameLength', 'Migrations', '2015-07-07 02:13:44'),
(4, 'FirstMigrationSettings', 'Settings', '2015-07-07 02:13:44'),
(5, 'SettingsTrackableFields', 'Settings', '2015-07-07 02:13:45'),
(6, 'AddedAssetTimestampSetting', 'Settings', '2015-07-07 02:13:45'),
(7, 'ExposeSiteThemeAndLocaleAndHomeUrl', 'Settings', '2015-07-07 02:13:45'),
(8, 'FirstMigrationAcl', 'Acl', '2015-07-07 02:13:46'),
(9, 'FirstMigrationBlocks', 'Blocks', '2015-07-07 02:13:46'),
(10, 'BlocksTrackableFields', 'Blocks', '2015-07-07 02:13:47'),
(11, 'BlocksPublishingFields', 'Blocks', '2015-07-07 02:13:48'),
(12, 'FirstMigrationComments', 'Comments', '2015-07-07 02:13:48'),
(13, 'CommentsTrackableFields', 'Comments', '2015-07-07 02:13:48'),
(14, 'AddCommentsForeignKeys', 'Comments', '2015-07-07 02:13:49'),
(15, 'FirstMigrationContacts', 'Contacts', '2015-07-07 02:13:49'),
(16, 'ContactsTrackableFields', 'Contacts', '2015-07-07 02:13:50'),
(17, 'FirstMigrationMenus', 'Menus', '2015-07-07 02:13:50'),
(18, 'MenusTrackableFields', 'Menus', '2015-07-07 02:13:51'),
(19, 'MenusPublishingFields', 'Menus', '2015-07-07 02:13:52'),
(20, 'FirstMigrationMeta', 'Meta', '2015-07-07 02:13:53'),
(21, 'MetaTrackableFields', 'Meta', '2015-07-07 02:13:53'),
(22, 'FirstMigrationNodes', 'Nodes', '2015-07-07 02:13:54'),
(23, 'NodesTrackableFields', 'Nodes', '2015-07-07 02:13:55'),
(24, 'NodesPublishingFields', 'Nodes', '2015-07-07 02:13:55'),
(25, 'FirstMigrationTaxonomy', 'Taxonomy', '2015-07-07 02:13:56'),
(26, 'TaxonomyTrackableFields', 'Taxonomy', '2015-07-07 02:13:57'),
(27, 'RenameNodesTaxonomy', 'Taxonomy', '2015-07-07 02:13:57'),
(28, 'AddModelTaxonomyForeignKey', 'Taxonomy', '2015-07-07 02:13:57'),
(29, 'AddWysisygEnableField', 'Taxonomy', '2015-07-07 02:13:57'),
(30, 'FirstMigrationUsers', 'Users', '2015-07-07 02:13:58'),
(31, 'UsersTrackableFields', 'Users', '2015-07-07 02:13:59'),
(32, 'UsersEnlargeTimezone', 'Users', '2015-07-07 02:13:59'),
(33, 'FirstMigrationDashboard', 'Dashboards', '2015-07-07 02:13:59');

-- --------------------------------------------------------

--
-- Structure de la table `web_settings`
--

CREATE TABLE `web_settings` (
  `id` int(20) NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `input_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_settings`
--

INSERT INTO `web_settings` (`id`, `key`, `value`, `title`, `description`, `input_type`, `editable`, `weight`, `params`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(6, 'Site.title', 'Ministère de l’Agriculture et de la Pêche maritime', '', '', '', 1, 1, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(7, 'Site.tagline', 'Ministère de l’Agriculture et de la Pêche maritime, devenir conseiller agricole agrée', '', '', 'textarea', 1, 2, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(8, 'Site.email', 'you@your-site.com', '', '', '', 1, 3, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(9, 'Site.status', '1', '', '', 'checkbox', 1, 6, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(12, 'Meta.robots', 'index, follow', '', '', '', 1, 6, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(13, 'Meta.keywords', 'croogo, Croogo', '', '', 'textarea', 1, 7, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(14, 'Meta.description', 'Croogo - A CakePHP powered Content Management System', '', '', 'textarea', 1, 8, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(15, 'Meta.generator', 'Croogo - Content Management System', '', '', '', 0, 9, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(16, 'Service.akismet_key', 'your-key', '', '', '', 1, 11, '', '2015-07-07 02:14:01', NULL, '2015-11-04 13:37:44', 1),
(17, 'Service.recaptcha_public_key', '6Ldlrg4TAAAAAJhW7Iu_FrbruV8ACT6zDfiMXHkU', '', '', '', 1, 12, '', '2015-07-07 02:14:01', NULL, '2015-11-04 13:37:44', 1),
(18, 'Service.recaptcha_private_key', '6Ldlrg4TAAAAAK-w5XLajhMqXGuJseav3Py5hjbA', '', '', '', 1, 13, '', '2015-07-07 02:14:01', NULL, '2015-11-04 13:37:44', 1),
(19, 'Service.akismet_url', 'http://your-blog.com', '', '', '', 1, 10, '', '2015-07-07 02:14:01', NULL, '2015-11-04 13:37:44', 1),
(20, 'Site.theme', 'CapAdmin', '', '', '', 0, 14, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:46:04', 1),
(21, 'Site.feed_url', '', '', '', '', 0, 15, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(22, 'Reading.nodes_per_page', '5', '', '', '', 1, 16, '', '2015-07-07 02:14:01', NULL, '2015-07-14 02:45:58', 1),
(23, 'Writing.wysiwyg', '1', 'Enable WYSIWYG editor', '', 'checkbox', 1, 17, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(24, 'Comment.level', '0', '', 'levels deep (threaded comments)', '', 1, 18, '', '2015-07-07 02:14:01', NULL, '2015-07-14 11:03:04', 1),
(25, 'Comment.feed_limit', '10', '', 'number of comments to show in feed', '', 1, 19, '', '2015-07-07 02:14:01', NULL, '2015-07-14 11:03:04', 1),
(26, 'Site.locale', 'fra', '', '', 'text', 1, 20, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(27, 'Reading.date_time_format', 'D, M d Y H:i', '', '', '', 1, 21, '', '2015-07-07 02:14:01', NULL, '2015-07-14 02:45:58', 1),
(28, 'Comment.date_time_format', 'd F Y à H:i:s', '', '', '', 1, 22, '', '2015-07-07 02:14:01', NULL, '2015-07-14 11:03:04', 1),
(29, 'Site.timezone', 'UTC', '', 'Provide a valid timezone identifier as specified in https://php.net/manual/en/timezones.php', '', 1, 4, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(32, 'Hook.bootstraps', 'Settings,Comments,Contacts,Nodes,Meta,Menus,Users,Blocks,Taxonomy,FileManager,Wysiwyg,Ckeditor,ProfileManagment,CapMaroc,ClearCaches,AddressesManagement,UserManagment,RequestManagment,CompanyManagment,MessageManagment,MeioUpload', '', '', '', 0, 23, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', 1),
(33, 'Comment.email_notification', '0', 'Enable email notification', '', 'checkbox', 1, 24, '', '2015-07-07 02:14:01', NULL, '2015-07-14 11:03:04', 1),
(34, 'Access Control.multiRole', '0', 'Enable Multiple Roles', '', 'checkbox', 1, 25, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(35, 'Access Control.rowLevel', '0', 'Row Level Access Control', '', 'checkbox', 1, 26, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(36, 'Access Control.autoLoginDuration', '+1 week', '"Remember Me" Duration', 'Eg: +1 day, +1 week. Leave empty to disable.', 'text', 1, 27, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(37, 'Access Control.models', '', 'Models with Row Level Acl', 'Select models to activate Row Level Access Control on', 'multiple', 1, 26, 'multiple=checkbox\noptions={"Nodes.Node": "Node", "Blocks.Block": "Block", "Menus.Menu": "Menu", "Menus.Link": "Link"}', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(38, 'Site.ipWhitelist', '127.0.0.1', 'Whitelisted IP Addresses', 'Separate multiple IP addresses with comma', 'text', 1, 27, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(39, 'Site.asset_timestamp', '0', 'Asset timestamp', 'Appends a timestamp which is last modified time of the particular file at the end of asset files URLs (CSS, JavaScript, Image). Useful to prevent visitors to visit the site with an outdated version of these files in their browser cache.', 'radio', 1, 28, 'options={"0": "Disabled", "1": "Enabled in debug mode only", "force": "Always enabled"}', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(40, 'Site.admin_theme', '', 'Administration Theme', '', 'text', 1, 29, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(41, 'Site.home_url', '', 'Home Url', 'Default action for home page in link string format.', 'text', 1, 30, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(42, 'Croogo.installed', '1', '', '', '', 0, 31, '', '2015-07-07 02:15:17', NULL, '2015-07-07 02:15:17', NULL),
(43, 'Croogo.version', '2.2.2', '', '', '', 0, 32, '', '2015-07-07 02:48:17', 1, '2015-07-07 02:48:17', 1),
(44, 'Site.direction', 'ltr', 'Orientation du site (LTR ou RTL)', '', 'radio', 1, 33, 'options={"rtl": "RTL", "ltr": "LTR"}', '2015-07-07 03:14:49', 1, '2015-09-29 01:45:15', 1),
(45, 'Site.is_responsive', '1', 'Responsive design', '', 'checkbox', 1, 34, '', '2015-07-07 03:51:07', 1, '2015-09-29 01:45:15', 1),
(46, 'Social.facebook', 'https://www.facebook.com/1038118219553213', 'Page facebook', '', 'text', 1, 35, '', '2015-07-13 00:47:14', 1, '2015-08-02 14:07:02', 1),
(47, 'Social.twitter', '#', 'Compte sur Twitter', '', 'text', 1, 36, '', '2015-07-13 00:48:01', 1, '2015-07-13 00:48:01', 1),
(48, 'Social.youtube', 'https://www.youtube.com/channel/UCcNkcTBiwetIyWO50zjjNPg', 'Chaine youtube', '', 'text', 1, 37, '', '2015-07-13 00:48:31', 1, '2015-08-02 13:59:27', 1),
(49, 'Social.vimeo', '#', 'Chaine sur vimeo', '', 'text', 1, 38, '', '2015-07-13 00:48:58', 1, '2015-07-13 00:48:58', 1),
(50, 'Social.rss', '#', 'RSS', '', 'text', 1, 39, '', '2015-07-13 00:49:47', 1, '2015-07-14 13:08:04', 1),
(51, 'Social.skype', '#', 'Skype', '', 'text', 1, 40, '', '2015-07-13 00:50:12', 1, '2015-07-13 00:50:12', 1),
(52, 'Social.flickr', '#', 'Espace flickr', '', 'text', 1, 41, '', '2015-07-13 00:50:48', 1, '2015-07-14 13:08:11', 1),
(53, 'Social.pinterest', '#', 'Compte sur pinterest', '', 'text', 1, 42, '', '2015-07-13 00:51:20', 1, '2015-07-13 00:51:20', 1),
(54, 'Social.linkedin', '#', 'Compte sur linkedin', '', 'text', 1, 43, '', '2015-07-13 01:00:25', 1, '2015-07-13 01:00:25', 1),
(55, 'Address.email', 'contact@cap.ma', 'Adresse email', '', 'text', 1, 44, '', '2015-07-13 01:10:33', 1, '2015-11-24 04:53:02', 1),
(56, 'Address.address', 'Station D''bagh-Avenu Hassan II', 'Adresse', '', 'text', 1, 45, '', '2015-07-13 01:10:58', 1, '2015-11-24 04:53:02', 1),
(57, 'Address.phone', '0530 10 32 29 / 0530 10 31 79', 'Telephone', '', 'text', 1, 46, '', '2015-07-13 01:11:28', 1, '2015-11-24 04:53:02', 1),
(58, 'Address.fax', '05 37 69 94 41', 'Fax', '', 'text', 1, 47, '', '2015-07-13 01:11:48', 1, '2015-11-24 04:53:02', 1),
(59, 'Address.ville', 'Rabat', 'Ville', '', 'text', 1, 48, '', '2015-07-13 01:12:17', 1, '2015-11-24 04:53:02', 1),
(60, 'Social.google_plus', 'https://plus.google.com/u/0/b/101654365732914197245/101654365732914197245/', 'Google plus', '', 'text', 1, 49, '', '2015-07-14 03:27:18', 1, '2015-08-02 14:07:44', 1),
(61, 'Service.register_recaptcha', '0', 'Enable recaptcha for user register', '', 'checkbox', 1, 50, '', '2015-07-18 09:55:49', 1, '2015-11-04 13:37:44', 1),
(62, 'Access Control.multiColumn', '1', 'Enable Multiple Column', '', 'checkbox', 1, 25, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `web_taxonomies`
--

CREATE TABLE `web_taxonomies` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `term_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_taxonomies`
--

INSERT INTO `web_taxonomies` (`id`, `parent_id`, `term_id`, `vocabulary_id`, `lft`, `rght`) VALUES
(3, NULL, 3, 2, 1, 2),
(4, NULL, 4, 1, 1, 2),
(5, NULL, 5, 1, 3, 4),
(6, NULL, 6, 1, 5, 6),
(7, NULL, 7, 1, 7, 8);

-- --------------------------------------------------------

--
-- Structure de la table `web_terms`
--

CREATE TABLE `web_terms` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_terms`
--

INSERT INTO `web_terms` (`id`, `title`, `slug`, `description`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(3, 'mytag', 'mytag', '', '2009-08-26 14:42:43', NULL, '2009-08-26 14:42:43', NULL),
(4, 'Gallery', 'gallery', '', '2015-07-12 01:30:30', 1, '2015-07-12 01:30:30', 1),
(5, 'Objectifs des lois', 'objectifs', '', '2015-07-12 04:08:22', 1, '2015-07-12 04:08:22', 1),
(6, 'Actualités', 'actualites', '', '2015-07-14 18:04:32', 1, '2015-07-13 02:21:34', 1),
(7, 'FAQ', 'faq', '', '2015-07-14 00:35:41', 1, '2015-07-14 00:35:41', 1);

-- --------------------------------------------------------

--
-- Structure de la table `web_types`
--

CREATE TABLE `web_types` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `format_show_author` tinyint(1) NOT NULL DEFAULT '1',
  `format_show_date` tinyint(1) NOT NULL DEFAULT '1',
  `format_use_wysiwyg` tinyint(1) NOT NULL DEFAULT '1',
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_approve` tinyint(1) NOT NULL DEFAULT '1',
  `comment_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `comment_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_types`
--

INSERT INTO `web_types` (`id`, `title`, `alias`, `description`, `format_show_author`, `format_show_date`, `format_use_wysiwyg`, `comment_status`, `comment_approve`, `comment_spam_protection`, `comment_captcha`, `params`, `plugin`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Page', 'page', 'A page is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a page entry does not allow visitor comments.', 0, 0, 1, 0, 0, 0, 0, '', NULL, '2015-07-14 04:56:04', 1, '2009-09-02 18:06:27', NULL),
(4, 'Article', 'node', 'Default content type.', 0, 1, 1, 2, 0, 0, 0, '', NULL, '2015-11-04 02:08:58', 1, '2009-09-05 23:51:56', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `web_types_vocabularies`
--

CREATE TABLE `web_types_vocabularies` (
  `id` int(10) NOT NULL,
  `type_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `weight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_types_vocabularies`
--

INSERT INTO `web_types_vocabularies` (`id`, `type_id`, `vocabulary_id`, `weight`) VALUES
(40, 4, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `web_users`
--

CREATE TABLE `web_users` (
  `id` int(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `first_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `timezone` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_users`
--

INSERT INTO `web_users` (`id`, `role_id`, `service_id`, `first_name`, `last_name`, `username`, `password`, `name`, `email`, `phone`, `website`, `activation_key`, `image`, `bio`, `status`, `gender`, `updated`, `updated_by`, `created`, `timezone`, `created_by`) VALUES
(1, 1, 0, 'khalid', 'Dalily', 'admin', 'a8a4f3978c9112326d9618cf05fa9cc3c387d736', 'admin', 'k.dalily@gmail.com', NULL, 'http://www.manarsystem.com/', '72cf1809cbb947a0270bc0ec346aedb2', NULL, NULL, 1, '', '2015-09-04 03:36:49', 1, '2015-07-07 02:15:16', 'Africa/Casablanca', NULL),
(46, 2, 0, 'Driss', 'Smaili', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'smailidriss@yahoo.fr', NULL, NULL, '8de0e59732d1d22698f30c2372347bd0', NULL, NULL, 1, 'male', '2015-12-28 11:04:01', NULL, '2015-12-28 11:04:01', '0', NULL),
(48, 2, 0, 'Naziha', 'merroual', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'merroual@hotmail.fr', NULL, NULL, '411cb2aefd08aa9bb342bab6b9b7124a', NULL, NULL, 1, 'female', '2015-12-30 11:45:37', NULL, '2015-12-30 11:45:37', '0', NULL),
(49, 2, 0, 'Abderrahmane', 'Hajir', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hajirabderrahman@yahoo.fr', NULL, NULL, 'b24fcb24bb0430f28979b0dab7cfd5ce', NULL, NULL, 1, 'male', '2015-12-30 12:04:50', NULL, '2015-12-30 12:04:50', '0', NULL),
(50, 2, 0, 'El Mostafa', 'Aissaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'aissaoui_002@hotmail.fr', NULL, NULL, 'd535b904b9dd4687bb0310cfffe600f1', NULL, NULL, 1, 'male', '2015-12-30 16:52:22', NULL, '2015-12-30 16:52:22', '0', NULL),
(51, 2, 0, 'Mohammed', 'Bouazzaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bouazzaoui.agriconseil@gmail.com', NULL, NULL, '78adc71f836a46bd517a613ad2cc1128', NULL, NULL, 1, 'male', '2015-12-30 16:53:34', NULL, '2015-12-30 16:53:34', '0', NULL),
(52, 2, 0, 'Nisrine ', 'Ibouchna', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'IBOUCHNA.Nisrine@gmail.com', NULL, NULL, '27d899183038cc08a9bec6f8f13b8297', NULL, NULL, 1, 'female', '2015-12-30 16:54:43', NULL, '2015-12-30 16:54:43', '0', NULL),
(53, 2, 0, 'Moumane', 'Cherki', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ch.moumane@hotmail.com', NULL, NULL, '833bc6fe13d65bc5c9114ac5a640dd7d', NULL, NULL, 1, 'male', '2015-12-30 16:55:21', NULL, '2015-12-30 16:55:21', '0', NULL),
(54, 2, 0, 'Mohamed', 'Laamrani', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'laamrani.mohamed.1@gmail.com', NULL, NULL, '7b3b242ce487a678a1fda0efd79ad236', NULL, NULL, 1, 'male', '2015-12-30 17:04:33', NULL, '2015-12-30 17:04:33', '0', NULL),
(55, 2, 0, 'Kacem', 'Rami', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'kacem-rami@hotmail.fr', NULL, NULL, '4d1cd453aa88ca02a5a0438bc3a6be02', NULL, NULL, 1, 'male', '2015-12-30 17:05:35', NULL, '2015-12-30 17:05:35', '0', NULL),
(56, 2, 0, 'Abdelhamid', 'Mzibra', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mzibraabdelhamid@yahoo.fr', NULL, NULL, '6c2ea9d83fced30424c88138de807754', NULL, NULL, 1, 'male', '2015-12-30 17:06:26', NULL, '2015-12-30 17:06:26', '0', NULL),
(57, 2, 0, 'Abderrahmane', 'Rabbazi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'rabbazi83@gmail.com', NULL, NULL, '585b8d7b8ded4738412525e7529e5ae7', NULL, NULL, 1, 'male', '2015-12-30 17:07:13', NULL, '2015-12-30 17:07:13', '0', NULL),
(58, 2, 0, 'El Hassane', 'Elallaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elhassan41@gmail.com', NULL, NULL, '821b3a01e236a704cb4cd763046fcacd', NULL, NULL, 1, 'male', '2015-12-31 11:45:12', NULL, '2015-12-30 17:14:13', '0', NULL),
(59, 2, 0, 'Mohamed', 'Ghilani', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mohamed_ghilani@yahoo.fr', NULL, NULL, '2189e68c201e656cdb3ca598b4b42602', NULL, NULL, 1, 'male', '2015-12-30 17:15:45', NULL, '2015-12-30 17:15:45', '0', NULL),
(60, 2, 0, 'Larbi', 'Manssouri', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mansouriarbibt@hotmail.com', NULL, NULL, '23cc32ae4349a291100ac5ba33f287d3', NULL, NULL, 1, 'male', '2015-12-30 17:19:38', NULL, '2015-12-30 17:19:38', '0', NULL),
(61, 2, 0, 'Abderrahim', 'Zegoumou', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'zagamo1@hotmail.com', NULL, NULL, '5fd795ff3e2c16c39dee00fbecd72cc0', NULL, NULL, 1, 'male', '2015-12-30 17:45:34', NULL, '2015-12-30 17:45:34', '0', NULL),
(62, 2, 0, 'Noureddine', 'Hanim', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'noureddinehanim@gmail.com', NULL, NULL, 'b514fe7b17f1349d074f51dc1b442762', NULL, NULL, 1, 'male', '2015-12-30 17:48:45', NULL, '2015-12-30 17:48:45', '0', NULL),
(63, 2, 0, 'Sellam', 'El Asassi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elassassi2004@yahoo.fr', NULL, NULL, '6ba817e7a7e6083d61dfcc60300f5629', NULL, NULL, 1, 'male', '2015-12-30 17:50:53', NULL, '2015-12-30 17:50:53', '0', NULL),
(64, 2, 0, 'ElHossaine', 'ElMoutaqi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'el.elmoutaqi@gmail.com', NULL, NULL, '31c83568debc426812ce0fc7dfddbc88', NULL, NULL, 1, 'male', '2015-12-30 17:53:04', NULL, '2015-12-30 17:53:04', '0', NULL),
(65, 2, 0, 'Saad', 'Bouhouch', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'saadbouhouch@gmail.com', NULL, NULL, '3b59949582e3827cef16ad42a38ff416', NULL, NULL, 1, 'male', '2015-12-30 17:54:18', NULL, '2015-12-30 17:54:18', '0', NULL),
(66, 2, 0, 'Abdelhamid', 'Bachiri', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bachiri9@yahoo.fr', NULL, NULL, 'd3478bd1f32d2dd00596822607a38a87', NULL, NULL, 1, 'male', '2015-12-30 17:56:09', NULL, '2015-12-30 17:56:09', '0', NULL),
(68, 2, 0, 'Abdelhadi', 'Tahir', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'tahirabel@yahoo.fr', NULL, NULL, '0f4289c5e9f3bccc887fb10b1f56b406', NULL, NULL, 1, 'male', '2016-01-04 09:25:22', NULL, '2016-01-04 09:25:22', '0', NULL),
(69, 2, 0, 'Smahi', 'Abdelmajid', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'smahi.196005@gmail.com', NULL, NULL, '01568af86d75bc5e222d8e902a5116e5', NULL, NULL, 1, 'male', '2016-01-05 08:22:00', NULL, '2016-01-05 08:22:00', '0', NULL),
(70, 2, 0, 'Harbali', 'Said', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'harbalisaid@gmail.com', NULL, NULL, '63e97f5d55285b1e106eeac450431357', NULL, NULL, 1, 'male', '2016-01-05 08:24:54', NULL, '2016-01-05 08:24:54', '0', NULL),
(71, 2, 0, 'Boujemaa', 'SIRAT', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'sirat.ab23@gmail.com', NULL, NULL, 'fbd61fb03dee84cc2cd86274b974049b', NULL, NULL, 1, 'male', '2016-01-05 08:27:27', NULL, '2016-01-05 08:27:27', '0', NULL),
(72, 2, 0, 'Khalid', 'Slaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'slaouikhalid@hotmail.com', NULL, NULL, '51965cd9a18674696ff8a78083b168d0', NULL, NULL, 1, 'male', '2016-01-05 08:29:18', NULL, '2016-01-05 08:29:18', '0', NULL),
(73, 2, 0, 'Mohamed ', 'Saidi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'saidi.comader@gmail.com', NULL, NULL, '13da2021479e8977d427d06023ac5dbe', NULL, NULL, 1, 'male', '2016-01-05 09:29:38', NULL, '2016-01-05 09:29:38', '0', NULL),
(74, 2, 0, 'Abdellatif', 'EL ANTAKI', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ab.elantaki@gmail.com', NULL, NULL, '526b478255682adc2cc6536689959d72', NULL, NULL, 1, 'male', '2016-01-05 10:10:17', NULL, '2016-01-05 10:10:17', '0', NULL),
(75, 2, 0, 'Fatima', 'Zine El Abidine', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'fatimazine@yahoo.com', NULL, NULL, 'e1bcfc88aab4e062723bb044caf5a2bc', NULL, NULL, 1, 'female', '2016-01-05 10:12:08', NULL, '2016-01-05 10:12:08', '0', NULL),
(76, 2, 0, 'Ahmed', 'Chaemsi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'chemsiahmed@gmail.com', NULL, NULL, '9b3251c7486994e13ed51958fd225051', NULL, NULL, 1, 'male', '2016-01-05 10:13:03', NULL, '2016-01-05 10:13:03', '0', NULL),
(77, 2, 0, 'Abdelkader', 'chikhi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'chikhiabdelkader@gmail.com', NULL, NULL, 'df5605a06c1f89d5ae28a4b9ce8f8287', NULL, NULL, 1, 'male', '2016-01-05 10:16:28', NULL, '2016-01-05 10:16:28', '0', NULL),
(78, 2, 0, 'Mohamed', 'BAYH', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'm.bayh@gmail.com', NULL, NULL, '0f1a6076289377e479fcbe54f2a5c243', NULL, NULL, 1, 'male', '2016-01-05 10:18:31', NULL, '2016-01-05 10:18:31', '0', NULL),
(79, 2, 0, 'Mohammed', 'Wakrim', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mohamedwakrim@gmail.com', NULL, NULL, '72beebf1d4cbc94ad1a6b070c116a732', NULL, NULL, 1, 'male', '2016-01-05 10:19:43', NULL, '2016-01-05 10:19:43', '0', NULL),
(81, 2, 0, 'hassan', 'bechaou', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hbyoung13@gmail.com', NULL, NULL, '23aa44bb94783f6535f36818387fdf43', NULL, NULL, 1, 'male', '2016-01-05 10:23:30', NULL, '2016-01-05 10:23:30', '0', NULL),
(82, 2, 0, 'Fouad', 'chigre', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'chigrefouad@hotmail.com', NULL, NULL, '35cc82d5c756b698dcf2be68f2999432', NULL, NULL, 1, 'male', '2016-01-05 10:24:35', NULL, '2016-01-05 10:24:35', '0', NULL),
(83, 2, 0, 'Mostafa', 'makmoul', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mcmol1983@hotmail.com', NULL, NULL, 'bff90db64d3f2fb39aa321747aa78d82', NULL, NULL, 1, 'male', '2016-01-05 10:40:24', NULL, '2016-01-05 10:40:24', '0', NULL),
(84, 2, 0, 'Abderrahman', 'boukallouch', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'abdboukallouch@gmail.com', NULL, NULL, '11cdc92af38d7e83f7a1bcde4188d88d', NULL, NULL, 1, 'male', '2016-01-05 10:42:32', NULL, '2016-01-05 10:42:32', '0', NULL),
(85, 2, 0, 'Abdeljalil', 'Alkama', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'alkama.abdeljalil@gmail.com', NULL, NULL, '745d54b0b20b5eeca086c2aa0cb51fef', NULL, NULL, 1, 'male', '2016-01-05 10:43:46', NULL, '2016-01-05 10:43:46', '0', NULL),
(86, 2, 0, 'Mohamed', 'Lahraoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mohamed_lahraoui@hotmail.com', NULL, NULL, '7a5d1480819a570432ddbfd3e4184d9c', NULL, NULL, 1, 'male', '2016-01-05 10:45:04', NULL, '2016-01-05 10:45:04', '0', NULL),
(87, 2, 0, 'Ahmed', 'Dahani', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ahmeddahani2000@gmail.com', NULL, NULL, 'aabc52ed65bb3afbf395edc0de13e34b', NULL, NULL, 1, 'male', '2016-01-05 10:45:58', NULL, '2016-01-05 10:45:58', '0', NULL),
(88, 2, 0, 'Mohammed', 'El bekkaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elbekkaouimohamed14@gmail.com', NULL, NULL, '7a41dd4a93afab0972299e6909e50b9b', NULL, NULL, 1, 'male', '2016-01-05 11:08:59', NULL, '2016-01-05 11:08:59', '0', NULL),
(89, 2, 0, 'El aroussi', 'Tablou', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elaroussi59@gmail.com', NULL, NULL, '311f5d4facec99a9648cf207c479d63f', NULL, NULL, 1, 'male', '2016-01-05 11:10:46', NULL, '2016-01-05 11:10:46', '0', NULL),
(90, 2, 0, 'Abdeslam', 'Aissa', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'Apissa19999@gmail.com', NULL, NULL, '8a37cd02898f56496fbbcbf6a7688769', NULL, NULL, 1, 'male', '2016-01-05 11:12:34', NULL, '2016-01-05 11:12:34', '0', NULL),
(91, 2, 0, 'Mbarek', 'Azzouzi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'azz.mbr@gmail.com', NULL, NULL, '6fa9337b50dded7a86318ae47481e5d9', NULL, NULL, 1, 'male', '2016-01-05 11:16:34', NULL, '2016-01-05 11:16:34', '0', NULL),
(92, 2, 0, 'Abdelhaq', 'Haytoumi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'a.haitoumi@gmail.com', NULL, NULL, '21545016c3b5b6c105ac2e034dddae86', NULL, NULL, 1, 'male', '2016-01-05 11:18:15', NULL, '2016-01-05 11:18:15', '0', NULL),
(93, 2, 0, 'Sadiq', 'Idrissi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'idrissi.s@pcmconsultingmaroc.com', NULL, NULL, 'ba1760a9d103b691760d681227cb0d05', NULL, NULL, 1, 'male', '2016-01-05 11:19:42', NULL, '2016-01-05 11:19:42', '0', NULL),
(94, 2, 0, 'Mohammed', 'Ben Didi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bendidimohammed56@gmail.com', NULL, NULL, '2ae26e27b54f3a0142c537717253ca64', NULL, NULL, 1, 'male', '2016-01-05 11:20:56', NULL, '2016-01-05 11:20:56', '0', NULL),
(95, 2, 0, 'Mohammed', 'Oumlal', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'oumlal@yahoo.fr', NULL, NULL, 'e78ea182e1aac0fc9a65de1f7f9dd384', NULL, NULL, 1, 'male', '2016-01-05 11:27:27', NULL, '2016-01-05 11:27:27', '0', NULL),
(96, 2, 0, 'Touria', 'Nettah', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'touria.nettah@gmail.com', NULL, NULL, '6d74b8b2650076d47c7060817b5e6431', NULL, NULL, 1, 'female', '2016-01-05 11:28:45', NULL, '2016-01-05 11:28:45', '0', NULL),
(97, 2, 0, 'Bousselham', 'Bendaif', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bendaifb@gmail.com', NULL, NULL, '824a36bf9007c766f3d7b385723bc2de', NULL, NULL, 1, 'male', '2016-01-05 11:29:36', NULL, '2016-01-05 11:29:36', '0', NULL),
(98, 2, 0, 'Lhoussein', 'Bouaddi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bouaddi1@gmail.com', NULL, NULL, '426261f81e47154e51d1bebaabec7a00', NULL, NULL, 1, 'male', '2016-01-05 11:32:04', NULL, '2016-01-05 11:32:04', '0', NULL),
(99, 2, 0, 'Abdel Aziz', 'Dersi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'dersiaz@hotmail.fr', NULL, NULL, '030bb25895a83f106c25effd9b8e0e09', NULL, NULL, 1, 'male', '2016-01-05 11:33:00', NULL, '2016-01-05 11:33:00', '0', NULL),
(100, 2, 0, 'Brahim', 'Ouaddich', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'brahim_805@hotmail.com', NULL, NULL, '3e0ffea892929d7c08cde32f916cd2fc', NULL, NULL, 1, 'male', '2016-01-05 11:34:30', NULL, '2016-01-05 11:34:30', '0', NULL),
(101, 2, 0, 'Abdesselam', 'Bensamah', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'abdessalamsamah15@gmail.com', NULL, NULL, 'f2a747ebda4799d5ed4fc33deaed7da5', NULL, NULL, 1, 'male', '2016-01-05 11:35:46', NULL, '2016-01-05 11:35:46', '0', NULL),
(102, 2, 0, 'Naser', 'Bekraouyi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bekraoui.nasr@gmail.com', NULL, NULL, 'de6d53af50692025272fb36373bfd259', NULL, NULL, 1, 'male', '2016-01-05 11:37:03', NULL, '2016-01-05 11:37:03', '0', NULL),
(103, 2, 0, 'Mohamed', 'El ouahrani', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'wahrani-agro@live.fr', NULL, NULL, 'f118a5d8bd17e33ef2dfec96525a4611', NULL, NULL, 1, 'male', '2016-01-05 11:38:22', NULL, '2016-01-05 11:38:22', '0', NULL),
(104, 2, 0, 'Moha', 'Chehraoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'chehraoui.moha@gmail.com', NULL, NULL, 'b7d78553fdad10574d92c0f67d6d7f6b', NULL, NULL, 1, 'male', '2016-01-05 11:51:03', NULL, '2016-01-05 11:51:03', '0', NULL),
(105, 2, 0, 'Ahmed', 'Byoud', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'a.byoud@gmail.com', NULL, NULL, '76df9491f427b98ce0929a5d13e02ff8', NULL, NULL, 1, 'male', '2016-01-05 11:52:55', NULL, '2016-01-05 11:52:55', '0', NULL),
(106, 2, 0, 'Omar', 'Razini', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'Omarrazini58@gmail.com', NULL, NULL, '46fd8fae803c45129fa6490f94052827', NULL, NULL, 1, 'male', '2016-01-05 11:58:10', NULL, '2016-01-05 11:58:10', '0', NULL),
(107, 2, 0, 'youness', 'bouyamine', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'youness.bouyamine@gmail.com', NULL, NULL, '17ebc7ca79e39d50000eaa5223251da0', NULL, NULL, 1, 'male', '2016-01-05 12:38:40', NULL, '2016-01-05 12:38:40', '0', NULL),
(108, 2, 0, 'ahmed', 'el hams', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ahmedelhams@gmail.com', NULL, NULL, 'f3b2d04abcb10778e21fc17abd7d0d04', NULL, NULL, 1, 'male', '2016-01-05 12:39:45', NULL, '2016-01-05 12:39:45', '0', NULL),
(109, 2, 0, 'abdennabi', 'el hbaz', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elhbaz@hotmail.fr', NULL, NULL, 'dc746efb2ea929d51ace6d2ce0d817c6', NULL, NULL, 1, 'male', '2016-01-05 12:41:06', NULL, '2016-01-05 12:41:06', '0', NULL),
(110, 2, 0, 'Larbi', 'El Addouni', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'eladdouni@foiegras.ma', NULL, NULL, '9b2db555601d7e1c8a084a9a9941f8e8', NULL, NULL, 1, 'male', '2016-01-05 12:46:20', NULL, '2016-01-05 12:46:20', '0', NULL),
(111, 2, 0, 'Rachid', 'El Baghli', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'infoscomai@gmail.com', NULL, NULL, '69a5d941c7b7937e030929f5cfa274ac', NULL, NULL, 1, 'male', '2016-01-05 12:47:35', NULL, '2016-01-05 12:47:35', '0', NULL),
(112, 2, 0, 'Mohamed', 'Sillou', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'silloudema@yahoo.fr', NULL, NULL, '0c8be496777d11eaac4eae368cdc8e21', NULL, NULL, 1, 'male', '2016-01-05 12:48:22', NULL, '2016-01-05 12:48:22', '0', NULL),
(113, 2, 0, 'Boubker', 'Benitto', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bentito.boubker@hotmail.com', NULL, NULL, '01842973aa1dfc7eeb1ffedd1671b045', NULL, NULL, 1, 'male', '2016-01-05 12:50:11', NULL, '2016-01-05 12:50:11', '0', NULL),
(114, 2, 0, 'Taib', 'Doubli', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'taibdoubli@gmail.com', NULL, NULL, '0eea89c27104603de66b40c9879a6462', NULL, NULL, 1, 'male', '2016-01-05 12:51:13', NULL, '2016-01-05 12:51:13', '0', NULL),
(115, 2, 0, 'Boujema', 'Bourass', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bourass56@yahoo.fr', NULL, NULL, '7a115e5a6510e574b6ad1dc7b5774989', NULL, NULL, 1, 'male', '2016-01-05 12:52:20', NULL, '2016-01-05 12:52:20', '0', NULL),
(116, 2, 0, 'El hassan', 'El addouni', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'eladdouni_hassane@hotmail.com', NULL, NULL, '65f2067504e03c85a6a01b56e2ffa9cc', NULL, NULL, 1, 'male', '2016-01-05 12:54:03', NULL, '2016-01-05 12:54:03', '0', NULL),
(117, 2, 0, 'Abdelkabir', 'Ammar', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'abdelkabir.ammar@gmail.com', NULL, NULL, 'd0aab2afe7f8c93fc12ef9286eecd5ea', NULL, NULL, 1, 'male', '2016-01-05 12:55:38', NULL, '2016-01-05 12:55:38', '0', NULL),
(118, 2, 0, 'Mohammed', 'El Ammari', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'graba822@gmail.com', NULL, NULL, '04bec4c41e287583b0dae7efec506035', NULL, NULL, 1, 'male', '2016-01-05 12:59:26', NULL, '2016-01-05 12:59:26', '0', NULL),
(119, 2, 0, 'Abdelhay', 'Hjiej', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'a.hjiej@yahoo.fr', NULL, NULL, '3f735882567136684e52002fffb5e689', NULL, NULL, 1, 'male', '2016-01-05 12:59:41', NULL, '2016-01-05 12:59:41', '0', NULL),
(120, 2, 0, 'Driss', 'Jafi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'Driss.jaficon@gmail.com', NULL, NULL, 'a73b9374bd5dde67c41ccfcee1337cf8', NULL, NULL, 1, 'male', '2016-01-05 13:00:45', NULL, '2016-01-05 13:00:45', '0', NULL),
(121, 2, 0, 'Mohammed Hakim', 'Aouad', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'aouad.11550@gmail.com', NULL, NULL, 'c36f08d00c39c543d425c7047dba73c2', NULL, NULL, 1, 'male', '2016-01-05 13:02:05', NULL, '2016-01-05 13:02:05', '0', NULL),
(122, 2, 0, 'Azelarab', 'Rechachi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'azelarab.volaille@gmail.com', NULL, NULL, '7223405a4abf872dae9af90db864281f', NULL, NULL, 1, 'male', '2016-01-05 13:02:15', NULL, '2016-01-05 13:02:15', '0', NULL),
(123, 2, 0, 'Rachid', 'Sellak', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'rachidselak@gmail.com', NULL, NULL, '28b2bf7f5a00f009537f21d5226b1bd1', NULL, NULL, 1, 'male', '2016-01-05 13:03:27', NULL, '2016-01-05 13:03:27', '0', NULL),
(124, 2, 0, 'Bouchaib', 'Moujoud', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mbhferme@yahoo.fr', NULL, NULL, '0c4cf90240aa2c2be6cbdb07e5281a8b', NULL, NULL, 1, 'male', '2016-01-05 13:04:09', NULL, '2016-01-05 13:04:09', '0', NULL),
(125, 2, 0, 'Ali', 'Lamzouri', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ali.lamzouri@hotmail.com', NULL, NULL, '705ee4ddb99809be1f915f5b8421bd8b', NULL, NULL, 1, 'male', '2016-01-05 13:05:08', NULL, '2016-01-05 13:05:08', '0', NULL),
(126, 2, 0, 'Mohamed', 'Sigue', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mohamed.sigue@gmail.com', NULL, NULL, 'f64de0edf4c21ac965901dbf33e76315', NULL, NULL, 1, 'male', '2016-01-05 13:06:34', NULL, '2016-01-05 13:06:34', '0', NULL),
(127, 2, 0, 'Hassan', 'Akil', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hassan.akil@gmail.com', NULL, NULL, 'ad8d62c40ee32d32b5c5b5ed866322d0', NULL, NULL, 1, 'male', '2016-01-05 13:08:35', NULL, '2016-01-05 13:08:35', '0', NULL),
(128, 2, 0, 'ismail', 'Bouhamidi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bouhamidiismail@gmail.com', NULL, NULL, 'fa9cd4d4b12b079c56eccc6087313baa', NULL, NULL, 1, 'male', '2016-01-05 13:11:31', NULL, '2016-01-05 13:11:31', '0', NULL),
(129, 2, 0, 'Rachid', 'Touti', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'toutirachid@yahoo.fr', NULL, NULL, '77019290b6bfffbb7bf055df85d71f55', NULL, NULL, 1, 'male', '2016-01-05 13:12:21', NULL, '2016-01-05 13:12:21', '0', NULL),
(130, 2, 0, 'assadik', 'daoudi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'essadik.daoudi@gmail.com', NULL, NULL, 'edb82e684b3044ad7ba66e033bb0ffb0', NULL, NULL, 1, 'male', '2016-01-05 13:12:56', NULL, '2016-01-05 13:12:56', '0', NULL),
(131, 2, 0, 'Mohammed', 'Aissi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'aissimed@hotmail.com', NULL, NULL, '5cd73116d9524e8cc3e16772908d9565', NULL, NULL, 1, 'male', '2016-01-05 13:13:21', NULL, '2016-01-05 13:13:21', '0', NULL),
(132, 2, 0, 'said', 'Abaroudi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'abaroudi49@gmail.com', NULL, NULL, '3d16879ba4a46a6b0a10803ae6dca243', NULL, NULL, 1, 'male', '2016-01-05 13:14:41', NULL, '2016-01-05 13:14:41', '0', NULL),
(133, 2, 0, 'Ali', 'Bekkouchi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'alibekou@hotmail.fr', NULL, NULL, '8347f4115b918e24f9fbb6af0b203161', NULL, NULL, 1, 'male', '2016-01-05 13:15:17', NULL, '2016-01-05 13:15:17', '0', NULL),
(134, 2, 0, 'Ahmed', 'Bouafia', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ahmed.bouafia@hotmail.fr', NULL, NULL, '88374ecc28f243b8232cfea90da92ed4', NULL, NULL, 1, 'male', '2016-01-05 13:16:10', NULL, '2016-01-05 13:16:10', '0', NULL),
(135, 2, 0, 'Mohamed', 'Jazouli', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'jz.api@hotmail.fr', NULL, NULL, 'd17e9ff2510cba4bd0a516a007967169', NULL, NULL, 1, 'male', '2016-01-05 13:16:39', NULL, '2016-01-05 13:16:39', '0', NULL),
(136, 2, 0, 'Mehdi', 'Afrokh', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'afrokh-agri@hotmail.com', NULL, NULL, '7c0e326bd2db8d0be289ef0ea03e92b8', NULL, NULL, 1, 'male', '2016-01-05 13:32:54', NULL, '2016-01-05 13:32:54', '0', NULL),
(137, 2, 0, 'Mohamed', 'Faqir', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'faqir745@yahoo.fr', NULL, NULL, '8b842b2db520c6da4005591c8121e764', NULL, NULL, 1, 'male', '2016-01-05 13:32:55', NULL, '2016-01-05 13:32:55', '0', NULL),
(138, 2, 0, 'rafik', 'errakhi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'contactmaroc@elephantvert.ch', NULL, NULL, 'd5761aa58daf777be4814b8174f8a1e9', NULL, NULL, 1, 'male', '2016-01-05 13:35:36', NULL, '2016-01-05 13:35:36', '0', NULL),
(139, 2, 0, 'Moulay Mhamed', 'EL MOSLI', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'agrisena535@gmail.com', NULL, NULL, 'b0a58f5b2add86e2e79de6f3db4629a0', NULL, NULL, 1, 'male', '2016-01-05 13:35:44', NULL, '2016-01-05 13:35:44', '0', NULL),
(140, 2, 0, 'Fatima Ezzahrae', 'El Akhal', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'fatimazahrae.elakhal@gmail.com', NULL, NULL, '613dac65361b95aebb00a89c81fba2bf', NULL, NULL, 1, 'male', '2016-01-05 13:37:01', NULL, '2016-01-05 13:37:01', '0', NULL),
(141, 2, 0, 'najat', 'ait abousaoub', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'najiya2030@hotmail.fr', NULL, NULL, '1cb357ca6c01424666f3637810d68b0d', NULL, NULL, 1, 'female', '2016-01-05 13:37:16', NULL, '2016-01-05 13:37:16', '0', NULL),
(142, 2, 0, 'Mostafa', 'Laadnani', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'laadnanim2002@yahoo.fr', NULL, NULL, '9a8ec08f93036b0cda62851a7f68f918', NULL, NULL, 1, 'male', '2016-01-05 13:39:53', NULL, '2016-01-05 13:39:53', '0', NULL),
(143, 2, 0, 'bouazza', 'elrhzaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elrhzaoui.bouazza@gmail.com', NULL, NULL, '272139996477e41f264bc2439a67b9c2', NULL, NULL, 1, 'male', '2016-01-06 11:33:52', NULL, '2016-01-06 11:33:52', '0', NULL),
(144, 2, 0, 'Ahmed', 'El moudni', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bouk2210@hotmail.com', NULL, NULL, 'e2a94f8a79e829bad3466104f00941ff', NULL, NULL, 1, 'male', '2016-01-06 15:08:16', NULL, '2016-01-06 15:08:16', '0', NULL),
(145, 2, 0, 'Naima', 'Taghzout', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'natag2020@gmail.com', NULL, NULL, '2dc92acc25356874c2a7150fd2f70ded', NULL, NULL, 1, 'female', '2016-01-06 15:36:32', NULL, '2016-01-06 15:36:32', '0', NULL),
(146, 2, 0, 'ABDELLAH', 'KHALDOUNE', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'khaldouneabdellah3@gmail.com', NULL, NULL, '22391ddc421bfad92a00ebd3b8c477c3', NULL, NULL, 1, 'male', '2016-01-06 16:54:50', NULL, '2016-01-06 16:54:50', '0', NULL),
(147, 2, 0, 'test', 'test', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'test@gmail.com', NULL, NULL, '1be15432dbc047725d66b7f01847ec7f', NULL, NULL, 1, 'male', '2016-01-07 11:42:05', NULL, '2016-01-07 11:42:05', '0', NULL),
(148, 2, 0, 'Abdellah', 'Aboudrar', NULL, 'babede08eaa8e3d758667d0cdc06b65c2dab862c', NULL, 'Aboudrar.abdellah@gmail.com', NULL, NULL, '1d011457eea100b31e13ac827f73aa37', NULL, NULL, 1, 'male', '2016-01-07 12:42:12', NULL, '2016-01-07 12:42:12', '0', NULL),
(149, 2, 0, 'Mohamed', 'sigue', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mahamed.sigue@gmail.com', NULL, NULL, '4b70b4a86518756448096d9f850e279d', NULL, NULL, 1, 'male', '2016-01-13 14:32:43', NULL, '2016-01-13 14:32:43', '0', NULL),
(150, 2, 0, 'mohamed', 'sennani', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'sennamed.53@gmail.com', NULL, NULL, 'c60495d076017c2598d5b666ebc3d379', NULL, NULL, 1, 'male', '2016-01-13 14:48:03', NULL, '2016-01-13 14:48:03', '0', NULL),
(151, 2, 0, 'Abderrahman', 'hamidi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ab.hamidi@hotmail.fr', NULL, NULL, '27a4f3df4bd26c68922fb70e3ef634a8', NULL, NULL, 1, 'male', '2016-01-13 14:50:53', NULL, '2016-01-13 14:50:53', '0', NULL),
(152, 2, 0, 'Abdelkader', 'Elmoene', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'abdelkabir.svt@gmail.com', NULL, NULL, 'd677a7f6df660c2d567fea106e1f7c70', NULL, NULL, 1, 'male', '2016-01-13 14:54:28', NULL, '2016-01-13 14:54:28', '0', NULL),
(153, 2, 0, 'rachide', 'marouan', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'marouan-456@hotmail.com', NULL, NULL, '30e7ea35f7bc79b6ceda8113764a634a', NULL, NULL, 1, 'male', '2016-01-13 14:55:49', NULL, '2016-01-13 14:55:49', '0', NULL),
(154, 2, 0, 'Fouad', 'Elkhammar', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'fouad.elkhammar74@gmail.com', NULL, NULL, '3722c6c1952d1f391f15ba971956d0c4', NULL, NULL, 1, 'male', '2016-01-13 14:57:04', NULL, '2016-01-13 14:57:04', '0', NULL),
(155, 2, 0, 'rachid', 'bouhout', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'rachidb220@gmail.com', NULL, NULL, '4f3858439b5838baf0a11f9266e15fb7', NULL, NULL, 1, 'male', '2016-01-13 14:58:10', NULL, '2016-01-13 14:58:10', '0', NULL),
(156, 2, 0, 'mohamed', 'zizi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'zizmed.dra@gmail.com', NULL, NULL, 'e2c719565c29fbeae756ce1c85373468', NULL, NULL, 1, 'male', '2016-01-13 14:59:41', NULL, '2016-01-13 14:59:41', '0', NULL),
(157, 2, 0, 'driss', 'meziane', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'driss.meziane2015@gmail.com', NULL, NULL, '32df1bba18e7649defc276635de3d643', NULL, NULL, 1, 'male', '2016-01-13 15:00:52', NULL, '2016-01-13 15:00:52', '0', NULL),
(159, 2, 0, 'Abdelaziz', 'Taoutaou', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'aataoutaou@gmail.com', NULL, NULL, '3314ef29729f2b327e0494f81177db37', NULL, NULL, 1, 'male', '2016-01-13 15:02:48', NULL, '2016-01-13 15:02:48', '0', NULL),
(160, 2, 0, 'brahim', 'Elhadji', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'brahim1208@hotmail.com', NULL, NULL, '6b102781591437369d1cb00c9b0a3bff', NULL, NULL, 1, 'male', '2016-01-13 15:04:03', NULL, '2016-01-13 15:04:03', '0', NULL),
(161, 2, 0, 'Rida', 'Reguiai', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'reg.reda@gmail.com', NULL, NULL, '64ff9fc20c31e1f6ba7ea716a4cf4b75', NULL, NULL, 1, 'male', '2016-01-13 15:05:18', NULL, '2016-01-13 15:05:18', '0', NULL),
(162, 2, 0, 'Rachid', 'Bentaybi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'rachidbentaybi@gmail.com', NULL, NULL, 'bfa4ae2be7e1cc717a7f54cb2ed12009', NULL, NULL, 1, 'male', '2016-01-14 12:51:05', NULL, '2016-01-14 12:51:05', '0', NULL),
(163, 2, 0, 'Sghir', 'Zbitou', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 's.zbitou3@hotmail.fr', NULL, NULL, '8d2d546d4948d6f9776d62386aaf0c34', NULL, NULL, 1, 'male', '2016-01-15 15:30:34', NULL, '2016-01-15 15:30:34', '0', NULL),
(164, 2, 0, 'Farah', 'El MRabet', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elmrabet.farah@gmail.com', NULL, NULL, '927947ca114c64e0ea8f1af04559d845', NULL, NULL, 1, 'female', '2016-01-15 15:34:42', NULL, '2016-01-15 15:34:42', '0', NULL),
(165, 2, 0, 'Moha', 'Mouden', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mouden.mh@gmail.com', NULL, NULL, '59a0fa9dc25fa9ab3abb2183f90d70e3', NULL, NULL, 1, 'male', '2016-01-18 09:57:09', NULL, '2016-01-18 09:57:09', '0', NULL),
(166, 2, 0, 'Bendaoud', 'Benamer', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bendaoud.benamer@hotmail.com', NULL, NULL, '70e177d6a6ada8e706a6152afb06bc7a', NULL, NULL, 1, 'male', '2016-01-18 10:06:59', NULL, '2016-01-18 10:06:59', '0', NULL),
(167, 2, 0, 'Faîçal', 'Merzouk', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'faicalmerzouk@gmail.com', NULL, NULL, '01d376d4bf8ca970afed8b3128119023', NULL, NULL, 1, 'male', '2016-01-18 10:10:10', NULL, '2016-01-18 10:10:10', '0', NULL),
(168, 2, 0, 'Abdelouahab', 'Lakhal', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'lakhalabdelouahab@gmail.com', NULL, NULL, '494b4798cb52083872b576676d9d7516', NULL, NULL, 1, 'male', '2016-01-18 10:31:20', NULL, '2016-01-18 10:31:20', '0', NULL),
(169, 2, 0, 'Yassine', 'Filali Sadki', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'y.filali.sadki@gmail.com', NULL, NULL, '13a37046516810d1c92e0f7fe23d62af', NULL, NULL, 1, 'male', '2016-01-18 10:32:54', NULL, '2016-01-18 10:32:54', '0', NULL),
(170, 2, 0, 'Moulay Lhassane', 'Sossey Alaoui ', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hassansosseyAlaoui@gmail.com', NULL, NULL, '2eee6857dfb5133975fdb58c2e7502ba', NULL, NULL, 1, 'male', '2016-01-18 10:35:27', NULL, '2016-01-18 10:35:27', '0', NULL),
(171, 2, 0, 'Hassar', 'Hassan', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hassarhassan@gmail.com', NULL, NULL, 'f43111de6d10b8c173e7902ba7795ba6', NULL, NULL, 1, 'male', '2016-01-18 10:37:41', NULL, '2016-01-18 10:37:41', '0', NULL),
(172, 2, 0, 'Rachid', 'Elkourti', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elKourtirachid@gmail.com', NULL, NULL, '800db0364ddc14047f3d0aa70f2f74db', NULL, NULL, 1, 'male', '2016-01-18 10:41:05', NULL, '2016-01-18 10:41:05', '0', NULL),
(173, 2, 0, 'Ahmed', 'El Faraouy ', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hibafaraouy@gmail.com', NULL, NULL, 'f0194ceee397e2f9ce34b23e7bc39e80', NULL, NULL, 1, 'male', '2016-01-18 10:43:04', NULL, '2016-01-18 10:43:04', '0', NULL),
(174, 2, 0, 'Abdelmalek', 'Moras', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'agrimoras@hotmail.com', NULL, NULL, '292c20d5399e5b589ff29a511d62c76c', NULL, NULL, 1, 'male', '2016-01-18 10:43:57', NULL, '2016-01-18 10:43:57', '0', NULL),
(175, 2, 0, 'Achou', 'El mostafa', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'achoumustafa68@gmail.com', NULL, NULL, 'bc31520351f8601cc4942858aa2d289f', NULL, NULL, 1, 'male', '2016-01-18 10:46:43', NULL, '2016-01-18 10:46:43', '0', NULL),
(176, 2, 0, 'Omar', 'El harradji', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'omarelharradji@gmail.com', NULL, NULL, '58d243c61bce5fb5e35996fce2784190', NULL, NULL, 1, 'male', '2016-01-18 10:51:02', NULL, '2016-01-18 10:51:02', '0', NULL),
(177, 2, 0, 'Brahim', 'Benjrinija', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'benjrinijabrahim@gmail.com', NULL, NULL, 'fb569848d774d69f22436529c5b16393', NULL, NULL, 1, 'male', '2016-01-18 10:52:17', NULL, '2016-01-18 10:52:17', '0', NULL),
(178, 2, 0, 'Mbarek', 'Abyaa', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'tech_mbarek@hotmail.fr', NULL, NULL, '044bc67a23cd7bfd1bf37e619635bb74', NULL, NULL, 1, 'male', '2016-01-18 10:53:25', NULL, '2016-01-18 10:53:25', '0', NULL),
(179, 2, 0, 'Mohammed', 'Bayh', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mohammed.bayh@gmail.com', NULL, NULL, '24c61ab6b92547142876bd0d70341805', NULL, NULL, 1, 'male', '2016-01-18 11:05:43', NULL, '2016-01-18 11:05:43', '0', NULL),
(180, 2, 0, 'Jaoud', 'Berkellil', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'jaoud.berkellil@gmail.com', NULL, NULL, '09055f77b02d450f3824c1ec6dde16ef', NULL, NULL, 1, 'male', '2016-01-18 11:08:39', NULL, '2016-01-18 11:08:39', '0', NULL),
(181, 2, 0, 'Abderrahim', 'Belhaj', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'abderrahim.belhaj@gmail.com', NULL, NULL, '22dc0f92c3394f844c205460f0b503aa', NULL, NULL, 1, 'male', '2016-01-18 11:09:59', NULL, '2016-01-18 11:09:59', '0', NULL),
(182, 2, 0, 'ahmed', 'siboub', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ahmed.siboub@gmail.com', NULL, NULL, 'c9aefeb14afa69054d2b76f073b92193', NULL, NULL, 1, 'male', '2016-01-18 11:13:36', NULL, '2016-01-18 11:13:36', '0', NULL),
(183, 2, 0, 'Allal', 'Lamdel', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'allal.lamdel@gmail.com', NULL, NULL, 'a224d8050c7c8cf22f0d89a8978bf273', NULL, NULL, 1, 'male', '2016-01-18 11:15:01', NULL, '2016-01-18 11:15:01', '0', NULL),
(184, 2, 0, 'smail', 'dahkoun', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'smail.dahkoun@gmail.com', NULL, NULL, 'ddfa3be7cdb70f25ce1d57f1c511cb6f', NULL, NULL, 1, 'male', '2016-01-18 11:18:49', NULL, '2016-01-18 11:18:49', '0', NULL),
(185, 2, 0, 'Hassan ', 'Amahmoud', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'amahmoud.hassan@gmail.com', NULL, NULL, '42979abc06fb3cd2947d2d0c3157ed55', NULL, NULL, 1, 'male', '2016-01-18 11:22:06', NULL, '2016-01-18 11:22:06', '0', NULL),
(186, 2, 0, 'Abdelkader', 'Dakikil', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'dakikil.abdelkader@gmail.com', NULL, NULL, '22446176889d4d60b4f4e1d81243325e', NULL, NULL, 1, 'male', '2016-01-18 11:23:37', NULL, '2016-01-18 11:23:37', '0', NULL),
(187, 2, 0, 'Younes', 'Mourchid', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'younessm@live.fr', NULL, NULL, '5fb3edafc64caa36b8d28b8132d6d240', NULL, NULL, 1, 'male', '2016-01-19 10:27:20', NULL, '2016-01-19 10:27:20', '0', NULL),
(188, 2, 0, 'Karim ', 'Abenboutaieb', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'abenboutaieb@gmail.com', NULL, NULL, '03220229007d997341dc876347dda89d', NULL, NULL, 1, 'male', '2016-01-19 10:28:23', NULL, '2016-01-19 10:28:23', '0', NULL),
(189, 2, 0, 'Lahcen', 'Ljouad', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ljouad.lahcen@gmail.com', NULL, NULL, '2146a190fc01026a5b046b0462fb1270', NULL, NULL, 1, 'male', '2016-01-19 10:32:42', NULL, '2016-01-19 10:32:42', '0', NULL),
(190, 2, 0, 'Ali', 'Kandil', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'arbres.et.fruits@gmail.com', NULL, NULL, '14f0d9637af836fd94d156fbc24cc418', NULL, NULL, 1, 'male', '2016-01-19 10:34:38', NULL, '2016-01-19 10:34:38', '0', NULL),
(191, 2, 0, 'Hicham', 'Merzoug', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'merzoughicham@gmail.com', NULL, NULL, '0018b06092834f8153f7256d3df2259b', NULL, NULL, 1, 'male', '2016-01-19 10:35:55', NULL, '2016-01-19 10:35:55', '0', NULL),
(192, 2, 0, 'Abdelkader', ' Aït Rahhou', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'aitrahhou@live.fr', NULL, NULL, '5bb04b37a5d3de4624cd3daa0f891bc2', NULL, NULL, 1, 'male', '2016-01-19 10:37:45', NULL, '2016-01-19 10:37:45', '0', NULL),
(193, 2, 0, 'Hassan', 'Belkhadri', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hassan.belkhadri@gmail.com', NULL, NULL, 'e347ba29da729c02bb8ba5cdbd597643', NULL, NULL, 1, 'male', '2016-01-19 10:39:00', NULL, '2016-01-19 10:39:00', '0', NULL),
(194, 2, 0, 'Mohssin', 'Nejjar', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'nejjarmohssin@gmail.com', NULL, NULL, '7373195859e7a78cd52017ba70696a19', NULL, NULL, 1, 'male', '2016-01-19 10:39:36', NULL, '2016-01-19 10:39:36', '0', NULL),
(195, 2, 0, 'Jamal', 'El Hota', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elhotja@gmail.com', NULL, NULL, '49db5bac9100e664512556bbdacfea8b', NULL, NULL, 1, 'male', '2016-01-19 10:41:00', NULL, '2016-01-19 10:41:00', '0', NULL),
(196, 2, 0, 'Noureddine', 'Mahrach', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'nouredtechnique@gmail.com', NULL, NULL, 'a74c149961de8ecbee945394de46a1d3', NULL, NULL, 1, 'male', '2016-01-19 10:42:07', NULL, '2016-01-19 10:42:07', '0', NULL),
(197, 2, 0, 'Khalid', 'El moussaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'rochi11_@hotmail.com', NULL, NULL, '6d5ddf49965e1b1f7ad9d424220341a0', NULL, NULL, 1, 'male', '2016-01-19 10:42:50', NULL, '2016-01-19 10:42:50', '0', NULL),
(198, 2, 0, 'Abderrahim ', 'El Ouadih', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'abdelouadih@hotmai.com', NULL, NULL, 'abe10b92242806302063ebbcece363ab', NULL, NULL, 1, 'male', '2016-01-19 10:43:47', NULL, '2016-01-19 10:43:47', '0', NULL),
(199, 2, 0, 'Mohammed ', 'Touzani', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'touzanimed55@gmail.com', NULL, NULL, 'd7ace772835a22b7176984e51bd4bfcf', NULL, NULL, 1, 'male', '2016-01-19 10:44:44', NULL, '2016-01-19 10:44:44', '0', NULL),
(200, 2, 0, 'El jadd', 'Lahoucine', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'lhou07@hotmail.com', NULL, NULL, 'dc0c4f0d94c18a8376317c58fc000ef8', NULL, NULL, 1, 'male', '2016-01-19 10:45:29', NULL, '2016-01-19 10:45:29', '0', NULL),
(201, 2, 0, 'Mustapha', 'Iilass', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'iliassmustapha@gmail.com', NULL, NULL, '215e2ac66fcc7b3e6022885e127d3864', NULL, NULL, 1, 'male', '2016-01-20 09:59:06', NULL, '2016-01-20 09:59:06', '0', NULL),
(202, 2, 0, 'Sofia', 'Hammouch', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'sofia.hammouch@gmail.com', NULL, NULL, '5911f16de541f0730968e463205d3dea', NULL, NULL, 1, 'female', '2016-01-20 10:02:05', NULL, '2016-01-20 10:02:05', '0', NULL),
(203, 2, 0, 'Abderrahmane', 'El Qyami', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'qyamyami@gmail.com', NULL, NULL, 'f5540267e281bdccd24a9aa805bd0a3d', NULL, NULL, 1, 'male', '2016-01-20 10:05:10', NULL, '2016-01-20 10:05:10', '0', NULL),
(204, 2, 0, 'Abdelhamid', 'Mesbah', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hamidmesbah@gmail.com', NULL, NULL, '94d6b5d43b31b9d7d4431387f1f80de0', NULL, NULL, 1, 'male', '2016-01-22 13:11:20', NULL, '2016-01-22 13:11:20', '0', NULL),
(205, 2, 0, 'Habiba', 'El outmni', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'habibariham@gmail.com', NULL, NULL, 'fcb84caffe5b638afe9cb270222ff5af', NULL, NULL, 1, 'female', '2016-01-22 13:12:03', NULL, '2016-01-22 13:12:03', '0', NULL),
(206, 2, 0, 'Karim', 'Fennani', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'karim.fennani@gmail.com', NULL, NULL, '939742f838cdf0f08978c9f00ce15aee', NULL, NULL, 1, 'male', '2016-01-22 13:12:46', NULL, '2016-01-22 13:12:46', '0', NULL),
(207, 2, 0, 'Imad', 'Hicham', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hicham_imad@yahoo.fr', NULL, NULL, 'ec248ddca5066db8a8864fee4e782235', NULL, NULL, 1, 'male', '2016-01-22 13:13:16', NULL, '2016-01-22 13:13:16', '0', NULL),
(208, 2, 0, 'Lamia', 'Faouzi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'lamiafaouzi@gmail.com', NULL, NULL, '344adbc2690fcf28df559a0ff36cc7db', NULL, NULL, 1, 'female', '2016-01-22 13:14:00', NULL, '2016-01-22 13:14:00', '0', NULL),
(209, 2, 0, 'Fakhreddine', 'El Kardi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'fakhreddine78@gmail.com', NULL, NULL, '75e1a267d25894d2f8653c2c36a8dc10', NULL, NULL, 1, 'male', '2016-01-22 13:14:38', NULL, '2016-01-22 13:14:38', '0', NULL),
(210, 2, 0, 'Saïd', 'Azerboua', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'saidyahya2011@gmail.com', NULL, NULL, '0d47ee8e7b5a4d0cf0715296fd086326', NULL, NULL, 1, 'male', '2016-01-22 13:15:09', NULL, '2016-01-22 13:15:09', '0', NULL),
(211, 2, 0, 'Samir', 'Azerboua', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'said-75@hotmail.com', NULL, NULL, '806e890341f87195396a4b0f789719ba', NULL, NULL, 1, 'male', '2016-01-22 13:15:54', NULL, '2016-01-22 13:15:54', '0', NULL),
(212, 2, 0, 'Khalid', 'Ourich', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'khalid.o.fida2@gmail.com', NULL, NULL, '5b5b64c945bd4874e968dddd05bc0d84', NULL, NULL, 1, 'male', '2016-01-22 13:16:21', NULL, '2016-01-22 13:16:21', '0', NULL),
(213, 2, 0, 'Najiba', 'El Kabili', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'agrosuccess@yahoo.fr', NULL, NULL, '8285c87f4d903a9585d12ce7795da695', NULL, NULL, 1, 'female', '2016-01-25 12:48:43', NULL, '2016-01-25 12:48:43', '0', NULL),
(214, 2, 0, 'Brahim', 'Jarir', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'jarirbrahim-1998@hotmail.com', NULL, NULL, '5e357dcca3aa7fc3d7ef6abe23fe3e5e', NULL, NULL, 1, 'male', '2016-01-27 11:05:52', NULL, '2016-01-27 11:05:52', '0', NULL),
(215, 2, 0, 'Mohammed', 'Beladel', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'belaadelm@gmail.com', NULL, NULL, '3edb5f504f22a99d698dadae72885889', NULL, NULL, 1, 'male', '2016-01-27 11:07:25', NULL, '2016-01-27 11:07:25', '0', NULL),
(216, 2, 0, 'Ahmed', 'Benmoussa', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'benmoussahmed@gmail.com', NULL, NULL, '63981a2313156b0b781b5a290baf7671', NULL, NULL, 1, 'male', '2016-01-27 11:11:28', NULL, '2016-01-27 11:11:28', '0', NULL),
(217, 2, 0, 'Lahcen', 'El Aamadi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'lahcenelaamadi@gmail.com', NULL, NULL, '9d6eed451a920dee1211e3e8a251fb57', NULL, NULL, 1, 'male', '2016-01-27 11:12:04', NULL, '2016-01-27 11:12:04', '0', NULL),
(218, 2, 0, 'Saïd ', 'El Ayoubi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'saidelayoubi@gmail.com', NULL, NULL, 'fe12964d651e389022880b7ffd1b833b', NULL, NULL, 1, 'male', '2016-01-27 11:12:55', NULL, '2016-01-27 11:12:55', '0', NULL),
(219, 2, 0, 'Mohamed', 'Azzimani', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mohamed.azzimani@hotmail.com', NULL, NULL, '678c3a77844a2aa32091efc7d4dcbbb0', NULL, NULL, 1, 'male', '2016-01-27 11:15:41', NULL, '2016-01-27 11:15:41', '0', NULL),
(220, 2, 0, 'Adil', 'Taatmant', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'adil.taatmant@gmail.com', NULL, NULL, 'ebbbc18c60a363661ac3280438abc048', NULL, NULL, 1, 'male', '2016-01-27 11:16:12', NULL, '2016-01-27 11:16:12', '0', NULL),
(221, 2, 0, 'Mhamed', 'Boulahcen', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'boulahcenmed@gmail.com', NULL, NULL, '2333578db981a6231d7899577b93292d', NULL, NULL, 1, 'male', '2016-01-27 11:18:21', NULL, '2016-01-27 11:18:21', '0', NULL),
(222, 2, 0, 'Hassan ', 'Aït Barrehil', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hassanrahilou@gmail.com', NULL, NULL, 'b9fa27ba041b3a5340837d96145987c1', NULL, NULL, 1, 'male', '2016-01-27 11:19:19', NULL, '2016-01-27 11:19:19', '0', NULL),
(223, 2, 0, 'Abdelfettah', 'Sabil', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'abdelfettahsabil@gmail.com', NULL, NULL, '629507ba8786d5e4d1a9cf2322d8ef55', NULL, NULL, 1, 'male', '2016-01-27 11:20:01', NULL, '2016-01-27 11:20:01', '0', NULL),
(224, 2, 0, 'El houssin', 'Attaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'attaouielhoussin@gmail.com', NULL, NULL, '3039e8ae87e7e816c0cb943e15e817cd', NULL, NULL, 1, 'male', '2016-01-27 11:21:10', NULL, '2016-01-27 11:21:10', '0', NULL),
(225, 2, 0, 'Youssef', 'Lahlou', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'yssf.lahlou@gmail.com', NULL, NULL, '587cb84cc96b2d96b48cfff1008b6be2', NULL, NULL, 1, 'male', '2016-01-27 11:21:54', NULL, '2016-01-27 11:21:54', '0', NULL),
(226, 2, 0, 'El Houssaini', 'Khabou', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elhoussain.khabou@gmail.com', NULL, NULL, '5baaee67692a7a1df9e01e149fbcbcdb', NULL, NULL, 1, 'male', '2016-01-27 11:23:01', NULL, '2016-01-27 11:23:01', '0', NULL),
(227, 2, 0, 'Youssef ', 'Zaza', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'youssefzaza0@gmail.com', NULL, NULL, 'f8484995de38a1951c8b1c3e79e667fe', NULL, NULL, 1, 'male', '2016-01-27 11:23:49', NULL, '2016-01-27 11:23:49', '0', NULL),
(228, 2, 0, 'said', 'chekairi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'nachek3001@hotmail.com', NULL, NULL, '7155d17cc667975cbfaee0554a9d1c72', NULL, NULL, 1, 'male', '2016-01-29 11:51:06', NULL, '2016-01-29 11:51:06', '0', NULL),
(229, 2, 0, 'younes', 'farah', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'farahyounes0606@gmail.com', NULL, NULL, '011ed8b435deb70bf062683ca7a928d3', NULL, NULL, 1, 'male', '2016-01-29 11:52:30', NULL, '2016-01-29 11:52:30', '0', NULL),
(230, 2, 0, 'abdellah', 'bellamsafar', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mousafi01@gmail.com', NULL, NULL, '6626865bb81a61c0bbe8b883c8745a2f', NULL, NULL, 1, 'male', '2016-01-29 11:54:07', NULL, '2016-01-29 11:54:07', '0', NULL),
(231, 2, 0, 'mohamed', 'benhomes', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hortimek@hotmail.com', NULL, NULL, '6f6bf3b06239b0ffe66f8a2300a3231d', NULL, NULL, 1, 'male', '2016-01-29 11:55:19', NULL, '2016-01-29 11:55:19', '0', NULL),
(232, 2, 0, 'el amine', 'hammioui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hammioui5@gmail.com', NULL, NULL, '54500441dbb9728c182f2da4e8ace5fb', NULL, NULL, 1, 'male', '2016-01-29 11:57:23', NULL, '2016-01-29 11:57:23', '0', NULL),
(233, 2, 0, 'abdelkhalak', 'hammioui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hammioui.15@gmail.com', NULL, NULL, 'ef206d8891d663bef8d359311d3600e2', NULL, NULL, 1, 'male', '2016-01-29 11:59:48', NULL, '2016-01-29 11:59:48', '0', NULL),
(234, 2, 0, 'yassir', 'hammioui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hammiouiyassir@gmail.com', NULL, NULL, 'e6bf9ce05d2c41dceebdd539a041e75e', NULL, NULL, 1, 'male', '2016-01-29 12:00:56', NULL, '2016-01-29 12:00:56', '0', NULL),
(236, 2, 0, 'khalid', 'tarraq', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'khallidtarrak@gmail.com', NULL, NULL, 'b0d8d01af531e31392f92db20685b2db', NULL, NULL, 1, 'male', '2016-01-29 12:04:49', NULL, '2016-01-29 12:04:49', '0', NULL),
(237, 2, 0, 'Imad', 'Hayouf', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'imadhayouf1985@hotmail.com', NULL, NULL, '7513b2a7a5bc4bd8ee2711ab9963d100', NULL, NULL, 1, 'male', '2016-02-02 10:10:26', NULL, '2016-02-02 10:10:26', '0', NULL),
(238, 2, 0, 'Abdallah', 'Bellamsafar', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mousafir01@gmail.com', NULL, NULL, 'd5a5dff3d2886f6e8e660695b413c58f', NULL, NULL, 1, 'male', '2016-02-02 10:13:57', NULL, '2016-02-02 10:13:57', '0', NULL),
(239, 2, 0, 'Rachid', 'Lfadili', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'lfadeli@yahoo.fr', NULL, NULL, '94e02afd3e5658822b80682004d8689e', NULL, NULL, 1, 'male', '2016-02-02 10:17:59', NULL, '2016-02-02 10:17:59', '0', NULL),
(240, 2, 0, 'Abdellah ', 'El Kamel', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'horticonseil@hotmail.fr', NULL, NULL, '2a36785c119c69c800754f34531be98e', NULL, NULL, 1, 'male', '2016-02-02 10:48:42', NULL, '2016-02-02 10:48:42', '0', NULL),
(241, 2, 0, 'Ahmed', 'Elmorabit', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ahmedemporabitiaa@gmail.com', NULL, NULL, '6ba3965565920f0fb46c3d7a39347c25', NULL, NULL, 1, 'male', '2016-02-02 10:58:24', NULL, '2016-02-02 10:58:24', '0', NULL),
(242, 2, 0, 'Cherif', 'Serhan', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'chrifserhan@gmail.com', NULL, NULL, '962f873202fab1b9019efab44f9f6b22', NULL, NULL, 1, 'male', '2016-02-04 11:40:19', NULL, '2016-02-04 11:40:19', '0', NULL),
(243, 2, 0, 'Khalid ', 'Tarraq', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'khalidtarraq@gmail.com', NULL, NULL, 'cbb00db6a7d990c18beaf857c84c5f0f', NULL, NULL, 1, 'male', '2016-02-04 12:13:55', NULL, '2016-02-04 12:13:55', '0', NULL),
(244, 2, 0, 'Mohammed ', 'Lekhessassi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'lekhessassi@gmail.com', NULL, NULL, 'f5a388ee93854388172f4ccbe7ee404b', NULL, NULL, 1, 'male', '2016-02-04 12:25:42', NULL, '2016-02-04 12:25:42', '0', NULL),
(245, 2, 0, 'Mohammed ', 'Bouaissa', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mobouaissa@gmail.com', NULL, NULL, '67eabcb82d31a0a91deb4be42b04465d', NULL, NULL, 1, 'male', '2016-02-04 12:27:19', NULL, '2016-02-04 12:27:19', '0', NULL),
(246, 2, 0, 'Abderrahman ', 'Ben Aabyd', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'benaabydabderrahman081978@gmail.com', NULL, NULL, '49f98de0301b6b86826f5ae15ee4ee2e', NULL, NULL, 1, 'male', '2016-02-04 12:28:34', NULL, '2016-02-04 12:28:34', '0', NULL),
(247, 2, 0, 'Yousra', 'Ouhzizou', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'yousra.ouhzizou@gmail.com', NULL, NULL, '10764b8fe637cd5f751273618adcbc88', NULL, NULL, 1, 'female', '2016-02-04 12:29:31', NULL, '2016-02-04 12:29:31', '0', NULL);
INSERT INTO `web_users` (`id`, `role_id`, `service_id`, `first_name`, `last_name`, `username`, `password`, `name`, `email`, `phone`, `website`, `activation_key`, `image`, `bio`, `status`, `gender`, `updated`, `updated_by`, `created`, `timezone`, `created_by`) VALUES
(248, 2, 0, 'Idriss', 'Tahiri', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'drisstahiri51@gmail.com', NULL, NULL, '8fb302e8969897b858161259d467d2b0', NULL, NULL, 1, 'male', '2016-02-04 12:30:28', NULL, '2016-02-04 12:30:28', '0', NULL),
(249, 2, 0, 'Jamal', 'Aït Fath', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'tahit-00@hotmail.com', NULL, NULL, '2d1ca362ea994e86d5d0ada8c4ee9cf6', NULL, NULL, 1, 'male', '2016-02-04 12:31:54', NULL, '2016-02-04 12:31:54', '0', NULL),
(250, 2, 0, 'Abdessamad', 'Laghzaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'lg.abdessamad@gmail.com', NULL, NULL, '1ef2896857bdc76f8aa95622533654a0', NULL, NULL, 1, 'male', '2016-02-04 12:32:46', NULL, '2016-02-04 12:32:46', '0', NULL),
(251, 2, 0, 'Abdellatif', 'Guedira', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'guedira.abdellatif@gmail.com', NULL, NULL, 'ff75bd99ee9b689fd340029894547d7f', NULL, NULL, 1, 'male', '2016-02-04 12:33:33', NULL, '2016-02-04 12:33:33', '0', NULL),
(252, 2, 0, 'Jaouad ', 'El Ansari', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'jaouadelansari54@gmail.com', NULL, NULL, 'e697534b171dd82b4462dffa09601da8', NULL, NULL, 1, 'male', '2016-02-04 12:34:48', NULL, '2016-02-04 12:34:48', '0', NULL),
(253, 2, 0, 'Yassine', 'Zariah', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'yassinezariah@gmail.com', NULL, NULL, 'a181b3d6b21b9b99b2c1f0f0dd5adb5e', NULL, NULL, 1, 'male', '2016-02-09 14:29:04', NULL, '2016-02-09 14:29:04', '0', NULL),
(254, 2, 0, 'Abdelmalek', 'Charouani', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'abdelmalek.charouani@gmail.com', NULL, NULL, 'edfe9a0001df28e80e829cc4b775a514', NULL, NULL, 1, 'male', '2016-02-09 14:30:56', NULL, '2016-02-09 14:30:56', '0', NULL),
(255, 2, 0, 'Jamal', 'El Bark', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'jamal.elbark@gmail.com', NULL, NULL, 'cf2ff4a8d6284f49aaa1816ae7b04765', NULL, NULL, 1, 'male', '2016-02-09 14:37:46', NULL, '2016-02-09 14:37:46', '0', NULL),
(256, 2, 0, 'Mohamed', ' Lahlali', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mohammedlahlali1@gmail.com', NULL, NULL, 'acb9b3db370ece364297a1218c7f81c4', NULL, NULL, 1, 'male', '2016-02-09 14:40:01', NULL, '2016-02-09 14:40:01', '0', NULL),
(257, 2, 0, 'Mohcine', 'El Melloumi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mohcine.mellouki@gmail.com', NULL, NULL, '4327d1bb7ce039a7f3d26e1b1adb3dc8', NULL, NULL, 1, 'male', '2016-02-09 14:47:25', NULL, '2016-02-09 14:47:25', '0', NULL),
(258, 2, 0, 'Hassan', 'OumSikou', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'hsine1982@gmail.com', NULL, NULL, 'b78de1b1165a91ffcddf09cfc665308a', NULL, NULL, 1, 'male', '2016-02-09 14:48:30', NULL, '2016-02-09 14:48:30', '0', NULL),
(259, 2, 0, 'Brahim ', 'Oukrid', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'b.oukrid@gmail.com', NULL, NULL, '5be540d660cebb0b45083f07386a7c75', NULL, NULL, 1, 'male', '2016-02-09 14:49:04', NULL, '2016-02-09 14:49:04', '0', NULL),
(260, 2, 0, 'Haddou', 'Ouchaali', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ouchaali.haddou@gmail.com', NULL, NULL, '4c1b594408dceefe725e594b04bafc6f', NULL, NULL, 1, 'male', '2016-02-09 14:49:52', NULL, '2016-02-09 14:49:52', '0', NULL),
(261, 2, 0, 'Si Mohamed', 'Sbaï', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'vultader@hotmail.com', NULL, NULL, 'b4bb7c2717ac8ed3d9c4eb4178cc9ae4', NULL, NULL, 1, 'male', '2016-02-09 14:53:40', NULL, '2016-02-09 14:53:40', '0', NULL),
(262, 2, 0, 'Hicham', 'Bouzelmate', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'cadinov.consult@gmail.com', NULL, NULL, 'f799dddc6f6676d791a4a4eaac43c0c3', NULL, NULL, 1, 'male', '2016-02-09 14:54:20', NULL, '2016-02-09 14:54:20', '0', NULL),
(764, 2, 0, 'Otmane', 'Hamouyi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'otmane-tazi@live.fr', NULL, NULL, 'b47515be23317161ea89c384f6a7c43a', NULL, NULL, 1, 'male', '2016-02-23 11:42:42', NULL, '2016-02-23 11:42:42', '0', NULL),
(765, 2, 0, 'Tarik', 'Hachimi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'htarik29@gmail.com', NULL, NULL, 'ea1996a48ff3ae8aaea9f67a91c4e943', NULL, NULL, 1, 'male', '2016-02-23 11:44:27', NULL, '2016-02-23 11:44:27', '0', NULL),
(766, 2, 0, 'Ismail', 'Lyazidi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'lyazidi.ismail@gmail.com', NULL, NULL, 'c2c83e5fa73d92ae33a53b44bf3b887f', NULL, NULL, 1, 'male', '2016-02-23 11:45:54', NULL, '2016-02-23 11:45:54', '0', NULL),
(767, 2, 0, 'Mohammed', 'Oufkir', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'oufkir.dpa@gmail.com', NULL, NULL, '063d12a8fddf24fa35cd8db8c2824b18', NULL, NULL, 1, 'male', '2016-02-23 11:46:26', NULL, '2016-02-23 11:46:26', '0', NULL),
(768, 2, 0, 'Soukaïna', 'El Filali', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'soukainagri@hotmail.com', NULL, NULL, 'e5afaf5b5197c3492e81e8a2383822ad', NULL, NULL, 1, 'female', '2016-02-23 11:47:23', NULL, '2016-02-23 11:47:23', '0', NULL),
(769, 2, 0, 'El Houssain', 'Kadir ', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'vetkad86@gmail.com', NULL, NULL, '8515888624b79fa1877a0f54db736bb3', NULL, NULL, 1, 'male', '2016-02-23 11:48:26', NULL, '2016-02-23 11:48:26', '0', NULL),
(770, 2, 0, 'El Mostatafa', 'Aazizi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'fatimachaymae@gmail.com', NULL, NULL, 'aeca2b0cffccf7cc3f972d80c54af467', NULL, NULL, 1, 'male', '2016-02-23 11:49:13', NULL, '2016-02-23 11:49:13', '0', NULL),
(771, 2, 0, 'Mohammed', 'Boukhaffa', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'boukhaffamedmestigmer@gmail.com', NULL, NULL, '3b24cbe3df3116697841940509dd8eec', NULL, NULL, 1, 'male', '2016-02-23 11:50:30', NULL, '2016-02-23 11:50:30', '0', NULL),
(772, 2, 0, 'Abdesselam', 'Bounhalli', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'abdesselambon17@gmail.com', NULL, NULL, '45fc29331c98d2a098e07594f8f392d4', NULL, NULL, 1, 'male', '2016-02-23 11:51:27', NULL, '2016-02-23 11:51:27', '0', NULL),
(773, 2, 0, 'Abdelaziz', 'Oumorghi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'aziznacer34@hotmail.fr', NULL, NULL, 'd444b443a121b4e5825551354d57fd4f', NULL, NULL, 1, 'male', '2016-02-23 11:52:30', NULL, '2016-02-23 11:52:30', '0', NULL),
(774, 2, 0, 'Essalah', 'Gountiti', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'gountiti_salah@hotmail.fr', NULL, NULL, '90953a9fd8e0b0b31f0d88042ac9bb2f', NULL, NULL, 1, 'male', '2016-02-23 11:53:16', NULL, '2016-02-23 11:53:16', '0', NULL),
(775, 2, 0, 'Mouhcine', 'Dalil', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'dalil.m5.dm@gmail.com', NULL, NULL, '9c3fb65a46160b19fec51affb0c65ad7', NULL, NULL, 1, 'male', '2016-02-23 11:54:08', NULL, '2016-02-23 11:54:08', '0', NULL),
(776, 2, 0, 'El Mehdi', 'Najmaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elmehdinajmaoui@gmail.com', NULL, NULL, 'f735fef38d970dc245f9411b247077af', NULL, NULL, 1, 'male', '2016-02-23 11:55:13', NULL, '2016-02-23 11:55:13', '0', NULL),
(777, 2, 0, 'Mohammed', 'Oudbib', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ovimax2014@gmail.com', NULL, NULL, 'd079f0316dbbf3a7deefe5b24e1008dd', NULL, NULL, 1, 'male', '2016-02-23 11:58:55', NULL, '2016-02-23 11:58:55', '0', NULL),
(778, 2, 0, 'Mohamed', 'Derkaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'm.derkaoui10@menara.ma', NULL, NULL, 'e404aaaec6346d16055110b0fe73b33f', NULL, NULL, 1, 'male', '2016-02-23 11:59:38', NULL, '2016-02-23 11:59:38', '0', NULL),
(779, 2, 0, 'bouabid', 'jalal', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'bouabid.jalal@gmail.com', NULL, NULL, '17d5ffcfa1d7fb6a988cd9df2980a128', NULL, NULL, 1, 'male', '2016-02-25 10:32:23', NULL, '2016-02-25 10:32:23', '0', NULL),
(780, 2, 0, 'chajai', 'khadija', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'k.chajai@gmail.com', NULL, NULL, 'f7a1b36b93befe1f3fe565eaaaa1b123', NULL, NULL, 1, 'female', '2016-02-25 10:36:26', NULL, '2016-02-25 10:36:26', '0', NULL),
(781, 2, 0, 'abdelkader', 'fathallah', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'fat.abdelkade@gmail.com', NULL, NULL, 'f98994c2a5da020d1ad2be6ccd137cb1', NULL, NULL, 1, 'male', '2016-02-25 10:44:00', NULL, '2016-02-25 10:44:00', '0', NULL),
(782, 2, 0, 'lahcen', 'iboustaten', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'iboustaten1984@gmail.com', NULL, NULL, '3a394ce332841a519929edca99490a1b', NULL, NULL, 1, 'male', '2016-02-25 10:46:05', NULL, '2016-02-25 10:46:05', '0', NULL),
(783, 2, 0, 'mohamed', 'el ouazzani', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'taghssalt@hotmail.com', NULL, NULL, '986469fb2fc146ed2a6d4062c590edda', NULL, NULL, 1, 'male', '2016-02-25 10:47:54', NULL, '2016-02-25 10:47:54', '0', NULL),
(784, 2, 0, 'el mustapha', 'allaoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'allaouimustapha99@gmail.com', NULL, NULL, 'e915bce8286b91f1e897538da6677deb', NULL, NULL, 1, 'male', '2016-02-25 10:49:21', NULL, '2016-02-25 10:49:21', '0', NULL),
(785, 2, 0, 'el ouafi', 'chegraoui', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'elouafichegraoui@hotmail.com', NULL, NULL, '416e8eca589774445aea8cb05c9ce210', NULL, NULL, 1, 'male', '2016-02-25 10:50:32', NULL, '2016-02-25 10:50:32', '0', NULL),
(786, 2, 0, 'hamid', 'taanich', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'soamisagricole@gmail.com', NULL, NULL, 'ef61d682830463bca45391ab4f5b4d4d', NULL, NULL, 1, 'male', '2016-02-25 10:54:19', NULL, '2016-02-25 10:54:19', '0', NULL),
(787, 2, 0, 'mohammed', 'lachhab', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'mohlachhab@hotmail.com', NULL, NULL, '7583727393d60a83b3c97e7a817651ed', NULL, NULL, 1, 'male', '2016-02-25 10:56:32', NULL, '2016-02-25 10:56:32', '0', NULL),
(788, 2, 0, 'saadia', 'elkacimi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'lallasouad@gmail.com', NULL, NULL, 'de721aac30f408bbd56ce178a3903130', NULL, NULL, 1, 'female', '2016-02-25 10:57:52', NULL, '2016-02-25 10:57:52', '0', NULL),
(789, 2, 0, 'mounia', 'laktob', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'lakmouna0101@gmail.com', NULL, NULL, '4862cb086ed7ca44983cbe5e8eb73717', NULL, NULL, 1, 'female', '2016-02-25 10:59:30', NULL, '2016-02-25 10:59:30', '0', NULL),
(790, 2, 0, 'Khadija', 'Belyassine', NULL, '7ce9d79868a2e184a0be6b01ac1ad53af8587d7e', NULL, 'khadijakiki7@gmail.com', NULL, NULL, 'd7f1d4df48dd6e607a60f6863eed0cdd', NULL, NULL, 0, 'female', '2016-04-11 14:56:12', NULL, '2016-04-11 14:56:12', '0', NULL),
(791, 2, 0, 'ZAHRA', 'DAHMAN', NULL, 'babede08eaa8e3d758667d0cdc06b65c2dab862c', NULL, 'dahmantouria@yahoo.fr', NULL, NULL, '6fd86ccfa3059dfc88c7d32c36307b3c', NULL, NULL, 0, 'female', '2016-04-11 15:05:04', NULL, '2016-04-11 15:05:04', '0', NULL),
(792, 2, 0, 'said', 'EJJAOUI', NULL, '8e1fc501f725165e4752e3b4820f8834a86f14d9', NULL, 'ejjaoui1955@yahoo.fr', NULL, NULL, 'ead9fcbf64b8d0c4843322611089a96d', NULL, NULL, 0, 'male', '2016-04-11 18:06:25', NULL, '2016-04-11 18:06:25', '0', NULL),
(793, 2, 0, 'Rachid', 'abid', NULL, 'babede08eaa8e3d758667d0cdc06b65c2dab862c', NULL, 'mrachidabid@gmail.com', NULL, NULL, '823592d61c7e41cdfb99cc1bbe0bea02', NULL, NULL, 0, 'male', '2016-04-13 08:40:26', NULL, '2016-04-13 08:40:26', '0', NULL),
(794, 2, 0, 'El Hassane', 'Bourarach', NULL, 'f6705350566c0b0663cbd4e5b7425dc64c0a4051', NULL, 'e.bourarach@iav.ac.ma', NULL, NULL, 'e039934b11bb2fa4298e11af34eb14b8', NULL, NULL, 0, 'male', '2016-04-16 07:13:51', NULL, '2016-04-16 07:13:51', '0', NULL),
(806, 2, 0, 'gdf', 'dgfi', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'ismsti@gmail.com', NULL, NULL, '8ac271e564258b0ae4bc367e327e1f12', NULL, NULL, 0, 'male', '2016-04-21 13:44:03', NULL, '2016-04-21 13:44:03', '0', NULL),
(807, 2, 0, 'saidi', 'ayoub', NULL, '3d74961e90be55d48af544f4ec1f02a4690e9d77', NULL, 'ayoub.saidi.th@gmail.com', NULL, NULL, '1762ab2ffa42eca7fa73859f83a11f76', NULL, NULL, 0, 'male', '2016-04-25 10:35:40', NULL, '2016-04-25 10:35:40', '0', NULL),
(808, 2, 0, 'saidi', 'ayoub', NULL, '3d74961e90be55d48af544f4ec1f02a4690e9d77', NULL, 'ayoub.saidi.th@outlook.fr', NULL, NULL, 'b8ad61823a52de94db921c3670582798', NULL, NULL, 0, 'male', '2016-04-25 10:56:03', NULL, '2016-04-25 10:56:03', '0', NULL),
(809, 2, 0, 'ayoub', 'saidi', NULL, '3d74961e90be55d48af544f4ec1f02a4690e9d77', NULL, 'saidi.ayoub.th@gmail.com', NULL, NULL, '56a97517e5971055a164fff4167b2e2b', NULL, NULL, 0, 'male', '2016-04-25 13:56:35', NULL, '2016-04-25 13:56:35', '0', NULL),
(810, 2, 0, 'OMAR', 'EL FALLOUS', NULL, 'a300980e444037f142913e6755fcaeae846b789b', NULL, 'omar.elfallous@gmail.com', NULL, NULL, 'f798029e5b49d92d7eafd1d5041a2132', NULL, NULL, 0, 'male', '2016-04-25 14:06:31', NULL, '2016-04-25 14:06:31', '0', NULL),
(811, 2, 0, 'OMAR', 'EL FALLOUS', NULL, 'a300980e444037f142913e6755fcaeae846b789b', NULL, 'omarito_015@hotmail.com', NULL, NULL, 'db76c27bb6c16bc843fe13fa8a12da74', NULL, NULL, 0, 'male', '2016-04-25 14:09:01', NULL, '2016-04-25 14:09:01', '0', NULL),
(812, 2, 0, 'OMAR', 'EL FALLOUS', NULL, 'a300980e444037f142913e6755fcaeae846b789b', NULL, 'omarelfallous@gmail.com', NULL, NULL, 'aeb92b3a5c73cac2cc3e40d63b2d0930', NULL, NULL, 0, 'male', '2016-04-25 14:54:04', NULL, '2016-04-25 14:54:04', '0', NULL),
(813, 2, 0, 'OMAR', 'EL FALLOUS', NULL, '6213456f438e6e8bef5e24fe05ff8fe2c84d8da3', NULL, 'omarito@hotmail.com', NULL, NULL, '26d9520b0dfcc41bbe9549997a01ee1c', NULL, NULL, 0, 'male', '2016-04-25 15:06:23', NULL, '2016-04-25 15:06:23', '0', NULL),
(821, 2, 0, 'said', 'said', NULL, '9555cabec4152c6aac2e82bafed55480d4c3d74a', NULL, 'said.mary7@gmail.com', NULL, NULL, '251b9efc312e7a418bd00ca0cdcd324c', NULL, NULL, 0, 'male', '2016-04-26 13:16:46', NULL, '2016-04-26 13:16:46', '0', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `web_vocabularies`
--

CREATE TABLE `web_vocabularies` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `tags` tinyint(1) NOT NULL DEFAULT '0',
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `web_vocabularies`
--

INSERT INTO `web_vocabularies` (`id`, `title`, `alias`, `description`, `required`, `multiple`, `tags`, `plugin`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Categories', 'categories', '', 1, 1, 0, NULL, 1, '2015-07-14 01:11:13', 1, '2009-07-22 02:16:21', NULL),
(2, 'Tags', 'tags', '', 0, 1, 0, NULL, 2, '2010-05-17 20:03:11', NULL, '2009-07-22 02:16:34', NULL);

-- --------------------------------------------------------

--
-- Structure de la vue `all_users`
--
DROP TABLE IF EXISTS `all_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_users`  AS  select `cap_users`.`id` AS `id`,`cap_users`.`role_id` AS `role_id`,`cap_users`.`service_id` AS `service_id`,`cap_users`.`first_name` AS `first_name`,`cap_users`.`last_name` AS `last_name`,`cap_users`.`username` AS `username`,`cap_users`.`password` AS `password`,`cap_users`.`name` AS `name`,`cap_users`.`email` AS `email`,`cap_users`.`phone` AS `phone`,`cap_users`.`website` AS `website`,`cap_users`.`activation_key` AS `activation_key`,`cap_users`.`image` AS `image`,`cap_users`.`bio` AS `bio`,`cap_users`.`status` AS `status`,`cap_users`.`gender` AS `gender`,`cap_users`.`updated` AS `updated`,`cap_users`.`updated_by` AS `updated_by`,`cap_users`.`created` AS `created`,`cap_users`.`timezone` AS `timezone`,`cap_users`.`created_by` AS `created_by` from `cap_users` union select `web_users`.`id` AS `id`,`web_users`.`role_id` AS `role_id`,`web_users`.`service_id` AS `service_id`,`web_users`.`first_name` AS `first_name`,`web_users`.`last_name` AS `last_name`,`web_users`.`username` AS `username`,`web_users`.`password` AS `password`,`web_users`.`name` AS `name`,`web_users`.`email` AS `email`,`web_users`.`phone` AS `phone`,`web_users`.`website` AS `website`,`web_users`.`activation_key` AS `activation_key`,`web_users`.`image` AS `image`,`web_users`.`bio` AS `bio`,`web_users`.`status` AS `status`,`web_users`.`gender` AS `gender`,`web_users`.`updated` AS `updated`,`web_users`.`updated_by` AS `updated_by`,`web_users`.`created` AS `created`,`web_users`.`timezone` AS `timezone`,`web_users`.`created_by` AS `created_by` from `web_users` ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adm_cities`
--
ALTER TABLE `adm_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Index pour la table `adm_countries`
--
ALTER TABLE `adm_countries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `adm_regions`
--
ALTER TABLE `adm_regions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `adm_schema_migrations`
--
ALTER TABLE `adm_schema_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cal_events`
--
ALTER TABLE `cal_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `cap_acos`
--
ALTER TABLE `cap_acos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cap_aros`
--
ALTER TABLE `cap_aros`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cap_aros_acos`
--
ALTER TABLE `cap_aros_acos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cap_blocks`
--
ALTER TABLE `cap_blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `block_alias` (`alias`);

--
-- Index pour la table `cap_dashboards`
--
ALTER TABLE `cap_dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cap_languages`
--
ALTER TABLE `cap_languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cap_regions`
--
ALTER TABLE `cap_regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `region_alias` (`alias`);

--
-- Index pour la table `cap_roles`
--
ALTER TABLE `cap_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_alias` (`alias`);

--
-- Index pour la table `cap_roles_users`
--
ALTER TABLE `cap_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pk_role_users` (`user_id`,`role_id`);

--
-- Index pour la table `cap_schema_migrations`
--
ALTER TABLE `cap_schema_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cap_settings`
--
ALTER TABLE `cap_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Index pour la table `cap_taxonomies`
--
ALTER TABLE `cap_taxonomies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cap_users`
--
ALTER TABLE `cap_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Index pour la table `cpm_companies`
--
ALTER TABLE `cpm_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `counselor_id` (`counselor_id`);

--
-- Index pour la table `cpm_companies_counselors`
--
ALTER TABLE `cpm_companies_counselors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counselor_id` (`counselor_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Index pour la table `cpm_companies_documents`
--
ALTER TABLE `cpm_companies_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `document_id` (`edocument_id`);

--
-- Index pour la table `cpm_edocuments`
--
ALTER TABLE `cpm_edocuments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cpm_employees`
--
ALTER TABLE `cpm_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Index pour la table `cpm_schema_migrations`
--
ALTER TABLE `cpm_schema_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `msm_messages`
--
ALTER TABLE `msm_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pfm_community_activities`
--
ALTER TABLE `pfm_community_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_community_activities_counselors1_idx` (`counselor_id`);

--
-- Index pour la table `pfm_counselors`
--
ALTER TABLE `pfm_counselors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Index pour la table `pfm_counselors_documents`
--
ALTER TABLE `pfm_counselors_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counselor_id` (`counselor_id`,`document_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Index pour la table `pfm_counselors_languages`
--
ALTER TABLE `pfm_counselors_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_languages_has_counselors_counselors1_idx` (`counselor_id`),
  ADD KEY `fk_languages_has_counselors_languages1_idx` (`language`);

--
-- Index pour la table `pfm_counselors_specialities`
--
ALTER TABLE `pfm_counselors_specialities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_counselors_has_specialities_specialities1_idx` (`speciality_id`),
  ADD KEY `fk_counselors_has_specialities_counselors1_idx` (`counselor_id`);

--
-- Index pour la table `pfm_diplomes`
--
ALTER TABLE `pfm_diplomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_diplomes_diplome_types1_idx` (`diplome_type_id`);

--
-- Index pour la table `pfm_diplome_types`
--
ALTER TABLE `pfm_diplome_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pfm_documents`
--
ALTER TABLE `pfm_documents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pfm_establishments`
--
ALTER TABLE `pfm_establishments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pfm_languages`
--
ALTER TABLE `pfm_languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pfm_official_specialities`
--
ALTER TABLE `pfm_official_specialities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pfm_professional_experiences`
--
ALTER TABLE `pfm_professional_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_professional_experiences_counselors1_idx` (`counselor_id`);

--
-- Index pour la table `pfm_publication_researches`
--
ALTER TABLE `pfm_publication_researches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_publication_research_counselors1_idx` (`counselor_id`);

--
-- Index pour la table `pfm_qualifications`
--
ALTER TABLE `pfm_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_qualifications_counselors_idx` (`counselor_id`),
  ADD KEY `fk_qualifications_diplomes1_idx` (`diplome_id`),
  ADD KEY `counselor_id` (`counselor_id`),
  ADD KEY `diplome_id` (`diplome_id`),
  ADD KEY `establishment_id` (`establishment_id`);

--
-- Index pour la table `pfm_schema_migrations`
--
ALTER TABLE `pfm_schema_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pfm_services`
--
ALTER TABLE `pfm_services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pfm_specialities`
--
ALTER TABLE `pfm_specialities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rqm_administrations`
--
ALTER TABLE `rqm_administrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rqm_final_judgments`
--
ALTER TABLE `rqm_final_judgments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_final_judgments_judgment_types1_idx` (`judgment_id`);

--
-- Index pour la table `rqm_judgments`
--
ALTER TABLE `rqm_judgments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rqm_meetings`
--
ALTER TABLE `rqm_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_meetings_users1_idx` (`user_id`);

--
-- Index pour la table `rqm_meetings_requests`
--
ALTER TABLE `rqm_meetings_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_requests_has_meetings_meetings1_idx` (`meeting_id`),
  ADD KEY `fk_requests_has_meetings_requests1_idx` (`request_id`),
  ADD KEY `fk_meeting_requests_judgment_types1_idx` (`judgment_id`);

--
-- Index pour la table `rqm_meetings_users`
--
ALTER TABLE `rqm_meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_meetings_users_users1_idx` (`user_id`),
  ADD KEY `fk_meetings_users_meetings1_idx` (`meeting_id`);

--
-- Index pour la table `rqm_members_requests`
--
ALTER TABLE `rqm_members_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_judgments_users1_idx` (`user_id`),
  ADD KEY `fk_judgments_requests1_idx` (`request_id`),
  ADD KEY `fk_judgments_judgment_types1_idx` (`judgment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `rqm_requests`
--
ALTER TABLE `rqm_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `fk_requests_counselors1_idx` (`requester_type`),
  ADD KEY `status_id` (`status_id`);

--
-- Index pour la table `rqm_requests_companies`
--
ALTER TABLE `rqm_requests_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`,`company_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Index pour la table `rqm_request_statuses`
--
ALTER TABLE `rqm_request_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_request_statuses_requests1_idx` (`request_id`),
  ADD KEY `fk_request_statuses_users1_idx` (`user_id`);

--
-- Index pour la table `rqm_schema_migrations`
--
ALTER TABLE `rqm_schema_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rqm_statuses`
--
ALTER TABLE `rqm_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_acos`
--
ALTER TABLE `web_acos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_aros`
--
ALTER TABLE `web_aros`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_aros_acos`
--
ALTER TABLE `web_aros_acos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_blocks`
--
ALTER TABLE `web_blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `block_alias` (`alias`);

--
-- Index pour la table `web_comments`
--
ALTER TABLE `web_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_fk` (`model`,`foreign_key`);

--
-- Index pour la table `web_contacts`
--
ALTER TABLE `web_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_dashboards`
--
ALTER TABLE `web_dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_languages`
--
ALTER TABLE `web_languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_links`
--
ALTER TABLE `web_links`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_menus`
--
ALTER TABLE `web_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_alias` (`alias`);

--
-- Index pour la table `web_messages`
--
ALTER TABLE `web_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_meta`
--
ALTER TABLE `web_meta`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_model_taxonomies`
--
ALTER TABLE `web_model_taxonomies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_nodes`
--
ALTER TABLE `web_nodes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_regions`
--
ALTER TABLE `web_regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `region_alias` (`alias`);

--
-- Index pour la table `web_roles`
--
ALTER TABLE `web_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_alias` (`alias`);

--
-- Index pour la table `web_roles_users`
--
ALTER TABLE `web_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pk_role_users` (`user_id`,`role_id`);

--
-- Index pour la table `web_schema_migrations`
--
ALTER TABLE `web_schema_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_settings`
--
ALTER TABLE `web_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Index pour la table `web_taxonomies`
--
ALTER TABLE `web_taxonomies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_terms`
--
ALTER TABLE `web_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Index pour la table `web_types`
--
ALTER TABLE `web_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_alias` (`alias`);

--
-- Index pour la table `web_types_vocabularies`
--
ALTER TABLE `web_types_vocabularies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_users`
--
ALTER TABLE `web_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `administration_id` (`service_id`);

--
-- Index pour la table `web_vocabularies`
--
ALTER TABLE `web_vocabularies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vocabulary_alias` (`alias`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adm_cities`
--
ALTER TABLE `adm_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;
--
-- AUTO_INCREMENT pour la table `adm_countries`
--
ALTER TABLE `adm_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `adm_regions`
--
ALTER TABLE `adm_regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `adm_schema_migrations`
--
ALTER TABLE `adm_schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `cal_events`
--
ALTER TABLE `cal_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cap_acos`
--
ALTER TABLE `cap_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;
--
-- AUTO_INCREMENT pour la table `cap_aros`
--
ALTER TABLE `cap_aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT pour la table `cap_aros_acos`
--
ALTER TABLE `cap_aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;
--
-- AUTO_INCREMENT pour la table `cap_blocks`
--
ALTER TABLE `cap_blocks`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cap_dashboards`
--
ALTER TABLE `cap_dashboards`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cap_languages`
--
ALTER TABLE `cap_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cap_regions`
--
ALTER TABLE `cap_regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `cap_roles`
--
ALTER TABLE `cap_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `cap_roles_users`
--
ALTER TABLE `cap_roles_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cap_schema_migrations`
--
ALTER TABLE `cap_schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `cap_settings`
--
ALTER TABLE `cap_settings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT pour la table `cap_taxonomies`
--
ALTER TABLE `cap_taxonomies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cap_users`
--
ALTER TABLE `cap_users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT pour la table `cpm_companies`
--
ALTER TABLE `cpm_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `cpm_companies_counselors`
--
ALTER TABLE `cpm_companies_counselors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cpm_companies_documents`
--
ALTER TABLE `cpm_companies_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT pour la table `cpm_edocuments`
--
ALTER TABLE `cpm_edocuments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `cpm_employees`
--
ALTER TABLE `cpm_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `cpm_schema_migrations`
--
ALTER TABLE `cpm_schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `msm_messages`
--
ALTER TABLE `msm_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `pfm_community_activities`
--
ALTER TABLE `pfm_community_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `pfm_counselors`
--
ALTER TABLE `pfm_counselors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT pour la table `pfm_counselors_documents`
--
ALTER TABLE `pfm_counselors_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=691;
--
-- AUTO_INCREMENT pour la table `pfm_counselors_languages`
--
ALTER TABLE `pfm_counselors_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;
--
-- AUTO_INCREMENT pour la table `pfm_counselors_specialities`
--
ALTER TABLE `pfm_counselors_specialities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pfm_diplomes`
--
ALTER TABLE `pfm_diplomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `pfm_diplome_types`
--
ALTER TABLE `pfm_diplome_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `pfm_documents`
--
ALTER TABLE `pfm_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `pfm_establishments`
--
ALTER TABLE `pfm_establishments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `pfm_languages`
--
ALTER TABLE `pfm_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pfm_official_specialities`
--
ALTER TABLE `pfm_official_specialities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `pfm_professional_experiences`
--
ALTER TABLE `pfm_professional_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;
--
-- AUTO_INCREMENT pour la table `pfm_publication_researches`
--
ALTER TABLE `pfm_publication_researches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `pfm_qualifications`
--
ALTER TABLE `pfm_qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;
--
-- AUTO_INCREMENT pour la table `pfm_schema_migrations`
--
ALTER TABLE `pfm_schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `pfm_services`
--
ALTER TABLE `pfm_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `pfm_specialities`
--
ALTER TABLE `pfm_specialities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT pour la table `rqm_administrations`
--
ALTER TABLE `rqm_administrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rqm_final_judgments`
--
ALTER TABLE `rqm_final_judgments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rqm_judgments`
--
ALTER TABLE `rqm_judgments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `rqm_meetings`
--
ALTER TABLE `rqm_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `rqm_meetings_requests`
--
ALTER TABLE `rqm_meetings_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT pour la table `rqm_meetings_users`
--
ALTER TABLE `rqm_meetings_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `rqm_members_requests`
--
ALTER TABLE `rqm_members_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `rqm_requests`
--
ALTER TABLE `rqm_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT pour la table `rqm_requests_companies`
--
ALTER TABLE `rqm_requests_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rqm_request_statuses`
--
ALTER TABLE `rqm_request_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
--
-- AUTO_INCREMENT pour la table `rqm_schema_migrations`
--
ALTER TABLE `rqm_schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `rqm_statuses`
--
ALTER TABLE `rqm_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `web_acos`
--
ALTER TABLE `web_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;
--
-- AUTO_INCREMENT pour la table `web_aros`
--
ALTER TABLE `web_aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=827;
--
-- AUTO_INCREMENT pour la table `web_aros_acos`
--
ALTER TABLE `web_aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `web_blocks`
--
ALTER TABLE `web_blocks`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `web_comments`
--
ALTER TABLE `web_comments`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `web_contacts`
--
ALTER TABLE `web_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `web_dashboards`
--
ALTER TABLE `web_dashboards`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `web_languages`
--
ALTER TABLE `web_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `web_links`
--
ALTER TABLE `web_links`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `web_menus`
--
ALTER TABLE `web_menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `web_messages`
--
ALTER TABLE `web_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `web_meta`
--
ALTER TABLE `web_meta`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `web_model_taxonomies`
--
ALTER TABLE `web_model_taxonomies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT pour la table `web_nodes`
--
ALTER TABLE `web_nodes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `web_regions`
--
ALTER TABLE `web_regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `web_roles`
--
ALTER TABLE `web_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `web_roles_users`
--
ALTER TABLE `web_roles_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `web_schema_migrations`
--
ALTER TABLE `web_schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `web_settings`
--
ALTER TABLE `web_settings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT pour la table `web_taxonomies`
--
ALTER TABLE `web_taxonomies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `web_terms`
--
ALTER TABLE `web_terms`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `web_types`
--
ALTER TABLE `web_types`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `web_types_vocabularies`
--
ALTER TABLE `web_types_vocabularies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `web_users`
--
ALTER TABLE `web_users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;
--
-- AUTO_INCREMENT pour la table `web_vocabularies`
--
ALTER TABLE `web_vocabularies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cal_events`
--
ALTER TABLE `cal_events`
  ADD CONSTRAINT `cal_events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `cap_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cpm_companies`
--
ALTER TABLE `cpm_companies`
  ADD CONSTRAINT `cpm_companies_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `adm_cities` (`id`),
  ADD CONSTRAINT `cpm_companies_ibfk_2` FOREIGN KEY (`counselor_id`) REFERENCES `pfm_counselors` (`id`);

--
-- Contraintes pour la table `cpm_companies_counselors`
--
ALTER TABLE `cpm_companies_counselors`
  ADD CONSTRAINT `cpm_companies_counselors_ibfk_1` FOREIGN KEY (`counselor_id`) REFERENCES `pfm_counselors` (`id`),
  ADD CONSTRAINT `cpm_companies_counselors_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `cpm_companies` (`id`);

--
-- Contraintes pour la table `cpm_companies_documents`
--
ALTER TABLE `cpm_companies_documents`
  ADD CONSTRAINT `cpm_companies_documents_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `cpm_companies` (`id`),
  ADD CONSTRAINT `cpm_companies_documents_ibfk_2` FOREIGN KEY (`edocument_id`) REFERENCES `cpm_edocuments` (`id`);

--
-- Contraintes pour la table `cpm_employees`
--
ALTER TABLE `cpm_employees`
  ADD CONSTRAINT `cpm_employees_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `cpm_companies` (`id`);

--
-- Contraintes pour la table `pfm_community_activities`
--
ALTER TABLE `pfm_community_activities`
  ADD CONSTRAINT `fk_community_activities_counselors1` FOREIGN KEY (`counselor_id`) REFERENCES `pfm_counselors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `pfm_counselors_documents`
--
ALTER TABLE `pfm_counselors_documents`
  ADD CONSTRAINT `pfm_counselors_documents_ibfk_1` FOREIGN KEY (`counselor_id`) REFERENCES `pfm_counselors` (`id`),
  ADD CONSTRAINT `pfm_counselors_documents_ibfk_2` FOREIGN KEY (`document_id`) REFERENCES `pfm_documents` (`id`);

--
-- Contraintes pour la table `pfm_counselors_languages`
--
ALTER TABLE `pfm_counselors_languages`
  ADD CONSTRAINT `fk_languages_has_counselors_counselors1` FOREIGN KEY (`counselor_id`) REFERENCES `pfm_counselors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `pfm_counselors_specialities`
--
ALTER TABLE `pfm_counselors_specialities`
  ADD CONSTRAINT `fk_counselors_has_specialities_counselors1` FOREIGN KEY (`counselor_id`) REFERENCES `pfm_counselors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_counselors_has_specialities_specialities1` FOREIGN KEY (`speciality_id`) REFERENCES `pfm_specialities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `pfm_diplomes`
--
ALTER TABLE `pfm_diplomes`
  ADD CONSTRAINT `fk_diplomes_diplome_types1` FOREIGN KEY (`diplome_type_id`) REFERENCES `pfm_diplome_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `pfm_professional_experiences`
--
ALTER TABLE `pfm_professional_experiences`
  ADD CONSTRAINT `pfm_professional_experiences_ibfk_1` FOREIGN KEY (`counselor_id`) REFERENCES `pfm_counselors` (`id`);

--
-- Contraintes pour la table `pfm_qualifications`
--
ALTER TABLE `pfm_qualifications`
  ADD CONSTRAINT `pfm_qualifications_ibfk_1` FOREIGN KEY (`counselor_id`) REFERENCES `pfm_counselors` (`id`),
  ADD CONSTRAINT `pfm_qualifications_ibfk_2` FOREIGN KEY (`diplome_id`) REFERENCES `pfm_diplomes` (`id`),
  ADD CONSTRAINT `pfm_qualifications_ibfk_4` FOREIGN KEY (`establishment_id`) REFERENCES `pfm_establishments` (`id`);

--
-- Contraintes pour la table `rqm_final_judgments`
--
ALTER TABLE `rqm_final_judgments`
  ADD CONSTRAINT `rqm_final_judgments_ibfk_1` FOREIGN KEY (`judgment_id`) REFERENCES `rqm_judgments` (`id`);

--
-- Contraintes pour la table `rqm_meetings`
--
ALTER TABLE `rqm_meetings`
  ADD CONSTRAINT `fk_meeting_users` FOREIGN KEY (`user_id`) REFERENCES `cap_users` (`id`);

--
-- Contraintes pour la table `rqm_meetings_requests`
--
ALTER TABLE `rqm_meetings_requests`
  ADD CONSTRAINT `rqm_meetings_requests_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `rqm_requests` (`id`),
  ADD CONSTRAINT `rqm_meetings_requests_ibfk_2` FOREIGN KEY (`meeting_id`) REFERENCES `rqm_meetings` (`id`),
  ADD CONSTRAINT `rqm_meetings_requests_ibfk_3` FOREIGN KEY (`judgment_id`) REFERENCES `rqm_judgments` (`id`);

--
-- Contraintes pour la table `rqm_meetings_users`
--
ALTER TABLE `rqm_meetings_users`
  ADD CONSTRAINT `fk_meetings_users_meetings1` FOREIGN KEY (`meeting_id`) REFERENCES `rqm_meetings` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_meetings_users_users1` FOREIGN KEY (`user_id`) REFERENCES `cap_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `rqm_members_requests`
--
ALTER TABLE `rqm_members_requests`
  ADD CONSTRAINT `rqm_members_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `cap_users` (`id`),
  ADD CONSTRAINT `rqm_members_requests_ibfk_2` FOREIGN KEY (`request_id`) REFERENCES `rqm_requests` (`id`),
  ADD CONSTRAINT `rqm_members_requests_ibfk_3` FOREIGN KEY (`judgment_id`) REFERENCES `rqm_judgments` (`id`);

--
-- Contraintes pour la table `rqm_requests`
--
ALTER TABLE `rqm_requests`
  ADD CONSTRAINT `rqm_requests_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `rqm_statuses` (`id`);

--
-- Contraintes pour la table `rqm_requests_companies`
--
ALTER TABLE `rqm_requests_companies`
  ADD CONSTRAINT `rqm_requests_companies_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `rqm_requests` (`id`),
  ADD CONSTRAINT `rqm_requests_companies_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `cpm_companies` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
