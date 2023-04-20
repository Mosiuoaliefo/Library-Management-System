-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 05:18 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `botho_university_lesotho`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
('0', 'li', 'dd', '000000'),
('1', 'joseph', 'lief', 'mosiua@#!'),
('12347', 'tefo', 'zzzz@', '12347'),
('1923', 'mabohlokoa', 'liefo', '343'),
('2', 'ss', 'ss', 'ss'),
('333', 'rrrrrrrrrrrrrrr', 'ssssssssss', '111111111');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_number` varchar(20) NOT NULL,
  `auther_name` varchar(20) NOT NULL,
  `rack_details` varchar(20) NOT NULL,
  `book_title` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lecturemessage`
--

CREATE TABLE `lecturemessage` (
  `ID` varchar(10) NOT NULL,
  `ADJ` varchar(30) NOT NULL,
  `DSA` varchar(30) NOT NULL,
  `ITP` varchar(30) NOT NULL,
  `OTHERS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturemessage`
--

INSERT INTO `lecturemessage` (`ID`, `ADJ`, `DSA`, `ITP`, `OTHERS`) VALUES
('1', '2010 ADAVANCED JAVA BOOK ', 'DATA STRUCTURES BOOK 2020', 'THIRD EDITION ITP BOOK ', 'LET ME HACK IT BOOK');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `fullname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `approvals` varchar(20) NOT NULL DEFAULT 'processing '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`fullname`, `email`, `username`, `password`, `approvals`) VALUES
('hhhhh', 'hhhhh', 'hhhhh', 'hhhhhh', 'processing '),
('ttt', 'uuuu', 'jjjj', '11111111', 'processing '),
('kopano', 'kopano@gmail.com', 'moeketsi', '111111', 'processing '),
('mosiuoa liefo', 'mosiliefo@gmail.com', 'mosiuoa', '111111', 'processing '),
('mosiuoa', 'mosiliefo@gmail.com', 'mosiuoa.liefo', '111111', 'processing '),
('neo', 'neo@gmail.com', 'neo', '111111', 'processing '),
('thabo', 'thabo@mial.com', 'thabo', '111111', 'processing '),
('thato', 'thao', 'thato', '111111', 'processing ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_number`);

--
-- Indexes for table `lecturemessage`
--
ALTER TABLE `lecturemessage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
