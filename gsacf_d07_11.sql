-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 1 月 30 日 02:11
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
-- データベース: `gsacf_d07_11`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `event_table`
--

CREATE TABLE `event_table` (
  `id` int(11) NOT NULL,
  `event_name` varchar(128) NOT NULL,
  `event_date` date NOT NULL,
  `user1_id` int(12) NOT NULL,
  `user2_id` int(12) NOT NULL,
  `user3_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `event_table`
--

INSERT INTO `event_table` (`id`, `event_name`, `event_date`, `user1_id`, `user2_id`, `user3_id`, `created_at`) VALUES
(1, '対話①', '2021-01-21', 1, 2, 3, '2021-01-24 16:25:16'),
(2, '対話②', '2021-01-22', 3, 4, 5, '2021-01-24 16:57:16'),
(3, '対話3', '2021-01-23', 1, 4, 5, '2021-01-24 16:57:49'),
(4, '対話4', '2021-01-24', 3, 2, 5, '2021-01-24 16:59:01'),
(5, '対話5', '2021-01-26', 2, 4, 5, '2021-01-24 16:59:27');

-- --------------------------------------------------------

--
-- テーブルの構造 `login_table2`
--

CREATE TABLE `login_table2` (
  `id` int(12) NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `login_table2`
--

INSERT INTO `login_table2` (`id`, `username`, `password`) VALUES
(12, 'maiko', 'maiko'),
(13, 'mm', '123'),
(14, '', ''),
(15, '', ''),
(16, '', ''),
(17, '', ''),
(18, '', ''),
(19, 'maiko', '5435'),
(20, 'mm', '123'),
(21, 'mm', ''),
(22, 'mm', ''),
(23, '', ''),
(24, 'okuda', '1234'),
(25, 'okuda', '1234'),
(26, 'okuda', '1234');

-- --------------------------------------------------------

--
-- テーブルの構造 `thanks_table`
--

CREATE TABLE `thanks_table` (
  `id` int(12) NOT NULL,
  `user_input_id` int(12) NOT NULL,
  `user_point_id` int(12) NOT NULL,
  `event_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `thanks_table`
--

INSERT INTO `thanks_table` (`id`, `user_input_id`, `user_point_id`, `event_id`, `created_at`) VALUES
(1, 1, 2, 1, '2021-01-24 23:17:30'),
(2, 1, 3, 1, '2021-01-24 23:18:02'),
(3, 2, 1, 1, '2021-01-24 23:18:21'),
(4, 3, 2, 1, '2021-01-24 23:18:40'),
(5, 3, 1, 1, '2021-01-24 23:18:57'),
(6, 5, 3, 2, '2021-01-24 23:19:55'),
(7, 5, 4, 2, '2021-01-24 23:20:21'),
(8, 3, 4, 2, '2021-01-24 23:20:44'),
(9, 3, 4, 2, '2021-01-24 23:21:09'),
(10, 3, 5, 2, '2021-01-24 23:21:29'),
(11, 1, 4, 3, '2021-01-24 23:21:48'),
(12, 1, 5, 3, '2021-01-24 23:22:04'),
(13, 4, 1, 3, '2021-01-24 23:22:23'),
(14, 4, 5, 3, '2021-01-24 23:22:43');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'okuda', '1234', 1, 0, '2021-01-06 17:24:00', '2021-01-06 17:24:00'),
(2, 'maiko', '894', 0, 0, '2021-01-06 17:40:30', '2021-01-06 17:40:30'),
(3, 'S', 'S', 0, 0, '2021-01-24 16:27:15', '2021-01-24 16:27:15'),
(4, 'A', 'A', 0, 0, '2021-01-24 16:27:42', '2021-01-24 16:27:42'),
(5, 'B', 'B', 0, 0, '2021-01-24 16:27:50', '2021-01-24 16:27:50'),
(6, 'C', 'C', 0, 0, '2021-01-24 16:28:03', '2021-01-24 16:28:03');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `event_table`
--
ALTER TABLE `event_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `login_table2`
--
ALTER TABLE `login_table2`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `thanks_table`
--
ALTER TABLE `thanks_table`
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
-- テーブルの AUTO_INCREMENT `event_table`
--
ALTER TABLE `event_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `login_table2`
--
ALTER TABLE `login_table2`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- テーブルの AUTO_INCREMENT `thanks_table`
--
ALTER TABLE `thanks_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- テーブルの AUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
