-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 27 Février 2017 à 20:14
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  5.6.30

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
-- (Voir ci-dessous la vue réelle)
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
,`bio` mediumtext
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
(12, 'Meeting.invitation_email_body', 'Vous êtes conviés à la réunion de traitement des demandes d\' agéement', 'Message', '', 'textarea', 1, 7, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:38:12', 1),
(13, 'Meeting.invitation_email_subject', 'Réunion de traitement des demandes d\'agréement', 'Sujet de l\'email d\'invitation pour une réunion', '', 'text', 1, 6, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:36:28', 1),
(14, 'Meeting.invitation_email_body_edition', 'La réunion de traitement des demandes d\'agréement du {0} à été repalnifié le {1}', 'Message', '', 'textarea', 1, 9, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:38:30', 1),
(15, 'Meeting.invitation_email_subject_edition', 'Changement de la date de réunion', 'Sujet de l\'email de changement de la date de réunion', '', '', 1, 8, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:37:12', 1),
(16, 'Service.akismet_key', 'your-key', '', '', '', 1, 11, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(17, 'Service.recaptcha_public_key', 'your-public-key', '', '', '', 1, 12, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(18, 'Service.recaptcha_private_key', 'your-private-key', '', '', '', 1, 13, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(19, 'Service.akismet_url', 'http://your-blog.com', '', '', '', 1, 10, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(22, 'Reading.nodes_per_page', '5', '', '', '', 1, 14, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(24, 'Meeting.cancellation_email_body', 'La réunion de traitement des demandes d\'agréement palnifié le {1} a été annulé.', 'Message', '', 'textarea', 1, 16, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:42:20', 1),
(25, 'Meeting.member_dismiss_subject', 'Révocation de la liste des invitées au réunion de traitement des dossiers des agréements ', 'Sujet de l\'email de la révocation d\'un membre de commission', '', 'text', 1, 17, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:40:43', 1),
(26, 'Site.locale', 'fra', '', '', 'text', 1, 18, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:39:16', 1),
(27, 'Reading.date_time_format', 'D, M d Y H:i:s', '', '', '', 1, 19, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:39:12', 1),
(28, 'Meeting.member_dismiss_body', 'Vous êtes révoqué du réunion de traitement des demandes d\' agréement planifié le {1}. ', 'Message', '', 'textarea', 1, 20, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:42:00', 1),
(29, 'Site.timezone', 'UTC', '', 'Provide a valid timezone identifier as specified in https://php.net/manual/en/timezones.php', '', 1, 4, '', '2015-07-07 02:14:01', NULL, '2015-07-12 03:45:20', 1),
(32, 'Hook.bootstraps', 'Settings,Users,Blocks,RequestManagment,ProfileManagment,AddressesManagement,CompanyManagment,MessageManagment,UserManagment,CalendarManagment,Dashboard', '', '', '', 0, 21, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:38:55', 1),
(33, 'Meeting.cancellation_email_subject', 'Annulation d\'une réunion', 'Sujet d\'email Annulation d\'une réunion', '', 'text', 1, 15, '', '2015-07-07 02:14:01', NULL, '2015-09-27 19:39:45', 1),
(34, 'Access Control.multiRole', '0', 'Enable Multiple Roles', '', 'checkbox', 1, 22, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(35, 'Access Control.rowLevel', '0', 'Row Level Access Control', '', 'checkbox', 1, 23, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(36, 'Access Control.autoLoginDuration', '+1 week', '\"Remember Me\" Duration', 'Eg: +1 day, +1 week. Leave empty to disable.', 'text', 1, 24, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(37, 'Access Control.models', '', 'Models with Row Level Acl', 'Select models to activate Row Level Access Control on', 'multiple', 1, 23, 'multiple=checkbox\noptions={\"Nodes.Node\": \"Node\", \"Blocks.Block\": \"Block\", \"Menus.Menu\": \"Menu\", \"Menus.Link\": \"Link\"}', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(38, 'Site.ipWhitelist', '127.0.0.1', 'Whitelisted IP Addresses', 'Separate multiple IP addresses with comma', 'text', 1, 24, '', '2015-07-07 02:14:01', NULL, '2015-07-12 03:45:20', 1),
(39, 'Site.asset_timestamp', 'force', 'Asset timestamp', 'Appends a timestamp which is last modified time of the particular file at the end of asset files URLs (CSS, JavaScript, Image). Useful to prevent visitors to visit the site with an outdated version of these files in their browser cache.', 'radio', 1, 25, 'options={\"0\": \"Disabled\", \"1\": \"Enabled in debug mode only\", \"force\": \"Always enabled\"}', '2015-07-07 02:14:01', NULL, '2015-07-12 03:45:20', 1),
(40, 'Site.admin_theme', '', 'Administration Theme', '', 'text', 1, 26, '', '2015-07-07 02:14:01', NULL, '2015-07-12 03:45:20', 1),
(41, 'Site.home_url', '/admin', 'Home Url', 'Default action for home page in link string format.', 'text', 1, 27, '', '2015-07-07 02:14:01', NULL, '2015-09-17 21:58:05', 1),
(42, 'Croogo.installed', '1', '', '', '', 0, 28, '', '2015-07-07 02:15:17', NULL, '2015-07-07 02:15:17', NULL),
(43, 'Croogo.version', '2.2.2', '', '', '', 0, 29, '', '2015-07-07 02:48:17', 1, '2015-07-07 02:48:17', 1),
(44, 'Site.direction', 'ltr', 'Orientation du site (LTR ou RTL)', '', 'radio', 1, 30, 'options={\"rtl\": \"RTL\", \"ltr\": \"LTR\"}', '2015-07-07 03:14:49', 1, '2015-07-12 03:45:20', 1),
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
(1, 1, 1, 'ismail', 'kotbi', 'admin', '0edae1ee7015de96751115e59bc90341f56e8037', 'admin', 'mohamed.hamidi@gmail.com', NULL, NULL, '8bf15d797415465ef7f67a6f1b13a526', NULL, NULL, 1, '', '2015-07-07 02:15:16', NULL, '2015-07-07 02:15:16', '0', NULL),
(51, 11, 1, 'directeur', 'directeur', 'directeur', '9555cabec4152c6aac2e82bafed55480d4c3d74a', '', 'directeur@gmail.com', NULL, NULL, '', NULL, NULL, 1, '', '2015-09-20 16:36:55', 44, '2015-09-20 16:36:55', '0', 44),
(54, 9, 4, 'touria', 'dahman saidi', 'touria', '0edae1ee7015de96751115e59bc90341f56e8037', 'Dahmane touria', 'dahmansaiditouria@gmail.com', NULL, '', 'e8862f091f2f6e9fc1884d0aaf9f6550', NULL, NULL, 1, NULL, '2015-12-21 17:45:20', 58, '2015-12-21 17:12:48', 'Africa/Casablanca', 1),
(57, 11, 4, 'jawad', 'BAHAJI', 'bahaji', '9555cabec4152c6aac2e82bafed55480d4c3d74a', 'jawad bahaji', 'jbahaji@gmail.com', NULL, '', '03500bd8fa4962c0a2cdbbc54c459497', NULL, NULL, 1, NULL, '2016-01-07 09:37:27', 58, '2015-12-21 17:37:21', 'Africa/Casablanca', 1),
(58, 11, 4, 'Noura ', 'tlamsani nora', 'noura', '0edae1ee7015de96751115e59bc90341f56e8037', 'Kalaï Tlamsani Noura', 'tlamsani.nora@gmail.com', NULL, '', 'e2646b9ee923690ecb64be1b1d2d5e68', NULL, NULL, 1, NULL, '2015-12-21 17:43:43', 58, '2015-12-21 17:38:36', 'Africa/Casablanca', 1),
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
(73, 12, 1, 'ministre', 'ministre', 'ministre', '0edae1ee7015de96751115e59bc90341f56e8037', '', 'ministre@gmail.com', NULL, NULL, '', NULL, NULL, 1, NULL, '2016-01-07 14:58:21', 57, '2016-01-07 14:58:21', '0', 57),
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
(1, 'Délégation de pouvoir', 'ti-wand', 'Téléversez svp le document de délégation de pouvoir', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00'),
(2, 'Inscription CNSS', 'ti-pencil-alt', 'Téléversez svp le document de l\'nscription à la CNSS', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00'),
(3, 'Registre de commerce', 'ti-agenda', 'Téléversez svp le document de registre de commerce', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00');

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
  `created` datetime NOT NULL,
  `contact_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'CIN', 'ti-id-badge', 'Téléversez svp une copie de votre CIN', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00'),
(2, 'Diplôme', 'ti-medall', 'Téléversez svp une copie de votre diplôme', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00'),
(3, 'Fiche anthropométrique  ou casier judiciaire', 'ti-file', 'Téléversez svp une copie de votre fiche anthropométrique  ou casier judiciaire', 'jpg,jpeg,png', '2015-07-24 00:00:00', '2015-07-24 00:00:00');

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
(33, 'Ecole Nationale d\'Agriculture de Meknès', 'ENA Meknès', NULL, '2016-01-04 11:53:22', '2016-01-04 11:53:22'),
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
(1, 'Protection des Cultures et de l\'Environnement', '2016-01-19 10:10:56', '2016-04-18 09:22:27'),
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
(1, 'Ministère de l\'Enseignement Supérieur, de la Recherche Scientifique et de la Formation des Cadres/Direction des Affaires Juridiques, des Equivalences et du contentieux', 'DAJEC', '', '2015-07-23 00:00:00', '2016-04-18 12:50:51'),
(2, 'La Direction de l\'Irrigation et de l\'Aménagement de l\'Espace Agricole ', 'DIAEA', '', '2015-09-03 11:55:56', '2015-12-21 17:09:21'),
(3, 'La Direction du Développement des Filières de Production ', 'DDFP', '', '2015-09-03 21:37:08', '2015-12-21 17:07:13'),
(4, 'La Direction de l\'Enseignement, de la Formation et de la Recherche', 'DEFR', '', '2015-09-03 21:44:55', '2015-12-21 17:06:01'),
(6, 'Ministère de l\'Education Nationale et de la Formation Professionnelle/ Direction des Affaires Juridiques et du Contentieux', 'DAJC', NULL, '2015-12-21 17:12:28', '2016-04-18 12:51:57'),
(7, 'L\'Office National du Conseil Agricole ', 'ONCA', NULL, '2015-12-21 17:16:13', '2015-12-21 17:16:13'),
(8, 'L’Office National de Sécurité Sanitaire des Produits Alimentaires', 'ONSSPA', NULL, '2015-12-21 17:17:06', '2015-12-21 17:17:06'),
(9, 'L’Institut National de la Recherche Agronomique ', 'INRA', NULL, '2015-12-21 17:17:29', '2015-12-21 17:17:29'),
(10, 'L’Institut Agronomique et Vétérinaire Hassan II ', 'IAV', NULL, '2015-12-21 17:18:05', '2015-12-21 17:18:05'),
(11, 'L’Ecole Nationale d’Agriculture de Meknès', 'ENAM', NULL, '2015-12-21 17:18:34', '2015-12-21 17:18:34'),
(12, 'La Fédération des Chambres d\'Agriculture', 'FECAM', NULL, '2015-12-21 17:20:54', '2016-04-18 12:55:01'),
(13, 'La Fédération Interprofessionnelle des Producteurs et exportateurs de Fruits et Légumes ', 'FIFEL', NULL, '2015-12-21 17:22:22', '2016-04-18 13:06:39'),
(14, 'La Fédération Interprofessionnelle des Viandes Rouges ', 'FIVIAR', NULL, '2015-12-21 17:22:55', '2016-04-18 13:07:10'),
(15, 'La Fédération Interprofessionnelle des Céréales', 'FIAC', NULL, '2015-12-21 17:23:23', '2016-04-18 13:10:16'),
(18, 'Confédération Marocaine de l\'Agriculture et du Développement Rural', 'COMADER', NULL, '2016-04-18 13:18:01', '2016-04-18 13:18:01'),
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
(7, 'Protection des Plantes et de l\'Environnement', 1, '2015-12-21 16:24:25', '2016-04-18 09:33:53'),
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
(27, 'Gestion et Maitrise de L\'eau', 10, '2016-01-04 16:40:23', '2016-01-19 10:37:01'),
(28, 'Electromécanique', 10, '2016-01-04 16:40:32', '2016-01-19 10:55:36'),
(29, 'Machinisme agricole', 10, '2016-01-04 16:41:17', '2016-01-19 10:56:18'),
(30, 'Agronomie', 8, '2016-01-04 16:41:42', '2016-01-19 10:57:04'),
(31, 'Technico-commercial en Agroéquipement', 2, '2016-01-04 16:41:59', '2016-04-18 09:45:24'),
(33, 'Arboriculture', 8, '2016-01-04 16:42:25', '2016-01-19 10:58:17'),
(34, 'Qualité des Produits Animaux et d\'Origine Animale', 12, '2016-01-04 16:42:44', '2016-01-19 10:58:40'),
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
(66, 'Installation des systèmes d\'irrigation', 10, '2016-01-15 16:12:06', '2016-01-19 11:26:53'),
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
(4, 'En cour d\'etude par la CNCAP', 'commission', 5, '2015-07-29 00:00:00', '2015-07-29 00:00:00'),
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
(2, 3, 'Role', 2, 'Role-registered', 2, 1697),
(3, NULL, 'Role', 3, 'Role-public', 1, 1698),
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
(826, 2, 'User', 821, NULL, 1649, 1650),
(827, 2, 'User', 822, NULL, 1651, 1652),
(828, 2, 'User', 823, NULL, 1653, 1654),
(829, 2, 'User', 824, NULL, 1655, 1656),
(830, 2, 'User', 825, NULL, 1657, 1658),
(831, 2, 'User', 826, NULL, 1659, 1660),
(832, 2, 'User', 827, NULL, 1661, 1662),
(833, 2, 'User', 828, NULL, 1663, 1664),
(834, 2, 'User', 829, NULL, 1665, 1666),
(835, 2, 'User', 830, NULL, 1667, 1668),
(836, 2, 'User', 831, NULL, 1669, 1670),
(837, 2, 'User', 832, NULL, 1671, 1672),
(838, 2, 'User', 833, NULL, 1673, 1674),
(839, 2, 'User', 834, NULL, 1675, 1676),
(840, 2, 'User', 835, NULL, 1677, 1678),
(841, 2, 'User', 836, NULL, 1679, 1680),
(842, 2, 'User', 837, NULL, 1681, 1682),
(843, 2, 'User', 838, NULL, 1683, 1684),
(844, 2, 'User', 839, NULL, 1685, 1686),
(845, 2, 'User', 793, NULL, 1687, 1688),
(846, 2, 'User', 794, NULL, 1689, 1690),
(847, 2, 'User', 795, NULL, 1691, 1692),
(848, 2, 'User', 796, NULL, 1693, 1694),
(849, 2, 'User', 797, NULL, 1695, 1696);

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
(7, 4, 'Categories', 'categories', '[vocabulary:categories type=\"blog\"]', 1, '', 0, 3, '', '', '', '', '', NULL, NULL, '2015-08-03 04:35:09', 1, '2009-10-03 16:52:50', NULL),
(8, 4, 'Search', 'search', '', 0, '', 0, 1, 'Nodes.search', '', '', '', '', NULL, NULL, '2015-08-03 04:35:08', 1, '2009-12-20 03:07:27', NULL),
(9, 4, 'Recent Posts', 'recent_posts', '[node:recent_posts conditions=\"Node.type:blog\" order=\"Node.id DESC\" limit=\"5\"]', 1, '', 0, 5, '', '', '', '', '', NULL, NULL, '2015-08-03 04:35:11', 1, '2009-12-22 05:17:32', NULL),
(10, 7, 'Header', 'Header', '', 0, '', 1, 7, 'header', '', '', NULL, '', NULL, NULL, '2015-08-03 04:02:20', 1, '2015-07-12 00:44:39', 1),
(11, 9, 'Menu', 'menu', '', 0, '', 1, 8, 'menu', '', '', NULL, '', NULL, NULL, '2015-07-12 00:50:34', 1, '2015-07-12 00:50:34', 1),
(12, 10, 'Slider', 'slider', '', 0, '', 1, 9, 'slider', '', '', NULL, '', NULL, NULL, '2015-09-29 11:53:41', 1, '2015-07-12 00:51:53', 1),
(13, 11, 'Créer un compte utilisateur', 'add_account', '<div class=\"four columns \">\r\n	<div class=\"column-service-title-wrapper\">\r\n		<div class=\"span4 fp-one\">\r\n			<div class=\"widget-front\">\r\n				<h2>1 - Créer un compte utilisateur </h2>\r\n				<div class=\"thumb-wrapper \">\r\n					<a class=\"round-div\" href=\"#\" title=\"Créer un compte utilisateur\"></a>\r\n<img src=\"/capwebsite/theme/Cap/img/account-icon.jpg\" style=\"width:auto; height:250px;left: 2px; top: 1px;\" alt=\"\">\r\n</div>	\r\n			</div><!-- /.widget-front -->\r\n		</div>\r\n	</div>\r\n</div>', 0, '', 1, 10, '', '', '', NULL, '', NULL, NULL, '2015-09-29 01:19:56', 1, '2015-07-12 01:01:29', 1),
(14, 11, 'Completer votre profil', 'complet_profile', '				<div class=\"four columns \">\r\n					<div class=\"column-service-title-wrapper\">\r\n						<div class=\"span4 fp-two\">\r\n							<div class=\"widget-front\">\r\n								<h2>2 - Completer votre profil </h2>\r\n								<div class=\"thumb-wrapper \">\r\n									<a class=\"round-div\" href=\"#\" title=\"Déposer votre dossier\"></a>\r\n								 <img src=\"/capwebsite/theme/Cap/img/request.jpg\" style=\"width:auto; height:250px;left: 2px; top: 1px;\" alt=\"\">								</div>\r\n								\r\n							</div><!-- /.widget-front -->\r\n						</div>\r\n					</div>\r\n				</div>', 0, '', 1, 11, '', '', '', NULL, '', NULL, NULL, '2015-09-29 01:20:14', 1, '2015-07-12 01:05:23', 1),
(15, 11, 'Déposer votre dossier', 'deposer_dossier', '				<div class=\"four columns \">\r\n					<div class=\"column-service-title-wrapper\">\r\n						<div class=\"span4 fp-three\">\r\n							<div class=\"widget-front\">\r\n								<h2>3 - Déposer votre dossier </h2>\r\n								<div class=\"thumb-wrapper \">\r\n									<a class=\"round-div\" href=\"#\" title=\"Suivi votre demande en ligne\"></a>\r\n<img src=\"/capwebsite/theme/Cap/img/icon-timeline-inactive.png\" style=\"width:auto; height:250px;left: 2px; top: 1px;\" alt=\"\">\r\n								</div>\r\n								\r\n							</div><!-- /.widget-front -->\r\n						</div>\r\n					</div>\r\n				</div>', 0, '', 1, 12, '', '', '', NULL, '', NULL, NULL, '2015-09-29 01:20:28', 1, '2015-07-12 01:10:04', 1),
(16, 12, 'Champs d’activités', 'champs_activity', '				<div class=\"four columns \">\r\n					<div class=\"column-service-wrapper\">\r\n						<div class=\"column-service-title-wrapper\">\r\n							<h2 class=\"column-service-title\">Champs d’activités</h2>\r\n							<div class=\"column-service-caption\">\r\n								Les conseillers se répartissent dans trois grandes spécialités : agronomie-environnement économie-gestion d’entreprise développement territorial.\r\n							</div>\r\n							<a class=\"gdl-button\" href=\"#\">Lire la suite</a>\r\n						</div>\r\n					</div>\r\n				</div>', 0, '', 1, 13, '', '', '', NULL, '', NULL, NULL, '2015-07-12 01:19:22', 1, '2015-07-12 01:19:22', 1),
(17, 12, 'Compétences requises', 'competences_requises', '				<div class=\"four columns \">\r\n					<div class=\"column-service-wrapper\">\r\n						<div class=\"column-service-title-wrapper\">\r\n							<h2 class=\"column-service-title\">Compétences requises</h2>\r\n							<div class=\"column-service-caption\">\r\n								Avoir un bon bagage technique Pour réaliser des études et des expérimentations (tests de culture, de produits phytosanitaires&#8230;) et élaborer des [&hellip;]\r\n							</div>\r\n							<a class=\"gdl-button\" href=\"#\">Lire la suite</a>\r\n						</div>\r\n					</div>\r\n				</div>', 0, '', 1, 14, '', '', '', NULL, '', NULL, NULL, '2015-07-12 01:19:55', 1, '2015-07-12 01:19:55', 1),
(18, 12, 'Mission de conseiller agricole', 'mission_conseiller', '				<div class=\"four columns \">\r\n					<div class=\"column-service-wrapper\">\r\n						<div class=\"column-service-title-wrapper\">\r\n							<h2 class=\"column-service-title\">Mission de conseiller agricole</h2>\r\n							<div class=\"column-service-caption\">\r\n								Le conseiller agricole aide les exploitations agricoles à améliorer la quantité et la qualité de leur production (végétale ou animale) ou leurs [&hellip;]\r\n							</div>\r\n							<a class=\"gdl-button\" href=\"#\">Lire la suite</a>\r\n						</div>\r\n					</div>\r\n				</div>', 0, '', 1, 15, '', '', '', NULL, '', NULL, NULL, '2015-07-12 01:20:36', 1, '2015-07-12 01:20:36', 1),
(19, 13, 'Gallery', 'gallery', '', 0, '', 1, 16, 'gallery', '', '', NULL, '', NULL, NULL, '2015-07-12 01:28:02', 1, '2015-07-12 01:28:02', 1),
(20, 14, 'Objectifs', 'objectifs', '', 0, '', 1, 17, 'objectifs', '', '', NULL, '', NULL, NULL, '2015-07-12 04:07:05', 1, '2015-07-12 04:07:05', 1),
(21, 8, 'Footer', 'footer', '', 0, '', 1, 18, 'footer', '', '', NULL, '', NULL, NULL, '2015-07-12 23:19:40', 1, '2015-07-12 23:19:40', 1),
(22, 15, 'Copyright', 'copyright', '', 0, '', 1, 19, 'copyright', '', '', NULL, '', NULL, NULL, '2015-07-12 23:20:07', 1, '2015-07-12 23:20:07', 1),
(23, 16, 'Contact info', 'contact_info', '', 0, '', 1, 20, 'contact_info', '', '', NULL, '', NULL, NULL, '2015-07-14 02:37:58', 1, '2015-07-13 01:15:32', 1),
(24, 3, 'Map', 'map', '', 0, '', 1, 21, 'map', '', '', NULL, '', NULL, NULL, '2015-11-04 13:06:44', 1, '2015-07-13 01:19:10', 1),
(25, 16, 'Centre d\'information', 'centre-information', '		<div class=\"custom-sidebar\">\r\n			<h3 class=\"custom-sidebar-title gdl-border-x bottom\">\r\n				Centre d\'information\r\n			</h3>\r\n			<div class=\"textwidget\">\r\n				<img src=\"/capwebsite/theme/CapAdmin/img/centre-information-fr.gif\" style=\"width:200px;\" alt=\"\">\r\n			</div>\r\n		</div>', 0, '', 1, 24, '', '', '', NULL, '', NULL, NULL, '2015-11-24 18:48:34', 1, '2015-07-18 03:15:10', 1),
(26, 16, 'Partenariat', 'partenariat', '', 0, '', 1, 23, 'partenariat', '', '', NULL, '', NULL, NULL, '2015-11-24 18:48:34', 1, '2015-07-18 03:39:55', 1),
(27, 16, 'Spots Vidéo', 'spots-video', '		<div class=\"custom-sidebar\">\r\n			<h3 class=\"custom-sidebar-title gdl-border-x bottom\">\r\n				Spots Vidéo\r\n			</h3>\r\n			<div class=\"textwidget\">\r\n<iframe width=\"200\" height=\"200\" src=\"https://www.youtube.com/embed/tDYA3mnKsxE?list=PLdFvlCAa2mGPp7sYIirwRNLhXIiw4Ng8y\" frameborder=\"0\" allowfullscreen></iframe>\r\n			</div>\r\n		</div>', 0, '', 1, 22, '', '', '', NULL, '', NULL, NULL, '2015-11-24 18:48:25', 1, '2015-07-18 04:45:34', 1),
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
(1, 'Contact', 'contact', 'Pour tout renseignement complémentaire n\'hésitez pas à nous contacter', '', '', '', '', '', '', '', '', '', 'm.elbakai@gmail.com', 1, 1, 5, 0, 0, 1, 1, '2015-07-13 02:02:19', 1, '2009-09-16 01:45:17', NULL);

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
(11, NULL, 5, 'Log out', 'log-out', '', '/plugin:users/controller:users/action:logout', '', '', 1, 7, 8, '[\"1\",\"2\"]', '', NULL, NULL, '2009-09-12 06:35:22', NULL, '2009-09-12 06:34:41', NULL),
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
(10, NULL, 1, 'Le Conseil Agricole', 'le-conseil-agricole', '<p>La nouvelle strat&eacute;gie relative au d&eacute;veloppement du &laquo; Conseil Agricole &raquo; a &eacute;t&eacute; &eacute;labor&eacute;e par le D&eacute;partement de l&#39;Agriculture avec pour objectif l&#39;accompagnement des agriculteurs et le transfert du savoir-faire agricole sur le terrain.</p>\r\n\r\n<p><span style=\"line-height: 1.6em;\">Cette strat&eacute;gie vient pallier les nombreuses d&eacute;ficiences constat&eacute;es dans le dispositif dit de &quot; vulgarisation&quot;, qui p&ecirc;chait par sa faible couverture r&eacute;gionale, ses moyens inadapt&eacute;s, et la faiblesse des ressources humaines et financi&egrave;res qui lui sont consacr&eacute;es.</span></p>\r\n\r\n<p><span style=\"line-height: 1.6em;\">Le lancement de cette strat&eacute;gie sous sa nouvelle appellation de &quot;Conseil Agricole&quot;, marque donc une rupture qui vise la valorisation de ce maillon essentiel et incontournable de la cha&icirc;ne de production en vue de la modernisation des pratiques des agriculteurs. Inspir&eacute;e de plusieurs exp&eacute;riences internationales, la nouvelle strat&eacute;gie de &laquo;Conseil agricole &raquo; s&#39;articule autour de 3 axes :</span></p>\r\n\r\n<p><span style=\"line-height: 1.6em;\">Le d&eacute;veloppement du conseil agricole priv&eacute;, en le dotant d&rsquo;un cadre l&eacute;gal appropri&eacute;, et le subventionnement d&eacute;gressif des prestations de conseil agricoles sous certaines conditions. La pluralit&eacute; des acteurs de Conseil Agricole, ainsi consacr&eacute;e, devra stimuler la performance des Conseillers et &agrave; am&eacute;liorer le service aux agriculteurs, en adaptant l&#39;offre &agrave; leurs besoins sp&eacute;cifiques.</span></p>\r\n\r\n<p><span style=\"line-height: 1.6em;\">La redynamisation des services de l&#39;Etat &agrave; travers la modernisation des structures de proximit&eacute;, la restructuration du r&eacute;seau autour de 16 Centres R&eacute;gionaux, le renforcement et formation des effectifs de conseillers et la mise en place de nouveaux outils modernes de communication et de gestion des connaissances.</span></p>\r\n\r\n<p><span style=\"line-height: 1.6em;\">La responsabilisation des instances repr&eacute;sentatives des agriculteurs (chambres d&rsquo;Agriculture et interprofessions) &agrave; travers un engagement contractuel sur une feuille de route et le renforcement de la coordination globale du dispositif.</span></p>\r\n\r\n<p><span style=\"line-height: 1.6em;\">La nouvelle strat&eacute;gie de Conseil agricole pr&eacute;voit &eacute;galement la mise en place d&rsquo;outils d&rsquo;information et de communication moderne afin de g&eacute;n&eacute;raliser l&rsquo;information agricole. Un centre d&rsquo;appel, des sites Internet, des programmes sp&eacute;cialis&eacute;s sur les m&eacute;dias de masse sont ainsi pr&eacute;vus dans le dispositif mis en place par le D&eacute;partement de l&rsquo;Agriculture.</span></p>\r\n\r\n<p><span style=\"line-height: 1.6em;\">Ainsi, le nouveau dispositif permettra &agrave; l&#39;Etat de continuer &agrave; garantir un service public de proximit&eacute; pour tous les agriculteurs, tout en r&eacute;gulant et en incitant le d&eacute;veloppement du conseil agricole priv&eacute;.</span></p>\r\n', 'La nouvelle stratégie relative au développement du « Conseil Agricole » a été élaborée par le Département de l\'Agriculture avec pour objectif l\'accompagnement des agriculteurs et le transfert du savoir-faire agricole sur le terrain.', 1, NULL, 2, 0, 0, '/node/le-conseil-agricole', '{\"6\":\"actualites\"}', 0, 1, 2, '', 'node', NULL, NULL, '2015-07-14 18:09:18', 1, '2015-07-11 02:20:43', 1, 'conseiller-agricole.jpg', NULL, NULL, NULL),
(14, NULL, 1, 'Conseillers agricoles', 'conseillers-agricoles', '<p><span style=\"line-height: 1.6em;\">Cherchez parmi les conseillers d&#39;agriculture au Maroc les profils qui vous int&eacute;ressent, p</span><span style=\"line-height: 1.6em;\">roposez-leur de vous rencontrer, selon vos objectifs.</span></p>\r\n', 'Rencontrez des conseillers proches de vous', 1, NULL, 2, 0, 0, '/node/conseillers-agricoles', '{\"4\":\"gallery\"}', 0, 1, 2, '', 'node', NULL, NULL, '2015-08-02 20:30:04', 1, '2015-07-14 01:12:45', 1, 'SAM_0545.jpg', '', '', NULL),
(15, NULL, 1, 'Conseil technique', 'conseil-technique-gallery', '<p>Consiste &agrave; assister l&rsquo;agriculteur dans le transfert et la maitrise des techniques de production agricole de l&rsquo;amont &agrave; l&rsquo;aval de la fili&egrave;re</p>\r\n', 'Consiste à assister l’agriculteur dans le transfert et la maitrise des techniques de production agricole de l’amont à l’aval de la filière', 1, NULL, 2, 0, 0, '/node/conseil-technique-gallery', '{\"4\":\"gallery\"}', 0, 3, 4, '', 'node', NULL, NULL, '2015-08-02 20:28:27', 1, '2015-07-14 01:13:10', 1, 'conseiller-agricole.jpg', '', '', ''),
(16, NULL, 1, 'Information et formation', 'information-et-formation', '<p>Lors de r&eacute;unions techniques, le conseiller agricole informe des groupes d&#39;agriculteurs. Il r&eacute;dige des rapports, transmet les r&eacute;sultats de la recherche agronomique aux producteurs, et les sensibilise aux probl&eacute;matiques de l&#39;environnement, des crises sanitaires et de la fluctuation des prix. Il organise aussi des sessions de formation portant sur divers th&egrave;mes&nbsp;: la comptabilit&eacute; et la gestion, le passage vers une agriculture raisonn&eacute;e, le montage de demandes de subventions, etc.</p>\r\n', 'Information et formation, Lors de réunions techniques, le conseiller agricole informe des groupes d\'agriculteurs.', 1, 'image/jpeg', 2, 0, 0, '/node/information-et-formation', '{\"4\":\"gallery\"}', 0, 5, 6, '', 'node', NULL, NULL, '2015-08-02 20:45:30', 1, '2015-07-14 01:14:22', 1, 'SAM_0498-0.jpg', '152542', 'uploads/node/images', NULL),
(23, NULL, 1, 'A propos', 'a-propos', '<p>Donec sed odio dui. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Donec ullamcorper nulla non metus auctor fringilla. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Aenean eu leo quam.</p>\r\n\r\n<p>Donec id elit non mi porta gravida at eget metus. Aenean lacinia bibendum nulla sed consectetur. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec ullamcorper nulla non metus auctor fringilla. Donec ullamcorper nulla non metus auctor fringilla. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>\r\n\r\n<blockquote class=\"center\">\r\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla.</p>\r\n</blockquote>\r\n\r\n<p>Pellentesque ornare sem lacinia quam venenatis vestibulum. Aenean lacinia bibendum nulla sed consectetur.Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id elit non mi porta gravida at eget metus. Vestibulum id ligula porta felis euismod semper. Vestibulum id ligula porta felis euismod semper.</p>\r\n\r\n<p>Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n', 'A propos', 1, NULL, 1, 0, 0, '/a-propos', '', 0, 7, 8, '', 'page', NULL, NULL, '2015-07-14 13:03:23', 1, '2015-07-14 02:13:47', 1, 'onca.jpg', NULL, NULL, NULL),
(24, NULL, 1, 'Support', 'support', '<p>Donec sed odio dui. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Donec ullamcorper nulla non metus auctor fringilla. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Aenean eu leo quam.</p>\r\n\r\n<p>Donec id elit non mi porta gravida at eget metus. Aenean lacinia bibendum nulla sed consectetur. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec ullamcorper nulla non metus auctor fringilla. Donec ullamcorper nulla non metus auctor fringilla. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>\r\n\r\n<blockquote class=\"center\">\r\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla.</p>\r\n</blockquote>\r\n\r\n<p>Pellentesque ornare sem lacinia quam venenatis vestibulum. Aenean lacinia bibendum nulla sed consectetur.Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id elit non mi porta gravida at eget metus. Vestibulum id ligula porta felis euismod semper. Vestibulum id ligula porta felis euismod semper.</p>\r\n\r\n<p>Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n', 'Support', 1, NULL, 1, 0, 0, '/support', '', 0, 9, 10, '', 'page', NULL, NULL, '2015-07-14 13:08:55', 1, '2015-07-14 02:22:56', 1, 'onca.jpg', NULL, NULL, NULL),
(25, NULL, 1, 'Conseillers agricoles', 'conseillers-agricoles-video', '', 'Conseillers agricoles', 1, NULL, 2, 0, 0, '/node/conseillers-agricoles-video', '{\"4\":\"gallery\"}', 0, 11, 12, '', 'node', NULL, NULL, '2015-07-14 14:02:44', 1, '2015-07-14 14:02:44', 1, '', NULL, NULL, 'http://player.vimeo.com/video/132995970'),
(28, NULL, 1, 'Missions des conseillers agricole', 'missions-des-conseillers-agricole', '<div>\r\n<p>Le Minist&egrave;re de l&rsquo;Agriculture et de la P&ecirc;che Maritime a men&eacute; plusieurs chantiers de reformes notamment celui de la r&eacute;gulation de la profession du conseiller agricole.<br />\r\nAinsi, la loi 62-12 relative &agrave; l&rsquo;organisation de la profession de conseiller agricole d&eacute;finie le cadre juridique pour la pratique d&rsquo;un consulting rationnel, op&eacute;rationnel et vecteur d&rsquo;innovations et de changements positifs.<br />\r\nPubli&eacute;e au BO n&deg; 6262 du 7 chaabane 1435 (5 juin 2014), la loi 62-12 stipule que pour exercer la profession de conseiller agricole, il est strictement indispensable d&#39;avoir un agr&eacute;ment d&eacute;livr&eacute; par l&rsquo;autorit&eacute; gouvernementale charg&eacute;e de l&rsquo;agriculture;</p>\r\n\r\n<p style=\"color: #3A5795;\">Les objectifs&nbsp;vis&eacute;s sont de:</p>\r\n\r\n<ul class=\"list-style-3 colored\">\r\n	<li>professionnaliser l&rsquo;activit&eacute; d&rsquo;encadrement et pr&eacute;parer l&rsquo;&eacute;mergence d&rsquo;un corps de conseillers agricoles et de consulting op&eacute;rationnel et efficace;</li>\r\n	<li>encourager l&rsquo;organisation des producteurs et des fili&egrave;res de production et favoriser la prise en charge du d&eacute;veloppement agricole par les acteurs concern&eacute;s;</li>\r\n	<li>d&eacute;velopper les opportunit&eacute;s d&rsquo;emploi pour les laur&eacute;ats des &eacute;tablissements de l&#39;enseignement sup&eacute;rieur et de la formation professionnelle agricole;</li>\r\n	<li>mettre en place un relais de l&rsquo;Etat dans un cadre contractuel, pour l&rsquo;encadrement des producteurs et des organisations professionnelles agricoles.</li>\r\n</ul>\r\n\r\n<div class=\"prom-box prom-box-info shadow1\">\r\n<p>Ainsi, le conseiller agricole a pour mission de prodiguer le conseil et l&#39;encadrement technique et technologique dans les domaines de production agricole, d&#39;utilisation des facteurs de production agricole, d&#39;am&eacute;nagement hydro-agricole et foncier, de gestion technique et &eacute;conomique des exploitations agricoles, de valorisation et de commercialisation des produits agricoles, d&#39;organisation professionnelle et tous autre domaines li&eacute;s &agrave; l&#39;activit&eacute; agricole.</p>\r\n</div>\r\n\r\n<p style=\"color: #3A5795;\">A cet effet, le conseiller agricole doit assurer :</p>\r\n\r\n<ul class=\"list-style-3 colored\">\r\n	<li>Le conseil technique qui porte sur l&#39;encadrement, l&#39;assistance et l&#39;accompagnement des agriculteurs dans le transfert et la maitrise des techniques de production agricole durant les diff&eacute;rentes &eacute;tapes du cycle de production;</li>\r\n	<li>Le conseil d&rsquo;entreprise agricole qui porte sur l&#39;appui et l&#39;accompagnement &agrave; l&#39;installation et le d&eacute;veloppement des d&icirc;tes entreprises &agrave; travers le diagnostic, l&#39;analyse du fonctionnement de l&#39;exploitation agricole et la proposition de mod&egrave;le de d&eacute;veloppement ad&eacute;quat;</li>\r\n	<li>le conseil en mati&egrave;re de projet de d&eacute;veloppement agricole qui porte sur l&#39;animation, l&#39;appui et l&#39;accompagnement des agriculteurs &agrave; moderniser leurs techniques de production, am&eacute;liorer les outils de gestion de leurs exploitations et entreprises agricoles et les aider &agrave; la r&eacute;alisation des projets de d&eacute;veloppement agricole individuel ou collectifs, sur demandes de ces derniers, de l&#39;administration, des organisations professionnelles ou des autres organismes de droit public ou priv&eacute;.</li>\r\n</ul>\r\n</div>\r\n\r\n<div>\r\n<h3>bulletins officiels</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><a href=\"/capwebsite/theme/CapAdmin/img/bo_ar.pdf\"><img class=\"img-polaroid\" src=\"/capwebsite/theme/CapAdmin/img/bo_ar.png\" /> </a></td>\r\n			<td><a href=\"/capwebsite/theme/CapAdmin/img/bo_fr.pdf\"><img class=\"img-polaroid\" src=\"/capwebsite/theme/CapAdmin/img/bo_fr.png\" /> </a></td>\r\n			<td><a href=\"/capwebsite/theme/CapAdmin/img/bo_fr_1.pdf\"><img class=\"img-polaroid\" src=\"/capwebsite/theme/CapAdmin/img/bo_fr_1.png\" /> </a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n', 'Missions des conseillers agricole', 1, 'image/png', 1, 0, 0, '/page/missions-des-conseillers-agricole', '', 0, 13, 14, '', 'page', NULL, NULL, '2015-11-24 18:46:13', 1, '2015-08-02 12:37:15', 1, 'mission.png', '53545', 'uploads/node/images', NULL),
(33, NULL, 1, 'Textes juridiques et objectifs', 'objectifs-de-la-loi-n-62-12', '<div class=\"shortcode-list arrow\">\r\n<ul>\r\n	<li>Professionnaliser l&rsquo;activit&eacute; d&rsquo;encadrement et pr&eacute;parer l&rsquo;&eacute;mergence d&rsquo;un corps de vulgarisation et de consulting op&eacute;rationnel et efficace;</li>\r\n	<li>Encourager l&rsquo;organisation des producteurs et des fili&egrave;res de production et favoriser la prise en charge du d&eacute;veloppement agricole par les acteurs concern&eacute;s;</li>\r\n	<li>D&eacute;velopper les opportunit&eacute;s d&rsquo;emploi pour les laur&eacute;ats des &eacute;tablissements de l&rsquo;enseignement Sup&eacute;rieur et de la formation professionnelle agricole;</li>\r\n	<li>Mettre en place un relais de l&rsquo;Etat dans un cadre contractuel pour l&rsquo;encadrement des producteurs et des OP</li>\r\n</ul>\r\n</div>\r\n', 'Objectifs de la loi n° 62-12', 1, NULL, 1, 0, 0, '/page/objectifs-de-la-loi-n-62-12', '', 0, 15, 16, '', 'page', NULL, NULL, '2015-11-10 13:55:10', 1, '2015-08-02 18:17:01', 1, NULL, '', '', NULL),
(34, NULL, 1, ' Conditions d\'éligibilité', 'conditions-deligibilite', '<p>Nul ne peut exercer cette profession, s&rsquo;il n&rsquo;est pas d&eacute;tenteur d&rsquo;un agr&eacute;ment d&eacute;livr&eacute; par l&rsquo;autorit&eacute; gouvernementale charg&eacute;e de l&rsquo;agriculture.</p>\r\n', 'Conditions d\'éligibilité', 1, NULL, 2, 0, 0, '/node/conditions-deligibilite', '{\"5\":\"objectifs\"}', 0, 17, 18, '', 'node', NULL, NULL, '2015-08-02 18:17:59', 1, '2015-08-02 18:17:59', 1, NULL, '', '', NULL),
(35, NULL, 1, 'Les prestations du Conseiller en agriculture', 'les-prestations-du-conseiller-en-agriculture', '<p>Ce contrat doit contenir obligatoirement les clauses suivantes:</p>\r\n<div class=\"shortcode-list arrow\">\r\n	<ul>\r\n		<li>La durée, la nature et la consistance des prestations du CA;</li>\r\n\r\n		<li>Le calendrier des interventions;</li>\r\n\r\n		<li>Les obligations et les droits des parties contractantes;</li>\r\n\r\n		<li>Les honoraires du CA et les modalités de leur règlement;</li>\r\n	</ul>\r\n</div>', 'Les prestations du Conseiller en agriculture doivent faire l’objet d’un contrat , qui demeure soumis aux dispositions du Dahir des Obligations et Contrats', 1, NULL, 2, 0, 0, '/node/les-prestations-du-conseiller-en-agriculture', '{\"5\":\"objectifs\"}', 0, 19, 20, '', 'node', NULL, NULL, '2015-08-02 18:20:25', 1, '2015-08-02 18:20:25', 1, NULL, '', '', NULL),
(36, NULL, 1, 'Conseil technique', 'conseil-technique', 'consiste à assister l’agriculteur dans le transfert et la maitrise des techniques de production agricole de l’amont à l’aval de la filière', 'consiste à assister l’agriculteur dans le transfert et la maitrise des techniques de production agricole de l’amont à l’aval de la filière', 1, NULL, 2, 0, 0, '/node/conseil-technique', '{\"5\":\"objectifs\"}', 0, 21, 22, '', 'node', NULL, NULL, '2015-08-02 18:22:35', 1, '2015-08-02 18:22:35', 1, NULL, '', '', NULL),
(37, NULL, 1, 'Conditions d’exercice de la profession de conseiller agricole', 'conditions-dexercice-de-la-profession-de-conseiller-agricole', '<div class=\"shortcode-list arrow\">\r\n<ul>\r\n	<li>Les personnes physiques ou morales de droit priv&eacute;, qui remplissent les conditions pr&eacute;vues par la loi;</li>\r\n	<li>L&rsquo;agr&eacute;ment est d&eacute;livr&eacute; pour une p&eacute;riode de 5 ans renouvelables;</li>\r\n	<li>L&rsquo;exercice est subordonn&eacute; &agrave; l&rsquo;obtention d&rsquo;un agr&eacute;ment d&eacute;livr&eacute;e par l&rsquo;autorit&eacute; gouvernementale charg&eacute;e de l&rsquo;Agriculture apr&egrave;s avis de la Commission Nationale de Conseil Agricole;</li>\r\n	<li>Les conditions d&rsquo;octroi, de retrait et de renouvellement de cet agr&eacute;ment sont fix&eacute;es par voie r&eacute;glementaire;</li>\r\n</ul>\r\n</div>\r\n', 'Conditions d’exercice de la profession de conseiller agricole', 1, NULL, 2, 0, 0, '/node/conditions-dexercice-de-la-profession-de-conseiller-agricole', '{\"5\":\"objectifs\"}', 0, 23, 24, '[\"1\",\"2\",\"3\"]', 'node', NULL, NULL, '2015-11-04 04:30:22', 1, '2015-08-02 19:31:20', 1, NULL, '', '', NULL),
(40, NULL, 1, 'FAQ', 'faq', '<h5>Q : Quelles sont les conditions d&#39;&eacute;ligibilit&eacute; pour exercer le m&eacute;tier de conseiller agricole ?</h5>\r\n\r\n<ul>\r\n	<li>Nul ne peut exercer cette profession, s&rsquo;il n&rsquo;est pas d&eacute;tenteur d&rsquo;un agr&eacute;ment d&eacute;livr&eacute; par l&rsquo;autorit&eacute; gouvernementale charg&eacute;e de l&rsquo;agriculture.</li>\r\n</ul>\r\n\r\n<h5>Q: Quelles sont les conditions d&rsquo;exercice de la profession de conseiller agricole ?</h5>\r\n\r\n<ul>\r\n	<li>Les personnes physiques ou morales de droit priv&eacute;, qui remplissent les conditions pr&eacute;vues par la loi;</li>\r\n	<li>L&#39;agr&eacute;ment est d&eacute;livr&eacute; pour une p&eacute;riode de 5 ans renouvelables;</li>\r\n	<li>L&#39;exercice est subordonn&eacute; &agrave; l&rsquo;obtention d&rsquo;un agr&eacute;ment d&eacute;livr&eacute;e par l&rsquo;autorit&eacute; gouvernementale charg&eacute;e de l&rsquo;Agriculture apr&egrave;s avis de la Commission Nationale de Conseil Agricole;</li>\r\n	<li>Les conditions d&rsquo;octroi, de retrait et de renouvellement de cet agr&eacute;ment sont fix&eacute;es par voie r&eacute;glementaire.</li>\r\n</ul>\r\n\r\n<h5>Q : Quels sont les domaines d&#39;intervention du conseiller agricole ?</h5>\r\n\r\n<ul>\r\n	<li><strong>Conseil technique :</strong> consiste &agrave; assister l&rsquo;agriculteur dans le transfert et la maitrise des techniques de production agricole de l&rsquo;amont &agrave; l&rsquo;aval de la fili&egrave;re;</li>\r\n	<li><strong>Conseil dans le domaine de l&#39;entreprise agricole&nbsp;:</strong> consiste en l&rsquo;appui et l&#39;accompagnement &agrave; la mise en place et le d&eacute;veloppement de ces entreprises, en se basant sur le diagnostic et l&#39;analyse de la conduite de l&#39;exploitation agricole et la proposition d&#39;un mod&egrave;le de d&eacute;veloppement appropri&eacute;.</li>\r\n	<li><strong>Conseil dans le domaine de projet de d&eacute;veloppement agricole&nbsp;:</strong> consiste en l&#39;accompagnement des agriculteurs &agrave; moderniser leurs techniques de production, &agrave; am&eacute;liorer les m&eacute;thodes de gestion des exploitations et entreprises agricoles et les aider au montage de projets de d&eacute;veloppement agricole.</li>\r\n</ul>\r\n\r\n<h5>Q : Quelle sera la relation du CAP avec l&#39;agriculteur ?</h5>\r\n\r\n<ul>\r\n	<li>Les prestations du Conseiller en agriculture doivent faire l&rsquo;objet d&rsquo;un contrat, qui demeure soumis aux dispositions du Dahir des Obligations et Contrats Ce contrat doit contenir obligatoirement les clauses suivantes:\r\n	<ul>\r\n		<li>La dur&eacute;e, la nature et la consistance des prestations du CA</li>\r\n		<li>Le calendrier des interventions</li>\r\n		<li>Les obligations et les droits des parties contractantes</li>\r\n		<li>Les honoraires du CA et les modalit&eacute;s de leur r&egrave;glement.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h5>Q : Ya t-ils des obligations des deux parties :</h5>\r\n\r\n<h4>OUI</h4>\r\n\r\n<ul>\r\n	<li><strong>Le Conseiller Agricole:</strong>\r\n\r\n	<ul>\r\n		<li>Il doit inscrire ses observations et recommandations dans un registre tenu sur les lieux de l&rsquo;exploitation ou de l&rsquo;entreprise agricole concern&eacute;e.</li>\r\n		<li>Il est tenu d&rsquo;informer l&rsquo;administration des maladies, parasites ou fl&eacute;aux constat&eacute;es lors de l&rsquo;exercice de sa mission</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>L&#39;agriculteur:</strong>\r\n	<ul>\r\n		<li>Il doit inscrire au m&ecirc;me registre les travaux effectu&eacute;s par lui en application des recommandations du conseiller agricole.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '', 1, NULL, 1, 0, 0, '/page/faq', '', 0, 25, 26, '', 'page', NULL, NULL, '2015-11-24 04:40:18', 1, '2015-11-04 02:10:51', 1, NULL, '', '', NULL),
(41, NULL, 1, 'Accueil', 'accueil', '<h1 class=\"mainTitle\">Bienvenue sur l&#39;application informatique</h1>\r\n\r\n<p>Cette application est con&ccedil;ue de mani&egrave;re &agrave; constituer un guide pour tous ceux et celles qui d&eacute;sirent exercer le m&eacute;tier de conseiller agricole priv&eacute;. :</p>\r\n\r\n<p>Notre but est de g&eacute;rer de fa&ccedil;on &eacute;lectronique les flux de dossiers de demandes d&#39;agr&eacute;ments dont les objectifs sont :</p>\r\n\r\n<ul class=\"header-list\">\r\n	<li><i class=\"fa fa-gears\">&nbsp;</i> L&#39;automatisation des inscriptions;</li>\r\n	<li><i class=\"fa fa-retweet\">&nbsp;</i> La Diminution des&nbsp;&eacute;changes administratifs avec les Conseillers agricoles et avec membres de la CNCA.</li>\r\n	<li><i class=\"fa  fa-thumbs-o-up\">&nbsp;</i> L&#39;am&eacute;lioration de la&nbsp;qualit&eacute; et de la fiabilit&eacute;</li>\r\n</ul>\r\n\r\n<div class=\"prom-box prom-box-default shadow1\">\r\n<p>Que vous &ecirc;tes personne morale ou physique, ing&eacute;nieur ou &eacute;quivalent, technicien ou &eacute;quivalent que vous remplissez les conditions d&#39;exercice du m&eacute;tier de CAP , nous esp&eacute;rons que cette application sera pour vous un outil utile. Si vous avez d&eacute;posez votre dossier, cette application vous permet de suivre l&#39;&eacute;volution de votre dossier, jusqu&#39;&agrave; recevoir votre agr&eacute;ment.<br />\r\nVous pourrez &eacute;galement trouver des informations et des actualit&eacute;s sur le CAP pour vous orienter..</p>\r\n</div>\r\n\r\n<h4 class=\"alert-heading margin-bottom-10\">Recommandations!</h4>\r\n\r\n<div class=\"shortcode-list\">\r\n<ul style=\"margin-left: 0px;\">\r\n	<li>Documents ou photocopies manquants = dossier incomplet.</li>\r\n	<li>Tous les documents sont &agrave; pr&eacute;senter en originaux ou en copie certifi&eacute;e conforme.</li>\r\n	<li>Tous les documents doivent &ecirc;tre en langue Arabe ou en langue Fran&ccedil;aise.</li>\r\n</ul>\r\n</div>\r\n', '', 1, NULL, 1, 0, 0, '/page/accueil', '', 0, 27, 28, '[\"1\",\"2\",\"3\"]', 'page', NULL, NULL, '2015-11-24 02:53:08', 1, '2015-11-04 02:24:47', 1, NULL, '', '', NULL),
(42, NULL, 1, 'Composition du dossier', 'composition-de-dossier-conseiller-agricole', '<p>Dossier de demande d&rsquo;agr&eacute;ment:</p>\r\n\r\n<h4><i class=\"fa fa-user\">&nbsp;</i>Personne physique</h4>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li><i class=\"ti-check\">&nbsp;</i> Demande &eacute;crite</li>\r\n				<li><i class=\"ti-check\">&nbsp;</i> Copie CNI &eacute;lectronique</li>\r\n				<li><i class=\"ti-check\">&nbsp;</i> Extrait casier judiciaire ou fiche anthropom&eacute;trique</li>\r\n				<li><i class=\"ti-check\">&nbsp;</i> curriculum vit&aelig;</li>\r\n				<li><i class=\"ti-check\">&nbsp;</i> D&eacute;claration sur l&rsquo;honneur</li>\r\n				<li><i class=\"ti-check\">&nbsp;</i> Copie dipl&ocirc;me ou certificat</li>\r\n			</ul>\r\n			</td>\r\n			<td><img alt=\"\" src=\"/capwebsite/theme/CapAdmin/img/human.png\" title=\"Missions des conseillers agricole\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h4><i class=\"fa fa-bank\">&nbsp;</i>Personne morale</h4>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li><strong>Pi&egrave;ces relatives &agrave; la soci&eacute;t&eacute;</strong>\r\n\r\n				<ul>\r\n					<li><i class=\"ti-check\">&nbsp;</i> Demande &eacute;crite</li>\r\n					<li><i class=\"ti-check\">&nbsp;</i> Copie de d&eacute;l&eacute;gation de pouvoir</li>\r\n					<li><i class=\"ti-check\">&nbsp;</i> D&eacute;claration sur l&rsquo;honneur</li>\r\n					<li><i class=\"ti-check\">&nbsp;</i> Copie CNSS</li>\r\n					<li><i class=\"ti-check\">&nbsp;</i> Inscription registre de commerce</li>\r\n					<li><i class=\"ti-check\">&nbsp;</i> Liste des CV des personnes charg&eacute;es de CA</li>\r\n				</ul>\r\n				</li>\r\n				<li><strong>Pi&egrave;ces relatives au/aux dirigeants</strong>\r\n				<ul>\r\n					<li><i class=\"ti-check\">&nbsp;</i> Copie CNI</li>\r\n					<li><i class=\"ti-check\">&nbsp;</i> Extrait casier judiciaire ou fiche anthropom&eacute;trique</li>\r\n					<li><i class=\"ti-check\">&nbsp;</i> Extrait casier judiciaire ou fiche anthropom&eacute;trique</li>\r\n				</ul>\r\n				</li>\r\n			</ul>\r\n			</td>\r\n			<td></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 1, NULL, 1, 0, 0, '/page/composition-de-dossier-conseiller-agricole', '', 0, 29, 30, '', 'page', NULL, NULL, '2015-11-24 04:17:23', 1, '2015-11-10 13:38:33', 1, NULL, '', '', NULL);

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
(36, 'Access Control.autoLoginDuration', '+1 week', '\"Remember Me\" Duration', 'Eg: +1 day, +1 week. Leave empty to disable.', 'text', 1, 27, '', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(37, 'Access Control.models', '', 'Models with Row Level Acl', 'Select models to activate Row Level Access Control on', 'multiple', 1, 26, 'multiple=checkbox\noptions={\"Nodes.Node\": \"Node\", \"Blocks.Block\": \"Block\", \"Menus.Menu\": \"Menu\", \"Menus.Link\": \"Link\"}', '2015-07-07 02:14:01', NULL, '2015-07-07 02:14:01', NULL),
(38, 'Site.ipWhitelist', '127.0.0.1', 'Whitelisted IP Addresses', 'Separate multiple IP addresses with comma', 'text', 1, 27, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(39, 'Site.asset_timestamp', '0', 'Asset timestamp', 'Appends a timestamp which is last modified time of the particular file at the end of asset files URLs (CSS, JavaScript, Image). Useful to prevent visitors to visit the site with an outdated version of these files in their browser cache.', 'radio', 1, 28, 'options={\"0\": \"Disabled\", \"1\": \"Enabled in debug mode only\", \"force\": \"Always enabled\"}', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(40, 'Site.admin_theme', '', 'Administration Theme', '', 'text', 1, 29, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(41, 'Site.home_url', '', 'Home Url', 'Default action for home page in link string format.', 'text', 1, 30, '', '2015-07-07 02:14:01', NULL, '2015-09-29 01:45:15', 1),
(42, 'Croogo.installed', '1', '', '', '', 0, 31, '', '2015-07-07 02:15:17', NULL, '2015-07-07 02:15:17', NULL),
(43, 'Croogo.version', '2.2.2', '', '', '', 0, 32, '', '2015-07-07 02:48:17', 1, '2015-07-07 02:48:17', 1),
(44, 'Site.direction', 'ltr', 'Orientation du site (LTR ou RTL)', '', 'radio', 1, 33, 'options={\"rtl\": \"RTL\", \"ltr\": \"LTR\"}', '2015-07-07 03:14:49', 1, '2015-09-29 01:45:15', 1),
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
(56, 'Address.address', 'Station D\'bagh-Avenu Hassan II', 'Adresse', '', 'text', 1, 45, '', '2015-07-13 01:10:58', 1, '2015-11-24 04:53:02', 1),
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
(1, 'Page', 'page', 'A page is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a page entry does not allow visitor comments.', 0, 0, 1, 0, 0, 0, 0, '', NULL, '2015-07-14 04:56:04', 1, '2009-09-02 18:06:27', NULL),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `pfm_community_activities`
--
ALTER TABLE `pfm_community_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `pfm_counselors`
--
ALTER TABLE `pfm_counselors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT pour la table `pfm_counselors_documents`
--
ALTER TABLE `pfm_counselors_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=697;
--
-- AUTO_INCREMENT pour la table `pfm_counselors_languages`
--
ALTER TABLE `pfm_counselors_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `pfm_professional_experiences`
--
ALTER TABLE `pfm_professional_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;
--
-- AUTO_INCREMENT pour la table `pfm_publication_researches`
--
ALTER TABLE `pfm_publication_researches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `pfm_qualifications`
--
ALTER TABLE `pfm_qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=850;
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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;
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
