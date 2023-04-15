-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 05:30 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shruti_mgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_emp`
--

CREATE TABLE `add_emp` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `department` varchar(10) NOT NULL,
  `degree` varchar(15) NOT NULL,
  `salary` int(10) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_emp`
--

INSERT INTO `add_emp` (`id`, `full_name`, `email`, `password`, `birthdate`, `gender`, `contact_no`, `address`, `department`, `degree`, `salary`, `pic`) VALUES
(42, 'maya', 'maya123@gmail.com', '1234', '2023-04-12', 'Female', '9535447674', 'USA', 'admin', 'mba', 15000, ''),
(101, 'shruti', 'shruti@gmail.com', '1234', '2023-04-21', 'Female', '9743455434', 'uhgbkjf', 'fgh', 'mba', 54645, '1548982.jpg'),
(102, 'maya', 'maya123@gmail.com', '1234', '2023-04-28', 'Female', '56546', 'dfgved', 'admin', 'tgher', 45555, 'images/india.jpg'),
(103, 'binaaa', 'sdsf@gmail.com', '1234', '2023-05-04', 'Female', '24', 'USA', 'admin', 'mba', 1222222, 'images/FORMETING_QUE PG(5).png');

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext CHARACTER SET latin1 NOT NULL,
  `password` longtext CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `start`, `end`, `reason`, `status`) VALUES
(0, '2023-03-27', '2023-03-30', 'faf', 'Pending'),
(0, '2023-05-03', '2023-05-05', 'covid 3', 'Pending'),
(0, '2023-05-01', '2023-05-03', 'aaa', 'Pending'),
(0, '2023-04-11', '2023-04-13', 'fever', 'Pending'),
(0, '0000-00-00', '0000-00-00', '', 'Pending'),
(0, '0000-00-00', '0000-00-00', '', 'Pending'),
(0, '2023-04-26', '2023-04-28', 'covid 3', 'Pending'),
(0, '2023-04-03', '2023-04-11', 'covid 3', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT NULL,
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(9, 17, 'shop', '2023-04-19', '2023-04-08', 6, 'Submitted'),
(10, 15, 'train', '2023-04-13', '2023-04-10', 5, 'Submitted'),
(12, 37, 'plan', '2023-04-04', '2023-04-10', 0, 'Submitted'),
(15, 17, 'coldrink', '2023-03-28', '2023-04-11', 4, 'Submitted'),
(16, 42, 'Junkyard', '2023-04-03', '2023-04-13', 5, 'Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 5),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(4, 6546, 0, 6546),
(5, 1111, 0, 1111),
(6, 6546, 0, 6546),
(7, 6546, 0, 6546),
(8, 6546, 0, 6546),
(9, 6546, 0, 6546),
(10, 4554, 0, 4554),
(11, 20000, 0, 20000),
(12, 20000, 0, 20000),
(13, 45555, 0, 45555),
(14, 54645, 0, 54645),
(15, 1222, 0, 1222),
(16, 45555, 0, 45555),
(17, 15000, 0, 15000),
(18, 15000, 0, 15000),
(19, 15000, 0, 15000),
(20, 15000, 0, 15000),
(21, 45555, 0, 45555),
(22, 45555, 0, 45555),
(23, 45555, 0, 45555),
(24, 15000, 0, 15000),
(25, 15000, 0, 15000),
(26, 15000, 0, 15000),
(27, 54645, 0, 54645),
(28, 1222, 0, 1222),
(29, 15000, 0, 15000),
(30, 15000, 0, 15000),
(31, 45555, 0, 45555),
(32, 15000, 0, 15000),
(33, 15000, 0, 15000),
(34, 15000, 0, 15000),
(35, 45555, 0, 45555),
(36, 45555, 0, 45555),
(37, 20000, 0, 20000),
(38, 15000, 0, 15000),
(39, 15000, 0, 15000),
(40, 15000, 0, 15000),
(41, 15000, 0, 15000),
(42, 15000, 5, 15750),
(43, 15000, 0, 15000),
(44, 0, 0, 0),
(45, 0, 0, 0),
(46, 0, 0, 0),
(47, 0, 0, 0),
(48, 0, 0, 0),
(49, 0, 0, 0),
(50, 0, 0, 0),
(51, 0, 0, 0),
(52, 0, 0, 0),
(53, 0, 0, 0),
(54, 0, 0, 0),
(55, 0, 0, 0),
(56, 0, 0, 0),
(57, 0, 0, 0),
(58, 0, 0, 0),
(59, 0, 0, 0),
(60, 0, 0, 0),
(61, 0, 0, 0),
(62, 0, 0, 0),
(63, 0, 0, 0),
(64, 0, 0, 0),
(65, 0, 0, 0),
(66, 0, 0, 0),
(67, 0, 0, 0),
(68, 0, 0, 0),
(69, 0, 0, 0),
(70, 0, 0, 0),
(71, 0, 0, 0),
(72, 0, 0, 0),
(73, 0, 0, 0),
(74, 0, 0, 0),
(75, 0, 0, 0),
(76, 0, 0, 0),
(77, 0, 0, 0),
(78, 0, 0, 0),
(79, 0, 0, 0),
(80, 0, 0, 0),
(81, 0, 0, 0),
(82, 0, 0, 0),
(83, 0, 0, 0),
(84, 0, 0, 0),
(85, 0, 0, 0),
(86, 0, 0, 0),
(87, 0, 0, 0),
(88, 0, 0, 0),
(89, 0, 0, 0),
(90, 0, 0, 0),
(91, 0, 0, 0),
(92, 0, 0, 0),
(93, 0, 0, 0),
(94, 0, 0, 0),
(95, 0, 0, 0),
(96, 15000, 0, 15000),
(97, 45555, 0, 45555),
(98, 54645, 0, 54645),
(99, 15000, 0, 15000),
(100, 15000, 0, 15000),
(101, 54645, 0, 54645),
(102, 45555, 0, 45555),
(103, 1222222, 0, 1222222);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_emp`
--
ALTER TABLE `add_emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_emp`
--
ALTER TABLE `add_emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
