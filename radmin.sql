-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 01:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `flag` varchar(255) NOT NULL,
  `dial_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `flag`, `dial_code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '🇦🇫', '+93', NULL, NULL),
(2, 'Åland Islands', 'AX', '🇦🇽', '+358', NULL, NULL),
(3, 'Albania', 'AL', '🇦🇱', '+355', NULL, NULL),
(4, 'Algeria', 'DZ', '🇩🇿', '+213', NULL, NULL),
(5, 'American Samoa', 'AS', '🇦🇸', '+1684', NULL, NULL),
(6, 'Andorra', 'AD', '🇦🇩', '+376', NULL, NULL),
(7, 'Angola', 'AO', '🇦🇴', '+244', NULL, NULL),
(8, 'Anguilla', 'AI', '🇦🇮', '+1264', NULL, NULL),
(9, 'Antarctica', 'AQ', '🇦🇶', '+672', NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', '🇦🇬', '+1268', NULL, NULL),
(11, 'Argentina', 'AR', '🇦🇷', '+54', NULL, NULL),
(12, 'Armenia', 'AM', '🇦🇲', '+374', NULL, NULL),
(13, 'Aruba', 'AW', '🇦🇼', '+297', NULL, NULL),
(14, 'Australia', 'AU', '🇦🇺', '+61', NULL, NULL),
(15, 'Austria', 'AT', '🇦🇹', '+43', NULL, NULL),
(16, 'Azerbaijan', 'AZ', '🇦🇿', '+994', NULL, NULL),
(17, 'Bahamas', 'BS', '🇧🇸', '+1242', NULL, NULL),
(18, 'Bahrain', 'BH', '🇧🇭', '+973', NULL, NULL),
(19, 'Bangladesh', 'BD', '🇧🇩', '+880', NULL, NULL),
(20, 'Barbados', 'BB', '🇧🇧', '+1246', NULL, NULL),
(21, 'Belarus', 'BY', '🇧🇾', '+375', NULL, NULL),
(22, 'Belgium', 'BE', '🇧🇪', '+32', NULL, NULL),
(23, 'Belize', 'BZ', '🇧🇿', '+501', NULL, NULL),
(24, 'Benin', 'BJ', '🇧🇯', '+229', NULL, NULL),
(25, 'Bermuda', 'BM', '🇧🇲', '+1441', NULL, NULL),
(26, 'Bhutan', 'BT', '🇧🇹', '+975', NULL, NULL),
(27, 'Bolivia, Plurinational State of bolivia', 'BO', '🇧🇴', '+591', NULL, NULL),
(28, 'Bosnia and Herzegovina', 'BA', '🇧🇦', '+387', NULL, NULL),
(29, 'Botswana', 'BW', '🇧🇼', '+267', NULL, NULL),
(30, 'Bouvet Island', 'BV', '🇧🇻', '+47', NULL, NULL),
(31, 'Brazil', 'BR', '🇧🇷', '+55', NULL, NULL),
(32, 'British Indian Ocean Territory', 'IO', '🇮🇴', '+246', NULL, NULL),
(33, 'Brunei Darussalam', 'BN', '🇧🇳', '+673', NULL, NULL),
(34, 'Bulgaria', 'BG', '🇧🇬', '+359', NULL, NULL),
(35, 'Burkina Faso', 'BF', '🇧🇫', '+226', NULL, NULL),
(36, 'Burundi', 'BI', '🇧🇮', '+257', NULL, NULL),
(37, 'Cambodia', 'KH', '🇰🇭', '+855', NULL, NULL),
(38, 'Cameroon', 'CM', '🇨🇲', '+237', NULL, NULL),
(39, 'Canada', 'CA', '🇨🇦', '+1', NULL, NULL),
(40, 'Cape Verde', 'CV', '🇨🇻', '+238', NULL, NULL),
(41, 'Cayman Islands', 'KY', '🇰🇾', '+345', NULL, NULL),
(42, 'Central African Republic', 'CF', '🇨🇫', '+236', NULL, NULL),
(43, 'Chad', 'TD', '🇹🇩', '+235', NULL, NULL),
(44, 'Chile', 'CL', '🇨🇱', '+56', NULL, NULL),
(45, 'China', 'CN', '🇨🇳', '+86', NULL, NULL),
(46, 'Christmas Island', 'CX', '🇨🇽', '+61', NULL, NULL),
(47, 'Cocos (Keeling) Islands', 'CC', '🇨🇨', '+61', NULL, NULL),
(48, 'Colombia', 'CO', '🇨🇴', '+57', NULL, NULL),
(49, 'Comoros', 'KM', '🇰🇲', '+269', NULL, NULL),
(50, 'Congo', 'CG', '🇨🇬', '+242', NULL, NULL),
(51, 'Congo, The Democratic Republic of the Congo', 'CD', '🇨🇩', '+243', NULL, NULL),
(52, 'Cook Islands', 'CK', '🇨🇰', '+682', NULL, NULL),
(53, 'Costa Rica', 'CR', '🇨🇷', '+506', NULL, NULL),
(54, 'Cote d\'Ivoire', 'CI', '🇨🇮', '+225', NULL, NULL),
(55, 'Croatia', 'HR', '🇭🇷', '+385', NULL, NULL),
(56, 'Cuba', 'CU', '🇨🇺', '+53', NULL, NULL),
(57, 'Cyprus', 'CY', '🇨🇾', '+357', NULL, NULL),
(58, 'Czech Republic', 'CZ', '🇨🇿', '+420', NULL, NULL),
(59, 'Denmark', 'DK', '🇩🇰', '+45', NULL, NULL),
(60, 'Djibouti', 'DJ', '🇩🇯', '+253', NULL, NULL),
(61, 'Dominica', 'DM', '🇩🇲', '+1767', NULL, NULL),
(62, 'Dominican Republic', 'DO', '🇩🇴', '+1849', NULL, NULL),
(63, 'Ecuador', 'EC', '🇪🇨', '+593', NULL, NULL),
(64, 'Egypt', 'EG', '🇪🇬', '+20', NULL, NULL),
(65, 'El Salvador', 'SV', '🇸🇻', '+503', NULL, NULL),
(66, 'Equatorial Guinea', 'GQ', '🇬🇶', '+240', NULL, NULL),
(67, 'Eritrea', 'ER', '🇪🇷', '+291', NULL, NULL),
(68, 'Estonia', 'EE', '🇪🇪', '+372', NULL, NULL),
(69, 'Ethiopia', 'ET', '🇪🇹', '+251', NULL, NULL),
(70, 'Falkland Islands (Malvinas)', 'FK', '🇫🇰', '+500', NULL, NULL),
(71, 'Faroe Islands', 'FO', '🇫🇴', '+298', NULL, NULL),
(72, 'Fiji', 'FJ', '🇫🇯', '+679', NULL, NULL),
(73, 'Finland', 'FI', '🇫🇮', '+358', NULL, NULL),
(74, 'France', 'FR', '🇫🇷', '+33', NULL, NULL),
(75, 'French Guiana', 'GF', '🇬🇫', '+594', NULL, NULL),
(76, 'French Polynesia', 'PF', '🇵🇫', '+689', NULL, NULL),
(77, 'French Southern Territories', 'TF', '🇹🇫', '+262', NULL, NULL),
(78, 'Gabon', 'GA', '🇬🇦', '+241', NULL, NULL),
(79, 'Gambia', 'GM', '🇬🇲', '+220', NULL, NULL),
(80, 'Georgia', 'GE', '🇬🇪', '+995', NULL, NULL),
(81, 'Germany', 'DE', '🇩🇪', '+49', NULL, NULL),
(82, 'Ghana', 'GH', '🇬🇭', '+233', NULL, NULL),
(83, 'Gibraltar', 'GI', '🇬🇮', '+350', NULL, NULL),
(84, 'Greece', 'GR', '🇬🇷', '+30', NULL, NULL),
(85, 'Greenland', 'GL', '🇬🇱', '+299', NULL, NULL),
(86, 'Grenada', 'GD', '🇬🇩', '+1473', NULL, NULL),
(87, 'Guadeloupe', 'GP', '🇬🇵', '+590', NULL, NULL),
(88, 'Guam', 'GU', '🇬🇺', '+1671', NULL, NULL),
(89, 'Guatemala', 'GT', '🇬🇹', '+502', NULL, NULL),
(90, 'Guernsey', 'GG', '🇬🇬', '+44', NULL, NULL),
(91, 'Guinea', 'GN', '🇬🇳', '+224', NULL, NULL),
(92, 'Guinea-Bissau', 'GW', '🇬🇼', '+245', NULL, NULL),
(93, 'Guyana', 'GY', '🇬🇾', '+592', NULL, NULL),
(94, 'Haiti', 'HT', '🇭🇹', '+509', NULL, NULL),
(95, 'Heard Island and Mcdonald Islands', 'HM', '🇭🇲', '+672', NULL, NULL),
(96, 'Holy See (Vatican City State)', 'VA', '🇻🇦', '+379', NULL, NULL),
(97, 'Honduras', 'HN', '🇭🇳', '+504', NULL, NULL),
(98, 'Hong Kong', 'HK', '🇭🇰', '+852', NULL, NULL),
(99, 'Hungary', 'HU', '🇭🇺', '+36', NULL, NULL),
(100, 'Iceland', 'IS', '🇮🇸', '+354', NULL, NULL),
(101, 'India', 'IN', '🇮🇳', '+91', NULL, NULL),
(102, 'Indonesia', 'ID', '🇮🇩', '+62', NULL, NULL),
(103, 'Iran, Islamic Republic of Persian Gulf', 'IR', '🇮🇷', '+98', NULL, NULL),
(104, 'Iraq', 'IQ', '🇮🇶', '+964', NULL, NULL),
(105, 'Ireland', 'IE', '🇮🇪', '+353', NULL, NULL),
(106, 'Isle of Man', 'IM', '🇮🇲', '+44', NULL, NULL),
(107, 'Israel', 'IL', '🇮🇱', '+972', NULL, NULL),
(108, 'Italy', 'IT', '🇮🇹', '+39', NULL, NULL),
(109, 'Jamaica', 'JM', '🇯🇲', '+1876', NULL, NULL),
(110, 'Japan', 'JP', '🇯🇵', '+81', NULL, NULL),
(111, 'Jersey', 'JE', '🇯🇪', '+44', NULL, NULL),
(112, 'Jordan', 'JO', '🇯🇴', '+962', NULL, NULL),
(113, 'Kazakhstan', 'KZ', '🇰🇿', '+7', NULL, NULL),
(114, 'Kenya', 'KE', '🇰🇪', '+254', NULL, NULL),
(115, 'Kiribati', 'KI', '🇰🇮', '+686', NULL, NULL),
(116, 'Korea, Democratic People\'s Republic of Korea', 'KP', '🇰🇵', '+850', NULL, NULL),
(117, 'Korea, Republic of South Korea', 'KR', '🇰🇷', '+82', NULL, NULL),
(118, 'Kosovo', 'XK', '🇽🇰', '+383', NULL, NULL),
(119, 'Kuwait', 'KW', '🇰🇼', '+965', NULL, NULL),
(120, 'Kyrgyzstan', 'KG', '🇰🇬', '+996', NULL, NULL),
(121, 'Laos', 'LA', '🇱🇦', '+856', NULL, NULL),
(122, 'Latvia', 'LV', '🇱🇻', '+371', NULL, NULL),
(123, 'Lebanon', 'LB', '🇱🇧', '+961', NULL, NULL),
(124, 'Lesotho', 'LS', '🇱🇸', '+266', NULL, NULL),
(125, 'Liberia', 'LR', '🇱🇷', '+231', NULL, NULL),
(126, 'Libyan Arab Jamahiriya', 'LY', '🇱🇾', '+218', NULL, NULL),
(127, 'Liechtenstein', 'LI', '🇱🇮', '+423', NULL, NULL),
(128, 'Lithuania', 'LT', '🇱🇹', '+370', NULL, NULL),
(129, 'Luxembourg', 'LU', '🇱🇺', '+352', NULL, NULL),
(130, 'Macao', 'MO', '🇲🇴', '+853', NULL, NULL),
(131, 'Macedonia', 'MK', '🇲🇰', '+389', NULL, NULL),
(132, 'Madagascar', 'MG', '🇲🇬', '+261', NULL, NULL),
(133, 'Malawi', 'MW', '🇲🇼', '+265', NULL, NULL),
(134, 'Malaysia', 'MY', '🇲🇾', '+60', NULL, NULL),
(135, 'Maldives', 'MV', '🇲🇻', '+960', NULL, NULL),
(136, 'Mali', 'ML', '🇲🇱', '+223', NULL, NULL),
(137, 'Malta', 'MT', '🇲🇹', '+356', NULL, NULL),
(138, 'Marshall Islands', 'MH', '🇲🇭', '+692', NULL, NULL),
(139, 'Martinique', 'MQ', '🇲🇶', '+596', NULL, NULL),
(140, 'Mauritania', 'MR', '🇲🇷', '+222', NULL, NULL),
(141, 'Mauritius', 'MU', '🇲🇺', '+230', NULL, NULL),
(142, 'Mayotte', 'YT', '🇾🇹', '+262', NULL, NULL),
(143, 'Mexico', 'MX', '🇲🇽', '+52', NULL, NULL),
(144, 'Micronesia, Federated States of Micronesia', 'FM', '🇫🇲', '+691', NULL, NULL),
(145, 'Moldova', 'MD', '🇲🇩', '+373', NULL, NULL),
(146, 'Monaco', 'MC', '🇲🇨', '+377', NULL, NULL),
(147, 'Mongolia', 'MN', '🇲🇳', '+976', NULL, NULL),
(148, 'Montenegro', 'ME', '🇲🇪', '+382', NULL, NULL),
(149, 'Montserrat', 'MS', '🇲🇸', '+1664', NULL, NULL),
(150, 'Morocco', 'MA', '🇲🇦', '+212', NULL, NULL),
(151, 'Mozambique', 'MZ', '🇲🇿', '+258', NULL, NULL),
(152, 'Myanmar', 'MM', '🇲🇲', '+95', NULL, NULL),
(153, 'Namibia', 'NA', '🇳🇦', '+264', NULL, NULL),
(154, 'Nauru', 'NR', '🇳🇷', '+674', NULL, NULL),
(155, 'Nepal', 'NP', '🇳🇵', '+977', NULL, NULL),
(156, 'Netherlands', 'NL', '🇳🇱', '+31', NULL, NULL),
(157, 'Netherlands Antilles', 'AN', '', '+599', NULL, NULL),
(158, 'New Caledonia', 'NC', '🇳🇨', '+687', NULL, NULL),
(159, 'New Zealand', 'NZ', '🇳🇿', '+64', NULL, NULL),
(160, 'Nicaragua', 'NI', '🇳🇮', '+505', NULL, NULL),
(161, 'Niger', 'NE', '🇳🇪', '+227', NULL, NULL),
(162, 'Nigeria', 'NG', '🇳🇬', '+234', NULL, NULL),
(163, 'Niue', 'NU', '🇳🇺', '+683', NULL, NULL),
(164, 'Norfolk Island', 'NF', '🇳🇫', '+672', NULL, NULL),
(165, 'Northern Mariana Islands', 'MP', '🇲🇵', '+1670', NULL, NULL),
(166, 'Norway', 'NO', '🇳🇴', '+47', NULL, NULL),
(167, 'Oman', 'OM', '🇴🇲', '+968', NULL, NULL),
(168, 'Pakistan', 'PK', '🇵🇰', '+92', NULL, NULL),
(169, 'Palau', 'PW', '🇵🇼', '+680', NULL, NULL),
(170, 'Palestinian Territory, Occupied', 'PS', '🇵🇸', '+970', NULL, NULL),
(171, 'Panama', 'PA', '🇵🇦', '+507', NULL, NULL),
(172, 'Papua New Guinea', 'PG', '🇵🇬', '+675', NULL, NULL),
(173, 'Paraguay', 'PY', '🇵🇾', '+595', NULL, NULL),
(174, 'Peru', 'PE', '🇵🇪', '+51', NULL, NULL),
(175, 'Philippines', 'PH', '🇵🇭', '+63', NULL, NULL),
(176, 'Pitcairn', 'PN', '🇵🇳', '+64', NULL, NULL),
(177, 'Poland', 'PL', '🇵🇱', '+48', NULL, NULL),
(178, 'Portugal', 'PT', '🇵🇹', '+351', NULL, NULL),
(179, 'Puerto Rico', 'PR', '🇵🇷', '+1939', NULL, NULL),
(180, 'Qatar', 'QA', '🇶🇦', '+974', NULL, NULL),
(181, 'Romania', 'RO', '🇷🇴', '+40', NULL, NULL),
(182, 'Russia', 'RU', '🇷🇺', '+7', NULL, NULL),
(183, 'Rwanda', 'RW', '🇷🇼', '+250', NULL, NULL),
(184, 'Reunion', 'RE', '🇷🇪', '+262', NULL, NULL),
(185, 'Saint Barthelemy', 'BL', '🇧🇱', '+590', NULL, NULL),
(186, 'Saint Helena, Ascension and Tristan Da Cunha', 'SH', '🇸🇭', '+290', NULL, NULL),
(187, 'Saint Kitts and Nevis', 'KN', '🇰🇳', '+1869', NULL, NULL),
(188, 'Saint Lucia', 'LC', '🇱🇨', '+1758', NULL, NULL),
(189, 'Saint Martin', 'MF', '🇲🇫', '+590', NULL, NULL),
(190, 'Saint Pierre and Miquelon', 'PM', '🇵🇲', '+508', NULL, NULL),
(191, 'Saint Vincent and the Grenadines', 'VC', '🇻🇨', '+1784', NULL, NULL),
(192, 'Samoa', 'WS', '🇼🇸', '+685', NULL, NULL),
(193, 'San Marino', 'SM', '🇸🇲', '+378', NULL, NULL),
(194, 'Sao Tome and Principe', 'ST', '🇸🇹', '+239', NULL, NULL),
(195, 'Saudi Arabia', 'SA', '🇸🇦', '+966', NULL, NULL),
(196, 'Senegal', 'SN', '🇸🇳', '+221', NULL, NULL),
(197, 'Serbia', 'RS', '🇷🇸', '+381', NULL, NULL),
(198, 'Seychelles', 'SC', '🇸🇨', '+248', NULL, NULL),
(199, 'Sierra Leone', 'SL', '🇸🇱', '+232', NULL, NULL),
(200, 'Singapore', 'SG', '🇸🇬', '+65', NULL, NULL),
(201, 'Slovakia', 'SK', '🇸🇰', '+421', NULL, NULL),
(202, 'Slovenia', 'SI', '🇸🇮', '+386', NULL, NULL),
(203, 'Solomon Islands', 'SB', '🇸🇧', '+677', NULL, NULL),
(204, 'Somalia', 'SO', '🇸🇴', '+252', NULL, NULL),
(205, 'South Africa', 'ZA', '🇿🇦', '+27', NULL, NULL),
(206, 'South Sudan', 'SS', '🇸🇸', '+211', NULL, NULL),
(207, 'South Georgia and the South Sandwich Islands', 'GS', '🇬🇸', '+500', NULL, NULL),
(208, 'Spain', 'ES', '🇪🇸', '+34', NULL, NULL),
(209, 'Sri Lanka', 'LK', '🇱🇰', '+94', NULL, NULL),
(210, 'Sudan', 'SD', '🇸🇩', '+249', NULL, NULL),
(211, 'Suriname', 'SR', '🇸🇷', '+597', NULL, NULL),
(212, 'Svalbard and Jan Mayen', 'SJ', '🇸🇯', '+47', NULL, NULL),
(213, 'Eswatini', 'SZ', '🇸🇿', '+268', NULL, NULL),
(214, 'Sweden', 'SE', '🇸🇪', '+46', NULL, NULL),
(215, 'Switzerland', 'CH', '🇨🇭', '+41', NULL, NULL),
(216, 'Syrian Arab Republic', 'SY', '🇸🇾', '+963', NULL, NULL),
(217, 'Taiwan', 'TW', '🇹🇼', '+886', NULL, NULL),
(218, 'Tajikistan', 'TJ', '🇹🇯', '+992', NULL, NULL),
(219, 'Tanzania, United Republic of Tanzania', 'TZ', '🇹🇿', '+255', NULL, NULL),
(220, 'Thailand', 'TH', '🇹🇭', '+66', NULL, NULL),
(221, 'Timor-Leste', 'TL', '🇹🇱', '+670', NULL, NULL),
(222, 'Togo', 'TG', '🇹🇬', '+228', NULL, NULL),
(223, 'Tokelau', 'TK', '🇹🇰', '+690', NULL, NULL),
(224, 'Tonga', 'TO', '🇹🇴', '+676', NULL, NULL),
(225, 'Trinidad and Tobago', 'TT', '🇹🇹', '+1868', NULL, NULL),
(226, 'Tunisia', 'TN', '🇹🇳', '+216', NULL, NULL),
(227, 'Turkey', 'TR', '🇹🇷', '+90', NULL, NULL),
(228, 'Turkmenistan', 'TM', '🇹🇲', '+993', NULL, NULL),
(229, 'Turks and Caicos Islands', 'TC', '🇹🇨', '+1649', NULL, NULL),
(230, 'Tuvalu', 'TV', '🇹🇻', '+688', NULL, NULL),
(231, 'Uganda', 'UG', '🇺🇬', '+256', NULL, NULL),
(232, 'Ukraine', 'UA', '🇺🇦', '+380', NULL, NULL),
(233, 'United Arab Emirates', 'AE', '🇦🇪', '+971', NULL, NULL),
(234, 'United Kingdom', 'GB', '🇬🇧', '+44', NULL, NULL),
(235, 'United States', 'US', '🇺🇸', '+1', NULL, NULL),
(236, 'Uruguay', 'UY', '🇺🇾', '+598', NULL, NULL),
(237, 'Uzbekistan', 'UZ', '🇺🇿', '+998', NULL, NULL),
(238, 'Vanuatu', 'VU', '🇻🇺', '+678', NULL, NULL),
(239, 'Venezuela, Bolivarian Republic of Venezuela', 'VE', '🇻🇪', '+58', NULL, NULL),
(240, 'Vietnam', 'VN', '🇻🇳', '+84', NULL, NULL),
(241, 'Virgin Islands, British', 'VG', '🇻🇬', '+1284', NULL, NULL),
(242, 'Virgin Islands, U.S.', 'VI', '🇻🇮', '+1340', NULL, NULL),
(243, 'Wallis and Futuna', 'WF', '🇼🇫', '+681', NULL, NULL),
(244, 'Yemen', 'YE', '🇾🇪', '+967', NULL, NULL),
(245, 'Zambia', 'ZM', '🇿🇲', '+260', NULL, NULL),
(246, 'Zimbabwe', 'ZW', '🇿🇼', '+263', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `invoice_category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `products` text DEFAULT NULL,
  `issue_date` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `total_amount` int(11) NOT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `tax_percentage` int(11) NOT NULL,
  `notes` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `invoice_category_id`, `user_id`, `products`, `issue_date`, `due_date`, `total_amount`, `paid_amount`, `tax_percentage`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, '#INC00001', 3, 6, '{\"0\":{\"unit_price\":\"222\",\"discount\":\"88\",\"quantity\":\"489\",\"sub_total\":108470,\"item\":\"A id ut blanditiis \"}}', '1994-10-22 00:00:00', '1994-06-21 00:00:00', 108470, NULL, 50, 'Est tenetur in magn', 'draft', '2024-01-04 19:23:36', '2024-01-04 19:23:36'),
(2, '#INC00002', 3, 6, '{\"0\":{\"unit_price\":\"233\",\"discount\":\"10\",\"quantity\":\"2\",\"sub_total\":456,\"item\":\"ssd\"}}', '2024-01-05 00:00:00', '2024-01-19 00:00:00', 456, NULL, 19, 'ssd', 'draft', '2024-01-04 19:30:47', '2024-01-04 19:30:47'),
(3, '#INC00003', 3, 8, '{\"0\":{\"unit_price\":\"2\",\"discount\":\"77\",\"quantity\":\"328\",\"sub_total\":579,\"item\":\"Velit et dicta Nam v\"}}', '1978-03-30 00:00:00', '2000-10-09 00:00:00', 579, NULL, 15, 'Tempor elit blandit', 'draft', '2024-01-04 19:31:47', '2024-01-04 19:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_categories`
--

CREATE TABLE `invoice_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_categories`
--

INSERT INTO `invoice_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Room Service', '2024-01-02 05:57:56', '2024-01-02 06:24:01'),
(3, 'Sales', '2024-01-03 05:24:04', '2024-01-03 05:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_03_09_135529_create_permission_tables', 1),
(10, '2024_01_02_082111_create_invoice_categories_table', 2),
(11, '2024_01_02_083024_create_invoices_table', 2),
(12, '2024_01_02_085217_add_field_in_users', 2),
(13, '2024_01_04_175641_create_countries_table', 3),
(14, '2024_01_04_180940_create_taxes_table', 4),
(15, '2024_01_05_001551_change_field_in_invoices', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 5),
(6, 'App\\Models\\User', 6),
(6, 'App\\Models\\User', 7),
(6, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Radmin', 'Et0eouSIFHH1xAbP3Wmh2UJWjQisaRxeMk7KMrg3', NULL, 'http://localhost', 1, 0, 0, '2023-02-01 07:49:52', '2023-02-01 07:49:52'),
(2, NULL, 'Radmin Personal Access Client', 'D5i0uEQlEKb9J2Z8oGOk0SeTaF3z5vaVnD6GDBkh', NULL, 'http://localhost', 1, 0, 0, '2023-02-01 08:23:30', '2023-02-01 08:23:30'),
(3, NULL, 'Radmin Password Grant Client', 'KR7IYdRNna0xExS8rdPHkBPaT6bpqEuZLUwtvBGa', 'users', 'http://localhost', 0, 1, 0, '2023-02-01 08:23:30', '2023-02-01 08:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-02-01 07:49:52', '2023-02-01 07:49:52'),
(2, 2, '2023-02-01 08:23:30', '2023-02-01 08:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'manage_role', 'web', NULL, NULL),
(3, 'manage_permission', 'web', NULL, NULL),
(4, 'manage_user', 'web', NULL, NULL),
(5, 'manage_sales', 'web', NULL, NULL),
(6, 'manage_projects', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', NULL, NULL),
(2, 'Admin', 'web', NULL, NULL),
(3, 'Project Manager', 'web', NULL, NULL),
(4, 'Sales Manager', 'web', NULL, NULL),
(5, 'Member', 'web', NULL, NULL),
(6, 'Customer', 'web', '2024-01-02 03:28:21', '2024-01-02 03:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 2),
(5, 2),
(5, 4),
(6, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_percentage` int(11) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `tax_percentage`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 19, 39, '2024-01-04 14:57:08', '2024-01-04 15:00:25'),
(2, 50, 1, '2024-01-04 15:04:40', '2024-01-04 15:04:40'),
(3, 10, 168, '2024-01-04 15:04:59', '2024-01-04 15:04:59'),
(4, 15, 80, '2024-01-04 19:29:35', '2024-01-04 19:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `address`, `account_no`) VALUES
(1, 'Super Admin', 'admin@test.com', NULL, '$2y$10$kkdDb1ULS0BYvDvslbngpuJkwFnDTOZZRHD1VSZwOoiFFtZzeFnCa', NULL, NULL, NULL, NULL, NULL),
(2, 'Project Manager', 'pm@test.com', NULL, '$2y$10$BBvE6V00Aq/Vz97VXLkd/eRE3rTwp8.zLQVJ/d3N3CioKlheD1Fw2', NULL, NULL, NULL, NULL, NULL),
(3, 'Sales Manager', 'sm@test.com', NULL, '$2y$10$Iy0.CG3ZpXHTqEpbe1/EHe1WQ0/Np/alTT55diUWnFNenD8NX.x0S', NULL, NULL, NULL, NULL, NULL),
(4, 'HR', 'hr@test.com', NULL, '$2y$10$V3XtHHbA99g7Lgz3/IO9wuZJ8VgnJ33VoFDjpITl45pjdBrfHboqW', NULL, NULL, NULL, NULL, NULL),
(5, 'Muhammad Uzair', 'admin@example.com', NULL, '$2y$10$CcGBj55ZMc3Zy0UhIPANPeWQLNBmjVWGgus1kPwwWJv0HowKG0RF6', NULL, '2024-01-02 03:18:54', '2024-01-02 03:18:54', NULL, NULL),
(6, 'Ali Hassan', 'ali@gmail.com', NULL, '$2y$10$TBqZ.5PHdUzLNx9wP96cO.drA3vc6Rr1/j5yKjiWVZdNlBS/wkwWq', NULL, '2024-01-02 03:29:15', '2024-01-02 03:29:15', NULL, NULL),
(7, 'ricez', 'nixesi@mailinator.com', NULL, '$2y$10$pJONBgSCyrvKQ1DuljXvg.JXyuGQCkNyEMP6Q2rFFR7/BWKjZDOve', NULL, '2024-01-04 15:59:15', '2024-01-04 16:02:40', 'Ut eos voluptates do', '244'),
(8, 'mekohuxilo', 'bumy@mailinator.com', NULL, '$2y$10$EwWGueAPkC3VE1LcmvoQfOZ63Te9PaPqikmKXLae8Y/v2dax40iZW', NULL, '2024-01-04 19:31:27', '2024-01-04 19:31:27', 'Excepturi adipisci i', '991');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_invoice_category_id_foreign` (`invoice_category_id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoice_categories`
--
ALTER TABLE `invoice_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_country_id_foreign` (`country_id`);

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
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_categories`
--
ALTER TABLE `invoice_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_invoice_category_id_foreign` FOREIGN KEY (`invoice_category_id`) REFERENCES `invoice_categories` (`id`),
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taxes`
--
ALTER TABLE `taxes`
  ADD CONSTRAINT `taxes_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
