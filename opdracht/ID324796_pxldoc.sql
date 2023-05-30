-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: com-linweb025.srv.combell-ops.net:3306
-- Gegenereerd op: 30 mei 2023 om 09:14
-- Serverversie: 5.7.40-43-log
-- PHP-versie: 7.1.25-1+0~20181207224605.11+jessie~1.gbpf65b84

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ID324796_pxldoc`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administratie en onthaal', NULL, NULL),
(2, 'Beauty en wellness', NULL, NULL),
(3, 'Bouw', NULL, NULL),
(4, 'Dieren', NULL, NULL),
(5, 'Drones', NULL, NULL),
(6, 'Elektro en techniek', NULL, NULL),
(7, 'Energie en HVAC', NULL, NULL),
(8, 'Financiën', NULL, NULL),
(9, 'Grafische en multimedia', NULL, NULL),
(10, 'Groenvoorziening', NULL, NULL),
(11, 'Horeca en voeding', NULL, NULL),
(12, 'Informatica', NULL, NULL),
(13, 'Interieur en ontwerpen', NULL, NULL),
(14, 'Kunst, antiek en creatief design', NULL, NULL),
(15, 'Management', NULL, NULL),
(16, 'Mode en kledij', NULL, NULL),
(17, 'Safety', NULL, NULL),
(18, 'Sales, marketing en communicatie', NULL, NULL),
(19, 'Sport', NULL, NULL),
(20, 'Starten met ondernemen', NULL, NULL),
(21, 'Talen en redactie', NULL, NULL),
(22, 'Toerisme', NULL, NULL),
(23, 'Transport en logistiek', NULL, NULL),
(24, 'Vastgoed', NULL, NULL),
(25, 'Voertuigen en metaal', NULL, NULL),
(26, 'Zorgverlening', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `streetnr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `locations`
--

INSERT INTO `locations` (`id`, `name`, `streetnr`, `codecity`, `created_at`, `updated_at`) VALUES
(1, 'SyntraPXL T2 Campus Genk', '', '', '2023-05-26 09:36:39', '2023-05-26 09:36:39'),
(2, 'SyntraPXL Neerpelt', '', '', '2023-05-26 09:36:39', '2023-05-26 09:36:39'),
(3, 'SyntraPXL Hasselt', '', '', '2023-05-26 09:36:39', '2023-05-26 09:36:39'),
(4, 'SyntraPXL Maaseik', '', '', '2023-05-26 09:36:39', '2023-05-26 09:36:39');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'FAQ', 'Faq content', '2023-05-26 07:17:00', '2023-05-26 09:09:22'),
(2, 'About', 'about content', '2023-05-26 07:59:00', '2023-05-26 11:50:04'),
(3, 'Contact', 'Content', '2023-05-26 07:59:00', '2023-05-26 09:10:51');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `streetnr` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codecity` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `teachers`
--

INSERT INTO `teachers` (`id`, `lastname`, `firstname`, `email`, `phone`, `website`, `remarks`, `description`, `approved`, `created_at`, `updated_at`, `category_id`, `location_id`, `streetnr`, `codecity`) VALUES
(1, 'De Nittis', 'Massimo', 'mas@mas.com', '0484111111', 'www.google.be', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'test', 'einstein', 'ein@stein.com', '0484112111', 'www.google.be', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Niel Beynaerts', 'niel', 'niel.beynaerts@gmail.com', '+32498544695', 'syntrapxl', 'student', 'school', 0, '2023-05-26 07:29:47', '2023-05-26 07:29:47', NULL, NULL, NULL, NULL),
(4, 'inan', 'ygt', 'inan@ygt.com', '+111', 'genk', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'jor', 'ian', 'jor@ian.com', '+222', 'hasselt', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'al', 'ex', 'al@ex.com', '+333', 'genk', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'rem', 'co', 'rem@co.com', '+222', 'maaseik', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'mi', 'lan', 'mi@lan.com', '+111', 'amsterdam', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'pa', 'pa', 'pa@pa.com', '+999', 'heuzeden', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'tu', 'rk', 'tu@rk.com', '+5555', 'zolder', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'ma', 'ma', 'ma@ma.com', '+555', 'einhoven', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'jespers', 'kevin', 'kevin@tester.com', '123456789', 'Syntra.com', 'naar massimo luisteren', 'student', 0, '2023-05-26 07:58:50', '2023-05-26 07:58:50', NULL, 1, NULL, NULL),
(13, 'jespers', 'kevin', 'kevin@ter.com', '123456789', 'Syntra.com', 'naar massimo luisteren', 'student', 0, '2023-05-26 07:59:31', '2023-05-26 07:59:31', NULL, 3, NULL, NULL),
(14, 'kevin', 'test', 'ke@tes', '13456', 'fun.com', 'mlkjqd', 'mqklj', 0, '2023-05-26 08:03:25', '2023-05-26 08:03:25', 17, 4, NULL, NULL),
(15, 'kevin', 'test', 'k@qsj.com', '12456', 'Syntra.com', 'help', 'student', 0, '2023-05-26 08:57:14', '2023-05-26 08:57:14', 1, 1, NULL, NULL),
(16, 'kevin', 'test', 'k@qsj.com', '12456', 'Syntra.com', 'help', 'student', 0, '2023-05-26 08:58:07', '2023-05-26 08:58:07', 1, 1, NULL, NULL),
(17, 'kevin', 'test', 'k@jx', '13456', 'fun.com', 'naar massimo luisteren', 'student', 0, '2023-05-26 08:59:12', '2023-05-26 08:59:12', 1, 1, NULL, NULL),
(18, 'Louis', 'Kevin', 'kev@in.com', '13456', 'Syntra.com', 'mlkjqd', 'mqklj', 0, '2023-05-26 08:59:47', '2023-05-26 08:59:47', 1, 1, NULL, NULL),
(19, 'dqsd', 'test', 'kevin.jespers@hotmail.com', '12456', 'Syntra.com', 'mlkjqd', 'student', 0, '2023-05-26 09:00:52', '2023-05-26 09:00:52', 1, 1, NULL, NULL),
(20, 'dqsd', 'test', 'kevin.jespers@hotmail.com', '12456', 'Syntra.com', 'mlkjqd', 'student', 0, '2023-05-26 09:01:26', '2023-05-26 09:01:26', 1, 1, NULL, NULL),
(21, 'kevin', 'test', 'qsmdlk@cd.com', '123456', 'Syntra.com', 'dmlqkj', 'qlmk', 0, '2023-05-26 09:16:50', '2023-05-26 09:16:50', 1, 1, NULL, NULL),
(22, 'Massimo', 'Test', 'test@test.com', '0928309238', 'http://www.test.com', 'DLSKJLSKDJLKDSJ', 'FullStack', 0, '2023-05-26 09:31:05', '2023-05-26 09:31:05', 1, 1, NULL, NULL),
(23, 'mailtest', 'test', 'mail@test.com', 'qmldskj', 'qmlskdj', 'qmdslkj', 'qmdslk', 0, '2023-05-26 09:33:25', '2023-05-26 09:33:25', 1, 1, NULL, NULL),
(24, 'kevin', 'Kevin', 'k@j', 'dsmlqkj', 'qsmdlk', 'dqmlkj', 'qdsf', 0, '2023-05-26 09:36:47', '2023-05-26 09:36:47', 1, 1, NULL, NULL),
(25, 'Louis', 'test', 'k@jxs', '13456', 'Syntra.com', 'mlkjqd', 'student', 0, '2023-05-26 09:44:28', '2023-05-26 09:44:28', 14, 2, 'Dok 45', '3570'),
(26, 'niel', 'niel', 'niel@niel', '92847', 'niel.com', 'ldsfjla', 'student', 0, '2023-05-26 09:48:32', '2023-05-26 09:48:32', 26, 2, 'adfafs 234', '3390'),
(27, 'uyjk', 'ukyk', 'lajf@ldkj', '0498544695', 'tlejkl', 'studeren', 'studetn', 0, '2023-05-26 10:14:49', '2023-05-26 10:14:49', 5, 2, 'sdfsadf 17', '3390'),
(28, 'adfa', 'asdfasdf', 'adfsd@ad', '0404040403', 'adfsadf', 'adf', 'dsaf', 0, '2023-05-26 10:16:45', '2023-05-26 10:16:45', 1, 1, 'adsfdsa 4', '3455'),
(29, 'wqfew', 'qerqf', 'qerf@sfg', '016333333', 'adfa', 'afda', 'adf', 0, '2023-05-26 10:31:05', '2023-05-26 10:31:05', 1, 1, 'adfdsa 4', '3390'),
(30, 'testing', 'test', 'test@niel', '049854467d', 'a;ldfkj', 'studeren', 'student', 0, '2023-05-26 10:54:50', '2023-05-26 10:54:50', 1, 1, 'aldkfj 3', '3390'),
(31, 'testing', 'test', 'test@niel', 'fgnf', 'a;ldfkj', 'studeren', 'student', 0, '2023-05-26 11:00:18', '2023-05-26 11:00:18', 1, 1, 'aldkfj 3', '3390'),
(32, 'testing', 'test', 'test@niel', 'fgnf', 'a;ldfkj', 'studeren', 'student', 0, '2023-05-26 11:03:14', '2023-05-26 11:03:14', 1, 1, 'aldkfj 3', '3390'),
(55, 'niel', 'niel', 'niel@help', '0498544695', 'syntra.com', 'studeren', 'student', 0, '2023-05-26 11:50:51', '2023-05-26 11:50:51', 12, 1, 'adfasdf 35', '3390 Sint joris winge');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
