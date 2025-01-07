-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 02:48 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_6`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio_db`
--

CREATE TABLE `audio_db` (
  `audio_id` int(11) NOT NULL,
  `audio_name` varchar(255) NOT NULL,
  `audio_author` varchar(255) NOT NULL,
  `audio_loc` text,
  `audio_cat` varchar(100) NOT NULL,
  `audio_image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `audio_db`
--

INSERT INTO `audio_db` (`audio_id`, `audio_name`, `audio_author`, `audio_loc`, `audio_cat`, `audio_image`) VALUES
(1, 'A Case of Identity', 'Sir Arthur Conan Doyle', 'A Case of Identity.mp3', 'sh', 'A Case of Identity.png'),
(2, 'Achin Pakhi', 'Sharadindu Bandyopadhyay', 'Achin Pakhi - Byomkesh.mp3', 'byomkesh', 'Achin Pakhi.png'),
(3, 'Ashchorjontu', 'Satyajit Roy', 'Ashchorjontu.mp3', 'shanku', 'Ashchorjontu.png'),
(4, 'Badsahi Angti', 'Satyajit Ray', 'Badsahi Angti - Feluda - Satyajit Ray.mp3', 'feluda', 'Badsahi Angti.png'),
(5, 'Brindaboney Bibhishon', 'Prokhor Rudra', 'Brindaboney Bibhishon - Prokhor Rudra.mp3', 'other', 'Brindaboney Bibhishon.png'),
(6, 'Bhog', 'Aveek Sarkar', 'Bhog - Aveek Sarkar.mp3', 'horror', 'Bhog - Aveek Sarkar.png'),
(7, 'Ayna', 'Nityananda Khan', 'Ayna - Nityananda Khan.mp3', 'other', 'Ayna - Nityananda Khan.png'),
(8, 'Agniban', 'Sharadindu Bandopadhyay', 'Agniban - Byomkesh.mp3', 'byomkesh', 'Agniban.png');

-- --------------------------------------------------------

--
-- Table structure for table `comment_db`
--

CREATE TABLE `comment_db` (
  `comment_id` int(11) NOT NULL,
  `comment_name` varchar(255) NOT NULL,
  `comment` text,
  `comment_ocup` varchar(255) DEFAULT NULL,
  `comment_icon` text,
  `audio_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment_db`
--

INSERT INTO `comment_db` (`comment_id`, `comment_name`, `comment`, `comment_ocup`, `comment_icon`, `audio_id`, `time`) VALUES
(6, 'subhadip313', 'I am fixing the database again. I just edited the comment. I deleted the comment as well. \nThen I resubmitted the comment. it is working as expected.', 'Software Engineer', 'icon14.png', NULL, '2025-01-07 17:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `save_db`
--

CREATE TABLE `save_db` (
  `save_id` int(11) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `audio_id` int(11) DEFAULT NULL,
  `save_time` time DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `save_db`
--

INSERT INTO `save_db` (`save_id`, `user_email`, `user_name`, `audio_id`, `save_time`, `count`, `timestamp`) VALUES
(3, 'subhadipdutta180@gmail.com', 'subhadip313', 1, '00:00:00', 1, '2025-01-07 19:03:54'),
(4, 'subhadipdutta180@gmail.com', 'subhadip313', 1, '00:10:27', 2, '2025-01-07 19:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_activity`
--

CREATE TABLE `user_activity` (
  `activity_id` int(100) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `User_Name` varchar(150) NOT NULL,
  `User_Email` varchar(150) NOT NULL,
  `Audio_ID` int(11) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_activity`
--

INSERT INTO `user_activity` (`activity_id`, `User_ID`, `User_Name`, `User_Email`, `Audio_ID`, `time`) VALUES
(1, 5, 'subhadip313', 'subhadipdutta180@gmail.com', 4, '2025-01-07 18:30:09'),
(2, 5, 'subhadip313', 'subhadipdutta180@gmail.com', 2, '2025-01-07 18:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `User_ID` int(11) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `User_Email` varchar(255) NOT NULL,
  `User_Password` varchar(255) NOT NULL,
  `User_image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`User_ID`, `User_Name`, `User_Email`, `User_Password`, `User_image`) VALUES
(1, 'user1', 'user1@example.com', 'password123', 'path/to/user1.jpg'),
(2, 'user2', 'user2@example.com', 'password456', 'path/to/user2.jpg'),
(3, 'user3', 'user3@example.com', 'password789', 'path/to/user3.jpg'),
(5, 'subhadip313', 'subhadipdutta180@gmail.com', '$2y$10$CsUTWHVSINN5cz9P4bNWJ.rHSNCyM8ksgDmCuB6JQFKBJ3Ve6Uphq', 'icon14.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio_db`
--
ALTER TABLE `audio_db`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `comment_db`
--
ALTER TABLE `comment_db`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `audio_id` (`audio_id`);

--
-- Indexes for table `save_db`
--
ALTER TABLE `save_db`
  ADD PRIMARY KEY (`save_id`),
  ADD KEY `audio_id` (`audio_id`);

--
-- Indexes for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `audio_id` (`Audio_ID`),
  ADD KEY `user_id` (`User_ID`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `user_email` (`User_Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio_db`
--
ALTER TABLE `audio_db`
  MODIFY `audio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment_db`
--
ALTER TABLE `comment_db`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `save_db`
--
ALTER TABLE `save_db`
  MODIFY `save_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `activity_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_db`
--
ALTER TABLE `comment_db`
  ADD CONSTRAINT `comment_db_ibfk_1` FOREIGN KEY (`audio_id`) REFERENCES `audio_db` (`audio_id`);

--
-- Constraints for table `save_db`
--
ALTER TABLE `save_db`
  ADD CONSTRAINT `save_db_ibfk_1` FOREIGN KEY (`audio_id`) REFERENCES `audio_db` (`audio_id`);

--
-- Constraints for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD CONSTRAINT `user_activity_ibfk_1` FOREIGN KEY (`audio_id`) REFERENCES `audio_db` (`audio_id`),
  ADD CONSTRAINT `user_activity_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_register` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
