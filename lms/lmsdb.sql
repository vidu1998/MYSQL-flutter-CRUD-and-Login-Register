-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2022 at 08:43 AM
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
-- Database: `lmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usermanagement`
--

CREATE TABLE `usermanagement` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usermanagement`
--

INSERT INTO `usermanagement` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, '0', '0', '123', '0'),
(2, 'vidu', 'vidu@gmail.com', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `userstudent`
--

CREATE TABLE `userstudent` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userstudent`
--

INSERT INTO `userstudent` (`id`, `name`, `email`, `password`, `course`) VALUES
(1, 'vv', 'vv', '123', 0),
(2, '', 'CV', '', 0),
(3, 'kamal', 'student1@lms.com', '1234', 0),
(4, 'kumar', 'ff', '123', 0),
(5, 'ht', 'kuma@gmail.com', '123', 0),
(6, 't5', 'user1', '', 0),
(9, 'Gam', '', 'Gam@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usertutor`
--

CREATE TABLE `usertutor` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertutor`
--

INSERT INTO `usertutor` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, '', '', '', ''),
(2, 'teacher', 'teacher1', '123', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usermanagement`
--
ALTER TABLE `usermanagement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userstudent`
--
ALTER TABLE `userstudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertutor`
--
ALTER TABLE `usertutor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usermanagement`
--
ALTER TABLE `usermanagement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userstudent`
--
ALTER TABLE `userstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usertutor`
--
ALTER TABLE `usertutor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
