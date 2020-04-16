-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 16, 2020 at 04:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etce_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `addressDetails`
--

CREATE TABLE `addressDetails` (
  `uname` varchar(50) NOT NULL,
  `rno` char(12) NOT NULL,
  `permanentAdd` longtext NOT NULL,
  `correspondenceAdd` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addressDetails`
--

INSERT INTO `addressDetails` (`uname`, `rno`, `permanentAdd`, `correspondenceAdd`) VALUES
('Arijit Saha', '001910701019', 'I/51A Baghajatin  Kolkata 700092', 'I/51A Baghajatin  Kolkata 700092');

-- --------------------------------------------------------

--
-- Table structure for table `notice_uploads`
--

CREATE TABLE `notice_uploads` (
  `file_id` varchar(10) NOT NULL,
  `extension` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice_uploads`
--

INSERT INTO `notice_uploads` (`file_id`, `extension`) VALUES
('1', 'pdf'),
('2', 'pdf');

-- --------------------------------------------------------

--
-- Table structure for table `parentDetails`
--

CREATE TABLE `parentDetails` (
  `uname` varchar(50) NOT NULL,
  `rno` char(12) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `mName` varchar(50) NOT NULL,
  `fContact` char(10) NOT NULL,
  `mContact` char(10) NOT NULL,
  `fEmail` text NOT NULL,
  `mEmail` text NOT NULL,
  `fBloodGrp` char(3) NOT NULL,
  `mBloodGrp` char(3) NOT NULL,
  `fOccu` text NOT NULL,
  `mOccu` text NOT NULL,
  `parentOfficeAdd` longtext NOT NULL,
  `parentOfficeTel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parentDetails`
--

INSERT INTO `parentDetails` (`uname`, `rno`, `fName`, `mName`, `fContact`, `mContact`, `fEmail`, `mEmail`, `fBloodGrp`, `mBloodGrp`, `fOccu`, `mOccu`, `parentOfficeAdd`, `parentOfficeTel`) VALUES
('Arijit Saha', '001910701019', 'Ajit Kumar Saha', 'Rinku Saha', '7044179173', '9433342923', 'aksaha_66@gmail.com', 'rinkusaha_67@gmail.com', 'B+', 'O+', 'service', 'houseWife', 'Jessore Rd, Dum Dum, Kolkata, West Bengal 700052', '8282205752');

-- --------------------------------------------------------

--
-- Table structure for table `personalDetails`
--

CREATE TABLE `personalDetails` (
  `uname` varchar(50) NOT NULL,
  `rno` char(12) NOT NULL,
  `dob` date NOT NULL,
  `bloodGrp` char(3) NOT NULL,
  `yJoin` int(11) NOT NULL,
  `yStudy` varchar(5) NOT NULL,
  `Stream` text NOT NULL,
  `Gender` tinytext NOT NULL,
  `Category` tinytext NOT NULL,
  `wbjeeMaths` decimal(10,2) NOT NULL,
  `wbjeePhyChem` decimal(10,2) NOT NULL,
  `stuEmail` text NOT NULL,
  `stuContact` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personalDetails`
--

INSERT INTO `personalDetails` (`uname`, `rno`, `dob`, `bloodGrp`, `yJoin`, `yStudy`, `Stream`, `Gender`, `Category`, `wbjeeMaths`, `wbjeePhyChem`, `stuEmail`, `stuContact`) VALUES
('Arijit Saha', '001910701019', '2001-02-09', 'B', 2019, 'ug1', 'etce', 'Male', 'general', '77.50', '78.00', 'arijitfeb01@gmail.com', '9874981292');

-- --------------------------------------------------------

--
-- Table structure for table `profileimg`
--

CREATE TABLE `profileimg` (
  `id` int(11) NOT NULL,
  `user_rno` char(12) NOT NULL,
  `status_name` int(11) NOT NULL,
  `ext` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profileimg`
--

INSERT INTO `profileimg` (`id`, `user_rno`, `status_name`, `ext`) VALUES
(2, '001910701019', 0, 'jpg'),
(4, '001910701012', 1, 'jpg'),
(5, '001910701012', 1, 'jpg'),
(6, '001910701012', 1, 'jpg'),
(7, '001910701012', 1, 'jpg'),
(8, '001910701012', 1, 'jpg'),
(9, '001910701012', 1, 'jpg'),
(10, '001910701012', 1, 'jpg'),
(11, '001910701012', 1, 'jpg'),
(12, '001910701012', 1, 'jpg'),
(13, '001910701012', 1, 'jpg'),
(14, '001910701012', 1, 'jpg'),
(15, '001910701012', 1, 'jpg'),
(16, '001910701012', 1, 'jpg'),
(17, '001910701012', 1, 'jpg'),
(18, '001910701012', 1, 'jpg'),
(19, '001910701012', 1, 'jpg'),
(20, '001910701012', 1, 'none'),
(21, '001910701012', 1, 'none'),
(22, '001910701016', 1, 'none'),
(23, '001910701016', 1, 'none'),
(24, '001910701016', 1, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `pwdReset`
--

CREATE TABLE `pwdReset` (
  `pwdResetId` int(11) NOT NULL,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pwdReset`
--

INSERT INTO `pwdReset` (`pwdResetId`, `pwdResetEmail`, `pwdResetSelector`, `pwdResetToken`, `pwdResetExpires`) VALUES
(22, 'ayanbiswas184@gmail.com', '4d7e18256bdd0d52', '$2y$10$OX5s6QRkzDnajtrCYHW7a.JzqQA3SSx1XzveXAxwBQ6dgU/cRcobu', '1586801057');

-- --------------------------------------------------------

--
-- Table structure for table `student_userdata`
--

CREATE TABLE `student_userdata` (
  `roll_no` char(12) NOT NULL,
  `Full_name` varchar(60) NOT NULL,
  `Course_code` varchar(10) NOT NULL,
  `reg_status` varchar(1) NOT NULL DEFAULT 'N',
  `course_name` varchar(50) NOT NULL,
  `department` varchar(60) NOT NULL,
  `faculty` varchar(40) NOT NULL DEFAULT 'Faculty of Engineering and Technology'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='For initial db for the students';

--
-- Dumping data for table `student_userdata`
--

INSERT INTO `student_userdata` (`roll_no`, `Full_name`, `Course_code`, `reg_status`, `course_name`, `department`, `faculty`) VALUES
('001910701012', 'AYAN BISWAS', 'BETC1923', 'Y', 'Bachelor of Engineering', 'Electronics and Telecommunication Engineering', 'Faculty of Engineering and Technology'),
('001910701016', 'ARINDAM MAJEE', 'BETC1923', 'Y', 'Bachelor of Engineering', 'Electronics and Telecommunication Engineering', 'Faculty of Engineering and Technology'),
('001910701019', 'ARIJIT SAHA', 'BETC1923', 'Y', 'Bachelor of Engineering', 'Electronics and Telecommunication Engineering', 'Faculty of Engineering and Technology');

-- --------------------------------------------------------

--
-- Table structure for table `stu_notice`
--

CREATE TABLE `stu_notice` (
  `notice_id` varchar(10) NOT NULL,
  `date_time_create` datetime NOT NULL,
  `date_time_expiry` datetime NOT NULL,
  `notice` varchar(500) NOT NULL,
  `file_id` varchar(10) NOT NULL,
  `notice_visible` varchar(10) NOT NULL,
  `notice_status` varchar(10) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stu_notice`
--

INSERT INTO `stu_notice` (`notice_id`, `date_time_create`, `date_time_expiry`, `notice`, `file_id`, `notice_visible`, `notice_status`) VALUES
('etc/1', '2020-04-16 04:17:49', '2020-04-18 00:00:00', 'This is to Notify all the students of Etce UG 1 to complete the registration in the course managament portal', '', 'BETC1923', 'open'),
('etc/2', '2020-04-17 04:51:22', '2020-04-18 00:00:00', 'This is a test notice ', '', 'ALL', 'open'),
('etc/3', '2020-04-17 05:01:59', '2020-04-18 00:00:00', 'This is second test notice without file and it is archived', '', 'BETC1923', 'archived'),
('etc/4', '2020-04-16 19:07:29', '2020-04-16 19:09:00', 'New Notice', '', 'ALL', 'archived'),
('etc/5', '2020-04-16 19:48:39', '2020-04-16 19:50:00', 'Notice', '1', 'ALL', 'archived'),
('etc/6', '2020-04-16 20:07:08', '2020-04-16 23:00:00', 'This is for UG students', '2', 'ALL', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uname` varchar(50) NOT NULL,
  `rno` char(12) NOT NULL,
  `email` tinytext NOT NULL,
  `pwd` longtext NOT NULL,
  `update_status1` int(11) NOT NULL,
  `update_status2` int(11) NOT NULL,
  `update_status3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uname`, `rno`, `email`, `pwd`, `update_status1`, `update_status2`, `update_status3`) VALUES
('AYAN BISWAS', '001910701012', 'ayanbiswas184@gmail.com', '$2y$10$M1OsU7Qqd/OmGN5iH.Ni5.gw2OXdLUGbQ1LhIK2qMlLRq6Ir5K7fq', 0, 0, 0),
('ARINDAM MAJEE', '001910701016', 'arindam@gmail.com', '$2y$10$CUozVbOJv41VPcD74srqK.WlJVeulP5MwXMVWirWw2a9jYHqJVBLW', 0, 0, 0),
('Arijit Saha', '001910701019', 'arijitfeb01@gmail.com', '$2y$10$IUcRnnbqP/fcwhEbE80Vae33qGw/djqPCHY3uWaNFPx2K8QW4DKXC', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_staff`
--

CREATE TABLE `users_staff` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `staff_role` varchar(10) NOT NULL,
  `pwd` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_staff`
--

INSERT INTO `users_staff` (`id`, `uname`, `email`, `staff_role`, `pwd`) VALUES
(1, 'Arijit Saha', 'arijitfeb01@gmail.com', 'admin', '$2y$10$IUcRnnbqP/fcwhEbE80Vae33qGw/djqPCHY3uWaNFPx2K8QW4DKXC'),
(2, 'AYAN BISWAS', 'ayanbiswas184@gmail.com', 'faculty', '$2y$10$wkdyI6AVykKnKyQqsTvv3eJ5.GCDUlosgRTu4szrZe5VBMdo4HhcG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addressDetails`
--
ALTER TABLE `addressDetails`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `notice_uploads`
--
ALTER TABLE `notice_uploads`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `parentDetails`
--
ALTER TABLE `parentDetails`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `personalDetails`
--
ALTER TABLE `personalDetails`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `profileimg`
--
ALTER TABLE `profileimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pwdReset`
--
ALTER TABLE `pwdReset`
  ADD PRIMARY KEY (`pwdResetId`);

--
-- Indexes for table `student_userdata`
--
ALTER TABLE `student_userdata`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `stu_notice`
--
ALTER TABLE `stu_notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `users_staff`
--
ALTER TABLE `users_staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profileimg`
--
ALTER TABLE `profileimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pwdReset`
--
ALTER TABLE `pwdReset`
  MODIFY `pwdResetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
