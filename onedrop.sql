-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 10:02 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onedrop`
--

-- --------------------------------------------------------

--
-- Table structure for table `money_donation`
--

CREATE TABLE `money_donation` (
  `Donation_no` bigint(10) NOT NULL,
  `Full_name` text NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `City` text NOT NULL,
  `Telephone` varchar(10) NOT NULL,
  `Name_on_card` text NOT NULL,
  `Card_Number` varchar(20) NOT NULL,
  `Expiry_month` varchar(15) NOT NULL,
  `Expiry_year` year(4) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Amount` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `money_donation`
--

INSERT INTO `money_donation` (`Donation_no`, `Full_name`, `Email`, `Address`, `City`, `Telephone`, `Name_on_card`, `Card_Number`, `Expiry_month`, `Expiry_year`, `timestamp`, `Amount`) VALUES
(73, 'Vithursan Thevendran', 'thevendranvithursan@gmail.com', '24, 4/3, Initium Road, Dehiwela', 'Dehiwela', '0772251757', 'ssocmslm', '333444555666', '23', 2019, '2021-06-29 07:58:48', '$40000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `prefix` varchar(10) DEFAULT NULL,
  `Full_name` text NOT NULL,
  `Last_name` varchar(500) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `t_address` varchar(500) NOT NULL,
  `District` text NOT NULL,
  `Telephone` varchar(10) NOT NULL,
  `Telephone_2` varchar(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `NIC` varchar(12) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `Blood_group` varchar(10) DEFAULT NULL,
  `is_donor` varchar(10) DEFAULT NULL,
  `is_doctor` varchar(10) NOT NULL,
  `psw1` varchar(50) NOT NULL,
  `psw2` varchar(50) NOT NULL,
  `Dateofbirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `prefix`, `Full_name`, `Last_name`, `Email`, `Address`, `t_address`, `District`, `Telephone`, `Telephone_2`, `time`, `NIC`, `gender`, `Blood_group`, `is_donor`, `is_doctor`, `psw1`, `psw2`, `Dateofbirth`) VALUES
(56, 'Mr', 'Vithursan', 'Thevendran', 'thevendranvithursan@gmail.com', '24, 4/3, Initium Road, Dehiwela', 'jnlknl', 'Colombo', '0772251757', '0772251757', '2021-06-29 08:01:07', '990700109V', 'male', 'A+', 'Donor', '', 'Inthumathi10*', 'Inthumathi10*', '1999-03-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `money_donation`
--
ALTER TABLE `money_donation`
  ADD PRIMARY KEY (`Donation_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `money_donation`
--
ALTER TABLE `money_donation`
  MODIFY `Donation_no` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
