-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 05:49 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Admin user', 'phpgurukulofficial@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2024-09-24 15:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `booking_event`
--

CREATE TABLE `booking_event` (
  `id` int(11) NOT NULL,
  `paymentid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_ststus` varchar(50) NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

CREATE TABLE `tblbookings` (
  `id` int(11) NOT NULL,
  `BookingId` bigint(12) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `EventId` int(11) DEFAULT NULL,
  `NumberOfMembers` int(11) DEFAULT NULL,
  `UserRemark` mediumtext DEFAULT NULL,
  `AdminRemark` mediumtext DEFAULT NULL,
  `UserCancelRemark` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `BookingStatus` varchar(100) DEFAULT NULL,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `paymentId` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbookings`
--

INSERT INTO `tblbookings` (`id`, `BookingId`, `UserId`, `EventId`, `NumberOfMembers`, `UserRemark`, `AdminRemark`, `UserCancelRemark`, `BookingDate`, `BookingStatus`, `LastUpdationDate`, `paymentId`) VALUES
(3, 659452988, 1, 2, 4, 'Event booked successfully. Booking number is', 'Your booking is confirmed.', NULL, '2019-06-09 18:48:20', 'Confirmed', '2023-04-14 06:11:23', NULL),
(4, 927630009, 2, 2, 5, 'This is sample text for testing.', 'Your booking is confirmed', NULL, '2019-06-14 14:34:56', 'Confirmed', '2023-04-14 06:11:23', NULL),
(5, 313116173, 2, 5, 4, 'This is sample text for testing', 'Canclled', NULL, '2019-06-14 14:51:29', 'Cancelled', '2023-04-14 06:11:23', NULL),
(6, 366526092, 2, 7, 0, 'cccc', NULL, NULL, '2023-04-06 12:34:15', NULL, '2023-04-14 06:11:23', NULL),
(7, 922934945, 2, 7, 0, 'cccc', 'gerge', NULL, '2023-04-06 12:50:17', 'Cancelled', '2023-04-14 06:11:23', NULL),
(8, 433577425, 2, 8, 3, 'ede', NULL, NULL, '2023-04-08 12:55:46', NULL, '2023-04-14 06:11:23', NULL),
(9, 703071863, 2, 8, 3, 'dedede', NULL, NULL, '2023-04-10 13:22:35', NULL, '2023-04-14 06:11:23', NULL),
(10, 703959925, 2, 8, 4, 'vkofv', NULL, NULL, '2023-04-10 14:35:39', NULL, '2023-04-14 06:11:23', NULL),
(11, 793673079, 2, 8, 4, 'r', NULL, NULL, '2023-04-12 07:20:24', NULL, '2023-04-14 06:11:23', NULL),
(12, 945858774, 3, 9, 6, 'gby', NULL, NULL, '2023-04-12 13:29:14', NULL, '2023-04-14 06:11:23', NULL),
(13, 618554553, 2, 9, 6, 'pceie', NULL, NULL, '2023-04-13 03:51:13', NULL, '2023-04-14 06:11:23', NULL),
(14, 366631419, 2, 9, 33, 'dmw', NULL, NULL, '2023-04-13 03:52:07', NULL, '2023-04-14 06:11:23', NULL),
(15, 479695577, 2, 9, 2, 'fuck', NULL, NULL, '2023-04-13 04:32:42', NULL, '2023-04-14 06:11:23', NULL),
(16, 573154113, 2, 9, 4, 'aaa', NULL, NULL, '2023-04-13 04:36:11', NULL, '2023-04-14 06:11:23', NULL),
(17, 130587133, 2, 9, 3, 'qaa', NULL, NULL, '2023-04-13 04:41:24', NULL, '2023-04-14 06:11:23', NULL),
(18, 796153585, 2, 9, 2, 'aaa', NULL, NULL, '2023-04-13 04:44:29', NULL, '2023-04-14 06:11:23', NULL),
(19, 569475545, 2, 9, 2, 'aaa', NULL, NULL, '2023-04-13 04:46:55', NULL, '2023-04-14 06:11:23', NULL),
(20, 468695511, 2, 9, 2, 'aa', NULL, NULL, '2023-04-13 04:59:39', NULL, '2023-04-14 06:11:23', NULL),
(21, 955221517, 2, 9, 4, 'z', NULL, NULL, '2023-04-13 05:04:16', NULL, '2023-04-14 06:11:23', NULL),
(22, 303949967, 2, 9, 2, 'q', NULL, NULL, '2023-04-13 05:07:49', NULL, '2023-04-14 06:11:23', NULL),
(23, 798342271, 2, 9, 2, 'ww', NULL, NULL, '2023-04-13 05:25:43', NULL, '2023-04-14 06:11:23', NULL),
(24, 345879516, 2, 9, 1, 'qq', NULL, NULL, '2023-04-13 06:26:48', NULL, '2023-04-14 06:11:23', NULL),
(25, 485000090, 2, 9, NULL, NULL, NULL, NULL, '2023-04-13 06:27:39', NULL, '2023-04-14 06:11:23', NULL),
(26, 108982252, 2, 9, 5, 'bh', NULL, NULL, '2023-04-13 19:18:04', NULL, '2023-04-14 06:11:23', NULL),
(27, 541720811, 2, 9, 4, 'de', NULL, NULL, '2023-04-13 19:24:58', NULL, '2023-04-14 06:11:23', NULL),
(28, 213325579, 2, 9, 4, 'fff', NULL, NULL, '2023-04-13 19:30:27', NULL, '2023-04-14 06:11:23', NULL),
(29, 433572226, 2, 9, 3, 'de', NULL, NULL, '2023-04-13 19:30:51', NULL, '2023-04-14 06:11:23', NULL),
(30, 665114057, 2, 9, 5, 'ftt', NULL, NULL, '2023-04-14 05:26:51', NULL, '2023-04-14 06:11:23', NULL),
(31, 246544268, 2, 9, 2, 'dfvksh', NULL, NULL, '2023-04-14 05:41:14', NULL, '2023-04-14 06:11:23', NULL),
(32, 723065813, 2, 9, 2, 'mfd', NULL, NULL, '2023-04-14 05:41:53', NULL, '2023-04-14 06:11:23', NULL),
(33, 740613236, 2, 9, 3, 'frf', NULL, NULL, '2023-04-14 05:55:51', NULL, '2023-04-14 06:11:23', NULL),
(34, 731450598, 2, 9, 4, 'jhg', NULL, NULL, '2023-04-14 06:05:09', NULL, '2023-04-14 06:11:23', NULL),
(35, 966025718, 2, 9, 6, 'prince', NULL, NULL, '2023-04-14 06:06:48', NULL, '2023-04-14 06:11:23', NULL),
(36, 129574699, 2, 9, 8, 'jgv', NULL, NULL, '2023-04-14 06:15:49', NULL, NULL, 'pay_LdZL3zMV9SVxEx'),
(37, 941427220, 2, 9, 5, 'r', NULL, NULL, '2023-04-14 07:29:17', NULL, NULL, 'pay_LdaafsqqGNMotH'),
(38, 329355725, 4, 9, 1, '123', NULL, NULL, '2023-04-25 09:40:20', NULL, NULL, 'pay_LhyhTppdJ02uPT');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CategoryDescription` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `CategoryDescription`, `CreationDate`, `UpdationDate`, `IsActive`) VALUES
(2, 'Sports Party', 'Sports Party', '2019-01-07 18:30:11', '2019-06-12 17:49:19', '0'),
(3, 'Music Day', 'Music Day', '2019-01-07 18:30:30', NULL, '1'),
(4, 'Kitty Party', 'Kitty Party', '2019-06-12 17:49:03', NULL, '1'),
(5, 'Test', 'Test 1', '2019-06-14 14:38:12', '2019-06-14 14:38:21', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `id` int(11) NOT NULL,
  `CategoryId` char(10) DEFAULT NULL,
  `SponserId` char(10) DEFAULT NULL,
  `EventName` varchar(255) DEFAULT NULL,
  `EventDescription` mediumtext DEFAULT NULL,
  `EventStartDate` date DEFAULT NULL,
  `EventEndDate` date DEFAULT NULL,
  `EventLocation` varchar(255) DEFAULT NULL,
  `EventImage` varchar(255) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` int(1) DEFAULT NULL,
  `EventPrice` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblevents`
--

INSERT INTO `tblevents` (`id`, `CategoryId`, `SponserId`, `EventName`, `EventDescription`, `EventStartDate`, `EventEndDate`, `EventLocation`, `EventImage`, `PostingDate`, `LastUpdationDate`, `IsActive`, `EventPrice`) VALUES
(1, '3', '1', 'Test Event ', 'This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. This is a sample for text for testing. ', '2023-06-21', '2023-07-31', 'New Delhi, India', '030a598309176bacad1e877e9d2d13fa.jpg', '2019-02-27 18:05:24', '2023-04-07 08:35:56', 1, 200),
(2, '2', '1', 'Cricket Match event', 'This is sample text for testing. This is sample text for testing.  This is sample text for testing.  This is sample text for testing.This is sample text for testing.This is sample text for testing.This is sample text for testing.This is sample text for testing.', '2019-06-15', '2019-06-30', 'New Delhi', '9c27f97f48cb87433e40dcf3e59aa7a0.jpg', '2019-04-18 09:10:09', '2019-06-14 14:36:29', 1, 0),
(5, '3', '1', 'Test Event new', 'This is sample text for testing. This is sample text for testing.This is sample text for testing.This is sample text for testing.This is sample text for testing.', '2019-06-16', '2019-06-30', 'Mumbai India', 'db929cd53bd93e6ef09a870bac6bf286.png', '2019-06-14 14:45:13', '2019-06-14 14:49:26', 1, 0),
(6, '2', '1', 'test', 'test data', '2019-06-01', '2019-06-30', 'Test location', '600c8610fae0e8c11635cc96bbb281bd.png', '2019-06-14 14:50:16', NULL, 1, 0),
(7, '2', '1', 'dedd', 'ceec', '2023-04-13', '2023-04-30', 'dedewde', '9866305772fdefa042b850e7b71d1b5f.jpg', '2023-04-06 12:31:50', NULL, 1, 0),
(8, '3', '1', 'wdwda', NULL, '2023-04-14', '2023-04-21', 'dawdawd', 'dbe3af9bd17b06fc44d95f758d536b4b.jpg', '2023-04-07 07:11:40', NULL, 1, 500),
(9, '3', '1', 'pince', NULL, '2023-04-14', '2023-04-27', ' jceuwbciih', '6254c90154ab5728e28281478748c73f.jpg', '2023-04-12 13:05:20', NULL, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `tblgenralsettings`
--

CREATE TABLE `tblgenralsettings` (
  `id` int(11) NOT NULL,
  `SiteName` varchar(200) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `footercontent` mediumtext DEFAULT NULL,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgenralsettings`
--

INSERT INTO `tblgenralsettings` (`id`, `SiteName`, `PhoneNumber`, `EmailId`, `address`, `footercontent`, `LastUpdationDate`) VALUES
(1, 'EMS ', 9223372036854775807, 'demotest@test.com', 'Test address\r\nTest City\r\nTest State\r\nIN-110091', 'Copyright 2019 All Rights Reserved', '2019-06-14 14:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblnews`
--

CREATE TABLE `tblnews` (
  `id` int(11) NOT NULL,
  `NewsTitle` varchar(255) DEFAULT NULL,
  `NewsDetails` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageType` varchar(255) DEFAULT NULL,
  `PageDetails` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageType`, `PageDetails`, `LastupdationDate`) VALUES
(1, 'aboutus', 'Sample text for testing. Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.Sample text for testing.', '2019-06-14 14:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblsponsers`
--

CREATE TABLE `tblsponsers` (
  `id` int(11) NOT NULL,
  `sponserName` varchar(255) DEFAULT NULL,
  `sponserLogo` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsponsers`
--

INSERT INTO `tblsponsers` (`id`, `sponserName`, `sponserLogo`, `postingDate`, `lastUpdationDate`) VALUES
(1, 'TCS', '9fd705be3020f133415debe050943b38.png', '2019-02-04 18:05:06', '2019-06-13 18:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

CREATE TABLE `tblsubscriber` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(255) DEFAULT NULL,
  `Regdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`id`, `UserEmail`, `Regdate`) VALUES
(1, 'phpgurukulofficial@gmail.com', '2019-06-08 12:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `Userid` int(11) NOT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Emailid` varchar(255) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `UserGender` varchar(100) DEFAULT NULL,
  `UserPassword` varchar(255) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`Userid`, `FullName`, `UserName`, `Emailid`, `PhoneNumber`, `UserGender`, `UserPassword`, `RegDate`, `LastUpdationDate`, `IsActive`) VALUES
(1, 'Test user', 'test12', 'ak30@gmail.com', 1234567899, 'Male', '5c428d8875d2948607f3e3fe134d71b4', '2019-06-08 10:31:18', '2019-06-13 19:15:41', 1),
(2, 'Test Demo ', 'test30', 'test@gmail.com', 1234567890, 'Male', 'f925916e2754e5e03f75dd58a5733251', '2019-06-14 14:34:01', '2019-06-14 14:58:42', 1),
(3, 'prince', 'admin', 'princeprajapati1672002@gmail.com', 8320471619, 'Male', 'e4cd965813bcdd73e3e9f07727b034dc', '2023-04-12 13:08:51', NULL, 1),
(4, 'Demo', 'Demo', 'demo@gmail.com', 1234567890, 'Male', 'e14c05f0dc27e6be1fc127abaf474a59', '2023-04-25 09:29:00', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_event`
--
ALTER TABLE `booking_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgenralsettings`
--
ALTER TABLE `tblgenralsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsponsers`
--
ALTER TABLE `tblsponsers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`Userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_event`
--
ALTER TABLE `booking_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbookings`
--
ALTER TABLE `tblbookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblgenralsettings`
--
ALTER TABLE `tblgenralsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblnews`
--
ALTER TABLE `tblnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsponsers`
--
ALTER TABLE `tblsponsers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `Userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
