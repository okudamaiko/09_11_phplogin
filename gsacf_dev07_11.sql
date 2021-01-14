-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 1 月 14 日 14:28
-- サーバのバージョン： 10.4.17-MariaDB
-- PHP のバージョン: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_dev07_11`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `login`
--

CREATE TABLE `login` (
  `id` int(12) NOT NULL,
  `mail` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` int(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `login`
--

INSERT INTO `login` (`id`, `mail`, `pass`, `created_at`, `updated_at`) VALUES
(1, 'test@test', 12345678, '2020-12-21 17:27:04', '2020-12-21 17:27:04'),
(2, 'mai@mail', 2345678, '2020-12-21 17:29:12', '2020-12-21 17:29:12'),
(3, 'maik@maill', 7890123, '2020-12-21 17:30:07', '2020-12-21 17:30:07'),
(4, 'sder@mail', 256456778, '2020-12-21 17:30:36', '2020-12-21 17:30:36'),
(5, 'maik@maill', 7890123, '2020-12-21 17:31:44', '2020-12-21 17:31:44'),
(6, 'maij@mail', 23678, '2020-12-21 17:33:31', '2020-12-21 17:33:31'),
(7, 'maiiy@mail', 276548, '2020-12-21 17:35:14', '2020-12-21 17:35:14');

-- --------------------------------------------------------

--
-- テーブルの構造 `login_table`
--

CREATE TABLE `login_table` (
  `id` int(12) NOT NULL,
  `mail` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `login_table`
--

INSERT INTO `login_table` (`id`, `mail`, `pass`, `created_at`, `updated_at`) VALUES
(1, 'mai@mail', '987jks', '2020-12-21 21:30:56', '2020-12-21 21:30:56'),
(2, 'gfods@oiu', '8987gfd', '2020-12-22 20:44:11', '2020-12-22 20:44:11'),
(3, 'dsaigs@oiu', '987tgjgfd', '2020-12-22 20:44:35', '2020-12-22 20:44:35'),
(4, 'fyhs@oiu', '898754tg', '2020-12-22 20:44:56', '2020-12-22 20:44:56');

-- --------------------------------------------------------

--
-- テーブルの構造 `member_table`
--

CREATE TABLE `member_table` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `mail` int(11) NOT NULL,
  `sex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `signup_table`
--

CREATE TABLE `signup_table` (
  `id` int(12) NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `signup_table`
--

INSERT INTO `signup_table` (`id`, `name`, `mail`, `pass`, `birth`, `created_at`, `updated_at`) VALUES
(1, 'okudamaiko', 'test@mail', 'k1234', '2020-12-15', '2021-01-04 23:32:40', '2021-01-04 23:33:36'),
(2, 'msim', 'fdsyser@msi', '54321', '2020-12-31', '2021-01-04 23:42:17', '2021-01-04 23:42:17');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`, `username`) VALUES
(15, 'ならいごと', '2020-12-01', '2020-12-19 17:34:15', '2021-01-11 00:20:11', 'おくだまいこ'),
(20, 'さんぽ', '2020-12-23', '2020-12-19 17:48:37', '2021-01-12 23:35:04', 'おくだまいこ'),
(26, 'お弁当作り', '2020-12-22', '2020-12-26 15:06:08', '2021-01-03 09:18:23', 'おくだまいこ'),
(27, 'テスト', '2021-01-09', '2020-12-26 16:58:42', '2020-12-26 16:58:42', 'おくだまいこ'),
(28, '早起き', '2021-01-02', '2021-01-03 07:01:56', '2021-01-03 07:01:56', 'maiko'),
(29, 'もちつき', '2021-01-05', '2021-01-09 17:25:40', '2021-01-12 23:35:14', 'maiko'),
(30, 'あいさつ', '2021-01-04', '2021-01-11 00:21:51', '2021-01-12 23:35:25', 'maiko'),
(31, 'あそび', '2021-02-03', '2021-01-11 00:22:02', '2021-01-11 00:22:02', 'maiko'),
(32, '歩く', '2021-02-05', '2021-01-14 21:35:29', '2021-01-14 21:35:29', NULL),
(33, '旅行', '2020-12-29', '2021-01-14 21:35:43', '2021-01-14 21:35:43', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(3, 'おくだまいこ', '12345678', 1, 0, '2021-01-11 00:35:32', '2021-01-14 21:38:02'),
(4, 'らくだ', '1111', 1, 0, '2021-01-11 22:35:32', '2021-01-14 21:38:34'),
(5, 'maiko', '8943sgk;', 1, 0, '2021-01-12 20:56:52', '2021-01-14 21:33:47'),
(6, 'ぱんだ', 'pppp', 0, 0, '2021-01-14 21:34:36', '2021-01-14 21:34:36'),
(7, 'ねこ', 'nnnn', 0, 0, '2021-01-14 21:36:17', '2021-01-14 21:36:17'),
(8, 'いぬ', 'iiii', 0, 0, '2021-01-14 21:36:41', '2021-01-14 21:36:41'),
(9, 'とら', 'tttt', 0, 0, '2021-01-14 21:37:08', '2021-01-14 21:37:08');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `signup_table`
--
ALTER TABLE `signup_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `login`
--
ALTER TABLE `login`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルの AUTO_INCREMENT `login_table`
--
ALTER TABLE `login_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `signup_table`
--
ALTER TABLE `signup_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- テーブルの AUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
