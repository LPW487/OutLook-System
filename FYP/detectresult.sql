-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2023-01-29 10:26:05
-- 伺服器版本: 10.1.30-MariaDB
-- PHP 版本： 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `detectresult`
--

-- --------------------------------------------------------

--
-- 資料表結構 `record`
--

CREATE TABLE `record` (
  `id` int(255) NOT NULL,
  `date` varchar(20) NOT NULL,
  `CNA` varchar(10) NOT NULL,
  `hair` varchar(10) DEFAULT NULL,
  `cloth` varchar(10) DEFAULT NULL,
  `late` varchar(10) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `review` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `record`
--

INSERT INTO `record` (`id`, `date`, `CNA`, `hair`, `cloth`, `late`, `time`, `document`, `review`) VALUES
(1, '', '210122222', 'no', 'sport', 'Late', '19:42:00', 'N', 'N'),
(2, '', '210123559', 'no', 'sport', 'Late', '19:42:09', 'N', 'N'),
(3, '', '210157778', 'N', 'N', 'Late', '19:41:58', 'N', 'N'),
(4, '', '210158555', 'no', 'sport', 'Late', '19:43:35', 'N', 'N'),
(5, '', '210158559', 'no', 'sport', 'Late', '15:02:31', 'N', 'N'),
(6, '', '230158559', 'N', 'N', 'Late', '19:41:59', 'N', 'N'),
(7, '', 'Unknown', 'N', 'N', 'Late', '19:41:59', 'N', 'N');

-- --------------------------------------------------------

--
-- 資料表結構 `y20230126`
--

CREATE TABLE `y20230126` (
  `CNA` varchar(10) NOT NULL,
  `hair` varchar(10) DEFAULT NULL,
  `cloth` varchar(10) DEFAULT NULL,
  `late` varchar(10) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `review` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `y20230126`
--

INSERT INTO `y20230126` (`CNA`, `hair`, `cloth`, `late`, `time`, `document`, `review`) VALUES
('210122222', 'yes', 'sport', 'Late', '22:32:20', 'N', 'N'),
('210158558', 'yes', 'sport', 'Late', '22:01:22', 'N', 'N'),
('210158559', 'no', 'sport', 'Late', '21:59:32', 'N', 'N'),
('Unknown', 'yes', 'sport', 'Late', '22:01:25', 'N', 'N');

-- --------------------------------------------------------

--
-- 資料表結構 `y20230127`
--

CREATE TABLE `y20230127` (
  `CNA` varchar(10) NOT NULL,
  `hair` varchar(10) DEFAULT NULL,
  `cloth` varchar(10) DEFAULT NULL,
  `late` varchar(10) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `review` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `y20230127`
--

INSERT INTO `y20230127` (`CNA`, `hair`, `cloth`, `late`, `time`, `document`, `review`) VALUES
('210122222', 'yes', 'N', 'Late', '17:08:03', 'N', 'N'),
('210157778', 'yes', 'sport', 'Late', '17:09:11', 'N', 'N'),
('210158558', 'yes', 'sport', 'Late', '17:09:01', 'N', 'N'),
('210158559', 'no', 'sport', 'Late', '17:33:47', 'N', 'N'),
('210258559', 'N', 'N', 'Late', '17:07:51', 'N', 'N');

-- --------------------------------------------------------

--
-- 資料表結構 `y20230128`
--

CREATE TABLE `y20230128` (
  `CNA` varchar(10) NOT NULL,
  `hair` varchar(10) DEFAULT NULL,
  `cloth` varchar(10) DEFAULT NULL,
  `late` varchar(10) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `review` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `y20230128`
--

INSERT INTO `y20230128` (`CNA`, `hair`, `cloth`, `late`, `time`, `document`, `review`) VALUES
('210122222', 'yes', 'sport', 'Late', '17:38:54', 'N', 'N'),
('210158558', 'yes', 'sport', 'Late', '17:38:37', 'N', 'N'),
('210158559', 'no', 'sport', 'Late', '17:37:29', 'N', 'N');

-- --------------------------------------------------------

--
-- 資料表結構 `y20230129`
--

CREATE TABLE `y20230129` (
  `CNA` varchar(10) NOT NULL,
  `hair` varchar(10) DEFAULT NULL,
  `cloth` varchar(10) DEFAULT NULL,
  `late` varchar(10) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `review` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `y20230129`
--

INSERT INTO `y20230129` (`CNA`, `hair`, `cloth`, `late`, `time`, `document`, `review`) VALUES
('210158559', 'no', 'sport', 'Late', '14:40:04', 'N', 'N');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `y20230126`
--
ALTER TABLE `y20230126`
  ADD PRIMARY KEY (`CNA`);

--
-- 資料表索引 `y20230127`
--
ALTER TABLE `y20230127`
  ADD PRIMARY KEY (`CNA`);

--
-- 資料表索引 `y20230128`
--
ALTER TABLE `y20230128`
  ADD PRIMARY KEY (`CNA`);

--
-- 資料表索引 `y20230129`
--
ALTER TABLE `y20230129`
  ADD PRIMARY KEY (`CNA`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `record`
--
ALTER TABLE `record`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
