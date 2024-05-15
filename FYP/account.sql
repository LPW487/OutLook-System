-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2023-01-29 10:25:57
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
-- 資料庫： `account`
--

-- --------------------------------------------------------

--
-- 資料表結構 `card_activation`
--

CREATE TABLE `card_activation` (
  `cid` int(20) NOT NULL,
  `cna` varchar(20) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `hkid` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `bod` varchar(20) NOT NULL,
  `class` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `dis` varchar(20) NOT NULL,
  `village` varchar(100) NOT NULL,
  `country` varchar(20) NOT NULL,
  `image_url` varchar(50) NOT NULL,
  `uploadtime` varchar(50) NOT NULL,
  `position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `card_activation`
--

INSERT INTO `card_activation` (`cid`, `cna`, `f_name`, `l_name`, `phone`, `hkid`, `gender`, `bod`, `class`, `email`, `state`, `dis`, `village`, `country`, `image_url`, `uploadtime`, `position`) VALUES
(9, '210158559', 'Lau ', 'po wan', '53002326', '11111111', 'Male', '2023-01-05', '6B', 'sad@gmail.com', 'NT', '11', '11111', 'China', '210158559.jpeg', '2023-01-27 12:55:27', 'student'),
(16, '210158558', 'test', 'test', '53003929', 'r1234568', 'Male', '2023-01-15', '6B', 'lpw199834orz@gmail.com', '	\r\n    Tai Po Distri', 'asdas', 'fanling', 'China', '210158558.jpeg', '2023-01-26 22:00:32', 'student'),
(17, '210122222', 'xx', 'bb', '53003929', 'r1234568', 'Male', '2023-01-26', '6B', 'lpw199834orz@gmail.com', 'Tai Po Distri', 'asd', 'asd', 'China', '210122222.jpeg', '2023-01-26 22:33:46', 'student');

-- --------------------------------------------------------

--
-- 資料表結構 `tcard_activation`
--

CREATE TABLE `tcard_activation` (
  `staffid` int(20) NOT NULL,
  `cna` varchar(20) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `hkid` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `bod` varchar(20) NOT NULL,
  `class` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `state` varchar(20) NOT NULL,
  `dis` varchar(20) NOT NULL,
  `village` varchar(200) NOT NULL,
  `country` varchar(20) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `uploadtime` varchar(100) NOT NULL,
  `position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `tcard_activation`
--

INSERT INTO `tcard_activation` (`staffid`, `cna`, `f_name`, `l_name`, `phone`, `hkid`, `gender`, `bod`, `class`, `email`, `state`, `dis`, `village`, `country`, `image_url`, `uploadtime`, `position`) VALUES
(1, '230158559', 'YY', 'Lam', '77787778', 'r1234568', 'Male', '2023-01-05', 'all', 'lpw199834orz@gmail.com', 'Island District', 'asdasd', 'fanling', 'China', '230158559.jpeg', '2023-01-26 13:28:20', 'teacher'),
(3, '230000000', 'test', 'teacher', '53003929', 'r1234568', 'Male', '2023-01-13', '6B', 'lpw199834orz@gmail.com', 'Tsuen Wan District', 'dasd', 'ASD', 'China', '230000000.jpeg', '2023-01-26 21:58:22', 'teacher');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `CNA` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Sex` varchar(20) NOT NULL,
  `Class` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`CNA`, `Name`, `Sex`, `Class`, `password`, `position`) VALUES
('210122222', 'bb  xx', 'Male', '6B', '210122222', 'student'),
('210158558', 'test  test', 'Male', '6B', '210158558', 'student'),
('210158559', 'Lau Po Wan', 'M', '6B', 'a', 'student'),
('a210158559', 'Admin Mr', 'M', '#', 'a', 'admin'),
('t210158559', 'Liu Sir', 'M', '6B', 'a', 'teacher'),
('t230000000', 'teacher  test', 'Male', '6B', 't230000000', 'teacher'),
('t230158559', 'Lam  YY', 'Male', 'all', 't230158559', 'teacher');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `card_activation`
--
ALTER TABLE `card_activation`
  ADD PRIMARY KEY (`cid`);

--
-- 資料表索引 `tcard_activation`
--
ALTER TABLE `tcard_activation`
  ADD PRIMARY KEY (`staffid`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`CNA`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `card_activation`
--
ALTER TABLE `card_activation`
  MODIFY `cid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表 AUTO_INCREMENT `tcard_activation`
--
ALTER TABLE `tcard_activation`
  MODIFY `staffid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
