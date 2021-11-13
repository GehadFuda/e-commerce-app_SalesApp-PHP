-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2021 at 10:03 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_no` int(11) NOT NULL,
  `bill_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mobile` varchar(15) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_no`, `bill_date`, `mobile`, `total`) VALUES
(2, '2020-06-17 20:27:05', '01068009844', 0),
(3, '2020-06-17 22:31:39', '01068009844', 0),
(4, '2020-06-19 09:25:03', '01068009844', 0),
(5, '2020-07-02 09:26:28', '01068009844', 0),
(6, '2020-07-02 10:03:29', '01068009844', 29.27);

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `bill_no` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`bill_no`, `item_id`, `quantity`) VALUES
(2, 2, 8),
(2, 10, 9),
(3, 8, 8),
(3, 2, 5),
(4, 3, 2),
(4, 11, 2),
(5, 1, 6),
(6, 9, 5),
(6, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `category` varchar(20) NOT NULL,
  `photo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `category`, `photo`) VALUES
(1, 'Margrita Pizza', 3.75, 'Pizza', 'Margrita2_big.jpg'),
(2, 'Chicken Alfredo Pizza', 5.99, 'Pizza', 'chicken_Alfredo_big.jpg'),
(3, 'Pepperoni Lovers Pizza', 4.74, 'Pizza', 'Pepperoni Lovers2_big.jpg'),
(4, 'Plain Nutella Pizza', 3.44, 'Pizza', 'Plain Nutella2_big.jpg'),
(5, 'Philly Steak Sandwich', 2.54, 'Sandwich', 'Philly Steak Sandwich2_big.jpg'),
(6, 'Chicken Sandwich', 2.37, 'Sandwich', 'Chicken Sandwich2_big.jpg'),
(7, 'Hotdog Sandwich', 2.15, 'Sandwich', 'Hotdog Sandwich2_big.jpg'),
(8, 'Turkey Sandwich', 2.37, 'Sandwich', 'Turkey Sandwich2_big.jpg'),
(9, 'Caesar Salad', 3.01, 'Salad', 'Caesar Salad2_big.jpg'),
(10, 'Greek Salad', 2.37, 'Salad', 'Greek Salad2_big.jpg'),
(11, 'Arabic Salad', 1.94, 'Salad', 'Arabic Salad2_big.jpg'),
(12, 'Tuna Salad', 2.59, 'Salad', 'Tuna Salad2_big.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `temporary_order`
--

CREATE TABLE `temporary_order` (
  `mobile` varchar(15) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `mobile` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `access_token` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`mobile`, `password`, `name`, `address`, `access_token`) VALUES
('0788030600', '123456', 'Dhoyazan', 'aden', ''),
('0781234567', '123456', 'Mariam', 'aden', ''),
('01068009844', '123456', 'Gehad', 'Egypt', 'de561abbee1f7ee30598cf30a17f7926d11fb84824191c0d6e511376256cf0e800c3d7cc07a8e7308cf4df9a1c600866955c74c71c9d5650d9405bb8ff0839c0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
