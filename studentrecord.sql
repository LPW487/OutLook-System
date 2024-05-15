-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2023-01-29 10:26:42
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
-- 資料庫： `studentrecord`
--

-- --------------------------------------------------------

--
-- 資料表結構 `s11111111`
--

CREATE TABLE `s11111111` (
  `Date` varchar(30) NOT NULL,
  `Review` varchar(30) DEFAULT NULL,
  `Hair` varchar(30) DEFAULT NULL,
  `Cloth` varchar(50) DEFAULT NULL,
  `Document` varchar(50) DEFAULT NULL,
  `Warning` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `s210122222`
--

CREATE TABLE `s210122222` (
  `Date` varchar(30) NOT NULL,
  `Review` varchar(30) DEFAULT NULL,
  `Hair` varchar(30) DEFAULT NULL,
  `Cloth` varchar(50) DEFAULT NULL,
  `Document` varchar(50) DEFAULT NULL,
  `Warning` varchar(50) DEFAULT NULL,
  `Late` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `s210122222`
--

INSERT INTO `s210122222` (`Date`, `Review`, `Hair`, `Cloth`, `Document`, `Warning`, `Late`) VALUES
('2023/01/25', 'require', 'N', 'N', 'need', 'warning', 'Late'),
('2023/01/26', 'cancel', 'yes', 'sport', 'N', 'cancel', 'Late'),
('2023/01/27', 'cancel', 'yes', 'sport', 'N', 'cancel', 'Late'),
('2023/01/28', 'require', 'yes', 'sport', 'need', 'warning', 'Late');

-- --------------------------------------------------------

--
-- 資料表結構 `s210123559`
--

CREATE TABLE `s210123559` (
  `Date` varchar(30) NOT NULL,
  `Review` varchar(30) DEFAULT NULL,
  `Hair` varchar(30) DEFAULT NULL,
  `Cloth` varchar(50) DEFAULT NULL,
  `Late` varchar(50) DEFAULT NULL,
  `Document` varchar(50) DEFAULT NULL,
  `Warning` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `s210123559`
--

INSERT INTO `s210123559` (`Date`, `Review`, `Hair`, `Cloth`, `Late`, `Document`, `Warning`) VALUES
('2023/01/26', 'require', 'no', 'sport', 'Late', 'need', 'warning');

-- --------------------------------------------------------

--
-- 資料表結構 `s210158555`
--

CREATE TABLE `s210158555` (
  `Date` varchar(30) NOT NULL,
  `Review` varchar(30) DEFAULT NULL,
  `Hair` varchar(30) DEFAULT NULL,
  `Cloth` varchar(50) DEFAULT NULL,
  `Document` varchar(50) DEFAULT NULL,
  `Warning` varchar(50) DEFAULT NULL,
  `Late` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `s210158555`
--

INSERT INTO `s210158555` (`Date`, `Review`, `Hair`, `Cloth`, `Document`, `Warning`, `Late`) VALUES
('2023/01/26', 'require', 'yes', 'sport', 'need', 'warning', 'Late');

-- --------------------------------------------------------

--
-- 資料表結構 `s210158557`
--

CREATE TABLE `s210158557` (
  `Date` varchar(30) NOT NULL,
  `Review` varchar(30) DEFAULT NULL,
  `Hair` varchar(30) DEFAULT NULL,
  `Cloth` varchar(50) DEFAULT NULL,
  `Document` varchar(50) DEFAULT NULL,
  `Warning` varchar(50) DEFAULT NULL,
  `Late` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `s210158557`
--

INSERT INTO `s210158557` (`Date`, `Review`, `Hair`, `Cloth`, `Document`, `Warning`, `Late`) VALUES
('2023/01/23', 'require', 'no', 'N', 'need', 'warning', 'Late'),
('2023/01/25', 'require', 'yes', 'N', 'need', 'warning', 'Late');

-- --------------------------------------------------------

--
-- 資料表結構 `s210158558`
--

CREATE TABLE `s210158558` (
  `Date` varchar(30) NOT NULL,
  `Review` varchar(30) DEFAULT NULL,
  `Hair` varchar(30) DEFAULT NULL,
  `Cloth` varchar(50) DEFAULT NULL,
  `Late` varchar(50) DEFAULT NULL,
  `Document` varchar(50) DEFAULT NULL,
  `Warning` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `s210158558`
--

INSERT INTO `s210158558` (`Date`, `Review`, `Hair`, `Cloth`, `Late`, `Document`, `Warning`) VALUES
('2023/01/26', 'require', 'yes', 'sport', 'Late', 'need', 'warning'),
('2023/01/27', 'cancel', 'yes', 'sport', 'Late', 'N', 'cancel'),
('2023/01/28', 'require', 'yes', 'sport', 'Late', 'need', 'warning');

-- --------------------------------------------------------

--
-- 資料表結構 `s210158559`
--

CREATE TABLE `s210158559` (
  `Date` varchar(20) NOT NULL,
  `Review` varchar(20) NOT NULL,
  `Hair` varchar(20) NOT NULL,
  `Cloth` varchar(20) NOT NULL,
  `Late` varchar(20) NOT NULL,
  `Document` varchar(20) NOT NULL,
  `Warning` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `s210158559`
--

INSERT INTO `s210158559` (`Date`, `Review`, `Hair`, `Cloth`, `Late`, `Document`, `Warning`) VALUES
('2023/01/26', 'require', 'no', 'sport', 'Late', 'need', 'warning'),
('2023/01/27', 'done', 'no', 'sport', 'Late', 'need', 'warning'),
('2023/01/28', 'require', 'no', 'sport', 'Late', 'need', 'warning');

-- --------------------------------------------------------

--
-- 資料表結構 `s210258559`
--

CREATE TABLE `s210258559` (
  `Date` varchar(30) NOT NULL,
  `Review` varchar(30) DEFAULT NULL,
  `Hair` varchar(30) DEFAULT NULL,
  `Cloth` varchar(50) DEFAULT NULL,
  `Late` varchar(50) DEFAULT NULL,
  `Document` varchar(50) DEFAULT NULL,
  `Warning` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `s210258559`
--

INSERT INTO `s210258559` (`Date`, `Review`, `Hair`, `Cloth`, `Late`, `Document`, `Warning`) VALUES
('2023/01/27', 'require', 'N', 'N', 'Late', 'need', 'warning');

-- --------------------------------------------------------

--
-- 資料表結構 `sunknow`
--

CREATE TABLE `sunknow` (
  `Date` varchar(30) NOT NULL,
  `Review` varchar(30) DEFAULT NULL,
  `Hair` varchar(30) DEFAULT NULL,
  `Cloth` varchar(50) DEFAULT NULL,
  `Document` varchar(50) DEFAULT NULL,
  `Warning` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `t230000000`
--

CREATE TABLE `t230000000` (
  `Date` varchar(30) NOT NULL,
  `Review` varchar(30) DEFAULT NULL,
  `Hair` varchar(30) DEFAULT NULL,
  `Cloth` varchar(50) DEFAULT NULL,
  `Late` varchar(50) DEFAULT NULL,
  `Document` varchar(50) DEFAULT NULL,
  `Warning` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `t230158558`
--

CREATE TABLE `t230158558` (
  `Date` varchar(30) NOT NULL,
  `Review` varchar(30) DEFAULT NULL,
  `Hair` varchar(30) DEFAULT NULL,
  `Cloth` varchar(50) DEFAULT NULL,
  `Late` varchar(50) DEFAULT NULL,
  `Document` varchar(50) DEFAULT NULL,
  `Warning` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `t230158559`
--

CREATE TABLE `t230158559` (
  `Date` varchar(30) NOT NULL,
  `Review` varchar(30) DEFAULT NULL,
  `Hair` varchar(30) DEFAULT NULL,
  `Cloth` varchar(50) DEFAULT NULL,
  `Late` varchar(50) DEFAULT NULL,
  `Document` varchar(50) DEFAULT NULL,
  `Warning` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `s11111111`
--
ALTER TABLE `s11111111`
  ADD PRIMARY KEY (`Date`);

--
-- 資料表索引 `s210122222`
--
ALTER TABLE `s210122222`
  ADD PRIMARY KEY (`Date`);

--
-- 資料表索引 `s210123559`
--
ALTER TABLE `s210123559`
  ADD PRIMARY KEY (`Date`);

--
-- 資料表索引 `s210158555`
--
ALTER TABLE `s210158555`
  ADD PRIMARY KEY (`Date`);

--
-- 資料表索引 `s210158557`
--
ALTER TABLE `s210158557`
  ADD PRIMARY KEY (`Date`);

--
-- 資料表索引 `s210158558`
--
ALTER TABLE `s210158558`
  ADD PRIMARY KEY (`Date`);

--
-- 資料表索引 `s210158559`
--
ALTER TABLE `s210158559`
  ADD PRIMARY KEY (`Date`);

--
-- 資料表索引 `s210258559`
--
ALTER TABLE `s210258559`
  ADD PRIMARY KEY (`Date`);

--
-- 資料表索引 `sunknow`
--
ALTER TABLE `sunknow`
  ADD PRIMARY KEY (`Date`);

--
-- 資料表索引 `t230000000`
--
ALTER TABLE `t230000000`
  ADD PRIMARY KEY (`Date`);

--
-- 資料表索引 `t230158558`
--
ALTER TABLE `t230158558`
  ADD PRIMARY KEY (`Date`);

--
-- 資料表索引 `t230158559`
--
ALTER TABLE `t230158559`
  ADD PRIMARY KEY (`Date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
