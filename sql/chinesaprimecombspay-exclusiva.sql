-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 06/09/2024 às 18:42
-- Versão do servidor: 8.0.36-0ubuntu0.22.04.1
-- Versão do PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `novachinesa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_histories`
--

CREATE TABLE `affiliate_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `inviter` int UNSIGNED NOT NULL,
  `commission` decimal(20,2) NOT NULL DEFAULT '0.00',
  `commission_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposited` tinyint DEFAULT '0',
  `deposited_amount` decimal(10,2) DEFAULT '0.00',
  `losses` bigint DEFAULT '0',
  `losses_amount` decimal(10,2) DEFAULT '0.00',
  `commission_paid` decimal(10,2) DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receita` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `affiliate_histories`
--

INSERT INTO `affiliate_histories` (`id`, `user_id`, `inviter`, `commission`, `commission_type`, `deposited`, `deposited_amount`, `losses`, `losses_amount`, `commission_paid`, `status`, `created_at`, `updated_at`, `receita`) VALUES
(1, 2763, 2739, 10.00, 'cpa', 0, 1.00, 0, 0.00, 0.00, 0, '2024-05-03 21:10:29', '2024-05-03 21:13:21', NULL),
(2, 2764, 2739, 10.00, 'cpa', 0, 0.00, 0, 0.00, 0.00, 0, '2024-05-03 22:23:03', '2024-05-03 22:23:03', NULL),
(3, 2765, 2739, 10.00, 'cpa', 0, 1.00, 0, 0.00, 0.00, 0, '2024-05-03 22:52:21', '2024-05-03 22:53:31', NULL),
(4, 2766, 2739, 10.00, 'cpa', 0, 0.00, 0, 0.00, 0.00, 0, '2024-05-03 22:55:52', '2024-05-03 22:55:52', NULL),
(5, 2767, 2739, 10.00, 'cpa', 0, 1.00, 0, 0.00, 0.00, 0, '2024-05-03 22:55:57', '2024-05-03 22:59:10', NULL),
(6, 2768, 2739, 10.00, 'cpa', 0, 0.00, 0, 0.00, 0.00, 0, '2024-05-03 23:02:04', '2024-05-03 23:02:04', NULL),
(7, 2769, 2739, 10.00, 'cpa', 0, 3.00, 0, 0.00, 0.00, 0, '2024-05-03 23:04:09', '2024-05-03 23:05:10', NULL),
(8, 2770, 2739, 10.00, 'cpa', 0, 5.00, 0, 0.00, 0.00, 0, '2024-05-04 00:11:04', '2024-05-04 00:14:21', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_withdraws`
--

CREATE TABLE `affiliate_withdraws` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `banners`
--

INSERT INTO `banners` (`id`, `link`, `image`, `type`, `description`, `created_at`, `updated_at`) VALUES
(30, NULL, '01J6D9M8NRD3J7QEJYD28BB4A4.gif', 'carousel', NULL, '2024-05-10 19:14:51', '2024-08-28 15:07:58'),
(29, NULL, '01J6D9KRZMJ8XZ418NABR7HADV.gif', 'carousel', NULL, '2024-05-10 19:14:29', '2024-08-28 15:07:42');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Popular ', 'Fortune dragon', '01HXJB6DRPECAQVXW880MHTCVZ.png', 'Fortune dragon', '2023-11-13 14:59:07', '2024-05-10 19:50:17'),
(17, 'Games ', 'Slots', '01HXJB7HCW8JER7ZCA6A5C1TR3.png', 'Live', '2023-12-24 12:06:46', '2024-05-10 19:50:54'),
(18, 'Pescaria', '  ㅤ', '01HXJB955E5HQYWA3FC8VAKZM1.svg', 'cartas', '2023-12-24 12:10:01', '2024-05-10 19:51:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `category_game`
--

CREATE TABLE `category_game` (
  `category_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `category_game`
--

INSERT INTO `category_game` (`category_id`, `game_id`) VALUES
(1, 631),
(17, 631),
(1, 634),
(17, 632),
(1, 632),
(17, 633),
(17, 634),
(1, 633),
(17, 635),
(1, 635),
(17, 636),
(1, 636),
(17, 637),
(1, 637),
(17, 638),
(1, 638),
(17, 639),
(17, 640),
(1, 640),
(17, 641),
(1, 641),
(1, 639),
(17, 642),
(1, 642),
(19, 1520),
(19, 1457),
(19, 1444),
(19, 1449),
(19, 1514),
(17, 1380),
(20, 6709),
(1, 6709),
(19, 6925),
(19, 7300),
(17, 1345),
(17, 1375),
(17, 1351),
(17, 1367),
(17, 1353),
(17, 1406),
(1, 1406),
(17, 1405),
(1, 1405),
(17, 1404),
(1, 1404),
(17, 1403),
(1, 1402),
(17, 1402),
(17, 1401),
(1, 1401),
(17, 1400),
(1, 1400),
(17, 1399),
(1, 1399),
(17, 1398),
(1, 1398),
(24, 12034),
(17, 12034),
(1, 12034),
(20, 12034),
(23, 12035),
(1, 12035),
(17, 12035),
(20, 12035),
(17, 12036),
(17, 12037),
(17, 12038),
(18, 12039),
(17, 6544);

-- --------------------------------------------------------

--
-- Estrutura para tabela `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2023-11-07 18:01:38', NULL),
(2, 'Dollars', 'USD', '$', '2023-11-07 18:01:38', NULL),
(3, 'Afghanis', 'AFN', '؋', '2023-11-07 18:01:38', NULL),
(4, 'Pesos', 'ARS', '$', '2023-11-07 18:01:38', NULL),
(5, 'Guilders', 'AWG', 'ƒ', '2023-11-07 18:01:38', NULL),
(6, 'Dollars', 'AUD', '$', '2023-11-07 18:01:38', NULL),
(7, 'New Manats', 'AZN', 'ман', '2023-11-07 18:01:38', NULL),
(8, 'Dollars', 'BSD', '$', '2023-11-07 18:01:38', NULL),
(9, 'Dollars', 'BBD', '$', '2023-11-07 18:01:38', NULL),
(10, 'Rubles', 'BYR', 'p.', '2023-11-07 18:01:38', NULL),
(11, 'Euro', 'EUR', '€', '2023-11-07 18:01:38', NULL),
(12, 'Dollars', 'BZD', 'BZ$', '2023-11-07 18:01:38', NULL),
(13, 'Dollars', 'BMD', '$', '2023-11-07 18:01:38', NULL),
(14, 'Bolivianos', 'BOB', '$b', '2023-11-07 18:01:38', NULL),
(15, 'Convertible Marka', 'BAM', 'KM', '2023-11-07 18:01:38', NULL),
(16, 'Pula', 'BWP', 'P', '2023-11-07 18:01:38', NULL),
(17, 'Leva', 'BGN', 'лв', '2023-11-07 18:01:38', NULL),
(18, 'Reais', 'BRL', 'R$', '2023-11-07 18:01:38', NULL),
(19, 'Pounds', 'GBP', '£', '2023-11-07 18:01:38', NULL),
(20, 'Dollars', 'BND', '$', '2023-11-07 18:01:38', NULL),
(21, 'Riels', 'KHR', '៛', '2023-11-07 18:01:38', NULL),
(22, 'Dollars', 'CAD', '$', '2023-11-07 18:01:38', NULL),
(23, 'Dollars', 'KYD', '$', '2023-11-07 18:01:38', NULL),
(24, 'Pesos', 'CLP', '$', '2023-11-07 18:01:38', NULL),
(25, 'Yuan Renminbi', 'CNY', '¥', '2023-11-07 18:01:38', NULL),
(26, 'Pesos', 'COP', '$', '2023-11-07 18:01:38', NULL),
(27, 'Colón', 'CRC', '₡', '2023-11-07 18:01:38', NULL),
(28, 'Kuna', 'HRK', 'kn', '2023-11-07 18:01:38', NULL),
(29, 'Pesos', 'CUP', '₱', '2023-11-07 18:01:38', NULL),
(30, 'Koruny', 'CZK', 'Kč', '2023-11-07 18:01:38', NULL),
(31, 'Kroner', 'DKK', 'kr', '2023-11-07 18:01:38', NULL),
(32, 'Pesos', 'DOP', 'RD$', '2023-11-07 18:01:38', NULL),
(33, 'Dollars', 'XCD', '$', '2023-11-07 18:01:38', NULL),
(34, 'Pounds', 'EGP', '£', '2023-11-07 18:01:38', NULL),
(35, 'Colones', 'SVC', '$', '2023-11-07 18:01:38', NULL),
(36, 'Pounds', 'FKP', '£', '2023-11-07 18:01:38', NULL),
(37, 'Dollars', 'FJD', '$', '2023-11-07 18:01:38', NULL),
(38, 'Cedis', 'GHC', '¢', '2023-11-07 18:01:38', NULL),
(39, 'Pounds', 'GIP', '£', '2023-11-07 18:01:38', NULL),
(40, 'Quetzales', 'GTQ', 'Q', '2023-11-07 18:01:38', NULL),
(41, 'Pounds', 'GGP', '£', '2023-11-07 18:01:38', NULL),
(42, 'Dollars', 'GYD', '$', '2023-11-07 18:01:38', NULL),
(43, 'Lempiras', 'HNL', 'L', '2023-11-07 18:01:38', NULL),
(44, 'Dollars', 'HKD', '$', '2023-11-07 18:01:38', NULL),
(45, 'Forint', 'HUF', 'Ft', '2023-11-07 18:01:38', NULL),
(46, 'Kronur', 'ISK', 'kr', '2023-11-07 18:01:38', NULL),
(47, 'Rupees', 'INR', 'Rp', '2023-11-07 18:01:38', NULL),
(48, 'Rupiahs', 'IDR', 'Rp', '2023-11-07 18:01:38', NULL),
(49, 'Rials', 'IRR', '﷼', '2023-11-07 18:01:38', NULL),
(50, 'Pounds', 'IMP', '£', '2023-11-07 18:01:38', NULL),
(51, 'New Shekels', 'ILS', '₪', '2023-11-07 18:01:38', NULL),
(52, 'Dollars', 'JMD', 'J$', '2023-11-07 18:01:38', NULL),
(53, 'Yen', 'JPY', '¥', '2023-11-07 18:01:38', NULL),
(54, 'Pounds', 'JEP', '£', '2023-11-07 18:01:38', NULL),
(55, 'Tenge', 'KZT', 'лв', '2023-11-07 18:01:38', NULL),
(56, 'Won', 'KPW', '₩', '2023-11-07 18:01:38', NULL),
(57, 'Won', 'KRW', '₩', '2023-11-07 18:01:38', NULL),
(58, 'Soms', 'KGS', 'лв', '2023-11-07 18:01:38', NULL),
(59, 'Kips', 'LAK', '₭', '2023-11-07 18:01:38', NULL),
(60, 'Lati', 'LVL', 'Ls', '2023-11-07 18:01:38', NULL),
(61, 'Pounds', 'LBP', '£', '2023-11-07 18:01:38', NULL),
(62, 'Dollars', 'LRD', '$', '2023-11-07 18:01:38', NULL),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2023-11-07 18:01:38', NULL),
(64, 'Litai', 'LTL', 'Lt', '2023-11-07 18:01:38', NULL),
(65, 'Denars', 'MKD', 'ден', '2023-11-07 18:01:38', NULL),
(66, 'Ringgits', 'MYR', 'RM', '2023-11-07 18:01:38', NULL),
(67, 'Rupees', 'MUR', '₨', '2023-11-07 18:01:38', NULL),
(68, 'Pesos', 'MXN', '$', '2023-11-07 18:01:38', NULL),
(69, 'Tugriks', 'MNT', '₮', '2023-11-07 18:01:38', NULL),
(70, 'Meticais', 'MZN', 'MT', '2023-11-07 18:01:38', NULL),
(71, 'Dollars', 'NAD', '$', '2023-11-07 18:01:38', NULL),
(72, 'Rupees', 'NPR', '₨', '2023-11-07 18:01:38', NULL),
(73, 'Guilders', 'ANG', 'ƒ', '2023-11-07 18:01:38', NULL),
(74, 'Dollars', 'NZD', '$', '2023-11-07 18:01:38', NULL),
(75, 'Cordobas', 'NIO', 'C$', '2023-11-07 18:01:38', NULL),
(76, 'Nairas', 'NGN', '₦', '2023-11-07 18:01:38', NULL),
(77, 'Krone', 'NOK', 'kr', '2023-11-07 18:01:38', NULL),
(78, 'Rials', 'OMR', '﷼', '2023-11-07 18:01:38', NULL),
(79, 'Rupees', 'PKR', '₨', '2023-11-07 18:01:38', NULL),
(80, 'Balboa', 'PAB', 'B/.', '2023-11-07 18:01:38', NULL),
(81, 'Guarani', 'PYG', 'Gs', '2023-11-07 18:01:38', NULL),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2023-11-07 18:01:38', NULL),
(83, 'Pesos', 'PHP', 'Php', '2023-11-07 18:01:38', NULL),
(84, 'Zlotych', 'PLN', 'zł', '2023-11-07 18:01:38', NULL),
(85, 'Rials', 'QAR', '﷼', '2023-11-07 18:01:38', NULL),
(86, 'New Lei', 'RON', 'lei', '2023-11-07 18:01:38', NULL),
(87, 'Rubles', 'RUB', 'руб', '2023-11-07 18:01:38', NULL),
(88, 'Pounds', 'SHP', '£', '2023-11-07 18:01:38', NULL),
(89, 'Riyals', 'SAR', '﷼', '2023-11-07 18:01:38', NULL),
(90, 'Dinars', 'RSD', 'Дин.', '2023-11-07 18:01:38', NULL),
(91, 'Rupees', 'SCR', '₨', '2023-11-07 18:01:38', NULL),
(92, 'Dollars', 'SGD', '$', '2023-11-07 18:01:38', NULL),
(93, 'Dollars', 'SBD', '$', '2023-11-07 18:01:38', NULL),
(94, 'Shillings', 'SOS', 'S', '2023-11-07 18:01:38', NULL),
(95, 'Rand', 'ZAR', 'R', '2023-11-07 18:01:38', NULL),
(96, 'Rupees', 'LKR', '₨', '2023-11-07 18:01:38', NULL),
(97, 'Kronor', 'SEK', 'kr', '2023-11-07 18:01:38', NULL),
(98, 'Dollars', 'SRD', '$', '2023-11-07 18:01:38', NULL),
(99, 'Pounds', 'SYP', '£', '2023-11-07 18:01:38', NULL),
(100, 'New Dollars', 'TWD', 'NT$', '2023-11-07 18:01:38', NULL),
(101, 'Baht', 'THB', '฿', '2023-11-07 18:01:38', NULL),
(102, 'Dollars', 'TTD', 'TT$', '2023-11-07 18:01:38', NULL),
(103, 'Lira', 'TRY', '₺', '2023-11-07 18:01:38', NULL),
(104, 'Liras', 'TRL', '£', '2023-11-07 18:01:38', NULL),
(105, 'Dollars', 'TVD', '$', '2023-11-07 18:01:38', NULL),
(106, 'Hryvnia', 'UAH', '₴', '2023-11-07 18:01:38', NULL),
(107, 'Pesos', 'UYU', '$U', '2023-11-07 18:01:38', NULL),
(108, 'Sums', 'UZS', 'лв', '2023-11-07 18:01:38', NULL),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2023-11-07 18:01:38', NULL),
(110, 'Dong', 'VND', '₫', '2023-11-07 18:01:38', NULL),
(111, 'Rials', 'YER', '﷼', '2023-11-07 18:01:38', NULL),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2023-11-07 18:01:38', NULL),
(113, 'Rupees', 'INR', '₹', '2023-11-07 18:01:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `currency_alloweds`
--

CREATE TABLE `currency_alloweds` (
  `id` bigint UNSIGNED NOT NULL,
  `currency_id` bigint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `custom_layouts`
--

CREATE TABLE `custom_layouts` (
  `id` bigint UNSIGNED NOT NULL,
  `font_family_default` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#0073D2',
  `primary_opacity_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secundary_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#084375',
  `gray_dark_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#3b3b3b',
  `gray_light_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#c9c9c9',
  `gray_medium_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#676767',
  `gray_over_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#1A1C20',
  `title_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#98A7B5',
  `sub_text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#656E78',
  `placeholder_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#4D565E',
  `background_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#24262B',
  `background_base` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#ECEFF1',
  `background_base_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#24262B',
  `carousel_banners` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#1E2024',
  `carousel_banners_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#1E2024',
  `sidebar_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navtop_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navtop_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_menu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_menu_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_primary` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_primary_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_radius` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.25rem',
  `custom_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_js` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_header` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whastapp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_img_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idPixelFC` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idPixelGoogle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `custom_layouts`
--

INSERT INTO `custom_layouts` (`id`, `font_family_default`, `primary_color`, `primary_opacity_color`, `secundary_color`, `gray_dark_color`, `gray_light_color`, `gray_medium_color`, `gray_over_color`, `title_color`, `text_color`, `sub_text_color`, `placeholder_color`, `background_color`, `background_base`, `background_base_dark`, `carousel_banners`, `carousel_banners_dark`, `sidebar_color`, `sidebar_color_dark`, `navtop_color`, `navtop_color_dark`, `side_menu`, `side_menu_dark`, `input_primary`, `input_primary_dark`, `footer_color`, `footer_color_dark`, `card_color`, `card_color_dark`, `border_radius`, `custom_css`, `custom_js`, `custom_header`, `custom_body`, `created_at`, `updated_at`, `instagram`, `facebook`, `telegram`, `twitter`, `whastapp`, `youtube`, `category_color`, `category_img_color`, `button_text`, `idPixelFC`, `idPixelGoogle`) VALUES
(1, '\'Roboto Condensed\', sans-serif', '#121b2e', '#121b2e', '#09204f', '#09204f', '#ffffff', '#09204f', '#09204f', '#ffffff', '#ffffff', '#ffffff', '#1c1c1c', '#09204f', '#09204f', '#09204f', '#09204f', '#09204f', '#ffffff', '#121b2e', '#6d8ff7', '#09204f', '#09204f', '#09204f', '#121b2e', '#09204f', '#6d8ff7', '#09204f', '#09204f', '#121b2e', '.25rem', '/* Carousel  next */\n.carousel-banners div .carousel__next{\n display:none;\n}\n.invite-color[data-v-cec80350] {\n    background-color: #05995a !important;\n    z-index: 9999;\n}\n\n.text-invite[data-v-cec80350] {\n    color: #fff !important;\n    font-weight: 700 !important;\n\n \n}\n\n/* Carousel  prev */\n.carousel-banners div .carousel__prev{\n display:none;\n}\n\n/* Nui mask hexed */\n.category-list .flex .nui-mask-hexed{\n background-color:#ffffff;\n}\n\n/* Full */\n.carousel-banners .carousel__item .w-full .h-full{\n border-top-left-radius:16px;\n border-top-right-radius:16px;\n border-bottom-left-radius:16px;\n border-bottom-right-radius:16px;\n}\n\n/* Input */\n.sm\\:ml-64 div input[type=search]{\n border-top-right-radius:8px;\n border-top-left-radius:8px;\n border-bottom-left-radius:8px;\n border-bottom-right-radius:8px;\n}\n\n@media (max-width:621px){\n\n /* Input */\n .sm\\:ml-64 div input[type=search]{\n  border-top-right-radius:8px;\n  border-top-left-radius:8px;\n }\n \n}\n.hidden.lg\\:block {\n    display: none !important;\n}\n.flex.justify-between.w-full.text-gray-700.dark\\:text-gray-400.px-3.py-2 {\ndisplay: none !important; }\n\n\n', '', NULL, NULL, '2024-01-01 14:36:03', '2024-08-30 22:49:41', '', NULL, 'https://t.me/tapagandoagoraa', NULL, NULL, NULL, '#36271C', 'brightness(0) saturate(100%) invert(54%) sepia(56%) saturate(6804%) hue-rotate(236deg) brightness(87%) contrast(88%);', '#03b513', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `debug`
--

CREATE TABLE `debug` (
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `debug`
--

INSERT INTO `debug` (`text`) VALUES
('\"PlaceBet: 914806915\"'),
('\"PlaceBet: 914806915\"'),
('\"AwardWinnings: 914806915\"'),
('\"PlaceBet: 914806916\"'),
('\"AwardWinnings: 914806916\"'),
('\"PlaceBet: 914806916\"'),
('\"PlaceBet: 914806917\"'),
('\"PlaceBet: 914806918\"'),
('\"AwardWinnings: 914806918\"'),
('\"PlaceBet: 914806918\"'),
('\"PlaceBet: 914806919\"'),
('\"AwardWinnings: 914806919\"'),
('\"AwardWinnings: 914806919\"'),
('\"PlaceBet: 914806920\"'),
('\"PlaceBet: 914806921\"'),
('\"AwardWinnings: 914806921\"'),
('\"PlaceBet: 535367\"'),
('\"PlaceBet: 154646\"'),
('\"PlaceBet: 914806922\"'),
('\"PlaceBet: 914806923\"'),
('\"PlaceBet: 914806924\"'),
('\"AwardWinnings: 914806924\"'),
('{\"idTransaction\":\"1dee1438-a1d0-4f92-b568-063bcabb911f\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"value\":4,\"destinationName\":\"Keven Alves Barbosa\",\"destinationTaxId\":\"***.043.851-**\",\"destinationBank\":\"NUBANK\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `digito_pay_payments`
--

CREATE TABLE `digito_pay_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `withdrawal_id` bigint UNSIGNED NOT NULL,
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pix_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `observation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ezze_bank_payments`
--

CREATE TABLE `ezze_bank_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `withdrawal_id` bigint UNSIGNED NOT NULL,
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `observation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `games`
--

CREATE TABLE `games` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_id` int UNSIGNED NOT NULL,
  `game_server_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `technology` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_lobby` tinyint NOT NULL DEFAULT '0',
  `is_mobile` tinyint NOT NULL DEFAULT '0',
  `has_freespins` tinyint NOT NULL DEFAULT '0',
  `has_tables` tinyint NOT NULL DEFAULT '0',
  `only_demo` tinyint DEFAULT '0',
  `rtp` bigint NOT NULL COMMENT 'Controle de RTP em porcentagem',
  `distribution` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'primeconnect' COMMENT 'O nome do provedor',
  `views` bigint NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) DEFAULT '0',
  `show_home` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games`
--

INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, '1', 'Honey Trap Of Diao Chan', '1', NULL, NULL, 'primeconnect/PGSOFT/1.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:49', '2024-08-28 14:21:49'),
(2, 2, NULL, '6', 'Medusa 2', '6', NULL, NULL, 'primeconnect/PGSOFT/6.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:50', '2024-08-28 14:21:50'),
(3, 2, NULL, '7', 'Medusa', '7', NULL, NULL, 'primeconnect/PGSOFT/7.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:50', '2024-08-28 14:21:50'),
(4, 2, NULL, '25', 'Plushie Frenzy', '25', NULL, NULL, 'primeconnect/PGSOFT/25.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:50', '2024-08-28 14:21:50'),
(5, 2, NULL, '29', 'Dragon Legend', '29', NULL, NULL, 'primeconnect/PGSOFT/29.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:50', '2024-08-28 14:21:50'),
(6, 2, NULL, '35', 'Mr. Hallow-Win', '35', NULL, NULL, 'primeconnect/PGSOFT/35.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:50', '2024-08-28 14:21:50'),
(7, 2, NULL, '34', 'Legend Of Hou Yi', '34', NULL, NULL, 'primeconnect/PGSOFT/34.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:50', '2024-08-28 14:21:50'),
(8, 2, NULL, '36', 'Prosperity Lion', '36', NULL, NULL, 'primeconnect/PGSOFT/36.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:50', '2024-08-28 14:21:50'),
(9, 2, NULL, '33', 'Hip Hop Panda', '33', NULL, NULL, 'primeconnect/PGSOFT/33.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:50', '2024-08-28 14:21:50'),
(10, 2, NULL, '37', 'Santa\'s Gift Rush', '37', NULL, NULL, 'primeconnect/PGSOFT/37.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:50', '2024-08-28 14:21:50'),
(11, 2, NULL, '3', 'Fortune Gods', '3', NULL, NULL, 'primeconnect/PGSOFT/3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:50', '2024-08-28 14:21:50'),
(12, 2, NULL, '24', 'Win Win Won', '24', NULL, NULL, 'primeconnect/PGSOFT/24.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(13, 2, NULL, '38', 'Gem Saviour Sword', '38', NULL, NULL, 'primeconnect/PGSOFT/38.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(14, 2, NULL, '39', 'Piggy Gold', '39', NULL, NULL, 'primeconnect/PGSOFT/39.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(15, 2, NULL, '50', 'Journey To The Wealth', '50', NULL, NULL, 'primeconnect/PGSOFT/50.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(16, 2, NULL, '42', 'Ganesha Gold', '42', NULL, NULL, 'primeconnect/PGSOFT/42.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(17, 2, NULL, '54', 'Captain Bounty', '54', NULL, NULL, 'primeconnect/PGSOFT/54.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(18, 2, NULL, '40', 'Jungle Delight', '40', NULL, NULL, 'primeconnect/PGSOFT/40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(19, 2, NULL, '53', 'The Great Icescape', '53', NULL, NULL, 'primeconnect/PGSOFT/53.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(20, 2, NULL, '44', 'Emperors Favour', '44', NULL, NULL, 'primeconnect/PGSOFT/44.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(21, 2, NULL, '48', 'Double Fortune', '48', NULL, NULL, 'primeconnect/PGSOFT/48.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(22, 2, NULL, '60', 'Leprechaun Riches', '60', NULL, NULL, 'primeconnect/PGSOFT/60.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(23, 2, NULL, '59', 'Ninja Vs Samurai', '59', NULL, NULL, 'primeconnect/PGSOFT/59.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(24, 2, NULL, '63', 'Dragon Tiger Luck', '63', NULL, NULL, 'primeconnect/PGSOFT/63.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(25, 2, NULL, '64', 'Muay Thai Champion', '64', NULL, NULL, 'primeconnect/PGSOFT/64.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(26, 2, NULL, '61', 'Flirting Scholar', '61', NULL, NULL, 'primeconnect/PGSOFT/61.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:51', '2024-08-28 14:21:51'),
(27, 2, NULL, '62', 'Gem Saviour Conquest', '62', NULL, NULL, 'primeconnect/PGSOFT/62.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:52', '2024-08-28 14:21:52'),
(28, 2, NULL, '65', 'Mahjong Ways', '65', NULL, NULL, 'primeconnect/PGSOFT/65.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:52', '2024-08-28 14:21:52'),
(29, 2, NULL, '57', 'Dragon Hatch', '57', NULL, NULL, 'primeconnect/PGSOFT/57.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:52', '2024-08-28 14:21:52'),
(30, 2, NULL, '68', 'Fortune Mouse', '68', NULL, NULL, 'primeconnect/PGSOFT/68.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:52', '2024-08-28 14:21:52'),
(31, 2, NULL, '20', 'Reel Love', '20', NULL, NULL, 'primeconnect/PGSOFT/20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:52', '2024-08-28 14:21:52'),
(32, 2, NULL, '69', 'Bikini Paradise', '69', NULL, NULL, 'primeconnect/PGSOFT/69.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:52', '2024-08-28 14:21:52'),
(33, 2, NULL, '67', 'Shaolin Soccer', '67', NULL, NULL, 'primeconnect/PGSOFT/67.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:52', '2024-08-28 14:21:52'),
(34, 2, NULL, '71', 'Caishen Wins', '71', NULL, NULL, 'primeconnect/PGSOFT/71.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:52', '2024-08-28 14:21:52'),
(35, 2, NULL, '70', 'Candy Burst', '70', NULL, NULL, 'primeconnect/PGSOFT/70.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(36, 2, NULL, '74', 'Mahjong Ways 2', '74', NULL, NULL, 'primeconnect/PGSOFT/74.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(37, 2, NULL, '73', 'Egypt\'s Book of Mystery', '73', NULL, NULL, 'primeconnect/PGSOFT/73.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(38, 2, NULL, '75', 'Ganesha Fortune', '75', NULL, NULL, 'primeconnect/PGSOFT/75.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(39, 2, NULL, '82', 'Phoenix Rises', '82', NULL, NULL, 'primeconnect/PGSOFT/82.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(40, 2, NULL, '79', 'Dreams Of Macau', '79', NULL, NULL, 'primeconnect/PGSOFT/79.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(41, 2, NULL, '83', 'Wild Fireworks', '83', NULL, NULL, 'primeconnect/PGSOFT/83.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(42, 2, NULL, '85', 'Genie\'s 3 Wishes', '85', NULL, NULL, 'primeconnect/PGSOFT/85.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(43, 2, NULL, '80', 'Circus Delight', '80', NULL, NULL, 'primeconnect/PGSOFT/80.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(44, 2, NULL, '90', 'Secret Of Cleopatra', '90', NULL, NULL, 'primeconnect/PGSOFT/90.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(45, 2, NULL, '58', 'Vampire\'s Charm', '58', NULL, NULL, 'primeconnect/PGSOFT/58.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(46, 2, NULL, '84', 'Queen Of Bounty', '84', NULL, NULL, 'primeconnect/PGSOFT/84.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(47, 2, NULL, '92', 'Thai River Wonders', '92', NULL, NULL, 'primeconnect/PGSOFT/92.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(48, 2, NULL, '88', 'Jewels Of Prosperity', '88', NULL, NULL, 'primeconnect/PGSOFT/88.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:53', '2024-08-28 14:21:53'),
(49, 2, NULL, '93', 'Opera Dynasty', '93', NULL, NULL, 'primeconnect/PGSOFT/93.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(50, 2, NULL, '97', 'Jack Frosts Winter', '97', NULL, NULL, 'primeconnect/PGSOFT/97.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(51, 2, NULL, '86', 'Galactic Gems', '86', NULL, NULL, 'primeconnect/PGSOFT/86.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(52, 2, NULL, '87', 'Treasure Of Aztec', '87', NULL, NULL, 'primeconnect/PGSOFT/87.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(53, 2, NULL, '91', 'Guardians Of Ice And Fire', '91', NULL, NULL, 'primeconnect/PGSOFT/91.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(54, 2, NULL, '98', 'Fortune Ox', '98', NULL, NULL, 'primeconnect/PGSOFT/98.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 1, 1, 1, '2024-08-28 14:21:54', '2024-09-02 13:48:49'),
(55, 2, NULL, '89', 'Lucky Neko', '89', NULL, NULL, 'primeconnect/PGSOFT/89.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(56, 2, NULL, '101', 'Rise Of Apollo', '101', NULL, NULL, 'primeconnect/PGSOFT/101.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(57, 2, NULL, '94', 'Bali Vacation', '94', NULL, NULL, 'primeconnect/PGSOFT/94.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(58, 2, NULL, '95', 'Majestic Treasures', '95', NULL, NULL, 'primeconnect/PGSOFT/95.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(59, 2, NULL, '100', 'Candy Bonanza', '100', NULL, NULL, 'primeconnect/PGSOFT/100.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(60, 2, NULL, '103', 'Crypto Gold', '103', NULL, NULL, 'primeconnect/PGSOFT/103.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(61, 2, NULL, '104', 'Wild Bandito', '104', NULL, NULL, 'primeconnect/PGSOFT/104.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(62, 2, NULL, '105', 'Heist Stakes', '105', NULL, NULL, 'primeconnect/PGSOFT/105.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:54', '2024-08-28 14:21:54'),
(63, 2, NULL, '106', 'Ways Of The Qilin', '106', NULL, NULL, 'primeconnect/PGSOFT/106.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(64, 2, NULL, '102', 'Mermaid Riches', '102', NULL, NULL, 'primeconnect/PGSOFT/102.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(65, 2, NULL, '110', 'Jurassic Kingdom', '110', NULL, NULL, 'primeconnect/PGSOFT/110.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(66, 2, NULL, '113', 'Raider Janes Crypt Of Fortune', '113', NULL, NULL, 'primeconnect/PGSOFT/113.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(67, 2, NULL, '115', 'Supermarket Spree', '115', NULL, NULL, 'primeconnect/PGSOFT/115.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(68, 2, NULL, '108', 'Buffalo Win', '108', NULL, NULL, 'primeconnect/PGSOFT/108.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(69, 2, NULL, '107', 'Legendary Monkey King', '107', NULL, NULL, 'primeconnect/PGSOFT/107.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(70, 2, NULL, '119', 'Spirited Wonders', '119', NULL, NULL, 'primeconnect/PGSOFT/119.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(71, 2, NULL, '112', 'Oriental Prosperity', '112', NULL, NULL, 'primeconnect/PGSOFT/112.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(72, 2, NULL, '117', 'Cocktail Nights', '117', NULL, NULL, 'primeconnect/PGSOFT/117.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(73, 2, NULL, '114', 'Emoji Riches', '114', NULL, NULL, 'primeconnect/PGSOFT/114.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(74, 2, NULL, '118', 'Mask Carnival', '118', NULL, NULL, 'primeconnect/PGSOFT/118.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(75, 2, NULL, '126', 'Fortune Tiger', '126', NULL, NULL, 'primeconnect/PGSOFT/126.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 4, 1, 1, '2024-08-28 14:21:55', '2024-08-31 16:57:00'),
(76, 2, NULL, '122', 'Garuda Gems', '122', NULL, NULL, 'primeconnect/PGSOFT/122.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(77, 2, NULL, '121', 'Destiny Of Sun And Moon', '121', NULL, NULL, 'primeconnect/PGSOFT/121.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:55', '2024-08-28 14:21:55'),
(78, 2, NULL, '125', 'Butterfly Blossom', '125', NULL, NULL, 'primeconnect/PGSOFT/125.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(79, 2, NULL, '123', 'Rooster Rumble', '123', NULL, NULL, 'primeconnect/PGSOFT/123.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(80, 2, NULL, '124', 'Battleground Royale', '124', NULL, NULL, 'primeconnect/PGSOFT/124.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(81, 2, NULL, '129', 'Win Win Fish Prawn Crab', '129', NULL, NULL, 'primeconnect/PGSOFT/129.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(82, 2, NULL, '130', 'Lucky Piggy', '130', NULL, NULL, 'primeconnect/PGSOFT/130.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(83, 2, NULL, '127', 'Speed Winner', '127', NULL, NULL, 'primeconnect/PGSOFT/127.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(84, 2, NULL, '128', 'Legend Of Perseus', '128', NULL, NULL, 'primeconnect/PGSOFT/128.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(85, 2, NULL, '120', 'The Queen\'s Banquet', '120', NULL, NULL, 'primeconnect/PGSOFT/120.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(86, 2, NULL, '132', 'Wild Coaster', '132', NULL, NULL, 'primeconnect/PGSOFT/132.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(87, 2, NULL, '135', 'Wild Bounty Showdown', '135', NULL, NULL, 'primeconnect/PGSOFT/135.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(88, 2, NULL, '1312883', 'Prosperity Fortune Tree', '1312883', NULL, NULL, 'primeconnect/PGSOFT/1312883.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(89, 2, NULL, '1338274', 'Totem Wonders', '1338274', NULL, NULL, 'primeconnect/PGSOFT/1338274.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(90, 2, NULL, '1340277', 'Asgardian Rising', '1340277', NULL, NULL, 'primeconnect/PGSOFT/1340277.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(91, 2, NULL, '1368367', 'Alchemy Gold', '1368367', NULL, NULL, 'primeconnect/PGSOFT/1368367.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(92, 2, NULL, '1372643', 'Dinner Delights', '1372643', NULL, NULL, 'primeconnect/PGSOFT/1372643.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:56', '2024-08-28 14:21:56'),
(93, 2, NULL, '1402846', 'Midas Fortune', '1402846', NULL, NULL, 'primeconnect/PGSOFT/1402846.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(94, 2, NULL, '1543462', 'Fortune Rabbit', '1543462', NULL, NULL, 'primeconnect/PGSOFT/1543462.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 1, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(95, 2, NULL, '1420892', 'Rave Party Fever', '1420892', NULL, NULL, 'primeconnect/PGSOFT/1420892.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(96, 2, NULL, '1381200', 'Hawaiian Tiki', '1381200', NULL, NULL, 'primeconnect/PGSOFT/1381200.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(97, 2, NULL, '1418544', 'Bakery Bonanza', '1418544', NULL, NULL, 'primeconnect/PGSOFT/1418544.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(98, 2, NULL, '1448762', 'Songkran Splash', '1448762', NULL, NULL, 'primeconnect/PGSOFT/1448762.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(99, 2, NULL, '1432733', 'Mystical Spirits', '1432733', NULL, NULL, 'primeconnect/PGSOFT/1432733.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(100, 2, NULL, '1513328', 'Super Golf Drive', '1513328', NULL, NULL, 'primeconnect/PGSOFT/1513328.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(101, 2, NULL, '1601012', 'Lucky Clover Lady', '1601012', NULL, NULL, 'primeconnect/PGSOFT/1601012.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(102, 2, NULL, '1397455', 'Fruity Candy', '1397455', NULL, NULL, 'primeconnect/PGSOFT/1397455.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(103, 2, NULL, '1473388', 'Cruise Royale', '1473388', NULL, NULL, 'primeconnect/PGSOFT/1473388.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(104, 2, NULL, '1594259', 'Safari Wilds', '1594259', NULL, NULL, 'primeconnect/PGSOFT/1594259.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(105, 2, NULL, '1572362', 'Gladiators Glory', '1572362', NULL, NULL, 'primeconnect/PGSOFT/1572362.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(106, 2, NULL, '1529867', 'Ninja Raccoon Frenzy', '1529867', NULL, NULL, 'primeconnect/PGSOFT/1529867.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(107, 2, NULL, '1489936', 'Ultimate Striker', '1489936', NULL, NULL, 'primeconnect/PGSOFT/1489936.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:57', '2024-08-28 14:21:57'),
(108, 2, NULL, '1568554', 'Wild Heist Cashout', '1568554', NULL, NULL, 'primeconnect/PGSOFT/1568554.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(109, 2, NULL, '1555350', 'Forge Of Wealth', '1555350', NULL, NULL, 'primeconnect/PGSOFT/1555350.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(110, 2, NULL, '1580541', 'Mafia Mayhem', '1580541', NULL, NULL, 'primeconnect/PGSOFT/1580541.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(111, 2, NULL, '1655268', 'Tsar Treasures', '1655268', NULL, NULL, 'primeconnect/PGSOFT/1655268.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(112, 2, NULL, '1615454', 'Werewolf\'s Hunt', '1615454', NULL, NULL, 'primeconnect/PGSOFT/1615454.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(113, 2, NULL, '1451122', 'Dragon Hatch 2', '1451122', NULL, NULL, 'primeconnect/PGSOFT/1451122.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(114, 2, NULL, '1695365', 'Fortune Dragon', '1695365', NULL, NULL, 'primeconnect/PGSOFT/1695365.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 1, 1, 1, '2024-08-28 14:21:58', '2024-08-31 17:13:34'),
(115, 2, NULL, '1671262', 'Gemstones Gold', '1671262', NULL, NULL, 'primeconnect/PGSOFT/1671262.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(116, 2, NULL, '1682240', 'Cash Mania', '1682240', NULL, NULL, 'primeconnect/PGSOFT/1682240.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 1, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(117, 2, NULL, '1508783', 'Wild Ape #3258', '1508783', NULL, NULL, 'primeconnect/PGSOFT/1508783.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 1, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(118, 2, NULL, '1492288', 'Pinata Wins', '1492288', NULL, NULL, 'primeconnect/PGSOFT/1492288.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(119, 2, NULL, '1717688', 'Mystic Potion', '1717688', NULL, NULL, 'primeconnect/PGSOFT/1717688.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(120, 2, NULL, '1623475', 'Anubis Wrath', '1623475', NULL, NULL, 'primeconnect/PGSOFT/1623475.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:58', '2024-08-28 14:21:58'),
(121, 3, NULL, '2373', 'Tales of Egypt', '2373', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2373.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:21:58', '2024-08-28 15:36:08'),
(122, 3, NULL, '2277', 'Great Reef', '2277', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2277.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:59', '2024-08-28 14:21:59'),
(123, 3, NULL, '2376', 'Glorious Rome', '2376', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2376.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:21:59', '2024-08-28 15:36:31'),
(124, 3, NULL, '2375', 'Dwarven Gold', '2375', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2375.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:21:59', '2024-08-28 15:36:45'),
(125, 3, NULL, '2370', 'Lady of the Moon', '2370', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2370.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:21:59', '2024-08-28 15:37:08'),
(126, 3, NULL, '2380', 'Aladdin’s Treasure', '2380', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2380.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:21:59', '2024-08-28 15:37:51'),
(127, 3, NULL, '2369', 'Hockey League', '2369', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2369.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:21:59', '2024-08-28 15:38:27'),
(128, 3, NULL, '2368', 'Magic Crystals', '2368', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2368.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:21:59', '2024-08-28 15:39:06'),
(129, 3, NULL, '2367', 'The Catfather', '2367', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2367.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:21:59', '2024-08-28 15:39:59'),
(130, 3, NULL, '2289', 'Lady Godiva', '2289', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2289.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:59', '2024-08-28 14:21:59'),
(131, 3, NULL, '2290', 'Mighty Kong', '2290', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2290.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:59', '2024-08-28 14:21:59'),
(132, 3, NULL, '2366', 'Hockey League Wild Match', '2366', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2366.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:21:59', '2024-08-28 15:38:28'),
(133, 3, NULL, '2273', '7 Monkeys', '2273', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2273.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:59', '2024-08-28 14:21:59'),
(134, 3, NULL, '2365', 'Romeo and Juliet', '2365', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2365.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:21:59', '2024-08-28 15:40:12'),
(135, 3, NULL, '2271', 'Dwarven Gold Deluxe', '2271', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2271.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:21:59', '2024-08-28 14:21:59'),
(136, 3, NULL, '2364', 'The Catfather Part II', '2364', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2364.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:21:59', '2024-08-28 15:39:58'),
(137, 3, NULL, '2270', 'Lucky Dragons', '2270', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2270.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(138, 3, NULL, '2286', 'Journey to the West', '2286', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2286.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(139, 3, NULL, '2268', '3 Genie Wishes', '2268', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2268.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(140, 3, NULL, '2285', 'Dragon Kingdom', '2285', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2285.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(141, 3, NULL, '2269', 'Hercules Son of Zeus', '2269', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2269.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(142, 3, NULL, '2247', 'Lucky Dragon Ball', '2247', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2247.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(143, 3, NULL, '2214', 'Golden Pig', '2214', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2214.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(144, 3, NULL, '2224', 'Mahjong Panda', '2224', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2224.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(145, 3, NULL, '2227', 'Money Money Money', '2227', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2227.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(146, 3, NULL, '2371', 'Joker\'s Jewel Dice', '2371', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2371.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(147, 3, NULL, '2299', 'Busy Bees', '2299', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(148, 3, NULL, '2374', 'The Dog House Dice Show', '2374', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2374.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(149, 3, NULL, '2303', 'Moonshot', '2303', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2303.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(150, 3, NULL, '2017', 'Beowulf', '2017', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2017.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(151, 3, NULL, '2379', '3 Kingdoms – Battle of Red Cliffs', '2379', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2379.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:00', '2024-08-28 14:22:00'),
(152, 3, NULL, '2274', 'Devil\'s 13', '2274', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(153, 3, NULL, '2363', 'Queen of Atlantis', '2363', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2363.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(154, 3, NULL, '2362', 'Panther Queen', '2362', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2362.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(155, 3, NULL, '2272', 'Hot Safari', '2272', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2272.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(156, 3, NULL, '2056', '8 Dragons', '2056', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2056.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(157, 3, NULL, '2155', '888 Dragons', '2155', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2155.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(158, 3, NULL, '2008', 'Wolf Gold', '2008', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2008.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(159, 3, NULL, '2378', 'Jurassic Giants', '2378', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2378.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(160, 3, NULL, '2284', 'Pixie Wings', '2284', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2284.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(161, 3, NULL, '2215', 'Caishen’s Gold', '2215', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2215.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(162, 3, NULL, '2230', 'Wild Spells', '2230', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2230.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(163, 3, NULL, '2267', 'Vegas Nights', '2267', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2267.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(164, 3, NULL, '2018', 'Diamond Strike', '2018', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2018.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 1, 1, '2024-08-28 14:22:01', '2024-08-28 14:22:01'),
(165, 3, NULL, '2266', '7 Piggies', '2266', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2266.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:02', '2024-08-28 14:22:02'),
(166, 3, NULL, '2001', 'Panda’s Fortune', '2001', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2001.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:02', '2024-08-28 14:22:02'),
(167, 3, NULL, '2265', 'Santa', '2265', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2265.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:02', '2024-08-28 14:22:02'),
(168, 3, NULL, '2219', 'Triple Tigers', '2219', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2219.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:02', '2024-08-28 14:22:02'),
(169, 3, NULL, '2263', 'Monkey Madness', '2263', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2263.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:02', '2024-08-28 14:22:02'),
(170, 3, NULL, '2264', 'Gold Rush', '2264', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2264.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:02', '2024-08-28 14:22:02'),
(171, 3, NULL, '2207', 'Chilli Heat', '2207', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2207.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:02', '2024-08-28 14:22:02'),
(172, 3, NULL, '2032', 'Lucky New Year', '2032', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2032.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:02', '2024-08-28 14:22:02'),
(173, 3, NULL, '2262', 'Ancient Egypt', '2262', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2262.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:02', '2024-08-28 14:22:02'),
(174, 3, NULL, '2051', 'Aztec Gems', '2051', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2051.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(175, 3, NULL, '2292', 'Fairytale Fortune', '2292', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2292.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(176, 3, NULL, '2196', 'Fire 88', '2196', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2196.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(177, 3, NULL, '2154', 'Joker’s Jewels', '2154', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2154.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(178, 3, NULL, '2013', 'Great Rhino', '2013', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2013.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(179, 3, NULL, '2030', '5 Lions', '2030', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2030.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(180, 3, NULL, '2045', 'Asgard', '2045', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2045.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(181, 3, NULL, '2261', 'Madame Destiny', '2261', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2261.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(182, 3, NULL, '2054', 'Peking Luck', '2054', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2054.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(183, 3, NULL, '2083', 'Leprechaun Song', '2083', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2083.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(184, 3, NULL, '2279', 'Da Vinci’s Treasure', '2279', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2279.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(185, 3, NULL, '2260', 'Master Chen’s Fortune', '2260', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2260.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(186, 3, NULL, '2040', 'Vegas Magic', '2040', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2040.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(187, 3, NULL, '2003', 'Ancient Egypt Classic', '2003', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2003.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(188, 3, NULL, '2259', 'Triple Dragons', '2259', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2259.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(189, 3, NULL, '2298', 'Leprechaun Carol', '2298', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2298.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:03', '2024-08-28 14:22:03'),
(190, 3, NULL, '2044', 'Mustang Gold', '2044', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2044.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(191, 3, NULL, '2257', 'Treasure Horse', '2257', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2257.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(192, 3, NULL, '2258', 'Safari King', '2258', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2258.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(193, 3, NULL, '2256', 'Wild Gladiators', '2256', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2256.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(194, 3, NULL, '2205', 'Extra Juicy', '2205', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2205.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(195, 3, NULL, '2255', 'Wild Pixies', '2255', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2255.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(196, 3, NULL, '2009', 'Egyptian Fortunes', '2009', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2009.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(197, 3, NULL, '2002', 'The Dog House', '2002', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2002.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(198, 3, NULL, '2180', 'Caishen’s Cash', '2180', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2180.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(199, 3, NULL, '2021', 'Pirate Gold', '2021', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2021.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(200, 3, NULL, '2377', 'Triple Jokers', '2377', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2377.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(201, 3, NULL, '2010', '5 Lions Gold', '2010', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2010.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(202, 3, NULL, '2077', 'Sweet Bonanza', '2077', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2077.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(203, 3, NULL, '2035', 'Monkey Warrior', '2035', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2035.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:04', '2024-08-28 14:22:04'),
(204, 3, NULL, '2254', 'John Hunter and the Aztec Treasure', '2254', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2254.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(205, 3, NULL, '2253', 'Hot Chilli', '2253', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2253.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(206, 3, NULL, '2283', 'Vampires vs Wolves', '2283', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2283.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(207, 3, NULL, '2291', 'The Great Chicken Escape', '2291', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2291.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(208, 3, NULL, '2252', 'Super Joker', '2252', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2252.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(209, 3, NULL, '2189', 'John Hunter and the Tomb of the Scarab Queen', '2189', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2189.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(210, 3, NULL, '2210', 'Tree of Riches', '2210', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2210.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(211, 3, NULL, '2176', 'Fire Strike', '2176', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2176.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(212, 3, NULL, '2282', 'Honey Honey Honey', '2282', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2282.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(213, 3, NULL, '2251', 'Aladdin and the Sorcerer', '2251', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2251.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(214, 3, NULL, '2004', 'Hercules and Pegasus', '2004', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2004.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(215, 3, NULL, '2078', 'Sweet Bonanza Xmas', '2078', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2078.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(216, 3, NULL, '2197', 'Greek Gods', '2197', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2197.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(217, 3, NULL, '2011', 'Buffalo King', '2011', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2011.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(218, 3, NULL, '2250', 'Magic Journey', '2250', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2250.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:05', '2024-08-28 14:22:05'),
(219, 3, NULL, '2049', 'Money Mouse', '2049', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2049.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(220, 3, NULL, '2135', 'Release the Kraken', '2135', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2135.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(221, 3, NULL, '2217', 'Super 7s', '2217', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2217.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(222, 3, NULL, '2199', 'Master Joker', '2199', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2199.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(223, 3, NULL, '2158', 'Aztec Bonanza', '2158', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2158.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(224, 3, NULL, '2281', 'The Wild Machine', '2281', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2281.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(225, 3, NULL, '2037', 'Dance Party', '2037', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2037.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(226, 3, NULL, '2005', 'Wild West Gold', '2005', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2005.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(227, 3, NULL, '2248', 'Fruit Rainbow', '2248', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2248.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(228, 3, NULL, '2028', 'Great Rhino Megaways', '2028', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2028.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(229, 3, NULL, '2149', 'John Hunter and the book of Tut', '2149', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2149.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(230, 3, NULL, '2033', 'Hot to Burn', '2033', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2033.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 1, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(231, 3, NULL, '2029', 'Fruit Party', '2029', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2029.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(232, 3, NULL, '2031', 'Ultra Burn', '2031', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2031.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:06', '2024-08-28 14:22:06'),
(233, 3, NULL, '2007', 'Starz Megaways', '2007', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2007.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(234, 3, NULL, '2246', 'Three Star Fortune', '2246', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2246.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(235, 3, NULL, '2213', 'Pyramid King', '2213', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2213.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 1, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(236, 3, NULL, '2245', 'Fu Fu Fu', '2245', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2245.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(237, 3, NULL, '2138', 'Drago – Jewels of Fortune', '2138', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2138.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(238, 3, NULL, '2287', 'Street Racer', '2287', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2287.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(239, 3, NULL, '2222', 'The Tiger Warrior', '2222', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2222.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(240, 3, NULL, '2016', 'Great Rhino Deluxe', '2016', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2016.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(241, 3, NULL, '2173', 'Aztec Gems Deluxe', '2173', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2173.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(242, 3, NULL, '2006', 'The Dog House Megaways', '2006', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2006.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(243, 3, NULL, '2145', 'Curse of the Werewolf Megaways', '2145', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2145.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(244, 3, NULL, '2019', 'Ultra Hold and Spin', '2019', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2019.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(245, 3, NULL, '2249', 'Star Bounty', '2249', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2249.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(246, 3, NULL, '2200', 'Wild Wild Riches', '2200', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2200.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(247, 3, NULL, '2288', 'Rise of Samurai', '2288', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2288.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:07', '2024-08-28 14:22:07'),
(248, 3, NULL, '2244', 'Wild Walker', '2244', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2244.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(249, 3, NULL, '2301', 'Emerald King', '2301', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2301.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(250, 3, NULL, '2034', '5 Lions Dance', '2034', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2034.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(251, 3, NULL, '2020', 'Return of the Dead', '2020', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2020.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(252, 3, NULL, '2129', 'Gems Bonanza', '2129', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2129.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(253, 3, NULL, '2223', 'Dragon Tiger', '2223', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2223.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(254, 3, NULL, '2053', 'Pirate Gold Deluxe', '2053', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2053.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(255, 3, NULL, '2211', 'Book of Kingdoms', '2211', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2211.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(256, 3, NULL, '2048', 'Cowboys Gold', '2048', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2048.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(257, 3, NULL, '2118', 'Christmas Carol Megaways', '2118', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2118.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(258, 3, NULL, '2015', 'Spartan King', '2015', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2015.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(259, 3, NULL, '2243', 'John Hunter and the Mayan Gods', '2243', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2243.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(260, 3, NULL, '2050', 'Big Bass Bonanza', '2050', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2050.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(261, 3, NULL, '2079', 'Bonanza Gold', '2079', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2079.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:08', '2024-08-28 14:22:08'),
(262, 3, NULL, '2242', 'Voodoo Magic', '2242', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2242.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(263, 3, NULL, '2220', 'Mysterious Egypt', '2220', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2220.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(264, 3, NULL, '2278', 'Emerald King Rainbow Road', '2278', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2278.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(265, 3, NULL, '2025', 'Golden Ox', '2025', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2025.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(266, 3, NULL, '2024', 'Madame Destiny Megaways', '2024', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2024.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(267, 3, NULL, '2300', 'Dragon Kingdom – Eyes of Fire', '2300', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2300.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(268, 3, NULL, '2206', 'Eye of the Storm', '2206', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2206.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(269, 3, NULL, '2052', 'The Hand of Midas', '2052', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2052.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(270, 3, NULL, '2043', 'Joker King', '2043', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2043.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(271, 3, NULL, '2027', 'Gates of Olympus', '2027', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2027.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 1, 1, 1, '2024-08-28 14:22:09', '2024-08-31 16:43:03'),
(272, 3, NULL, '2022', 'Hot to Burn Hold and Spin', '2022', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2022.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(273, 3, NULL, '2280', 'Fishin’ Reels', '2280', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2280.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(274, 3, NULL, '2142', 'Temujin Treasures', '2142', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2142.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(275, 3, NULL, '2012', 'Juicy Fruits', '2012', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2012.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(276, 3, NULL, '2058', 'Power of Thor Megaways', '2058', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2058.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:09', '2024-08-28 14:22:09'),
(277, 3, NULL, '2036', 'Wild Booster', '2036', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2036.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(278, 3, NULL, '2060', 'Floating Dragon Hold and Spin', '2060', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2060.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(279, 3, NULL, '2061', 'Hot Fiesta', '2061', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2061.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(280, 3, NULL, '2039', 'Buffalo King Megaways', '2039', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2039.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(281, 3, NULL, '2190', 'The Amazing Money Machine', '2190', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2190.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(282, 3, NULL, '2192', 'Phoenix Forge', '2192', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2192.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(283, 3, NULL, '2059', 'Cash Elevator', '2059', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2059.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(284, 3, NULL, '2241', 'The Magic Cauldron – Enchanted Brew', '2241', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2241.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(285, 3, NULL, '2026', 'Panda’s Fortune 2', '2026', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2026.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(286, 3, NULL, '2201', 'Aztec King', '2201', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2201.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(287, 3, NULL, '2085', 'Rise of Samurai Megaways', '2085', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2085.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(288, 3, NULL, '2042', 'Heart of Rio', '2042', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2042.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(289, 3, NULL, '2209', 'Hokkaido Wolf', '2209', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2209.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(290, 3, NULL, '2038', 'Dragon Hot Hold and Spin', '2038', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2038.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(291, 3, NULL, '2125', 'Lucky Lightning', '2125', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2125.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(292, 3, NULL, '2023', '5 Lions Megaways', '2023', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2023.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 1, 1, '2024-08-28 14:22:10', '2024-08-28 14:22:10'),
(293, 3, NULL, '2066', 'Empty the Bank', '2066', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2066.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(294, 3, NULL, '2218', 'Lucky Grace And Charm', '2218', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2218.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(295, 3, NULL, '2384', 'Book of Vikings', '2384', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2384.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(296, 3, NULL, '2144', 'Chicken Drop', '2144', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2144.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(297, 3, NULL, '2132', 'Fruit Party 2', '2132', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2132.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(298, 3, NULL, '2041', 'Aztec King Megaways', '2041', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2041.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(299, 3, NULL, '2134', 'Rise of Giza PowerNudge', '2134', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2134.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(300, 3, NULL, '2140', 'Chilli Heat Megaways', '2140', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2140.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(301, 3, NULL, '2113', 'Yum Yum PowerWays', '2113', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2113.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(302, 3, NULL, '2057', 'Pyramid Bonanza', '2057', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2057.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(303, 3, NULL, '2047', 'Bigger Bass Bonanza', '2047', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2047.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(304, 3, NULL, '2076', 'Starlight Princess', '2076', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2076.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(305, 3, NULL, '2074', 'Treasure Wild', '2074', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2074.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(306, 3, NULL, '2216', 'Piggy Bank Bills', '2216', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2216.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(307, 3, NULL, '2221', 'Mystic Chief', '2221', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2221.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:11', '2024-08-28 14:22:11'),
(308, 3, NULL, '2123', 'Candy Village', '2123', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2123.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(309, 3, NULL, '2240', 'Cash Bonanza', '2240', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2240.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(310, 3, NULL, '2055', 'The Tweety House', '2055', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2055.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(311, 3, NULL, '2239', 'Day of Dead', '2239', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2239.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(312, 3, NULL, '2238', 'Star Pirates Code', '2238', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2238.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(313, 3, NULL, '2141', 'John Hunter and the Quest for Bermuda Riches', '2141', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2141.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(314, 3, NULL, '2071', 'Big Juan', '2071', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2071.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(315, 3, NULL, '2194', 'Bounty Gold', '2194', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2194.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(316, 3, NULL, '2193', 'Big Bass Bonanza Megaways', '2193', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2193.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(317, 3, NULL, '2228', 'Super X', '2228', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2228.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(318, 3, NULL, '2152', 'Book of the Fallen', '2152', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2152.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(319, 3, NULL, '2131', 'Santa’s Wonderland', '2131', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2131.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(320, 3, NULL, '2212', 'Bubble Pop', '2212', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2212.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:12', '2024-08-28 14:22:12'),
(321, 3, NULL, '2062', 'Christmas Big Bass Bonanza', '2062', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2062.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(322, 3, NULL, '2236', 'Smugglers Cove', '2236', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2236.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(323, 3, NULL, '2136', 'Crystal Caverns Megaways', '2136', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2136.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(324, 3, NULL, '2237', 'Hockey Attack', '2237', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2237.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(325, 3, NULL, '2151', 'Magician’s Secrets', '2151', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2151.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(326, 3, NULL, '2383', 'Wild Depths', '2383', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2383.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(327, 3, NULL, '2198', 'Lucky New Year – Tiger Treasures', '2198', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2198.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(328, 3, NULL, '2229', 'Emperor Caishen', '2229', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2229.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(329, 3, NULL, '2130', 'Gold Party', '2130', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2130.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(330, 3, NULL, '2065', 'Rock Vegas', '2065', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2065.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(331, 3, NULL, '2143', 'Gates of Valhalla', '2143', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2143.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(332, 3, NULL, '2082', 'Colossal Cash Zone', '2082', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2082.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(333, 3, NULL, '2070', 'The Ultimate 5', '2070', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2070.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(334, 3, NULL, '2191', 'Elemental Gems Megaways', '2191', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2191.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(335, 3, NULL, '2195', 'Might of Ra', '2195', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2195.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:13', '2024-08-28 14:22:13'),
(336, 3, NULL, '2119', 'Extra Juicy Megaways', '2119', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2119.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(337, 3, NULL, '2067', 'Queenie', '2067', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2067.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(338, 3, NULL, '2137', 'Wild Beach Party', '2137', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2137.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(339, 3, NULL, '2204', 'Tic Tac Take', '2204', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2204.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(340, 3, NULL, '2084', 'Barn Festival', '2084', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2084.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(341, 3, NULL, '2208', 'Book of Aztec King', '2208', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2208.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(342, 3, NULL, '2187', 'Drill that Gold', '2187', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2187.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(343, 3, NULL, '2202', 'Bull Fiesta', '2202', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2202.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(344, 3, NULL, '2203', 'Disco Lady', '2203', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2203.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(345, 3, NULL, '2185', 'Eye of Cleopatra', '2185', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2185.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(346, 3, NULL, '2188', 'Clover Gold', '2188', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2188.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(347, 3, NULL, '2186', 'Spirit of Adventure', '2186', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2186.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(348, 3, NULL, '2139', 'North Guardians', '2139', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2139.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(349, 3, NULL, '2177', 'Fire Strike 2', '2177', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2177.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:14', '2024-08-28 14:22:14'),
(350, 3, NULL, '2133', 'Goblin Heist PowerNudge', '2133', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2133.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(351, 3, NULL, '2184', 'The Great Stick-Up', '2184', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2184.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(352, 3, NULL, '2181', 'Little Gem', '2181', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2181.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(353, 3, NULL, '2068', 'Cleocatra', '2068', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2068.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(354, 3, NULL, '2081', 'Wild West Gold Megaways', '2081', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2081.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(355, 3, NULL, '2069', 'Zombie Carnival', '2069', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2069.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(356, 3, NULL, '2063', 'Fortune of Giza', '2063', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2063.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(357, 3, NULL, '2182', 'Queen of Gods', '2182', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2182.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(358, 3, NULL, '2064', 'Cash Patrol', '2064', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2064.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(359, 3, NULL, '2072', 'Koi Pond', '2072', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2072.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(360, 3, NULL, '2100', 'Rise Of Samurai III', '2100', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2100.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(361, 3, NULL, '2086', 'Big Bass Splash', '2086', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2086.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(362, 3, NULL, '2075', 'Sugar Rush', '2075', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2075.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(363, 3, NULL, '2175', 'Bomb Bonanza', '2175', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2175.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:15', '2024-08-28 14:22:15'),
(364, 3, NULL, '2183', 'Cosmic Cash', '2183', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2183.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(365, 3, NULL, '2172', 'Shining Hot 100', '2172', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2172.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(366, 3, NULL, '2170', 'Shining Hot 20', '2170', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2170.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(367, 3, NULL, '2169', 'Shining Hot 5', '2169', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2169.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(368, 3, NULL, '2171', 'Shining Hot 40', '2171', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2171.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(369, 3, NULL, '2121', 'Tropical Tiki', '2121', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2121.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(370, 3, NULL, '2162', 'Magic Money Maze', '2162', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2162.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(371, 3, NULL, '2146', 'Gorilla Mayhem', '2146', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2146.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(372, 3, NULL, '2164', 'Greedy Wolf', '2164', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2164.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(373, 3, NULL, '2120', 'Coffee Wild', '2120', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2120.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(374, 3, NULL, '2161', 'Black Bull', '2161', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2161.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(375, 3, NULL, '2178', 'Hot to Burn Extreme', '2178', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2178.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(376, 3, NULL, '2174', 'Down the Rails', '2174', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2174.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(377, 3, NULL, '2179', 'Cheeky Emperor', '2179', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2179.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(378, 3, NULL, '2167', 'Fire Hot 40', '2167', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2167.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:16', '2024-08-28 14:22:16'),
(379, 3, NULL, '2165', 'Fire Hot 5', '2165', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2165.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(380, 3, NULL, '2166', 'Fire Hot 20', '2166', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2166.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(381, 3, NULL, '2168', 'Fire Hot 100', '2168', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2168.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(382, 3, NULL, '2150', 'Octobeer Fortunes', '2150', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2150.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(383, 3, NULL, '2361', 'Happy Hooves', '2361', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2361.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(384, 3, NULL, '2159', 'Striking Hot 5', '2159', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2159.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(385, 3, NULL, '2157', 'Book of Golden Sands', '2157', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2157.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(386, 3, NULL, '2163', 'Crown of Fire', '2163', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2163.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(387, 3, NULL, '2156', 'Wild Hop&Drop', '2156', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2156.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(388, 3, NULL, '2124', 'Floating Dragon Megaways', '2124', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2124.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(389, 3, NULL, '2109', 'Aztec Blaze', '2109', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2109.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(390, 3, NULL, '2104', 'John Hunter and the Book of Tut Respin', '2104', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2104.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(391, 3, NULL, '2094', 'Pirate Golden Age', '2094', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2094.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(392, 3, NULL, '2095', 'Firebird Spirit', '2095', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2095.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:17', '2024-08-28 14:22:17'),
(393, 3, NULL, '2122', 'Legend of Heroes Megaways', '2122', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2122.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(394, 3, NULL, '2128', 'Muertos Multiplier Megaways', '2128', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2128.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(395, 3, NULL, '2153', 'Candy Stars', '2153', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2153.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(396, 3, NULL, '2093', 'Big Bass – Keeping it Reel', '2093', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2093.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(397, 3, NULL, '2080', 'Sword of Ares', '2080', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2080.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(398, 3, NULL, '2302', 'Release the Kraken 2', '2302', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2302.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(399, 3, NULL, '2111', 'Spin & Score Megaways', '2111', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2111.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(400, 3, NULL, '2096', 'Towering Fortunes', '2096', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2096.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(401, 3, NULL, '2108', 'Shield of Sparta', '2108', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2108.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(402, 3, NULL, '2106', 'Kingdom of Asgard', '2106', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(403, 3, NULL, '2098', 'Gems of Serengeti', '2098', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2098.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(404, 3, NULL, '2160', 'Snakes & Ladders – Snake Eyes', '2160', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2160.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(405, 3, NULL, '2107', 'Santa’s Great Gifts', '2107', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2107.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(406, 3, NULL, '2099', 'Bigger Bass Blizzard – Christmas Catch', '2099', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2099.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(407, 3, NULL, '2089', 'Fury of Odin Megaways', '2089', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2089.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(408, 3, NULL, '2090', 'Reel Banks', '2090', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2090.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:18', '2024-08-28 14:22:18'),
(409, 3, NULL, '2103', 'Hot Pepper', '2103', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2103.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(410, 3, NULL, '2088', 'PIZZA! PIZZA? PIZZA!', '2088', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2088.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(411, 3, NULL, '2102', 'Gates of Gatot Kaca', '2102', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(412, 3, NULL, '2091', 'Sweet Powernudge', '2091', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2091.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(413, 3, NULL, '2097', 'Starlight Christmas', '2097', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2097.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(414, 3, NULL, '2110', 'Lucky Fishing Megaways', '2110', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(415, 3, NULL, '2092', 'Dragon Hero', '2092', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2092.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(416, 3, NULL, '2087', 'Wild Wild Bananas', '2087', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2087.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(417, 3, NULL, '2105', '5 Rabbits Megaways', '2105', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(418, 3, NULL, '2117', 'Pinup Girls', '2117', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2117.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(419, 3, NULL, '2114', 'Secret City Gold', '2114', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2114.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(420, 3, NULL, '2101', 'Gates of Aztec', '2101', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(421, 3, NULL, '2112', 'Mammoth Gold Megaways', '2112', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2112.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(422, 3, NULL, '2115', 'Fish Eye', '2115', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2115.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(423, 3, NULL, '2116', 'Monster Superlanche', '2116', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2116.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(424, 3, NULL, '2148', 'Fire Archer', '2148', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2148.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:19', '2024-08-28 14:22:19'),
(425, 3, NULL, '2147', 'Club Tropicana', '2147', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2147.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(426, 3, NULL, '2225', 'Peak Power', '2225', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2225.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(427, 3, NULL, '2233', 'Wild Wild Riches Megaways', '2233', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2233.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(428, 3, NULL, '2275', 'Mystery of the Orient', '2275', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2275.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(429, 3, NULL, '2127', 'Gatot Kaca’s Fury', '2127', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2127.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(430, 3, NULL, '2276', 'Wild West Duels', '2276', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2276.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(431, 3, NULL, '2293', 'The Dog House Multihold', '2293', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2293.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(432, 3, NULL, '2326', 'Cowboy Coins', '2326', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2326.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(433, 3, NULL, '2126', 'Mochimon', '2126', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2126.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(434, 3, NULL, '2325', 'Jasmine Dreams', '2325', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2325.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(435, 3, NULL, '2295', 'The Knight King', '2295', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2295.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(436, 3, NULL, '2226', 'Rabbit Garden', '2226', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2226.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(437, 3, NULL, '2294', 'Big Bass – Hold & Spinner', '2294', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2294.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(438, 3, NULL, '2296', 'Fruits of the Amazon', '2296', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2296.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:20', '2024-08-28 14:22:20'),
(439, 3, NULL, '2304', 'The Red Queen', '2304', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2304.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(440, 3, NULL, '2306', 'Gods of Giza', '2306', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2306.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(441, 3, NULL, '2305', 'African Elephant', '2305', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2305.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(442, 3, NULL, '2308', 'Wild Celebrity Bus Megaways', '2308', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2308.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(443, 3, NULL, '2297', '3 Dancing Monkeys', '2297', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2297.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(444, 3, NULL, '2307', 'Jane Hunter and the Mask of Montezuma', '2307', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2307.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(445, 3, NULL, '2311', 'Kingdom of The Dead', '2311', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2311.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(446, 3, NULL, '2309', 'Excalibur Unleashed', '2309', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2309.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(447, 3, NULL, '2310', 'Wild Bison Charge', '2310', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2310.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(448, 3, NULL, '2313', 'Knight Hot Spotz', '2313', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2313.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(449, 3, NULL, '2316', 'Diamonds Of Egypt', '2316', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2316.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(450, 3, NULL, '2312', 'Lamp Of Infinity', '2312', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2312.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(451, 3, NULL, '2314', 'Jewel Rush', '2314', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2314.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(452, 3, NULL, '2315', 'Zeus vs Hades – Gods of War', '2315', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2315.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(453, 3, NULL, '2317', 'Sticky Bees', '2317', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2317.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(454, 3, NULL, '2318', 'Pirates Pub', '2318', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2318.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:21', '2024-08-28 14:22:21'),
(455, 3, NULL, '2319', 'Floating Dragon – Dragon Boat Festival', '2319', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2319.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(456, 3, NULL, '2327', 'Frogs & Bugs', '2327', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2327.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(457, 3, NULL, '2328', 'Robber Strike', '2328', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2328.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(458, 3, NULL, '2381', 'Country Farming', '2381', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2381.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(459, 3, NULL, '2321', 'Fat Panda', '2321', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2321.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(460, 3, NULL, '2320', 'Big Bass Amazon Xtreme', '2320', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2320.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(461, 3, NULL, '2324', 'Heist for the Golden Nuggets', '2324', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2324.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(462, 3, NULL, '2322', 'Wisdom of Athena', '2322', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2322.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(463, 3, NULL, '2323', 'Spellbinding Mystery', '2323', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2323.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(464, 3, NULL, '2331', 'Hellvis Wild', '2331', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2331.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(465, 3, NULL, '2347', 'Power of Merlin Megaways', '2347', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2347.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(466, 3, NULL, '2330', 'Cash Box', '2330', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2330.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:22', '2024-08-28 14:22:22'),
(467, 3, NULL, '2348', '3 Buzzing Wilds', '2348', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2348.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(468, 3, NULL, '2332', 'Lobster Bob’s Crazy Crab Shack', '2332', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2332.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(469, 3, NULL, '2334', 'Sky Bounty', '2334', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2334.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(470, 3, NULL, '2333', 'Diamond Cascade', '2333', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2333.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(471, 3, NULL, '2349', 'Rocket Blast Megaways', '2349', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2349.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(472, 3, NULL, '2335', 'Piggy Bankers', '2335', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2335.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(473, 3, NULL, '2336', 'Pub Kings', '2336', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2336.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(474, 3, NULL, '2337', 'Forge of Olympus', '2337', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2337.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(475, 3, NULL, '2338', 'Mustang Trail', '2338', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2338.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(476, 3, NULL, '2340', 'Big Bass Hold & Spinner Megaways', '2340', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2340.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(477, 3, NULL, '2339', 'Candy Blitz', '2339', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2339.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(478, 3, NULL, '2341', 'Cyclops Smash', '2341', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2341.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(479, 3, NULL, '2342', 'Frozen Tropics', '2342', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2342.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(480, 3, NULL, '2343', 'Book of Tut Megaways', '2343', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2343.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:23', '2024-08-28 14:22:23'),
(481, 3, NULL, '2344', 'Fortunes of Aztec', '2344', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2344.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(482, 3, NULL, '2345', '8 Golden Dragon Challenge', '2345', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2345.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(483, 3, NULL, '2346', 'Gold Oasis', '2346', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2346.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(484, 3, NULL, '2350', 'Rainbow Reels', '2350', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2350.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(485, 3, NULL, '2351', 'Gravity Bonanza', '2351', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2351.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(486, 3, NULL, '2352', 'Twilight Princess', '2352', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2352.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(487, 3, NULL, '2353', 'Demon Pots', '2353', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2353.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(488, 3, NULL, '2354', 'Cash Chips', '2354', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2354.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(489, 3, NULL, '2372', 'Sweet Bonanza Dice', '2372', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2372.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(490, 3, NULL, '2355', 'Tundra’s Fortune', '2355', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2355.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(491, 3, NULL, '2356', 'Infective Wild', '2356', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2356.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(492, 3, NULL, '2357', 'Big Bass Halloween', '2357', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2357.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(493, 3, NULL, '2359', 'Starlight Princess 1000', '2359', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2359.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(494, 3, NULL, '2358', 'The Money Men Megaways', '2358', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2358.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:24', '2024-08-28 14:22:24'),
(495, 3, NULL, '2360', 'Viking Forge', '2360', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2360.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(496, 3, NULL, '2382', 'Sugar Supreme Powernudge', '2382', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2382.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(497, 3, NULL, '2385', 'Timber Stacks', '2385', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2385.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(498, 3, NULL, '2386', 'Chase for Glory', '2386', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2386.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(499, 3, NULL, '2387', 'Nile Fortune', '2387', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2387.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(500, 3, NULL, '2389', 'Big Bass Christmas Bash', '2389', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2389.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(501, 3, NULL, '2388', 'The Wild Gang', '2388', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2388.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(502, 3, NULL, '2390', '5 Frozen Charms Megaways', '2390', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2390.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(503, 3, NULL, '2391', 'Sugar Rush Xmas', '2391', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2391.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(504, 3, NULL, '2392', 'Ding Dong Christmas Bells', '2392', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2392.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(505, 3, NULL, '2393', 'Candy Jar Clusters', '2393', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2393.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(506, 3, NULL, '2394', 'Floating Dragon New Year Festival Ultra Megaways Hold & Spin', '2394', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2394.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(507, 3, NULL, '2395', 'Fire Stampede', '2395', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2395.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(508, 3, NULL, '2396', 'Juicy Fruits Multihold', '2396', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2396.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(509, 3, NULL, '2397', 'Gates of Olympus 1000', '2397', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2397.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 0, '2024-08-28 14:22:25', '2024-08-30 14:30:43'),
(510, 3, NULL, '2399', 'The Big Dawgs', '2399', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2399.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:25', '2024-08-28 14:22:25'),
(511, 3, NULL, '2400', 'Castle of Fire', '2400', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2400.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(512, 3, NULL, '2398', 'Blade & Fangs', '2398', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2398.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(513, 3, NULL, '2401', 'Year of the Dragon King', '2401', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2401.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(514, 3, NULL, '2402', 'Blazing Wilds Megaways', '2402', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2402.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(515, 3, NULL, '2403', 'Good Luck & Good Fortune', '2403', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2403.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(516, 3, NULL, '2404', 'Loki’s Riches', '2404', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2404.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(517, 3, NULL, '2405', 'Red Hot Luck', '2405', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2405.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(518, 3, NULL, '2406', 'Trees of Treasure', '2406', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2406.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(519, 3, NULL, '2407', 'The Alter Ego', '2407', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2407.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(520, 3, NULL, '2408', 'Big Bass Floats My Boat', '2408', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2408.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(521, 3, NULL, '2409', 'Pompeii Megareels Megaways', '2409', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2409.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(522, 3, NULL, '2410', 'Strawberry Cocktail', '2410', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2410.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(523, 3, NULL, '2411', 'Mighty Munching Melons', '2411', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2411.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(524, 3, NULL, '2412', 'Wheel O’Gold', '2412', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2412.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(525, 3, NULL, '2413', 'Gears of Horus', '2413', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2413.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:26', '2024-08-28 14:22:26'),
(526, 3, NULL, '2414', 'Big Bass Day at the Races', '2414', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2414.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(527, 3, NULL, '2415', 'Pot of Fortune', '2415', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2415.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(528, 3, NULL, '2416', 'Sugar Rush 1000', '2416', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2416.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(529, 3, NULL, '2417', 'Fire Portals', '2417', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2417.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(530, 3, NULL, '2418', 'Big Burger Load it up with Xtra cheese', '2418', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2418.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(531, 3, NULL, '2419', 'The Dog House – Dog or Alive', '2419', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2419.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(532, 3, NULL, '2420', 'Ripe Rewards', '2420', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2420.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(533, 3, NULL, '2421', 'O Vira-lata Caramelo', '2421', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2421.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(534, 3, NULL, '2422', 'Aztec Powernudge', '2422', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2422.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(535, 3, NULL, '2423', 'Big Bass Secrets of the Golden Lake', '2423', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2423.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(536, 3, NULL, '2424', 'Ice Lobster', '2424', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2424.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(537, 3, NULL, '2425', 'Barnyard Megahays Megaways', '2425', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2425.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(538, 3, NULL, '2426', 'Lobster Bob’s Sea Food and Win It', '2426', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2426.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(539, 3, NULL, '2427', 'Release the Bison', '2427', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2427.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:27', '2024-08-28 14:22:27'),
(540, 3, NULL, '2428', 'Candy Blitz Bombs', '2428', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2428.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(541, 3, NULL, '2429', 'Fruity Treats', '2429', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2429.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(542, 3, NULL, '2430', 'Heart of Cleopatra', '2430', NULL, NULL, 'primeconnect/PRAGMATIC PLAY/2430.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(543, 3, NULL, '2431', 'Front Runner Odds On', '2431', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(544, 3, NULL, '2432', 'Dwarf And Dragon', '2432', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(545, 3, NULL, '2433', 'Rise Of Pyramids', '2433', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(546, 3, NULL, '2435', 'Starlight Princess Pachi', '2435', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(547, 3, NULL, '2434', 'Heroic Spins', '2434', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(548, 3, NULL, '2436', 'BigBass Bonanza Reel Action', '2436', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(549, 3, NULL, '2437', 'Sweet Bonanza 1000', '2437', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(550, 3, NULL, '2438', 'Wildies', '2438', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(551, 3, NULL, '2439', 'Devilicious', '2439', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(552, 3, NULL, '2440', 'Medusas Stone', '2440', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:28', '2024-08-28 14:22:28'),
(553, 3, NULL, '2441', 'BigBass Mission Fishin', '2441', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(554, 3, NULL, '2442', 'BuffaloKing Untamed Mega', '2442', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(555, 1, NULL, 'lobby', 'Lobby', 'lobby', NULL, NULL, 'primeconnect/EVOLUTION/lobby.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(556, 1, NULL, '01rb77cq1gtenhmo', 'Auto-Roulette VIP', '01rb77cq1gtenhmo', NULL, NULL, 'primeconnect/EVOLUTION/01rb77cq1gtenhmo.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(557, 1, NULL, 'qgqrucipvltnvnvq', 'Speed Baccarat W', 'qgqrucipvltnvnvq', NULL, NULL, 'primeconnect/EVOLUTION/qgqrucipvltnvnvq.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(558, 1, NULL, 'DragonTiger00001', 'Dragon Tiger', 'DragonTiger00001', NULL, NULL, 'primeconnect/EVOLUTION/DragonTiger00001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(559, 1, NULL, 'NoCommBac0000001', 'No Commission Baccarat', 'NoCommBac0000001', NULL, NULL, 'primeconnect/EVOLUTION/NoCommBac0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(560, 1, NULL, 'p63cmvmwagteemoy', 'Korean Speed Baccarat A', 'p63cmvmwagteemoy', NULL, NULL, 'primeconnect/EVOLUTION/p63cmvmwagteemoy.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(561, 1, NULL, 'PTBaccarat000001', 'Prosperity Tree Baccarat', 'PTBaccarat000001', NULL, NULL, 'primeconnect/EVOLUTION/PTBaccarat000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(562, 1, NULL, 'MonBigBaller0001', 'MONOPOLY Big Baller', 'MonBigBaller0001', NULL, NULL, 'primeconnect/EVOLUTION/MonBigBaller0001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(563, 1, NULL, 'LightningTable01', 'Lightning Roulette', 'LightningTable01', NULL, NULL, 'primeconnect/EVOLUTION/LightningTable01.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(564, 1, NULL, 'PowerBall0000001', 'EVO PowerBall', 'PowerBall0000001', NULL, NULL, 'primeconnect/EVOLUTION/PowerBall0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(565, 1, NULL, 'ndgvz5mlhfuaad6e', 'Speed Baccarat D', 'ndgvz5mlhfuaad6e', NULL, NULL, 'primeconnect/EVOLUTION/ndgvz5mlhfuaad6e.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(566, 1, NULL, 'obj64qcnqfunjelj', 'Speed Baccarat J', 'obj64qcnqfunjelj', NULL, NULL, 'primeconnect/EVOLUTION/obj64qcnqfunjelj.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(567, 1, NULL, '48z5pjps3ntvqc1b', 'Auto-Roulette', '48z5pjps3ntvqc1b', NULL, NULL, 'primeconnect/EVOLUTION/48z5pjps3ntvqc1b.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:29', '2024-08-28 14:22:29'),
(568, 1, NULL, 'qgqrv4asvltnvuty', 'Speed Baccarat X', 'qgqrv4asvltnvuty', NULL, NULL, 'primeconnect/EVOLUTION/qgqrv4asvltnvuty.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(569, 1, NULL, 'mkvhbciosnfqhat7', 'Arabic Roulette', 'mkvhbciosnfqhat7', NULL, NULL, 'primeconnect/EVOLUTION/mkvhbciosnfqhat7.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(570, 1, NULL, 'RedDoorRoulette1', 'Red Door Roulette', 'RedDoorRoulette1', NULL, NULL, 'primeconnect/EVOLUTION/RedDoorRoulette1.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(571, 1, NULL, 'qgdk6rtpw6hax4fe', 'Korean Speed Baccarat C', 'qgdk6rtpw6hax4fe', NULL, NULL, 'primeconnect/EVOLUTION/qgdk6rtpw6hax4fe.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(572, 1, NULL, 'nmwde3fd7hvqhq43', 'Speed Baccarat F', 'nmwde3fd7hvqhq43', NULL, NULL, 'primeconnect/EVOLUTION/nmwde3fd7hvqhq43.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(573, 1, NULL, 'ocye2ju2bsoyq6vv', 'Speed Baccarat K', 'ocye2ju2bsoyq6vv', NULL, NULL, 'primeconnect/EVOLUTION/ocye2ju2bsoyq6vv.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(574, 1, NULL, 'EmperorSB0000001', 'Emperor Sic Bo', 'EmperorSB0000001', NULL, NULL, 'primeconnect/EVOLUTION/EmperorSB0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(575, 1, NULL, 'nmwdzhbg7hvqh6a7', 'Speed Baccarat G', 'nmwdzhbg7hvqh6a7', NULL, NULL, 'primeconnect/EVOLUTION/nmwdzhbg7hvqh6a7.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(576, 1, NULL, 'ovu5eja74ccmyoiq', 'Speed Baccarat N', 'ovu5eja74ccmyoiq', NULL, NULL, 'primeconnect/EVOLUTION/ovu5eja74ccmyoiq.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(577, 1, NULL, 'ndgv45bghfuaaebf', 'Speed Baccarat E', 'ndgv45bghfuaaebf', NULL, NULL, 'primeconnect/EVOLUTION/ndgv45bghfuaaebf.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(578, 1, NULL, 'ovu5h6b3ujb4y53w', 'No Commission Speed Baccarat C', 'ovu5h6b3ujb4y53w', NULL, NULL, 'primeconnect/EVOLUTION/ovu5h6b3ujb4y53w.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(579, 1, NULL, 'qsf63ownyvbqnz33', 'Speed Baccarat Z', 'qsf63ownyvbqnz33', NULL, NULL, 'primeconnect/EVOLUTION/qsf63ownyvbqnz33.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(580, 1, NULL, 'ndgvwvgthfuaad3q', 'Speed Baccarat C', 'ndgvwvgthfuaad3q', NULL, NULL, 'primeconnect/EVOLUTION/ndgvwvgthfuaad3q.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(581, 1, NULL, 'q25bmd63gsy3ngfl', 'Korean Speed Baccarat E', 'q25bmd63gsy3ngfl', NULL, NULL, 'primeconnect/EVOLUTION/q25bmd63gsy3ngfl.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(582, 1, NULL, 'qgqrhfvsvltnueqf', 'Speed Baccarat U', 'qgqrhfvsvltnueqf', NULL, NULL, 'primeconnect/EVOLUTION/qgqrhfvsvltnueqf.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:30', '2024-08-28 14:22:30'),
(583, 1, NULL, 'Monopoly00000001', 'MONOPOLY Live', 'Monopoly00000001', NULL, NULL, 'primeconnect/EVOLUTION/Monopoly00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(584, 1, NULL, 'puu47n7mic3rfd7y', 'Emperor Dragon Tiger', 'puu47n7mic3rfd7y', NULL, NULL, 'primeconnect/EVOLUTION/puu47n7mic3rfd7y.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(585, 1, NULL, 'leqhceumaq6qfoug', 'Speed Baccarat A', 'leqhceumaq6qfoug', NULL, NULL, 'primeconnect/EVOLUTION/leqhceumaq6qfoug.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(586, 1, NULL, 'qgonc7t4ucdiel4o', 'Speed Baccarat T', 'qgonc7t4ucdiel4o', NULL, NULL, 'primeconnect/EVOLUTION/qgonc7t4ucdiel4o.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(587, 1, NULL, 'lkcbrbdckjxajdol', 'Speed Roulette', 'lkcbrbdckjxajdol', NULL, NULL, 'primeconnect/EVOLUTION/lkcbrbdckjxajdol.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(588, 1, NULL, 'o4kymodby2fa2c7g', 'Speed Baccarat S', 'o4kymodby2fa2c7g', NULL, NULL, 'primeconnect/EVOLUTION/o4kymodby2fa2c7g.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(589, 1, NULL, 'TRLRou0000000001', 'Türkçe Lightning Rulet', 'TRLRou0000000001', NULL, NULL, 'primeconnect/EVOLUTION/TRLRou0000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(590, 1, NULL, 'CrazyTime0000001', 'Crazy Time', 'CrazyTime0000001', NULL, NULL, 'primeconnect/EVOLUTION/CrazyTime0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(591, 1, NULL, 'vctlz20yfnmp1ylr', 'Roulette', 'vctlz20yfnmp1ylr', NULL, NULL, 'primeconnect/EVOLUTION/vctlz20yfnmp1ylr.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(592, 1, NULL, 'zixzea8nrf1675oh', 'Baccarat Squeeze', 'zixzea8nrf1675oh', NULL, NULL, 'primeconnect/EVOLUTION/zixzea8nrf1675oh.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(593, 1, NULL, 'nxpkul2hgclallno', 'Speed Baccarat I', 'nxpkul2hgclallno', NULL, NULL, 'primeconnect/EVOLUTION/nxpkul2hgclallno.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(594, 1, NULL, 'peekbaccarat0001', 'Peek Baccarat', 'peekbaccarat0001', NULL, NULL, 'primeconnect/EVOLUTION/peekbaccarat0001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(595, 1, NULL, 'o4kyj7tgpwqqy4m4', 'Speed Baccarat Q', 'o4kyj7tgpwqqy4m4', NULL, NULL, 'primeconnect/EVOLUTION/o4kyj7tgpwqqy4m4.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(596, 1, NULL, 'XxxtremeLigh0001', 'XXXtreme Lightning Roulette', 'XxxtremeLigh0001', NULL, NULL, 'primeconnect/EVOLUTION/XxxtremeLigh0001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:31', '2024-08-28 14:22:31'),
(597, 1, NULL, 'o4kylkahpwqqy57w', 'Speed Baccarat R', 'o4kylkahpwqqy57w', NULL, NULL, 'primeconnect/EVOLUTION/o4kylkahpwqqy57w.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(598, 1, NULL, 'MegaBall00000001', 'Mega Ball', 'MegaBall00000001', NULL, NULL, 'primeconnect/EVOLUTION/MegaBall00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(599, 1, NULL, 'ndgv76kehfuaaeec', 'No Commission Speed Baccarat A', 'ndgv76kehfuaaeec', NULL, NULL, 'primeconnect/EVOLUTION/ndgv76kehfuaaeec.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(600, 1, NULL, 'PorBacBo00000001', 'Bac Bo Ao Vivo', 'PorBacBo00000001', NULL, NULL, 'primeconnect/EVOLUTION/PorBacBo00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(601, 1, NULL, 'ocye5hmxbsoyrcii', 'No Commission Speed Baccarat B', 'ocye5hmxbsoyrcii', NULL, NULL, 'primeconnect/EVOLUTION/ocye5hmxbsoyrcii.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(602, 1, NULL, 'lv2kzclunt2qnxo5', 'Speed Baccarat B', 'lv2kzclunt2qnxo5', NULL, NULL, 'primeconnect/EVOLUTION/lv2kzclunt2qnxo5.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(603, 1, NULL, 'puu43e6c5uvrfikr', 'Emperor Speed Baccarat B', 'puu43e6c5uvrfikr', NULL, NULL, 'primeconnect/EVOLUTION/puu43e6c5uvrfikr.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(604, 1, NULL, 'ovu5cwp54ccmymck', 'Speed Baccarat L', 'ovu5cwp54ccmymck', NULL, NULL, 'primeconnect/EVOLUTION/ovu5cwp54ccmymck.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(605, 1, NULL, 'FanTan0000000001', 'Fan Tan', 'FanTan0000000001', NULL, NULL, 'primeconnect/EVOLUTION/FanTan0000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(606, 1, NULL, 'ovu5dsly4ccmynil', 'Speed Baccarat M', 'ovu5dsly4ccmynil', NULL, NULL, 'primeconnect/EVOLUTION/ovu5dsly4ccmynil.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(607, 1, NULL, 'LightningBac0001', 'Lightning Baccarat', 'LightningBac0001', NULL, NULL, 'primeconnect/EVOLUTION/LightningBac0001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(608, 1, NULL, 'CashOrCrash00001', 'Cash or Crash', 'CashOrCrash00001', NULL, NULL, 'primeconnect/EVOLUTION/CashOrCrash00001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(609, 1, NULL, 'q25awuwygsy3lvnj', 'Korean Speed Baccarat D', 'q25awuwygsy3lvnj', NULL, NULL, 'primeconnect/EVOLUTION/q25awuwygsy3lvnj.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:32', '2024-08-28 14:22:32'),
(610, 1, NULL, 'onokyd4wn7uekbjx', 'Korean Speed Baccarat B', 'onokyd4wn7uekbjx', NULL, NULL, 'primeconnect/EVOLUTION/onokyd4wn7uekbjx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(611, 1, NULL, 'k2oswnib7jjaaznw', 'Baccarat Control Squeeze', 'k2oswnib7jjaaznw', NULL, NULL, 'primeconnect/EVOLUTION/k2oswnib7jjaaznw.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(612, 1, NULL, 'gwbaccarat000001', 'Golden Wealth Baccarat', 'gwbaccarat000001', NULL, NULL, 'primeconnect/EVOLUTION/gwbaccarat000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(613, 1, NULL, 'ovu5fzje4ccmyqnr', 'Speed Baccarat P', 'ovu5fzje4ccmyqnr', NULL, NULL, 'primeconnect/EVOLUTION/ovu5fzje4ccmyqnr.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(614, 1, NULL, 'qgqrrnuqvltnvejx', 'Speed Baccarat V', 'qgqrrnuqvltnvejx', NULL, NULL, 'primeconnect/EVOLUTION/qgqrrnuqvltnvejx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(615, 1, NULL, 'wzg6kdkad1oe7m5k', 'VIP Roulette', 'wzg6kdkad1oe7m5k', NULL, NULL, 'primeconnect/EVOLUTION/wzg6kdkad1oe7m5k.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(616, 1, NULL, 'r5aw9yumyaxgnd90', 'Türkçe Rulet', 'r5aw9yumyaxgnd90', NULL, NULL, 'primeconnect/EVOLUTION/r5aw9yumyaxgnd90.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(617, 1, NULL, 'TopCard000000001', 'Football Studio', 'TopCard000000001', NULL, NULL, 'primeconnect/EVOLUTION/TopCard000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(618, 1, NULL, 'SuperSicBo000001', 'Super Sic Bo', 'SuperSicBo000001', NULL, NULL, 'primeconnect/EVOLUTION/SuperSicBo000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(619, 1, NULL, 'ovu5fbxm4ccmypmb', 'Speed Baccarat O', 'ovu5fbxm4ccmypmb', NULL, NULL, 'primeconnect/EVOLUTION/ovu5fbxm4ccmypmb.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(620, 1, NULL, 'MOWDream00000001', 'Dream Catcher', 'MOWDream00000001', NULL, NULL, 'primeconnect/EVOLUTION/MOWDream00000001.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(621, 1, NULL, 'nxpj4wumgclak2lx', 'Speed Baccarat H', 'nxpj4wumgclak2lx', NULL, NULL, 'primeconnect/EVOLUTION/nxpj4wumgclak2lx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(622, 1, NULL, 'XXXtremeLB000001', 'XXXtreme Lightning Baccarat', 'XXXtremeLB000001', NULL, NULL, 'primeconnect/EVOLUTION/XXXtremeLB000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(623, 1, NULL, 'SpeedAutoRo00001', 'Speed Auto Roulette', 'SpeedAutoRo00001', NULL, NULL, 'primeconnect/EVOLUTION/SpeedAutoRo00001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:33', '2024-08-28 14:22:33'),
(624, 1, NULL, 'BacBo00000000001', 'Bac Bo', 'BacBo00000000001', NULL, NULL, 'primeconnect/EVOLUTION/BacBo00000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(625, 1, NULL, 'puu4yfymic3reudn', 'Emperor Speed Baccarat A', 'puu4yfymic3reudn', NULL, NULL, 'primeconnect/EVOLUTION/puu4yfymic3reudn.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(626, 4, NULL, 'SGTotemTowers', 'Totem Towers', 'SGTotemTowers', NULL, NULL, 'primeconnect/HABANERO/SGTotemTowers.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(627, 4, NULL, 'SGBeforeTimeRunsOut', 'Before Time Runs Out', 'SGBeforeTimeRunsOut', NULL, NULL, 'primeconnect/HABANERO/SGBeforeTimeRunsOut.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(628, 4, NULL, 'SGHappyApe', 'Happy Ape', 'SGHappyApe', NULL, NULL, 'primeconnect/HABANERO/SGHappyApe.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(629, 4, NULL, 'SGNaughtySanta', 'Naughty Santa', 'SGNaughtySanta', NULL, NULL, 'primeconnect/HABANERO/SGNaughtySanta.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(630, 4, NULL, 'SGFaCaiShenDeluxe', 'Fa Cai Shen Deluxe', 'SGFaCaiShenDeluxe', NULL, NULL, 'primeconnect/HABANERO/SGFaCaiShenDeluxe.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(631, 4, NULL, 'SGHeySushi', 'Hey Sushi', 'SGHeySushi', NULL, NULL, 'primeconnect/HABANERO/SGHeySushi.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(632, 4, NULL, 'SGHotHotHalloween', 'Hot Hot Halloween', 'SGHotHotHalloween', NULL, NULL, 'primeconnect/HABANERO/SGHotHotHalloween.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(633, 4, NULL, 'SGLuckyFortuneCat', 'Lucky Fortune Cat', 'SGLuckyFortuneCat', NULL, NULL, 'primeconnect/HABANERO/SGLuckyFortuneCat.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(634, 4, NULL, 'SGHotHotFruit', 'Hot Hot Fruit', 'SGHotHotFruit', NULL, NULL, 'primeconnect/HABANERO/SGHotHotFruit.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(635, 4, NULL, 'SG5LuckyLions', '5 Lucky Lions', 'SG5LuckyLions', NULL, NULL, 'primeconnect/HABANERO/SG5LuckyLions.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(636, 4, NULL, 'SGMountMazuma', 'Mount Mazuma', 'SGMountMazuma', NULL, NULL, 'primeconnect/HABANERO/SGMountMazuma.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(637, 4, NULL, 'SGWildTrucks', 'Wild Trucks', 'SGWildTrucks', NULL, NULL, 'primeconnect/HABANERO/SGWildTrucks.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(638, 4, NULL, 'SGLuckyLucky', 'Lucky Lucky', 'SGLuckyLucky', NULL, NULL, 'primeconnect/HABANERO/SGLuckyLucky.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:34', '2024-08-28 14:22:34'),
(639, 4, NULL, 'SGPumpkinPatch', 'Pumpkin Patch', 'SGPumpkinPatch', NULL, NULL, 'primeconnect/HABANERO/SGPumpkinPatch.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(640, 4, NULL, 'SGWaysOfFortune', 'Ways Of Fortune', 'SGWaysOfFortune', NULL, NULL, 'primeconnect/HABANERO/SGWaysOfFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(641, 4, NULL, 'SG5Mariachis', '5 Mariachis', 'SG5Mariachis', NULL, NULL, 'primeconnect/HABANERO/SG5Mariachis.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(642, 4, NULL, 'SGPandaPanda', 'Panda Panda', 'SGPandaPanda', NULL, NULL, 'primeconnect/HABANERO/SGPandaPanda.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(643, 4, NULL, 'SGOceansCall', 'Ocean`s Call', 'SGOceansCall', NULL, NULL, 'primeconnect/HABANERO/SGOceansCall.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(644, 4, NULL, 'SGScruffyScallywags', 'Scruffy Scallywags', 'SGScruffyScallywags', NULL, NULL, 'primeconnect/HABANERO/SGScruffyScallywags.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(645, 4, NULL, 'SGNuwa', 'Nuwa', 'SGNuwa', NULL, NULL, 'primeconnect/HABANERO/SGNuwa.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(646, 4, NULL, 'SGFaCaiShen', 'Fa Cai Shen', 'SGFaCaiShen', NULL, NULL, 'primeconnect/HABANERO/SGFaCaiShen.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(647, 4, NULL, 'SG12Zodiacs', '12 Zodiacs', 'SG12Zodiacs', NULL, NULL, 'primeconnect/HABANERO/SG12Zodiacs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(648, 4, NULL, 'SGBirdOfThunder', 'Bird of Thunder', 'SGBirdOfThunder', NULL, NULL, 'primeconnect/HABANERO/SGBirdOfThunder.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(649, 4, NULL, 'SGTheDeadEscape', 'The Dead Escape', 'SGTheDeadEscape', NULL, NULL, 'primeconnect/HABANERO/SGTheDeadEscape.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(650, 4, NULL, 'SGBombsAway', 'Bombs Away', 'SGBombsAway', NULL, NULL, 'primeconnect/HABANERO/SGBombsAway.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(651, 4, NULL, 'SGGoldRush', 'Gold Rush', 'SGGoldRush', NULL, NULL, 'primeconnect/HABANERO/SGGoldRush.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(652, 4, NULL, 'SGSparta', 'Sparta', 'SGSparta', NULL, NULL, 'primeconnect/HABANERO/SGSparta.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(653, 4, NULL, 'SGRuffledUp', 'Ruffled Up', 'SGRuffledUp', NULL, NULL, 'primeconnect/HABANERO/SGRuffledUp.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:35', '2024-08-28 14:22:35'),
(654, 4, NULL, 'SGRomanEmpire', 'Roman Empire', 'SGRomanEmpire', NULL, NULL, 'primeconnect/HABANERO/SGRomanEmpire.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(655, 4, NULL, 'SGCoyoteCrash', 'Coyote Crash', 'SGCoyoteCrash', NULL, NULL, 'primeconnect/HABANERO/SGCoyoteCrash.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(656, 4, NULL, 'SGWickedWitch', 'Wicked Witch', 'SGWickedWitch', NULL, NULL, 'primeconnect/HABANERO/SGWickedWitch.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(657, 4, NULL, 'SGDragonsThrone', 'Dragon`s Throne', 'SGDragonsThrone', NULL, NULL, 'primeconnect/HABANERO/SGDragonsThrone.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(658, 4, NULL, 'SGBuggyBonus', 'Buggy Bonus', 'SGBuggyBonus', NULL, NULL, 'primeconnect/HABANERO/SGBuggyBonus.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(659, 4, NULL, 'SGGlamRock', 'Glam Rock', 'SGGlamRock', NULL, NULL, 'primeconnect/HABANERO/SGGlamRock.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(660, 4, NULL, 'SGSuperTwister', 'Super Twister', 'SGSuperTwister', NULL, NULL, 'primeconnect/HABANERO/SGSuperTwister.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(661, 4, NULL, 'SGKanesInferno', 'Kane`s Inferno', 'SGKanesInferno', NULL, NULL, 'primeconnect/HABANERO/SGKanesInferno.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(662, 4, NULL, 'SGTreasureTomb', 'Treasure Tomb', 'SGTreasureTomb', NULL, NULL, 'primeconnect/HABANERO/SGTreasureTomb.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(663, 4, NULL, 'SGJugglenaut', 'Jugglenaut', 'SGJugglenaut', NULL, NULL, 'primeconnect/HABANERO/SGJugglenaut.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(664, 4, NULL, 'SGGalacticCash', 'Galactic Cash', 'SGGalacticCash', NULL, NULL, 'primeconnect/HABANERO/SGGalacticCash.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(665, 4, NULL, 'SGZeus2', 'Zeus 2', 'SGZeus2', NULL, NULL, 'primeconnect/HABANERO/SGZeus2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(666, 4, NULL, 'SGTheDragonCastle', 'Dragon Castle', 'SGTheDragonCastle', NULL, NULL, 'primeconnect/HABANERO/SGTheDragonCastle.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(667, 4, NULL, 'SGKingTutsTomb', 'King Tut`s Tomb', 'SGKingTutsTomb', NULL, NULL, 'primeconnect/HABANERO/SGKingTutsTomb.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(668, 4, NULL, 'SGTreasureDiver', 'Treasure Diver', 'SGTreasureDiver', NULL, NULL, 'primeconnect/HABANERO/SGTreasureDiver.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:36', '2024-08-28 14:22:36'),
(669, 4, NULL, 'SGLittleGreenMoney', 'Little Green Money', 'SGLittleGreenMoney', NULL, NULL, 'primeconnect/HABANERO/SGLittleGreenMoney.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(670, 4, NULL, 'SGMonsterMashCash', 'Monster Mash Cash', 'SGMonsterMashCash', NULL, NULL, 'primeconnect/HABANERO/SGMonsterMashCash.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(671, 4, NULL, 'SGShaolinFortunes100', 'Shaolin Fortunes 100', 'SGShaolinFortunes100', NULL, NULL, 'primeconnect/HABANERO/SGShaolinFortunes100.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(672, 4, NULL, 'SGShaolinFortunes243', 'Shaolin Fortunes', 'SGShaolinFortunes243', NULL, NULL, 'primeconnect/HABANERO/SGShaolinFortunes243.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(673, 4, NULL, 'SGWeirdScience', 'Weird Science', 'SGWeirdScience', NULL, NULL, 'primeconnect/HABANERO/SGWeirdScience.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(674, 4, NULL, 'SGBlackbeardsBounty', 'Blackbeard`s Bounty', 'SGBlackbeardsBounty', NULL, NULL, 'primeconnect/HABANERO/SGBlackbeardsBounty.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(675, 4, NULL, 'SGDrFeelgood', 'Dr Feelgood', 'SGDrFeelgood', NULL, NULL, 'primeconnect/HABANERO/SGDrFeelgood.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(676, 4, NULL, 'SGVikingsPlunder', 'Viking`s Plunder', 'SGVikingsPlunder', NULL, NULL, 'primeconnect/HABANERO/SGVikingsPlunder.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(677, 4, NULL, 'SGDoubleODollars', 'Double O Dollars', 'SGDoubleODollars', NULL, NULL, 'primeconnect/HABANERO/SGDoubleODollars.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(678, 4, NULL, 'SGSpaceFortune', 'Space Fortune', 'SGSpaceFortune', NULL, NULL, 'primeconnect/HABANERO/SGSpaceFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(679, 4, NULL, 'SGPamperMe', 'Pamper Me', 'SGPamperMe', NULL, NULL, 'primeconnect/HABANERO/SGPamperMe.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(680, 4, NULL, 'SGZeus', 'Zeus', 'SGZeus', NULL, NULL, 'primeconnect/HABANERO/SGZeus.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(681, 4, NULL, 'SGSOS', 'SOS', 'SGSOS', NULL, NULL, 'primeconnect/HABANERO/SGSOS.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(682, 4, NULL, 'SGPoolShark', 'Pool Shark', 'SGPoolShark', NULL, NULL, 'primeconnect/HABANERO/SGPoolShark.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:37', '2024-08-28 14:22:37'),
(683, 4, NULL, 'SGEgyptianDreams', 'Egyptian Dreams', 'SGEgyptianDreams', NULL, NULL, 'primeconnect/HABANERO/SGEgyptianDreams.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(684, 4, NULL, 'SGBarnstormerBucks', 'Barnstormer Bucks', 'SGBarnstormerBucks', NULL, NULL, 'primeconnect/HABANERO/SGBarnstormerBucks.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(685, 4, NULL, 'SGSuperStrike', 'Super Strike', 'SGSuperStrike', NULL, NULL, 'primeconnect/HABANERO/SGSuperStrike.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(686, 4, NULL, 'SGJungleRumble', 'Jungle Rumble', 'SGJungleRumble', NULL, NULL, 'primeconnect/HABANERO/SGJungleRumble.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(687, 4, NULL, 'SGArcticWonders', 'Arctic Wonders', 'SGArcticWonders', NULL, NULL, 'primeconnect/HABANERO/SGArcticWonders.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(688, 4, NULL, 'SGTowerOfPizza', 'Tower Of Pizza', 'SGTowerOfPizza', NULL, NULL, 'primeconnect/HABANERO/SGTowerOfPizza.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(689, 4, NULL, 'SGMummyMoney', 'Mummy Money', 'SGMummyMoney', NULL, NULL, 'primeconnect/HABANERO/SGMummyMoney.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(690, 4, NULL, 'SGBikiniIsland', 'Bikini Island', 'SGBikiniIsland', NULL, NULL, 'primeconnect/HABANERO/SGBikiniIsland.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(691, 4, NULL, 'SGQueenOfQueens1024', 'Queen of Queens II', 'SGQueenOfQueens1024', NULL, NULL, 'primeconnect/HABANERO/SGQueenOfQueens1024.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(692, 4, NULL, 'SGDragonsRealm', 'Dragon`s Realm', 'SGDragonsRealm', NULL, NULL, 'primeconnect/HABANERO/SGDragonsRealm.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(693, 4, NULL, 'SGAllForOne', 'All For One', 'SGAllForOne', NULL, NULL, 'primeconnect/HABANERO/SGAllForOne.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(694, 4, NULL, 'SGFlyingHigh', 'Flying High', 'SGFlyingHigh', NULL, NULL, 'primeconnect/HABANERO/SGFlyingHigh.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(695, 4, NULL, 'SGMrBling', 'Mr Bling', 'SGMrBling', NULL, NULL, 'primeconnect/HABANERO/SGMrBling.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(696, 4, NULL, 'SGMysticFortune', 'Mystic Fortune', 'SGMysticFortune', NULL, NULL, 'primeconnect/HABANERO/SGMysticFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(697, 4, NULL, 'SGPuckerUpPrince', 'Pucker Up Prince', 'SGPuckerUpPrince', NULL, NULL, 'primeconnect/HABANERO/SGPuckerUpPrince.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:38', '2024-08-28 14:22:38'),
(698, 4, NULL, 'SGSirBlingalot', 'Sir Blingalot', 'SGSirBlingalot', NULL, NULL, 'primeconnect/HABANERO/SGSirBlingalot.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(699, 4, NULL, 'SGRideEmCowboy', 'Ride Em Cowboy', 'SGRideEmCowboy', NULL, NULL, 'primeconnect/HABANERO/SGRideEmCowboy.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(700, 4, NULL, 'SGGrapeEscape', 'The Grape Escape', 'SGGrapeEscape', NULL, NULL, 'primeconnect/HABANERO/SGGrapeEscape.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(701, 4, NULL, 'SGGoldenUnicorn', 'Golden Unicorn', 'SGGoldenUnicorn', NULL, NULL, 'primeconnect/HABANERO/SGGoldenUnicorn.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(702, 4, NULL, 'SGFrontierFortunes', 'Frontier Fortunes', 'SGFrontierFortunes', NULL, NULL, 'primeconnect/HABANERO/SGFrontierFortunes.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(703, 4, NULL, 'SGIndianCashCatcher', 'Indian Cash Catcher', 'SGIndianCashCatcher', NULL, NULL, 'primeconnect/HABANERO/SGIndianCashCatcher.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(704, 4, NULL, 'SGAzlandsGold', 'Aztlan`s Gold', 'SGAzlandsGold', NULL, NULL, 'primeconnect/HABANERO/SGAzlandsGold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(705, 4, NULL, 'SGSkysTheLimit', 'Sky`s the Limit', 'SGSkysTheLimit', NULL, NULL, 'primeconnect/HABANERO/SGSkysTheLimit.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(706, 4, NULL, 'SGTheBigDeal', 'The Big Deal', 'SGTheBigDeal', NULL, NULL, 'primeconnect/HABANERO/SGTheBigDeal.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(707, 4, NULL, 'SGCashosaurus', 'Cashosaurus', 'SGCashosaurus', NULL, NULL, 'primeconnect/HABANERO/SGCashosaurus.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(708, 4, NULL, 'SGDiscoFunk', 'Disco Funk', 'SGDiscoFunk', NULL, NULL, 'primeconnect/HABANERO/SGDiscoFunk.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(709, 4, NULL, 'SGNewYearsBash', 'New Years Bash', 'SGNewYearsBash', NULL, NULL, 'primeconnect/HABANERO/SGNewYearsBash.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(710, 4, NULL, 'SGNineTails', 'Nine Tails', 'SGNineTails', NULL, NULL, 'primeconnect/HABANERO/SGNineTails.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(711, 4, NULL, 'SGLuckyDurian', 'Lucky Durian', 'SGLuckyDurian', NULL, NULL, 'primeconnect/HABANERO/SGLuckyDurian.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39'),
(712, 4, NULL, 'SGDiscoBeats', 'Disco Beats', 'SGDiscoBeats', NULL, NULL, 'primeconnect/HABANERO/SGDiscoBeats.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:39', '2024-08-28 14:22:39');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(713, 4, NULL, 'SGLanternLuck', 'Lantern Luck', 'SGLanternLuck', NULL, NULL, 'primeconnect/HABANERO/SGLanternLuck.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-28 14:22:40'),
(714, 4, NULL, 'SGMightyMedusa', 'Mighty Medusa', 'SGMightyMedusa', NULL, NULL, 'primeconnect/HABANERO/SGMightyMedusa.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-28 14:22:40'),
(715, 5, NULL, 'crash_bob', 'Crash Bob', 'crash_bob', 'SLOT', NULL, '01J6JCCV9W8JXTG3PZC172PC6K.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 1, 1, '2024-08-28 14:22:40', '2024-08-30 14:32:33'),
(716, 5, NULL, 'haremkeno', 'HaremKeno', 'haremkeno', 'SLOT', NULL, '01J6JCDJKGM5TNAEWPRFC1EXAS.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-30 14:32:57'),
(717, 5, NULL, 'fouchika', 'Fouchika', 'fouchika', 'SLOT', NULL, '01J6JCEDVM5N95ABKFB7ERMMWF.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-30 14:33:24'),
(718, 5, NULL, 'nincato', 'Nincato', 'nincato', 'SLOT', NULL, '01J6JCF143HH8EBDZ2T4MYPY39.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-30 14:33:44'),
(719, 5, NULL, 'stepball', 'Stepball', 'stepball', 'SLOT', NULL, '01J6JCFM5XC86Y23MYTZVKZ9JS.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-30 14:34:04'),
(720, 11, NULL, 'leprechaun-riches', 'Leprechaun Riches', 'leprechaun-riches', NULL, NULL, 'primeconnect/PGSoft Slot/leprechaun-riches.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-28 14:22:40'),
(721, 11, NULL, 'ninja-vs-samurai', 'Ninja vs Samurai', 'ninja-vs-samurai', NULL, NULL, 'primeconnect/PGSoft Slot/ninja-vs-samurai.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-28 14:22:40'),
(722, 11, NULL, 'dragon-tiger-luck', 'Dragon Tiger Luck', 'dragon-tiger-luck', NULL, NULL, 'primeconnect/PGSoft Slot/dragon-tiger-luck.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-28 14:22:40'),
(723, 11, NULL, 'flirting-scholar', 'Flirting Scholar', 'flirting-scholar', NULL, NULL, 'primeconnect/PGSoft Slot/flirting-scholar.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-28 14:22:40'),
(724, 11, NULL, 'muay-thai-champion', 'Muay Thai Champion', 'muay-thai-champion', NULL, NULL, 'primeconnect/PGSoft Slot/muay-thai-champion.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-28 14:22:40'),
(725, 11, NULL, 'mahjong-ways', 'Mahjong Ways', 'mahjong-ways', NULL, NULL, 'primeconnect/PGSoft Slot/mahjong-ways.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:40', '2024-08-28 14:22:40'),
(726, 11, NULL, 'dragon-hatch', 'Dragon Hatch', 'dragon-hatch', NULL, NULL, 'primeconnect/PGSoft Slot/dragon-hatch.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(727, 11, NULL, 'fortune-mouse', 'Fortune Mouse', 'fortune-mouse', NULL, NULL, 'primeconnect/PGSoft Slot/fortune-mouse.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(728, 11, NULL, 'reel-love', 'Reel Love', 'reel-love', NULL, NULL, 'primeconnect/PGSoft Slot/reel-love.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(729, 11, NULL, 'bikini-paradise', 'Bikini Paradise ', 'bikini-paradise', NULL, NULL, 'primeconnect/PGSoft Slot/bikini-paradise.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(730, 11, NULL, 'shaolin-soccer', 'Shaolin Soccer', 'shaolin-soccer', NULL, NULL, 'primeconnect/PGSoft Slot/shaolin-soccer.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(731, 11, NULL, 'mahjong-ways2', 'Mahjong Ways 2', 'mahjong-ways2', NULL, NULL, 'primeconnect/PGSoft Slot/mahjong-ways2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(732, 11, NULL, 'candy-burst', 'Candy Burst', 'candy-burst', NULL, NULL, 'primeconnect/PGSoft Slot/candy-burst.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(733, 11, NULL, 'opera-dynasty', 'Opera Dynasty', 'opera-dynasty', NULL, NULL, 'primeconnect/PGSoft Slot/opera-dynasty.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(734, 11, NULL, 'rise-of-apollo', 'Rise of Apollo', 'rise-of-apollo', NULL, NULL, 'primeconnect/PGSoft Slot/rise-of-apollo.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(735, 11, NULL, 'phoenix-rises', 'Phoenix Rises', 'phoenix-rises', NULL, NULL, 'primeconnect/PGSoft Slot/phoenix-rises.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(736, 11, NULL, 'wild-fireworks', 'Wild Fireworks', 'wild-fireworks', NULL, NULL, 'primeconnect/PGSoft Slot/wild-fireworks.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(737, 11, NULL, 'genies-wishes', 'Genie\'s 3 Wishes', 'genies-wishes', NULL, NULL, 'primeconnect/PGSoft Slot/genies-wishes.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(738, 11, NULL, 'thai-river', 'Thai River Wonders', 'thai-river', NULL, NULL, 'primeconnect/PGSoft Slot/thai-river.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:41', '2024-08-28 14:22:41'),
(739, 11, NULL, 'circus-delight', 'Circus Delight', 'circus-delight', NULL, NULL, 'primeconnect/PGSoft Slot/circus-delight.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(740, 11, NULL, 'sct-cleopatra', 'Secrets of Cleopatra', 'sct-cleopatra', NULL, NULL, 'primeconnect/PGSoft Slot/sct-cleopatra.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(741, 11, NULL, 'jurassic-kdm', 'Jurassic Kingdom', 'jurassic-kdm', NULL, NULL, 'primeconnect/PGSoft Slot/jurassic-kdm.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(742, 11, NULL, 'dreams-of-macau', 'Dreams of Macau', 'dreams-of-macau', NULL, NULL, 'primeconnect/PGSoft Slot/dreams-of-macau.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(743, 11, NULL, 'vampires-charm', 'Vampire\'s Charm', 'vampires-charm', NULL, NULL, 'primeconnect/PGSoft Slot/vampires-charm.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(744, 11, NULL, 'queen-bounty', 'Queen of Bounty ', 'queen-bounty', NULL, NULL, 'primeconnect/PGSoft Slot/queen-bounty.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(745, 11, NULL, 'jewels-prosper', 'Jewels of Prosperity', 'jewels-prosper', NULL, NULL, 'primeconnect/PGSoft Slot/jewels-prosper.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(746, 11, NULL, 'jack-frosts', 'Jack Frost\'s Winter', 'jack-frosts', NULL, NULL, 'primeconnect/PGSoft Slot/jack-frosts.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(747, 11, NULL, 'ganesha-fortune', 'Ganesha Fortune', 'ganesha-fortune', NULL, NULL, 'primeconnect/PGSoft Slot/ganesha-fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(748, 11, NULL, 'egypts-book-mystery', 'Egypt\'s Book of Mystery', 'egypts-book-mystery', NULL, NULL, 'primeconnect/PGSoft Slot/egypts-book-mystery.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(749, 11, NULL, 'galactic-gems', 'Galactic Gems', 'galactic-gems', NULL, NULL, 'primeconnect/PGSoft Slot/galactic-gems.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(750, 11, NULL, 'gdn-ice-fire', 'Guardians of Ice and Fire', 'gdn-ice-fire', NULL, NULL, 'primeconnect/PGSoft Slot/gdn-ice-fire.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(751, 11, NULL, 'fortune-ox', 'Fortune Ox', 'fortune-ox', NULL, NULL, 'primeconnect/PGSoft Slot/fortune-ox.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(752, 11, NULL, 'bali-vacation', 'Bali Vacation', 'bali-vacation', NULL, NULL, 'primeconnect/PGSoft Slot/bali-vacation.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:42', '2024-08-28 14:22:42'),
(753, 11, NULL, 'majestic-ts', 'Majestic Treasures', 'majestic-ts', NULL, NULL, 'primeconnect/PGSoft Slot/majestic-ts.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(754, 11, NULL, 'candy-bonanza', 'Candy Bonanza', 'candy-bonanza', NULL, NULL, 'primeconnect/PGSoft Slot/candy-bonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(755, 11, NULL, 'wild-bandito', 'Wild Bandito', 'wild-bandito', NULL, NULL, 'primeconnect/PGSoft Slot/wild-bandito.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(756, 11, NULL, 'heist-stakes', 'Heist  Stakes', 'heist-stakes', NULL, NULL, 'primeconnect/PGSoft Slot/heist-stakes.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(757, 11, NULL, 'mermaid-riches', 'Mermaid Riches', 'mermaid-riches', NULL, NULL, 'primeconnect/PGSoft Slot/mermaid-riches.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(758, 11, NULL, 'crypt-fortune', 'Raider Jane\'s Crypt of Fortune', 'crypt-fortune', NULL, NULL, 'primeconnect/PGSoft Slot/crypt-fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(759, 11, NULL, 'sprmkt-spree', 'Supermarket Spree', 'sprmkt-spree', NULL, NULL, 'primeconnect/PGSoft Slot/sprmkt-spree.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(760, 11, NULL, 'buffalo-win', 'Buffalo Win', 'buffalo-win', NULL, NULL, 'primeconnect/PGSoft Slot/buffalo-win.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(761, 11, NULL, 'lgd-monkey-kg', 'Legendary Monkey King', 'lgd-monkey-kg', NULL, NULL, 'primeconnect/PGSoft Slot/lgd-monkey-kg.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(762, 11, NULL, 'spirit-wonder', 'Spirited Wonders', 'spirit-wonder', NULL, NULL, 'primeconnect/PGSoft Slot/spirit-wonder.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(763, 11, NULL, 'emoji-riches', 'Emoji Riches', 'emoji-riches', NULL, NULL, 'primeconnect/PGSoft Slot/emoji-riches.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(764, 11, NULL, 'mask-carnival', 'Mask Carnival', 'mask-carnival', NULL, NULL, 'primeconnect/PGSoft Slot/mask-carnival.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(765, 11, NULL, 'fortune-tiger', 'Fortune Tiger', 'fortune-tiger', NULL, NULL, 'primeconnect/PGSoft Slot/fortune-tiger.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(766, 11, NULL, 'oriental-pros', 'Oriental Prosperity', 'oriental-pros', NULL, NULL, 'primeconnect/PGSoft Slot/oriental-pros.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:43', '2024-08-28 14:22:43'),
(767, 11, NULL, 'garuda-gems', 'Garuda Gems', 'garuda-gems', NULL, NULL, 'primeconnect/PGSoft Slot/garuda-gems.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(768, 11, NULL, 'dest-sun-moon', 'Destiny of Sun & Moon', 'dest-sun-moon', NULL, NULL, 'primeconnect/PGSoft Slot/dest-sun-moon.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(769, 11, NULL, 'btrfly-blossom', 'Butterfly Blossom', 'btrfly-blossom', NULL, NULL, 'primeconnect/PGSoft Slot/btrfly-blossom.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(770, 11, NULL, 'queen-banquet', 'The Queen\'s Banquet', 'queen-banquet', NULL, NULL, 'primeconnect/PGSoft Slot/queen-banquet.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(771, 11, NULL, 'rooster-rbl', 'Rooster Rumble', 'rooster-rbl', NULL, NULL, 'primeconnect/PGSoft Slot/rooster-rbl.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(772, 11, NULL, 'battleground', 'Battleground Royale', 'battleground', NULL, NULL, 'primeconnect/PGSoft Slot/battleground.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(773, 11, NULL, 'win-win-fpc', 'Win Win Fish Prawn Crab', 'win-win-fpc', NULL, NULL, 'primeconnect/PGSoft Slot/win-win-fpc.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(774, 11, NULL, 'speed-winner', 'Speed Winner', 'speed-winner', NULL, NULL, 'primeconnect/PGSoft Slot/speed-winner.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(775, 11, NULL, 'legend-perseus', 'Legend of Perseus', 'legend-perseus', NULL, NULL, 'primeconnect/PGSoft Slot/legend-perseus.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(776, 11, NULL, 'wild-coaster', 'Wild Coaster', 'wild-coaster', NULL, NULL, 'primeconnect/PGSoft Slot/wild-coaster.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(777, 11, NULL, 'prosper-ftree', 'Prosperity Fortune Tree', 'prosper-ftree', NULL, NULL, 'primeconnect/PGSoft Slot/prosper-ftree.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(778, 11, NULL, 'totem-wonders', 'Totem Wonders', 'totem-wonders', NULL, NULL, 'primeconnect/PGSoft Slot/totem-wonders.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(779, 11, NULL, 'alchemy-gold', 'Alchemy Gold', 'alchemy-gold', NULL, NULL, 'primeconnect/PGSoft Slot/alchemy-gold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(780, 11, NULL, 'diner-delights', 'Diner Delights', 'diner-delights', NULL, NULL, 'primeconnect/PGSoft Slot/diner-delights.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:44', '2024-08-28 14:22:44'),
(781, 11, NULL, 'midas-fortune', 'Midas Fortune', 'midas-fortune', NULL, NULL, 'primeconnect/PGSoft Slot/midas-fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(782, 11, NULL, 'fortune-rabbit', 'Fortune Rabbit', 'fortune-rabbit', NULL, NULL, 'primeconnect/PGSoft Slot/fortune-rabbit.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(783, 11, NULL, 'rave-party-fvr', 'Rave Party Fever', 'rave-party-fvr', NULL, NULL, 'primeconnect/PGSoft Slot/rave-party-fvr.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(784, 11, NULL, 'hawaiian-tiki', 'Hawaiian Tiki', 'hawaiian-tiki', NULL, NULL, 'primeconnect/PGSoft Slot/hawaiian-tiki.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(785, 11, NULL, 'songkran-spl', 'Songkran Splash', 'songkran-spl', NULL, NULL, 'primeconnect/PGSoft Slot/songkran-spl.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(786, 11, NULL, 'myst-spirits', 'Mystical Spirits', 'myst-spirits', NULL, NULL, 'primeconnect/PGSoft Slot/myst-spirits.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(787, 11, NULL, 'spr-golf-drive', 'Super Golf Drive', 'spr-golf-drive', NULL, NULL, 'primeconnect/PGSoft Slot/spr-golf-drive.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(788, 11, NULL, 'lucky-clover', 'Lucky Clover Lady', 'lucky-clover', NULL, NULL, 'primeconnect/PGSoft Slot/lucky-clover.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(789, 11, NULL, 'fruity-candy', 'Fruity Candy', 'fruity-candy', NULL, NULL, 'primeconnect/PGSoft Slot/fruity-candy.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(790, 11, NULL, 'cruise-royale', 'Cruise Royale', 'cruise-royale', NULL, NULL, 'primeconnect/PGSoft Slot/cruise-royale.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(791, 11, NULL, 'safari-wilds', 'Safari Wilds', 'safari-wilds', NULL, NULL, 'primeconnect/PGSoft Slot/safari-wilds.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(792, 11, NULL, 'gladi-glory', 'Gladiator\'s Glory', 'gladi-glory', NULL, NULL, 'primeconnect/PGSoft Slot/gladi-glory.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(793, 11, NULL, 'ninja-raccoon', 'Ninja Raccoon Frenzy', 'ninja-raccoon', NULL, NULL, 'primeconnect/PGSoft Slot/ninja-raccoon.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(794, 11, NULL, 'wild-heist-co', 'Wild Heist Cashout', 'wild-heist-co', NULL, NULL, 'primeconnect/PGSoft Slot/wild-heist-co.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:45', '2024-08-28 14:22:45'),
(795, 11, NULL, 'forge-wealth', 'Forge of Wealth', 'forge-wealth', NULL, NULL, 'primeconnect/PGSoft Slot/forge-wealth.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(796, 11, NULL, 'mafia-mayhem', 'Mafia Mayhem', 'mafia-mayhem', NULL, NULL, 'primeconnect/PGSoft Slot/mafia-mayhem.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(797, 11, NULL, 'bakery-bonanza', 'Bakery Bonanza', 'bakery-bonanza', NULL, NULL, 'primeconnect/PGSoft Slot/bakery-bonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(798, 11, NULL, 'asgardian-rs', 'Asgardian Rising', 'asgardian-rs', NULL, NULL, 'primeconnect/PGSoft Slot/asgardian-rs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(799, 11, NULL, 'ult-striker', 'Ultimate Striker', 'ult-striker', NULL, NULL, 'primeconnect/PGSoft Slot/ult-striker.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(800, 11, NULL, 'tsar-treasures', 'Tsar Treasures', 'tsar-treasures', NULL, NULL, 'primeconnect/PGSoft Slot/tsar-treasures.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(801, 11, NULL, 'werewolf-hunt', 'Werewolf\'s Hunt', 'werewolf-hunt', NULL, NULL, 'primeconnect/PGSoft Slot/werewolf-hunt.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(802, 11, NULL, 'dragon-hatch2', 'Dragon Hatch 2', 'dragon-hatch2', NULL, NULL, 'primeconnect/PGSoft Slot/dragon-hatch2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(803, 11, NULL, 'fortune-dragon', 'Fortune Dragon', 'fortune-dragon', NULL, NULL, 'primeconnect/PGSoft Slot/fortune-dragon.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(804, 11, NULL, 'gemstones-gold', 'Gemstones Gold', 'gemstones-gold', NULL, NULL, 'primeconnect/PGSoft Slot/gemstones-gold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(805, 11, NULL, 'cash-mania', 'Cash Mania', 'cash-mania', NULL, NULL, 'primeconnect/PGSoft Slot/cash-mania.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(806, 11, NULL, 'wild-ape-3258', 'Wild Ape #3258', 'wild-ape-3258', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:46', '2024-08-28 14:22:46'),
(807, 11, NULL, 'pinata-wins', 'Pinata Wins', 'pinata-wins', NULL, NULL, 'primeconnect/PGSoft Slot/pinata-wins.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(808, 11, NULL, 'mystic-potions', 'Mystic Potion', 'mystic-potions', NULL, NULL, 'primeconnect/PGSoft Slot/mystic-potions.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(809, 11, NULL, 'anubis-wrath', 'Anubis Wrath', 'anubis-wrath', NULL, NULL, 'primeconnect/PGSoft Slot/anubis-wrath.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(810, 11, NULL, 'zombie-outbrk', 'Zombie Outbreak', 'zombie-outbrk', NULL, NULL, 'primeconnect/PGSoft Slot/zombie-outbrk.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(811, 11, NULL, 'treasures-aztec', 'Treasures of Aztec', 'treasures-aztec', NULL, NULL, 'primeconnect/PGSoft Slot/treasures-aztec.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(812, 11, NULL, 'ways-of-qilin', 'Ways of the Qilin', 'ways-of-qilin', NULL, NULL, 'primeconnect/PGSoft Slot/ways-of-qilin.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(813, 11, NULL, 'lucky-neko', 'Lucky Neko', 'lucky-neko', NULL, NULL, 'primeconnect/PGSoft Slot/lucky-neko.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(814, 11, NULL, 'lucky-piggy', 'Lucky Piggy', 'lucky-piggy', NULL, NULL, 'primeconnect/PGSoft Slot/lucky-piggy.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(815, 11, NULL, 'wild-bounty-sd', 'Wild Bounty Showdown', 'wild-bounty-sd', NULL, NULL, 'primeconnect/PGSoft Slot/wild-bounty-sd.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(816, 11, NULL, 'shark-hunter', 'Shark Bounty', 'shark-hunter', NULL, NULL, 'primeconnect/PGSoft Slot/shark-hunter.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(817, 11, NULL, 'yakuza-honor', 'Yakuza Honor', 'yakuza-honor', NULL, NULL, 'primeconnect/PGSoft Slot/yakuza-honor.webp', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(818, 11, NULL, 'wings-iguazu', 'Wings of Iguazu', 'wings-iguazu', NULL, NULL, 'primeconnect/PGSoft Slot/wings-iguazu.webp', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:47', '2024-08-28 14:22:47'),
(819, 6, NULL, 'casino-dream', 'Dream Gaming', 'casino-dream', NULL, NULL, 'primeconnect/Dream Gaming/casino-dream.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 1, 0, 1, '2024-08-28 14:22:47', '2024-08-31 16:49:33'),
(820, 10, NULL, 'vs20trollx', 'Trolling 1000', 'vs20trollx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20trollx.jpeg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(821, 10, NULL, 'vs10carpbbbnz', 'Gold Carp Bonanza', 'vs10carpbbbnz', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10carpbbbnz.jpeg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(822, 10, NULL, 'vswayscongcash', 'Congo Cash XL', 'vswayscongcash', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayscongcash.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(823, 10, NULL, 'vs25wgdice', 'Wolf Gold Dice', 'vs25wgdice', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25wgdice.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(824, 10, NULL, 'vs20sugardice', 'Sugar Rush Dice', 'vs20sugardice', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sugardice.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(825, 10, NULL, 'vs20powerwild', 'Mystery Mice', 'vs20powerwild', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20powerwild.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(826, 10, NULL, 'vs10bbdoubled', 'Big Bass Vegas Double Down Deluxe', 'vs10bbdoubled', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bbdoubled.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(827, 10, NULL, 'vs15fghtmultlv', 'Angel vs Sinner', 'vs15fghtmultlv', NULL, NULL, 'primeconnect/Pragmatic Slot/vs15fghtmultlv.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(828, 10, NULL, 'vs20olygames', 'Games in Olympus', 'vs20olygames', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20olygames.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(829, 10, NULL, 'vs20leogatex', 'Gates of LeoVegas 1000', 'vs20leogatex', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20leogatex.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(830, 10, NULL, 'vs20elevclust', 'Gem Elevator', 'vs20elevclust', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20elevclust.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(831, 10, NULL, 'vs20trswild3', 'Aztec Treasure Hunt', 'vs20trswild3', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20trswild3.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(832, 10, NULL, 'vs15pvss', 'Puffers Vs Sharks', 'vs15pvss', NULL, NULL, 'primeconnect/Pragmatic Slot/vs15pvss.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(833, 10, NULL, 'vs20olympbet', 'Gates of Betano Olympus', 'vs20olympbet', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20olympbet.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(834, 10, NULL, 'vs20cbrhstx', 'Cyber Heist 1000', 'vs20cbrhstx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20cbrhstx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:48', '2024-08-28 14:22:48'),
(835, 10, NULL, 'vs20peiramult', 'To Peiratiko Multihold', 'vs20peiramult', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20peiramult.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(836, 10, NULL, 'vs20sungate', 'The Green Sun', 'vs20sungate', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sungate.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(837, 10, NULL, 'vs20rodegate', 'Devil Joker', 'vs20rodegate', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20rodegate.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(838, 10, NULL, 'vs20fruitvjx', 'VeraJohn Sweet Bonanza 1000', 'vs20fruitvjx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20fruitvjx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(839, 10, NULL, 'vs20riverstx', 'River of Styx', 'vs20riverstx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20riverstx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(840, 10, NULL, 'vs20forgewilds', 'Forging Wilds', 'vs20forgewilds', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20forgewilds.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(841, 10, NULL, 'vs10hottb7fs', 'Hot to Burn – 7 Deadly Free Spins', 'vs10hottb7fs', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10hottb7fs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(842, 10, NULL, 'vs20mesmult', 'Yeti Quest', 'vs20mesmult', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20mesmult.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(843, 10, NULL, 'vswayscashconv', 'Running Sushi', 'vswayscashconv', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayscashconv.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(844, 10, NULL, 'vs10dgold88', 'Dragon Gold 88', 'vs10dgold88', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10dgold88.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(845, 10, NULL, 'vswaysmegwghts', 'Sumo Supreme Megaways', 'vswaysmegwghts', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysmegwghts.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(846, 10, NULL, 'vs20gembondx', 'Bow of Artemis', 'vs20gembondx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20gembondx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(847, 10, NULL, 'vs20jhunter', 'Jackpot Hunter', 'vs20jhunter', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20jhunter.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(848, 10, NULL, 'vs10jokerhot', 'Joker’s Jewels Hot', 'vs10jokerhot', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10jokerhot.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:49', '2024-08-28 14:22:49'),
(849, 10, NULL, 'vs10dyndigd', 'Dynamite Diggin Doug', 'vs10dyndigd', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10dyndigd.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(850, 10, NULL, 'vs5magicdoor', '6 Jokers', 'vs5magicdoor', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5magicdoor.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(851, 10, NULL, 'vs25jeitinho', 'Jeitinho Brasileiro', 'vs25jeitinho', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25jeitinho.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(852, 10, NULL, 'vs576mrtainwwg', 'Mr Tain\'s Fury: Wild Wild Gladiator', 'vs576mrtainwwg', NULL, NULL, 'primeconnect/Pragmatic Slot/vs576mrtainwwg.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(853, 10, NULL, 'vs20sulcon', 'The Conqueror', 'vs20sulcon', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sulcon.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(854, 10, NULL, 'vs20risemont', 'Rise of Montezuma', 'vs20risemont', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20risemont.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(855, 10, NULL, 'vs20sweetarg', 'Sweet Argentina', 'vs20sweetarg', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sweetarg.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(856, 10, NULL, 'vs5gemstone', 'Gemstone', 'vs5gemstone', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5gemstone.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(857, 10, NULL, 'vs20bnnzdice', 'Sweet Bonanza Dice', 'vs20bnnzdice', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20bnnzdice.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(858, 10, NULL, 'vs20olympgrace', 'Grace of Ebisu', 'vs20olympgrace', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20olympgrace.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(859, 10, NULL, 'vs20rujakbnz', 'Rujak Bonanza', 'vs20rujakbnz', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20rujakbnz.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(860, 10, NULL, 'vs5jokerdice', 'Joker Jewels Dice', 'vs5jokerdice', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5jokerdice.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(861, 10, NULL, 'vs20laughluck', 'Happy Fortune', 'vs20laughluck', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20laughluck.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(862, 10, NULL, 'vs1024mjwinbns', 'Mahjong Wins Bonus', 'vs1024mjwinbns', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1024mjwinbns.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:50', '2024-08-28 14:22:50'),
(863, 10, NULL, 'vs1024fortune', 'Fortune Ace', 'vs1024fortune', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1024fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(864, 10, NULL, 'vs20ninjapower', 'Power of Ninja', 'vs20ninjapower', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20ninjapower.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(865, 10, NULL, 'vs20gatotx', 'Gates of Gatot Kaca 1000', 'vs20gatotx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20gatotx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(866, 10, NULL, 'vs15samurai4', 'Rise of Samurai 4', 'vs15samurai4', NULL, NULL, 'primeconnect/Pragmatic Slot/vs15samurai4.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(867, 10, NULL, 'vs5jjwild', 'Joker’s Jewels Wild', 'vs5jjwild', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5jjwild.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(868, 10, NULL, 'vs20mkrush', 'Monkey King Rush', 'vs20mkrush', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20mkrush.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(869, 10, NULL, 'vs1024mahjwins', 'Mahjong Wins', 'vs1024mahjwins', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1024mahjwins.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(870, 10, NULL, 'vs4096robber', 'Robber Strike', 'vs4096robber', NULL, NULL, 'primeconnect/Pragmatic Slot/vs4096robber.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(871, 10, NULL, 'vswaysfrbugs', 'Frogs & Bugs', 'vswaysfrbugs', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysfrbugs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(872, 10, NULL, 'vs20framazon', 'Fruits of the Amazon', 'vs20framazon', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20framazon.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(873, 10, NULL, 'vswaysrabbits', '5 Rabbits Megaways', 'vswaysrabbits', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysrabbits.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(874, 10, NULL, 'vs20asgard', 'Kingdom of Asgard', 'vs20asgard', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20asgard.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(875, 10, NULL, 'vswaysoldminer', 'Old Gold Miner Megaways', 'vswaysoldminer', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysoldminer.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(876, 10, NULL, 'vswayslofhero', 'Legend of Heroes Megaways', 'vswayslofhero', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayslofhero.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:51', '2024-08-28 14:22:51'),
(877, 10, NULL, 'vs20wildman', 'Wildman Super Bonanza', 'vs20wildman', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20wildman.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(878, 10, NULL, 'vs10coffee', 'Coffee Wild', 'vs10coffee', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10coffee.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(879, 10, NULL, 'vs40samurai3', 'Rise Of Samurai III', 'vs40samurai3', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40samurai3.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(880, 10, NULL, 'vs10tictac', 'Tic Tac Take', 'vs10tictac', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10tictac.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(881, 10, NULL, 'vs243discolady', 'Disco Lady', 'vs243discolady', NULL, NULL, 'primeconnect/Pragmatic Slot/vs243discolady.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(882, 10, NULL, 'vs50mightra', 'Might of Ra', 'vs50mightra', NULL, NULL, 'primeconnect/Pragmatic Slot/vs50mightra.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(883, 10, NULL, 'vs25bullfiesta', 'Bull Fiesta', 'vs25bullfiesta', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25bullfiesta.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(884, 10, NULL, 'vs4096magician', 'Magician’s Secrets', 'vs4096magician', NULL, NULL, 'primeconnect/Pragmatic Slot/vs4096magician.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(885, 10, NULL, 'vs25tigeryear', 'Lucky New Year – Tiger Treasures', 'vs25tigeryear', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25tigeryear.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(886, 10, NULL, 'vs88hockattack', 'Hockey Attack', 'vs88hockattack', NULL, NULL, 'primeconnect/Pragmatic Slot/vs88hockattack.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(887, 10, NULL, 'vs40bigjuan', 'Big Juan', 'vs40bigjuan', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40bigjuan.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(888, 10, NULL, 'vs20bermuda', 'John Hunter and the Quest for Bermuda Riches', 'vs20bermuda', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20bermuda.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(889, 10, NULL, 'vs10starpirate', 'Star Pirates Code', 'vs10starpirate', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10starpirate.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(890, 10, NULL, 'vswayswest', 'Mystic Chief', 'vswayswest', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayswest.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:52', '2024-08-28 14:22:52'),
(891, 10, NULL, 'vs20tweethouse', 'The Tweety House', 'vs20tweethouse', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20tweethouse.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(892, 10, NULL, 'vs20daydead', 'Day of Dead', 'vs20daydead', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20daydead.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(893, 10, NULL, 'vs20candvil', 'Candy Village', 'vs20candvil', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20candvil.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(894, 10, NULL, 'vs10luckcharm', 'Lucky Grace And Charm', 'vs10luckcharm', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10luckcharm.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(895, 10, NULL, 'vswaysaztecking', 'Aztec King Megaways', 'vswaysaztecking', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysaztecking.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(896, 10, NULL, 'vs20chickdrop', 'Chicken Drop', 'vs20chickdrop', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20chickdrop.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(897, 10, NULL, 'vs20phoenixf', 'Phoenix Forge', 'vs20phoenixf', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20phoenixf.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(898, 10, NULL, 'vs20emptybank', 'Empty the Bank', 'vs20emptybank', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20emptybank.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(899, 10, NULL, 'vs25rio', 'Heart of Rio', 'vs25rio', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25rio.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(900, 10, NULL, 'vs576hokkwolf', 'Hokkaido Wolf', 'vs576hokkwolf', NULL, NULL, 'primeconnect/Pragmatic Slot/vs576hokkwolf.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(901, 10, NULL, 'vs20magicpot', 'The Magic Cauldron – Enchanted Brew', 'vs20magicpot', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20magicpot.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(902, 10, NULL, 'vswayssamurai', 'Rise of Samurai Megaways', 'vswayssamurai', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayssamurai.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(903, 10, NULL, 'vs25pandatemple', 'Panda Fortune 2', 'vs25pandatemple', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25pandatemple.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(904, 10, NULL, 'vs25hotfiesta', 'Hot Fiesta', 'vs25hotfiesta', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25hotfiesta.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:53', '2024-08-28 14:22:53'),
(905, 10, NULL, 'vs25gldox', 'Golden Ox', 'vs25gldox', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25gldox.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(906, 10, NULL, 'vs40voodoo', 'Voodoo Magic', 'vs40voodoo', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40voodoo.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(907, 10, NULL, 'vs20bonzgold', 'Bonanza Gold', 'vs20bonzgold', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20bonzgold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(908, 10, NULL, 'vs40spartaking', 'Spartan King', 'vs40spartaking', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40spartaking.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(909, 10, NULL, 'vs25samurai', 'Rise of Samurai', 'vs25samurai', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25samurai.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(910, 10, NULL, 'vs25walker', 'Wild Walker', 'vs25walker', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25walker.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(911, 10, NULL, 'vswayshive', 'Star Bounty', 'vswayshive', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayshive.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(912, 10, NULL, 'vs20pblinders', 'Peaky Blinders', 'vs20pblinders', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20pblinders.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(913, 10, NULL, 'vs25tigerwar', 'The Tiger Warrior', 'vs25tigerwar', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25tigerwar.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(914, 10, NULL, 'vs1fufufu', 'Fu Fu Fu', 'vs1fufufu', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1fufufu.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(915, 10, NULL, 'vs117649starz', 'Starz Megaways', 'vs117649starz', NULL, NULL, 'primeconnect/Pragmatic Slot/vs117649starz.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(916, 10, NULL, 'vs10threestar', 'Three Star Fortune', 'vs10threestar', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10threestar.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(917, 10, NULL, 'vs20cbrhst', 'Cyber Heist', 'vs20cbrhst', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20cbrhst.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(918, 10, NULL, 'vs12scode', 'Samurai Code', 'vs12scode', NULL, NULL, 'primeconnect/Pragmatic Slot/vs12scode.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:54', '2024-08-28 14:22:54'),
(919, 10, NULL, 'vs20crankit', 'Crank It Up', 'vs20crankit', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20crankit.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(920, 10, NULL, 'vs20clustcol', 'Sweet Kingdom', 'vs20clustcol', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20clustcol.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(921, 10, NULL, 'vswayscheist', 'Casino Heist Megaways', 'vswayscheist', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayscheist.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(922, 10, NULL, 'vs5hotbmult', 'Hot to Burn Multiplier', 'vs5hotbmult', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5hotbmult.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(923, 10, NULL, 'vs10bbfmission', 'Big Bass Mission Fishin', 'vs10bbfmission', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bbfmission.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(924, 10, NULL, 'vs20medusast', 'Medusa’s Stone', 'vs20medusast', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20medusast.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(925, 10, NULL, 'vs20midas2', 'Hand of Midas 2', 'vs20midas2', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20midas2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(926, 10, NULL, 'vswaysbkingasc', 'Buffalo King Untamed Megaways', 'vswaysbkingasc', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysbkingasc.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(927, 10, NULL, 'vswaysmahwin2', 'Mahjong Wins 2', 'vswaysmahwin2', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysmahwin2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(928, 10, NULL, 'vswayslions', '5 Lions Megaways', 'vswayslions', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayslions.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(929, 10, NULL, 'vs20pbonanza', 'Pyramid Bonanza', 'vs20pbonanza', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20pbonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(930, 10, NULL, 'vs20gatotgates', 'Gates of Gatot Kaca', 'vs20gatotgates', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20gatotgates.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(931, 10, NULL, 'vs25pandagold', 'Panda\'s Fortune', 'vs25pandagold', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25pandagold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(932, 10, NULL, 'vswayshammthor', 'Power of Thor Megaways', 'vswayshammthor', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayshammthor.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:55', '2024-08-28 14:22:55'),
(933, 10, NULL, 'vs20supermania', 'Supermania', 'vs20supermania', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20supermania.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(934, 10, NULL, 'vs20doghousemh', 'The Dog House Multihold', 'vs20doghousemh', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20doghousemh.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(935, 10, NULL, 'vs25jokrace', 'Joker Race', 'vs25jokrace', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25jokrace.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(936, 10, NULL, 'vs20aztecgates', 'Gates of Aztec', 'vs20aztecgates', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20aztecgates.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(937, 10, NULL, 'vs25holiday', 'Holiday Ride', 'vs25holiday', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25holiday.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(938, 10, NULL, 'vs1024moonsh', 'Moonshot', 'vs1024moonsh', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1024moonsh.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(939, 10, NULL, 'vs20gatotfury', 'Gatot Kaca\'s Fury', 'vs20gatotfury', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20gatotfury.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(940, 10, NULL, 'vs5drhs', 'Dragon Hot Hold & Spin', 'vs5drhs', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5drhs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(941, 10, NULL, 'vs100firehot', 'Fire Hot 100', 'vs100firehot', NULL, NULL, 'primeconnect/Pragmatic Slot/vs100firehot.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(942, 10, NULL, 'vs1024mahjpanda', 'Mahjong Panda', 'vs1024mahjpanda', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1024mahjpanda.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(943, 10, NULL, 'vs20trsbox', 'Treasure Wild', 'vs20trsbox', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20trsbox.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(944, 10, NULL, 'vs20santawonder', 'Santa\'s Wonderland', 'vs20santawonder', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20santawonder.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(945, 10, NULL, 'vswaysbbb', 'Big Bass Bonanza Megaways', 'vswaysbbb', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysbbb.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:56', '2024-08-28 14:22:56'),
(946, 10, NULL, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'vs20hburnhs', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20hburnhs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(947, 10, NULL, 'vs25btygold', 'Bounty Gold', 'vs25btygold', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25btygold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(948, 10, NULL, 'vs5ultra', 'Ultra Hold and Spin', 'vs5ultra', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5ultra.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(949, 10, NULL, 'vs1masterjoker', 'Master Joker', 'vs1masterjoker', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1masterjoker.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(950, 10, NULL, 'vs576treasures', 'Wild Wild Riches', 'vs576treasures', NULL, NULL, 'primeconnect/Pragmatic Slot/vs576treasures.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(951, 10, NULL, 'vs25aztecking', 'Aztec King', 'vs25aztecking', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25aztecking.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(952, 10, NULL, 'vs10returndead', 'Return of the Dead', 'vs10returndead', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10returndead.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(953, 10, NULL, 'vs40pirate', 'Pirate Gold', 'vs40pirate', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40pirate.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(954, 10, NULL, 'vs243mwarrior', 'Monkey Warrior', 'vs243mwarrior', NULL, NULL, 'primeconnect/Pragmatic Slot/vs243mwarrior.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(955, 10, NULL, 'vs5ultrab', 'Ultra Burn', 'vs5ultrab', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5ultrab.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(956, 10, NULL, 'vs1money', 'Money Money Money', 'vs1money', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1money.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(957, 10, NULL, 'vs25mmouse', 'Money Mouse', 'vs25mmouse', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25mmouse.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(958, 10, NULL, 'vs1fortunetree', 'Tree of Riches', 'vs1fortunetree', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1fortunetree.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(959, 10, NULL, 'vs10bblpop', 'Bubble Pop', 'vs10bblpop', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bblpop.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(960, 10, NULL, 'vs25pyramid', 'Pyramid King', 'vs25pyramid', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25pyramid.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:57', '2024-08-28 14:22:57'),
(961, 10, NULL, 'vs20vegasmagic', 'Vegas Magic', 'vs20vegasmagic', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20vegasmagic.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(962, 10, NULL, 'vs25goldpig', 'Golden Pig', 'vs25goldpig', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25goldpig.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(963, 10, NULL, 'vs25wildspells', 'Wild Spells', 'vs25wildspells', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25wildspells.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(964, 10, NULL, 'vs5super7', 'Super 7s ', 'vs5super7', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5super7.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(965, 10, NULL, 'vs40pirgold', 'Pirate Gold Deluxe', 'vs40pirgold', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40pirgold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(966, 10, NULL, 'vs1tigers', 'Triple Tigers', 'vs1tigers', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1tigers.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(967, 10, NULL, 'vs5spjoker', 'Super Joker', 'vs5spjoker', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5spjoker.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(968, 10, NULL, 'vs1ball', 'Lucky Dragon Ball', 'vs1ball', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1ball.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(969, 10, NULL, 'vs10goldfish', 'Fishin Reels', 'vs10goldfish', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10goldfish.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(970, 10, NULL, 'vs50safariking', 'Safari King', 'vs50safariking', NULL, NULL, 'primeconnect/Pragmatic Slot/vs50safariking.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(971, 10, NULL, 'vs50pixie', 'Pixie Wings', 'vs50pixie', NULL, NULL, 'primeconnect/Pragmatic Slot/vs50pixie.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(972, 10, NULL, 'vswaysbankbonz', 'Cash Bonanza', 'vswaysbankbonz', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysbankbonz.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(973, 10, NULL, 'vs20santa', 'Santa', 'vs20santa', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20santa.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(974, 10, NULL, 'vs20wildpix', 'Wild Pixies', 'vs20wildpix', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20wildpix.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:58', '2024-08-28 14:22:58'),
(975, 10, NULL, 'vs18mashang', 'Treasure Horse', 'vs18mashang', NULL, NULL, 'primeconnect/Pragmatic Slot/vs18mashang.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(976, 10, NULL, 'vs9madmonkey', 'Monkey Madness', 'vs9madmonkey', NULL, NULL, 'primeconnect/Pragmatic Slot/vs9madmonkey.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(977, 10, NULL, 'vs9chen', 'Master Chen\'s Fortune', 'vs9chen', NULL, NULL, 'primeconnect/Pragmatic Slot/vs9chen.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(978, 10, NULL, 'vs8magicjourn', 'Magic Journey', 'vs8magicjourn', NULL, NULL, 'primeconnect/Pragmatic Slot/vs8magicjourn.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(979, 10, NULL, 'vs5trdragons', 'Triple Dragons', 'vs5trdragons', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5trdragons.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(980, 10, NULL, 'vs25gladiator', 'Wild Gladiator', 'vs25gladiator', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25gladiator.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(981, 10, NULL, 'vs25dwarves_new', 'Dwarven Gold Deluxe', 'vs25dwarves_new', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25dwarves_new.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(982, 10, NULL, 'vs13g', 'Devil\'s 13', 'vs13g', NULL, NULL, 'primeconnect/Pragmatic Slot/vs13g.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(983, 10, NULL, 'vs20terrorv', 'Cash Elevator', 'vs20terrorv', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20terrorv.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(984, 10, NULL, 'vs20saiman', 'Saiyan Mania', 'vs20saiman', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20saiman.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(985, 10, NULL, 'vs20mahjxbnz', 'Mahjong X', 'vs20mahjxbnz', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20mahjxbnz.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(986, 10, NULL, 'vs25pantherqueen', 'Panther Queen', 'vs25pantherqueen', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25pantherqueen.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(987, 10, NULL, 'vs20dhdice', 'The Dog House Dice Show', 'vs20dhdice', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20dhdice.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(988, 10, NULL, 'vs5balidragon', 'Bali Dragon', 'vs5balidragon', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5balidragon.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(989, 10, NULL, 'vs20olympdice', 'Gates of Olympus Dice', 'vs20olympdice', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20olympdice.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:22:59', '2024-08-28 14:22:59'),
(990, 10, NULL, 'vs20devilic', 'Devilicious', 'vs20devilic', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20devilic.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(991, 10, NULL, 'vs10bbbrlact', 'Big Bass Bonanza – Reel Action', 'vs10bbbrlact', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bbbrlact.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(992, 10, NULL, 'vs20fruitswx', 'Sweet Bonanza 1000', 'vs20fruitswx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20fruitswx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(993, 10, NULL, 'vs25wildies', 'Wildies', 'vs25wildies', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25wildies.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(994, 10, NULL, 'vswaysjapan', 'Starlight Princess Pachi', 'vswaysjapan', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysjapan.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(995, 10, NULL, 'vswaysspltsym', 'Dwarf & Dragon', 'vswaysspltsym', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysspltsym.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(996, 10, NULL, 'vs20shootstars', 'Heroic Spins', 'vs20shootstars', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20shootstars.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(997, 10, NULL, 'vswayshexhaus', 'Rise of Pyramids', 'vswayshexhaus', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayshexhaus.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(998, 10, NULL, 'vs10frontrun', 'Front Runner Odds On', 'vs10frontrun', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10frontrun.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(999, 10, NULL, 'vs20heartcleo', 'Heart of Cleopatra', 'vs20heartcleo', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20heartcleo.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(1000, 10, NULL, 'vs20portals', 'Fire Portals', 'vs20portals', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20portals.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(1001, 10, NULL, 'vs10bburger', 'Big Burger Load it up with Xtra cheese', 'vs10bburger', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bburger.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(1002, 10, NULL, 'vs20doghouse2', 'The Dog House – Dog or Alive', 'vs20doghouse2', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20doghouse2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(1003, 10, NULL, 'vs40stckwldlvl', 'Ripe Rewards', 'vs40stckwldlvl', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40stckwldlvl.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(1004, 10, NULL, 'vs20sbpnudge', 'Aztec Powernudge', 'vs20sbpnudge', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sbpnudge.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(1005, 10, NULL, 'vs10bblotgl', 'Big Bass Secrets of the Golden Lake', 'vs10bblotgl', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bblotgl.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:00', '2024-08-28 14:23:00'),
(1006, 10, NULL, 'vs20stickypos', 'Ice Lobster', 'vs20stickypos', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20stickypos.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1007, 10, NULL, 'vswaysmegahays', 'Barnyard Megahays Megaways™', 'vswaysmegahays', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysmegahays.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1008, 10, NULL, 'vs20lobseafd', 'Lobster Bob’s Sea Food and Win It', 'vs20lobseafd', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20lobseafd.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1009, 10, NULL, 'vs20bison', 'Release the Bison', 'vs20bison', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20bison.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1010, 10, NULL, 'vs20candybltz2', 'Candy Blitz Bombs', 'vs20candybltz2', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20candybltz2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1011, 10, NULL, 'vs20fortbon', 'Fruity Treats', 'vs20fortbon', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20fortbon.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1012, 10, NULL, 'vs25mustang', 'Mustang Gold', 'vs25mustang', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25mustang.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1013, 10, NULL, 'vs50aladdin', '3 Genie Wishes', 'vs50aladdin', NULL, NULL, 'primeconnect/Pragmatic Slot/vs50aladdin.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1014, 10, NULL, 'vswaysdogs', 'The Dog House Megaways', 'vswaysdogs', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysdogs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1015, 10, NULL, 'vs7monkeys', '7 Monkeys', 'vs7monkeys', NULL, NULL, 'primeconnect/Pragmatic Slot/vs7monkeys.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1016, 10, NULL, 'vswaysbufking', 'Buffalo King Megaways', 'vswaysbufking', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysbufking.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1017, 10, NULL, 'vs25wolfgold', 'Wolf Gold', 'vs25wolfgold', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25wolfgold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1018, 10, NULL, 'vs20midas', 'The Hand of Midas', 'vs20midas', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20midas.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1019, 10, NULL, 'vs25vegas', 'Vegas Nights', 'vs25vegas', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25vegas.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:01', '2024-08-28 14:23:01'),
(1020, 10, NULL, 'vs20kraken', 'Release the Kraken', 'vs20kraken', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20kraken.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:02', '2024-08-28 14:23:02'),
(1021, 10, NULL, 'vs1024temuj', 'Temujin Treasures', 'vs1024temuj', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1024temuj.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:02', '2024-08-28 14:23:02'),
(1022, 10, NULL, 'vs50juicyfr', 'Juicy Fruits', 'vs50juicyfr', NULL, NULL, 'primeconnect/Pragmatic Slot/vs50juicyfr.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:02', '2024-08-28 14:23:02'),
(1023, 10, NULL, 'vs20doghouse', 'The Dog House', 'vs20doghouse', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20doghouse.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:02', '2024-08-28 14:23:02'),
(1024, 10, NULL, 'vs20bchprty', 'Wild Beach Party', 'vs20bchprty', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20bchprty.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:02', '2024-08-28 14:23:02'),
(1025, 10, NULL, 'vs10wildtut', 'Mysterious Egypt', 'vs10wildtut', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10wildtut.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:02', '2024-08-28 14:23:02'),
(1026, 10, NULL, 'vswaysmadame', 'Madame Destiny Megaways', 'vswaysmadame', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysmadame.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:02', '2024-08-28 14:23:02'),
(1027, 10, NULL, 'vs20sugarrush', 'Sugar Rush', 'vs20sugarrush', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sugarrush.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:02', '2024-08-28 14:23:02'),
(1028, 10, NULL, 'vs40wildwest', 'Wild West Gold', 'vs40wildwest', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40wildwest.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:02', '2024-08-28 14:23:02'),
(1029, 10, NULL, 'vs20olympgate', 'Gates of Olympus', 'vs20olympgate', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20olympgate.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1030, 10, NULL, 'vs9piggybank', 'Piggy Bank Bills', 'vs9piggybank', NULL, NULL, 'primeconnect/Pragmatic Slot/vs9piggybank.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1031, 10, NULL, 'vs20fparty2', 'Fruit Party 2', 'vs20fparty2', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20fparty2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1032, 10, NULL, 'vs20sbxmas', 'Sweet Bonanza Xmas', 'vs20sbxmas', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sbxmas.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1033, 10, NULL, 'vs20fruitsw', 'Sweet Bonanza', 'vs20fruitsw', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20fruitsw.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1034, 10, NULL, 'vs10floatdrg', 'Floating Dragon', 'vs10floatdrg', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10floatdrg.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1035, 10, NULL, 'vs12bbb', 'Bigger Bass Bonanza', 'vs12bbb', NULL, NULL, 'primeconnect/Pragmatic Slot/vs12bbb.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1036, 10, NULL, 'vs20starlight', 'Starlight Princess', 'vs20starlight', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20starlight.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1037, 10, NULL, 'vs40hotburnx', 'Hot To Burn Extreme', 'vs40hotburnx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40hotburnx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1038, 10, NULL, 'vs25safari', 'Hot Safari', 'vs25safari', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25safari.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1039, 10, NULL, 'vs25sea', 'Great Reef', 'vs25sea', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25sea.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1040, 10, NULL, 'vs9hotroll', 'Hot Chilli', 'vs9hotroll', NULL, NULL, 'primeconnect/Pragmatic Slot/vs9hotroll.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1041, 10, NULL, 'vs40frrainbow', 'Fruit Rainbow', 'vs40frrainbow', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40frrainbow.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1042, 10, NULL, 'vs10crownfire', 'Crown of Fire', 'vs10crownfire', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10crownfire.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1043, 10, NULL, 'vs20godiva', 'Lady Godiva', 'vs20godiva', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20godiva.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:03', '2024-08-28 14:23:03'),
(1044, 10, NULL, 'vs40sh', 'Shining Hot 40', 'vs40sh', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40sh.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1045, 10, NULL, 'vs4096jurassic', 'Jurassic Giants', 'vs4096jurassic', NULL, NULL, 'primeconnect/Pragmatic Slot/vs4096jurassic.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1046, 10, NULL, 'vs50dmdcascade', 'Diamond Cascade', 'vs50dmdcascade', NULL, NULL, 'primeconnect/Pragmatic Slot/vs50dmdcascade.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1047, 10, NULL, 'vs20colcashzone', 'Colossal Cash Zone', 'vs20colcashzone', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20colcashzone.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1048, 10, NULL, 'vs20eightdragons', 'Eight Dragons', 'vs20eightdragons', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20eightdragons.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1049, 10, NULL, 'vs50hercules', 'Hercules Son of Zeus', 'vs50hercules', NULL, NULL, 'primeconnect/Pragmatic Slot/vs50hercules.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1050, 10, NULL, 'vs50northgard', 'North Guardians', 'vs50northgard', NULL, NULL, 'primeconnect/Pragmatic Slot/vs50northgard.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1051, 10, NULL, 'vs20rhino', 'Great Rhino', 'vs20rhino', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20rhino.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1052, 10, NULL, 'vs20egypttrs', 'Egyptian Fortunes', 'vs20egypttrs', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20egypttrs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1053, 10, NULL, 'vs25jokerking', 'Joker King', 'vs25jokerking', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25jokerking.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1054, 10, NULL, 'vs7fire88', 'Fire 88', 'vs7fire88', NULL, NULL, 'primeconnect/Pragmatic Slot/vs7fire88.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1055, 10, NULL, 'vs7776secrets', 'Aztec Treasure', 'vs7776secrets', NULL, NULL, 'primeconnect/Pragmatic Slot/vs7776secrets.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1056, 10, NULL, 'vs40firehot', 'Fire Hot 40', 'vs40firehot', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40firehot.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1057, 10, NULL, 'vs20leprechaun', 'Leprechaun Song', 'vs20leprechaun', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20leprechaun.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1058, 10, NULL, 'vs20lobcrab', 'Lobster Bob\'s Crazy Crab Shack', 'vs20lobcrab', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20lobcrab.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:04', '2024-08-28 14:23:04'),
(1059, 10, NULL, 'vs20fh', 'Fire Hot 20', 'vs20fh', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20fh.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1060, 10, NULL, 'vs9aztecgemsdx', 'Aztec Gems Deluxe', 'vs9aztecgemsdx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs9aztecgemsdx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1061, 10, NULL, 'vs25journey', 'Journey to the West', 'vs25journey', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25journey.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1062, 10, NULL, 'vs20leprexmas', 'Leprechaun Carol', 'vs20leprexmas', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20leprexmas.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1063, 10, NULL, 'vs10runes', 'Gates of Valhalla™', 'vs10runes', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10runes.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1064, 10, NULL, 'vs20aladdinsorc', 'Aladdin and the Sorcerrer', 'vs20aladdinsorc', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20aladdinsorc.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1065, 10, NULL, 'vs20mvwild', 'Jasmine Dreams', 'vs20mvwild', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20mvwild.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1066, 10, NULL, 'vs40rainbowr', 'Rainbow Reels', 'vs40rainbowr', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40rainbowr.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1067, 10, NULL, 'vs10mayangods', 'John Hunter and the Mayan Gods', 'vs10mayangods', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10mayangods.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1068, 10, NULL, 'vs20rhinoluxe', 'Great Rhino Deluxe', 'vs20rhinoluxe', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20rhinoluxe.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1069, 10, NULL, 'vs5littlegem', 'Little Gem Hold and Spin', 'vs5littlegem', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5littlegem.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1070, 10, NULL, 'vs25spgldways', 'Secret City Gold', 'vs25spgldways', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25spgldways.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1071, 10, NULL, 'vs20lcount', 'Gems of Serengeti™', 'vs20lcount', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20lcount.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1072, 10, NULL, 'vs20piggybank', 'Piggy Bankers', 'vs20piggybank', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20piggybank.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:05', '2024-08-28 14:23:05'),
(1073, 10, NULL, 'vs13ladyofmoon', 'Lady of the Moon', 'vs13ladyofmoon', NULL, NULL, 'primeconnect/Pragmatic Slot/vs13ladyofmoon.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1074, 10, NULL, 'vs5sh', 'Shining Hot 5', 'vs5sh', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5sh.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1075, 10, NULL, 'vs20hotzone', 'African Elephant', 'vs20hotzone', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20hotzone.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1076, 10, NULL, 'vswaysredqueen', 'The Red Queen™', 'vswaysredqueen', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysredqueen.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1077, 10, NULL, 'vs100sh', 'Shining Hot 100', 'vs100sh', NULL, NULL, 'primeconnect/Pragmatic Slot/vs100sh.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1078, 10, NULL, 'vs10trail', 'Mustang Trail', 'vs10trail', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10trail.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1079, 10, NULL, 'vs25bkofkngdm', 'Book of Kingdoms', 'vs25bkofkngdm', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25bkofkngdm.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1080, 10, NULL, 'vs25kfruit', 'Aztec Blaze', 'vs25kfruit', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25kfruit.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1081, 10, NULL, 'vs20powerpays', 'Red Hot Luck', 'vs20powerpays', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20powerpays.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1082, 10, NULL, 'vs20ultim5', 'The Ultimate 5', 'vs20ultim5', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20ultim5.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1083, 10, NULL, 'vs20sh', 'Shining Hot 20', 'vs20sh', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sh.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1084, 10, NULL, 'vs20gravity', 'Gravity Bonanza', 'vs20gravity', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20gravity.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1085, 10, NULL, 'vs10egypt', 'Ancient Egypt', 'vs10egypt', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10egypt.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1086, 10, NULL, 'vs20gobnudge', 'Goblin Heist Powernudge', 'vs20gobnudge', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20gobnudge.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:06', '2024-08-28 14:23:06'),
(1087, 10, NULL, 'vs25newyear', 'Lucky New Year', 'vs25newyear', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25newyear.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1088, 10, NULL, 'vs20earthquake', 'Cyclops Smash', 'vs20earthquake', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20earthquake.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1089, 10, NULL, 'vswayscryscav', 'Crystal Caverns Megaways™', 'vswayscryscav', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayscryscav.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1090, 10, NULL, 'vs20hercpeg', 'Hercules and Pegasus', 'vs20hercpeg', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20hercpeg.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1091, 10, NULL, 'vswaystimber', 'Timber Stacks', 'vswaystimber', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaystimber.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1092, 10, NULL, 'vs7pigs', '7 Piggies', 'vs7pigs', NULL, NULL, 'primeconnect/Pragmatic Slot/vs7pigs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1093, 10, NULL, 'vs10snakeeyes', 'Snakes & Ladders - Snake Eyes', 'vs10snakeeyes', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10snakeeyes.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1094, 10, NULL, 'vs243fortseren', 'Greek Gods', 'vs243fortseren', NULL, NULL, 'primeconnect/Pragmatic Slot/vs243fortseren.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1095, 10, NULL, 'vs10gdchalleng', '8 Golden Dragon Challenge', 'vs10gdchalleng', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10gdchalleng.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1096, 10, NULL, 'vs20lampinf', 'Lamp Of Infinity™', 'vs20lampinf', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20lampinf.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1097, 10, NULL, 'vs243nudge4gold', 'Hellvis Wild', 'vs243nudge4gold', NULL, NULL, 'primeconnect/Pragmatic Slot/vs243nudge4gold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1098, 10, NULL, 'vswaysftropics', 'Frozen Tropics', 'vswaysftropics', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysftropics.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1099, 10, NULL, 'vs20ekingrr', 'Emerald King Rainbow Road', 'vs20ekingrr', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20ekingrr.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1100, 10, NULL, 'vs20stickysymbol', 'The Great Stick-up', 'vs20stickysymbol', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20stickysymbol.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:07', '2024-08-28 14:23:07'),
(1101, 10, NULL, 'vs3train', 'Gold Train', 'vs3train', NULL, NULL, 'primeconnect/Pragmatic Slot/vs3train.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1102, 10, NULL, 'vswayselements', 'Elemental Gems Megaways', 'vswayselements', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayselements.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1103, 10, NULL, 'vswaysjkrdrop', 'Tropical Tiki', 'vswaysjkrdrop', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysjkrdrop.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1104, 10, NULL, 'vs25rlbank', 'Reel Banks™', 'vs25rlbank', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25rlbank.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1105, 10, NULL, 'vs25asgard', 'Asgard', 'vs25asgard', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25asgard.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1106, 10, NULL, 'vs10madame', 'Madame Destiny', 'vs10madame', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10madame.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1107, 10, NULL, 'vs20treesot', 'Trees of Treasure', 'vs20treesot', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20treesot.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1108, 10, NULL, 'vs20trswild2', 'Black Bull', 'vs20trswild2', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20trswild2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1109, 10, NULL, 'vs20lvlup', 'Pub Kings', 'vs20lvlup', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20lvlup.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1110, 10, NULL, 'vswayswerewolf', 'Curse of the Werewolf Megaways', 'vswayswerewolf', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayswerewolf.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1111, 10, NULL, 'vswaysmonkey', '3 Dancing Monkeys', 'vswaysmonkey', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysmonkey.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1112, 10, NULL, 'vs20excalibur', 'Excalibur Unleashed', 'vs20excalibur', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20excalibur.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1113, 10, NULL, 'vs20swordofares', 'Sword of Ares', 'vs20swordofares', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20swordofares.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1114, 10, NULL, 'vs20octobeer', 'Octobeer Fortunes', 'vs20octobeer', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20octobeer.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1115, 10, NULL, 'vs20cashmachine', 'Cash Box', 'vs20cashmachine', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20cashmachine.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:08', '2024-08-28 14:23:08'),
(1116, 10, NULL, 'vs10strawberry', 'Strawberry Cocktail', 'vs10strawberry', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10strawberry.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1117, 10, NULL, 'vs20nilefort', 'Nile Fortune', 'vs20nilefort', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20nilefort.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1118, 10, NULL, 'vs10tut', 'Book of Tut Respin', 'vs10tut', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10tut.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1119, 10, NULL, 'vs432congocash', 'Congo Cash', 'vs432congocash', NULL, NULL, 'primeconnect/Pragmatic Slot/vs432congocash.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1120, 10, NULL, 'vs5firehot', 'Fire Hot 5', 'vs5firehot', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5firehot.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1121, 10, NULL, 'vs1dragon8', '888 Dragons', 'vs1dragon8', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1dragon8.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1122, 10, NULL, 'vswaystut', 'Book of Tut Megaways', 'vswaystut', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaystut.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1123, 10, NULL, 'vswaysraghex', 'Tundra’s Fortune', 'vswaysraghex', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysraghex.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1124, 10, NULL, 'vs10mmm', 'Magic Money Maze', 'vs10mmm', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10mmm.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1125, 10, NULL, 'vs20mustanggld2', 'Clover Gold', 'vs20mustanggld2', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20mustanggld2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1126, 10, NULL, 'vs25chilli', 'Chilli Heat', 'vs25chilli', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25chilli.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1127, 10, NULL, 'vs25scarabqueen', 'John Hunter and the Tomb of the Scarab Queen', 'vs25scarabqueen', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25scarabqueen.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1128, 10, NULL, 'vs10egyptcls', 'Ancient Egypt Classic', 'vs10egyptcls', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10egyptcls.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1129, 10, NULL, 'vs15diamond', 'Diamond Strike', 'vs15diamond', NULL, NULL, 'primeconnect/Pragmatic Slot/vs15diamond.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:09', '2024-08-28 14:23:09'),
(1130, 10, NULL, 'vs20sugarcoins', 'Viking Forge', 'vs20sugarcoins', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sugarcoins.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1131, 10, NULL, 'vs50jucier', 'Sky Bounty', 'vs50jucier', NULL, NULL, 'primeconnect/Pragmatic Slot/vs50jucier.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1132, 10, NULL, 'vs9outlaw', 'Pirates Pub™', 'vs9outlaw', NULL, NULL, 'primeconnect/Pragmatic Slot/vs9outlaw.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1133, 10, NULL, 'vswayswildgang', 'The Wild Gang', 'vswayswildgang', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayswildgang.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1134, 10, NULL, 'vs25goldparty', 'Gold Party®', 'vs25goldparty', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25goldparty.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1135, 10, NULL, 'vs20wildparty', '3 Buzzing Wilds', 'vs20wildparty', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20wildparty.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1136, 10, NULL, 'vs5joker', 'Joker\'s Jewels', 'vs5joker', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5joker.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1137, 10, NULL, 'vs10luckfort', 'Good Luck & Good Fortune', 'vs10luckfort', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10luckfort.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1138, 10, NULL, 'vs10powerlines', 'Peak Power', 'vs10powerlines', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10powerlines.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1139, 10, NULL, 'vs20yotdk', 'Year of the Dragon King', 'vs20yotdk', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20yotdk.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1140, 10, NULL, 'vs20jewelparty', 'Jewel Rush', 'vs20jewelparty', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20jewelparty.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1141, 10, NULL, 'vswayschilheat', 'Chilli Heat Megaways', 'vswayschilheat', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayschilheat.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1142, 10, NULL, 'vs10gizagods', 'Gods of Giza', 'vs10gizagods', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10gizagods.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10'),
(1143, 10, NULL, 'vs10ddcbells', 'Ding Dong Christmas Bells', 'vs10ddcbells', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10ddcbells.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:10', '2024-08-28 14:23:10');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1144, 10, NULL, 'vswaysstrlght', 'Fortunes of Aztec', 'vswaysstrlght', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysstrlght.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1145, 10, NULL, 'vs20mmmelon', 'Mighty Munching Melons', 'vs20mmmelon', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20mmmelon.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1146, 10, NULL, 'vs20superx', 'Super X™', 'vs20superx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20superx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1147, 10, NULL, 'vs20clspwrndg', 'Sweet PowerNudge', 'vs20clspwrndg', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20clspwrndg.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1148, 10, NULL, 'vs40mstrwild', 'Happy Hooves', 'vs40mstrwild', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40mstrwild.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1149, 10, NULL, 'vswaysstrwild', 'Candy Stars', 'vswaysstrwild', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysstrwild.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1150, 10, NULL, 'vs20bigdawgs', 'The Big Dawgs', 'vs20bigdawgs', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20bigdawgs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1151, 10, NULL, 'vs20mparty', 'Wild Hop and Drop', 'vs20mparty', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20mparty.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1152, 10, NULL, 'vswaysfirewmw', 'Blazing Wilds Megaways', 'vswaysfirewmw', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysfirewmw.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1153, 10, NULL, 'vs20rockvegas', 'Rock Vegas Mega Hold & Spin', 'vs20rockvegas', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20rockvegas.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1154, 10, NULL, 'vs20farmfest', 'Barn Festival', 'vs20farmfest', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20farmfest.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1155, 10, NULL, 'vs20sugarnudge', 'Sugar Supreme Powernudge', 'vs20sugarnudge', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sugarnudge.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1156, 10, NULL, 'vs1600drago', 'Drago - Jewels of Fortune', 'vs1600drago', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1600drago.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1157, 10, NULL, 'vs20clustwild', 'Sticky Bees', 'vs20clustwild', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20clustwild.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1158, 10, NULL, 'vs20smugcove', 'Smugglers Cove™', 'vs20smugcove', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20smugcove.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:11', '2024-08-28 14:23:11'),
(1159, 10, NULL, 'vs50jfmulthold', 'Juicy Fruits Multihold', 'vs50jfmulthold', NULL, NULL, 'primeconnect/Pragmatic Slot/vs50jfmulthold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1160, 10, NULL, 'vs20wolfie', 'Greedy Wolf', 'vs20wolfie', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20wolfie.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1161, 10, NULL, 'vs20sknights', 'The Knight King™', 'vs20sknights', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sknights.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1162, 10, NULL, 'vs5strh', 'Striking Hot 5', 'vs5strh', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5strh.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1163, 10, NULL, 'vs40cleoeye', 'Eye of Cleopatra', 'vs40cleoeye', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40cleoeye.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1164, 10, NULL, 'vs20superlanche', 'Monster Superlanche', 'vs20superlanche', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20superlanche.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1165, 10, NULL, 'vs20splmystery', 'Spellbinding Mystery', 'vs20splmystery', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20splmystery.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1166, 10, NULL, 'vs10jnmntzma', 'Jane Hunter and the Mask of Montezuma', 'vs10jnmntzma', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10jnmntzma.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1167, 10, NULL, 'vswaysbook', 'Book of Golden Sands', 'vswaysbook', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysbook.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1168, 10, NULL, 'vs243lionsgold', '5 Lions Gold', 'vs243lionsgold', NULL, NULL, 'primeconnect/Pragmatic Slot/vs243lionsgold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1169, 10, NULL, 'vs25spotz', 'Knight Hot Spotz™', 'vs25spotz', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25spotz.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1170, 10, NULL, 'vs20clustext', 'Gear of Horus', 'vs20clustext', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20clustext.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1171, 10, NULL, 'vs40demonpots', 'Demon Pots', 'vs40demonpots', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40demonpots.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:12', '2024-08-28 14:23:12'),
(1172, 10, NULL, 'vs10egrich', 'Queen of Gods', 'vs10egrich', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10egrich.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1173, 10, NULL, 'vs20sparta', 'Shield of Sparta', 'vs20sparta', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sparta.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1174, 10, NULL, 'vs20underground', 'Down the Rails', 'vs20underground', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20underground.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1175, 10, NULL, 'vs20dugems', 'Hot Pepper™', 'vs20dugems', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20dugems.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1176, 10, NULL, 'vswaysconcoll', 'Sweet PowerNudge™', 'vswaysconcoll', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysconcoll.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1177, 10, NULL, 'vs10nudgeit', 'Rise of Giza PowerNudge', 'vs10nudgeit', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10nudgeit.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1178, 10, NULL, 'vswaysstampede', 'Fire Stampede', 'vswaysstampede', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysstampede.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1179, 10, NULL, 'vs25goldrush', 'Gold Rush', 'vs25goldrush', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25goldrush.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1180, 10, NULL, 'vs20cjcluster', 'Candy Jar Clusters', 'vs20cjcluster', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20cjcluster.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1181, 10, NULL, 'vs20mtreasure', 'Pirate Golden Age™', 'vs20mtreasure', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20mtreasure.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1182, 10, NULL, 'vs50chinesecharms', 'Lucky Dragons', 'vs50chinesecharms', NULL, NULL, 'primeconnect/Pragmatic Slot/vs50chinesecharms.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1183, 10, NULL, 'vs10fruity2', 'Extra Juicy', 'vs10fruity2', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10fruity2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1184, 10, NULL, 'vs20candyblitz', 'Candy Blitz', 'vs20candyblitz', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20candyblitz.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:55', '2024-08-28 14:23:55'),
(1185, 10, NULL, 'vs40cosmiccash', 'Cosmic Cash', 'vs40cosmiccash', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40cosmiccash.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1186, 10, NULL, 'vs20hstgldngt', 'Heist for the Golden Nuggets', 'vs20hstgldngt', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20hstgldngt.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1187, 10, NULL, 'vswaysfuryodin', 'Fury of Odin Megaways™', 'vswaysfuryodin', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysfuryodin.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1188, 10, NULL, 'vs10firestrike', 'Fire Strike', 'vs10firestrike', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10firestrike.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1189, 10, NULL, 'vs243dancingpar', 'Dance Party', 'vs243dancingpar', NULL, NULL, 'primeconnect/Pragmatic Slot/vs243dancingpar.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1190, 10, NULL, 'vswaysincwnd', 'Gold Oasis', 'vswaysincwnd', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysincwnd.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1191, 10, NULL, 'vs10bbbonanza', 'Big Bass Bonanza', 'vs10bbbonanza', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bbbonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1192, 10, NULL, 'vs12tropicana', 'Club Tropicana', 'vs12tropicana', NULL, NULL, 'primeconnect/Pragmatic Slot/vs12tropicana.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1193, 10, NULL, 'vs25bomb', 'Bomb Bonanza', 'vs25bomb', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25bomb.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1194, 10, NULL, 'vs20forge', 'Forge of Olympus', 'vs20forge', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20forge.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1195, 10, NULL, 'vswayswwhex', 'Wild Wild Bananas', 'vswayswwhex', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayswwhex.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1196, 10, NULL, 'vs10fisheye', 'Fish Eye', 'vs10fisheye', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10fisheye.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1197, 10, NULL, 'vs20goldclust', 'Rabbit Garden', 'vs20goldclust', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20goldclust.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1198, 10, NULL, 'vswaysalterego', 'The Alter Ego', 'vswaysalterego', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysalterego.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:56', '2024-08-28 14:23:56'),
(1199, 10, NULL, 'vswaysexpandng', 'Castle of Fire', 'vswaysexpandng', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysexpandng.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1200, 10, NULL, 'vs20loksriches', 'Loki’s Riches', 'vs20loksriches', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20loksriches.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1201, 10, NULL, 'vs20theights', 'Towering Fortunes™', 'vs20theights', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20theights.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1202, 10, NULL, 'vs25copsrobbers', 'Cash Patrol', 'vs25copsrobbers', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25copsrobbers.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1203, 10, NULL, 'vs20beefed', 'Fat Panda', 'vs20beefed', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20beefed.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1204, 10, NULL, 'vs25archer', 'Fire Archer', 'vs25archer', NULL, NULL, 'primeconnect/Pragmatic Slot/vs25archer.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1205, 10, NULL, 'vs40infwild', 'Infective Wild', 'vs40infwild', NULL, NULL, 'primeconnect/Pragmatic Slot/vs40infwild.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1206, 10, NULL, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'vs10bxmasbnza', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bxmasbnza.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1207, 10, NULL, 'vswaysrsm', 'Wild Celebrity Bus Megaways', 'vswaysrsm', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysrsm.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1208, 10, NULL, 'vs243lions', '5 Lions', 'vs243lions', NULL, NULL, 'primeconnect/Pragmatic Slot/vs243lions.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1209, 10, NULL, 'vs10bookoftut', 'John Hunter and the Book of Tut', 'vs10bookoftut', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bookoftut.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1210, 10, NULL, 'vs20mysteryst', 'Country Farming', 'vs20mysteryst', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20mysteryst.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1211, 10, NULL, 'vswayspowzeus', 'Power of Merlin Megaways', 'vswayspowzeus', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayspowzeus.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1212, 10, NULL, 'vswaysmorient', 'Mystery of the Orient', 'vswaysmorient', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysmorient.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1213, 10, NULL, 'vs20mochimon', 'Mochimon', 'vs20mochimon', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20mochimon.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:57', '2024-08-28 14:23:57'),
(1214, 10, NULL, 'vs10bbkir', 'Big Bass Bonanza Keeping it Reel', 'vs10bbkir', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bbkir.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1215, 10, NULL, 'vs20multiup', 'Wheel O’Gold', 'vs20multiup', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20multiup.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1216, 10, NULL, 'vs20pistols', 'Wild West Duels', 'vs20pistols', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20pistols.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1217, 10, NULL, 'vs12bbbxmas', 'Bigger Bass Blizzaro', 'vs12bbbxmas', NULL, NULL, 'primeconnect/Pragmatic Slot/vs12bbbxmas.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1218, 10, NULL, 'vs20dhcluster', 'Twilight Princess', 'vs20dhcluster', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20dhcluster.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1219, 10, NULL, 'vswaysmoneyman', 'The Money Men Megaways', 'vswaysmoneyman', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysmoneyman.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1220, 10, NULL, 'vswaysmegareel', 'Pompeii Megareels Megaways', 'vswaysmegareel', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysmegareel.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1221, 10, NULL, 'vswaysultrcoin', '	Cowboy Coins', 'vswaysultrcoin', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1222, 10, NULL, 'vs1024gmayhem', 'Gorilla Mayhem', 'vs1024gmayhem', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1024gmayhem.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1223, 10, NULL, 'vs10cowgold', 'Cowboys Gold', 'vs10cowgold', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10cowgold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1224, 10, NULL, 'vs10bookfallen', 'Book of the Fallen', 'vs10bookfallen', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bookfallen.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1225, 10, NULL, 'vs10eyestorm', 'Eye of the Storm', 'vs10eyestorm', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10eyestorm.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1226, 10, NULL, 'vs20drtgold', 'Drill That Gold', 'vs20drtgold', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20drtgold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1227, 10, NULL, 'vswayszombcarn', 'Zombie Carnival', 'vswayszombcarn', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayszombcarn.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1228, 10, NULL, 'vs4096bufking', 'Buffalo King', 'vs4096bufking', NULL, NULL, 'primeconnect/Pragmatic Slot/vs4096bufking.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1229, 10, NULL, 'vs20drgbless', 'Dragon Hero', 'vs20drgbless', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20drgbless.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:58', '2024-08-28 14:23:58'),
(1230, 10, NULL, 'vs20stickywild', 'Wild Bison Charge™', 'vs20stickywild', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20stickywild.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1231, 10, NULL, 'vswaysrhino', 'Great Rhino Megaways', 'vswaysrhino', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysrhino.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1232, 10, NULL, 'vs10bbhas', 'Big Bass - Hold & Spinner™', 'vs10bbhas', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bbhas.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1233, 10, NULL, 'vs20muertos', 'Muertos Multiplier Megaways', 'vs20muertos', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20muertos.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1234, 10, NULL, 'vswaysfrywld', 'Spin & Score Megaways', 'vswaysfrywld', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysfrywld.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1235, 10, NULL, 'vswaysfltdrg', 'Floating Dragon Hold & Spin Megaways', 'vswaysfltdrg', NULL, NULL, 'primeconnect/Pragmatic Slot/vswaysfltdrg.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1236, 10, NULL, 'vs5hotburn', 'Hot to burn', 'vs5hotburn', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5hotburn.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1237, 10, NULL, 'vs20goldfever', 'Gems Bonanza', 'vs20goldfever', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20goldfever.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1238, 10, NULL, 'vs20mammoth', 'Mammoth Gold Megaways', 'vs20mammoth', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20mammoth.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1239, 10, NULL, 'vswayspizza', 'Pizza Pizza Pizza', 'vswayspizza', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayspizza.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1240, 10, NULL, 'vs20amuleteg', 'Fortune of Giza™', 'vs20amuleteg', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20amuleteg.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1241, 10, NULL, 'vs10fdrasbf', 'Floating Dragon - Dragon Boat Festival', 'vs10fdrasbf', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10fdrasbf.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1242, 10, NULL, 'vs20stckwldsc', 'Pot of Fortune', 'vs20stckwldsc', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20stckwldsc.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1243, 10, NULL, 'vs20cleocatra', 'Cleocatra', 'vs20cleocatra', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20cleocatra.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:23:59', '2024-08-28 14:23:59'),
(1244, 10, NULL, 'vs10bbfloats', 'Big Bass Floats My Boat', 'vs10bbfloats', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bbfloats.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1245, 10, NULL, 'vs20porbs', 'Santa\'s Great Gifts', 'vs20porbs', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20porbs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1246, 10, NULL, 'vs10firestrike2', 'Fire Strike 2', 'vs10firestrike2', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10firestrike2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1247, 10, NULL, 'vs1024dtiger', 'The Dragon Tiger', 'vs1024dtiger', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1024dtiger.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1248, 10, NULL, 'vs10txbigbass', 'Big Bass Splash', 'vs10txbigbass', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10txbigbass.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1249, 10, NULL, 'vs20fruitparty', 'Fruit Party', 'vs20fruitparty', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20fruitparty.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1250, 10, NULL, 'vs20schristmas', 'Starlight Chrismas', 'vs20schristmas', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20schristmas.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1251, 10, NULL, 'vs10bhallbnza', 'Big Bass Halloween', 'vs10bhallbnza', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bhallbnza.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1252, 10, NULL, 'vs20procount', 'Wisdom of Athena', 'vs20procount', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20procount.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1253, 10, NULL, 'vs15godsofwar', 'Zeus vs Hades – Gods of War', 'vs15godsofwar', NULL, NULL, 'primeconnect/Pragmatic Slot/vs15godsofwar.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1254, 10, NULL, 'vs1024lionsd', '5 Lions Dance', 'vs1024lionsd', NULL, NULL, 'primeconnect/Pragmatic Slot/vs1024lionsd.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1255, 10, NULL, 'vs20sugrux', 'Sugar Rush Xmas', 'vs20sugrux', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sugrux.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1256, 10, NULL, 'vswayswildwest', 'Wild West Gold Megaways', 'vswayswildwest', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayswildwest.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1257, 10, NULL, 'vs20starlightx', 'Starlight Princess 1000', 'vs20starlightx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20starlightx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1258, 10, NULL, 'vs10bbsplxmas', 'Big Bass Christmas Bash', 'vs10bbsplxmas', NULL, NULL, 'primeconnect/Pragmatic Slot/vs10bbsplxmas.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:00', '2024-08-28 14:24:00'),
(1259, 10, NULL, 'vswayslight', 'Lucky Lightning', 'vswayslight', NULL, NULL, 'primeconnect/Pragmatic Slot/vswayslight.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1260, 10, NULL, 'vs20olympx', 'Gates of Olympus 1000', 'vs20olympx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20olympx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1261, 10, NULL, 'vs5aztecgems', 'Aztec Gems', 'vs5aztecgems', NULL, NULL, 'primeconnect/Pragmatic Slot/vs5aztecgems.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1262, 10, NULL, 'vs20sugarrushx', 'Sugar rush 1000', 'vs20sugarrushx', NULL, NULL, 'primeconnect/Pragmatic Slot/vs20sugarrushx.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1263, 12, NULL, 'aztec_fire', 'Aztec Fire', 'aztec_fire', NULL, NULL, 'primeconnect/Booongo/aztec_fire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1264, 12, NULL, 'lotus_charm', 'Lotus Charm', 'lotus_charm', NULL, NULL, 'primeconnect/Booongo/lotus_charm.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1265, 12, NULL, 'eggs_of_gold', 'Eggs of Gold', 'eggs_of_gold', NULL, NULL, 'primeconnect/Booongo/eggs_of_gold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1266, 12, NULL, 'magic_apple_2', 'Magic Apple 2', 'magic_apple_2', NULL, NULL, 'primeconnect/Booongo/magic_apple_2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1267, 12, NULL, 'caishen_wealth', 'Caishen Wealth', 'caishen_wealth', NULL, NULL, 'primeconnect/Booongo/caishen_wealth.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1268, 12, NULL, 'sun_of_egypt_3', 'Sun of Egypt 3', 'sun_of_egypt_3', NULL, NULL, 'primeconnect/Booongo/sun_of_egypt_3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1269, 12, NULL, 'pearl_diver_2', 'Pearl Diver 2: Treasure Chest', 'pearl_diver_2', NULL, NULL, 'primeconnect/Booongo/pearl_diver_2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1270, 12, NULL, 'book_of_wizard_crystal', 'Book of Wizard Crystal Chance', 'book_of_wizard_crystal', NULL, NULL, 'primeconnect/Booongo/book_of_wizard_crystal.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1271, 12, NULL, 'gold_express', 'Gold Express', 'gold_express', NULL, NULL, 'primeconnect/Booongo/gold_express.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1272, 12, NULL, 'lord_fortune_2', 'Lord Fortune 2', 'lord_fortune_2', NULL, NULL, 'primeconnect/Booongo/lord_fortune_2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1273, 12, NULL, 'book_of_wizard', 'Book of Wizard', 'book_of_wizard', NULL, NULL, 'primeconnect/Booongo/book_of_wizard.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:01', '2024-08-28 14:24:01'),
(1274, 12, NULL, 'wolf_night', 'Wolf Night', 'wolf_night', NULL, NULL, 'primeconnect/Booongo/wolf_night.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:02', '2024-08-28 14:24:02'),
(1275, 12, NULL, '3_coins_egypt', '3 Coins: Egypt', '3_coins_egypt', NULL, NULL, 'primeconnect/Booongo/3_coins_egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:02', '2024-08-28 14:24:02'),
(1276, 12, NULL, 'pearl_diver', 'Pearl Diver', 'pearl_diver', NULL, NULL, 'primeconnect/Booongo/pearl_diver.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:02', '2024-08-28 14:24:02'),
(1277, 12, NULL, 'wukong', 'Wukong', 'wukong', NULL, NULL, 'primeconnect/Booongo/wukong.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:02', '2024-08-28 14:24:02'),
(1278, 12, NULL, 'scarab_boost', 'Scarab Boost', 'scarab_boost', NULL, NULL, 'primeconnect/Booongo/scarab_boost.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:02', '2024-08-28 14:24:02'),
(1279, 12, NULL, 'magic_ball', 'Magic Ball', 'magic_ball', NULL, NULL, 'primeconnect/Booongo/magic_ball.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:02', '2024-08-28 14:24:02'),
(1280, 12, NULL, 'wolf_saga', 'Wolf Saga', 'wolf_saga', NULL, NULL, 'primeconnect/Booongo/wolf_saga.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:02', '2024-08-28 14:24:02'),
(1281, 12, NULL, 'magic_apple', 'Magic Apple', 'magic_apple', NULL, NULL, 'primeconnect/Booongo/magic_apple.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:02', '2024-08-28 14:24:02'),
(1282, 12, NULL, 'tiger_stone', 'Tiger Stone', 'tiger_stone', NULL, NULL, 'primeconnect/Booongo/tiger_stone.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:02', '2024-08-28 14:24:02'),
(1283, 12, NULL, 'eye_of_gold', 'Eye of Gold', 'eye_of_gold', NULL, NULL, 'primeconnect/Booongo/eye_of_gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1284, 12, NULL, 'thunder_of_olympus', 'Thunder of Olympus', 'thunder_of_olympus', NULL, NULL, 'primeconnect/Booongo/thunder_of_olympus.jpe', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1285, 12, NULL, 'great_panda', 'Great Panda: Hold and Win', 'great_panda', NULL, NULL, 'primeconnect/Booongo/great_panda.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1286, 12, NULL, 'buddha_fortune', 'Buddha Fortune', 'buddha_fortune', NULL, NULL, 'primeconnect/Booongo/buddha_fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1287, 12, NULL, 'super_marble', 'Super Marble', 'super_marble', NULL, NULL, 'primeconnect/Booongo/super_marble.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1288, 12, NULL, 'book_of_sun_choice', 'Book of Sun: Choice', 'book_of_sun_choice', NULL, NULL, 'primeconnect/Booongo/book_of_sun_choice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1289, 12, NULL, 'moon_sisters', 'Moon Sisters', 'moon_sisters', NULL, NULL, 'primeconnect/Booongo/moon_sisters.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1290, 12, NULL, 'tigers_gold', 'Tiger\'s Gold', 'tigers_gold', NULL, NULL, 'primeconnect/Booongo/tigers_gold.jpe', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1291, 12, NULL, '777_gems_respin', '777 Gems ReSpin', '777_gems_respin', NULL, NULL, 'primeconnect/Booongo/777_gems_respin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1292, 12, NULL, 'olympian_gods', 'Olympian Gods', 'olympian_gods', NULL, NULL, 'primeconnect/Booongo/olympian_gods.jpeg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1293, 12, NULL, 'book_of_sun_multichance', 'Book of Sun Multichance', 'book_of_sun_multichance', NULL, NULL, 'primeconnect/Booongo/book_of_sun_multichance.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1294, 12, NULL, 'book_of_sun', 'Book of Sun', 'book_of_sun', NULL, NULL, 'primeconnect/Booongo/book_of_sun.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1295, 12, NULL, 'scarab_temple', 'Scarab Temple', 'scarab_temple', NULL, NULL, 'primeconnect/Booongo/scarab_temple.jpeg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1296, 12, NULL, 'aztec_sun', 'Aztec Sun', 'aztec_sun', NULL, NULL, 'primeconnect/Booongo/aztec_sun.jpe', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1297, 12, NULL, '15_dragon_pearls', '15 Dragon Pearls', '15_dragon_pearls', NULL, NULL, 'primeconnect/Booongo/15_dragon_pearls.jpeg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:03', '2024-08-28 14:24:03'),
(1298, 12, NULL, 'super_rich_god', 'Super Rich God: Hold and Win', 'super_rich_god', NULL, NULL, 'primeconnect/Booongo/super_rich_god.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1299, 12, NULL, '3_coins', '3 Coins', '3_coins', NULL, NULL, 'primeconnect/Booongo/3_coins.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1300, 12, NULL, 'dragon_pearls', 'Dragon Pearls: Hold and Win', 'dragon_pearls', NULL, NULL, 'primeconnect/Booongo/dragon_pearls.jpeg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1301, 12, NULL, 'golden_dancing_lion', 'Golden Dancing Lion', 'golden_dancing_lion', NULL, NULL, 'primeconnect/Booongo/golden_dancing_lion.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1302, 12, NULL, 'scarab_riches', 'Scarab Riches', 'scarab_riches', NULL, NULL, 'primeconnect/Booongo/scarab_riches.jpe', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1303, 12, NULL, 'candy_boom', 'Candy Boom', 'candy_boom', NULL, NULL, 'primeconnect/Booongo/candy_boom.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1304, 12, NULL, 'hit_the_gold', 'Hit the Gold!', 'hit_the_gold', NULL, NULL, 'primeconnect/Booongo/hit_the_gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1305, 12, NULL, 'black_wolf', 'Black Wolf', 'black_wolf', NULL, NULL, 'primeconnect/Booongo/black_wolf.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1306, 12, NULL, 'tiger_jungle', 'Tiger Jungle', 'tiger_jungle', NULL, NULL, 'primeconnect/Booongo/tiger_jungle.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1307, 12, NULL, 'queen_of_the_sun', 'Queen Of The Sun', 'queen_of_the_sun', NULL, NULL, 'primeconnect/Booongo/queen_of_the_sun.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1308, 12, NULL, 'happy_fish', 'Happy Fish', 'happy_fish', NULL, NULL, 'primeconnect/Booongo/happy_fish.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1309, 12, NULL, 'sun_of_egypt_2', 'Sun of Egypt 2', 'sun_of_egypt_2', NULL, NULL, 'primeconnect/Booongo/sun_of_egypt_2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1310, 12, NULL, 'sun_of_egypt', 'Sun of Egypt: Hold and Win', 'sun_of_egypt', NULL, NULL, 'primeconnect/Booongo/sun_of_egypt.jpe', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1311, 13, NULL, 'buffalo-stack-n-sync', 'Buffalo Stack \'n\' Sync', 'buffalo-stack-n-sync', NULL, NULL, 'primeconnect/Hacksaw Slot/buffalo-stack-n-sync.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1312, 13, NULL, 'vending-machine', 'Vending Machine', 'vending-machine', NULL, NULL, 'primeconnect/Hacksaw Slot/vending-machine.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1313, 13, NULL, 'blademaster', 'Blademaster', 'blademaster', NULL, NULL, 'primeconnect/Hacksaw Slot/blademaster.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:04', '2024-08-28 14:24:04'),
(1314, 13, NULL, 'lord-venom', 'Lord Venom', 'lord-venom', NULL, NULL, 'primeconnect/Hacksaw Slot/lord-venom.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1315, 13, NULL, 'joker-bombs', 'Joker Bombs', 'joker-bombs', NULL, NULL, 'primeconnect/Hacksaw Slot/joker-bombs.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1316, 13, NULL, 'born-wild', 'Born WILD', 'born-wild', NULL, NULL, 'primeconnect/Hacksaw Slot/born-wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1317, 13, NULL, 'mighty-masks', 'Mighty Masks', 'mighty-masks', NULL, NULL, 'primeconnect/Hacksaw Slot/mighty-masks.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1318, 13, NULL, 'orb-of-destiny', 'Orb of Destiny', 'orb-of-destiny', NULL, NULL, 'primeconnect/Hacksaw Slot/orb-of-destiny.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1319, 13, NULL, 'the-bowery-boys', 'The Bowery Boys', 'the-bowery-boys', NULL, NULL, 'primeconnect/Hacksaw Slot/the-bowery-boys.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1320, 13, NULL, 'mafia-clash', 'Mafia Clash', 'mafia-clash', NULL, NULL, 'primeconnect/Hacksaw Slot/mafia-clash.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1321, 13, NULL, 'hop-n-pop', 'Hop \'n Pop', 'hop-n-pop', NULL, NULL, 'primeconnect/Hacksaw Slot/hop-n-pop.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1322, 13, NULL, 'cubes2', 'Cubes2', 'cubes2', NULL, NULL, 'primeconnect/Hacksaw Slot/cubes2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1323, 13, NULL, 'gronks-gems', 'Gronk\'s Gems', 'gronks-gems', NULL, NULL, 'primeconnect/Hacksaw Slot/gronks-gems.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1324, 13, NULL, 'feel-the-beat', 'Feel the Beat', 'feel-the-beat', NULL, NULL, 'primeconnect/Hacksaw Slot/feel-the-beat.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1325, 13, NULL, 'alpha-eagle', 'Alpha Eagle', 'alpha-eagle', NULL, NULL, 'primeconnect/Hacksaw Slot/alpha-eagle.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1326, 13, NULL, 'commander-of-tridents', 'Commander of Tridents', 'commander-of-tridents', NULL, NULL, 'primeconnect/Hacksaw Slot/commander-of-tridents.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1327, 13, NULL, 'merlin-s-alchemy', 'Merlin\'s Alchemy', 'merlin-s-alchemy', NULL, NULL, 'primeconnect/Hacksaw Slot/merlin-s-alchemy.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1328, 13, NULL, 'fear-the-dark', 'Fear The Dark', 'fear-the-dark', NULL, NULL, 'primeconnect/Hacksaw Slot/fear-the-dark.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1329, 13, NULL, 'wild-dojo-strike', 'Wild Dojo Strike', 'wild-dojo-strike', NULL, NULL, 'primeconnect/Hacksaw Slot/wild-dojo-strike.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:05', '2024-08-28 14:24:05'),
(1330, 13, NULL, 'fruit-duel', 'Fruit Duel', 'fruit-duel', NULL, NULL, 'primeconnect/Hacksaw Slot/fruit-duel.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1331, 13, NULL, 'chaos-crew', 'Chaos Crew', 'chaos-crew', NULL, NULL, 'primeconnect/Hacksaw Slot/chaos-crew.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1332, 13, NULL, 'time-spinners', 'Time Spinners', 'time-spinners', NULL, NULL, 'primeconnect/Hacksaw Slot/time-spinners.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1333, 13, NULL, 'outlaws-inc', 'Outlaws Inc', 'outlaws-inc', NULL, NULL, 'primeconnect/Hacksaw Slot/outlaws-inc.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1334, 13, NULL, 'the-cursed-king', 'The Cursed King', 'the-cursed-king', NULL, NULL, 'primeconnect/Hacksaw Slot/the-cursed-king.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1335, 13, NULL, 'bouncy-bombs', 'Bouncy Bombs', 'bouncy-bombs', NULL, NULL, 'primeconnect/Hacksaw Slot/bouncy-bombs.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1336, 13, NULL, 'fire-born', 'Fire Born', 'fire-born', NULL, NULL, 'primeconnect/Hacksaw Slot/fire-born.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1337, 13, NULL, 'bloodthirst', 'Bloodthirst', 'bloodthirst', NULL, NULL, 'primeconnect/Hacksaw Slot/bloodthirst.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1338, 13, NULL, 'jelly-slice', 'Jelly Slice', 'jelly-slice', NULL, NULL, 'primeconnect/Hacksaw Slot/jelly-slice.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1339, 13, NULL, 'franks-farm', 'Frank\'s Farm', 'franks-farm', NULL, NULL, 'primeconnect/Hacksaw Slot/franks-farm.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1340, 13, NULL, 'space-zoo', 'Space Zoo', 'space-zoo', NULL, NULL, 'primeconnect/Hacksaw Slot/space-zoo.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1341, 13, NULL, 'double-rainbow', 'Double Rainbow', 'double-rainbow', NULL, NULL, 'primeconnect/Hacksaw Slot/double-rainbow.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1342, 13, NULL, 'stack-em', 'Stack \'em', 'stack-em', NULL, NULL, 'primeconnect/Hacksaw Slot/stack-em.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1343, 13, NULL, 'gladiator-legends', 'Gladiator Legends', 'gladiator-legends', NULL, NULL, 'primeconnect/Hacksaw Slot/gladiator-legends.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:06', '2024-08-28 14:24:06'),
(1344, 13, NULL, 'undead-fortune', 'Undead Fortune', 'undead-fortune', NULL, NULL, 'primeconnect/Hacksaw Slot/undead-fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1345, 13, NULL, 'eye-of-the-panda', 'Eye of the Panda', 'eye-of-the-panda', NULL, NULL, 'primeconnect/Hacksaw Slot/eye-of-the-panda.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1346, 13, NULL, 'dark-summoning', 'Dark Summoning', 'dark-summoning', NULL, NULL, 'primeconnect/Hacksaw Slot/dark-summoning.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1347, 13, NULL, 'itero', 'Itero', 'itero', NULL, NULL, 'primeconnect/Hacksaw Slot/itero.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1348, 13, NULL, 'benny-the-beer', 'Benny the Beer', 'benny-the-beer', NULL, NULL, 'primeconnect/Hacksaw Slot/benny-the-beer.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1349, 13, NULL, 'keep-em', 'Keep \'em', 'keep-em', NULL, NULL, 'primeconnect/Hacksaw Slot/keep-em.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1350, 13, NULL, 'pug-life', 'Pug Life', 'pug-life', NULL, NULL, 'primeconnect/Hacksaw Slot/pug-life.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1351, 13, NULL, 'toshi-video-club', 'Toshi Video Club', 'toshi-video-club', NULL, NULL, 'primeconnect/Hacksaw Slot/toshi-video-club.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1352, 13, NULL, 'cursed-seas', 'Cursed Seas', 'cursed-seas', NULL, NULL, 'primeconnect/Hacksaw Slot/cursed-seas.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1353, 13, NULL, 'rusty-curly', 'Rusty & Curly', 'rusty-curly', NULL, NULL, 'primeconnect/Hacksaw Slot/rusty-curly.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1354, 13, NULL, 'temple-of-torment', 'Temple of Torment', 'temple-of-torment', NULL, NULL, 'primeconnect/Hacksaw Slot/temple-of-torment.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1355, 13, NULL, 'barrel-bonanza', 'Barrel Bonanza', 'barrel-bonanza', NULL, NULL, 'primeconnect/Hacksaw Slot/barrel-bonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1356, 13, NULL, 'mayan-stackways', 'Mayan Stackways', 'mayan-stackways', NULL, NULL, 'primeconnect/Hacksaw Slot/mayan-stackways.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1357, 13, NULL, 'immortal-desire', 'Immortal Desire', 'immortal-desire', NULL, NULL, 'primeconnect/Hacksaw Slot/immortal-desire.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1358, 13, NULL, 'junkyard-kings', 'Junkyard Kings', 'junkyard-kings', NULL, NULL, 'primeconnect/Hacksaw Slot/junkyard-kings.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1359, 13, NULL, 'cash-crew', 'Cash Crew', 'cash-crew', NULL, NULL, 'primeconnect/Hacksaw Slot/cash-crew.jpeg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:07', '2024-08-28 14:24:07'),
(1360, 13, NULL, 'cursed-crypt', 'Cursed Crypt', 'cursed-crypt', NULL, NULL, 'primeconnect/Hacksaw Slot/cursed-crypt.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1361, 13, NULL, 'drop-em', 'Drop\'em', 'drop-em', NULL, NULL, 'primeconnect/Hacksaw Slot/drop-em.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1362, 13, NULL, 'magic-piggy', 'Magic Piggy', 'magic-piggy', NULL, NULL, 'primeconnect/Hacksaw Slot/magic-piggy.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1363, 13, NULL, '2-wild-2-die', '2 Wild 2 Die', '2-wild-2-die', NULL, NULL, 'primeconnect/Hacksaw Slot/2-wild-2-die.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1364, 13, NULL, 'divine-drop', 'Divine Drop', 'divine-drop', NULL, NULL, 'primeconnect/Hacksaw Slot/divine-drop.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1365, 13, NULL, 'ronin-stackways', 'Ronin Stackways', 'ronin-stackways', NULL, NULL, 'primeconnect/Hacksaw Slot/ronin-stackways.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1366, 13, NULL, 'beast-below', 'Beast Below', 'beast-below', NULL, NULL, 'primeconnect/Hacksaw Slot/beast-below.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1367, 13, NULL, 'chaos-crew-ii', 'Chaos Crew II', 'chaos-crew-ii', NULL, NULL, 'primeconnect/Hacksaw Slot/chaos-crew-ii.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1368, 13, NULL, 'xmas-drop', 'Xmas Drop', 'xmas-drop', NULL, NULL, 'primeconnect/Hacksaw Slot/xmas-drop.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1369, 13, NULL, 'rotten', 'Rotten', 'rotten', NULL, NULL, 'primeconnect/Hacksaw Slot/rotten.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1370, 13, NULL, 'book-of-time', 'Book of Time', 'book-of-time', NULL, NULL, 'primeconnect/Hacksaw Slot/book-of-time.jpeg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1371, 13, NULL, 'densho', 'Densho', 'densho', NULL, NULL, 'primeconnect/Hacksaw Slot/densho.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1372, 13, NULL, 'hand-of-anubis', 'Hand of Anubis', 'hand-of-anubis', NULL, NULL, 'primeconnect/Hacksaw Slot/hand-of-anubis.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1373, 13, NULL, 'stormforged', 'Stormforged', 'stormforged', NULL, NULL, 'primeconnect/Hacksaw Slot/stormforged.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:08', '2024-08-28 14:24:08'),
(1374, 13, NULL, 'dork-unit', 'Dork Unit', 'dork-unit', NULL, NULL, 'primeconnect/Hacksaw Slot/dork-unit.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1375, 13, NULL, 'fist-of-destruction', 'Fist of Destruction', 'fist-of-destruction', NULL, NULL, 'primeconnect/Hacksaw Slot/fist-of-destruction.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1376, 13, NULL, 'slayers-inc', 'Slayers INC', 'slayers-inc', NULL, NULL, 'primeconnect/Hacksaw Slot/slayers-inc.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1377, 13, NULL, 'shadow-strike', 'Shadow Strike', 'shadow-strike', NULL, NULL, 'primeconnect/Hacksaw Slot/shadow-strike.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1378, 13, NULL, 'rip-city', 'Rip City', 'rip-city', NULL, NULL, 'primeconnect/Hacksaw Slot/rip-city.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1379, 13, NULL, 'le-bandit', 'Le Bandit', 'le-bandit', NULL, NULL, 'primeconnect/Hacksaw Slot/le-bandit.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1380, 13, NULL, 'wanted-dead-or-a-wild', 'Wanted Dead or a Wild', 'wanted-dead-or-a-wild', NULL, NULL, 'primeconnect/Hacksaw Slot/wanted-dead-or-a-wild.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1381, 13, NULL, 'ze-zeus', 'Ze Zeus', 'ze-zeus', NULL, NULL, 'primeconnect/Hacksaw Slot/ze-zeus.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1382, 13, NULL, 'cup-heroes', 'Cup Heroes', 'cup-heroes', NULL, NULL, 'primeconnect/Hacksaw Slot/cup-heroes.jpeg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1383, 13, NULL, 'octo-attack', 'Octo Attack', 'octo-attack', NULL, NULL, 'primeconnect/Hacksaw Slot/octo-attack.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1384, 13, NULL, 'tai-the-toad', 'Tai the Toad', 'tai-the-toad', NULL, NULL, 'primeconnect/Hacksaw Slot/tai-the-toad.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1385, 13, NULL, 'pickle-bandits', 'Pickle Bandits', 'pickle-bandits', NULL, NULL, 'primeconnect/Hacksaw Slot/pickle-bandits.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1386, 13, NULL, 'pirate-bonanza', 'Pirate Bonanza', 'pirate-bonanza', NULL, NULL, 'primeconnect/Hacksaw Slot/pirate-bonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1387, 13, NULL, 'donny-dough', 'Donny Dough', 'donny-dough', NULL, NULL, 'primeconnect/Hacksaw Slot/donny-dough.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1388, 13, NULL, 'old-gun', 'Old Gun', 'old-gun', NULL, NULL, 'primeconnect/Hacksaw Slot/old-gun.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:09', '2024-08-28 14:24:09'),
(1389, 13, NULL, 'dragon-s-domain', 'Dragon’s Domain', 'dragon-s-domain', NULL, NULL, 'primeconnect/Hacksaw Slot/dragon-s-domain.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1390, 13, NULL, 'holy-heist', 'Holy Heist', 'holy-heist', NULL, NULL, 'primeconnect/Hacksaw Slot/holy-heist.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1391, 13, NULL, 'twisted-lab', 'Twisted Lab', 'twisted-lab', NULL, NULL, 'primeconnect/Hacksaw Slot/twisted-lab.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1392, 14, NULL, 'dream-diner', 'Dream Diner', 'dream-diner', NULL, NULL, 'primeconnect/Popiplay Slot/dream-diner.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1393, 14, NULL, 'lime-time', 'Lime Time', 'lime-time', NULL, NULL, 'primeconnect/Popiplay Slot/lime-time.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1394, 14, NULL, 'unipopcorn', 'Unipopcorn', 'unipopcorn', NULL, NULL, 'primeconnect/Popiplay Slot/unipopcorn.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1395, 14, NULL, 'detective-donut', 'Detective Donut', 'detective-donut', NULL, NULL, 'primeconnect/Popiplay Slot/detective-donut.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1396, 14, NULL, 'gates-of-anubis', 'Gates Of Anubis', 'gates-of-anubis', NULL, NULL, 'primeconnect/Popiplay Slot/gates-of-anubis.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1397, 14, NULL, 'creepy-ink', 'Creepy Ink', 'creepy-ink', NULL, NULL, 'primeconnect/Popiplay Slot/creepy-ink.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1398, 14, NULL, 'store-wars', 'Store Wars', 'store-wars', NULL, NULL, 'primeconnect/Popiplay Slot/store-wars.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1399, 14, NULL, 'fish-and-cash', 'Fish And Cash Arctic', 'fish-and-cash', NULL, NULL, 'primeconnect/Popiplay Slot/fish-and-cash.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1400, 14, NULL, 'wild-witches', 'Wild Witches', 'wild-witches', NULL, NULL, 'primeconnect/Popiplay Slot/wild-witches.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1401, 14, NULL, 'sweet-punks', 'Sweet Punks', 'sweet-punks', NULL, NULL, 'primeconnect/Popiplay Slot/sweet-punks.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1402, 14, NULL, 'double-diamond-night', 'Double Diamond Night', 'double-diamond-night', NULL, NULL, 'primeconnect/Popiplay Slot/double-diamond-night.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1403, 14, NULL, 'keys-to-the-sea', 'Keys To The Sea', 'keys-to-the-sea', NULL, NULL, 'primeconnect/Popiplay Slot/keys-to-the-sea.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:10', '2024-08-28 14:24:10'),
(1404, 14, NULL, 'area-69', 'Area 69', 'area-69', NULL, NULL, 'primeconnect/Popiplay Slot/area-69.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1405, 15, NULL, 'treasure_mania', 'Treasure Mania', 'treasure_mania', NULL, NULL, 'primeconnect/Evoplay Slot/treasure_mania.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1406, 15, NULL, 'juicy_gems', 'Juicy Gems Bonus Buy', 'juicy_gems', NULL, NULL, 'primeconnect/Evoplay Slot/juicy_gems.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1407, 15, NULL, 'battle_tanks', 'Battle Tanks', 'battle_tanks', NULL, NULL, 'primeconnect/Evoplay Slot/battle_tanks.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1408, 15, NULL, 'dolphins_treasure', 'Dolphins Treasure', 'dolphins_treasure', NULL, NULL, 'primeconnect/Evoplay Slot/dolphins_treasure.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1409, 15, NULL, 'x_demon_b_b', 'X-Demon', 'x_demon_b_b', NULL, NULL, 'primeconnect/Evoplay Slot/x_demon_b_b.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1410, 15, NULL, 'legend_of_ra', 'Legend of Ra', 'legend_of_ra', NULL, NULL, 'primeconnect/Evoplay Slot/legend_of_ra.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1411, 15, NULL, 'book_of_the_priestess', 'Book of the Priestess Bonus Buy', 'book_of_the_priestess', NULL, NULL, 'primeconnect/Evoplay Slot/book_of_the_priestess.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1412, 15, NULL, 'rueda_de_chile_b_b', 'Rueda De Chile', 'rueda_de_chile_b_b', NULL, NULL, 'primeconnect/Evoplay Slot/rueda_de_chile_b_b.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1413, 15, NULL, 'mega_greatest_catch_b_b', 'Mega Greatest Catch', 'mega_greatest_catch_b_b', NULL, NULL, 'primeconnect/Evoplay Slot/mega_greatest_catch_b_b.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1414, 15, NULL, 'cycle_of_luck', 'Cycle of Luck', 'cycle_of_luck', NULL, NULL, 'primeconnect/Evoplay Slot/cycle_of_luck.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1415, 15, NULL, 'unlimited_wishes', 'Unlimited Wishes', 'unlimited_wishes', NULL, NULL, 'primeconnect/Evoplay Slot/unlimited_wishes.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1416, 15, NULL, 'rocket_stars', 'Rocket Stars', 'rocket_stars', NULL, NULL, 'primeconnect/Evoplay Slot/rocket_stars.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:11', '2024-08-28 14:24:11'),
(1417, 15, NULL, 'inner_fire_b_b', 'Inner Fire', 'inner_fire_b_b', NULL, NULL, 'primeconnect/Evoplay Slot/inner_fire_b_b.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1418, 15, NULL, 'money_minter', 'Money Minter Bonus Buy', 'money_minter', NULL, NULL, 'primeconnect/Evoplay Slot/money_minter.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1419, 15, NULL, 'neon_capital_b_b', 'Neon Capital', 'neon_capital_b_b', NULL, NULL, 'primeconnect/Evoplay Slot/neon_capital_b_b.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1420, 15, NULL, 'hot_volcano', 'Hot Volcano Bonus Buy', 'hot_volcano', NULL, NULL, 'primeconnect/Evoplay Slot/hot_volcano.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1421, 15, NULL, 'money_minter_b_b', 'Money Minter', 'money_minter_b_b', NULL, NULL, 'primeconnect/Evoplay Slot/money_minter_b_b.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1422, 15, NULL, 'ice_mania', 'Ice Mania', 'ice_mania', NULL, NULL, 'primeconnect/Evoplay Slot/ice_mania.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1423, 15, NULL, 'hot_triple_sevens', 'Hot Triple Sevens Special', 'hot_triple_sevens', NULL, NULL, 'primeconnect/Evoplay Slot/hot_triple_sevens.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1424, 15, NULL, 'belfry_bliss', 'Belfry Bliss', 'belfry_bliss', NULL, NULL, 'primeconnect/Evoplay Slot/belfry_bliss.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1425, 15, NULL, 'budai_reels_bonus_buy', 'Budai Reels Bonus Buy', 'budai_reels_bonus_buy', NULL, NULL, 'primeconnect/Evoplay Slot/budai_reels_bonus_buy.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1426, 15, NULL, 'hot_triple_sevens_special', 'Hot Triple Sevens', 'hot_triple_sevens_special', NULL, NULL, 'primeconnect/Evoplay Slot/hot_triple_sevens_special.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1427, 15, NULL, 'fruit_super_nova', 'Fruit Super Nova 30', 'fruit_super_nova', NULL, NULL, 'primeconnect/Evoplay Slot/fruit_super_nova.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1428, 15, NULL, 'hot_mania', 'Hot Mania', 'hot_mania', NULL, NULL, 'primeconnect/Evoplay Slot/hot_mania.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1429, 16, NULL, 'twin_fruits_of_santa', 'Twin Fruits of Santa', 'twin_fruits_of_santa', NULL, NULL, 'primeconnect/Mascot Slot/twin_fruits_of_santa.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:12', '2024-08-28 14:24:12'),
(1430, 16, NULL, 'loot_the_train', 'Loot the Train', 'loot_the_train', NULL, NULL, 'primeconnect/Mascot Slot/loot_the_train.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 1, 0, 1, '2024-08-28 14:24:12', '2024-08-31 16:53:05'),
(1431, 16, NULL, 'merry_scary_christmas', 'Merry Scary Christmas!', 'merry_scary_christmas', NULL, NULL, 'primeconnect/Mascot Slot/merry_scary_christmas.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1432, 16, NULL, 'gemz_grow', 'Gemz Grow', 'gemz_grow', NULL, NULL, 'primeconnect/Mascot Slot/gemz_grow.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1433, 16, NULL, 'prince_of_persia_tgop', 'Prince of Persia: the Gems of Persepolis', 'prince_of_persia_tgop', NULL, NULL, 'primeconnect/Mascot Slot/prince_of_persia_tgop.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1434, 16, NULL, 'wildlife_riches', 'Wildlife Riches', 'wildlife_riches', NULL, NULL, 'primeconnect/Mascot Slot/wildlife_riches.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1435, 16, NULL, 'the_myth', 'The Myth', 'the_myth', NULL, NULL, 'primeconnect/Mascot Slot/the_myth.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1436, 16, NULL, 'wild_spirit', 'Wild Spirit', 'wild_spirit', NULL, NULL, 'primeconnect/Mascot Slot/wild_spirit.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1437, 16, NULL, 'northern_heat', 'Northern Heat', 'northern_heat', NULL, NULL, 'primeconnect/Mascot Slot/northern_heat.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1438, 16, NULL, 'the_tomb_det', 'The Tomb', 'the_tomb_det', NULL, NULL, 'primeconnect/Mascot Slot/the_tomb_det.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1439, 16, NULL, 'gryphons_castle', 'Gryphon\'s Castle', 'gryphons_castle', NULL, NULL, 'primeconnect/Mascot Slot/gryphons_castle.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1440, 16, NULL, 'venetian_magic', 'Venetian Magic', 'venetian_magic', NULL, NULL, 'primeconnect/Mascot Slot/venetian_magic.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1441, 16, NULL, 'mermaids_bay', 'Mermaid\'s Bay', 'mermaids_bay', NULL, NULL, 'primeconnect/Mascot Slot/mermaids_bay.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1442, 16, NULL, 'dragons_lucky_25', 'Dragon\'s Lucky 25', 'dragons_lucky_25', NULL, NULL, 'primeconnect/Mascot Slot/dragons_lucky_25.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1443, 17, NULL, 'hohoho', 'Ho Ho Ho', 'hohoho', NULL, NULL, 'primeconnect/PopOk Slot/hohoho.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:13', '2024-08-28 14:24:13'),
(1444, 17, NULL, 'valentinesDay', 'Happy Valentines Day', 'valentinesDay', NULL, NULL, 'primeconnect/PopOk Slot/valentinesDay.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1445, 17, NULL, 'wildQueen', 'Wild Queen', 'wildQueen', NULL, NULL, 'primeconnect/PopOk Slot/wildQueen.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1446, 17, NULL, 'pokiWild', 'Poki Wild', 'pokiWild', NULL, NULL, 'primeconnect/PopOk Slot/pokiWild.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1447, 17, NULL, 'luckySmile', 'Lucky Smile', 'luckySmile', NULL, NULL, 'primeconnect/PopOk Slot/luckySmile.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1448, 17, NULL, 'ageOfVikings', 'Age of Vikings', 'ageOfVikings', NULL, NULL, 'primeconnect/PopOk Slot/ageOfVikings.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1449, 17, NULL, 'milkyFarm', 'Milky Farm', 'milkyFarm', NULL, NULL, 'primeconnect/PopOk Slot/milkyFarm.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1450, 17, NULL, 'vikingsMystery', 'Vikings Mystery', 'vikingsMystery', NULL, NULL, 'primeconnect/PopOk Slot/vikingsMystery.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1451, 17, NULL, 'royalFlush', 'Royal Flash', 'royalFlush', NULL, NULL, 'primeconnect/PopOk Slot/royalFlush.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1452, 17, NULL, 'incredibleGenie', 'Incredible Genie', 'incredibleGenie', NULL, NULL, 'primeconnect/PopOk Slot/incredibleGenie.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1453, 17, NULL, 'luckyJungle', 'Lucky Jungle', 'luckyJungle', NULL, NULL, 'primeconnect/PopOk Slot/luckyJungle.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1454, 17, NULL, 'goldOfEgypt', 'Gold of Egypt', 'goldOfEgypt', NULL, NULL, 'primeconnect/PopOk Slot/goldOfEgypt.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1455, 17, NULL, 'hotAngels', 'Hot Angels', 'hotAngels', NULL, NULL, 'primeconnect/PopOk Slot/hotAngels.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1456, 17, NULL, 'mrFirstForune', 'Mr. First Lucky Wheel', 'mrFirstForune', NULL, NULL, 'primeconnect/PopOk Slot/mrFirstForune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1457, 17, NULL, 'losToros', 'Los Toros', 'losToros', NULL, NULL, 'primeconnect/PopOk Slot/losToros.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:14', '2024-08-28 14:24:14'),
(1458, 17, NULL, 'fastFruits', 'Fast Fruits', 'fastFruits', NULL, NULL, 'primeconnect/PopOk Slot/fastFruits.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1459, 17, NULL, 'hotMuchacho', 'Hot Muchacho', 'hotMuchacho', NULL, NULL, 'primeconnect/PopOk Slot/hotMuchacho.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1460, 18, NULL, 'mini-crash', 'Crash', 'mini-crash', NULL, NULL, 'primeconnect/Mini Game/mini-crash.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1461, 18, NULL, 'mini-limbo', 'Limbo', 'mini-limbo', NULL, NULL, 'primeconnect/Mini Game/mini-limbo.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1462, 18, NULL, 'mini-racing', 'Racing', 'mini-racing', NULL, NULL, 'primeconnect/Mini Game/mini-racing.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1463, 18, NULL, 'mini-mines', 'Mines', 'mini-mines', NULL, NULL, 'primeconnect/Mini Game/mini-mines.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1464, 18, NULL, 'mini-double', 'Double', 'mini-double', NULL, NULL, 'primeconnect/Mini Game/mini-double.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1465, 18, NULL, 'mini-powerball', 'PowerBall', 'mini-powerball', NULL, NULL, 'primeconnect/Mini Game/mini-powerball.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1466, 18, NULL, 'mini-poker', 'Poker', 'mini-poker', NULL, NULL, 'primeconnect/Mini Game/mini-poker.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1467, 18, NULL, 'mini-dice', 'Dice', 'mini-dice', NULL, NULL, 'primeconnect/Mini Game/mini-dice.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1468, 18, NULL, 'mini-keno', 'Keno', 'mini-keno', NULL, NULL, 'primeconnect/Mini Game/mini-keno.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1469, 18, NULL, 'mini-monopoly', 'Monopoly', 'mini-monopoly', NULL, NULL, 'primeconnect/Mini Game/mini-monopoly.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1470, 17, NULL, 'blackBooz', 'Black Booze', 'blackBooz', NULL, NULL, 'primeconnect/PopOk Slot/blackBooz.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1471, 17, NULL, 'magicTime', 'Magic Time', 'magicTime', NULL, NULL, 'primeconnect/PopOk Slot/magicTime.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1472, 17, NULL, 'samurai', 'Ronin', 'samurai', NULL, NULL, 'primeconnect/PopOk Slot/samurai.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1473, 17, NULL, 'whitchsGift', 'King Craft: Menomin', 'whitchsGift', NULL, NULL, 'primeconnect/PopOk Slot/whitchsGift.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:15', '2024-08-28 14:24:15'),
(1474, 17, NULL, 'flamingPhoenix', 'Flaming Phoenix', 'flamingPhoenix', NULL, NULL, 'primeconnect/PopOk Slot/flamingPhoenix.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1475, 17, NULL, 'dragon', 'Era of Dragons', 'dragon', NULL, NULL, 'primeconnect/PopOk Slot/dragon.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1476, 14, NULL, 'hanafuda', 'Hanafuda', 'hanafuda', NULL, NULL, 'primeconnect/Popiplay Slot/hanafuda.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1477, 14, NULL, 'fish-and-cash-arctic', 'Fish And Cash', 'fish-and-cash-arctic', NULL, NULL, 'primeconnect/Popiplay Slot/fish-and-cash-arctic.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1478, 14, NULL, 'xmas-crash', 'Xmas Crash', 'xmas-crash', NULL, NULL, 'primeconnect/Popiplay Slot/xmas-crash.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1479, 11, NULL, 'crypto-gold', 'Crypto Gold', 'crypto-gold', NULL, NULL, 'primeconnect/PGSoft Slot/crypto-gold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1480, 11, NULL, 'cocktail-nite', 'Cocktail Nights', 'cocktail-nite', NULL, NULL, 'primeconnect/PGSoft Slot/cocktail-nite.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1481, 11, NULL, 'double-fortune', 'Double Fortune', 'double-fortune', NULL, NULL, 'primeconnect/PGSoft Slot/double-fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1482, 11, NULL, 'emperors-favour', 'Emperor\'s Favour', 'emperors-favour', NULL, NULL, 'primeconnect/PGSoft Slot/emperors-favour.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1483, 11, NULL, 'the-great-icescape', 'The Great Icescape', 'the-great-icescape', NULL, NULL, 'primeconnect/PGSoft Slot/the-great-icescape.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1484, 11, NULL, 'jungle-delight', 'Jungle Delight', 'jungle-delight', NULL, NULL, 'primeconnect/PGSoft Slot/jungle-delight.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1485, 11, NULL, 'captains-bounty', 'Captain\'s Bounty', 'captains-bounty', NULL, NULL, 'primeconnect/PGSoft Slot/captains-bounty.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1486, 11, NULL, 'ganesha-gold', 'Ganesha Gold', 'ganesha-gold', NULL, NULL, 'primeconnect/PGSoft Slot/ganesha-gold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1487, 11, NULL, 'journey-to-the-wealth', 'Journey to the Wealth', 'journey-to-the-wealth', NULL, NULL, 'primeconnect/PGSoft Slot/journey-to-the-wealth.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:16', '2024-08-28 14:24:16'),
(1488, 11, NULL, 'symbols-of-egypt', 'Symbols of Egypt', 'symbols-of-egypt', NULL, NULL, 'primeconnect/PGSoft Slot/symbols-of-egypt.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1489, 11, NULL, 'piggy-gold', 'Piggy Gold', 'piggy-gold', NULL, NULL, 'primeconnect/PGSoft Slot/piggy-gold.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1490, 11, NULL, 'gem-saviour-sword', 'Gem Saviour Sword', 'gem-saviour-sword', NULL, NULL, 'primeconnect/PGSoft Slot/gem-saviour-sword.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1491, 11, NULL, 'win-win-won', 'Win Win Won', 'win-win-won', NULL, NULL, 'primeconnect/PGSoft Slot/win-win-won.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1492, 11, NULL, 'fortune-gods', 'Fortune Gods', 'fortune-gods', NULL, NULL, 'primeconnect/PGSoft Slot/fortune-gods.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1493, 11, NULL, 'santas-gift-rush', 'Santa\'s Gift Rush', 'santas-gift-rush', NULL, NULL, 'primeconnect/PGSoft Slot/santas-gift-rush.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1494, 11, NULL, 'hip-hop-panda', 'Hip Hop Panda', 'hip-hop-panda', NULL, NULL, 'primeconnect/PGSoft Slot/hip-hop-panda.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1495, 11, NULL, 'prosperity-lion', 'Prosperity Lion', 'prosperity-lion', NULL, NULL, 'primeconnect/PGSoft Slot/prosperity-lion.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1496, 11, NULL, 'legend-of-hou-yi', 'Legend of Hou Yi', 'legend-of-hou-yi', NULL, NULL, 'primeconnect/PGSoft Slot/legend-of-hou-yi.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1497, 11, NULL, 'mr-hallow-win', 'Mr. Hallow-Win', 'mr-hallow-win', NULL, NULL, 'primeconnect/PGSoft Slot/mr-hallow-win.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1498, 11, NULL, 'hood-wolf', 'Hood vs Wolf', 'hood-wolf', NULL, NULL, 'primeconnect/PGSoft Slot/hood-wolf.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1499, 11, NULL, 'gem-saviour-conquest', 'Gem Saviour Conquest', 'gem-saviour-conquest', NULL, NULL, 'primeconnect/PGSoft Slot/gem-saviour-conquest.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1500, 11, NULL, 'dragon-legend', 'Dragon Legend', 'dragon-legend', NULL, NULL, 'primeconnect/PGSoft Slot/dragon-legend.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1501, 11, NULL, 'plushie-frenzy', 'Plushie Frenzy', 'plushie-frenzy', NULL, NULL, 'primeconnect/PGSoft Slot/plushie-frenzy.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:17', '2024-08-28 14:24:17'),
(1502, 11, NULL, 'medusa', 'Medusa', 'medusa', NULL, NULL, 'primeconnect/PGSoft Slot/medusa.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1503, 11, NULL, 'medusa2', 'Medusa II', 'medusa2', NULL, NULL, 'primeconnect/PGSoft Slot/medusa2.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1504, 11, NULL, 'diaochan', 'Honey Trap of Diao Chan', 'diaochan', NULL, NULL, 'primeconnect/PGSoft Slot/diaochan.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1505, 11, NULL, 'fortune-tree', 'Tree of Fortune', 'fortune-tree', NULL, NULL, 'primeconnect/PGSoft Slot/fortune-tree.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1506, 16, NULL, 'fruit_disco_ms', 'Fruit Disco: Mega Stacks', 'fruit_disco_ms', NULL, NULL, 'primeconnect/Mascot Slot/fruit_disco_ms.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1507, 16, NULL, 'twin_fruits_of_olympus', 'Twin Fruits of Olympus', 'twin_fruits_of_olympus', NULL, NULL, 'primeconnect/Mascot Slot/twin_fruits_of_olympus.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1508, 16, NULL, 'lions_pride', 'Lion\'s Pride', 'lions_pride', NULL, NULL, 'primeconnect/Mascot Slot/lions_pride.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1509, 15, NULL, 'christmas_reach_bonus_buy', 'Christmas Reach', 'christmas_reach_bonus_buy', NULL, NULL, 'primeconnect/Evoplay Slot/christmas_reach_bonus_buy.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1510, 15, NULL, 'sweet_sugar', 'Sweet Sugar', 'sweet_sugar', NULL, NULL, 'primeconnect/Evoplay Slot/sweet_sugar.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1511, 15, NULL, 'redrose_sanctuary', 'Redrose Sanctuary', 'redrose_sanctuary', NULL, NULL, 'primeconnect/Evoplay Slot/redrose_sanctuary.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1512, 15, NULL, 'wild_bullets', 'Wild Bullets', 'wild_bullets', NULL, NULL, 'primeconnect/Evoplay Slot/wild_bullets.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1513, 15, NULL, 'ellens_fortune', 'Ellen\'s Fortune', 'ellens_fortune', NULL, NULL, 'primeconnect/Evoplay Slot/ellens_fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1514, 15, NULL, 'wonder_farm', 'Wonder Farm Bonus Buy', 'wonder_farm', NULL, NULL, 'primeconnect/Evoplay Slot/wonder_farm.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:18', '2024-08-28 14:24:18'),
(1515, 12, NULL, 'big_heist', 'Big Heist', 'big_heist', NULL, NULL, 'primeconnect/Booongo/big_heist.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1516, 12, NULL, 'green_chilli', 'Green Chilli', 'green_chilli', NULL, NULL, 'primeconnect/Booongo/green_chilli.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1517, 12, NULL, 'sticky_piggy', 'Sticky Piggy', 'sticky_piggy', NULL, NULL, 'primeconnect/Booongo/sticky_piggy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1518, 12, NULL, 'rio_gems', 'Rio Gems', 'rio_gems', NULL, NULL, 'primeconnect/Booongo/rio_gems.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1519, 12, NULL, 'goddess_of_egypt', 'Goddess of Egypt', 'goddess_of_egypt', NULL, NULL, 'primeconnect/Booongo/goddess_of_egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1520, 12, NULL, 'sunlight_princess', 'Sunlight Princess', 'sunlight_princess', NULL, NULL, 'primeconnect/Booongo/sunlight_princess.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1521, 12, NULL, 'boom_gold', 'Boom! Boom! Gold!', 'boom_gold', NULL, NULL, 'primeconnect/Booongo/boom_gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1522, 12, NULL, 'egypt_fire', 'Egypt Fire', 'egypt_fire', NULL, NULL, 'primeconnect/Booongo/egypt_fire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1523, 12, NULL, 'dragon_wealth', 'Dragon Wealth', 'dragon_wealth', NULL, NULL, 'primeconnect/Booongo/dragon_wealth.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1524, 12, NULL, 'maya_sun', 'Maya Sun', 'maya_sun', NULL, NULL, 'primeconnect/Booongo/maya_sun.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1525, 12, NULL, 'yo_ho_gold', 'Yo-Ho Gold!', 'yo_ho_gold', NULL, NULL, 'primeconnect/Booongo/yo_ho_gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1526, 12, NULL, 'hit_more_gold', 'Hit more Gold!', 'hit_more_gold', NULL, NULL, 'primeconnect/Booongo/hit_more_gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1527, 12, NULL, 'more_magic_apple', '	More Magic Apple', 'more_magic_apple', NULL, NULL, NULL, '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1528, 12, NULL, 'grab_the_gold', 'Grab the Gold!', 'grab_the_gold', NULL, NULL, 'primeconnect/Booongo/grab_the_gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1529, 13, NULL, 'harvest-wilds', 'Harvest Wilds', 'harvest-wilds', NULL, NULL, 'primeconnect/Hacksaw Slot/harvest-wilds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:19', '2024-08-28 14:24:19'),
(1530, 13, NULL, 'breakbones', 'BreakBones', 'breakbones', NULL, NULL, 'primeconnect/Hacksaw Slot/breakbones.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1531, 13, NULL, 'xpander', 'Xpander', 'xpander', NULL, NULL, 'primeconnect/Hacksaw Slot/xpander.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1532, 13, NULL, 'piggy-cluster-hunt', 'Piggy Cluster Hunt', 'piggy-cluster-hunt', NULL, NULL, 'primeconnect/Hacksaw Slot/piggy-cluster-hunt.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1533, 13, NULL, 'frutz', 'Frutz', 'frutz', NULL, NULL, 'primeconnect/Hacksaw Slot/frutz.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1534, 13, NULL, 'king-carrot', 'King Carrot', 'king-carrot', NULL, NULL, 'primeconnect/Hacksaw Slot/king-carrot.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1535, 13, NULL, 'mystery-motel', 'Mystery Motel', 'mystery-motel', NULL, NULL, 'primeconnect/Hacksaw Slot/mystery-motel.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1536, 13, NULL, 'rocket-reels', 'Rocket Reels', 'rocket-reels', NULL, NULL, 'primeconnect/Hacksaw Slot/rocket-reels.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1537, 13, NULL, 'cash-compass', 'Cash Compass', 'cash-compass', NULL, NULL, 'primeconnect/Hacksaw Slot/cash-compass.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1538, 13, NULL, 'tasty-treats', 'Tasty Treats', 'tasty-treats', NULL, NULL, 'primeconnect/Hacksaw Slot/tasty-treats.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1539, 13, NULL, 'keep-em-cool', 'Keep\'em Cool', 'keep-em-cool', NULL, NULL, 'primeconnect/Hacksaw Slot/keep-em-cool.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1540, 13, NULL, 'forest-fortune', 'Forest Fortune', 'forest-fortune', NULL, NULL, 'primeconnect/Hacksaw Slot/forest-fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1541, 13, NULL, 'sleepy-grandpa', 'Sleepy Grandpa', 'sleepy-grandpa', NULL, NULL, 'primeconnect/Hacksaw Slot/sleepy-grandpa.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1542, 13, NULL, 'warrior-ways', 'Warrior Ways', 'warrior-ways', NULL, NULL, 'primeconnect/Hacksaw Slot/warrior-ways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1543, 13, NULL, 'the-respinners', 'The Respinners', 'the-respinners', NULL, NULL, 'primeconnect/Hacksaw Slot/the-respinners.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1544, 13, NULL, 'cash-quest', 'Cash Quest', 'cash-quest', NULL, NULL, 'primeconnect/Hacksaw Slot/cash-quest.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:20', '2024-08-28 14:24:20'),
(1545, 13, NULL, 'omnom', 'OmNom', 'omnom', NULL, NULL, 'primeconnect/Hacksaw Slot/omnom.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:21', '2024-08-28 14:24:21'),
(1546, 13, NULL, 'stickem', 'Stickem', 'stickem', NULL, NULL, 'primeconnect/Hacksaw Slot/stickem.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:21', '2024-08-28 14:24:21'),
(1547, 13, NULL, 'cubes', 'Cubes', 'cubes', NULL, NULL, 'primeconnect/Hacksaw Slot/cubes.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:21', '2024-08-28 14:24:21'),
(1548, 13, NULL, 'let-it-snow', 'Let It Snow', 'let-it-snow', NULL, NULL, 'primeconnect/Hacksaw Slot/let-it-snow.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:21', '2024-08-28 14:24:21'),
(1549, 13, NULL, 'aztec-twist', 'Aztec Twist', 'aztec-twist', NULL, NULL, 'primeconnect/Hacksaw Slot/aztec-twist.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:21', '2024-08-28 14:24:21'),
(1550, 13, NULL, 'miamimultiplier', 'MiamiMultiplier', 'miamimultiplier', NULL, NULL, 'primeconnect/Hacksaw Slot/miamimultiplier.png', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:21', '2024-08-28 14:24:21'),
(1551, 13, NULL, 'freds-food-truck', 'Fred\'s Food Truck', 'freds-food-truck', NULL, NULL, 'primeconnect/Hacksaw Slot/freds-food-truck.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:21', '2024-08-28 14:24:21'),
(1552, 13, NULL, 'jawsome-pirates', 'Jawsome Pirates', 'jawsome-pirates', NULL, NULL, 'primeconnect/Hacksaw Slot/jawsome-pirates.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'primeconnect', 0, 0, 1, '2024-08-28 14:24:21', '2024-08-28 14:24:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `games_keys`
--

CREATE TABLE `games_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `primeconnect_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primeconnect_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primeconnect_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primeconnect_endpoint` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'https://apiconnect.primegames.com.br/api/v1/',
  `merchant_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salsa_base_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salsa_pn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salsa_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vibra_site_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vibra_game_mode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worldslot_agent_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worldslot_agent_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worldslot_agent_secret_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worldslot_api_endpoint` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://api.worldslotgame.com/api/v2/',
  `games2_agent_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `games2_agent_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `games2_agent_secret_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `games2_api_endpoint` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'api.games2api.xyz',
  `evergame_agent_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evergame_agent_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evergame_api_endpoint` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venix_agent_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venix_agent_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venix_agent_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `play_gaming_hall` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `play_gaming_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `play_gaming_login` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pig_agent_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pig_agent_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pig_agent_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saldo_agente` decimal(10,2) DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games_keys`
--

INSERT INTO `games_keys` (`id`, `primeconnect_code`, `primeconnect_token`, `primeconnect_secret_key`, `primeconnect_endpoint`, `merchant_url`, `merchant_id`, `merchant_key`, `agent_code`, `agent_token`, `agent_secret_key`, `api_endpoint`, `salsa_base_uri`, `salsa_pn`, `salsa_key`, `created_at`, `updated_at`, `vibra_site_id`, `vibra_game_mode`, `worldslot_agent_code`, `worldslot_agent_token`, `worldslot_agent_secret_key`, `worldslot_api_endpoint`, `games2_agent_code`, `games2_agent_token`, `games2_agent_secret_key`, `games2_api_endpoint`, `evergame_agent_code`, `evergame_agent_token`, `evergame_api_endpoint`, `venix_agent_code`, `venix_agent_token`, `venix_agent_secret`, `play_gaming_hall`, `play_gaming_key`, `play_gaming_login`, `pig_agent_code`, `pig_agent_token`, `pig_agent_secret`, `saldo_agente`) VALUES
(1, 'testeprime1', 'KuTeN5AWi0IsJkch6BhHIwjhv2ealwby', '6YsRtLsbN2kF9OfXYXy41ptQ7TjhleQU', 'https://apiconnect.primegames.com.br/api/v1/', 'https://gis.slotegrator.com/api/index.php/v1', NULL, NULL, 'xgamingbr', 'b8b8649538d54b84a59a45489511b24c', '', 'https://igamewin.com/api/v1', NULL, NULL, NULL, '2023-11-30 18:03:08', '2024-08-28 14:21:30', NULL, NULL, NULL, NULL, NULL, 'https://api.worldslotgame.com/api/v2/', 'xgamingbrasil', '6b3947f3c6883a9a93a33fdb60902689', NULL, 'https://api.games2api.xyz', '', '', 'https://api.goesportes.bet/api/v1/game_launch', '', NULL, NULL, '', '', '', '', '', '', 0.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_favorites`
--

CREATE TABLE `game_favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `game_favorites`
--

INSERT INTO `game_favorites` (`id`, `user_id`, `game_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1375, '2024-04-04 19:48:33', '2024-04-04 19:48:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_likes`
--

CREATE TABLE `game_likes` (
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `game_likes`
--

INSERT INTO `game_likes` (`user_id`, `game_id`, `created_at`, `updated_at`) VALUES
(1, 1375, '2024-04-04 19:48:33', '2024-04-04 19:48:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_reviews`
--

CREATE TABLE `game_reviews` (
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `suitpay_uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suitpay_cliente_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suitpay_cliente_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_production` tinyint DEFAULT '0',
  `stripe_public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_webhook_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bspay_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bspay_cliente_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bspay_cliente_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_client_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_client_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_public_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_access_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digitopay_uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digitopay_cliente_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digitopay_cliente_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ezzebank_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ezzebank_cliente_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ezzebank_cliente_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `gateways`
--

INSERT INTO `gateways` (`id`, `suitpay_uri`, `suitpay_cliente_id`, `suitpay_cliente_secret`, `stripe_production`, `stripe_public_key`, `stripe_secret_key`, `stripe_webhook_key`, `bspay_uri`, `bspay_cliente_id`, `bspay_cliente_secret`, `created_at`, `updated_at`, `public_key`, `private_key`, `mp_client_id`, `mp_client_secret`, `mp_public_key`, `mp_access_token`, `digitopay_uri`, `digitopay_cliente_id`, `digitopay_cliente_secret`, `ezzebank_uri`, `ezzebank_cliente_id`, `ezzebank_cliente_secret`) VALUES
(1, 'https://ws.suitpay.app/api/v1/', '', '', 0, NULL, NULL, NULL, 'https://api.bspay.co/v2/', '', '', '2023-11-30 21:05:51', '2024-09-06 11:40:58', '', '', NULL, NULL, NULL, NULL, 'https://api.digitopayoficial.com.br/', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_config`
--

CREATE TABLE `ggds_spin_config` (
  `id` bigint UNSIGNED NOT NULL,
  `prizes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `ggds_spin_config`
--

INSERT INTO `ggds_spin_config` (`id`, `prizes`, `created_at`, `updated_at`) VALUES
(1, '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '2024-01-11 20:52:59', '2024-04-03 21:19:36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_runs`
--

CREATE TABLE `ggds_spin_runs` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `possibilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prize` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `ggds_spin_runs`
--

INSERT INTO `ggds_spin_runs` (`id`, `key`, `nonce`, `possibilities`, `prize`, `created_at`, `updated_at`) VALUES
(1, 'bccec5b62ab37e996470f8bb36ff83ea127a73f17f31cba275453f5ed7b24c34', '592f4304-4837-4a81-8f27-6c3ac412c7dc', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":2000}', '2024-01-12 15:49:28', '2024-01-12 15:49:28'),
(2, '93f0c422ecb15337d358cca690529c9db7d9b7a52acc0727092b938ade4e1c9b', 'eff5d8c3-475b-4994-a49d-778cf06aebf4', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":25}', '2024-01-12 15:51:01', '2024-01-12 15:51:01'),
(3, 'c7f0b2cc871954aa3a03f680969f029034d111e5550ee0769389fefe3fd6f9fd', '203098ef-3347-4938-813e-91be82891cbc', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":105}', '2024-01-12 15:51:34', '2024-01-12 15:51:34'),
(4, '5b4059c88237be6a78ff1fb35e427fd1e4e1a30184ced8d3e4ed9044a0939663', '65cf85de-3dee-48f4-a1d3-d26a8f89ba16', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":2000}', '2024-01-12 16:56:56', '2024-01-12 16:56:56'),
(5, '0901814bf6598c5c7e1072abcc8fa16290dff49b3c2aa44a9346cee34444f98f', '79519214-2125-4ed5-a672-45973c8af5eb', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":2500}', '2024-01-12 16:57:47', '2024-01-12 16:57:47'),
(6, '7b5642d63b3081907a3b7489794ba74f3052fe490095e7354d98570f6c4e5a6c', 'e5b728db-07e3-4531-910b-7c85f1555973', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":9.79}', '2024-01-12 18:51:25', '2024-01-12 18:51:25'),
(7, '001f8f60f30e431a9f28d39a4db43e0b3e03d0379816fe04ff5007aca5d0a14e', '4ab2acba-57f3-46f4-9dc6-c32e993fb995', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":1500}', '2024-01-12 19:13:25', '2024-01-12 19:13:25'),
(8, '8a801a13e786df312b4d3a2a023b5472cfca776b2b9524af3c12fac4e00bb935', 'e050a5ad-ab8a-4922-95cc-6fae7f62be99', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":2500}', '2024-01-12 19:40:12', '2024-01-12 19:40:12'),
(9, '3432d11c1efd935afcf84fba6c3466c3c98aee06c63163368a18b7d07749ea66', 'de330a3f-b3d0-41ef-94ae-2cee7686f341', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":15}', '2024-01-12 20:01:33', '2024-01-12 20:01:33'),
(10, 'cf741c182225f003f16fb815517a3d94d9cde7e16d767766864c7536ae51e101', 'ec3a409c-159f-4723-848c-7a45fe838c65', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":105}', '2024-01-12 20:26:04', '2024-01-12 20:26:04'),
(11, 'f7a528bd425441c09093c146b4456acc0391b2aaf6af26ed7282dd8b153411df', 'b9e39a17-328e-4730-979f-bd37714552f1', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":5.02}', '2024-01-13 01:02:21', '2024-01-13 01:02:21'),
(12, '7ec6e7dea1750162832a02bbcb986e3a77e4ea3ece5110b0c8c746e9ab586d27', '876d2835-b5c5-4c2f-997d-007fa566d356', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":980}', '2024-01-13 13:40:26', '2024-01-13 13:40:26'),
(13, '7980558afa73f95c09d898c3f40a488de06097822831729b21659e6e330d6f92', '19962ee0-52f1-45dd-b858-4003deb2eb43', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '{\"currency\":\"BRL\",\"value\":30}', '2024-01-15 19:28:00', '2024-01-15 19:28:00'),
(14, 'a3d745dce3ae568b335b497b3cca3be8336447c0280bda95a2797dac90ff6532', '1f105bf7-59ee-4a13-b345-1b2731c7ad47', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-10 19:09:01', '2024-05-10 19:09:01'),
(15, 'ce06d61644d992bb79e5765c3069ae954bc943554b3e54410bc5ec614e2742dc', 'c33f4bb2-a5fc-4ebf-a16a-99f93bf7ef7e', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-10 21:03:24', '2024-05-10 21:03:24'),
(16, 'c620a900e472c6f68a6f786c7d1fb9bcccc34eabdfea7e636f9238ac799233cf', 'a18ed1b3-9379-4d2c-bbf8-6c6598fad5d9', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-10 21:03:47', '2024-05-10 21:03:47'),
(17, '121a664a9ff6c50c12b8a68e6bc9fa06ac3f17fa1d185ba2b73afd2f642c5fb9', 'e0878f78-2375-4d1e-aad4-c977ede347cb', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-10 21:41:24', '2024-05-10 21:41:24'),
(18, '45f69c4a3f89a52391d2ce70073e2e25c371a3a5937fa90536b203a740bd0433', 'd9d3e6ab-10c7-415c-b4d5-fceb155e0859', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-10 21:41:31', '2024-05-10 21:41:31'),
(19, '8d9d61f7a286ab18b68d2810538ad12c1b441f0780dba833cc273a300c2c6a76', '0ba75c23-3de6-40d6-92c9-17751c3ff11a', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-10 23:54:13', '2024-05-10 23:54:13'),
(20, '1c54c13a5b955b5879c584b687d076b4e8b4ece698db2e787bfb28dc7d8c600f', 'dde9fdde-0788-458a-84a4-fabd10cb139a', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-11 00:03:16', '2024-05-11 00:03:16'),
(21, '57cfddb340da6f3a1d3aa880f272dbfd12fb640f966763f5688665612cac6caf', '79f9de77-c904-40d8-afe8-14fd834b4074', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-11 08:35:10', '2024-05-11 08:35:10'),
(22, '7fe9427e32fe8a9625b8ecb659e914c77b55bbe09f6ed48bd2a0cf27d0fcd2e6', 'ee27e83c-1b6f-4c55-b0bd-e04c2517dc9b', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-11 17:34:05', '2024-05-11 17:34:05'),
(23, '6dd6eb5c9f2682d77d7ba47d4facca5fae39602784198dc3bd1dfc8d21f25e51', 'fd4f3ed8-54b4-4223-8a3e-08e0adaca9c0', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-11 18:09:13', '2024-05-11 18:09:13'),
(24, 'dbfc2c292916dd21e40a25f81ee412c4464176ce4d9e9b9e238b45a911129fd3', '171f7780-1ed8-482f-97a8-a01610608f9e', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-11 18:09:27', '2024-05-11 18:09:27'),
(25, '45d87e2b116bec1de9a72a9060debc5d9e649416a1c5b7b7d59d60cc629ed303', '96911bc9-f58e-4ff4-8060-b2081c1a0917', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-05-16 12:08:34', '2024-05-16 12:08:34'),
(26, '1b4d27dee341a932efee673e4c62653c24ce79c2c65a756a34812808473d7e4e', '053fd8f4-0f6a-4e96-b86c-bed810c6c4c6', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-06-13 11:29:00', '2024-06-13 11:29:00'),
(27, '6226b96cd8a8acbfeb621965190c1f6cf756195044ab4665d4495cd0fdd622ac', 'a76a4bf0-0902-4ccb-9c9f-daf1644ce822', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-06-13 11:29:20', '2024-06-13 11:29:20'),
(28, '12853051e52e17f9e0efe02dbcb056ae12bee19fee2100f2454086c7f48645fb', '5a393f6b-eca3-4753-bda6-f5d2f8b46164', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":5}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-06-27 08:51:56', '2024-06-27 08:51:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games`
--

CREATE TABLE `ggr_games` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_win` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aggregator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `ggr_games`
--

INSERT INTO `ggr_games` (`id`, `user_id`, `provider`, `game`, `balance_bet`, `balance_win`, `currency`, `aggregator`, `type`, `created_at`, `updated_at`) VALUES
(1289, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:19:20', '2024-04-30 20:19:20'),
(1288, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 120.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:19:01', '2024-04-30 20:19:01'),
(1287, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:19:01', '2024-04-30 20:19:01'),
(1286, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:19:00', '2024-04-30 20:19:00'),
(1285, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 18750.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:18:46', '2024-04-30 20:18:46'),
(1284, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:18:46', '2024-04-30 20:18:46'),
(1283, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 45.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:18:35', '2024-04-30 20:18:35'),
(1282, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:18:35', '2024-04-30 20:18:35'),
(1281, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:18:34', '2024-04-30 20:18:34'),
(1280, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:18:10', '2024-04-30 20:18:10'),
(1279, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 20.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:17:56', '2024-04-30 20:17:56'),
(1278, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:17:56', '2024-04-30 20:17:56'),
(1277, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-04-30 20:17:43', '2024-04-30 20:17:43'),
(1276, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:17:43', '2024-04-30 20:17:43'),
(1275, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:17:35', '2024-04-30 20:17:35'),
(1274, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:17:32', '2024-04-30 20:17:32'),
(1273, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 100.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:16:25', '2024-04-30 20:16:25'),
(1272, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:16:25', '2024-04-30 20:16:25'),
(1271, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-04-30 20:16:11', '2024-04-30 20:16:11'),
(1270, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:16:11', '2024-04-30 20:16:11'),
(1269, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:16:09', '2024-04-30 20:16:09'),
(1268, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:16:05', '2024-04-30 20:16:05'),
(1267, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:16:02', '2024-04-30 20:16:02'),
(1266, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:15:59', '2024-04-30 20:15:59'),
(1265, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:15:55', '2024-04-30 20:15:55'),
(1264, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:15:51', '2024-04-30 20:15:51'),
(1263, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:15:20', '2024-04-30 20:15:20'),
(1262, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:15:11', '2024-04-30 20:15:11'),
(1261, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:14:28', '2024-04-30 20:14:28'),
(1260, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 400.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:14:14', '2024-04-30 20:14:14'),
(1259, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:14:14', '2024-04-30 20:14:14'),
(1258, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-04-30 20:13:56', '2024-04-30 20:13:56'),
(1257, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:13:56', '2024-04-30 20:13:56'),
(1256, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:13:42', '2024-04-30 20:13:42'),
(1255, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:13:06', '2024-04-30 20:13:06'),
(1254, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:13:03', '2024-04-30 20:13:03'),
(1253, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:11:15', '2024-04-30 20:11:15'),
(1252, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 32.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:11:03', '2024-04-30 20:11:03'),
(1251, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:11:03', '2024-04-30 20:11:03'),
(1250, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.64, 'BRL', 'wordslot', 'loss', '2024-04-30 20:10:49', '2024-04-30 20:10:49'),
(1249, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:10:49', '2024-04-30 20:10:49'),
(1248, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:09:56', '2024-04-30 20:09:56'),
(1247, 2752, 'PGSOFT', 'fortune-tiger', 2.00, 200.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:00:31', '2024-04-30 20:00:31'),
(1246, 2752, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:00:31', '2024-04-30 20:00:31'),
(1245, 2752, 'PGSOFT', 'fortune-tiger', 2.00, 1.20, 'BRL', 'wordslot', 'loss', '2024-04-30 20:00:09', '2024-04-30 20:00:09'),
(1244, 2752, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:00:09', '2024-04-30 20:00:09'),
(1243, 2752, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:00:07', '2024-04-30 20:00:07'),
(1242, 2752, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:00:04', '2024-04-30 20:00:04'),
(1241, 2752, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:00:01', '2024-04-30 20:00:01'),
(1240, 2752, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:59:58', '2024-04-30 19:59:58'),
(1239, 2752, 'PGSOFT', 'fortune-tiger', 2.00, 500.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:56:58', '2024-04-30 19:56:58'),
(1238, 2752, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:56:58', '2024-04-30 19:56:58'),
(1237, 2752, 'PGSOFT', 'fortune-tiger', 12.00, 7.20, 'BRL', 'wordslot', 'loss', '2024-04-30 19:56:26', '2024-04-30 19:56:26'),
(1236, 2752, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:56:26', '2024-04-30 19:56:26'),
(1235, 2752, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:56:23', '2024-04-30 19:56:23'),
(1234, 2752, 'PGSOFT', 'fortune-tiger', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:56:16', '2024-04-30 19:56:16'),
(1233, 2752, 'PGSOFT', 'fortune-tiger', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:55:40', '2024-04-30 19:55:40'),
(1232, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:55:32', '2024-04-30 19:55:32'),
(1231, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 32.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:55:18', '2024-04-30 19:55:18'),
(1230, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:55:18', '2024-04-30 19:55:18'),
(1229, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-04-30 19:55:04', '2024-04-30 19:55:04'),
(1228, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:55:04', '2024-04-30 19:55:04'),
(1227, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:55:01', '2024-04-30 19:55:01'),
(1226, 2752, 'PGSOFT', 'fortune-tiger', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:50:12', '2024-04-30 19:50:12'),
(1225, 2752, 'PGSOFT', 'fortune-tiger', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:47:26', '2024-04-30 19:47:26'),
(1224, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:46:21', '2024-04-30 19:46:21'),
(1223, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:46:13', '2024-04-30 19:46:13'),
(1222, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:46:10', '2024-04-30 19:46:10'),
(1221, 2752, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:44:44', '2024-04-30 19:44:44'),
(1220, 2752, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:44:42', '2024-04-30 19:44:42'),
(1219, 2752, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:44:32', '2024-04-30 19:44:32'),
(1218, 2752, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:44:30', '2024-04-30 19:44:30'),
(1217, 2752, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:44:29', '2024-04-30 19:44:29'),
(1216, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:44:22', '2024-04-30 19:44:22'),
(1215, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:44:08', '2024-04-30 19:44:08'),
(1214, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.72, 'BRL', 'wordslot', 'loss', '2024-04-30 19:42:55', '2024-04-30 19:42:55'),
(1213, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:42:55', '2024-04-30 19:42:55'),
(1212, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 1.20, 'BRL', 'wordslot', 'loss', '2024-04-30 19:42:14', '2024-04-30 19:42:14'),
(1211, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:42:14', '2024-04-30 19:42:14'),
(1210, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:42:05', '2024-04-30 19:42:05'),
(1209, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:41:55', '2024-04-30 19:41:55'),
(1208, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:41:40', '2024-04-30 19:41:40'),
(1207, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:41:32', '2024-04-30 19:41:32'),
(1206, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 1.20, 'BRL', 'wordslot', 'loss', '2024-04-30 19:41:19', '2024-04-30 19:41:19'),
(1205, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:41:19', '2024-04-30 19:41:19'),
(1204, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.40, 'BRL', 'wordslot', 'loss', '2024-04-30 19:41:08', '2024-04-30 19:41:08'),
(1203, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:41:08', '2024-04-30 19:41:08'),
(1202, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:41:07', '2024-04-30 19:41:07'),
(1201, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:41:05', '2024-04-30 19:41:05'),
(1200, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:41:02', '2024-04-30 19:41:02'),
(1199, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:41:00', '2024-04-30 19:41:00'),
(1198, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 16.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:40:48', '2024-04-30 19:40:48'),
(1197, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:40:48', '2024-04-30 19:40:48'),
(1196, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-04-30 19:40:37', '2024-04-30 19:40:37'),
(1195, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:40:37', '2024-04-30 19:40:37'),
(1194, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:40:36', '2024-04-30 19:40:36'),
(1193, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:40:35', '2024-04-30 19:40:35'),
(1192, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:40:34', '2024-04-30 19:40:34'),
(1191, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.72, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:50', '2024-04-30 19:39:50'),
(1190, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:50', '2024-04-30 19:39:50'),
(1189, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.48, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:38', '2024-04-30 19:39:38'),
(1188, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:38', '2024-04-30 19:39:38'),
(1187, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:37', '2024-04-30 19:39:37'),
(1186, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:34', '2024-04-30 19:39:34'),
(1185, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:33', '2024-04-30 19:39:33'),
(1184, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:31', '2024-04-30 19:39:31'),
(1183, 2752, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:26', '2024-04-30 19:39:26'),
(1182, 2752, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:23', '2024-04-30 19:39:23'),
(1181, 2752, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:20', '2024-04-30 19:39:20'),
(1180, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:17', '2024-04-30 19:39:17'),
(1179, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:14', '2024-04-30 19:39:14'),
(1178, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:11', '2024-04-30 19:39:11'),
(1177, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:09', '2024-04-30 19:39:09'),
(1176, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:07', '2024-04-30 19:39:07'),
(1175, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:04', '2024-04-30 19:39:04'),
(1174, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:39:01', '2024-04-30 19:39:01'),
(1173, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:38:58', '2024-04-30 19:38:58'),
(1172, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:53', '2024-04-30 19:37:53'),
(1171, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:51', '2024-04-30 19:37:51'),
(1170, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:50', '2024-04-30 19:37:50'),
(1169, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:48', '2024-04-30 19:37:48'),
(1168, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:43', '2024-04-30 19:37:43'),
(1167, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:42', '2024-04-30 19:37:42'),
(1166, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:40', '2024-04-30 19:37:40'),
(1165, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:39', '2024-04-30 19:37:39'),
(1164, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:35', '2024-04-30 19:37:35'),
(1163, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:32', '2024-04-30 19:37:32'),
(1162, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:30', '2024-04-30 19:37:30'),
(1161, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:37:27', '2024-04-30 19:37:27'),
(1160, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 7.20, 'BRL', 'wordslot', 'loss', '2024-04-30 19:36:31', '2024-04-30 19:36:31'),
(1159, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:36:31', '2024-04-30 19:36:31'),
(1158, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 0.72, 'BRL', 'wordslot', 'loss', '2024-04-30 19:36:08', '2024-04-30 19:36:08'),
(1157, 2752, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:36:08', '2024-04-30 19:36:08'),
(1156, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:36:03', '2024-04-30 19:36:03'),
(1155, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 1.92, 'BRL', 'wordslot', 'loss', '2024-04-30 19:35:56', '2024-04-30 19:35:56'),
(1154, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:35:56', '2024-04-30 19:35:56'),
(1153, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:54', '2024-04-30 19:34:54'),
(1152, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:54', '2024-04-30 19:34:54'),
(1151, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:51', '2024-04-30 19:34:51'),
(1150, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:49', '2024-04-30 19:34:49'),
(1149, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:46', '2024-04-30 19:34:46'),
(1148, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:44', '2024-04-30 19:34:44'),
(1147, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:41', '2024-04-30 19:34:41'),
(1146, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:39', '2024-04-30 19:34:39'),
(1145, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:37', '2024-04-30 19:34:37'),
(1144, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:34', '2024-04-30 19:34:34'),
(1143, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:32', '2024-04-30 19:34:32'),
(1142, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:28', '2024-04-30 19:34:28'),
(1141, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:26', '2024-04-30 19:34:26'),
(1140, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 6.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:10', '2024-04-30 19:34:10'),
(1139, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:34:10', '2024-04-30 19:34:10'),
(1138, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 3.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:33:44', '2024-04-30 19:33:44'),
(1137, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:33:44', '2024-04-30 19:33:44'),
(1136, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:33:42', '2024-04-30 19:33:42'),
(1135, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:33:39', '2024-04-30 19:33:39'),
(1134, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:33:37', '2024-04-30 19:33:37'),
(1133, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:33:34', '2024-04-30 19:33:34'),
(1132, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 3.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:33:24', '2024-04-30 19:33:24'),
(1131, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:33:24', '2024-04-30 19:33:24'),
(1130, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.50, 'BRL', 'wordslot', 'loss', '2024-04-30 19:33:00', '2024-04-30 19:33:00'),
(1129, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:33:00', '2024-04-30 19:33:00'),
(1128, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:32:22', '2024-04-30 19:32:22'),
(1127, 2752, 'PGSOFT', 'fortune-mouse', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:32:18', '2024-04-30 19:32:18'),
(1126, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:32:08', '2024-04-30 19:32:08'),
(1125, 2752, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 19:32:05', '2024-04-30 19:32:05'),
(1124, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:40', '2024-04-26 17:53:40'),
(1123, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:39', '2024-04-26 17:53:39'),
(1122, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:37', '2024-04-26 17:53:37'),
(1121, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:36', '2024-04-26 17:53:36'),
(1120, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:35', '2024-04-26 17:53:35'),
(1119, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:34', '2024-04-26 17:53:34'),
(1118, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:33', '2024-04-26 17:53:33'),
(1117, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:32', '2024-04-26 17:53:32'),
(1116, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:31', '2024-04-26 17:53:31'),
(1115, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:30', '2024-04-26 17:53:30'),
(1114, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:20', '2024-04-26 17:53:20'),
(1113, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:19', '2024-04-26 17:53:19'),
(1112, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:18', '2024-04-26 17:53:18'),
(1111, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:17', '2024-04-26 17:53:17'),
(1110, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:16', '2024-04-26 17:53:16'),
(1109, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:15', '2024-04-26 17:53:15'),
(1108, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:14', '2024-04-26 17:53:14'),
(1107, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:13', '2024-04-26 17:53:13'),
(1106, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:12', '2024-04-26 17:53:12'),
(1105, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:09', '2024-04-26 17:53:09'),
(1104, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:08', '2024-04-26 17:53:08'),
(1103, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:53:02', '2024-04-26 17:53:02'),
(1102, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:52:59', '2024-04-26 17:52:59'),
(1101, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:52:38', '2024-04-26 17:52:38'),
(1100, 2748, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-26 17:52:37', '2024-04-26 17:52:37'),
(1099, 2746, 'BOOONGO', 'fortune-tiger', 0.00, 600.00, 'BRL', 'wordslot', 'loss', '2024-04-25 11:25:36', '2024-04-25 11:25:36'),
(1098, 2746, 'BOOONGO', 'fortune-tiger', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-25 11:25:36', '2024-04-25 11:25:36'),
(1097, 2746, 'BOOONGO', 'fortune-tiger', 0.00, 600.00, 'BRL', 'wordslot', 'loss', '2024-04-25 11:25:31', '2024-04-25 11:25:31'),
(1096, 2746, 'BOOONGO', 'fortune-tiger', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-25 11:25:31', '2024-04-25 11:25:31'),
(1095, 2732, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-24 02:22:46', '2024-04-24 02:22:46'),
(1094, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:01:20', '2024-04-23 00:01:20'),
(1093, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:01:17', '2024-04-23 00:01:17'),
(1092, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:01:16', '2024-04-23 00:01:16'),
(1091, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:01:14', '2024-04-23 00:01:14'),
(1090, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:01:13', '2024-04-23 00:01:13'),
(1089, 2739, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:01:08', '2024-04-23 00:01:08'),
(1088, 2739, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:01:04', '2024-04-23 00:01:04'),
(1087, 2739, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:01:01', '2024-04-23 00:01:01'),
(1086, 2739, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:00:58', '2024-04-23 00:00:58'),
(1085, 2739, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:00:56', '2024-04-23 00:00:56'),
(1084, 2739, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:00:53', '2024-04-23 00:00:53'),
(1083, 2739, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:00:50', '2024-04-23 00:00:50'),
(1082, 2739, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:00:47', '2024-04-23 00:00:47'),
(1081, 2739, 'PGSOFT', 'fortune-dragon', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:00:34', '2024-04-23 00:00:34'),
(1080, 2739, 'PGSOFT', 'fortune-dragon', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:00:31', '2024-04-23 00:00:31'),
(1079, 2739, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:00:27', '2024-04-23 00:00:27'),
(1078, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:00:04', '2024-04-23 00:00:04'),
(1077, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-23 00:00:02', '2024-04-23 00:00:02'),
(1076, 2739, 'PGSOFT', 'fortune-rabbit', 0.00, 62.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:48', '2024-04-22 23:59:48'),
(1075, 2739, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:48', '2024-04-22 23:59:48'),
(1074, 2739, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:44', '2024-04-22 23:59:44'),
(1073, 2739, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:39', '2024-04-22 23:59:39'),
(1072, 2739, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:35', '2024-04-22 23:59:35'),
(1071, 2739, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:31', '2024-04-22 23:59:31'),
(1070, 2739, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:26', '2024-04-22 23:59:26'),
(1069, 2739, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:23', '2024-04-22 23:59:23'),
(1068, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:10', '2024-04-22 23:59:10'),
(1067, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 1.60, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:07', '2024-04-22 23:59:07'),
(1066, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:07', '2024-04-22 23:59:07'),
(1065, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:05', '2024-04-22 23:59:05'),
(1064, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:04', '2024-04-22 23:59:04'),
(1063, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:02', '2024-04-22 23:59:02'),
(1062, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:59:00', '2024-04-22 23:59:00'),
(1061, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:58', '2024-04-22 23:58:58'),
(1060, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:52', '2024-04-22 23:58:52'),
(1059, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:50', '2024-04-22 23:58:50'),
(1058, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:48', '2024-04-22 23:58:48'),
(1057, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:47', '2024-04-22 23:58:47'),
(1056, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:45', '2024-04-22 23:58:45'),
(1055, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:38', '2024-04-22 23:58:38'),
(1054, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:36', '2024-04-22 23:58:36'),
(1053, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:35', '2024-04-22 23:58:35'),
(1052, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:32', '2024-04-22 23:58:32'),
(1051, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:31', '2024-04-22 23:58:31'),
(1050, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:29', '2024-04-22 23:58:29'),
(1049, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:27', '2024-04-22 23:58:27'),
(1048, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:25', '2024-04-22 23:58:25'),
(1047, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:23', '2024-04-22 23:58:23'),
(1046, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:21', '2024-04-22 23:58:21'),
(1045, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:19', '2024-04-22 23:58:19'),
(1044, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:18', '2024-04-22 23:58:18'),
(1043, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:15', '2024-04-22 23:58:15'),
(1042, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:58:13', '2024-04-22 23:58:13'),
(1041, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:57:54', '2024-04-22 23:57:54'),
(1040, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:57:52', '2024-04-22 23:57:52'),
(1039, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:57:51', '2024-04-22 23:57:51'),
(1038, 2739, 'PGSOFT', 'fortune-rabbit', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:57:47', '2024-04-22 23:57:47'),
(1037, 2739, 'PGSOFT', 'fortune-rabbit', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:57:45', '2024-04-22 23:57:45'),
(1036, 2739, 'PGSOFT', 'fortune-rabbit', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:57:43', '2024-04-22 23:57:43'),
(1035, 2739, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:57:38', '2024-04-22 23:57:38'),
(1034, 2739, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:57:35', '2024-04-22 23:57:35'),
(1033, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 9.60, 'BRL', 'wordslot', 'loss', '2024-04-22 23:55:49', '2024-04-22 23:55:49'),
(1032, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:55:49', '2024-04-22 23:55:49'),
(1031, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:55:46', '2024-04-22 23:55:46'),
(1030, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 8.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:55:41', '2024-04-22 23:55:41'),
(1029, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:55:41', '2024-04-22 23:55:41'),
(1028, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 28.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:55:33', '2024-04-22 23:55:33'),
(1027, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:55:33', '2024-04-22 23:55:33'),
(1026, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 180.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:54:58', '2024-04-22 23:54:58'),
(1025, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:54:58', '2024-04-22 23:54:58'),
(1024, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:54:56', '2024-04-22 23:54:56'),
(1023, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:54:53', '2024-04-22 23:54:53'),
(1022, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:54:43', '2024-04-22 23:54:43'),
(1021, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 2.40, 'BRL', 'wordslot', 'loss', '2024-04-22 23:54:38', '2024-04-22 23:54:38'),
(1020, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:54:38', '2024-04-22 23:54:38'),
(1019, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:54:36', '2024-04-22 23:54:36'),
(1018, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:54:33', '2024-04-22 23:54:33'),
(1017, 2739, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 23:54:29', '2024-04-22 23:54:29'),
(1016, 2741, 'PGSOFT', 'fortune-dragon', 0.40, 0.40, 'BRL', 'wordslot', 'loss', '2024-04-22 19:14:26', '2024-04-22 19:14:26'),
(1015, 2741, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:14:26', '2024-04-22 19:14:26'),
(1014, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:05:35', '2024-04-22 19:05:35'),
(1013, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:05:33', '2024-04-22 19:05:33'),
(1012, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 1.20, 'BRL', 'wordslot', 'loss', '2024-04-22 19:05:27', '2024-04-22 19:05:27'),
(1011, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:05:27', '2024-04-22 19:05:27'),
(1010, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-04-22 19:05:12', '2024-04-22 19:05:12'),
(1009, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:05:12', '2024-04-22 19:05:12'),
(1008, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:05:09', '2024-04-22 19:05:09'),
(1007, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 6.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:05:02', '2024-04-22 19:05:02'),
(1006, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:05:02', '2024-04-22 19:05:02'),
(1005, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:48', '2024-04-22 19:04:48'),
(1004, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:48', '2024-04-22 19:04:48'),
(1003, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 1.20, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:42', '2024-04-22 19:04:42'),
(1002, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:42', '2024-04-22 19:04:42'),
(1001, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.64, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:29', '2024-04-22 19:04:29'),
(1000, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:29', '2024-04-22 19:04:29'),
(999, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:26', '2024-04-22 19:04:26'),
(998, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:23', '2024-04-22 19:04:23'),
(997, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:20', '2024-04-22 19:04:20'),
(996, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:17', '2024-04-22 19:04:17'),
(995, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:14', '2024-04-22 19:04:14'),
(994, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:11', '2024-04-22 19:04:11'),
(993, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:04:06', '2024-04-22 19:04:06'),
(992, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 2.40, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:59', '2024-04-22 19:03:59'),
(991, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:59', '2024-04-22 19:03:59'),
(990, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.48, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:46', '2024-04-22 19:03:46'),
(989, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:46', '2024-04-22 19:03:46'),
(988, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:43', '2024-04-22 19:03:43'),
(987, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:40', '2024-04-22 19:03:40'),
(986, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:37', '2024-04-22 19:03:37'),
(985, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:34', '2024-04-22 19:03:34'),
(984, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:32', '2024-04-22 19:03:32'),
(983, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:28', '2024-04-22 19:03:28'),
(982, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 1.20, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:22', '2024-04-22 19:03:22'),
(981, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:22', '2024-04-22 19:03:22'),
(980, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.80, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:09', '2024-04-22 19:03:09'),
(979, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:09', '2024-04-22 19:03:09'),
(978, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:07', '2024-04-22 19:03:07'),
(977, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:03:04', '2024-04-22 19:03:04'),
(976, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.72, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:58', '2024-04-22 19:02:58'),
(975, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:58', '2024-04-22 19:02:58'),
(974, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:45', '2024-04-22 19:02:45'),
(973, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:45', '2024-04-22 19:02:45'),
(972, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:42', '2024-04-22 19:02:42'),
(971, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:39', '2024-04-22 19:02:39'),
(970, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:36', '2024-04-22 19:02:36'),
(969, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:33', '2024-04-22 19:02:33'),
(968, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 1.20, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:27', '2024-04-22 19:02:27'),
(967, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:27', '2024-04-22 19:02:27'),
(966, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.72, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:09', '2024-04-22 19:02:09'),
(965, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:02:09', '2024-04-22 19:02:09'),
(964, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-22 19:01:50', '2024-04-22 19:01:50'),
(963, 2743, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-21 00:33:49', '2024-04-21 00:33:49'),
(962, 2743, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-21 00:33:46', '2024-04-21 00:33:46'),
(961, 2743, 'PGSoft_Slot', 'Fortune Rabbit', 5.00, 0.00, 'BRL', 'evergame', 'loss', '2024-04-21 00:07:11', '2024-04-21 00:07:11'),
(960, 2743, 'PGSoft_Slot', 'Fortune Rabbit', 5.00, 0.00, 'BRL', 'evergame', 'loss', '2024-04-21 00:07:07', '2024-04-21 00:07:07'),
(959, 2732, 'PRAGMATIC', 'Gates of Olympus', 2.50, 0.00, 'BRL', 'evergame', 'loss', '2024-04-21 00:05:15', '2024-04-21 00:05:15'),
(958, 2732, 'PRAGMATIC', 'Gates of Olympus', 2.50, 0.00, 'BRL', 'evergame', 'loss', '2024-04-21 00:05:08', '2024-04-21 00:05:08'),
(957, 2743, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:56:24', '2024-04-20 23:56:24'),
(956, 2743, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:54:32', '2024-04-20 23:54:32'),
(955, 2743, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:58', '2024-04-20 23:49:58'),
(954, 2743, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:56', '2024-04-20 23:49:56'),
(953, 2743, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:52', '2024-04-20 23:49:52'),
(952, 2743, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:49', '2024-04-20 23:49:49'),
(951, 2743, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:45', '2024-04-20 23:49:45'),
(950, 2743, 'PGSOFT', 'fortune-rabbit', 0.00, 6.20, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:33', '2024-04-20 23:49:33'),
(949, 2743, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:33', '2024-04-20 23:49:33'),
(948, 2743, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:28', '2024-04-20 23:49:28'),
(947, 2743, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:24', '2024-04-20 23:49:24'),
(946, 2743, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:20', '2024-04-20 23:49:20'),
(945, 2743, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:16', '2024-04-20 23:49:16'),
(944, 2743, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:12', '2024-04-20 23:49:12'),
(943, 2743, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:49:08', '2024-04-20 23:49:08'),
(942, 2743, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:48:55', '2024-04-20 23:48:55'),
(941, 2743, 'PGSOFT', 'fortune-rabbit', 0.40, 0.48, 'BRL', 'wordslot', 'loss', '2024-04-20 23:47:28', '2024-04-20 23:47:28'),
(940, 2743, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:47:28', '2024-04-20 23:47:28'),
(939, 2743, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:46:05', '2024-04-20 23:46:05'),
(938, 2740, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:10:27', '2024-04-20 23:10:27'),
(937, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:06:01', '2024-04-20 23:06:01'),
(936, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:59', '2024-04-20 23:05:59'),
(935, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 1140.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:47', '2024-04-20 23:05:47'),
(934, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:47', '2024-04-20 23:05:47'),
(933, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:43', '2024-04-20 23:05:43'),
(932, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:39', '2024-04-20 23:05:39'),
(931, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:35', '2024-04-20 23:05:35'),
(930, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:30', '2024-04-20 23:05:30'),
(929, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:26', '2024-04-20 23:05:26'),
(928, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:22', '2024-04-20 23:05:22'),
(927, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:10', '2024-04-20 23:05:10'),
(926, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 72.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:07', '2024-04-20 23:05:07'),
(925, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:07', '2024-04-20 23:05:07'),
(924, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:04', '2024-04-20 23:05:04'),
(923, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:05:02', '2024-04-20 23:05:02'),
(922, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 1860.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:50', '2024-04-20 23:04:50'),
(921, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:50', '2024-04-20 23:04:50'),
(920, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:46', '2024-04-20 23:04:46'),
(919, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:42', '2024-04-20 23:04:42'),
(918, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:38', '2024-04-20 23:04:38'),
(917, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:34', '2024-04-20 23:04:34'),
(916, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:29', '2024-04-20 23:04:29'),
(915, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:25', '2024-04-20 23:04:25'),
(914, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:13', '2024-04-20 23:04:13'),
(913, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 216.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:10', '2024-04-20 23:04:10'),
(912, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:10', '2024-04-20 23:04:10'),
(911, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:08', '2024-04-20 23:04:08'),
(910, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:05', '2024-04-20 23:04:05'),
(909, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:03', '2024-04-20 23:04:03'),
(908, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:04:00', '2024-04-20 23:04:00'),
(907, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:58', '2024-04-20 23:03:58'),
(906, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:52', '2024-04-20 23:03:52'),
(905, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:49', '2024-04-20 23:03:49'),
(904, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:47', '2024-04-20 23:03:47'),
(903, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:44', '2024-04-20 23:03:44'),
(902, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:41', '2024-04-20 23:03:41'),
(901, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:39', '2024-04-20 23:03:39'),
(900, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:36', '2024-04-20 23:03:36'),
(899, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:34', '2024-04-20 23:03:34'),
(898, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:31', '2024-04-20 23:03:31'),
(897, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:29', '2024-04-20 23:03:29'),
(896, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:26', '2024-04-20 23:03:26'),
(895, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:24', '2024-04-20 23:03:24'),
(894, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:21', '2024-04-20 23:03:21'),
(893, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:19', '2024-04-20 23:03:19'),
(892, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:16', '2024-04-20 23:03:16'),
(891, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 1140.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:05', '2024-04-20 23:03:05'),
(890, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:05', '2024-04-20 23:03:05');
INSERT INTO `ggr_games` (`id`, `user_id`, `provider`, `game`, `balance_bet`, `balance_win`, `currency`, `aggregator`, `type`, `created_at`, `updated_at`) VALUES
(889, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:03:01', '2024-04-20 23:03:01'),
(888, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:57', '2024-04-20 23:02:57'),
(887, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:52', '2024-04-20 23:02:52'),
(886, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:48', '2024-04-20 23:02:48'),
(885, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:44', '2024-04-20 23:02:44'),
(884, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:40', '2024-04-20 23:02:40'),
(883, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:28', '2024-04-20 23:02:28'),
(882, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 432.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:24', '2024-04-20 23:02:24'),
(881, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:24', '2024-04-20 23:02:24'),
(880, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:22', '2024-04-20 23:02:22'),
(879, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:19', '2024-04-20 23:02:19'),
(878, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:17', '2024-04-20 23:02:17'),
(877, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:14', '2024-04-20 23:02:14'),
(876, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:12', '2024-04-20 23:02:12'),
(875, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:09', '2024-04-20 23:02:09'),
(874, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:07', '2024-04-20 23:02:07'),
(873, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:05', '2024-04-20 23:02:05'),
(872, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:02:02', '2024-04-20 23:02:02'),
(871, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:59', '2024-04-20 23:01:59'),
(870, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 1860.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:48', '2024-04-20 23:01:48'),
(869, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:48', '2024-04-20 23:01:48'),
(868, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:44', '2024-04-20 23:01:44'),
(867, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:39', '2024-04-20 23:01:39'),
(866, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:35', '2024-04-20 23:01:35'),
(865, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:31', '2024-04-20 23:01:31'),
(864, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:27', '2024-04-20 23:01:27'),
(863, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:23', '2024-04-20 23:01:23'),
(862, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:11', '2024-04-20 23:01:11'),
(861, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 216.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:07', '2024-04-20 23:01:07'),
(860, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:07', '2024-04-20 23:01:07'),
(859, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:05', '2024-04-20 23:01:05'),
(858, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:02', '2024-04-20 23:01:02'),
(857, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:01:00', '2024-04-20 23:01:00'),
(856, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:57', '2024-04-20 23:00:57'),
(855, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:54', '2024-04-20 23:00:54'),
(854, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:51', '2024-04-20 23:00:51'),
(853, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:49', '2024-04-20 23:00:49'),
(852, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:46', '2024-04-20 23:00:46'),
(851, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:43', '2024-04-20 23:00:43'),
(850, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:41', '2024-04-20 23:00:41'),
(849, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 1380.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:23', '2024-04-20 23:00:23'),
(848, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:23', '2024-04-20 23:00:23'),
(847, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:18', '2024-04-20 23:00:18'),
(846, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:14', '2024-04-20 23:00:14'),
(845, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:10', '2024-04-20 23:00:10'),
(844, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:06', '2024-04-20 23:00:06'),
(843, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 23:00:02', '2024-04-20 23:00:02'),
(842, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 1440.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:59:55', '2024-04-20 22:59:55'),
(841, 2740, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:59:55', '2024-04-20 22:59:55'),
(840, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:59:42', '2024-04-20 22:59:42'),
(839, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 144.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:59:39', '2024-04-20 22:59:39'),
(838, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:59:39', '2024-04-20 22:59:39'),
(837, 2740, 'PGSOFT', 'fortune-rabbit', 120.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:59:28', '2024-04-20 22:59:28'),
(836, 2740, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:59:05', '2024-04-20 22:59:05'),
(835, 2740, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:59:03', '2024-04-20 22:59:03'),
(834, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:44:18', '2024-04-20 22:44:18'),
(833, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:44:17', '2024-04-20 22:44:17'),
(832, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:44:10', '2024-04-20 22:44:10'),
(831, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:44:08', '2024-04-20 22:44:08'),
(830, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:44:07', '2024-04-20 22:44:07'),
(829, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:44:06', '2024-04-20 22:44:06'),
(828, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:44:02', '2024-04-20 22:44:02'),
(827, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:44:01', '2024-04-20 22:44:01'),
(826, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:59', '2024-04-20 22:43:59'),
(825, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:57', '2024-04-20 22:43:57'),
(824, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:56', '2024-04-20 22:43:56'),
(823, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 135.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:50', '2024-04-20 22:43:50'),
(822, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:50', '2024-04-20 22:43:50'),
(821, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 27.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:39', '2024-04-20 22:43:39'),
(820, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:39', '2024-04-20 22:43:39'),
(819, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:37', '2024-04-20 22:43:37'),
(818, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:34', '2024-04-20 22:43:34'),
(817, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:33', '2024-04-20 22:43:33'),
(816, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:32', '2024-04-20 22:43:32'),
(815, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:28', '2024-04-20 22:43:28'),
(814, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:24', '2024-04-20 22:43:24'),
(813, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:23', '2024-04-20 22:43:23'),
(812, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:21', '2024-04-20 22:43:21'),
(811, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:16', '2024-04-20 22:43:16'),
(810, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:15', '2024-04-20 22:43:15'),
(809, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:13', '2024-04-20 22:43:13'),
(808, 2741, 'PGSOFT', 'fortune-tiger', 45.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:12', '2024-04-20 22:43:12'),
(807, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:07', '2024-04-20 22:43:07'),
(806, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 72.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:01', '2024-04-20 22:43:01'),
(805, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:43:01', '2024-04-20 22:43:01'),
(804, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 24.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:50', '2024-04-20 22:42:50'),
(803, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:50', '2024-04-20 22:42:50'),
(802, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:49', '2024-04-20 22:42:49'),
(801, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 72.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:43', '2024-04-20 22:42:43'),
(800, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:43', '2024-04-20 22:42:43'),
(799, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 48.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:31', '2024-04-20 22:42:31'),
(798, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:31', '2024-04-20 22:42:31'),
(797, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:30', '2024-04-20 22:42:30'),
(796, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:29', '2024-04-20 22:42:29'),
(795, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:28', '2024-04-20 22:42:28'),
(794, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:26', '2024-04-20 22:42:26'),
(793, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:24', '2024-04-20 22:42:24'),
(792, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:23', '2024-04-20 22:42:23'),
(791, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:22', '2024-04-20 22:42:22'),
(790, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:18', '2024-04-20 22:42:18'),
(789, 2741, 'PGSOFT', 'fortune-tiger', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:16', '2024-04-20 22:42:16'),
(788, 2741, 'PGSOFT', 'fortune-tiger', 500.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:12', '2024-04-20 22:42:12'),
(787, 2741, 'PGSOFT', 'fortune-tiger', 500.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:09', '2024-04-20 22:42:09'),
(786, 2741, 'PGSOFT', 'fortune-tiger', 60.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:03', '2024-04-20 22:42:03'),
(785, 2741, 'PGSOFT', 'fortune-tiger', 60.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:02', '2024-04-20 22:42:02'),
(784, 2741, 'PGSOFT', 'fortune-tiger', 60.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:01', '2024-04-20 22:42:01'),
(783, 2741, 'PGSOFT', 'fortune-tiger', 60.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:42:00', '2024-04-20 22:42:00'),
(782, 2741, 'PGSOFT', 'fortune-tiger', 60.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:59', '2024-04-20 22:41:59'),
(781, 2741, 'PGSOFT', 'fortune-tiger', 60.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:57', '2024-04-20 22:41:57'),
(780, 2741, 'PGSOFT', 'fortune-tiger', 60.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:56', '2024-04-20 22:41:56'),
(779, 2741, 'PGSOFT', 'fortune-tiger', 60.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:55', '2024-04-20 22:41:55'),
(778, 2741, 'PGSOFT', 'fortune-tiger', 60.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:53', '2024-04-20 22:41:53'),
(777, 2741, 'PGSOFT', 'fortune-tiger', 60.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:52', '2024-04-20 22:41:52'),
(776, 2741, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:48', '2024-04-20 22:41:48'),
(775, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:43', '2024-04-20 22:41:43'),
(774, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:39', '2024-04-20 22:41:39'),
(773, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:37', '2024-04-20 22:41:37'),
(772, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:36', '2024-04-20 22:41:36'),
(771, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:35', '2024-04-20 22:41:35'),
(770, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:33', '2024-04-20 22:41:33'),
(769, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:32', '2024-04-20 22:41:32'),
(768, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:31', '2024-04-20 22:41:31'),
(767, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:30', '2024-04-20 22:41:30'),
(766, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:29', '2024-04-20 22:41:29'),
(765, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:28', '2024-04-20 22:41:28'),
(764, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:26', '2024-04-20 22:41:26'),
(763, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:25', '2024-04-20 22:41:25'),
(762, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:24', '2024-04-20 22:41:24'),
(761, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:22', '2024-04-20 22:41:22'),
(760, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:21', '2024-04-20 22:41:21'),
(759, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:20', '2024-04-20 22:41:20'),
(758, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:18', '2024-04-20 22:41:18'),
(757, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:16', '2024-04-20 22:41:16'),
(756, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:15', '2024-04-20 22:41:15'),
(755, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:14', '2024-04-20 22:41:14'),
(754, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:10', '2024-04-20 22:41:10'),
(753, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:09', '2024-04-20 22:41:09'),
(752, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:05', '2024-04-20 22:41:05'),
(751, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:03', '2024-04-20 22:41:03'),
(750, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:41:02', '2024-04-20 22:41:02'),
(749, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 72.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:57', '2024-04-20 22:40:57'),
(748, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:57', '2024-04-20 22:40:57'),
(747, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 12.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:44', '2024-04-20 22:40:44'),
(746, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:44', '2024-04-20 22:40:44'),
(745, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:33', '2024-04-20 22:40:33'),
(744, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:31', '2024-04-20 22:40:31'),
(743, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:27', '2024-04-20 22:40:27'),
(742, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:25', '2024-04-20 22:40:25'),
(741, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:24', '2024-04-20 22:40:24'),
(740, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:22', '2024-04-20 22:40:22'),
(739, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:20', '2024-04-20 22:40:20'),
(738, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:19', '2024-04-20 22:40:19'),
(737, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:15', '2024-04-20 22:40:15'),
(736, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:14', '2024-04-20 22:40:14'),
(735, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:13', '2024-04-20 22:40:13'),
(734, 2741, 'PGSOFT', 'fortune-tiger', 12.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:40:12', '2024-04-20 22:40:12'),
(733, 2741, 'PGSOFT', 'fortune-dragon', 0.00, 1.28, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:54', '2024-04-20 22:39:54'),
(732, 2741, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:54', '2024-04-20 22:39:54'),
(731, 2741, 'PGSOFT', 'fortune-dragon', 0.00, 0.96, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:49', '2024-04-20 22:39:49'),
(730, 2741, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:49', '2024-04-20 22:39:49'),
(729, 2741, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:47', '2024-04-20 22:39:47'),
(728, 2741, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:44', '2024-04-20 22:39:44'),
(727, 2741, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:42', '2024-04-20 22:39:42'),
(726, 2741, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:40', '2024-04-20 22:39:40'),
(725, 2741, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:38', '2024-04-20 22:39:38'),
(724, 2741, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:28', '2024-04-20 22:39:28'),
(723, 2741, 'PGSOFT', 'fortune-dragon', 0.40, 0.80, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:24', '2024-04-20 22:39:24'),
(722, 2741, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:24', '2024-04-20 22:39:24'),
(721, 2741, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:39:21', '2024-04-20 22:39:21'),
(720, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 11.20, 'BRL', 'wordslot', 'loss', '2024-04-20 22:23:12', '2024-04-20 22:23:12'),
(719, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:23:12', '2024-04-20 22:23:12'),
(718, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:23:08', '2024-04-20 22:23:08'),
(717, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:23:03', '2024-04-20 22:23:03'),
(716, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:59', '2024-04-20 22:22:59'),
(715, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:55', '2024-04-20 22:22:55'),
(714, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:51', '2024-04-20 22:22:51'),
(713, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:47', '2024-04-20 22:22:47'),
(712, 2742, 'PGSOFT', 'fortune-rabbit', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:35', '2024-04-20 22:22:35'),
(711, 2742, 'PGSOFT', 'fortune-rabbit', 0.80, 0.48, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:31', '2024-04-20 22:22:31'),
(710, 2742, 'PGSOFT', 'fortune-rabbit', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:31', '2024-04-20 22:22:31'),
(709, 2742, 'PGSOFT', 'fortune-rabbit', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:27', '2024-04-20 22:22:27'),
(708, 2742, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:24', '2024-04-20 22:22:24'),
(707, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 6.20, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:12', '2024-04-20 22:22:12'),
(706, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:12', '2024-04-20 22:22:12'),
(705, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:08', '2024-04-20 22:22:08'),
(704, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:22:04', '2024-04-20 22:22:04'),
(703, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:21:59', '2024-04-20 22:21:59'),
(702, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:21:55', '2024-04-20 22:21:55'),
(701, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:21:51', '2024-04-20 22:21:51'),
(700, 2742, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:21:47', '2024-04-20 22:21:47'),
(699, 2742, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:21:35', '2024-04-20 22:21:35'),
(698, 2742, 'PGSOFT', 'fortune-rabbit', 0.40, 0.80, 'BRL', 'wordslot', 'loss', '2024-04-20 22:21:30', '2024-04-20 22:21:30'),
(697, 2742, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:21:30', '2024-04-20 22:21:30'),
(696, 2732, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-04-20 22:20:03', '2024-04-20 22:20:03'),
(695, 2732, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:20:03', '2024-04-20 22:20:03'),
(694, 2732, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:20:01', '2024-04-20 22:20:01'),
(693, 2732, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 22:19:57', '2024-04-20 22:19:57'),
(692, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:52:50', '2024-04-20 15:52:50'),
(691, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:52:46', '2024-04-20 15:52:46'),
(690, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:52:44', '2024-04-20 15:52:44'),
(689, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:52:42', '2024-04-20 15:52:42'),
(688, 2739, 'PGSOFT', 'fortune-rabbit', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:52:39', '2024-04-20 15:52:39'),
(687, 2739, 'PGSOFT', 'fortune-rabbit', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:52:35', '2024-04-20 15:52:35'),
(686, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 2.88, 'BRL', 'wordslot', 'loss', '2024-04-20 15:51:33', '2024-04-20 15:51:33'),
(685, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:51:33', '2024-04-20 15:51:33'),
(684, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 19.20, 'BRL', 'wordslot', 'loss', '2024-04-20 15:51:25', '2024-04-20 15:51:25'),
(683, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:51:25', '2024-04-20 15:51:25'),
(682, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:51:23', '2024-04-20 15:51:23'),
(681, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:51:21', '2024-04-20 15:51:21'),
(680, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:51:19', '2024-04-20 15:51:19'),
(679, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:51:17', '2024-04-20 15:51:17'),
(678, 2739, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:51:15', '2024-04-20 15:51:15'),
(677, 2739, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:17:15', '2024-04-20 15:17:15'),
(676, 2739, 'PGSOFT', 'fortune-dragon', 1.20, 0.72, 'BRL', 'wordslot', 'loss', '2024-04-20 15:17:11', '2024-04-20 15:17:11'),
(675, 2739, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:17:11', '2024-04-20 15:17:11'),
(674, 2739, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:17:08', '2024-04-20 15:17:08'),
(673, 2739, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:17:03', '2024-04-20 15:17:03'),
(672, 2739, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:16:18', '2024-04-20 15:16:18'),
(671, 2739, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:16:13', '2024-04-20 15:16:13'),
(670, 2739, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:16:10', '2024-04-20 15:16:10'),
(669, 2739, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:16:06', '2024-04-20 15:16:06'),
(668, 2739, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:16:03', '2024-04-20 15:16:03'),
(667, 2739, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:07:16', '2024-04-20 15:07:16'),
(666, 2739, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-20 15:07:13', '2024-04-20 15:07:13'),
(1290, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 7500.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:19:20', '2024-04-30 20:19:20'),
(1291, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:19:49', '2024-04-30 20:19:49'),
(1292, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:19:50', '2024-04-30 20:19:50'),
(1293, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:19:51', '2024-04-30 20:19:51'),
(1294, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 75.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:19:51', '2024-04-30 20:19:51'),
(1295, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:02', '2024-04-30 20:20:02'),
(1296, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 2250.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:02', '2024-04-30 20:20:02'),
(1297, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:42', '2024-04-30 20:20:42'),
(1298, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:43', '2024-04-30 20:20:43'),
(1299, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:50', '2024-04-30 20:20:50'),
(1300, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:51', '2024-04-30 20:20:51'),
(1301, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:52', '2024-04-30 20:20:52'),
(1302, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:53', '2024-04-30 20:20:53'),
(1303, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:54', '2024-04-30 20:20:54'),
(1304, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:56', '2024-04-30 20:20:56'),
(1305, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:57', '2024-04-30 20:20:57'),
(1306, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:20:58', '2024-04-30 20:20:58'),
(1307, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:28:59', '2024-04-30 20:28:59'),
(1308, 2752, 'PGSOFT', 'fortune-tiger', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:29:01', '2024-04-30 20:29:01'),
(1309, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:33:38', '2024-04-30 20:33:38'),
(1310, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:33:40', '2024-04-30 20:33:40'),
(1311, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:33:42', '2024-04-30 20:33:42'),
(1312, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:33:43', '2024-04-30 20:33:43'),
(1313, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 2.40, 'BRL', 'wordslot', 'loss', '2024-04-30 20:33:43', '2024-04-30 20:33:43'),
(1314, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:33:54', '2024-04-30 20:33:54'),
(1315, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 7.20, 'BRL', 'wordslot', 'loss', '2024-04-30 20:33:54', '2024-04-30 20:33:54'),
(1316, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:00', '2024-04-30 20:34:00'),
(1317, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:01', '2024-04-30 20:34:01'),
(1318, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:03', '2024-04-30 20:34:03'),
(1319, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:04', '2024-04-30 20:34:04'),
(1320, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:05', '2024-04-30 20:34:05'),
(1321, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:09', '2024-04-30 20:34:09'),
(1322, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 2.40, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:09', '2024-04-30 20:34:09'),
(1323, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:20', '2024-04-30 20:34:20'),
(1324, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 24.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:20', '2024-04-30 20:34:20'),
(1325, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:29', '2024-04-30 20:34:29'),
(1326, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:30', '2024-04-30 20:34:30'),
(1327, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:31', '2024-04-30 20:34:31'),
(1328, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:33', '2024-04-30 20:34:33'),
(1329, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:34', '2024-04-30 20:34:34'),
(1330, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:35', '2024-04-30 20:34:35'),
(1331, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:37', '2024-04-30 20:34:37'),
(1332, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:38', '2024-04-30 20:34:38'),
(1333, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:39', '2024-04-30 20:34:39'),
(1334, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:43', '2024-04-30 20:34:43'),
(1335, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 4.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:43', '2024-04-30 20:34:43'),
(1336, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:54', '2024-04-30 20:34:54'),
(1337, 2753, 'PGSOFT', 'fortune-tiger', 4.00, 160.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:34:54', '2024-04-30 20:34:54'),
(1338, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:21', '2024-04-30 20:39:21'),
(1339, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:30', '2024-04-30 20:39:30'),
(1340, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:31', '2024-04-30 20:39:31'),
(1341, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:32', '2024-04-30 20:39:32'),
(1342, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 4.80, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:32', '2024-04-30 20:39:32'),
(1343, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:36', '2024-04-30 20:39:36'),
(1344, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:45', '2024-04-30 20:39:45'),
(1345, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:47', '2024-04-30 20:39:47'),
(1346, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:49', '2024-04-30 20:39:49'),
(1347, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:51', '2024-04-30 20:39:51'),
(1348, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:53', '2024-04-30 20:39:53'),
(1349, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:55', '2024-04-30 20:39:55'),
(1350, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 64.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:39:55', '2024-04-30 20:39:55'),
(1351, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:40:03', '2024-04-30 20:40:03'),
(1352, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 9.60, 'BRL', 'wordslot', 'loss', '2024-04-30 20:40:03', '2024-04-30 20:40:03'),
(1353, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:40:41', '2024-04-30 20:40:41'),
(1354, 2752, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:46:13', '2024-04-30 20:46:13'),
(1355, 2752, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:46:17', '2024-04-30 20:46:17'),
(1356, 2752, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:46:41', '2024-04-30 20:46:41'),
(1357, 2752, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:46:57', '2024-04-30 20:46:57'),
(1358, 2752, 'PGSOFT', 'fortune-dragon', 0.40, 8.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:46:57', '2024-04-30 20:46:57'),
(1359, 2752, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:47:19', '2024-04-30 20:47:19'),
(1360, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:49:42', '2024-04-30 20:49:42'),
(1361, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 32.00, 'BRL', 'wordslot', 'loss', '2024-04-30 20:49:42', '2024-04-30 20:49:42'),
(1362, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:06:07', '2024-04-30 21:06:07'),
(1363, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:06:10', '2024-04-30 21:06:10'),
(1364, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:06:11', '2024-04-30 21:06:11'),
(1365, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:06:12', '2024-04-30 21:06:12'),
(1366, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:06:13', '2024-04-30 21:06:13'),
(1367, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:06:14', '2024-04-30 21:06:14'),
(1368, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:06:15', '2024-04-30 21:06:15'),
(1369, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 1200.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:06:15', '2024-04-30 21:06:15'),
(1370, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:19:10', '2024-04-30 21:19:10'),
(1371, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 16.80, 'BRL', 'wordslot', 'loss', '2024-04-30 21:19:10', '2024-04-30 21:19:10'),
(1372, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:19:15', '2024-04-30 21:19:15'),
(1373, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:19:17', '2024-04-30 21:19:17'),
(1374, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:19:20', '2024-04-30 21:19:20'),
(1375, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:19:22', '2024-04-30 21:19:22'),
(1376, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:19:24', '2024-04-30 21:19:24'),
(1377, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 38.40, 'BRL', 'wordslot', 'loss', '2024-04-30 21:19:24', '2024-04-30 21:19:24'),
(1378, 2752, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:23:49', '2024-04-30 21:23:49'),
(1379, 2752, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:23:52', '2024-04-30 21:23:52'),
(1380, 2752, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:23:59', '2024-04-30 21:23:59'),
(1381, 2752, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:00', '2024-04-30 21:24:00'),
(1382, 2752, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:01', '2024-04-30 21:24:01'),
(1383, 2752, 'PGSOFT', 'fortune-dragon', 4.00, 4.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:01', '2024-04-30 21:24:01'),
(1384, 2752, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:02', '2024-04-30 21:24:02'),
(1385, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:20', '2024-04-30 21:24:20'),
(1386, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:22', '2024-04-30 21:24:22'),
(1387, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 160.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:22', '2024-04-30 21:24:22'),
(1388, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:36', '2024-04-30 21:24:36'),
(1389, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:38', '2024-04-30 21:24:38'),
(1390, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:40', '2024-04-30 21:24:40'),
(1391, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:43', '2024-04-30 21:24:43'),
(1392, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:45', '2024-04-30 21:24:45'),
(1393, 2752, 'PGSOFT', 'fortune-dragon', 0.00, 160.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:24:45', '2024-04-30 21:24:45'),
(1394, 2752, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:25:12', '2024-04-30 21:25:12'),
(1395, 2752, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:25:13', '2024-04-30 21:25:13'),
(1396, 2752, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:25:15', '2024-04-30 21:25:15'),
(1397, 2752, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:25:16', '2024-04-30 21:25:16'),
(1398, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 21:52:57', '2024-04-30 21:52:57'),
(1399, 2754, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 22:04:27', '2024-04-30 22:04:27'),
(1400, 2753, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:02', '2024-04-30 23:11:02'),
(1401, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:11', '2024-04-30 23:11:11'),
(1402, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:14', '2024-04-30 23:11:14'),
(1403, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:16', '2024-04-30 23:11:16'),
(1404, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:18', '2024-04-30 23:11:18'),
(1405, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:20', '2024-04-30 23:11:20'),
(1406, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:23', '2024-04-30 23:11:23'),
(1407, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 6.40, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:23', '2024-04-30 23:11:23'),
(1408, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:30', '2024-04-30 23:11:30'),
(1409, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.96, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:30', '2024-04-30 23:11:30'),
(1410, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:45', '2024-04-30 23:11:45'),
(1411, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:47', '2024-04-30 23:11:47'),
(1412, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:48', '2024-04-30 23:11:48'),
(1413, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:49', '2024-04-30 23:11:49'),
(1414, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:50', '2024-04-30 23:11:50'),
(1415, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:51', '2024-04-30 23:11:51'),
(1416, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:55', '2024-04-30 23:11:55'),
(1417, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:56', '2024-04-30 23:11:56'),
(1418, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 4.80, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:56', '2024-04-30 23:11:56'),
(1419, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:11:58', '2024-04-30 23:11:58'),
(1420, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:06', '2024-04-30 23:12:06'),
(1421, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:08', '2024-04-30 23:12:08'),
(1422, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:11', '2024-04-30 23:12:11'),
(1423, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:13', '2024-04-30 23:12:13'),
(1424, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:15', '2024-04-30 23:12:15'),
(1425, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:17', '2024-04-30 23:12:17'),
(1426, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 9.60, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:17', '2024-04-30 23:12:17'),
(1427, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:22', '2024-04-30 23:12:22'),
(1428, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 12.80, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:22', '2024-04-30 23:12:22'),
(1429, 2753, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:32', '2024-04-30 23:12:32'),
(1430, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:39', '2024-04-30 23:12:39'),
(1431, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:41', '2024-04-30 23:12:41'),
(1432, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:42', '2024-04-30 23:12:42'),
(1433, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:43', '2024-04-30 23:12:43'),
(1434, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:44', '2024-04-30 23:12:44'),
(1435, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 800.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:44', '2024-04-30 23:12:44'),
(1436, 2753, 'PGSOFT', 'fortune-dragon', 40.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:51', '2024-04-30 23:12:51'),
(1437, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:12:59', '2024-04-30 23:12:59'),
(1438, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:01', '2024-04-30 23:13:01'),
(1439, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:04', '2024-04-30 23:13:04'),
(1440, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:06', '2024-04-30 23:13:06'),
(1441, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:08', '2024-04-30 23:13:08'),
(1442, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:10', '2024-04-30 23:13:10'),
(1443, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:12', '2024-04-30 23:13:12'),
(1444, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 112.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:12', '2024-04-30 23:13:12'),
(1445, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:26', '2024-04-30 23:13:26'),
(1446, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 30.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:26', '2024-04-30 23:13:26'),
(1447, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:27', '2024-04-30 23:13:27'),
(1448, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:36', '2024-04-30 23:13:36'),
(1449, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:38', '2024-04-30 23:13:38'),
(1450, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:40', '2024-04-30 23:13:40'),
(1451, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:43', '2024-04-30 23:13:43'),
(1452, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:45', '2024-04-30 23:13:45'),
(1453, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:47', '2024-04-30 23:13:47'),
(1454, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:49', '2024-04-30 23:13:49'),
(1455, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 240.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:13:49', '2024-04-30 23:13:49'),
(1456, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:05', '2024-04-30 23:14:05'),
(1457, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:06', '2024-04-30 23:14:06'),
(1458, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:07', '2024-04-30 23:14:07'),
(1459, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:08', '2024-04-30 23:14:08'),
(1460, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:09', '2024-04-30 23:14:09'),
(1461, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:10', '2024-04-30 23:14:10'),
(1462, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:13', '2024-04-30 23:14:13'),
(1463, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:14', '2024-04-30 23:14:14'),
(1464, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:16', '2024-04-30 23:14:16');
INSERT INTO `ggr_games` (`id`, `user_id`, `provider`, `game`, `balance_bet`, `balance_win`, `currency`, `aggregator`, `type`, `created_at`, `updated_at`) VALUES
(1465, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:17', '2024-04-30 23:14:17'),
(1466, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:18', '2024-04-30 23:14:18'),
(1467, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:19', '2024-04-30 23:14:19'),
(1468, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:20', '2024-04-30 23:14:20'),
(1469, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:21', '2024-04-30 23:14:21'),
(1470, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:22', '2024-04-30 23:14:22'),
(1471, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:23', '2024-04-30 23:14:23'),
(1472, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:24', '2024-04-30 23:14:24'),
(1473, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:28', '2024-04-30 23:14:28'),
(1474, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:29', '2024-04-30 23:14:29'),
(1475, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:30', '2024-04-30 23:14:30'),
(1476, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:31', '2024-04-30 23:14:31'),
(1477, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:33', '2024-04-30 23:14:33'),
(1478, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:34', '2024-04-30 23:14:34'),
(1479, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:35', '2024-04-30 23:14:35'),
(1480, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:36', '2024-04-30 23:14:36'),
(1481, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:37', '2024-04-30 23:14:37'),
(1482, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:38', '2024-04-30 23:14:38'),
(1483, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:39', '2024-04-30 23:14:39'),
(1484, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:40', '2024-04-30 23:14:40'),
(1485, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:41', '2024-04-30 23:14:41'),
(1486, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:42', '2024-04-30 23:14:42'),
(1487, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:44', '2024-04-30 23:14:44'),
(1488, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:45', '2024-04-30 23:14:45'),
(1489, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:46', '2024-04-30 23:14:46'),
(1490, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:47', '2024-04-30 23:14:47'),
(1491, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:48', '2024-04-30 23:14:48'),
(1492, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 400.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:48', '2024-04-30 23:14:48'),
(1493, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:14:53', '2024-04-30 23:14:53'),
(1494, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:15:02', '2024-04-30 23:15:02'),
(1495, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:15:04', '2024-04-30 23:15:04'),
(1496, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:15:06', '2024-04-30 23:15:06'),
(1497, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:15:08', '2024-04-30 23:15:08'),
(1498, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:15:11', '2024-04-30 23:15:11'),
(1499, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:15:13', '2024-04-30 23:15:13'),
(1500, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:15:15', '2024-04-30 23:15:15'),
(1501, 2753, 'PGSOFT', 'fortune-dragon', 0.00, 240.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:15:15', '2024-04-30 23:15:15'),
(1502, 2753, 'PGSOFT', 'fortune-dragon', 50.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:15:26', '2024-04-30 23:15:26'),
(1503, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:19:10', '2024-04-30 23:19:10'),
(1504, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:19:32', '2024-04-30 23:19:32'),
(1505, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.40, 'BRL', 'wordslot', 'loss', '2024-04-30 23:19:32', '2024-04-30 23:19:32'),
(1506, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:20:25', '2024-04-30 23:20:25'),
(1507, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 20.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:20:25', '2024-04-30 23:20:25'),
(1508, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:20:37', '2024-04-30 23:20:37'),
(1509, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:20:39', '2024-04-30 23:20:39'),
(1510, 2754, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:20:56', '2024-04-30 23:20:56'),
(1511, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:21:28', '2024-04-30 23:21:28'),
(1512, 2753, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:56:55', '2024-04-30 23:56:55'),
(1513, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:56:59', '2024-04-30 23:56:59'),
(1514, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:56:59', '2024-04-30 23:56:59'),
(1515, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:01', '2024-04-30 23:57:01'),
(1516, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:01', '2024-04-30 23:57:01'),
(1517, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:02', '2024-04-30 23:57:02'),
(1518, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:03', '2024-04-30 23:57:03'),
(1519, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 45.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:03', '2024-04-30 23:57:03'),
(1520, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:26', '2024-04-30 23:57:26'),
(1521, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 3000.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:26', '2024-04-30 23:57:26'),
(1522, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:41', '2024-04-30 23:57:41'),
(1523, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:42', '2024-04-30 23:57:42'),
(1524, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:43', '2024-04-30 23:57:43'),
(1525, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:44', '2024-04-30 23:57:44'),
(1526, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:45', '2024-04-30 23:57:45'),
(1527, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:46', '2024-04-30 23:57:46'),
(1528, 2753, 'PGSOFT', 'fortune-mouse', 75.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:47', '2024-04-30 23:57:47'),
(1529, 2753, 'PGSOFT', 'fortune-mouse', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:50', '2024-04-30 23:57:50'),
(1530, 2753, 'PGSOFT', 'fortune-mouse', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:51', '2024-04-30 23:57:51'),
(1531, 2753, 'PGSOFT', 'fortune-mouse', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:52', '2024-04-30 23:57:52'),
(1532, 2753, 'PGSOFT', 'fortune-mouse', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:53', '2024-04-30 23:57:53'),
(1533, 2753, 'PGSOFT', 'fortune-mouse', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:54', '2024-04-30 23:57:54'),
(1534, 2753, 'PGSOFT', 'fortune-mouse', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:56', '2024-04-30 23:57:56'),
(1535, 2753, 'PGSOFT', 'fortune-mouse', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:56', '2024-04-30 23:57:56'),
(1536, 2753, 'PGSOFT', 'fortune-mouse', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:57', '2024-04-30 23:57:57'),
(1537, 2753, 'PGSOFT', 'fortune-mouse', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:58', '2024-04-30 23:57:58'),
(1538, 2753, 'PGSOFT', 'fortune-mouse', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:57:59', '2024-04-30 23:57:59'),
(1539, 2753, 'PGSOFT', 'fortune-mouse', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-04-30 23:58:00', '2024-04-30 23:58:00'),
(1540, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:20:29', '2024-05-01 01:20:29'),
(1541, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:20:38', '2024-05-01 01:20:38'),
(1542, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:20:48', '2024-05-01 01:20:48'),
(1543, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:20:58', '2024-05-01 01:20:58'),
(1544, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.48, 'BRL', 'wordslot', 'loss', '2024-05-01 01:20:58', '2024-05-01 01:20:58'),
(1545, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:21:26', '2024-05-01 01:21:26'),
(1546, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:21:40', '2024-05-01 01:21:40'),
(1547, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:21:43', '2024-05-01 01:21:43'),
(1548, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:21:45', '2024-05-01 01:21:45'),
(1549, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:21:47', '2024-05-01 01:21:47'),
(1550, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:21:50', '2024-05-01 01:21:50'),
(1551, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.40, 'BRL', 'wordslot', 'loss', '2024-05-01 01:21:50', '2024-05-01 01:21:50'),
(1552, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:22:20', '2024-05-01 01:22:20'),
(1553, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.72, 'BRL', 'wordslot', 'loss', '2024-05-01 01:22:20', '2024-05-01 01:22:20'),
(1554, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:22:43', '2024-05-01 01:22:43'),
(1555, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-05-01 01:22:43', '2024-05-01 01:22:43'),
(1556, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:23:04', '2024-05-01 01:23:04'),
(1557, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 1.92, 'BRL', 'wordslot', 'loss', '2024-05-01 01:23:04', '2024-05-01 01:23:04'),
(1558, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:23:16', '2024-05-01 01:23:16'),
(1559, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:23:45', '2024-05-01 01:23:45'),
(1560, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:23:48', '2024-05-01 01:23:48'),
(1561, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-05-01 01:23:48', '2024-05-01 01:23:48'),
(1562, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:27:01', '2024-05-01 01:27:01'),
(1563, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:27:03', '2024-05-01 01:27:03'),
(1564, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:27:08', '2024-05-01 01:27:08'),
(1565, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:27:10', '2024-05-01 01:27:10'),
(1566, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:27:12', '2024-05-01 01:27:12'),
(1567, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 0.50, 'BRL', 'wordslot', 'loss', '2024-05-01 01:27:12', '2024-05-01 01:27:12'),
(1568, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:27:39', '2024-05-01 01:27:39'),
(1569, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:27:42', '2024-05-01 01:27:42'),
(1570, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:27:45', '2024-05-01 01:27:45'),
(1571, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 0.50, 'BRL', 'wordslot', 'loss', '2024-05-01 01:27:45', '2024-05-01 01:27:45'),
(1572, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:30:02', '2024-05-01 01:30:02'),
(1573, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:30:05', '2024-05-01 01:30:05'),
(1574, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:30:07', '2024-05-01 01:30:07'),
(1575, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:30:09', '2024-05-01 01:30:09'),
(1576, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 2.40, 'BRL', 'wordslot', 'loss', '2024-05-01 01:30:09', '2024-05-01 01:30:09'),
(1577, 2739, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:38:04', '2024-05-01 01:38:04'),
(1578, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:45:41', '2024-05-01 01:45:41'),
(1579, 2754, 'PGSOFT', 'fortune-tiger', 0.40, 2.40, 'BRL', 'wordslot', 'loss', '2024-05-01 01:45:41', '2024-05-01 01:45:41'),
(1580, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:46:52', '2024-05-01 01:46:52'),
(1581, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:46:56', '2024-05-01 01:46:56'),
(1582, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:46:58', '2024-05-01 01:46:58'),
(1583, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:47:01', '2024-05-01 01:47:01'),
(1584, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:47:04', '2024-05-01 01:47:04'),
(1585, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:47:09', '2024-05-01 01:47:09'),
(1586, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:47:13', '2024-05-01 01:47:13'),
(1587, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:47:16', '2024-05-01 01:47:16'),
(1588, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:47:19', '2024-05-01 01:47:19'),
(1589, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:47:22', '2024-05-01 01:47:22'),
(1590, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:47:25', '2024-05-01 01:47:25'),
(1591, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-05-01 01:47:25', '2024-05-01 01:47:25'),
(1592, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:49:29', '2024-05-01 01:49:29'),
(1593, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:49:33', '2024-05-01 01:49:33'),
(1594, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:49:36', '2024-05-01 01:49:36'),
(1595, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:49:39', '2024-05-01 01:49:39'),
(1596, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:49:42', '2024-05-01 01:49:42'),
(1597, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 01:49:44', '2024-05-01 01:49:44'),
(1598, 2752, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:05:26', '2024-05-01 02:05:26'),
(1599, 2739, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:30:29', '2024-05-01 02:30:29'),
(1600, 2739, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:30:30', '2024-05-01 02:30:30'),
(1601, 2739, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:30:31', '2024-05-01 02:30:31'),
(1602, 2739, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:30:32', '2024-05-01 02:30:32'),
(1603, 2739, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:30:33', '2024-05-01 02:30:33'),
(1604, 2739, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:30:35', '2024-05-01 02:30:35'),
(1605, 2739, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:30:37', '2024-05-01 02:30:37'),
(1606, 2739, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:30:41', '2024-05-01 02:30:41'),
(1607, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:31:30', '2024-05-01 02:31:30'),
(1608, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:31:31', '2024-05-01 02:31:31'),
(1609, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:31:33', '2024-05-01 02:31:33'),
(1610, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:31:35', '2024-05-01 02:31:35'),
(1611, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:31:38', '2024-05-01 02:31:38'),
(1612, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:32:22', '2024-05-01 02:32:22'),
(1613, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:32:25', '2024-05-01 02:32:25'),
(1614, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:32:27', '2024-05-01 02:32:27'),
(1615, 2739, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:32:29', '2024-05-01 02:32:29'),
(1616, 2739, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:32:32', '2024-05-01 02:32:32'),
(1617, 2739, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:32:34', '2024-05-01 02:32:34'),
(1618, 2739, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:32:36', '2024-05-01 02:32:36'),
(1619, 2739, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-01 02:32:37', '2024-05-01 02:32:37'),
(1620, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-02 17:21:42', '2024-05-02 17:21:42'),
(1621, 2754, 'PGSOFT', 'fortune-mouse', 0.50, 10.00, 'BRL', 'wordslot', 'loss', '2024-05-02 17:21:42', '2024-05-02 17:21:42'),
(1622, 2769, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-04 00:10:09', '2024-05-04 00:10:09'),
(1623, 2769, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-04 00:10:10', '2024-05-04 00:10:10'),
(1624, 2769, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-04 00:10:11', '2024-05-04 00:10:11'),
(1625, 2769, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-04 00:10:12', '2024-05-04 00:10:12'),
(1626, 2769, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-04 00:10:13', '2024-05-04 00:10:13'),
(1627, 2769, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-04 00:10:15', '2024-05-04 00:10:15'),
(1628, 2738, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-04 00:42:44', '2024-05-04 00:42:44'),
(1629, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 14:31:56', '2024-05-10 14:31:56'),
(1630, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 19:01:09', '2024-05-10 19:01:09'),
(1631, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 19:02:30', '2024-05-10 19:02:30'),
(1632, 2776, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 23:58:24', '2024-05-10 23:58:24'),
(1633, 2776, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 23:59:42', '2024-05-10 23:59:42'),
(1634, 2776, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 23:59:46', '2024-05-10 23:59:46'),
(1635, 2776, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 23:59:47', '2024-05-10 23:59:47'),
(1636, 2776, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 23:59:48', '2024-05-10 23:59:48'),
(1637, 2776, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 23:59:49', '2024-05-10 23:59:49'),
(1638, 2776, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 23:59:50', '2024-05-10 23:59:50'),
(1639, 2776, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 23:59:51', '2024-05-10 23:59:51'),
(1640, 2776, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 23:59:52', '2024-05-10 23:59:52'),
(1641, 2776, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 23:59:53', '2024-05-10 23:59:53'),
(1642, 2776, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-10 23:59:54', '2024-05-10 23:59:54'),
(1643, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:03:42', '2024-05-11 18:03:42'),
(1644, 2754, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:03:44', '2024-05-11 18:03:44'),
(1645, 2777, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:09:48', '2024-05-11 18:09:48'),
(1646, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:18:43', '2024-05-11 18:18:43'),
(1647, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:18:45', '2024-05-11 18:18:45'),
(1648, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:18:46', '2024-05-11 18:18:46'),
(1649, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:18:46', '2024-05-11 18:18:46'),
(1650, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:19:06', '2024-05-11 18:19:06'),
(1651, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:19:07', '2024-05-11 18:19:07'),
(1652, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:19:08', '2024-05-11 18:19:08'),
(1653, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:19:11', '2024-05-11 18:19:11'),
(1654, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:19:13', '2024-05-11 18:19:13'),
(1655, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:19:15', '2024-05-11 18:19:15'),
(1656, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 18:19:43', '2024-05-11 18:19:43'),
(1657, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:02:39', '2024-05-11 19:02:39'),
(1658, 2778, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:02:41', '2024-05-11 19:02:41'),
(1659, 2778, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:03:57', '2024-05-11 19:03:57'),
(1660, 2778, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:03:58', '2024-05-11 19:03:58'),
(1661, 2778, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:04:02', '2024-05-11 19:04:02'),
(1662, 2777, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:04:54', '2024-05-11 19:04:54'),
(1663, 2777, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:05:21', '2024-05-11 19:05:21'),
(1664, 2777, 'PGSOFT', 'fortune-mouse', 2.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:05:25', '2024-05-11 19:05:25'),
(1665, 2777, 'PGSOFT', 'fortune-mouse', 2.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:05:27', '2024-05-11 19:05:27'),
(1666, 2777, 'PGSOFT', 'fortune-mouse', 2.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:05:28', '2024-05-11 19:05:28'),
(1667, 2777, 'PGSOFT', 'fortune-mouse', 2.50, 18.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:05:28', '2024-05-11 19:05:28'),
(1668, 2777, 'PGSOFT', 'fortune-mouse', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:05:37', '2024-05-11 19:05:37'),
(1669, 2777, 'PGSOFT', 'fortune-mouse', 1.00, 1.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:05:37', '2024-05-11 19:05:37'),
(1670, 2777, 'PGSOFT', 'fortune-mouse', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:05:41', '2024-05-11 19:05:41'),
(1671, 2777, 'PGSOFT', 'fortune-mouse', 1.00, 26.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:05:41', '2024-05-11 19:05:41'),
(1672, 2777, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:06:04', '2024-05-11 19:06:04'),
(1673, 2777, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:06:05', '2024-05-11 19:06:05'),
(1674, 2777, 'PGSOFT', 'fortune-dragon', 1.20, 4.80, 'BRL', 'wordslot', 'loss', '2024-05-11 19:06:05', '2024-05-11 19:06:05'),
(1675, 2777, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:06:11', '2024-05-11 19:06:11'),
(1676, 2777, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:06:12', '2024-05-11 19:06:12'),
(1677, 2777, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:06:14', '2024-05-11 19:06:14'),
(1678, 2777, 'PGSOFT', 'fortune-dragon', 1.20, 2.40, 'BRL', 'wordslot', 'loss', '2024-05-11 19:06:14', '2024-05-11 19:06:14'),
(1679, 2777, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:06:16', '2024-05-11 19:06:16'),
(1680, 2777, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:06:17', '2024-05-11 19:06:17'),
(1681, 2777, 'PGSOFT', 'fortune-dragon', 1.20, 24.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:06:17', '2024-05-11 19:06:17'),
(1682, 2777, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:23:22', '2024-05-11 19:23:22'),
(1683, 2777, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:23:24', '2024-05-11 19:23:24'),
(1684, 2777, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:23:26', '2024-05-11 19:23:26'),
(1685, 2777, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:23:34', '2024-05-11 19:23:34'),
(1686, 2777, 'PGSOFT', 'fortune-ox', 0.50, 2.25, 'BRL', 'wordslot', 'loss', '2024-05-11 19:23:34', '2024-05-11 19:23:34'),
(1687, 2777, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:23:38', '2024-05-11 19:23:38'),
(1688, 2777, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:23:39', '2024-05-11 19:23:39'),
(1689, 2777, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:23:41', '2024-05-11 19:23:41'),
(1690, 2777, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:23:43', '2024-05-11 19:23:43'),
(1691, 2777, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:23:45', '2024-05-11 19:23:45'),
(1692, 2776, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:28:03', '2024-05-11 19:28:03'),
(1693, 2777, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:36:06', '2024-05-11 19:36:06'),
(1694, 2777, 'PGSOFT', 'fortune-tiger', 0.40, 8.00, 'BRL', 'wordslot', 'loss', '2024-05-11 19:36:06', '2024-05-11 19:36:06'),
(1695, 2777, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-12 20:44:49', '2024-05-12 20:44:49'),
(1696, 2777, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-12 20:44:52', '2024-05-12 20:44:52'),
(1697, 2777, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-12 20:45:09', '2024-05-12 20:45:09'),
(1698, 2776, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-12 20:56:00', '2024-05-12 20:56:00'),
(1699, 2776, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-12 20:56:04', '2024-05-12 20:56:04'),
(1700, 2776, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-12 20:56:08', '2024-05-12 20:56:08'),
(1701, 2776, 'PGSOFT', 'fortune-mouse', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:20:17', '2024-05-13 08:20:17'),
(1702, 2776, 'PGSOFT', 'fortune-mouse', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:20:20', '2024-05-13 08:20:20'),
(1703, 2776, 'PGSOFT', 'fortune-mouse', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:20:22', '2024-05-13 08:20:22'),
(1704, 2776, 'PGSOFT', 'fortune-mouse', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:20:23', '2024-05-13 08:20:23'),
(1705, 2776, 'PGSOFT', 'fortune-mouse', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:20:24', '2024-05-13 08:20:24'),
(1706, 2776, 'PGSOFT', 'fortune-mouse', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:20:25', '2024-05-13 08:20:25'),
(1707, 2776, 'PGSOFT', 'fortune-mouse', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:20:26', '2024-05-13 08:20:26'),
(1708, 2776, 'PGSOFT', 'fortune-mouse', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:20:30', '2024-05-13 08:20:30'),
(1709, 2776, 'PGSOFT', 'fortune-mouse', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:20:31', '2024-05-13 08:20:31'),
(1710, 2776, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:23:04', '2024-05-13 08:23:04'),
(1711, 2776, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:23:07', '2024-05-13 08:23:07'),
(1712, 2776, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:23:11', '2024-05-13 08:23:11'),
(1713, 2776, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:23:12', '2024-05-13 08:23:12'),
(1714, 2776, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:23:14', '2024-05-13 08:23:14'),
(1715, 2776, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:23:17', '2024-05-13 08:23:17'),
(1716, 2776, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:23:20', '2024-05-13 08:23:20'),
(1717, 2776, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:26:32', '2024-05-13 08:26:32'),
(1718, 2776, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:26:35', '2024-05-13 08:26:35'),
(1719, 2776, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-13 08:26:37', '2024-05-13 08:26:37'),
(1720, 2777, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-14 18:55:10', '2024-05-14 18:55:10'),
(1721, 2777, 'PGSOFT', 'fortune-dragon', 0.40, 0.24, 'BRL', 'wordslot', 'loss', '2024-05-14 18:55:10', '2024-05-14 18:55:10'),
(1722, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 22:59:58', '2024-05-15 22:59:58'),
(1723, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:01', '2024-05-15 23:00:01'),
(1724, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:02', '2024-05-15 23:00:02'),
(1725, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:05', '2024-05-15 23:00:05'),
(1726, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:07', '2024-05-15 23:00:07'),
(1727, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:08', '2024-05-15 23:00:08'),
(1728, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:09', '2024-05-15 23:00:09'),
(1729, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:10', '2024-05-15 23:00:10'),
(1730, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:11', '2024-05-15 23:00:11'),
(1731, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:12', '2024-05-15 23:00:12'),
(1732, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:14', '2024-05-15 23:00:14'),
(1733, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:16', '2024-05-15 23:00:16'),
(1734, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:17', '2024-05-15 23:00:17'),
(1735, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:18', '2024-05-15 23:00:18'),
(1736, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:19', '2024-05-15 23:00:19'),
(1737, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:21', '2024-05-15 23:00:21'),
(1738, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:22', '2024-05-15 23:00:22'),
(1739, 2775, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:00:23', '2024-05-15 23:00:23'),
(1740, 2775, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:30', '2024-05-15 23:59:30'),
(1741, 2775, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:35', '2024-05-15 23:59:35'),
(1742, 2775, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:38', '2024-05-15 23:59:38'),
(1743, 2775, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:40', '2024-05-15 23:59:40'),
(1744, 2775, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:41', '2024-05-15 23:59:41'),
(1745, 2775, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:42', '2024-05-15 23:59:42'),
(1746, 2775, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:45', '2024-05-15 23:59:45'),
(1747, 2775, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:46', '2024-05-15 23:59:46'),
(1748, 2775, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:49', '2024-05-15 23:59:49'),
(1749, 2775, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:51', '2024-05-15 23:59:51'),
(1750, 2775, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:53', '2024-05-15 23:59:53'),
(1751, 2775, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-15 23:59:55', '2024-05-15 23:59:55'),
(1752, 2775, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:01:51', '2024-05-16 00:01:51'),
(1753, 2775, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:01:53', '2024-05-16 00:01:53'),
(1754, 2775, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:01:55', '2024-05-16 00:01:55'),
(1755, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:00', '2024-05-16 00:02:00'),
(1756, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:01', '2024-05-16 00:02:01'),
(1757, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:02', '2024-05-16 00:02:02'),
(1758, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:10', '2024-05-16 00:02:10'),
(1759, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:13', '2024-05-16 00:02:13'),
(1760, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:15', '2024-05-16 00:02:15'),
(1761, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:17', '2024-05-16 00:02:17'),
(1762, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:18', '2024-05-16 00:02:18'),
(1763, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:20', '2024-05-16 00:02:20'),
(1764, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:21', '2024-05-16 00:02:21'),
(1765, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:23', '2024-05-16 00:02:23'),
(1766, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:24', '2024-05-16 00:02:24'),
(1767, 2775, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-05-16 00:02:27', '2024-05-16 00:02:27'),
(1768, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:33:10', '2024-06-12 01:33:10'),
(1769, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:33:13', '2024-06-12 01:33:13'),
(1770, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:33:14', '2024-06-12 01:33:14'),
(1771, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:33:14', '2024-06-12 01:33:14'),
(1772, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:40:56', '2024-06-12 01:40:56'),
(1773, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:40:58', '2024-06-12 01:40:58'),
(1774, 2786, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:24', '2024-06-12 01:44:24'),
(1775, 2786, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:26', '2024-06-12 01:44:26'),
(1776, 2786, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:29', '2024-06-12 01:44:29'),
(1777, 2786, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:30', '2024-06-12 01:44:30'),
(1778, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:32', '2024-06-12 01:44:32'),
(1779, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:33', '2024-06-12 01:44:33'),
(1780, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:34', '2024-06-12 01:44:34'),
(1781, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:35', '2024-06-12 01:44:35'),
(1782, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:36', '2024-06-12 01:44:36'),
(1783, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:37', '2024-06-12 01:44:37'),
(1784, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:38', '2024-06-12 01:44:38'),
(1785, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:39', '2024-06-12 01:44:39'),
(1786, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:40', '2024-06-12 01:44:40'),
(1787, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:41', '2024-06-12 01:44:41'),
(1788, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:43', '2024-06-12 01:44:43'),
(1789, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:44:44', '2024-06-12 01:44:44'),
(1790, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:13', '2024-06-12 01:45:13'),
(1791, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:15', '2024-06-12 01:45:15'),
(1792, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:17', '2024-06-12 01:45:17'),
(1793, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:19', '2024-06-12 01:45:19'),
(1794, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:20', '2024-06-12 01:45:20'),
(1795, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:20', '2024-06-12 01:45:20'),
(1796, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.30, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:20', '2024-06-12 01:45:20'),
(1797, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:24', '2024-06-12 01:45:24'),
(1798, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:25', '2024-06-12 01:45:25'),
(1799, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:25', '2024-06-12 01:45:25'),
(1800, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.30, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:25', '2024-06-12 01:45:25'),
(1801, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:27', '2024-06-12 01:45:27'),
(1802, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:28', '2024-06-12 01:45:28'),
(1803, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:28', '2024-06-12 01:45:28'),
(1804, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:28', '2024-06-12 01:45:28'),
(1805, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:29', '2024-06-12 01:45:29'),
(1806, 2784, 'PGSOFT', 'fortune-mouse', 0.50, 1.50, 'BRL', 'wordslot', 'loss', '2024-06-12 01:45:29', '2024-06-12 01:45:29'),
(1807, 2786, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:46:34', '2024-06-12 01:46:34'),
(1808, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:17', '2024-06-12 01:50:17'),
(1809, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:19', '2024-06-12 01:50:19'),
(1810, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:20', '2024-06-12 01:50:20'),
(1811, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:21', '2024-06-12 01:50:21'),
(1812, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:22', '2024-06-12 01:50:22'),
(1813, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:23', '2024-06-12 01:50:23'),
(1814, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:23', '2024-06-12 01:50:23'),
(1815, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:24', '2024-06-12 01:50:24'),
(1816, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:24', '2024-06-12 01:50:24'),
(1817, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:25', '2024-06-12 01:50:25'),
(1818, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:26', '2024-06-12 01:50:26'),
(1819, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:26', '2024-06-12 01:50:26'),
(1820, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:27', '2024-06-12 01:50:27'),
(1821, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:28', '2024-06-12 01:50:28'),
(1822, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:28', '2024-06-12 01:50:28'),
(1823, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:29', '2024-06-12 01:50:29'),
(1824, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:29', '2024-06-12 01:50:29'),
(1825, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:30', '2024-06-12 01:50:30'),
(1826, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:31', '2024-06-12 01:50:31'),
(1827, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:31', '2024-06-12 01:50:31'),
(1828, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:32', '2024-06-12 01:50:32'),
(1829, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:33', '2024-06-12 01:50:33'),
(1830, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:33', '2024-06-12 01:50:33'),
(1831, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:35', '2024-06-12 01:50:35'),
(1832, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:36', '2024-06-12 01:50:36'),
(1833, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:36', '2024-06-12 01:50:36'),
(1834, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:37', '2024-06-12 01:50:37'),
(1835, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:38', '2024-06-12 01:50:38'),
(1836, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:38', '2024-06-12 01:50:38'),
(1837, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:39', '2024-06-12 01:50:39'),
(1838, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:39', '2024-06-12 01:50:39'),
(1839, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:40', '2024-06-12 01:50:40'),
(1840, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:41', '2024-06-12 01:50:41'),
(1841, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:41', '2024-06-12 01:50:41'),
(1842, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:44', '2024-06-12 01:50:44'),
(1843, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:44', '2024-06-12 01:50:44'),
(1844, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:45', '2024-06-12 01:50:45'),
(1845, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:45', '2024-06-12 01:50:45'),
(1846, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:46', '2024-06-12 01:50:46'),
(1847, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:47', '2024-06-12 01:50:47'),
(1848, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:47', '2024-06-12 01:50:47'),
(1849, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:48', '2024-06-12 01:50:48'),
(1850, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:48', '2024-06-12 01:50:48'),
(1851, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:49', '2024-06-12 01:50:49'),
(1852, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:50', '2024-06-12 01:50:50'),
(1853, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:51', '2024-06-12 01:50:51'),
(1854, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:51', '2024-06-12 01:50:51'),
(1855, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:53', '2024-06-12 01:50:53'),
(1856, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:53', '2024-06-12 01:50:53'),
(1857, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:54', '2024-06-12 01:50:54'),
(1858, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:56', '2024-06-12 01:50:56'),
(1859, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:56', '2024-06-12 01:50:56'),
(1860, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:50:58', '2024-06-12 01:50:58'),
(1861, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:04', '2024-06-12 01:51:04'),
(1862, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:04', '2024-06-12 01:51:04'),
(1863, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:05', '2024-06-12 01:51:05'),
(1864, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:05', '2024-06-12 01:51:05'),
(1865, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:06', '2024-06-12 01:51:06');
INSERT INTO `ggr_games` (`id`, `user_id`, `provider`, `game`, `balance_bet`, `balance_win`, `currency`, `aggregator`, `type`, `created_at`, `updated_at`) VALUES
(1866, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:06', '2024-06-12 01:51:06'),
(1867, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:07', '2024-06-12 01:51:07'),
(1868, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:08', '2024-06-12 01:51:08'),
(1869, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:08', '2024-06-12 01:51:08'),
(1870, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:09', '2024-06-12 01:51:09'),
(1871, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:10', '2024-06-12 01:51:10'),
(1872, 2786, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 01:51:10', '2024-06-12 01:51:10'),
(1873, 2784, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 09:47:56', '2024-06-12 09:47:56'),
(1874, 2784, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 09:47:57', '2024-06-12 09:47:57'),
(1875, 2784, 'PGSOFT', 'fortune-ox', 0.50, 0.50, 'BRL', 'wordslot', 'loss', '2024-06-12 09:47:57', '2024-06-12 09:47:57'),
(1876, 2784, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 09:47:59', '2024-06-12 09:47:59'),
(1877, 2784, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 09:48:00', '2024-06-12 09:48:00'),
(1878, 2784, 'PGSOFT', 'fortune-ox', 0.50, 1.25, 'BRL', 'wordslot', 'loss', '2024-06-12 09:48:00', '2024-06-12 09:48:00'),
(1879, 2784, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 09:48:02', '2024-06-12 09:48:02'),
(1880, 2784, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 09:48:14', '2024-06-12 09:48:14'),
(1881, 2784, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 09:48:26', '2024-06-12 09:48:26'),
(1882, 2784, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 09:48:38', '2024-06-12 09:48:38'),
(1883, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:37', '2024-06-12 11:45:37'),
(1884, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.25, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:37', '2024-06-12 11:45:37'),
(1885, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:40', '2024-06-12 11:45:40'),
(1886, 2785, 'PGSOFT', 'fortune-ox', 0.50, 3.25, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:40', '2024-06-12 11:45:40'),
(1887, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:44', '2024-06-12 11:45:44'),
(1888, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:46', '2024-06-12 11:45:46'),
(1889, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:47', '2024-06-12 11:45:47'),
(1890, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:49', '2024-06-12 11:45:49'),
(1891, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:50', '2024-06-12 11:45:50'),
(1892, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:51', '2024-06-12 11:45:51'),
(1893, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.45, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:51', '2024-06-12 11:45:51'),
(1894, 2785, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:56', '2024-06-12 11:45:56'),
(1895, 2785, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:57', '2024-06-12 11:45:57'),
(1896, 2785, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:58', '2024-06-12 11:45:58'),
(1897, 2785, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:45:59', '2024-06-12 11:45:59'),
(1898, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:01', '2024-06-12 11:46:01'),
(1899, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:02', '2024-06-12 11:46:02'),
(1900, 2785, 'PGSOFT', 'fortune-ox', 1.50, 7.50, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:02', '2024-06-12 11:46:02'),
(1901, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:05', '2024-06-12 11:46:05'),
(1902, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:06', '2024-06-12 11:46:06'),
(1903, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:07', '2024-06-12 11:46:07'),
(1904, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:08', '2024-06-12 11:46:08'),
(1905, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:09', '2024-06-12 11:46:09'),
(1906, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:10', '2024-06-12 11:46:10'),
(1907, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:12', '2024-06-12 11:46:12'),
(1908, 2785, 'PGSOFT', 'fortune-ox', 1.50, 1.50, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:12', '2024-06-12 11:46:12'),
(1909, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:50', '2024-06-12 11:46:50'),
(1910, 2785, 'PGSOFT', 'fortune-ox', 0.50, 10.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:46:50', '2024-06-12 11:46:50'),
(1911, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:00', '2024-06-12 11:47:00'),
(1912, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:01', '2024-06-12 11:47:01'),
(1913, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:02', '2024-06-12 11:47:02'),
(1914, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:03', '2024-06-12 11:47:03'),
(1915, 2785, 'PGSOFT', 'fortune-ox', 0.50, 1.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:03', '2024-06-12 11:47:03'),
(1916, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:07', '2024-06-12 11:47:07'),
(1917, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.30, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:07', '2024-06-12 11:47:07'),
(1918, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:09', '2024-06-12 11:47:09'),
(1919, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.30, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:09', '2024-06-12 11:47:09'),
(1920, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:11', '2024-06-12 11:47:11'),
(1921, 2785, 'PGSOFT', 'fortune-ox', 1.00, 20.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:11', '2024-06-12 11:47:11'),
(1922, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:17', '2024-06-12 11:47:17'),
(1923, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:18', '2024-06-12 11:47:18'),
(1924, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.90, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:18', '2024-06-12 11:47:18'),
(1925, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:21', '2024-06-12 11:47:21'),
(1926, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:28', '2024-06-12 11:47:28'),
(1927, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:29', '2024-06-12 11:47:29'),
(1928, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:30', '2024-06-12 11:47:30'),
(1929, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:31', '2024-06-12 11:47:31'),
(1930, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:32', '2024-06-12 11:47:32'),
(1931, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:34', '2024-06-12 11:47:34'),
(1932, 2785, 'PGSOFT', 'fortune-ox', 1.00, 1.10, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:34', '2024-06-12 11:47:34'),
(1933, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:39', '2024-06-12 11:47:39'),
(1934, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:40', '2024-06-12 11:47:40'),
(1935, 2785, 'PGSOFT', 'fortune-ox', 1.50, 1.50, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:40', '2024-06-12 11:47:40'),
(1936, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:42', '2024-06-12 11:47:42'),
(1937, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:43', '2024-06-12 11:47:43'),
(1938, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:44', '2024-06-12 11:47:44'),
(1939, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:45', '2024-06-12 11:47:45'),
(1940, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:47', '2024-06-12 11:47:47'),
(1941, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:48', '2024-06-12 11:47:48'),
(1942, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:49', '2024-06-12 11:47:49'),
(1943, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:50', '2024-06-12 11:47:50'),
(1944, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:51', '2024-06-12 11:47:51'),
(1945, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:53', '2024-06-12 11:47:53'),
(1946, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:54', '2024-06-12 11:47:54'),
(1947, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:56', '2024-06-12 11:47:56'),
(1948, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.75, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:56', '2024-06-12 11:47:56'),
(1949, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:58', '2024-06-12 11:47:58'),
(1950, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:47:59', '2024-06-12 11:47:59'),
(1951, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:00', '2024-06-12 11:48:00'),
(1952, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:01', '2024-06-12 11:48:01'),
(1953, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:03', '2024-06-12 11:48:03'),
(1954, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:05', '2024-06-12 11:48:05'),
(1955, 2785, 'PGSOFT', 'fortune-ox', 1.50, 2.25, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:05', '2024-06-12 11:48:05'),
(1956, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:06', '2024-06-12 11:48:06'),
(1957, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:07', '2024-06-12 11:48:07'),
(1958, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:08', '2024-06-12 11:48:08'),
(1959, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:10', '2024-06-12 11:48:10'),
(1960, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:10', '2024-06-12 11:48:10'),
(1961, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:12', '2024-06-12 11:48:12'),
(1962, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:13', '2024-06-12 11:48:13'),
(1963, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:14', '2024-06-12 11:48:14'),
(1964, 2785, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:15', '2024-06-12 11:48:15'),
(1965, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:17', '2024-06-12 11:48:17'),
(1966, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:18', '2024-06-12 11:48:18'),
(1967, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:20', '2024-06-12 11:48:20'),
(1968, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:21', '2024-06-12 11:48:21'),
(1969, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:21', '2024-06-12 11:48:21'),
(1970, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:22', '2024-06-12 11:48:22'),
(1971, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:22', '2024-06-12 11:48:22'),
(1972, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:23', '2024-06-12 11:48:23'),
(1973, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:24', '2024-06-12 11:48:24'),
(1974, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:25', '2024-06-12 11:48:25'),
(1975, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:26', '2024-06-12 11:48:26'),
(1976, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:27', '2024-06-12 11:48:27'),
(1977, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:28', '2024-06-12 11:48:28'),
(1978, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:29', '2024-06-12 11:48:29'),
(1979, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:29', '2024-06-12 11:48:29'),
(1980, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:30', '2024-06-12 11:48:30'),
(1981, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:30', '2024-06-12 11:48:30'),
(1982, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:31', '2024-06-12 11:48:31'),
(1983, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:31', '2024-06-12 11:48:31'),
(1984, 2785, 'PGSOFT', 'fortune-ox', 0.50, 2.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:31', '2024-06-12 11:48:31'),
(1985, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:33', '2024-06-12 11:48:33'),
(1986, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:33', '2024-06-12 11:48:33'),
(1987, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:34', '2024-06-12 11:48:34'),
(1988, 2785, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 11:48:35', '2024-06-12 11:48:35'),
(1989, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:28', '2024-06-12 12:03:28'),
(1990, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:30', '2024-06-12 12:03:30'),
(1991, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:33', '2024-06-12 12:03:33'),
(1992, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:34', '2024-06-12 12:03:34'),
(1993, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:35', '2024-06-12 12:03:35'),
(1994, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:36', '2024-06-12 12:03:36'),
(1995, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:37', '2024-06-12 12:03:37'),
(1996, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:38', '2024-06-12 12:03:38'),
(1997, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:39', '2024-06-12 12:03:39'),
(1998, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:40', '2024-06-12 12:03:40'),
(1999, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:41', '2024-06-12 12:03:41'),
(2000, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:41', '2024-06-12 12:03:41'),
(2001, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:42', '2024-06-12 12:03:42'),
(2002, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:44', '2024-06-12 12:03:44'),
(2003, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:45', '2024-06-12 12:03:45'),
(2004, 2788, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:03:47', '2024-06-12 12:03:47'),
(2005, 2788, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:04:51', '2024-06-12 12:04:51'),
(2006, 2788, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:04:52', '2024-06-12 12:04:52'),
(2007, 2788, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:04:53', '2024-06-12 12:04:53'),
(2008, 2788, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:04:55', '2024-06-12 12:04:55'),
(2009, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:04:56', '2024-06-12 12:04:56'),
(2010, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:04:57', '2024-06-12 12:04:57'),
(2011, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:04:58', '2024-06-12 12:04:58'),
(2012, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:04:59', '2024-06-12 12:04:59'),
(2013, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:00', '2024-06-12 12:05:00'),
(2014, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:04', '2024-06-12 12:05:04'),
(2015, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:05', '2024-06-12 12:05:05'),
(2016, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:06', '2024-06-12 12:05:06'),
(2017, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:09', '2024-06-12 12:05:09'),
(2018, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:11', '2024-06-12 12:05:11'),
(2019, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:13', '2024-06-12 12:05:13'),
(2020, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:14', '2024-06-12 12:05:14'),
(2021, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:17', '2024-06-12 12:05:17'),
(2022, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:19', '2024-06-12 12:05:19'),
(2023, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:21', '2024-06-12 12:05:21'),
(2024, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:22', '2024-06-12 12:05:22'),
(2025, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:23', '2024-06-12 12:05:23'),
(2026, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:25', '2024-06-12 12:05:25'),
(2027, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:27', '2024-06-12 12:05:27'),
(2028, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:28', '2024-06-12 12:05:28'),
(2029, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:29', '2024-06-12 12:05:29'),
(2030, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:30', '2024-06-12 12:05:30'),
(2031, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:34', '2024-06-12 12:05:34'),
(2032, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:36', '2024-06-12 12:05:36'),
(2033, 2788, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:05:37', '2024-06-12 12:05:37'),
(2034, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:08:47', '2024-06-12 12:08:47'),
(2035, 2788, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:13', '2024-06-12 12:14:13'),
(2036, 2788, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:15', '2024-06-12 12:14:15'),
(2037, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:18', '2024-06-12 12:14:18'),
(2038, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:19', '2024-06-12 12:14:19'),
(2039, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:20', '2024-06-12 12:14:20'),
(2040, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:21', '2024-06-12 12:14:21'),
(2041, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:22', '2024-06-12 12:14:22'),
(2042, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:23', '2024-06-12 12:14:23'),
(2043, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:26', '2024-06-12 12:14:26'),
(2044, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:27', '2024-06-12 12:14:27'),
(2045, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:28', '2024-06-12 12:14:28'),
(2046, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:29', '2024-06-12 12:14:29'),
(2047, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:30', '2024-06-12 12:14:30'),
(2048, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:31', '2024-06-12 12:14:31'),
(2049, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:33', '2024-06-12 12:14:33'),
(2050, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:34', '2024-06-12 12:14:34'),
(2051, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:36', '2024-06-12 12:14:36'),
(2052, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 12:14:38', '2024-06-12 12:14:38'),
(2053, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:43:48', '2024-06-12 13:43:48'),
(2054, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:43:51', '2024-06-12 13:43:51'),
(2055, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:43:51', '2024-06-12 13:43:51'),
(2056, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:43:53', '2024-06-12 13:43:53'),
(2057, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:43:54', '2024-06-12 13:43:54'),
(2058, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:43:55', '2024-06-12 13:43:55'),
(2059, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:43:55', '2024-06-12 13:43:55'),
(2060, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:43:57', '2024-06-12 13:43:57'),
(2061, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:43:57', '2024-06-12 13:43:57'),
(2062, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:43:58', '2024-06-12 13:43:58'),
(2063, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:43:59', '2024-06-12 13:43:59'),
(2064, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:00', '2024-06-12 13:44:00'),
(2065, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:01', '2024-06-12 13:44:01'),
(2066, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:04', '2024-06-12 13:44:04'),
(2067, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:05', '2024-06-12 13:44:05'),
(2068, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:07', '2024-06-12 13:44:07'),
(2069, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:07', '2024-06-12 13:44:07'),
(2070, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:08', '2024-06-12 13:44:08'),
(2071, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:09', '2024-06-12 13:44:09'),
(2072, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:10', '2024-06-12 13:44:10'),
(2073, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:10', '2024-06-12 13:44:10'),
(2074, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:11', '2024-06-12 13:44:11'),
(2075, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:12', '2024-06-12 13:44:12'),
(2076, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:12', '2024-06-12 13:44:12'),
(2077, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:13', '2024-06-12 13:44:13'),
(2078, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:13', '2024-06-12 13:44:13'),
(2079, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:14', '2024-06-12 13:44:14'),
(2080, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:15', '2024-06-12 13:44:15'),
(2081, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:15', '2024-06-12 13:44:15'),
(2082, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:17', '2024-06-12 13:44:17'),
(2083, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:17', '2024-06-12 13:44:17'),
(2084, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:18', '2024-06-12 13:44:18'),
(2085, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:18', '2024-06-12 13:44:18'),
(2086, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:19', '2024-06-12 13:44:19'),
(2087, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:20', '2024-06-12 13:44:20'),
(2088, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:21', '2024-06-12 13:44:21'),
(2089, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:22', '2024-06-12 13:44:22'),
(2090, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:22', '2024-06-12 13:44:22'),
(2091, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:23', '2024-06-12 13:44:23'),
(2092, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:23', '2024-06-12 13:44:23'),
(2093, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:24', '2024-06-12 13:44:24'),
(2094, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:25', '2024-06-12 13:44:25'),
(2095, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:25', '2024-06-12 13:44:25'),
(2096, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:27', '2024-06-12 13:44:27'),
(2097, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:27', '2024-06-12 13:44:27'),
(2098, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:28', '2024-06-12 13:44:28'),
(2099, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:29', '2024-06-12 13:44:29'),
(2100, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:29', '2024-06-12 13:44:29'),
(2101, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:30', '2024-06-12 13:44:30'),
(2102, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:31', '2024-06-12 13:44:31'),
(2103, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:31', '2024-06-12 13:44:31'),
(2104, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:32', '2024-06-12 13:44:32'),
(2105, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:32', '2024-06-12 13:44:32'),
(2106, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:33', '2024-06-12 13:44:33'),
(2107, 2788, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 13:44:34', '2024-06-12 13:44:34'),
(2108, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:50:55', '2024-06-12 14:50:55'),
(2109, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:01', '2024-06-12 14:51:01'),
(2110, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:02', '2024-06-12 14:51:02'),
(2111, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:02', '2024-06-12 14:51:02'),
(2112, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:04', '2024-06-12 14:51:04'),
(2113, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:05', '2024-06-12 14:51:05'),
(2114, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:07', '2024-06-12 14:51:07'),
(2115, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:08', '2024-06-12 14:51:08'),
(2116, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:09', '2024-06-12 14:51:09'),
(2117, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:10', '2024-06-12 14:51:10'),
(2118, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:11', '2024-06-12 14:51:11'),
(2119, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:12', '2024-06-12 14:51:12'),
(2120, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:13', '2024-06-12 14:51:13'),
(2121, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:14', '2024-06-12 14:51:14'),
(2122, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:15', '2024-06-12 14:51:15'),
(2123, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:20', '2024-06-12 14:51:20'),
(2124, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:24', '2024-06-12 14:51:24'),
(2125, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:29', '2024-06-12 14:51:29'),
(2126, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:51:47', '2024-06-12 14:51:47'),
(2127, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:52:07', '2024-06-12 14:52:07'),
(2128, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:52:12', '2024-06-12 14:52:12'),
(2129, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:52:14', '2024-06-12 14:52:14'),
(2130, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:52:15', '2024-06-12 14:52:15'),
(2131, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:52:16', '2024-06-12 14:52:16'),
(2132, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:52:21', '2024-06-12 14:52:21'),
(2133, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:52:22', '2024-06-12 14:52:22'),
(2134, 2787, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:52:23', '2024-06-12 14:52:23'),
(2135, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:27', '2024-06-12 14:53:27'),
(2136, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:30', '2024-06-12 14:53:30'),
(2137, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:32', '2024-06-12 14:53:32'),
(2138, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:34', '2024-06-12 14:53:34'),
(2139, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:37', '2024-06-12 14:53:37'),
(2140, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:38', '2024-06-12 14:53:38'),
(2141, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:39', '2024-06-12 14:53:39'),
(2142, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:41', '2024-06-12 14:53:41'),
(2143, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:43', '2024-06-12 14:53:43'),
(2144, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:44', '2024-06-12 14:53:44'),
(2145, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:45', '2024-06-12 14:53:45'),
(2146, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:47', '2024-06-12 14:53:47'),
(2147, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:48', '2024-06-12 14:53:48'),
(2148, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:49', '2024-06-12 14:53:49'),
(2149, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:50', '2024-06-12 14:53:50'),
(2150, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:52', '2024-06-12 14:53:52'),
(2151, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:53', '2024-06-12 14:53:53'),
(2152, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:55', '2024-06-12 14:53:55'),
(2153, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:57', '2024-06-12 14:53:57'),
(2154, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:58', '2024-06-12 14:53:58'),
(2155, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:53:59', '2024-06-12 14:53:59'),
(2156, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:00', '2024-06-12 14:54:00'),
(2157, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:01', '2024-06-12 14:54:01'),
(2158, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:04', '2024-06-12 14:54:04'),
(2159, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:05', '2024-06-12 14:54:05'),
(2160, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:07', '2024-06-12 14:54:07'),
(2161, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:08', '2024-06-12 14:54:08'),
(2162, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:09', '2024-06-12 14:54:09'),
(2163, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:10', '2024-06-12 14:54:10'),
(2164, 2787, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:10', '2024-06-12 14:54:10'),
(2165, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:11', '2024-06-12 14:54:11'),
(2166, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:12', '2024-06-12 14:54:12'),
(2167, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:13', '2024-06-12 14:54:13'),
(2168, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:14', '2024-06-12 14:54:14'),
(2169, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:15', '2024-06-12 14:54:15'),
(2170, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:16', '2024-06-12 14:54:16'),
(2171, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:17', '2024-06-12 14:54:17'),
(2172, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:17', '2024-06-12 14:54:17'),
(2173, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:18', '2024-06-12 14:54:18'),
(2174, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:54:19', '2024-06-12 14:54:19'),
(2175, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:55:22', '2024-06-12 14:55:22'),
(2176, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:55:23', '2024-06-12 14:55:23'),
(2177, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:55:24', '2024-06-12 14:55:24'),
(2178, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:55:25', '2024-06-12 14:55:25'),
(2179, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:55:27', '2024-06-12 14:55:27'),
(2180, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:55:27', '2024-06-12 14:55:27'),
(2181, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:55:29', '2024-06-12 14:55:29'),
(2182, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:55:30', '2024-06-12 14:55:30'),
(2183, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:55:31', '2024-06-12 14:55:31'),
(2184, 2785, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 14:55:32', '2024-06-12 14:55:32'),
(2185, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:10', '2024-06-12 15:48:10'),
(2186, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:10', '2024-06-12 15:48:10'),
(2187, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:11', '2024-06-12 15:48:11'),
(2188, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:12', '2024-06-12 15:48:12'),
(2189, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:13', '2024-06-12 15:48:13'),
(2190, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:14', '2024-06-12 15:48:14'),
(2191, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:15', '2024-06-12 15:48:15'),
(2192, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:17', '2024-06-12 15:48:17'),
(2193, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:20', '2024-06-12 15:48:20'),
(2194, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:22', '2024-06-12 15:48:22'),
(2195, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:23', '2024-06-12 15:48:23'),
(2196, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:23', '2024-06-12 15:48:23'),
(2197, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:24', '2024-06-12 15:48:24'),
(2198, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:26', '2024-06-12 15:48:26'),
(2199, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:27', '2024-06-12 15:48:27'),
(2200, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:27', '2024-06-12 15:48:27'),
(2201, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:33', '2024-06-12 15:48:33'),
(2202, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:34', '2024-06-12 15:48:34'),
(2203, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:35', '2024-06-12 15:48:35'),
(2204, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:39', '2024-06-12 15:48:39'),
(2205, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:39', '2024-06-12 15:48:39'),
(2206, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:40', '2024-06-12 15:48:40'),
(2207, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:40', '2024-06-12 15:48:40'),
(2208, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:41', '2024-06-12 15:48:41'),
(2209, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:42', '2024-06-12 15:48:42'),
(2210, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:42', '2024-06-12 15:48:42'),
(2211, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:43', '2024-06-12 15:48:43'),
(2212, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:46', '2024-06-12 15:48:46'),
(2213, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:47', '2024-06-12 15:48:47'),
(2214, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:47', '2024-06-12 15:48:47'),
(2215, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:48', '2024-06-12 15:48:48'),
(2216, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:49', '2024-06-12 15:48:49'),
(2217, 2785, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:48:49', '2024-06-12 15:48:49'),
(2218, 2785, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:50:23', '2024-06-12 15:50:23'),
(2219, 2785, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:50:24', '2024-06-12 15:50:24'),
(2220, 2785, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:50:25', '2024-06-12 15:50:25'),
(2221, 2785, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:50:30', '2024-06-12 15:50:30'),
(2222, 2785, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:50:37', '2024-06-12 15:50:37'),
(2223, 2785, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:50:38', '2024-06-12 15:50:38'),
(2224, 2785, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:50:39', '2024-06-12 15:50:39'),
(2225, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:07', '2024-06-12 15:51:07'),
(2226, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:08', '2024-06-12 15:51:08'),
(2227, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:10', '2024-06-12 15:51:10'),
(2228, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:11', '2024-06-12 15:51:11'),
(2229, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:13', '2024-06-12 15:51:13'),
(2230, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:15', '2024-06-12 15:51:15'),
(2231, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:17', '2024-06-12 15:51:17'),
(2232, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:18', '2024-06-12 15:51:18'),
(2233, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:19', '2024-06-12 15:51:19'),
(2234, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:20', '2024-06-12 15:51:20'),
(2235, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:22', '2024-06-12 15:51:22'),
(2236, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:27', '2024-06-12 15:51:27'),
(2237, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:28', '2024-06-12 15:51:28'),
(2238, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:29', '2024-06-12 15:51:29'),
(2239, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:30', '2024-06-12 15:51:30'),
(2240, 2785, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:51:34', '2024-06-12 15:51:34'),
(2241, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:17', '2024-06-12 15:58:17'),
(2242, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:19', '2024-06-12 15:58:19'),
(2243, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:21', '2024-06-12 15:58:21'),
(2244, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:21', '2024-06-12 15:58:21'),
(2245, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:22', '2024-06-12 15:58:22'),
(2246, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:23', '2024-06-12 15:58:23'),
(2247, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:23', '2024-06-12 15:58:23'),
(2248, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:24', '2024-06-12 15:58:24'),
(2249, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:26', '2024-06-12 15:58:26'),
(2250, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:27', '2024-06-12 15:58:27'),
(2251, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:28', '2024-06-12 15:58:28'),
(2252, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:30', '2024-06-12 15:58:30'),
(2253, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:31', '2024-06-12 15:58:31'),
(2254, 2785, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 15:58:32', '2024-06-12 15:58:32'),
(2255, 2788, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 19:26:00', '2024-06-12 19:26:00'),
(2256, 2788, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 19:26:02', '2024-06-12 19:26:02'),
(2257, 2788, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 19:26:03', '2024-06-12 19:26:03'),
(2258, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 19:26:06', '2024-06-12 19:26:06'),
(2259, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 19:26:08', '2024-06-12 19:26:08'),
(2260, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 19:26:08', '2024-06-12 19:26:08'),
(2261, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 19:26:09', '2024-06-12 19:26:09'),
(2262, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 19:26:09', '2024-06-12 19:26:09'),
(2263, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 19:26:10', '2024-06-12 19:26:10'),
(2264, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 19:26:11', '2024-06-12 19:26:11'),
(2265, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-12 19:26:11', '2024-06-12 19:26:11'),
(2266, 2788, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-13 20:07:18', '2024-06-13 20:07:18'),
(2267, 2788, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-13 20:07:19', '2024-06-13 20:07:19'),
(2268, 2788, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-13 20:07:20', '2024-06-13 20:07:20'),
(2269, 2788, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-13 20:07:23', '2024-06-13 20:07:23');
INSERT INTO `ggr_games` (`id`, `user_id`, `provider`, `game`, `balance_bet`, `balance_win`, `currency`, `aggregator`, `type`, `created_at`, `updated_at`) VALUES
(2270, 2788, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-13 20:07:23', '2024-06-13 20:07:23'),
(2271, 2788, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-13 20:07:24', '2024-06-13 20:07:24'),
(2272, 2788, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-13 20:07:25', '2024-06-13 20:07:25'),
(2273, 2788, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-13 20:07:26', '2024-06-13 20:07:26'),
(2274, 2788, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-13 20:07:27', '2024-06-13 20:07:27'),
(2275, 2788, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-13 20:07:27', '2024-06-13 20:07:27'),
(2276, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-21 19:00:26', '2024-06-21 19:00:26'),
(2277, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-21 19:00:29', '2024-06-21 19:00:29'),
(2278, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-21 19:00:29', '2024-06-21 19:00:29'),
(2279, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-21 19:00:30', '2024-06-21 19:00:30'),
(2280, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-21 19:00:30', '2024-06-21 19:00:30'),
(2281, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-21 19:00:31', '2024-06-21 19:00:31'),
(2282, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-21 19:00:32', '2024-06-21 19:00:32'),
(2283, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-21 19:00:34', '2024-06-21 19:00:34'),
(2284, 2788, 'PGSOFT', 'fortune-ox', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-21 19:00:34', '2024-06-21 19:00:34'),
(2285, 2788, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-21 19:01:41', '2024-06-21 19:01:41'),
(2286, 2796, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-26 23:19:50', '2024-06-26 23:19:50'),
(2287, 2796, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-26 23:19:57', '2024-06-26 23:19:57'),
(2288, 2796, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-26 23:20:00', '2024-06-26 23:20:00'),
(2289, 2796, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-26 23:23:17', '2024-06-26 23:23:17'),
(2290, 2796, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-26 23:25:36', '2024-06-26 23:25:36'),
(2291, 2796, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:07:25', '2024-06-27 04:07:25'),
(2292, 2796, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:07:44', '2024-06-27 04:07:44'),
(2293, 2796, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:08:04', '2024-06-27 04:08:04'),
(2294, 2796, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:08:19', '2024-06-27 04:08:19'),
(2295, 2796, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:08:34', '2024-06-27 04:08:34'),
(2296, 2796, 'PGSOFT', 'fortune-rabbit', 0.40, 0.40, 'BRL', 'wordslot', 'loss', '2024-06-27 04:08:34', '2024-06-27 04:08:34'),
(2297, 2796, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:08:41', '2024-06-27 04:08:41'),
(2298, 2796, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:08:52', '2024-06-27 04:08:52'),
(2299, 2796, 'PGSOFT', 'fortune-rabbit', 0.00, 4.80, 'BRL', 'wordslot', 'loss', '2024-06-27 04:08:52', '2024-06-27 04:08:52'),
(2300, 2796, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:08:59', '2024-06-27 04:08:59'),
(2301, 2796, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:09:06', '2024-06-27 04:09:06'),
(2302, 2796, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:09:08', '2024-06-27 04:09:08'),
(2303, 2796, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:09:12', '2024-06-27 04:09:12'),
(2304, 2796, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:09:17', '2024-06-27 04:09:17'),
(2305, 2796, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:09:21', '2024-06-27 04:09:21'),
(2306, 2796, 'PGSOFT', 'fortune-rabbit', 0.00, 4.60, 'BRL', 'wordslot', 'loss', '2024-06-27 04:09:21', '2024-06-27 04:09:21'),
(2307, 2796, 'PGSOFT', 'fortune-rabbit', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:09:37', '2024-06-27 04:09:37'),
(2308, 2796, 'PGSOFT', 'dragon-tiger-luck', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:09:56', '2024-06-27 04:09:56'),
(2309, 2796, 'PGSOFT', 'dragon-tiger-luck', 1.00, 2.50, 'BRL', 'wordslot', 'loss', '2024-06-27 04:09:56', '2024-06-27 04:09:56'),
(2310, 2796, 'PGSOFT', 'dragon-tiger-luck', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:10:00', '2024-06-27 04:10:00'),
(2311, 2796, 'PGSOFT', 'dragon-tiger-luck', 1.00, 30.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:10:00', '2024-06-27 04:10:00'),
(2312, 2796, 'PGSOFT', 'dragon-tiger-luck', 1.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:10:09', '2024-06-27 04:10:09'),
(2313, 2796, 'PGSOFT', 'bikini-paradise', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:11:07', '2024-06-27 04:11:07'),
(2314, 2796, 'PGSOFT', 'bikini-paradise', 0.50, 0.40, 'BRL', 'wordslot', 'loss', '2024-06-27 04:11:08', '2024-06-27 04:11:08'),
(2315, 2796, 'PGSOFT', 'bikini-paradise', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:11:11', '2024-06-27 04:11:11'),
(2316, 2796, 'PGSOFT', 'bikini-paradise', 0.50, 0.90, 'BRL', 'wordslot', 'loss', '2024-06-27 04:11:11', '2024-06-27 04:11:11'),
(2317, 2796, 'PGSOFT', 'bikini-paradise', 0.00, 0.90, 'BRL', 'wordslot', 'win', '2024-06-27 04:11:11', '2024-06-27 04:11:11'),
(2318, 2796, 'PGSOFT', 'bikini-paradise', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:11:31', '2024-06-27 04:11:31'),
(2319, 2796, 'PGSOFT', 'bikini-paradise', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:11:35', '2024-06-27 04:11:35'),
(2320, 2796, 'PGSOFT', 'bikini-paradise', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:11:38', '2024-06-27 04:11:38'),
(2321, 2796, 'PGSOFT', 'bikini-paradise', 0.00, 0.40, 'BRL', 'wordslot', 'loss', '2024-06-27 04:11:38', '2024-06-27 04:11:38'),
(2322, 2796, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:11:54', '2024-06-27 04:11:54'),
(2323, 2796, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:11:57', '2024-06-27 04:11:57'),
(2324, 2796, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:11:59', '2024-06-27 04:11:59'),
(2325, 2796, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:12:01', '2024-06-27 04:12:01'),
(2326, 2796, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:12:02', '2024-06-27 04:12:02'),
(2327, 2796, 'PGSOFT', 'double-fortune', 0.30, 0.60, 'BRL', 'wordslot', 'loss', '2024-06-27 04:12:02', '2024-06-27 04:12:02'),
(2328, 2796, 'PGSOFT', 'double-fortune', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:12:04', '2024-06-27 04:12:04'),
(2329, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:12:26', '2024-06-27 04:12:26'),
(2330, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:12:29', '2024-06-27 04:12:29'),
(2331, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:12:31', '2024-06-27 04:12:31'),
(2332, 2796, 'PGSOFT', 'ganesha-gold', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:12:56', '2024-06-27 04:12:56'),
(2333, 2796, 'PGSOFT', 'ganesha-gold', 0.30, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:12:58', '2024-06-27 04:12:58'),
(2334, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:20', '2024-06-27 04:13:20'),
(2335, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:21', '2024-06-27 04:13:21'),
(2336, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:22', '2024-06-27 04:13:22'),
(2337, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:23', '2024-06-27 04:13:23'),
(2338, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:24', '2024-06-27 04:13:24'),
(2339, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:25', '2024-06-27 04:13:25'),
(2340, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:26', '2024-06-27 04:13:26'),
(2341, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:27', '2024-06-27 04:13:27'),
(2342, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:27', '2024-06-27 04:13:27'),
(2343, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:28', '2024-06-27 04:13:28'),
(2344, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:29', '2024-06-27 04:13:29'),
(2345, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:30', '2024-06-27 04:13:30'),
(2346, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.80, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:30', '2024-06-27 04:13:30'),
(2347, 2796, 'PGSOFT', 'jungle-delight', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:32', '2024-06-27 04:13:32'),
(2348, 2796, 'PGSOFT', 'jungle-delight', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:13:41', '2024-06-27 04:13:41'),
(2349, 1, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:21:15', '2024-06-27 04:21:15'),
(2350, 1, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:21:34', '2024-06-27 04:21:34'),
(2351, 1, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:21:36', '2024-06-27 04:21:36'),
(2352, 1, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:21:50', '2024-06-27 04:21:50'),
(2353, 1, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:21:53', '2024-06-27 04:21:53'),
(2354, 1, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:21:55', '2024-06-27 04:21:55'),
(2355, 1, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:21:57', '2024-06-27 04:21:57'),
(2356, 1, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:39:07', '2024-06-27 04:39:07'),
(2357, 1, 'PGSOFT', 'fortune-dragon', 0.40, 0.40, 'BRL', 'wordslot', 'loss', '2024-06-27 04:39:07', '2024-06-27 04:39:07'),
(2358, 1, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:39:10', '2024-06-27 04:39:10'),
(2359, 1, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:39:17', '2024-06-27 04:39:17'),
(2360, 1, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:39:19', '2024-06-27 04:39:19'),
(2361, 1, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:39:22', '2024-06-27 04:39:22'),
(2362, 1, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:39:24', '2024-06-27 04:39:24'),
(2363, 1, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:39:26', '2024-06-27 04:39:26'),
(2364, 1, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:39:28', '2024-06-27 04:39:28'),
(2365, 1, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-06-27 04:39:30', '2024-06-27 04:39:30'),
(2366, 1, 'PGSOFT', 'fortune-dragon', 0.00, 1.12, 'BRL', 'wordslot', 'loss', '2024-06-27 04:39:30', '2024-06-27 04:39:30');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games_fivers`
--

CREATE TABLE `ggr_games_fivers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_win` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `ggr_games_fivers`
--

INSERT INTO `ggr_games_fivers` (`id`, `user_id`, `provider`, `game`, `balance_bet`, `balance_win`, `currency`, `created_at`, `updated_at`) VALUES
(282, 2742, 'PGSOFT', 'ganesha-gold', 0.30, 0.00, NULL, '2024-04-20 22:25:23', '2024-04-20 22:25:23'),
(283, 2742, 'PGSOFT', 'ganesha-gold', 0.30, 0.00, NULL, '2024-04-20 22:25:30', '2024-04-20 22:25:30'),
(284, 2742, 'PGSOFT', 'ganesha-gold', 0.30, 0.00, NULL, '2024-04-20 22:25:35', '2024-04-20 22:25:35'),
(285, 2742, 'PGSOFT', 'ganesha-gold', 0.30, 0.00, NULL, '2024-04-20 22:25:40', '2024-04-20 22:25:40'),
(286, 2742, 'PGSOFT', 'ganesha-gold', 0.30, 0.00, NULL, '2024-04-20 22:25:43', '2024-04-20 22:25:43'),
(287, 2742, 'PGSOFT', 'ganesha-gold', 0.30, 0.00, NULL, '2024-04-20 22:25:46', '2024-04-20 22:25:46'),
(288, 2742, 'PGSOFT', 'ganesha-gold', 0.30, 0.00, NULL, '2024-04-20 22:25:50', '2024-04-20 22:25:50'),
(289, 2741, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, NULL, '2024-04-20 22:49:29', '2024-04-20 22:49:29'),
(290, 2741, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, NULL, '2024-04-20 22:49:34', '2024-04-20 22:49:34'),
(291, 2741, 'PGSOFT', 'fortune-dragon', 2.00, 4.00, 'BRL', '2024-04-20 22:49:39', '2024-04-20 22:49:39'),
(292, 2741, 'PGSOFT', 'fortune-dragon', 2.00, 0.00, NULL, '2024-04-20 22:49:53', '2024-04-20 22:49:53'),
(293, 2739, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-20 23:17:43', '2024-04-20 23:17:43'),
(294, 2739, 'PGSOFT', 'fortune-dragon', 0.40, 0.40, 'BRL', '2024-04-20 23:17:45', '2024-04-20 23:17:45'),
(295, 2739, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, NULL, '2024-04-20 23:17:49', '2024-04-20 23:17:49'),
(296, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-20 23:40:59', '2024-04-20 23:40:59'),
(297, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-20 23:41:02', '2024-04-20 23:41:02'),
(298, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-20 23:41:05', '2024-04-20 23:41:05'),
(299, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-20 23:41:09', '2024-04-20 23:41:09'),
(300, 2743, 'PGSOFT', 'gem-saviour-conquest', 0.40, 0.00, NULL, '2024-04-20 23:43:38', '2024-04-20 23:43:38'),
(301, 2743, 'PGSOFT', 'phoenix-rises', 0.40, 0.00, NULL, '2024-04-20 23:44:10', '2024-04-20 23:44:10'),
(302, 2743, 'PGSOFT', 'ganesha-gold', 0.30, 0.40, 'BRL', '2024-04-20 23:44:44', '2024-04-20 23:44:44'),
(303, 2739, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, NULL, '2024-04-20 23:44:54', '2024-04-20 23:44:54'),
(304, 2743, 'PGSOFT', 'the-great-icescape', 0.50, 0.00, NULL, '2024-04-20 23:57:19', '2024-04-20 23:57:19'),
(305, 2743, 'PGSOFT', 'the-great-icescape', 0.50, 0.00, NULL, '2024-04-20 23:57:22', '2024-04-20 23:57:22'),
(306, 2743, 'PGSOFT', 'the-great-icescape', 0.50, 0.00, NULL, '2024-04-20 23:57:25', '2024-04-20 23:57:25'),
(307, 2743, 'PGSOFT', 'the-great-icescape', 0.50, 3.20, 'BRL', '2024-04-20 23:57:29', '2024-04-20 23:57:29'),
(308, 2743, 'PGSOFT', 'the-great-icescape', 0.00, 0.00, NULL, '2024-04-20 23:57:33', '2024-04-20 23:57:33'),
(309, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-21 00:01:02', '2024-04-21 00:01:02'),
(310, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-21 00:01:06', '2024-04-21 00:01:06'),
(311, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-21 00:01:09', '2024-04-21 00:01:09'),
(312, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-21 00:01:12', '2024-04-21 00:01:12'),
(313, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-21 00:05:30', '2024-04-21 00:05:30'),
(314, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-21 00:05:32', '2024-04-21 00:05:32'),
(315, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-21 00:34:33', '2024-04-21 00:34:33'),
(316, 2743, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, NULL, '2024-04-21 00:34:37', '2024-04-21 00:34:37'),
(317, 2744, 'PGSOFT', 'gem-saviour-conquest', 0.40, 0.00, NULL, '2024-04-21 11:10:41', '2024-04-21 11:10:41'),
(318, 2744, 'PGSOFT', 'gem-saviour-conquest', 0.00, 0.00, NULL, '2024-04-21 11:10:44', '2024-04-21 11:10:44'),
(319, 2744, 'PGSOFT', 'gem-saviour-conquest', 0.40, 0.00, NULL, '2024-04-21 13:43:33', '2024-04-21 13:43:33'),
(320, 2739, 'PGSOFT', 'ganesha-gold', 0.30, 0.76, 'BRL', '2024-04-23 00:06:25', '2024-04-23 00:06:25'),
(321, 2739, 'PGSOFT', 'ganesha-gold', 0.30, 0.00, NULL, '2024-04-23 00:06:31', '2024-04-23 00:06:31'),
(322, 2739, 'PGSOFT', 'ganesha-gold', 0.30, 5.40, 'BRL', '2024-04-23 00:06:34', '2024-04-23 00:06:34'),
(323, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:19:07', '2024-04-25 16:19:07'),
(324, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:19:12', '2024-04-25 16:19:12'),
(325, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.60, 'BRL', '2024-04-25 16:19:15', '2024-04-25 16:19:15'),
(326, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:19:19', '2024-04-25 16:19:19'),
(327, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:19:23', '2024-04-25 16:19:23'),
(328, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:19:27', '2024-04-25 16:19:27'),
(329, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.60, 'BRL', '2024-04-25 16:19:31', '2024-04-25 16:19:31'),
(330, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:19:34', '2024-04-25 16:19:34'),
(331, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:19:38', '2024-04-25 16:19:38'),
(332, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:19:42', '2024-04-25 16:19:42'),
(333, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:19:45', '2024-04-25 16:19:45'),
(334, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:19:48', '2024-04-25 16:19:48'),
(335, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:19:50', '2024-04-25 16:19:50'),
(336, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.80, 'BRL', '2024-04-25 16:19:53', '2024-04-25 16:19:53'),
(337, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:20:19', '2024-04-25 16:20:19'),
(338, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:20:21', '2024-04-25 16:20:21'),
(339, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:20:25', '2024-04-25 16:20:25'),
(340, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:20:28', '2024-04-25 16:20:28'),
(341, 2741, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-25 16:20:31', '2024-04-25 16:20:31'),
(342, 2747, 'PGSOFT', 'gem-saviour-conquest', 0.40, 0.00, NULL, '2024-04-26 15:25:03', '2024-04-26 15:25:03'),
(343, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:10:50', '2024-04-29 08:10:50'),
(344, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:10:53', '2024-04-29 08:10:53'),
(345, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:10:55', '2024-04-29 08:10:55'),
(346, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:10:58', '2024-04-29 08:10:58'),
(347, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:11:02', '2024-04-29 08:11:02'),
(348, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:11:13', '2024-04-29 08:11:13'),
(349, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:11:17', '2024-04-29 08:11:17'),
(350, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:11:21', '2024-04-29 08:11:21'),
(351, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:11:24', '2024-04-29 08:11:24'),
(352, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:11:27', '2024-04-29 08:11:27'),
(353, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:11:31', '2024-04-29 08:11:31'),
(354, 2749, 'PGSOFT', 'fortune-ox', 0.00, 1.35, 'BRL', '2024-04-29 08:11:42', '2024-04-29 08:11:42'),
(355, 2749, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-29 08:11:51', '2024-04-29 08:11:51'),
(356, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:19:21', '2024-04-29 08:19:21'),
(357, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:19:29', '2024-04-29 08:19:29'),
(358, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:19:32', '2024-04-29 08:19:32'),
(359, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 0.00, NULL, '2024-04-29 08:19:36', '2024-04-29 08:19:36'),
(360, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:19:39', '2024-04-29 08:19:39'),
(361, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:19:42', '2024-04-29 08:19:42'),
(362, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 0.00, NULL, '2024-04-29 08:19:46', '2024-04-29 08:19:46'),
(363, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:19:49', '2024-04-29 08:19:49'),
(364, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:19:52', '2024-04-29 08:19:52'),
(365, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:19:55', '2024-04-29 08:19:55'),
(366, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:19:58', '2024-04-29 08:19:58'),
(367, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:20:00', '2024-04-29 08:20:00'),
(368, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:20:03', '2024-04-29 08:20:03'),
(369, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:20:06', '2024-04-29 08:20:06'),
(370, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 0.00, NULL, '2024-04-29 08:20:10', '2024-04-29 08:20:10'),
(371, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:20:13', '2024-04-29 08:20:13'),
(372, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:20:27', '2024-04-29 08:20:27'),
(373, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 0.00, NULL, '2024-04-29 08:20:31', '2024-04-29 08:20:31'),
(374, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:20:34', '2024-04-29 08:20:34'),
(375, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:20:37', '2024-04-29 08:20:37'),
(376, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 1.60, 'BRL', '2024-04-29 08:20:41', '2024-04-29 08:20:41'),
(377, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 1.56, 'BRL', '2024-04-29 08:20:45', '2024-04-29 08:20:45'),
(378, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 0.00, NULL, '2024-04-29 08:20:51', '2024-04-29 08:20:51'),
(379, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:21:01', '2024-04-29 08:21:01'),
(380, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:21:04', '2024-04-29 08:21:04'),
(381, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 0.00, NULL, '2024-04-29 08:21:08', '2024-04-29 08:21:08'),
(382, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:21:11', '2024-04-29 08:21:11'),
(383, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:21:14', '2024-04-29 08:21:14'),
(384, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:21:16', '2024-04-29 08:21:16'),
(385, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 0.48, 'BRL', '2024-04-29 08:21:24', '2024-04-29 08:21:24'),
(386, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 1.80, 'BRL', '2024-04-29 08:21:28', '2024-04-29 08:21:28'),
(387, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 0.40, 'BRL', '2024-04-29 08:21:34', '2024-04-29 08:21:34'),
(388, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 0.00, NULL, '2024-04-29 08:21:38', '2024-04-29 08:21:38'),
(389, 2749, 'PGSOFT', 'btrfly-blossom', 0.40, 0.00, NULL, '2024-04-29 08:21:50', '2024-04-29 08:21:50'),
(390, 2749, 'PGSOFT', 'btrfly-blossom', 0.00, 0.32, 'BRL', '2024-04-29 08:21:54', '2024-04-29 08:21:54'),
(391, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.72, 'BRL', '2024-04-29 08:22:47', '2024-04-29 08:22:47'),
(392, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-29 08:22:52', '2024-04-29 08:22:52'),
(393, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-29 08:22:55', '2024-04-29 08:22:55'),
(394, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-29 08:22:58', '2024-04-29 08:22:58'),
(395, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-29 08:23:01', '2024-04-29 08:23:01'),
(396, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-29 08:23:05', '2024-04-29 08:23:05'),
(397, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-29 08:23:09', '2024-04-29 08:23:09'),
(398, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-29 08:23:18', '2024-04-29 08:23:18'),
(399, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-29 08:23:21', '2024-04-29 08:23:21'),
(400, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.44, 'BRL', '2024-04-29 08:23:26', '2024-04-29 08:23:26'),
(401, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-29 08:23:34', '2024-04-29 08:23:34'),
(402, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-29 08:23:37', '2024-04-29 08:23:37'),
(403, 2749, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-04-29 08:23:48', '2024-04-29 08:23:48'),
(404, 2752, 'PGSOFT', 'phoenix-rises', 0.40, 0.00, NULL, '2024-04-30 19:30:03', '2024-04-30 19:30:03'),
(405, 2752, 'PGSOFT', 'phoenix-rises', 0.40, 0.00, NULL, '2024-04-30 19:30:06', '2024-04-30 19:30:06'),
(406, 2752, 'PGSOFT', 'phoenix-rises', 0.40, 0.00, NULL, '2024-04-30 19:30:09', '2024-04-30 19:30:09'),
(407, 2752, 'PGSOFT', 'phoenix-rises', 0.40, 0.40, 'BRL', '2024-04-30 19:30:12', '2024-04-30 19:30:12'),
(408, 2752, 'PGSOFT', 'phoenix-rises', 0.40, 0.00, NULL, '2024-04-30 19:30:16', '2024-04-30 19:30:16'),
(409, 2752, 'PGSOFT', 'phoenix-rises', 0.40, 0.00, NULL, '2024-04-30 19:30:20', '2024-04-30 19:30:20'),
(410, 2752, 'PGSOFT', 'phoenix-rises', 0.40, 0.00, NULL, '2024-04-30 19:30:23', '2024-04-30 19:30:23'),
(411, 2752, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, NULL, '2024-04-30 20:51:51', '2024-04-30 20:51:51'),
(412, 2754, 'PGSOFT', 'fortune-ox', 0.50, 0.75, 'BRL', '2024-04-30 21:58:37', '2024-04-30 21:58:37'),
(413, 2754, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-30 21:58:59', '2024-04-30 21:58:59'),
(414, 2754, 'PGSOFT', 'fortune-ox', 0.00, 0.00, NULL, '2024-04-30 21:59:14', '2024-04-30 21:59:14'),
(415, 2754, 'PGSOFT', 'fortune-ox', 0.00, 5.00, 'BRL', '2024-04-30 21:59:21', '2024-04-30 21:59:21'),
(416, 2754, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-30 21:59:42', '2024-04-30 21:59:42'),
(417, 2754, 'PGSOFT', 'fortune-ox', 0.50, 0.00, NULL, '2024-04-30 21:59:46', '2024-04-30 21:59:46'),
(418, 2739, 'SPRIBE', 'mines', 1.00, 0.00, NULL, '2024-04-30 22:52:58', '2024-04-30 22:52:58'),
(419, 2739, 'SPRIBE', 'mines', 1.00, 0.00, NULL, '2024-04-30 22:58:00', '2024-04-30 22:58:00'),
(420, 2739, 'SPRIBE', 'mines', 2.00, 0.00, NULL, '2024-04-30 22:58:09', '2024-04-30 22:58:09'),
(421, 2739, 'SPRIBE', 'mines', 2.00, 0.00, NULL, '2024-04-30 22:58:24', '2024-04-30 22:58:24'),
(422, 2739, 'SPRIBE', 'mines', 2.00, 0.00, NULL, '2024-04-30 22:58:42', '2024-04-30 22:58:42'),
(423, 2739, 'SPRIBE', 'mines', 0.00, 20.28, 'BRL', '2024-04-30 22:58:56', '2024-04-30 22:58:56'),
(424, 2753, 'SPRIBE', 'mines', 3.00, 0.00, NULL, '2024-04-30 23:00:27', '2024-04-30 23:00:27'),
(425, 2753, 'SPRIBE', 'mines', 0.00, 8.19, 'BRL', '2024-04-30 23:00:35', '2024-04-30 23:00:35'),
(426, 2753, 'SPRIBE', 'mines', 3.00, 0.00, NULL, '2024-04-30 23:00:51', '2024-04-30 23:00:51'),
(427, 2753, 'SPRIBE', 'mines', 3.00, 0.00, NULL, '2024-04-30 23:09:35', '2024-04-30 23:09:35'),
(428, 2753, 'SPRIBE', 'mines', 0.00, 5.85, 'BRL', '2024-04-30 23:09:41', '2024-04-30 23:09:41'),
(429, 2753, 'SPRIBE', 'mines', 3.00, 0.00, NULL, '2024-04-30 23:10:15', '2024-04-30 23:10:15'),
(430, 2752, 'SPRIBE', 'mines', 3.00, 0.00, NULL, '2024-04-30 23:16:34', '2024-04-30 23:16:34'),
(431, 2754, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-05-01 01:25:13', '2024-05-01 01:25:13'),
(432, 2754, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-05-01 01:25:23', '2024-05-01 01:25:23'),
(433, 2754, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-05-01 01:25:26', '2024-05-01 01:25:26'),
(434, 2754, 'PGSOFT', 'jungle-delight', 0.40, 0.00, NULL, '2024-05-01 01:25:29', '2024-05-01 01:25:29'),
(435, 2754, 'PGSOFT', 'fortune-mouse', 0.40, 0.00, NULL, '2024-05-01 01:25:53', '2024-05-01 01:25:53'),
(436, 2754, 'PGSOFT', 'fortune-mouse', 0.40, 0.00, NULL, '2024-05-01 01:25:56', '2024-05-01 01:25:56'),
(437, 2754, 'PGSOFT', 'fortune-mouse', 0.40, 0.00, NULL, '2024-05-01 01:25:59', '2024-05-01 01:25:59'),
(438, 2754, 'PGSOFT', 'fortune-mouse', 0.40, 0.00, NULL, '2024-05-01 01:26:02', '2024-05-01 01:26:02'),
(439, 2754, 'PGSOFT', 'fortune-mouse', 0.40, 0.00, NULL, '2024-05-01 01:26:05', '2024-05-01 01:26:05'),
(440, 2754, 'PGSOFT', 'fortune-mouse', 0.40, 0.40, 'BRL', '2024-05-01 01:26:08', '2024-05-01 01:26:08'),
(441, 2754, 'PGSOFT', 'fortune-mouse', 0.40, 0.00, NULL, '2024-05-01 01:29:02', '2024-05-01 01:29:02'),
(442, 2754, 'PGSOFT', 'fortune-mouse', 0.40, 0.00, NULL, '2024-05-01 01:29:05', '2024-05-01 01:29:05'),
(443, 2754, 'PGSOFT', 'fortune-mouse', 0.40, 1.20, 'BRL', '2024-05-01 01:29:08', '2024-05-01 01:29:08'),
(444, 2739, 'PGSOFT', 'the-great-icescape', 0.50, 0.00, NULL, '2024-05-01 01:57:59', '2024-05-01 01:57:59'),
(445, 2739, 'PGSOFT', 'the-great-icescape', 0.00, 0.00, NULL, '2024-05-01 01:58:03', '2024-05-01 01:58:03'),
(446, 2739, 'SPRIBE', 'mines', 1.00, 0.00, NULL, '2024-05-01 02:21:18', '2024-05-01 02:21:18'),
(447, 2739, 'SPRIBE', 'mines', 4.00, 0.00, NULL, '2024-05-01 02:23:32', '2024-05-01 02:23:32'),
(448, 2739, 'SPRIBE', 'mines', 7.00, 0.00, NULL, '2024-05-01 02:23:48', '2024-05-01 02:23:48'),
(449, 2739, 'SPRIBE', 'mines', 7.00, 0.00, NULL, '2024-05-01 02:23:53', '2024-05-01 02:23:53'),
(450, 2739, 'SPRIBE', 'mines', 8.00, 0.00, NULL, '2024-05-01 02:24:00', '2024-05-01 02:24:00'),
(451, 2739, 'SPRIBE', 'mines', 2.00, 0.00, NULL, '2024-05-01 02:24:08', '2024-05-01 02:24:08'),
(452, 2739, 'SPRIBE', 'mines', 2.00, 0.00, NULL, '2024-05-01 02:24:14', '2024-05-01 02:24:14'),
(453, 2739, 'SPRIBE', 'mines', 2.00, 0.00, NULL, '2024-05-01 02:24:37', '2024-05-01 02:24:37'),
(454, 2739, 'SPRIBE', 'mines', 2.00, 0.00, NULL, '2024-05-01 02:24:44', '2024-05-01 02:24:44'),
(455, 2739, 'SPRIBE', 'mines', 2.00, 0.00, NULL, '2024-05-01 02:24:57', '2024-05-01 02:24:57'),
(456, 2739, 'SPRIBE', 'mines', 0.00, 2.88, 'BRL', '2024-05-01 02:25:01', '2024-05-01 02:25:01'),
(457, 2739, 'SPRIBE', 'mines', 2.00, 0.00, NULL, '2024-05-01 02:29:53', '2024-05-01 02:29:53');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games_world_slots`
--

CREATE TABLE `ggr_games_world_slots` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_win` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BRL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `liked_user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `liked_user_id`, `created_at`, `updated_at`) VALUES
(4, 55, 55, '2024-04-06 07:07:00', '2024-04-06 07:07:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_10_30_034921_create_settings_table', 6),
(7, '2023_11_03_205251_create_sport_categories_table', 1),
(8, '2023_11_03_205252_create_sports_table', 1),
(10, '2023_11_04_001342_create_sport_events_table', 2),
(11, '2023_11_04_213841_add_fields_to_users_table', 3),
(12, '2023_11_07_202919_create_currencies_table', 4),
(13, '2023_11_07_210310_create_wallets_table', 5),
(16, '2023_11_07_214236_create_withdrawals_table', 7),
(17, '2023_11_07_214240_create_deposits_table', 7),
(18, '2023_11_07_214244_create_orders_table', 7),
(19, '2023_11_07_214708_create_suit_pay_payments_table', 7),
(20, '2023_11_07_215204_create_notifications_table', 8),
(21, '2023_11_07_202919_create_currency_alloweds_table', 9),
(22, '2023_11_11_205824_create_casino_categories_table', 9),
(23, '2023_11_11_205834_create_casino_providers_table', 9),
(24, '2023_11_11_205938_create_casino_games_slotgrators_table', 9),
(25, '2023_11_11_210018_create_casino_games_kscinuses_table', 9),
(26, '2023_11_12_225424_create_transactions_table', 10),
(27, '2023_11_12_225431_create_affiliate_histories_table', 10),
(28, '2023_11_12_234643_add_field_to_wallet_table', 11),
(29, '2023_11_14_203632_create_likes_table', 12),
(30, '2023_09_27_214903_create_wallet_changes_table', 13),
(31, '2023_11_16_155140_create_permission_tables', 14),
(32, '2023_11_17_012533_add_language_to_users_table', 15),
(33, '2023_11_22_171616_create_football_leagues_table', 16),
(34, '2023_11_22_175530_create_football_venues_table', 17),
(35, '2023_11_22_175547_create_football_teams_table', 17),
(36, '2023_11_23_143637_create_football_events_table', 18),
(38, '2023_11_29_134520_create_sport_bets_table', 19),
(39, '2023_11_29_135451_create_sport_bets_odds_table', 19),
(40, '2023_11_30_195548_create_gateways_table', 20),
(41, '2023_11_30_195557_create_games_keys_table', 20),
(42, '2023_11_30_195609_create_setting_mails_table', 20),
(43, '2023_10_08_111755_add_fields_to_game_exclusives_table', 20),
(44, '2023_10_07_183921_create_game_exclusives_table', 21),
(45, '2023_10_11_144956_create_system_wallets_table', 22),
(46, '2023_12_18_172721_create_banners_table', 23),
(47, '2023_12_20_135908_create_casino_games_salsas_table', 24),
(48, '2023_12_23_224032_create_fivers_providers_table', 25),
(49, '2023_12_23_224105_create_fivers_games_table', 25),
(50, '2023_12_31_121453_create_custom_layouts_table', 26),
(51, '2024_01_01_193712_create_g_g_r_games_fivers_table', 27),
(52, '2024_01_14_155144_create_missions_table', 28),
(53, '2024_01_14_155150_create_mission_users_table', 28),
(54, '2024_01_19_120728_create_ka_gamings_table', 29),
(55, '2024_01_19_170650_create_categories_table', 30),
(56, '2024_01_19_170657_create_providers_table', 30),
(57, '2024_01_19_170658_create_games_table', 31),
(58, '2023_10_07_183920_create_categories_table', 32),
(59, '2023_10_07_183921_create_providers_table', 33),
(60, '2023_10_07_183922_create_games_table', 34),
(61, '2024_01_20_144529_create_category_games_table', 35),
(62, '2024_01_20_182155_add_vibra_to_games_keys_table', 36),
(63, '2024_01_21_173742_create_game_favorites_table', 37),
(64, '2024_01_21_173752_create_game_likes_table', 37),
(65, '2024_01_21_173803_create_game_reviews_table', 37),
(66, '2024_01_11_231932_create_vibra_casino_games_table', 38),
(69, '2024_01_28_194456_add_vip_to_wallet_table', 40),
(68, '2024_01_28_194645_create_vips_table', 39),
(70, '2024_01_28_231843_create_vip_users_table', 41),
(71, '2024_01_29_102939_add_paid_to_limits_table', 41),
(72, '2024_01_10_001705_create_sub_affiliates_table', 42),
(73, '2024_01_30_120547_create_affiliate_withdraws_table', 43),
(74, '2024_02_09_233936_add_worldslot_to_games_keys_table', 44),
(75, '2024_02_10_191215_add_disable_spin_to_settings_table', 45),
(76, '2024_02_17_210822_add_games2_to_games_keys_table', 46),
(78, '2024_02_20_004853_add_sub_to_settings_table', 47),
(79, '2024_02_24_121146_add_header_to_custom_layouts_table', 48),
(80, '2024_02_26_144235_create_ggr_games_world_slots_table', 49),
(81, '2024_03_01_172613_add_evergame_to_games_keys_table', 50),
(82, '2024_03_03_201700_add_venixkey_to_games_keys_table', 51),
(83, '2024_03_08_201557_add_play_gaming_to_games_keys_table', 52),
(84, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 53),
(85, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 54),
(86, '2024_03_21_223739_add_sharkpay_to_gateways_table', 55),
(87, '2024_03_21_230017_add_reference_to_transactions_table', 56),
(88, '2024_03_24_125025_add_rollver_protection_to_settings_table', 57),
(89, '2024_03_24_134101_add_accept_bonus_to_transactions_table', 58),
(90, '2024_03_24_172243_add_receita_to_affiliate_histories_table', 59),
(91, '2024_03_26_161932_add_baseline_column_to_settings_table', 60),
(92, '2024_03_26_234226_add_playigaming_column_to_games_key_table', 61),
(93, '2024_03_25_231103_add_mercado_pago_column_to_gateways_table', 62),
(94, '2024_03_30_215051_add_social_to_custom_layouts_table', 63),
(95, '2024_03_30_225900_create_digito_pay_payments_table', 64),
(96, '2024_03_30_225929_add_digitopay_to_gateways_table', 64),
(97, '2024_03_31_124211_add_digitopay_to_settings_table', 65),
(98, '2024_04_02_140932_add_default_gateway_to_settings_table', 66);

-- --------------------------------------------------------

--
-- Estrutura para tabela `missions`
--

CREATE TABLE `missions` (
  `id` bigint UNSIGNED NOT NULL,
  `challenge_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'game',
  `challenge_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `challenge_start_date` datetime NOT NULL,
  `challenge_end_date` datetime NOT NULL,
  `challenge_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `challenge_total` bigint NOT NULL DEFAULT '1',
  `challenge_currency` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_provider` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `challenge_gameid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mission_users`
--

CREATE TABLE `mission_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `mission_id` int UNSIGNED NOT NULL,
  `rounds` bigint DEFAULT '0',
  `rewards` decimal(10,2) DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(7, 'App\\Models\\User\r\n', 1),
(1, 'App\\Models\\User', 1),
(7, 'App\\Models\\User\r\n', 7),
(2, 'App\\Models\\User', 44),
(2, 'App\\Models\\User', 51),
(2, 'App\\Models\\User', 52),
(2, 'App\\Models\\User', 53),
(2, 'App\\Models\\User', 55),
(2, 'App\\Models\\User', 2739),
(1, 'App\\Models\\User', 2741),
(2, 'App\\Models\\User', 2741),
(7, 'App\\Models\\User', 2741),
(1, 'App\\Models\\User', 2744),
(2, 'App\\Models\\User', 2746),
(1, 'App\\Models\\User', 2747),
(7, 'App\\Models\\User', 2747),
(2, 'App\\Models\\User', 2751),
(3, 'App\\Models\\User', 2752),
(2, 'App\\Models\\User', 2754),
(2, 'App\\Models\\User', 2757),
(1, 'App\\Models\\User', 2760),
(2, 'App\\Models\\User', 2760),
(2, 'App\\Models\\User', 2761),
(2, 'App\\Models\\User', 2762),
(2, 'App\\Models\\User', 2778),
(2, 'App\\Models\\User', 2789),
(2, 'App\\Models\\User', 2790),
(2, 'App\\Models\\User', 2792),
(2, 'App\\Models\\User', 2793),
(2, 'App\\Models\\User', 2794);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `session_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_money` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `providers` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refunded` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `round_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `session_id`, `transaction_id`, `game`, `game_uuid`, `type`, `type_money`, `amount`, `providers`, `refunded`, `status`, `round_id`, `created_at`, `updated_at`) VALUES
(2920, 2800, NULL, '94bf90a6a1b68ac26866b2207124a636', '2027', '2027', 'bet', 'balance', 0.20, 'primeconnect', 0, 1, '1', '2024-08-31 16:44:13', '2024-08-31 16:44:13'),
(2921, 2800, NULL, 'afbe681e5ed4eaac6fa8bde5a7fbbd1e', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:26', '2024-08-31 17:14:26'),
(2922, 2800, NULL, '0186eb0387b3b26b70196e23c36dc07e', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:28', '2024-08-31 17:14:28'),
(2923, 2800, NULL, '4f1bae46e01dfa961c7e509511aa30b5', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:29', '2024-08-31 17:14:29'),
(2924, 2800, NULL, '085e373c5b235c774583fac0d6373cfc', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:30', '2024-08-31 17:14:30'),
(2925, 2800, NULL, '80873b3cfaf16d8879a2762d2857a3ed', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:32', '2024-08-31 17:14:32'),
(2926, 2800, NULL, '4de1b968d11f450980cee647063bbfde', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:33', '2024-08-31 17:14:33'),
(2927, 2800, NULL, 'f648189d0cc6a798c6c32e06b6d5720f', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:35', '2024-08-31 17:14:35'),
(2928, 2800, NULL, '6880644feef2089fa98a880adb78aa74', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:36', '2024-08-31 17:14:36'),
(2929, 2800, NULL, 'fb979f482840cbaded7d7a89c837ea8c', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:38', '2024-08-31 17:14:38'),
(2930, 2800, NULL, 'e6ac82a0e7bd03ed55707c1ccdd781bb', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:39', '2024-08-31 17:14:39'),
(2931, 2800, NULL, 'b795dbe9a11d1625366b3d3af17d0f7b', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:52', '2024-08-31 17:14:52'),
(2932, 2800, NULL, '1562ae685dff266cba8347a764dfe93b', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:54', '2024-08-31 17:14:54'),
(2933, 2800, NULL, '933b101cf7eea4155db3b98e116b924d', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:56', '2024-08-31 17:14:56'),
(2934, 2800, NULL, '59311801dabc0a3b4500a8aaab045d32', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:57', '2024-08-31 17:14:57'),
(2935, 2800, NULL, '0e7f529ff0c276c36f66ee2cbdd259d6', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:14:58', '2024-08-31 17:14:58'),
(2936, 2800, NULL, '6758bfa458e459ac9afec8fa204aebe1', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:15:00', '2024-08-31 17:15:00'),
(2937, 2800, NULL, 'e785fd7400412352facd65e7c70f50e2', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:15:01', '2024-08-31 17:15:01'),
(2938, 2800, NULL, '9d249c2ddd6f2240fd404d38ff213267', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:15:02', '2024-08-31 17:15:02'),
(2939, 2800, NULL, 'e63769ac41fc844aae7a22a1305a235b', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:15:03', '2024-08-31 17:15:03'),
(2940, 2800, NULL, '61b714011576601a268173efb3140d88', '1695365', '1695365', 'bet', 'balance_withdrawal', 0.40, 'primeconnect', 0, 1, '1', '2024-08-31 17:15:05', '2024-08-31 17:15:05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('Contastestes2023@gmail.com', 'dechG', '2024-05-03 16:07:29'),
('xgamingsites@gmail.com', 'uLjRr', '2024-05-03 16:08:14'),
('admin@demo.com', '481dW', '2024-05-03 19:01:16');

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'games-exclusive-edit', 'web', '2023-10-12 16:23:45', '2023-10-12 18:12:28'),
(2, 'games-exclusive-view', 'web', '2023-10-12 16:23:56', '2023-10-12 18:11:25'),
(3, 'games-exclusive-create', 'web', '2023-10-12 16:25:06', '2023-10-12 18:11:10'),
(4, 'admin-view', 'web', '2023-10-12 17:56:35', '2023-10-12 17:56:35'),
(5, 'admin-create', 'web', '2023-10-12 18:56:02', '2023-10-12 18:56:02'),
(6, 'admin-edit', 'web', '2023-10-12 18:56:27', '2023-10-12 18:56:27'),
(7, 'admin-delete', 'web', '2023-10-12 18:56:55', '2023-10-12 18:56:55'),
(8, 'category-view', 'web', '2023-10-12 19:01:31', '2023-10-12 19:01:31'),
(9, 'category-create', 'web', '2023-10-12 19:01:46', '2023-10-12 19:01:46'),
(10, 'category-edit', 'web', '2023-10-12 19:01:59', '2023-10-12 19:01:59'),
(11, 'category-delete', 'web', '2023-10-12 19:02:09', '2023-10-12 19:02:09'),
(12, 'game-view', 'web', '2023-10-12 19:02:27', '2023-10-12 19:02:27'),
(13, 'game-create', 'web', '2023-10-12 19:02:36', '2023-10-12 19:02:36'),
(14, 'game-edit', 'web', '2023-10-12 19:02:44', '2023-10-12 19:02:44'),
(15, 'game-delete', 'web', '2023-10-12 19:02:54', '2023-10-12 19:02:54'),
(16, 'wallet-view', 'web', '2023-10-12 19:05:49', '2023-10-12 19:05:49'),
(17, 'wallet-create', 'web', '2023-10-12 19:06:01', '2023-10-12 19:06:01'),
(18, 'wallet-edit', 'web', '2023-10-12 19:06:11', '2023-10-12 19:06:11'),
(19, 'wallet-delete', 'web', '2023-10-12 19:06:18', '2023-10-12 19:06:18'),
(20, 'deposit-view', 'web', '2023-10-12 19:06:44', '2023-10-12 19:06:44'),
(21, 'deposit-create', 'web', '2023-10-12 19:06:56', '2023-10-12 19:06:56'),
(22, 'deposit-edit', 'web', '2023-10-12 19:07:05', '2023-10-12 19:07:05'),
(23, 'deposit-update', 'web', '2023-10-12 19:08:00', '2023-10-12 19:08:00'),
(24, 'deposit-delete', 'web', '2023-10-12 19:08:11', '2023-10-12 19:08:11'),
(25, 'withdrawal-view', 'web', '2023-10-12 19:09:31', '2023-10-12 19:09:31'),
(26, 'withdrawal-create', 'web', '2023-10-12 19:09:40', '2023-10-12 19:09:40'),
(27, 'withdrawal-edit', 'web', '2023-10-12 19:09:51', '2023-10-12 19:09:51'),
(28, 'withdrawal-update', 'web', '2023-10-12 19:10:00', '2023-10-12 19:10:00'),
(29, 'withdrawal-delete', 'web', '2023-10-12 19:10:09', '2023-10-12 19:10:09'),
(30, 'order-view', 'web', '2023-10-12 19:12:36', '2023-10-12 19:12:36'),
(31, 'order-create', 'web', '2023-10-12 19:12:47', '2023-10-12 19:12:47'),
(32, 'order-edit', 'web', '2023-10-12 19:12:56', '2023-10-12 19:12:56'),
(33, 'order-update', 'web', '2023-10-12 19:13:06', '2023-10-12 19:13:06'),
(34, 'order-delete', 'web', '2023-10-12 19:13:19', '2023-10-12 19:13:19'),
(35, 'admin-menu-view', 'web', '2023-10-12 20:26:06', '2023-10-12 20:26:06'),
(36, 'setting-view', 'web', '2023-10-12 21:25:46', '2023-10-12 21:25:46'),
(37, 'setting-create', 'web', '2023-10-12 21:25:57', '2023-10-12 21:25:57'),
(38, 'setting-edit', 'web', '2023-10-12 21:26:06', '2023-10-12 21:26:06'),
(39, 'setting-update', 'web', '2023-10-12 21:26:19', '2023-10-12 21:26:19'),
(40, 'setting-delete', 'web', '2023-10-12 21:26:33', '2023-10-12 21:26:33'),
(41, 'Demo', 'api', '2024-04-15 18:49:54', '2024-04-15 18:49:54'),
(42, 'Demo (Web)', 'web', '2024-04-15 18:55:20', '2024-04-15 18:55:20'),
(43, 'Demo Arthur', 'api', '2024-04-30 19:48:35', '2024-04-30 19:48:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `providers`
--

CREATE TABLE `providers` (
  `id` bigint UNSIGNED NOT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `rtp` bigint DEFAULT '90',
  `views` bigint DEFAULT '1',
  `distribution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `providers`
--

INSERT INTO `providers` (`id`, `cover`, `code`, `name`, `status`, `rtp`, `views`, `distribution`, `created_at`, `updated_at`) VALUES
(1, NULL, 'casino-evolution', 'EVOLUTION', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-31 16:31:47'),
(2, NULL, 'PGSOFT', 'PGSOFT', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(3, NULL, 'PRAGMATIC PLAY', 'PRAGMATIC PLAY', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(4, NULL, 'slot-habanero', 'HABANERO', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(5, NULL, 'LEPRECOINS', 'LEPRECOINS', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(6, NULL, 'casino-dream', 'Dream Gaming', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-31 16:31:58'),
(7, NULL, 'casino-micro', 'Micro Gaming', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(8, NULL, 'casino-dreaminfa', 'Hotel Dream', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(9, NULL, 'casino-microinfa', 'Hotel Micro', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(10, NULL, 'slot-pragmatic', 'Pragmatic Slot', 0, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:58:11'),
(11, NULL, 'slot-pgsoft', 'PGSoft Slot', 0, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:58:04'),
(12, NULL, 'slot-booongo', 'Booongo', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(13, NULL, 'slot-hacksaw', 'Hacksaw Slot', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(14, NULL, 'slot-popiplay', 'Popiplay Slot', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(15, NULL, 'slot-evoplay', 'Evoplay Slot', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(16, NULL, 'slot-mascot', 'Mascot Slot', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(17, NULL, 'slot-popok', 'PopOk Slot', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41'),
(18, NULL, 'mini-game', 'Mini Game', 1, 80, 1, 'primeconnect', '2024-08-28 14:21:41', '2024-08-28 14:21:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-10-12 16:20:41', '2023-10-12 16:20:41'),
(2, 'afiliado', 'web', '2023-10-12 16:21:08', '2023-10-12 16:21:08'),
(3, 'Demo', 'web', '2024-04-15 18:50:25', '2024-04-15 18:50:25'),
(4, 'Demo (Web)', 'web', '2024-04-15 18:55:52', '2024-04-15 18:55:52'),
(7, 'developer', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(41, 3),
(42, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `software_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_logo_white` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_logo_black` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BRL',
  `decimal_format` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dot',
  `currency_position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `revshare_percentage` bigint DEFAULT '20',
  `ngr_percent` bigint DEFAULT '20',
  `soccer_percentage` bigint DEFAULT '30',
  `prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'R$',
  `storage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `initial_bonus` bigint DEFAULT '0',
  `min_deposit` decimal(10,2) DEFAULT '20.00',
  `max_deposit` decimal(10,2) DEFAULT '0.00',
  `min_withdrawal` decimal(10,2) DEFAULT '20.00',
  `max_withdrawal` decimal(10,2) DEFAULT '0.00',
  `rollover` bigint DEFAULT '10',
  `rollover_deposit` bigint DEFAULT '1',
  `suitpay_is_enable` tinyint DEFAULT '1',
  `stripe_is_enable` tinyint DEFAULT '1',
  `bspay_is_enable` tinyint DEFAULT '0',
  `sharkpay_is_enable` tinyint DEFAULT '1',
  `turn_on_football` tinyint DEFAULT '1',
  `revshare_reverse` tinyint(1) DEFAULT '1',
  `bonus_vip` bigint DEFAULT '100',
  `activate_vip_bonus` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `maintenance_mode` tinyint DEFAULT '0',
  `withdrawal_limit` bigint DEFAULT NULL,
  `withdrawal_period` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disable_spin` tinyint(1) NOT NULL DEFAULT '0',
  `perc_sub_lv1` bigint NOT NULL DEFAULT '4',
  `perc_sub_lv2` bigint NOT NULL DEFAULT '2',
  `perc_sub_lv3` bigint NOT NULL DEFAULT '3',
  `disable_rollover` tinyint DEFAULT '0',
  `rollover_protection` bigint NOT NULL DEFAULT '1',
  `cpa_baseline` decimal(10,2) DEFAULT NULL,
  `cpa_value` decimal(10,2) DEFAULT NULL,
  `mercadopago_is_enable` tinyint DEFAULT '0',
  `digitopay_is_enable` tinyint NOT NULL DEFAULT '0',
  `default_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'suitpay',
  `ezzebank_is_enable` tinyint NOT NULL DEFAULT '0',
  `footer_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_number` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo_loading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `settings`
--

INSERT INTO `settings` (`id`, `software_name`, `software_description`, `software_favicon`, `software_logo_white`, `software_logo_black`, `software_background`, `currency_code`, `decimal_format`, `currency_position`, `revshare_percentage`, `ngr_percent`, `soccer_percentage`, `prefix`, `storage`, `initial_bonus`, `min_deposit`, `max_deposit`, `min_withdrawal`, `max_withdrawal`, `rollover`, `rollover_deposit`, `suitpay_is_enable`, `stripe_is_enable`, `bspay_is_enable`, `sharkpay_is_enable`, `turn_on_football`, `revshare_reverse`, `bonus_vip`, `activate_vip_bonus`, `updated_at`, `maintenance_mode`, `withdrawal_limit`, `withdrawal_period`, `disable_spin`, `perc_sub_lv1`, `perc_sub_lv2`, `perc_sub_lv3`, `disable_rollover`, `rollover_protection`, `cpa_baseline`, `cpa_value`, `mercadopago_is_enable`, `digitopay_is_enable`, `default_gateway`, `ezzebank_is_enable`, `footer_text`, `footer_number`, `footer_email`, `logo_loading`) VALUES
(1, 'PRIME GAMES', 'um site de apostas esportivas e cassino online, que oferece aos seus usuários uma experiência única de apostas em diversos esportes, incluindo futebol, basquete, tênis, vôlei, entre outros.  ', 'uploads/NCYfytfzi41D3fAO4VuTtZnXWJvHMTsw1iF24wmk.png', 'uploads/T6vBDt0saa9BskEkKMTmb95lhhrifzkQPSl6EHgK.png', 'uploads/YuNmNbz2wOzVyLN07L4W9SpCDsCDT18CuwXbkQUi.png', '[]', 'BRL', 'dot', 'left', 20, 0, 30, 'R$', 'local', 0, 1.00, 50000.00, 100.00, 50000.00, 36, 2, 1, 0, 1, 1, 0, 0, 100, 0, '2024-09-05 23:04:24', 0, 1, 'daily', 0, 0, 0, 0, 0, 5, 30.00, 15.00, 0, 0, 'sharkpay', 0, 'um site de apostas esportivas e cassino online, que oferece aos seus usuários uma experiência única de apostas em diversos esportes, incluindo futebol, basquete, tênis, vôlei, entre outros.  Com uma plataforma intuitiva e fácil de usar, a PRIME GAMES permite que seus usuários apostem em jogos ao vivo, além de oferecer uma ampla variedade de opções de apostas pré-jogo.  Com o objetivo de proporcionar a melhor experiência de apostas aos seus usuários, oferecemos uma ampla gama de recursos e ferramentas, incluindo estatísticas detalhadas dos jogos,histórico de resultados, análises de especialistas e muito mais.  Além disso, o site oferece diversas promoções e bônus exclusivos para seus usuários, aumentando as chances de lucro e proporcionando uma experiência ainda mais emocionante.  \"Somos uma plataforma segura e confiável, que oferece suporte ao cliente 24 horas por dia, sete dias por semana. Com uma equipe de especialistas em apostas esportivas e cassino online,Donald Bet está comprometida em garantir que seus usuários tenham uma experiência positiva e segura, e possam desfrutar de todas as emoções e oportunidades oferecidas pelas apostas esportivas de forma responsável e consciente.', '(99) 99999-9999', 'contactt@primeapi.com', 'uploads/wfZqfDfzN7SVLa40YAmwR56PywBKPLIhdeXwLBt1.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `setting_mails`
--

CREATE TABLE `setting_mails` (
  `id` bigint UNSIGNED NOT NULL,
  `software_smtp_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_host` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_port` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_encryption` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_from_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_from_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sub_affiliates`
--

CREATE TABLE `sub_affiliates` (
  `id` bigint UNSIGNED NOT NULL,
  `affiliate_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `suit_pay_payments`
--

CREATE TABLE `suit_pay_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `withdrawal_id` bigint UNSIGNED NOT NULL,
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `observation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `suit_pay_payments`
--

INSERT INTO `suit_pay_payments` (`id`, `payment_id`, `user_id`, `withdrawal_id`, `pix_key`, `pix_type`, `amount`, `observation`, `status`, `created_at`, `updated_at`) VALUES
(1, '1dee1438-a1d0-4f92-b568-063bcabb911f', 40, 2, '39228471-3c06-4535-90a0-eb6bb84d0493', 'randomKey', 4.00, 'suitpay', 1, '2024-04-04 01:48:44', '2024-04-04 01:48:47'),
(2, NULL, 2746, 6, '11c64058-eaf3-47da-82d2-47f7bf236e2d', 'randomKey', 10.00, 'suitpay', 0, '2024-04-26 09:29:39', '2024-04-26 09:29:39'),
(3, NULL, 2746, 6, '11c64058-eaf3-47da-82d2-47f7bf236e2d', 'randomKey', 10.00, 'suitpay', 0, '2024-04-26 09:29:50', '2024-04-26 09:29:50'),
(4, NULL, 2746, 6, '11c64058-eaf3-47da-82d2-47f7bf236e2d', 'randomKey', 10.00, 'suitpay', 0, '2024-04-26 09:30:27', '2024-04-26 09:30:27');

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_wallets`
--

CREATE TABLE `system_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `label` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(27,12) NOT NULL DEFAULT '0.000000000000',
  `balance_min` decimal(27,12) NOT NULL DEFAULT '10000.100000000000',
  `pay_upto_percentage` decimal(4,2) NOT NULL DEFAULT '45.00',
  `mode` enum('balance_min','percentage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `system_wallets`
--

INSERT INTO `system_wallets` (`id`, `label`, `balance`, `balance_min`, `pay_upto_percentage`, `mode`, `created_at`, `updated_at`) VALUES
(1, 'system', 261.800000000000, 10000.100000000000, 45.00, 'percentage', '2023-10-11 16:11:15', '2023-10-16 18:42:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'usd',
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_bonus` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `transactions`
--

INSERT INTO `transactions` (`id`, `payment_id`, `user_id`, `payment_method`, `price`, `currency`, `status`, `created_at`, `updated_at`, `reference`, `accept_bonus`) VALUES
(31, '2f994155-0247-49bf-b646-d71eb69abbf3', 2798, 'pix', 10.00, 'BRL', 1, '2024-06-27 12:03:36', '2024-06-27 12:04:04', NULL, 1),
(30, '3ddcef59-9622-4ba1-be86-9b56709c08c2', 2798, 'pix', 10.00, 'BRL', 0, '2024-06-27 12:00:18', '2024-06-27 12:00:18', NULL, 1),
(32, 'e80ab95f-70d2-4dc7-bfea-b4b7d77c0ff4', 1, 'pix', 10.00, 'BRL', 0, '2024-08-28 14:51:19', '2024-08-28 14:51:19', NULL, 0),
(33, '4fc1f8e9-78c3-4753-b209-b3a46a9fc1d4', 1, 'pix', 10.00, 'BRL', 0, '2024-08-30 14:27:54', '2024-08-30 14:27:54', NULL, 0),
(34, 'n5FjXompGqLJXj3qc5QPjHdsMy', 1, 'pix', 10.00, 'BRL', 0, '2024-08-31 00:21:07', '2024-08-31 00:21:18', 'INV-K5XqWU', 1),
(35, 'QXhehoS04SsvZHLq7X46vW1HJI', 1, 'pix', 5.00, 'BRL', 1, '2024-08-31 00:28:25', '2024-08-31 00:46:02', 'INV-D00LKt', 0),
(36, 'oNAfp0Uo9t4eDiKuhk2aTrmc8g', 1, 'pix', 5.00, 'BRL', 1, '2024-08-31 00:33:45', '2024-08-31 00:36:02', 'INV-1ezMUd', 1),
(37, 'z0RKxrJciovcByhxtYa2JIdBmC', 1, 'pix', 5.00, 'BRL', 1, '2024-08-31 00:43:29', '2024-08-31 00:44:02', 'INV-WbEJlA', 1),
(38, 'M99zNyV23SRUuh5ulFZivKBS9p', 1, 'pix', 5.00, 'BRL', 1, '2024-08-31 00:46:22', '2024-08-31 00:48:02', 'INV-lOPbSx', 1),
(39, '4f1d5cdc-103a-4b5e-b018-a05962d629f4', 1, 'pix', 5.00, 'BRL', 1, '2024-08-31 08:17:47', '2024-08-31 08:19:11', NULL, 0),
(40, '3061c186-865b-48b0-b27e-38dd7a722a73', 1, 'pix', 5.00, 'BRL', 0, '2024-08-31 08:29:38', '2024-08-31 08:29:38', '123694297666d31ac0bf01b8.80832716', 1),
(41, '7ad15cd7955a606fa801m0q6zzqs4edj', 1, 'pix', 1.00, 'BRL', 1, '2024-09-05 23:04:48', '2024-09-05 23:05:36', NULL, 1),
(42, 'f32a43e2e70442520830m0qxz0824r3t', 1, 'pix', 1.00, 'BRL', 1, '2024-09-06 11:39:51', '2024-09-06 11:40:38', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `oauth_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logged_in` tinyint NOT NULL DEFAULT '0',
  `banned` tinyint NOT NULL DEFAULT '0',
  `inviter` int DEFAULT NULL,
  `inviter_code` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliate_revenue_share` bigint NOT NULL DEFAULT '2',
  `affiliate_revenue_share_fake` bigint DEFAULT NULL,
  `affiliate_cpa` decimal(20,2) NOT NULL DEFAULT '10.00',
  `affiliate_baseline` decimal(20,2) NOT NULL DEFAULT '40.00',
  `is_demo_agent` tinyint NOT NULL DEFAULT '0',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pt_BR',
  `role_id` int DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `oauth_id`, `oauth_type`, `avatar`, `last_name`, `cpf`, `phone`, `logged_in`, `banned`, `inviter`, `inviter_code`, `affiliate_revenue_share`, `affiliate_revenue_share_fake`, `affiliate_cpa`, `affiliate_baseline`, `is_demo_agent`, `status`, `language`, `role_id`) VALUES
(2801, 'Alisson Dourado', 'douradonascimento@hotmail.com', NULL, '$2y$10$ylQMvK3/HVNfFNr0OqkRLurQUMAMrD.4UJ4oayVk07mjRgDi59odi', NULL, '2024-09-02 13:44:56', '2024-09-02 13:44:56', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 20, NULL, 15.00, 30.00, 0, 'active', 'pt_BR', 3),
(1, 'Prime Games', 'primegames@gmail.com', NULL, '$2y$10$iyhkinbrrNTV/ysYPTAdDO1Dz045nPRzGdFjw0KjxhWYhSsPBvt46', 'r5UOfKI1FXcZUfUNZRzSYDns2EsRqA2TpzbH8mj0UrEOJI6WEPVdQuB6g7pa', '2024-08-28 13:47:54', '2024-08-28 13:47:54', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 20, NULL, 15.00, 30.00, 0, 'active', 'pt_BR', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vips`
--

CREATE TABLE `vips` (
  `id` bigint UNSIGNED NOT NULL,
  `bet_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bet_level` bigint NOT NULL DEFAULT '1',
  `bet_required` bigint DEFAULT NULL,
  `bet_period` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bet_bonus` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vip_users`
--

CREATE TABLE `vip_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `vip_id` int UNSIGNED NOT NULL,
  `level` bigint NOT NULL,
  `points` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_bonus_rollover` decimal(10,2) DEFAULT '0.00',
  `balance_deposit_rollover` decimal(10,2) DEFAULT '0.00',
  `balance_withdrawal` decimal(10,2) DEFAULT '0.00',
  `balance_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_cryptocurrency` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  `balance_demo` decimal(20,8) DEFAULT '1000.00000000',
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT '0.00',
  `hide_balance` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_won` bigint NOT NULL DEFAULT '0',
  `total_lose` bigint NOT NULL DEFAULT '0',
  `last_won` bigint NOT NULL DEFAULT '0',
  `last_lose` bigint NOT NULL DEFAULT '0',
  `vip_level` bigint DEFAULT '0',
  `vip_points` bigint DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `currency`, `symbol`, `balance`, `balance_bonus_rollover`, `balance_deposit_rollover`, `balance_withdrawal`, `balance_bonus`, `balance_cryptocurrency`, `balance_demo`, `refer_rewards`, `hide_balance`, `active`, `created_at`, `updated_at`, `total_bet`, `total_won`, `total_lose`, `last_won`, `last_lose`, `vip_level`, `vip_points`) VALUES
(2779, 1, 'BRL', 'R$', 107.00, 0.00, 14.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-06-12 03:53:24', '2024-09-06 11:40:38', 0.00, 0, 0, 0, 0, 0, 0),
(2793, 2798, 'BRL', 'R$', 10.00, 0.00, 20.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-06-27 11:48:57', '2024-06-27 12:04:04', 0.00, 0, 0, 0, 0, 0, 0),
(2794, 2799, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-08-28 13:47:54', '2024-08-28 13:47:54', 0.00, 0, 0, 0, 0, 0, 0),
(2795, 2800, 'BRL', 'R$', 0.00, 0.00, 0.00, 41.80, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-08-31 16:22:25', '2024-08-31 17:15:05', 0.00, 0, 0, 0, 0, 0, 0),
(2796, 2801, 'BRL', 'R$', 100.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-09-02 13:44:56', '2024-09-02 13:44:56', 0.00, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallet_changes`
--

CREATE TABLE `wallet_changes` (
  `id` bigint UNSIGNED NOT NULL,
  `reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_total` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_roi` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_entry` decimal(20,2) NOT NULL DEFAULT '0.00',
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT '0.00',
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int UNSIGNED NOT NULL,
  `app_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_histories_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `affiliate_histories_inviter_index` (`inviter`) USING BTREE;

--
-- Índices de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_withdraws_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `casino_categories_slug_unique` (`slug`) USING BTREE;

--
-- Índices de tabela `category_game`
--
ALTER TABLE `category_game`
  ADD KEY `category_games_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `category_games_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `currency_alloweds_currency_id_foreign` (`currency_id`) USING BTREE;

--
-- Índices de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `deposits_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `digito_pay_payments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `digito_pay_payments_withdrawal_id_foreign` (`withdrawal_id`) USING BTREE;

--
-- Índices de tabela `ezze_bank_payments`
--
ALTER TABLE `ezze_bank_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ezze_bank_payments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `ezze_bank_payments_withdrawal_id_foreign` (`withdrawal_id`) USING BTREE;

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Índices de tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `games_provider_id_index` (`provider_id`) USING BTREE,
  ADD KEY `games_game_code_index` (`game_code`) USING BTREE;

--
-- Índices de tabela `games_keys`
--
ALTER TABLE `games_keys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `game_favorites_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_favorites_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_likes`
--
ALTER TABLE `game_likes`
  ADD UNIQUE KEY `game_likes_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_likes_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_reviews`
--
ALTER TABLE `game_reviews`
  ADD UNIQUE KEY `game_reviews_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_reviews_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_fivers_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `ggr_games_fivers`
--
ALTER TABLE `ggr_games_fivers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_fivers_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_world_slots_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `likes_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `likes_liked_user_id_foreign` (`liked_user_id`) USING BTREE;

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `mission_users`
--
ALTER TABLE `mission_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `mission_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `mission_users_mission_id_index` (`mission_id`) USING BTREE;

--
-- Índices de tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`) USING BTREE;

--
-- Índices de tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Índices de tabela `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sub_affiliates_affiliate_id_index` (`affiliate_id`) USING BTREE,
  ADD KEY `sub_affiliates_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `suit_pay_payments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `suit_pay_payments_withdrawal_id_foreign` (`withdrawal_id`) USING BTREE;

--
-- Índices de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `transactions_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Índices de tabela `vips`
--
ALTER TABLE `vips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `vip_users`
--
ALTER TABLE `vip_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `vip_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `vip_users_vip_id_index` (`vip_id`) USING BTREE;

--
-- Índices de tabela `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallets_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallet_changes_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `withdrawals_user_id_foreign` (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT de tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `ezze_bank_payments`
--
ALTER TABLE `ezze_bank_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1553;

--
-- AUTO_INCREMENT de tabela `games_keys`
--
ALTER TABLE `games_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2367;

--
-- AUTO_INCREMENT de tabela `ggr_games_fivers`
--
ALTER TABLE `ggr_games_fivers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT de tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de tabela `missions`
--
ALTER TABLE `missions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mission_users`
--
ALTER TABLE `mission_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2941;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2802;

--
-- AUTO_INCREMENT de tabela `vips`
--
ALTER TABLE `vips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vip_users`
--
ALTER TABLE `vip_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2797;

--
-- AUTO_INCREMENT de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
