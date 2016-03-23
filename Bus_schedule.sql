-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2016 at 03:55 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Bus_schedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `Academic_Schedule`
--

CREATE TABLE `Academic_Schedule` (
  `ID` int(11) NOT NULL,
  `Slot` varchar(10) NOT NULL,
  `Day` varchar(30) NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Academic_Schedule`
--

INSERT INTO `Academic_Schedule` (`ID`, `Slot`, `Day`, `Time`) VALUES
(1, 'A', 'Monday', '08:00:00'),
(3, 'B', 'Monday', '09:00:00'),
(7, 'F', 'Monday', '10:00:00'),
(8, 'D', 'Monday', '11:00:00'),
(9, 'L', 'Monday', '13:00:00'),
(10, 'A', 'Tuesday', '08:00:00'),
(11, 'B', 'Tuesday', '09:00:00'),
(12, 'E', 'Tuesday', '10:00:00'),
(13, 'D', 'Tuesday', '11:00:00'),
(14, 'A', 'Wednesday', '08:00:00'),
(16, 'C', 'Wednesday', '10:00:00'),
(17, 'D', 'Wednesday', '11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `BatchSlot`
--

CREATE TABLE `BatchSlot` (
  `ID` int(11) NOT NULL,
  `BatchName` varchar(100) NOT NULL,
  `Slots` varchar(10) NOT NULL,
  `NumStudent` int(11) NOT NULL,
  `getable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BatchSlot`
--

INSERT INTO `BatchSlot` (`ID`, `BatchName`, `Slots`, `NumStudent`, `getable`) VALUES
(1, 'CSE1', 'AB', 10, 1),
(2, 'EE1', 'BCDF', 10, 1),
(3, 'ME1', 'ACFL', 10, 1),
(4, 'CSE2', 'BCD', 40, 1),
(5, 'EE2', 'CDL', 10, 1),
(6, 'ME2', 'ABC', 10, 1),
(7, 'SS2', 'ABD', 10, 1),
(8, 'CSE3', 'ABFL', 40, 1),
(9, 'EE3', 'BCD', 50, 1),
(10, 'ME3', 'BCFL', 50, 1),
(11, 'SS3', 'ABC', 30, 1),
(12, 'CSE4', 'CDL', 40, 1),
(13, 'EE4', 'ACF', 40, 1),
(14, 'ME4', 'CD', 40, 1),
(15, 'SS4', 'AB', 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ExtraVehicle`
--

CREATE TABLE `ExtraVehicle` (
  `ID` int(11) NOT NULL,
  `dt` varchar(100) NOT NULL,
  `S_time` varchar(100) NOT NULL,
  `E_time` varchar(100) NOT NULL,
  `Nstudent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ExtraVehicle`
--

INSERT INTO `ExtraVehicle` (`ID`, `dt`, `S_time`, `E_time`, `Nstudent`) VALUES
(1, '11/02/2016', '09:00:00', '09:00:00', 78),
(2, '10/02/2016', '14:00:00', '09:00:00', 76),
(3, '17/02/2016', '08:00:00', '09:00:00', 30),
(4, '23/02/2016', '10:00:00', '12:00:00', 89),
(5, '26/02/2016', '08:00:00', '09:00:00', 78),
(6, '2016-02-03', '07:17:17', '13:38:35', 900),
(7, '2016-02-11', '06:00:00', '04:00:00', 200),
(8, '2016-02-10', '07:00:00', '09:00:00', 200),
(9, '0000-00-00', '08:00:00', '09:00:00', 200),
(10, '0000-00-00', '08:00:00', '09:00:00', 100),
(11, '2016-03-07', '07:19:19', '16:00:00', 200),
(12, '2016-03-23', '10:00:00', '17:00:00', 300),
(13, '2016-03-16', '07:00:00', '07:00:00', 100),
(14, '2016-03-30', '04:00:00', '10:00:00', 200);

-- --------------------------------------------------------

--
-- Table structure for table `Invoice`
--

CREATE TABLE `Invoice` (
  `ID` int(11) NOT NULL,
  `Day` varchar(100) NOT NULL,
  `VnumGtoI` int(11) NOT NULL,
  `VnumItoG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Invoice`
--

INSERT INTO `Invoice` (`ID`, `Day`, `VnumGtoI`, `VnumItoG`) VALUES
(1, 'Sunday', 8, 8),
(2, 'Monday', 20, 19),
(3, 'Tuesday', 20, 20),
(4, 'Wednesday', 20, 20),
(5, 'Thursday', 16, 16),
(6, 'Friday', 16, 16),
(7, 'Saturday', 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Login_details`
--

CREATE TABLE `Login_details` (
  `SrNo` int(11) NOT NULL,
  `ID` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Login_details`
--

INSERT INTO `Login_details` (`SrNo`, `ID`, `username`, `password`, `type`) VALUES
(0, 'ug201213005', 'divn2661@gmail.com', 'dibbi', 'student'),
(1, 'ug201213026', 'ug201213026@iitj.ac.in', 'soft', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `Notification`
--

CREATE TABLE `Notification` (
  `ID` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `Nstudent` int(11) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `requested_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Notification`
--

INSERT INTO `Notification` (`ID`, `Date`, `start_time`, `end_time`, `Nstudent`, `reason`, `requested_by`) VALUES
('e001', '2016-03-30', '07:00:00', '13:00:00', 100, 'class', 'Priyanka'),
('e002', '2016-03-29', '06:00:00', '09:00:00', 200, 'class', 'divya'),
('e003', '2016-03-30', '09:00:00', '13:00:00', 300, 'class', 'purvi'),
('e004', '2016-03-29', '03:00:00', '08:00:00', 200, 'class', 'shrestha');

-- --------------------------------------------------------

--
-- Table structure for table `notify_requester`
--

CREATE TABLE `notify_requester` (
  `ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `start_time` time NOT NULL,
  `requested_by` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notify_requester`
--

INSERT INTO `notify_requester` (`ID`, `Date`, `start_time`, `requested_by`, `status`) VALUES
(1, '2016-02-10', '07:00:00', 'Priyanka', ''),
(2, '0000-00-00', '08:00:00', 'divn2661@gmail.com', ''),
(3, '2016-03-30', '06:00:00', 'Priyanka', 'deny'),
(4, '2016-03-30', '04:00:00', 'Divya', 'approve');

-- --------------------------------------------------------

--
-- Table structure for table `SlotStudent`
--

CREATE TABLE `SlotStudent` (
  `ID` int(11) NOT NULL,
  `SlotName` varchar(10) NOT NULL,
  `Student` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SlotStudent`
--

INSERT INTO `SlotStudent` (`ID`, `SlotName`, `Student`) VALUES
(1, 'A', 100),
(2, 'B', 50),
(3, 'C', 90),
(4, 'D', 40),
(5, 'F', 40),
(6, 'G', 70);

-- --------------------------------------------------------

--
-- Table structure for table `Vehicle`
--

CREATE TABLE `Vehicle` (
  `ID` int(11) NOT NULL,
  `Vnum` int(11) NOT NULL,
  `Vcapacity` int(11) NOT NULL,
  `Vprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Vehicle`
--

INSERT INTO `Vehicle` (`ID`, `Vnum`, `Vcapacity`, `Vprice`) VALUES
(1, 6, 70, 700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Academic_Schedule`
--
ALTER TABLE `Academic_Schedule`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BatchSlot`
--
ALTER TABLE `BatchSlot`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ExtraVehicle`
--
ALTER TABLE `ExtraVehicle`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Invoice`
--
ALTER TABLE `Invoice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Login_details`
--
ALTER TABLE `Login_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Notification`
--
ALTER TABLE `Notification`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notify_requester`
--
ALTER TABLE `notify_requester`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SlotStudent`
--
ALTER TABLE `SlotStudent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Vehicle`
--
ALTER TABLE `Vehicle`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Academic_Schedule`
--
ALTER TABLE `Academic_Schedule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `BatchSlot`
--
ALTER TABLE `BatchSlot`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `ExtraVehicle`
--
ALTER TABLE `ExtraVehicle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Invoice`
--
ALTER TABLE `Invoice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `notify_requester`
--
ALTER TABLE `notify_requester`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `SlotStudent`
--
ALTER TABLE `SlotStudent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Vehicle`
--
ALTER TABLE `Vehicle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
