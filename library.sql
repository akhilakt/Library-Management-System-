-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2025 at 02:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Akhila K T', 'admin@gmail.com', 'admin', 'admin@123', '2025-04-11 17:12:42'),
(2, 'Chandana Shree S V', 'admin123@gmail.com', 'Chandana', 'chandana@123', '2025-04-11 17:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2025-03-31 21:23:03', '2025-04-07 06:18:43'),
(2, 'Chetan Bhagatt', '2025-03-31 21:23:03', '2025-04-07 06:18:50'),
(3, 'Anita Desai', '2025-03-31 21:23:03', '2025-04-07 06:18:50'),
(4, 'HC Verma', '2025-03-31 21:23:03', '2025-04-07 06:18:50'),
(5, 'R.D. Sharma ', '2025-03-31 21:23:03', '2025-04-07 06:18:50'),
(9, 'fwdfrwer', '2025-03-31 21:23:03', '2025-04-07 06:18:50'),
(10, 'Dr. Andy Williams', '2025-03-31 21:23:03', '2025-04-07 06:18:50'),
(11, 'Kyle Hill', '2025-03-31 21:23:03', '2025-04-07 06:18:50'),
(12, 'Robert T. Kiyosak', '2025-03-31 21:23:03', '2025-04-07 06:18:50'),
(13, 'Kelly Barnhill', '2025-03-31 21:23:03', '2025-04-07 06:18:50'),
(14, 'Herbert Schildt', '2025-03-31 21:23:03', '2025-04-07 06:18:50'),
(16, ' Tiffany Timbers', '2025-01-07 06:55:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `bookQty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`, `bookQty`) VALUES
(1, 'PHP And MySql programming', 5, 1, '222333', 20.00, '1efecc0ca822e40b7b673c0d79ae943f.jpg', 0, '2025-04-02 01:23:03', '2025-04-11 07:08:11', 10),
(3, 'physics', 6, 4, '1111', 15.00, 'dd8267b57e0e4feee5911cb1e1a03a79.jpg', NULL, '2025-04-02 01:23:03', '2025-04-11 11:11:01', 10),
(5, 'Murach\'s MySQL', 5, 1, '9350237695', 455.00, '5939d64655b4d2ae443830d73abc35b6.jpg', NULL, '2025-04-02 01:23:03', '2025-04-03 11:11:01', 20),
(6, 'WordPress for Beginners 2022: A Visual Step-by-Step Guide to Mastering WordPress', 5, 10, 'B019MO3WCM', 100.00, '144ab706ba1cb9f6c23fd6ae9c0502b3.jpg', NULL, '2025-04-02 01:23:03', '2025-04-11 11:05:35', 15),
(7, 'WordPress Mastery Guide:', 5, 11, 'B09NKWH7NP', 53.00, '90083a56014186e88ffca10286172e64.jpg', NULL, '2025-04-02 01:23:03', '2025-04-11 11:05:39', 14),
(8, 'Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not', 8, 12, 'B07C7M8SX9', 120.00, '52411b2bd2a6b2e0df3eb10943a5b640.jpg', NULL, '2025-04-02 01:23:03', '2025-04-11 11:05:41', 5),
(9, 'The Girl Who Drank the Moon', 8, 13, '1848126476', 200.00, 'f05cd198ac9335245e1fdffa793207a7.jpg', NULL, '2025-04-02 01:23:03', '2025-04-11 11:05:45', 1),
(10, 'C++: The Complete Reference, 4th Edition', 5, 14, '007053246X', 142.00, '36af5de9012bf8c804e499dc3c3b33a5.jpg', NULL, '2025-04-02 01:23:03', '2025-04-11 11:11:01', 2),
(11, 'ASP.NET Core 5 for Beginners', 9, 11, 'GBSJ36344563', 422.00, 'b1b6788016bbfab12cfd2722604badc9.jpg', NULL, '2025-04-02 01:23:03', '2025-04-11 11:11:01', 5),
(12, 'Python Packages', 9, 16, '0367687771', 3034.00, 'ba719639def504c64ebac89cdd0d0a85.jpg', NULL, '2025-04-07 06:56:50', NULL, 25),
(13, 'physics', 6, 1, '3456', 100.00, '6d6550c75f9b265e7ccf42aca715ebcb.jpg', NULL, '2025-04-15 12:25:28', NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(5, 'Technology', 1, '2025-04-01 07:23:03', '2025-04-07 06:19:21'),
(6, 'Science', 1, '2025-04-01 07:23:03', '2025-04-07 06:19:21'),
(7, 'Management', 1, '2025-04-01 07:23:03', '2025-04-07 06:19:21'),
(8, 'General', 1, '2025-04-01 07:23:03', '2025-04-07 06:19:21'),
(9, 'Programming', 1, '2025-04-01 07:23:03', '2025-04-07 06:19:21'),
(10, 'social', 1, '2025-04-15 12:22:40', '2025-04-15 12:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `remark` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`, `remark`) VALUES
(1, 1, 'SID002', '2025-04-11 11:12:40', '2025-04-14 06:00:56', 1, 0, 'NA'),
(2, 7, 'SID010', '2025-04-11 05:55:25', NULL, NULL, NULL, 'NA'),
(3, 1, 'SID010', '2025-04-10 05:55:39', NULL, NULL, NULL, 'NA'),
(5, 1, 'SID002', '2025-04-10 06:02:14', '2025-04-11 06:03:36', 1, 0, 'ds'),
(6, 1, 'SID002', '2025-04-15 12:27:33', '2025-04-15 12:27:54', 1, 10, 'xyz'),
(7, 1, 'SID005', '2025-04-15 12:51:12', '2025-04-15 12:51:37', 1, 10, 'issued');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'Akhila K T', 'akhilakt2003@gmail.com', '9743524789', 'c769d3c6031b7943b46bf198a29057d2', 1, '2025-04-03 07:23:03', '2025-04-11 18:36:28'),
(4, 'SID005', 'Chandana Shree S V', 'csfsd@dfsfks.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 1, '2024-01-03 07:23:03', '2025-04-11 18:38:21'),
(8, 'SID009', 'Akhila S', 'test@gmail.com', '2359874527', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-01-03 07:23:03', '2025-04-11 18:37:42'),
(9, 'SID010', 'Chandana R', 'amit@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-01-03 07:23:03', '2025-04-11 18:37:54'),
(10, 'SID011', 'Sarita Pandey', 'sarita@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-01-03 07:23:03', '2025-01-07 06:20:36'),
(11, 'SID012', 'ChandanaShree', 'john@test.com', '1234569870', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-01-03 07:23:03', '2025-04-11 18:38:10'),
(12, 'SID014', 'Akhila K T', 'akhilakt@gmail.com', '9743524789', 'c769d3c6031b7943b46bf198a29057d2', 1, '2025-04-11 18:28:12', '2025-04-11 18:30:01'),
(13, 'SID015', 'Chandana', 'chan@gmail.com', '9865790609', '202cb962ac59075b964b07152d234b70', 1, '2025-04-15 12:29:57', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
