-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 30, 2019 at 08:15 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `plan` varchar(50) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `date_of_joining` date NOT NULL,
  `fees` int(10) NOT NULL,
  `receipt_number` int(10) NOT NULL,
  `receipt_date` date NOT NULL,
  `amount_to_pay` int(10) NOT NULL,
  `amount_paid` int(10) NOT NULL,
  `discount` int(10) NOT NULL,
  `amount_due` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_name`, `name`, `plan`, `duration`, `date_of_joining`, `fees`, `receipt_number`, `receipt_date`, `amount_to_pay`, `amount_paid`, `discount`, `amount_due`) VALUES
(1, 'ABH20190605', 'Abhishek', 'MMA', '30', '2019-06-05', 3500, 1001, '2019-06-05', 3500, 3000, 500, 0),
(2, 'ABH20190605', 'Abhishek', 'MMA', '30', '2019-06-05', 3500, 1002, '2019-07-10', 3500, 2500, 500, 500),
(3, 'LOV20190410', 'loveleen', 'Gym', '90', '2019-04-10', 3500, 1006, '2019-04-10', 10440, 10300, 140, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `message` varchar(100) NOT NULL,
  `discipline` varchar(50) NOT NULL,
  `query_time` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `discipline`, `query_time`, `status`) VALUES
(1, 'Abhishek', 'abluthra@gmail.com', '9898989898', 'need to know about combo plans', 'Both Gym and MMA', '2019-07-26', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `defaulter`
--

CREATE TABLE `defaulter` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `date_of_joining` date NOT NULL,
  `fees` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `defaulter`
--

INSERT INTO `defaulter` (`id`, `name`, `user_name`, `date_of_joining`, `fees`, `due_amount`, `due_date`) VALUES
(1, 'Abhishek', 'ABH20190605', '2019-06-05', 3500, 4000, '2019-08-04'),
(2, 'loveleen', 'LOV20190710', '2019-07-10', 2500, 2490, '2019-07-10'),
(3, 'loveleen', 'LOV20190410', '2019-04-10', 3500, 3500, '2019-07-09'),
(4, 'kimi', 'KIM19900113', '2019-06-04', 2200, 2200, '2019-06-04'),
(5, 'pink', 'PIN20040519', '2019-07-07', 1200, 1200, '2019-07-07'),
(6, 'Kimi', 'KIM4', '2019-07-02', 3500, 3500, '2019-07-02'),
(7, 'loveleen', 'LOV0709', '2019-07-09', 980, 980, '2019-07-09'),
(8, 'r singh', 'RSI0716', '2019-07-19', 2200, 6600, '2019-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `birth_date` date NOT NULL,
  `date_of_joining` date NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `plan` varchar(30) NOT NULL,
  `duration` int(10) NOT NULL,
  `fees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `user_name`, `mobile`, `birth_date`, `date_of_joining`, `email_id`, `plan`, `duration`, `fees`) VALUES
(1, 'Abhishek', 'ABH20190605', '8787878787', '0000-00-00', '2019-06-05', 'abluthra@gmail.com', 'MMA', 30, 3500),
(2, 'loveleen', 'LOV20190710', '9898989898', '0000-00-00', '2019-07-10', 'monu_loveleen@yahoo.com', 'MMA', 30, 2500),
(3, 'loveleen', 'LOV20190410', '8787878787', '0000-00-00', '2019-04-10', 'monu_loveleen@yahoo.com', 'Gym', 90, 3500),
(4, 'kimi', 'KIM19900113', '9898989878', '1990-01-13', '2019-06-04', 'a@u.d', 'Both Gym and MMA', 30, 2200),
(5, 'pink', 'PIN20040519', '9876545678', '2004-05-19', '2019-07-07', 'a@i.d', 'Gym', 30, 1200),
(6, 'Kimi', 'KIM4', '8797657896', '1994-07-12', '2019-07-02', 'visky@new.com', 'Gym', 30, 3500),
(7, 'loveleen', 'LOV0709', '9654090992', '2019-07-09', '2019-07-09', 'monu_loveleen@yahoo.com', 'Gym', 30, 980),
(8, 'r singh', 'RSI0716', '9654090992', '2019-07-16', '2019-07-19', 'monu_loveleen@yahoo.com', 'Both Gym and MMA', 90, 2200);

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(11) NOT NULL,
  `timeslot` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `timeslot`) VALUES
(1, 'Select Time Slot'),
(2, '6 AM to 7 AM'),
(3, '7 AM to 8 AM'),
(4, '8 AM to 9 AM'),
(5, '9 AM to 10 AM'),
(6, '10 AM to 11 AM'),
(7, '11 AM to 12 PM'),
(8, '12 PM to 1 PM'),
(9, '1 PM to 2 PM'),
(10, '2 PM to 3 PM'),
(11, '3 PM to 4 PM'),
(12, '4 PM to 5 PM'),
(13, '5 PM to 6 PM'),
(14, '6 PM to 7 PM'),
(15, '7 PM to 8 PM'),
(16, '8 PM to 9 PM'),
(17, '9 PM to 10 PM');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'loveleen', 'potter'),
(2, 'abhi', 'aasra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `defaulter`
--
ALTER TABLE `defaulter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `defaulter`
--
ALTER TABLE `defaulter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
