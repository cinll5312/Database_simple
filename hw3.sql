-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-05-29 11:45:51
-- 伺服器版本： 10.4.19-MariaDB
-- PHP 版本： 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `hw3`
--

-- --------------------------------------------------------

--
-- 資料表結構 `account`
--

CREATE TABLE `account` (
  `account_name` varchar(100) NOT NULL DEFAULT 'Unknown',
  `password` varchar(100) NOT NULL DEFAULT 'Unknown',
  `website` varchar(100) NOT NULL DEFAULT 'Unknown',
  `class_id` varchar(15) NOT NULL DEFAULT 'Unknown'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `class`
--

CREATE TABLE `class` (
  `class_name` varchar(15) NOT NULL DEFAULT 'Unknown',
  `class_type` varchar(15) NOT NULL DEFAULT 'Unknown',
  `Phone_code` int(15) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `phone`
--

CREATE TABLE `phone` (
  `IMEI` int(14) NOT NULL DEFAULT 0,
  `user_id` varchar(15) NOT NULL DEFAULT 'Unknown',
  `phone number` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `phone`
--

INSERT INTO `phone` (`IMEI`, `user_id`, `phone number`) VALUES
(1, 'peop1', 912345678),
(2, 'peop2', 912345677);

-- --------------------------------------------------------

--
-- 資料表結構 `phone_account`
--

CREATE TABLE `phone_account` (
  `authentication code` int(15) NOT NULL DEFAULT 0,
  `user_name` varchar(15) NOT NULL DEFAULT 'Unknown',
  `password` varchar(15) DEFAULT '--',
  `creation_date` date DEFAULT '2000-01-01',
  `phone_IMEI` int(14) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `phone_account`
--

INSERT INTO `phone_account` (`authentication code`, `user_name`, `password`, `creation_date`, `phone_IMEI`) VALUES
(1, 'cat', 'catt', '2000-12-12', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_name`),
  ADD KEY `class_id` (`class_id`);

--
-- 資料表索引 `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_name`),
  ADD KEY `Phone_code` (`Phone_code`);

--
-- 資料表索引 `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`IMEI`);

--
-- 資料表索引 `phone_account`
--
ALTER TABLE `phone_account`
  ADD PRIMARY KEY (`authentication code`),
  ADD KEY `phone_IMEI` (`phone_IMEI`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_name`);

--
-- 資料表的限制式 `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`Phone_code`) REFERENCES `phone_account` (`authentication code`);

--
-- 資料表的限制式 `phone_account`
--
ALTER TABLE `phone_account`
  ADD CONSTRAINT `phone_account_ibfk_1` FOREIGN KEY (`phone_IMEI`) REFERENCES `phone` (`IMEI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
