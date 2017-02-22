-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2017 at 07:58 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deriche`
--

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `FormID` varchar(20) NOT NULL,
  `ParticipantID` int(11) NOT NULL,
  `FormType` varchar(20) NOT NULL,
  `FormInfo` longblob NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Revision1` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

CREATE TABLE `goal` (
  `GoalID` int(255) NOT NULL,
  `Description` text NOT NULL,
  `Objective` text,
  `GuidanceNote` text,
  `Frequency` int(1) UNSIGNED NOT NULL,
  `isWeekly` tinyint(1) NOT NULL,
  `ParticipantID` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `goal`
--

INSERT INTO `goal` (`GoalID`, `Description`, `Objective`, `GuidanceNote`, `Frequency`, `isWeekly`, `ParticipantID`) VALUES
(4, 'put on clothes', 'getting dressed', 'with assistance', 0, 1, 1),
(5, 'Shopping', 'buy food', 'needs to be complete', 1, 0, 2),
(11, '1', 'play games', 'by themself', 1, 1, 1),
(13, 'Read a book', 'The participant needs to read at least one chapter a day this goal is performed to better help them read while they are out in society.', 'Let them try to read by themselves at first and if they are having trouble help them understand each word that they are looking at.', 3, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `NoteID` int(255) NOT NULL,
  `Text` longtext NOT NULL,
  `Time_Started` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Last_Updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Time_Submitted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Time_Accepted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Comment` longtext,
  `Submitted` int(11) DEFAULT NULL,
  `TimeReviewer_Accepted` varchar(45) DEFAULT NULL,
  `NoteReviewer_Accepted` varchar(45) DEFAULT NULL,
  `ParticipantID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`NoteID`, `Text`, `Time_Started`, `Last_Updated`, `Time_Submitted`, `Time_Accepted`, `Comment`, `Submitted`, `TimeReviewer_Accepted`, `NoteReviewer_Accepted`, `ParticipantID`, `UserID`) VALUES
(6, ' put on clothes 1 Balance Checkbook', '2016-09-28 22:05:20', '0000-00-00 00:00:00', '2016-09-26 23:55:03', '2016-09-28 22:05:21', 'test 3', 1, NULL, '1', 1, 73),
(7, ' Shopping was fun.', '2016-10-20 04:05:53', '0000-00-00 00:00:00', '2016-09-27 00:01:53', '2016-09-28 22:54:37', 'test 4', 0, NULL, '1', 2, 73),
(8, ' Read a book', '2016-09-27 00:12:54', '0000-00-00 00:00:00', '2016-09-27 00:06:54', '2016-09-27 00:12:55', 'test 5', 1, NULL, '1', 3, 73),
(12, ' put on clothes 1 Balance Checkbook\nblah', '2016-09-27 00:20:48', '0000-00-00 00:00:00', '2016-09-27 00:19:54', '2016-09-27 00:20:49', 'test 6', 1, NULL, '1', 1, 73),
(18, ' Read a book', '2016-10-24 00:01:25', '0000-00-00 00:00:00', '2016-09-28 22:56:31', '0000-00-00 00:00:00', '', 1, NULL, NULL, 3, 75),
(19, ' 敒摡愠戠潯੫瑓癥湥眠獡愠汢⁥潴挠浯汰瑥⁥桴⁥獡楳湧摥挠慨瑰牥琠摯祡眠瑩⁨楬瑴敬愠獳獩慴据⹥䤠搠摩栠癡⁥潴瀠潲湵畯据⁥⁡敦⁷景琠敨眠牯獤映牯栠浩猠⁯敨眠畯摬欠潮⁷潨⁷潴猠祡琠敨⹭', '2017-01-30 19:02:24', '0000-00-00 00:00:00', '2016-09-28 22:57:04', '2017-01-30 19:02:25', '倀敬獡⁥敬⁴敭欠潮⁷晩䤠栠癡⁥慭敤愠祮洠獩慴敫⹳', 1, NULL, '1', 2, 75),
(21, ' put on clothes 1 Balance Checkbook test 10-5', '2016-10-05 22:51:42', '0000-00-00 00:00:00', '2016-10-05 22:51:43', '0000-00-00 00:00:00', '', 1, NULL, NULL, 1, 73),
(23, ' Read a book multiple saved draft test 10-9-16', '2016-10-10 19:50:37', '0000-00-00 00:00:00', '2016-10-09 21:17:04', '0000-00-00 00:00:00', NULL, 0, NULL, NULL, 3, 73),
(24, ' Read a book multiple saved draft test submit', '2016-10-09 21:19:47', '0000-00-00 00:00:00', '2016-10-09 21:19:48', '0000-00-00 00:00:00', '', 1, NULL, NULL, 3, 73),
(25, ' Read a book multiple saved draft submit test 10-10-16', '2016-10-10 19:51:42', '0000-00-00 00:00:00', '2016-10-10 19:51:42', '0000-00-00 00:00:00', '', 1, NULL, NULL, 3, 73),
(26, ' Shopping Shopping 10-10-16', '2016-10-24 01:52:49', '0000-00-00 00:00:00', '2016-10-10 22:55:33', '0000-00-00 00:00:00', 'test', 1, NULL, NULL, 4, 75),
(27, ' Stop being lazy! good job! submit test 10-10-16', '2016-10-10 22:57:02', '0000-00-00 00:00:00', '2016-10-10 22:57:03', '0000-00-00 00:00:00', '', 1, NULL, NULL, 4, 75),
(28, ' Shopping test steven''s new note save 10-19-16 ', '2016-10-19 23:28:08', '0000-00-00 00:00:00', '2016-10-19 23:28:08', '0000-00-00 00:00:00', NULL, 0, NULL, NULL, 2, 73),
(29, 'test', '2016-10-24 06:38:02', '0000-00-00 00:00:00', '2016-10-19 23:34:51', '0000-00-00 00:00:00', 'test 10-19 you need to add the year''s', 0, NULL, NULL, 3, 73),
(30, '效⁹桴獩椠⁳祔琠祲湩⁧潴琠獥⁴桴⁥楬業⁴潴䈠佌⹂䠠睯愠敲礠畯琠摯祡‿慔瑨椠⁳牧慥ⅴ挠捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣捣', '2016-10-24 06:18:53', '0000-00-00 00:00:00', '2016-10-19 23:38:14', '0000-00-00 00:00:00', 'test 10-19-16 test test', 0, NULL, NULL, 3, 73),
(31, ' 桓灯楰杮', '2016-10-20 04:44:58', '0000-00-00 00:00:00', '2016-10-20 04:41:09', '0000-00-00 00:00:00', 'test the year', 0, NULL, NULL, 2, 73),
(32, '琀獥⹴', '2016-10-26 22:35:00', '0000-00-00 00:00:00', '2016-10-20 04:51:45', '0000-00-00 00:00:00', 'I may have forgotten a period, let me know. Yeah you did. Well, you suck.', 1, NULL, NULL, 3, 75),
(33, '琀獥⁴潦⁲〱㈭ⴳ〲㘱†桓灯楰杮', '2016-10-24 02:25:20', '0000-00-00 00:00:00', '2016-10-24 01:04:25', '2016-10-24 02:25:21', '', 1, NULL, '1', 2, 75),
(34, '匠潨灰湩੧桔獩椠⁳⁡整瑳琠⁯敳⁥晩琠敨渠瑯⁥楷汬猠癡⹥', '2016-11-26 05:59:11', '0000-00-00 00:00:00', '2016-11-26 01:20:09', '0000-00-00 00:00:00', '䠀祥栠睯愠敲礠畯ਿ桔獩椠⁳⁡整瑳琠⁯桳睯琠敨渠瑯⁥獩爠橥捥整⹤', 1, NULL, NULL, 2, 75),
(36, '删慥⁤⁡潢歯', '2016-11-26 05:59:54', '0000-00-00 00:00:00', '2016-11-26 05:59:54', '0000-00-00 00:00:00', '效⁹潨⁷牡⁥潹㽵吊楨⁳獩愠琠獥⁴潴猠潨⁷桴⁥潮整椠⁳畳浢瑩整⹤', 1, NULL, NULL, 4, 75),
(37, ' 敒摡愠戠潯⁫慨慨慨慨慨慨', '2016-11-29 01:02:13', '0000-00-00 00:00:00', '2016-11-29 00:23:57', '0000-00-00 00:00:00', '', 1, NULL, NULL, 4, 75),
(38, '整瑳愠摳景獡摪汫橦獡㭤晫慪摳歬橦獡搻歬橦獡汤晫', '2016-11-29 00:51:54', '0000-00-00 00:00:00', '2016-11-29 00:32:44', '0000-00-00 00:00:00', '整瑳', 1, NULL, NULL, 3, 75),
(39, '删慥⁤⁡潢歯攠敶祲⁤慤屹', '2016-11-29 00:52:22', '0000-00-00 00:00:00', '2016-11-29 00:52:23', '0000-00-00 00:00:00', NULL, 0, NULL, NULL, 4, 75),
(40, 'dasdfasdfasdf', '2016-11-29 01:02:44', '0000-00-00 00:00:00', '2016-11-29 01:02:45', '0000-00-00 00:00:00', NULL, 0, NULL, NULL, 3, 75),
(41, ' Read a book: ', '2016-12-05 23:51:16', '0000-00-00 00:00:00', '2016-12-05 23:47:49', '2016-12-05 23:51:16', 'please check rupa\ncheck the spelling', 0, NULL, '1', 4, 75),
(42, ' Read a book this is a test', '2017-01-30 19:05:39', '0000-00-00 00:00:00', '2017-01-30 18:44:33', '0000-00-00 00:00:00', 'Please double check my spelling\n\nspelling is great but you forgot a date\n\ni added the date', 1, NULL, NULL, 4, 73);

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `ParticipantID` int(9) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Insurance` varchar(20) NOT NULL,
  `MedicaidNumber` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`ParticipantID`, `Firstname`, `Lastname`, `Insurance`, `MedicaidNumber`) VALUES
(1, 'Triston', 'Gregoire', 'Medicaid', '1234567890123'),
(2, 'Nancy', 'Smith', 'Medicaid', '8889994445578'),
(3, 'Ty', 'Skipper', 'Medicaid', '7777'),
(4, 'Steven', 'Alcorn', 'Medicaid', '1234567891012');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(4) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `PIN` int(4) NOT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Clearance` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Password`, `PIN`, `FirstName`, `LastName`, `Title`, `Clearance`) VALUES
(73, 'Admin', 'password', 0, 'John', 'Doe', 'Administrator', '0'),
(74, 'Reviewer', 'pass', 0, 'Triston', 'Gregoire', 'Reviewer', '1'),
(75, 'DCP', 'pass', 0, 'Lucy', 'Ricardio', 'DCP', '2'),
(77, 'Terminated', 'pass', 0, 'you''re ', 'fired', '', '4'),
(78, 'Auditor', 'pass', 0, 'David', 'Smith', 'Auditor', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`FormID`);

--
-- Indexes for table `goal`
--
ALTER TABLE `goal`
  ADD PRIMARY KEY (`GoalID`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`NoteID`),
  ADD KEY `ParticipantID` (`ParticipantID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`ParticipantID`),
  ADD UNIQUE KEY `medicaid` (`MedicaidNumber`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goal`
--
ALTER TABLE `goal`
  MODIFY `GoalID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `NoteID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `ParticipantID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
