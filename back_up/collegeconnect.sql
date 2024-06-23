-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 06:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegeconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `aid` int(20) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`aid`, `aemail`, `apass`) VALUES
(1, 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `association_tbl`
--

CREATE TABLE `association_tbl` (
  `assid` int(20) NOT NULL,
  `assname` varchar(100) NOT NULL,
  `assemail` varchar(50) NOT NULL,
  `asspass` varchar(50) NOT NULL,
  `assbranch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `association_tbl`
--

INSERT INTO `association_tbl` (`assid`, `assname`, `assemail`, `asspass`, `assbranch`) VALUES
(3, 'CompAss', 'compass@gmail.com', '12345', 'Computer'),
(4, 'AIMLAss', 'aimlass@gmail.com', '12345', 'AIML');

-- --------------------------------------------------------

--
-- Table structure for table `evcon_tbl`
--

CREATE TABLE `evcon_tbl` (
  `evconid` int(10) NOT NULL,
  `evid` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `user` varchar(500) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evcon_tbl`
--

INSERT INTO `evcon_tbl` (`evconid`, `evid`, `id`, `user`, `comment`) VALUES
(4, 4, 3, 'compass@gmail.com', 'hii'),
(5, 4, 6, 't@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `ev_tbl`
--

CREATE TABLE `ev_tbl` (
  `evid` int(20) NOT NULL,
  `evtitle` varchar(500) NOT NULL,
  `evdesc` varchar(1000) NOT NULL,
  `evassid` int(20) NOT NULL,
  `evstatus` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ev_tbl`
--

INSERT INTO `ev_tbl` (`evid`, `evtitle`, `evdesc`, `evassid`, `evstatus`) VALUES
(1, 'java', 'java hackathon orgnize', 2, 0),
(2, 'java', 'java project', 2, 1),
(3, 'Gathering', 'create groups and set dance', 4, 1),
(4, 'hello', 'hello', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hodnotcon_tbl`
--

CREATE TABLE `hodnotcon_tbl` (
  `comid` int(10) NOT NULL,
  `hodnotid` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `user` varchar(300) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hodnotcon_tbl`
--

INSERT INTO `hodnotcon_tbl` (`comid`, `hodnotid`, `id`, `user`, `comment`) VALUES
(1, 5, 3, 'tpo@gmail.com', 'hello students'),
(3, 4, 2, 'hod@gmail.com', 'hiii'),
(4, 6, 5, 'comphod@gmail.com', 'hii boys'),
(5, 6, 6, 't@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `hodnot_tbl`
--

CREATE TABLE `hodnot_tbl` (
  `hodnotid` int(10) NOT NULL,
  `hodnottitle` varchar(500) NOT NULL,
  `hodnotdesc` varchar(1000) NOT NULL,
  `hodid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hodnot_tbl`
--

INSERT INTO `hodnot_tbl` (`hodnotid`, `hodnottitle`, `hodnotdesc`, `hodid`) VALUES
(4, 'hodnot', 'hii everyone', 2),
(5, 'c lang', 'hii friends', 3),
(6, 'comphod', 'i am comp hod', 5);

-- --------------------------------------------------------

--
-- Table structure for table `hod_tbl`
--

CREATE TABLE `hod_tbl` (
  `hodid` int(20) NOT NULL,
  `hodname` varchar(100) NOT NULL,
  `hodemail` varchar(50) NOT NULL,
  `hodpass` varchar(50) NOT NULL,
  `hodbranch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hod_tbl`
--

INSERT INTO `hod_tbl` (`hodid`, `hodname`, `hodemail`, `hodpass`, `hodbranch`) VALUES
(5, 'CompHOD', 'comphod@gmail.com', '12345', 'Computer'),
(6, 'AIMLHOD', 'aimlhod@gmail.com', '12345', 'AIML');

-- --------------------------------------------------------

--
-- Table structure for table `jobcon_tbl`
--

CREATE TABLE `jobcon_tbl` (
  `conid` int(10) NOT NULL,
  `jobid` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `user` varchar(100) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobcon_tbl`
--

INSERT INTO `jobcon_tbl` (`conid`, `jobid`, `id`, `user`, `comment`) VALUES
(12, 1, 1, 'tushar@gmail.com', 'this is nice '),
(13, 1, 1, 'tushar@gmail.com', 'hii tushar'),
(14, 4, 4, 'tpo@gmail.com', 'thanks for job'),
(15, 4, 4, 'tpo@gmail.com', 'thanks for job'),
(16, 4, 4, 'tpo@gmail.com', 'thanks for job'),
(17, 4, 4, 'tpo@gmail.com', 'thanks for job'),
(18, 4, 4, 'tpo@gmail.com', 'thanks for job'),
(19, 4, 4, 'tpo@gmail.com', 'thanks for job'),
(20, 4, 4, 'tpo@gmail.com', 'hello'),
(21, 4, 4, 'tpo@gmail.com', 'good morning'),
(23, 4, 4, 'tpo@gmail.com', 'fododod'),
(24, 4, 4, 'tpo@gmail.com', 'thank'),
(26, 4, 4, 'tpo@gmail.com', 'hii'),
(27, 0, 4, 'tpo@gmail.com', 'hii'),
(28, 0, 4, 'tpo@gmail.com', 'by'),
(29, 0, 4, 'tpo@gmail.com', 'hello'),
(30, 2, 4, 'tpo@gmail.com', 'hii'),
(31, 5, 0, 'tushar@gmail.com', 'thank you sir for the job'),
(32, 5, 4, 'tpo@gmail.com', 'prepare for the interview'),
(34, 2, 2, 'ass@gmail.com', 'hii'),
(36, 2, 2, 'ass@gmail.com', 'tushar'),
(37, 2, 2, 'ass@gmail.com', 'abcd'),
(38, 2, 2, 'ass@gmail.com', ''),
(39, 3, 8, 'd@gmail.com', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `job_tbl`
--

CREATE TABLE `job_tbl` (
  `jobid` int(20) NOT NULL,
  `jobtitle` varchar(500) NOT NULL,
  `jobdesc` varchar(1000) NOT NULL,
  `jobtpoid` int(20) NOT NULL,
  `jobstatus` int(10) NOT NULL,
  `jobcomp` int(10) NOT NULL,
  `jobaiml` int(10) NOT NULL,
  `jobds` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_tbl`
--

INSERT INTO `job_tbl` (`jobid`, `jobtitle`, `jobdesc`, `jobtpoid`, `jobstatus`, `jobcomp`, `jobaiml`, `jobds`) VALUES
(1, 'tcs', 'open job for freshers ', 4, 0, 0, 0, 0),
(2, 'tcs', 'open job for freshers ', 4, 1, 0, 0, 0),
(4, 'wipro', 'open job for freshers ', 4, 1, 1, 0, 1),
(5, 'ultimetric', 'open job for freshers ', 4, 1, 1, 1, 1),
(6, 'wipro', 'oping now', 4, 1, 0, 0, 0),
(10, 'AIML', 'Open Now', 4, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `not_tbl`
--

CREATE TABLE `not_tbl` (
  `notid` int(20) NOT NULL,
  `nottitle` varchar(500) NOT NULL,
  `notdesc` varchar(1000) NOT NULL,
  `notassid` int(20) NOT NULL,
  `notstatus` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `not_tbl`
--

INSERT INTO `not_tbl` (`notid`, `nottitle`, `notdesc`, `notassid`, `notstatus`) VALUES
(2, 'java', 'java', 2, 1),
(3, 'Teachers Day Celebration', 'Gather all ', 4, 1),
(4, 'Teachers Day', 'Invite all of you', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reqcon_tbl`
--

CREATE TABLE `reqcon_tbl` (
  `reqconid` int(10) NOT NULL,
  `reqid` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `user` varchar(200) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reqcon_tbl`
--

INSERT INTO `reqcon_tbl` (`reqconid`, `reqid`, `id`, `user`, `comment`) VALUES
(1, 3, 2, 'ass@gmail.com', 'hii'),
(2, 3, 6, 'tushar@gmail.com', 'hello'),
(3, 3, 6, 'tushar@gmail.com', 'hii'),
(4, 2, 2, 'ass@gmail.com', 'hii boys'),
(5, 2, 2, 'ass@gmail.com', 'hii iam'),
(6, 3, 2, 'ass@gmail.com', 'hii'),
(7, 3, 2, 'ass@gmail.com', 'hii students'),
(8, 3, 5, 'stud@gmail.com', 'hii sir'),
(9, 3, 5, 'stud@gmail.com', 'hii sir i am happy'),
(10, 3, 8, 'd@gmail.com', 'hello my friends'),
(11, 6, 3, 'compass@gmail.com', 'hii'),
(12, 6, 3, 'compass@gmail.com', 'hii'),
(13, 7, 3, 'compass@gmail.com', 'hello'),
(14, 7, 6, 't@gmail.com', 'hii');

-- --------------------------------------------------------

--
-- Table structure for table `req_tbl`
--

CREATE TABLE `req_tbl` (
  `reqid` int(20) NOT NULL,
  `reqtitle` varchar(100) NOT NULL,
  `reqdesc` varchar(1000) NOT NULL,
  `reqassid` int(20) NOT NULL,
  `reqstatus` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `req_tbl`
--

INSERT INTO `req_tbl` (`reqid`, `reqtitle`, `reqdesc`, `reqassid`, `reqstatus`) VALUES
(2, 'java class', 'java class start from 03/07/2023', 2, 0),
(3, 'java class', 'java class start from 03/07/2023', 2, 1),
(4, 'Open Jobs For AIML', 'All students are develop self', 4, 0),
(5, 'Dancer', '2 Dancers requirement', 4, 1),
(6, 'java', 'java class start ', 3, 0),
(7, 'java', 'java', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `studapply_tbl`
--

CREATE TABLE `studapply_tbl` (
  `applyid` int(10) NOT NULL,
  `studid` int(10) NOT NULL,
  `studemail` varchar(100) NOT NULL,
  `id` int(10) NOT NULL,
  `applytitle` varchar(500) NOT NULL,
  `applydesc` varchar(1000) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studapply_tbl`
--

INSERT INTO `studapply_tbl` (`applyid`, `studid`, `studemail`, `id`, `applytitle`, `applydesc`, `type`) VALUES
(6, 6, 't@gmail.com', 3, 'java class', 'java class start from 03/07/2023', 'Req'),
(7, 6, 't@gmail.com', 5, 'Dancer', '2 Dancers requirement', 'Req');

-- --------------------------------------------------------

--
-- Table structure for table `stud_tbl`
--

CREATE TABLE `stud_tbl` (
  `studid` int(20) NOT NULL,
  `studname` varchar(100) NOT NULL,
  `studemail` varchar(50) NOT NULL,
  `studpass` varchar(50) NOT NULL,
  `studbranch` varchar(100) NOT NULL,
  `studstatus` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stud_tbl`
--

INSERT INTO `stud_tbl` (`studid`, `studname`, `studemail`, `studpass`, `studbranch`, `studstatus`) VALUES
(6, 'Tushar', 't@gmail.com', '12345', 'Computer', 1),
(8, 'Dhiraj', 'd@gmail.com', '12345', 'AIML', 1),
(9, 'Darshan', 'dk@gmail.com', '12345', 'Computer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tpo_tbl`
--

CREATE TABLE `tpo_tbl` (
  `tpoid` int(11) NOT NULL,
  `tponame` varchar(100) NOT NULL,
  `tpoemail` varchar(50) NOT NULL,
  `tpopass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tpo_tbl`
--

INSERT INTO `tpo_tbl` (`tpoid`, `tponame`, `tpoemail`, `tpopass`) VALUES
(4, 'tpo', 'tpo@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `association_tbl`
--
ALTER TABLE `association_tbl`
  ADD PRIMARY KEY (`assid`);

--
-- Indexes for table `evcon_tbl`
--
ALTER TABLE `evcon_tbl`
  ADD PRIMARY KEY (`evconid`);

--
-- Indexes for table `ev_tbl`
--
ALTER TABLE `ev_tbl`
  ADD PRIMARY KEY (`evid`);

--
-- Indexes for table `hodnotcon_tbl`
--
ALTER TABLE `hodnotcon_tbl`
  ADD PRIMARY KEY (`comid`);

--
-- Indexes for table `hodnot_tbl`
--
ALTER TABLE `hodnot_tbl`
  ADD PRIMARY KEY (`hodnotid`);

--
-- Indexes for table `hod_tbl`
--
ALTER TABLE `hod_tbl`
  ADD PRIMARY KEY (`hodid`);

--
-- Indexes for table `jobcon_tbl`
--
ALTER TABLE `jobcon_tbl`
  ADD PRIMARY KEY (`conid`);

--
-- Indexes for table `job_tbl`
--
ALTER TABLE `job_tbl`
  ADD PRIMARY KEY (`jobid`);

--
-- Indexes for table `not_tbl`
--
ALTER TABLE `not_tbl`
  ADD PRIMARY KEY (`notid`);

--
-- Indexes for table `reqcon_tbl`
--
ALTER TABLE `reqcon_tbl`
  ADD PRIMARY KEY (`reqconid`);

--
-- Indexes for table `req_tbl`
--
ALTER TABLE `req_tbl`
  ADD PRIMARY KEY (`reqid`);

--
-- Indexes for table `studapply_tbl`
--
ALTER TABLE `studapply_tbl`
  ADD PRIMARY KEY (`applyid`);

--
-- Indexes for table `stud_tbl`
--
ALTER TABLE `stud_tbl`
  ADD PRIMARY KEY (`studid`);

--
-- Indexes for table `tpo_tbl`
--
ALTER TABLE `tpo_tbl`
  ADD PRIMARY KEY (`tpoid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `aid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `association_tbl`
--
ALTER TABLE `association_tbl`
  MODIFY `assid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `evcon_tbl`
--
ALTER TABLE `evcon_tbl`
  MODIFY `evconid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ev_tbl`
--
ALTER TABLE `ev_tbl`
  MODIFY `evid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hodnotcon_tbl`
--
ALTER TABLE `hodnotcon_tbl`
  MODIFY `comid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hodnot_tbl`
--
ALTER TABLE `hodnot_tbl`
  MODIFY `hodnotid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hod_tbl`
--
ALTER TABLE `hod_tbl`
  MODIFY `hodid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobcon_tbl`
--
ALTER TABLE `jobcon_tbl`
  MODIFY `conid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `job_tbl`
--
ALTER TABLE `job_tbl`
  MODIFY `jobid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `not_tbl`
--
ALTER TABLE `not_tbl`
  MODIFY `notid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reqcon_tbl`
--
ALTER TABLE `reqcon_tbl`
  MODIFY `reqconid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `req_tbl`
--
ALTER TABLE `req_tbl`
  MODIFY `reqid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `studapply_tbl`
--
ALTER TABLE `studapply_tbl`
  MODIFY `applyid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stud_tbl`
--
ALTER TABLE `stud_tbl`
  MODIFY `studid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tpo_tbl`
--
ALTER TABLE `tpo_tbl`
  MODIFY `tpoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
