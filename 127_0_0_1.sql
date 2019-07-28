-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2019 at 02:08 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hallup2019`
--
CREATE DATABASE IF NOT EXISTS `hallup2019` DEFAULT CHARACTER SET hebrew COLLATE hebrew_general_ci;
USE `hallup2019`;

-- --------------------------------------------------------

--
-- Table structure for table `eventmeals`
--

CREATE TABLE `eventmeals` (
  `EventID` int(11) NOT NULL,
  `MealID` int(11) NOT NULL,
  `CatID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hebrew;

--
-- Dumping data for table `eventmeals`
--

INSERT INTO `eventmeals` (`EventID`, `MealID`, `CatID`) VALUES
(10, 1, 1),
(10, 7, 1),
(10, 8, 1),
(10, 2, 2),
(10, 5, 2),
(2, 1, 1),
(2, 20, 1),
(2, 7, 1),
(2, 2, 2),
(2, 5, 2),
(2, 6, 2),
(6, 12, 1),
(6, 21, 1),
(6, 22, 1),
(6, 13, 2),
(6, 23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `EventID` int(11) NOT NULL,
  `HallID` int(11) DEFAULT NULL,
  `Husband` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Wife` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Phone` char(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Password` char(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Photo` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`EventID`, `HallID`, `Husband`, `Wife`, `Date`, `Phone`, `Password`, `Photo`) VALUES
(1, 2, '2', '2', '0000-00-00 00:00:00', '2', NULL, NULL),
(2, 1, 'יוסי', 'שמחה', '2019-06-07 13:35:00', '1', '1', '1'),
(6, 1, 'רפי', 'מזל', '2019-04-18 14:55:00', '0542222222', '123', NULL),
(7, 1, 'בדיקה', 'בדיקה', '2019-04-17 09:50:00', '0542223324', NULL, NULL),
(8, 1, 'עומרי', 'מישהי', '2019-04-10 10:50:00', '0542566454', '1234', NULL),
(9, 0, '', '', '0000-00-00 00:00:00', '', NULL, NULL),
(10, 1, 'יונתן', 'לא ידוע', '2019-04-16 14:55:00', '05478373', '1234', NULL),
(11, 1, 'test', 'test', '2019-07-18 14:25:00', '0546548', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `EventID` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `NumberOfArrivals` int(11) NOT NULL,
  `IsApproved` int(11) NOT NULL,
  `TableName` varchar(50) NOT NULL,
  `FirstMeal` int(11) NOT NULL,
  `LastMeal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hebrew;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id`, `EventID`, `FullName`, `Phone`, `NumberOfArrivals`, `IsApproved`, `TableName`, `FirstMeal`, `LastMeal`) VALUES
(15, 8, 'סאמר אלעטאונה', '054222315', 5, 1, '', 0, 0),
(16, 8, 'שדג', '123', 2, 0, '', 0, 0),
(17, 10, 'סאמר', '123213', 30, 1, '', 0, 0),
(19, 2, 'יוסי', '05423123', 10, 1, 'r', 0, 0),
(20, 2, 'רפי', '05423123', 4, 0, 'r', 0, 0),
(21, 2, 'פשה', '05438327', 12, 1, 'A', 0, 0),
(22, 2, 'מחמוד', '05438327', 150, 1, 'r', 0, 0),
(23, 2, 'רפי', '054222222', 10, 1, 'r', 0, 0),
(24, 0, '', '', 0, 0, '', 0, 0),
(25, 0, '', '', 0, 0, '', 0, 0),
(26, 0, '', '', 0, 0, '', 0, 0),
(27, 0, '', '', 0, 0, '', 0, 0),
(32, 2, 'undefined', '', 0, 0, '', 0, 0),
(33, 2, 'undefined', '', 0, 0, '', 0, 0),
(34, 2, 'undefined', '', 0, 0, '', 0, 0),
(35, 2, 'undefined', '', 0, 0, '', 0, 0),
(36, 2, 'samer', '', 0, 0, '', 0, 0),
(37, 2, 'samer', '', 0, 0, '', 0, 0),
(38, 2, 'samer', '12345', 1, 1, '', 0, 0),
(39, 2, 'samer', '12345', 1, 1, '', 0, 0),
(40, 2, 'www', 'sss', 0, 0, '', 0, 0),
(41, 2, 'www', 'sss', 0, 0, '', 0, 0),
(42, 2, 'ww', 'ww', 0, 0, '', 0, 0),
(43, 2, 'ww', 'ww', 0, 0, '', 0, 0),
(44, 2, 'ww', 'ww', 0, 0, '', 0, 0),
(45, 2, 'ww', 'ww', 0, 0, '', 0, 0),
(46, 2, 'omri', '123', 2, 1, '', 0, 0),
(47, 2, 'omri', '123', 2, 1, 'r', 0, 0),
(48, 2, 'zzzz', '1234', 1, 1, '', 0, 0),
(49, 2, 'zzzz', '1234', 1, 1, '', 0, 0),
(50, 2, 'xxx', '144', 1, 0, '', 0, 0),
(51, 2, 'xxx', '144', 1, 0, '', 0, 0),
(52, 2, 'mmm', '564', 1, 1, '', 0, 0),
(53, 2, 'mmm', '564', 1, 1, '', 0, 0),
(54, 2, 'qqq', '12354', 1, 1, '', 0, 0),
(55, 2, 'qqq', '12354', 1, 1, '', 0, 0),
(56, 2, 'bbb', '44', 1, 1, '', 0, 0),
(57, 2, 'bbb', '44', 1, 1, '', 0, 0),
(58, 2, 'kkk', '123', 2, 1, '', 0, 0),
(59, 2, 'kkk', '123', 2, 1, '', 0, 0),
(60, 2, 'kkk', '123', 2, 1, '', 0, 0),
(61, 2, 'kkk', '123', 2, 1, '', 0, 0),
(62, 2, 'kkk', '123', 2, 1, '', 0, 0),
(63, 2, 'kkk', '123', 2, 1, '', 0, 0),
(64, 2, 'kkk', '123', 2, 1, '', 0, 0),
(65, 2, 'kkk', '123', 2, 1, '', 0, 0),
(66, 2, 'kkk', '123', 2, 1, '', 0, 0),
(67, 2, 'kkk', '123', 2, 1, '', 0, 0),
(68, 2, 'undefined', 'undefined', 0, 1, '', 0, 0),
(69, 2, 'undefined', 'undefined', 0, 1, '', 0, 0),
(70, 2, 'nnn', '999', 2, 1, 'Z', 0, 0),
(71, 2, 'nnn', '999', 2, 1, 'Z', 0, 0),
(72, 2, 'jjj', '877', 2, 1, 'b', 0, 0),
(73, 2, 'jjj', '877', 2, 1, '', 0, 0),
(74, 2, 'rrr', '54', 2, 1, '', 0, 0),
(75, 2, 'rrr', '54', 2, 1, '', 0, 0),
(76, 2, 'undefined', 'undefined', 0, 0, '', 0, 0),
(77, 2, 'undefined', 'undefined', 0, 0, '', 0, 0),
(78, 6, 'סאמר', '0542521418', 2, 1, '', 0, 0),
(79, 6, 'רמי לוי', '054333', 2, 1, 'משפחת לוי', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `HallID` int(11) NOT NULL,
  `Name` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Address` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Logo` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Phone` char(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `UserName` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Password` char(20) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`HallID`, `Name`, `Address`, `Logo`, `Phone`, `UserName`, `Password`) VALUES
(0, 'Yoga', 'bs', NULL, '05421212121', 'www', '123'),
(1, 'Oasis', 'Beersheva', NULL, '0542521418', 'samer', '123456'),
(2, 'Yoga', 'bs', NULL, '05421212121', 'www', '123');

-- --------------------------------------------------------

--
-- Table structure for table `mealcategories`
--

CREATE TABLE `mealcategories` (
  `CategoryID` int(11) NOT NULL,
  `EventID` int(11) DEFAULT NULL,
  `Name` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Pic` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mealcategories`
--

INSERT INTO `mealcategories` (`CategoryID`, `EventID`, `Name`, `Pic`) VALUES
(1, NULL, 'מנה ראשונה', NULL),
(2, NULL, 'מנה עיקרית', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `MealID` int(11) NOT NULL,
  `CatID` int(11) DEFAULT NULL,
  `EventId` int(11) NOT NULL,
  `Name` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Pic` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`MealID`, `CatID`, `EventId`, `Name`, `Pic`) VALUES
(1, 1, 2, 'חומוס', '4.jpg'),
(2, 2, 2, 'סטייק', '5.jpg'),
(5, 2, 2, 'בשר', 'eskit2.PNG'),
(6, 2, 2, 'ברווז', 'FriedRise2.PNG'),
(7, 1, 2, 'סלט', '5.jpg'),
(8, 1, 8, 'כבש', NULL),
(9, 1, 8, 'ראש', NULL),
(10, 2, 8, 'אורז', NULL),
(11, 2, 8, 'מסטיק', NULL),
(12, 1, 6, 'ארנב', NULL),
(13, 2, 6, 'עוף', NULL),
(18, 1, 10, 'דג', NULL),
(19, 2, 10, 'טופו', NULL),
(20, 1, 2, 'מרק', 'rice-png-rice-png-601.png'),
(21, 1, 6, 'אורז', 'rice-png-rice-png-601.png'),
(23, 2, 6, 'סטייק', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `EventID` int(11) DEFAULT NULL,
  `Phone` char(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Category` int(11) DEFAULT NULL,
  `Meal` int(11) DEFAULT NULL,
  `TableID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `PaymentID` int(11) NOT NULL,
  `Total` char(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Phone` char(20) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `selectedmeals`
--

CREATE TABLE `selectedmeals` (
  `GuestID` int(11) NOT NULL,
  `EventId` int(11) NOT NULL,
  `GuestSeq` int(11) NOT NULL,
  `FirstMeal` int(11) NOT NULL,
  `LastMeal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hebrew;

--
-- Dumping data for table `selectedmeals`
--

INSERT INTO `selectedmeals` (`GuestID`, `EventId`, `GuestSeq`, `FirstMeal`, `LastMeal`) VALUES
(19, 2, 1, 1, 5),
(19, 2, 2, 7, 2),
(19, 2, 3, 20, 5),
(19, 2, 4, 20, 5),
(19, 2, 6, 20, 5),
(19, 2, 7, 20, 5),
(20, 2, 1, 20, 5),
(20, 2, 2, 1, 5),
(20, 2, 3, 20, 2),
(20, 2, 4, 1, 5),
(23, 2, 1, 20, 2),
(23, 2, 2, 20, 5),
(23, 2, 3, 7, 5),
(23, 2, 4, 1, 2),
(23, 2, 5, 1, 5),
(23, 2, 6, 0, 0),
(23, 2, 7, 1, 5),
(23, 2, 8, 20, 2),
(23, 2, 9, 0, 0),
(23, 2, 10, 0, 0),
(78, 6, 1, 12, 23),
(78, 6, 2, 21, 23);

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `SmsID` int(11) NOT NULL,
  `Phone` char(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `TableID` int(11) NOT NULL,
  `EventID` int(11) DEFAULT NULL,
  `Name` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Chairs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`TableID`, `EventID`, `Name`, `Chairs`) VALUES
(4, 2, 'b', 2),
(13, 7, 'A', 3),
(14, 2, 'Z', 10),
(15, 2, 'A', 8),
(16, 2, 'M', 9),
(17, 2, 'משפחת כהן', 8),
(20, 6, 'משפחת לוי', 10),
(21, 6, 'משפחת רמי', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `FK_Events_Halls` (`HallID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`HallID`);

--
-- Indexes for table `mealcategories`
--
ALTER TABLE `mealcategories`
  ADD PRIMARY KEY (`CategoryID`),
  ADD KEY `FK_MealCategories_Events` (`EventID`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`MealID`),
  ADD KEY `FK_Meals_MealCategories` (`CatID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `FK_Orders_Guests` (`Phone`),
  ADD KEY `FK_Orders_Tables` (`TableID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `FK_Payments_Guests` (`Phone`);

--
-- Indexes for table `selectedmeals`
--
ALTER TABLE `selectedmeals`
  ADD PRIMARY KEY (`GuestID`,`GuestSeq`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`SmsID`),
  ADD KEY `FK_SMS_Guests` (`Phone`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`TableID`),
  ADD KEY `FK_Tables_Events` (`EventID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `EventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `MealID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `TableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `FK_Events_Halls` FOREIGN KEY (`HallID`) REFERENCES `halls` (`HallID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mealcategories`
--
ALTER TABLE `mealcategories`
  ADD CONSTRAINT `FK_MealCategories_Events` FOREIGN KEY (`EventID`) REFERENCES `events` (`EventID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `FK_Meals_MealCategories` FOREIGN KEY (`CatID`) REFERENCES `mealcategories` (`CategoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_Orders_Guests` FOREIGN KEY (`Phone`) REFERENCES `guests` (`Phone`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Orders_Tables` FOREIGN KEY (`TableID`) REFERENCES `tables` (`TableID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `FK_Payments_Guests` FOREIGN KEY (`Phone`) REFERENCES `guests` (`Phone`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sms`
--
ALTER TABLE `sms`
  ADD CONSTRAINT `FK_SMS_Guests` FOREIGN KEY (`Phone`) REFERENCES `guests` (`Phone`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `FK_Tables_Events` FOREIGN KEY (`EventID`) REFERENCES `events` (`EventID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `hourscharge`
--
CREATE DATABASE IF NOT EXISTS `hourscharge` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `hourscharge`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Emp_Number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Emp_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Emp_Number`, `Emp_Name`) VALUES
('11660045', 'Samer Alataona'),
('3254547', 'Roi Orad');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `Emp_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Project_Name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Project_ID` int(11) NOT NULL,
  `Task_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Task_Number` int(11) NOT NULL,
  `Task_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Hours` float NOT NULL,
  `Comments` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`Emp_Name`, `Project_Name`, `Project_ID`, `Task_Name`, `Task_Number`, `Task_ID`, `Date`, `Hours`, `Comments`) VALUES
('1', '1', 1, '1', 1, 1, '2019-01-11', 1, '1'),
('11660045', '12345', 12345, '', 1, 0, '0000-00-00', 2, ''),
('11660045', '12345', 12345, '333', 1, 333, '2019-01-09', 22, 'sdqwe qwe qw e'),
('11660045', '12345', 12345, '333', 1, 333, '2019-01-16', 23, 'qwwwww'),
('11660045', '12345', 12345, '333', 1, 333, '2019-01-23', 5, 'dqwd awd aw d'),
('11660045', '12345', 12345, '333', 1, 333, '2019-01-23', 5, 'dqwd awd aw d'),
('11660045', '12345', 12345, '333', 1, 333, '2019-01-23', 5, 'dqwd awd aw d'),
('11660045', '12345', 12345, '333', 1, 333, '2019-01-23', 5, 'dqwd awd aw d'),
('11660045', '12345', 12345, '333', 1, 333, '2019-01-23', 5, 'dqwd awd aw d'),
('11660045', '12345', 12345, '333', 1, 333, '2019-01-23', 5, 'dqwd awd aw d'),
('11660045', '12345', 12345, '333', 1, 333, '2019-01-23', 5, 'dqwd awd aw d'),
('11660045', '12345', 12345, '333', 1, 333, '2019-01-23', 5, 'dqwd awd aw da'),
('11660045', '12345', 12345, '333', 1, 333, '2019-01-23', 5, 'dqwd awd aw da'),
('Samer Alataona', 'Intel Unite Installation', 0, 'Monitor installing', 1, 0, '2019-01-11', 3, 'asd asd qwqw'),
('Roi Orad', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 0, '2019-01-14', 1, 'wqyi wu ewiquq'),
('Roi Orad', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 0, '2019-01-14', 1, 'wqyi wu ewiquq'),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-03', 7, 'asd asd a dzxc'),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-02', 123, 'as asdf klahsdkjf haskjdfh kalsj dhfasd f'),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-02', 123, 'as asdf klahsdkjf haskjdfh kalsj dhfasd f'),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-02', 123, 'as asdf klahsdkjf haskjdfh kalsj dhfasd f'),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-02', 123, 'as asdf klahsdkjf haskjdfh kalsj dhfasd f'),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-09', 34, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-02', 22, 'Test'),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-15', 1, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-21', 5, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-15', 1, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-10', 1, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-10', 1, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-10', 1, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-25', 2, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-25', 2, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-25', 2, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-25', 2, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-16', 43, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-16', 43, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-10', 22, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-14', 3, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-14', 3, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-14', 22, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-15', 22, ''),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-26', 22, ''),
('Samer Alataona', 'Upgrading OS', 343434, 'Doing Somethikng', 1, 888, '2019-01-13', 10, 'Did something'),
('Samer Alataona', 'Intel Unite Installation', 12345, 'Monitor installing', 1, 333, '2019-01-09', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `Project_ID` int(11) NOT NULL,
  `Project_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`Project_ID`, `Project_Name`) VALUES
(12345, 'Intel Unite Installation'),
(56789, 'Software Deployment'),
(343434, 'Upgrading OS'),
(676765, 'Office Move');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `Task_ID` int(11) NOT NULL,
  `Task_Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Project_ID` int(11) NOT NULL,
  `Estimate_Hours` int(11) NOT NULL,
  `Task_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`Task_ID`, `Task_Name`, `Project_ID`, `Estimate_Hours`, `Task_Number`) VALUES
(333, 'Monitor installing', 12345, 100, 333),
(555, 'Doing Somethikng', 343434, 200, 888);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'hggt', '{\"quick_or_custom\":\"quick\",\"what\":\"codegen\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'HallUpDatabase', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"eventmeals\",\"events\",\"guest\",\"halls\",\"mealcategories\",\"meals\",\"orders\",\"payments\",\"selectedmeals\",\"sms\",\"tables\"],\"table_structure[]\":[\"eventmeals\",\"events\",\"guest\",\"halls\",\"mealcategories\",\"meals\",\"orders\",\"payments\",\"selectedmeals\",\"sms\",\"tables\"],\"table_data[]\":[\"eventmeals\",\"events\",\"guest\",\"halls\",\"mealcategories\",\"meals\",\"orders\",\"payments\",\"selectedmeals\",\"sms\",\"tables\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"hallup2019\",\"table\":\"events\"},{\"db\":\"hallup2019\",\"table\":\"halls\"},{\"db\":\"hallup2019\",\"table\":\"tables\"},{\"db\":\"hallup2019\",\"table\":\"guest\"},{\"db\":\"hallup2019\",\"table\":\"meals\"},{\"db\":\"hallup2019\",\"table\":\"selectedmeals\"},{\"db\":\"hallup2019\",\"table\":\"orders\"},{\"db\":\"hallup2019\",\"table\":\"mealcategories\"},{\"db\":\"hallup2019\",\"table\":\"eventmeals\"},{\"db\":\"hallup2019\",\"table\":\"payments\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'hallup2019', 'guest', '{\"CREATE_TIME\":\"2019-06-24 11:51:34\",\"col_order\":[0,1,2,4,3,5,6,7,8],\"col_visib\":[1,1,1,1,1,1,1,1,1]}', '2019-07-01 08:55:58'),
('root', 'hallup2019', 'guests', '[]', '2019-04-15 08:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-07-08 09:02:16', '{\"Console\\/Mode\":\"collapse\",\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
