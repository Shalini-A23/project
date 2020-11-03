-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2020 at 09:23 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodi`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(10) NOT NULL,
  `token_no` int(10) NOT NULL,
  `table_no` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `item_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `token_no`, `table_no`, `date`, `item_id`, `quantity`, `price`, `status`) VALUES
(1, 1, '1tb-01', '2020-10-31', 34, 8, 640, 'delivered'),
(2, 1, '1tb-01', '2020-10-31', 33, 1, 60, 'delivered'),
(3, 1, '1tb-01', '2020-10-31', 11, 4, 320, 'delivered'),
(5, 2, '1tb-01', '2020-10-31', 34, 1, 80, 'canceled'),
(6, 2, '1tb-01', '2020-10-31', 3, 1, 80, 'canceled'),
(7, 3, '1tb-01', '2020-10-31', 5, 1, 50, 'cancel'),
(8, 3, '1tb-01', '2020-10-31', 14, 4, 160, 'cancel'),
(10, 3, '1tb-01', '2020-10-31', 34, 5, 400, 'cancel'),
(11, 4, '1tb-01', '2020-10-31', 3, 1, 80, 'ordered'),
(13, 5, '1tb-01', '2020-10-31', 11, 2, 160, 'delivered'),
(14, 3, '1tb-01', '2020-11-02', 3, 3, 240, 'canceled'),
(15, 3, '1tb-01', '2020-11-02', 35, 5, 250, 'canceled'),
(16, 4, '1tb-01', '2020-11-02', 25, 1, 80, 'delivered');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_no` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_no`, `name`, `status`) VALUES
(1, 'snacks', 1),
(2, 'beverages', 1),
(3, 'dessert', 1),
(4, 'ice cream', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `customer_no` int(10) NOT NULL,
  `token_no` int(10) NOT NULL,
  `date` date NOT NULL,
  `table_no` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `total_amt` int(10) NOT NULL,
  `payment_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`customer_no`, `token_no`, `date`, `table_no`, `name`, `total_amt`, `payment_status`) VALUES
(1, 1, '2020-10-31', '1tb-01', 'Shalini', 1020, 'paid'),
(2, 2, '2020-10-31', '1tb-01', 'Shalini', 160, 'canceled'),
(3, 3, '2020-10-31', '1tb-01', 'Ashok', 610, 'paid'),
(4, 4, '2020-10-31', '1tb-01', 'asho', 80, 'canceled'),
(5, 5, '2020-10-31', '1tb-01', 'Shalini A', 160, 'paid'),
(6, 6, '2020-10-31', '1tb-01', 'Shalini A', 0, ''),
(7, 1, '2020-11-02', '1tb-01', 'Shalini A', 0, ''),
(8, 2, '2020-11-02', '1tb-01', 'Shalini A', 0, ''),
(9, 3, '2020-11-02', '1tb-01', 'Shalini A', 490, 'canceled'),
(10, 4, '2020-11-02', '1tb-01', 'Shalini A', 80, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_no` int(10) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(30) NOT NULL,
  `issues` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_no`, `date`, `name`, `issues`) VALUES
(1, '2020-11-02', 'Shalini', 'Everything is fine');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(10) NOT NULL,
  `category_no` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `cost` int(3) NOT NULL,
  `quantity` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `category_no`, `item_name`, `image`, `cost`, `quantity`) VALUES
(2, 1, 'samosa', 'food1.jpg', 40, 1),
(3, 1, 'butter loaded pav bajii', 'food2.jfif', 80, 1),
(4, 1, 'shawarma', 'food3.jpg', 120, 1),
(5, 1, 'burger', 'food4.jpg', 50, 1),
(6, 1, 'pizza', 'food5.jfif', 90, 1),
(7, 1, 'french fries', 'food6.jpg', 50, 1),
(8, 1, 'sandwich', 'food7.jfif', 20, 1),
(9, 1, 'pani puri', 'food8.jpg', 50, 1),
(10, 1, 'bhel puri', 'food9.jpg', 40, 1),
(11, 2, 'alphonso mango milkshake', 'drink1.jpg', 80, 1),
(12, 2, 'assam tea', 'drink2.png', 90, 1),
(13, 2, 'classic lemonade', 'drink3.png', 20, 1),
(14, 2, 'classic strawberry milkshake', 'drink4.jpg', 40, 1),
(15, 2, 'cappuccino', 'drink5.png', 80, 1),
(16, 2, 'cocoa cookie milkshake', 'drink6.jpg', 50, 1),
(17, 2, 'cold cocoa latte', 'drink7.png', 70, 1),
(18, 2, 'cool blue', 'drink8.png', 40, 1),
(19, 2, 'crunchy frappe', 'drink9.png', 60, 1),
(20, 2, 'green tea', 'drink10.png', 40, 1),
(21, 2, 'kesar delight milkshake', 'drink11.jpg', 50, 1),
(22, 2, 'khus coconut refreshner', 'drink12.png', 40, 1),
(23, 2, 'sugarcane refreshner', 'drink13.png', 20, 1),
(24, 3, 'ice cream cake', 'sweet1.jfif', 80, 1),
(25, 3, 'black forest', 'sweet2.jfif', 80, 1),
(26, 3, 'pan cake', 'sweet3.jpg', 110, 1),
(27, 3, 'chocolate mousse', 'sweet4.jpeg', 70, 1),
(28, 3, 'banana caramel cream dessert', 'sweet5.jpg', 50, 1),
(29, 3, 'strawberry pie cake', 'sweet6.jpg', 50, 1),
(30, 3, 'ice cup cake', 'sweet7.jfif', 40, 1),
(31, 3, 'gluab jamun', 'sweet8.jpg', 40, 1),
(32, 3, 'chocolate biscuit cake', 'sweet9.jfif', 20, 1),
(33, 4, 'classic ice cream', 'ice1.jpg', 60, 1),
(34, 4, 'butter scotch', 'ice2.jfif', 80, 1),
(35, 4, 'vanilla', 'ice3.jpg', 50, 1),
(36, 4, 'strawberry', 'ice4.jpg', 70, 1),
(37, 4, 'chocolate', 'ice5.jfif', 60, 1),
(38, 4, 'mint flavour', 'ice6.jfif', 80, 1),
(39, 4, 'oreo ice cream', 'ice7.jfif', 90, 1),
(40, 4, 'diary milk ice cream', 'ice8.jpg', 90, 1),
(41, 4, 'cone ice', 'ice9.jpg', 60, 1),
(42, 4, 'chocobar', 'ice10.jpg', 70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `table_no` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `mode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`table_no`, `code`, `status`, `mode`) VALUES
('1tb-01', '#e5e5e5', 'empty', 'user'),
('1tb-02', '#abcde', 'empty', 'user'),
('admin', '#admin', 'active', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `table_no` (`table_no`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_no`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`customer_no`),
  ADD KEY `table_no` (`table_no`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_no`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `category_no` (`category_no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`table_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `customer_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`table_no`) REFERENCES `login` (`table_no`);

--
-- Constraints for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD CONSTRAINT `customer_details_ibfk_1` FOREIGN KEY (`table_no`) REFERENCES `login` (`table_no`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`category_no`) REFERENCES `category` (`category_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
