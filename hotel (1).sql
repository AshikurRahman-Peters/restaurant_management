-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 11:48 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`) VALUES
(1, 'Noodles', 1),
(2, 'Chicken', 1),
(3, 'Salad', 1),
(4, 'Wings', 1),
(5, 'Appertizer', 1),
(6, 'Soup', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'The Kingsbury Hotel', '', '13', 'NO : 71/2 , Colombo 7 , Sri Lanka', '0112892939', 'Sri Lanka', '<p>Bejeweled as one of the finest five-star Colombo hotels located in-between Galle Face Green, the World Trade Centre and the Dutch Hospital Precinct, we welcome you to&nbsp;<b>The Kingsbury Hotel&nbsp;</b>,&nbsp;<small></small><small></small>Colombo. With easy access for shopping, entertainment and your business needs, we will ensure your stay is perfect and your experiences are complete.</p><p></p>', 'LKR');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:32:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createStore\";i:9;s:11:\"updateStore\";i:10;s:9:\"viewStore\";i:11;s:11:\"deleteStore\";i:12;s:11:\"createTable\";i:13;s:11:\"updateTable\";i:14;s:9:\"viewTable\";i:15;s:11:\"deleteTable\";i:16;s:14:\"createCategory\";i:17;s:14:\"updateCategory\";i:18;s:12:\"viewCategory\";i:19;s:14:\"deleteCategory\";i:20;s:13:\"createProduct\";i:21;s:13:\"updateProduct\";i:22;s:11:\"viewProduct\";i:23;s:13:\"deleteProduct\";i:24;s:11:\"createOrder\";i:25;s:11:\"updateOrder\";i:26;s:9:\"viewOrder\";i:27;s:11:\"deleteOrder\";i:28;s:10:\"viewReport\";i:29;s:13:\"updateCompany\";i:30;s:11:\"viewProfile\";i:31;s:13:\"updateSetting\";}'),
(4, 'Members', 'a:9:{i:0;s:9:\"viewStore\";i:1;s:11:\"deleteStore\";i:2;s:9:\"viewTable\";i:3;s:11:\"deleteTable\";i:4;s:12:\"viewCategory\";i:5;s:11:\"viewProduct\";i:6;s:11:\"createOrder\";i:7;s:11:\"updateOrder\";i:8;s:9:\"viewOrder\";}'),
(5, 'Staff', 'a:6:{i:0;s:9:\"viewTable\";i:1;s:11:\"viewProduct\";i:2;s:11:\"createOrder\";i:3;s:11:\"updateOrder\";i:4;s:9:\"viewOrder\";i:5;s:11:\"viewProfile\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge_amount` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge_amount`, `vat_charge_rate`, `vat_charge_amount`, `discount`, `net_amount`, `user_id`, `table_id`, `paid_status`, `store_id`) VALUES
(1, 'BILPR-6E97', '1526048911', '750.00', '', '0', '13', '97.50', '', '847.50', 1, 1, 1, 0),
(2, 'BILPR-88AA', '1526048940', '1500.00', '', '0', '13', '195.00', '', '1695.00', 1, 2, 1, 0),
(3, 'BILPR-6D5C', '1526276609', '500.00', '', '0', '13', '65.00', '', '565.00', 1, 1, 2, 0),
(4, 'BILPR-9539', '1526382027', '1000.00', '', '0', '13', '130.00', '', '1130.00', 1, 2, 2, 0),
(5, 'BILPR-8DF8', '1526393913', '1000.00', '', '0', '13', '130.00', '', '1130.00', 1, 3, 2, 0),
(6, 'BILPR-F7BE', '1526393994', '200.00', '', '0', '13', '26.00', '', '226.00', 1, 4, 2, 0),
(7, 'BILPR-0FEC', '1526394540', '1000.00', '', '0', '13', '130.00', '', '1130.00', 1, 0, 2, 0),
(8, 'BILPR-EAD5', '1526394555', '500.00', '', '0', '13', '65.00', '', '565.00', 1, 0, 2, 0),
(9, 'BILPR-395A', '1526394651', '500.00', '', '0', '13', '65.00', '', '565.00', 6, 0, 1, 2),
(10, 'BILPR-D4BA', '1526394720', '400.00', '', '0', '13', '52.00', '', '452.00', 6, 0, 2, 2),
(11, 'BILPR-D515', '1526468540', '500.00', '', '0', '13', '65.00', '', '565.00', 1, 0, 1, 0),
(12, 'BILPR-3887', '1526478151', '1000.00', '', '0', '13', '130.00', '', '1130.00', 1, 0, 2, 0),
(13, 'BILPR-4F3F', '1526478222', '1000.00', '', '0', '13', '130.00', '', '1130.00', 6, 0, 1, 2),
(14, 'BILPR-88CF', '1526490610', '1000.00', '', '0', '13', '130.00', '', '1130.00', 1, 0, 2, 0),
(15, 'BILPR-1CFB', '1526495729', '500.00', '', '0', '13', '65.00', '', '565.00', 1, 0, 2, 0),
(16, 'BILPR-D86B', '1670048225', '500.00', '', '0', '13', '65.00', '', '565.00', 1, 0, 2, 0),
(17, 'BILPR-B07B', '1670049875', '400.00', '', '0', '13', '52.00', '', '452.00', 1, 0, 2, 0),
(18, 'BILPR-9624', '1670050213', '400.00', '', '0', '13', '52.00', '100', '352.00', 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(2, 1, 1, '1', '750.00', '750.00'),
(5, 2, 1, '1', '750.00', '750.00'),
(6, 2, 1, '1', '750.00', '750.00'),
(7, 3, 5, '1', '500.00', '500.00'),
(8, 4, 7, '1', '1000.00', '1000.00'),
(9, 5, 8, '1', '1000.00', '1000.00'),
(10, 6, 3, '1', '200.00', '200.00'),
(11, 7, 8, '1', '1000.00', '1000.00'),
(12, 8, 5, '1', '500.00', '500.00'),
(16, 10, 4, '1', '400.00', '400.00'),
(18, 9, 5, '1', '500.00', '500.00'),
(19, 12, 8, '1', '1000.00', '1000.00'),
(21, 13, 8, '1', '1000.00', '1000.00'),
(22, 14, 8, '1', '1000.00', '1000.00'),
(23, 15, 9, '1', '500.00', '500.00'),
(24, 16, 9, '1', '500.00', '500.00'),
(25, 17, 4, '1', '400.00', '400.00'),
(26, 11, 9, '1', '500.00', '500.00'),
(28, 18, 4, '1', '400.00', '400.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` text NOT NULL,
  `store_id` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `store_id`, `name`, `price`, `description`, `image`, `active`) VALUES
(1, '[\"1\"]', '[\"2\"]', 'Japanese Noodles', '750.00', '<p></p><p><b>Japanese Noodles</b> <b></b>dolor sit amet, consectetur adipiscing elit. Curabitur eget maximus orci, at ornare urna. Pellentesque fermentum viverra est, non varius leo aliquam non. Morbi semper tellus ut purus consequat accumsan. Nullam sed faucibus erat. Donec dapibus tortor non odio sollicitudin rutrum. Etiam consectetur volutpat viverra. Pellentesque eget ligula odio. Maecenas interdum, odio id dignissim varius, ligula lorem auctor neque, nec sollicitudin diam erat eget velit. Donec at diam dignissim, cursus diam bibendum, mollis magna.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In at pretium nibh, eget tempor lacus. Morbi imperdiet, quam eu luctus dictum, massa arcu iaculis justo, vel blandit sem massa eu est. Pellentesque nec volutpat elit, sit amet varius mauris. Praesent volutpat semper rhoncus. Ut ac lectus pretium, interdum tellus eu, ultricies purus. Cras in tempor dui. Curabitur tempor tristique risus. Fusce id ipsum sapien. Donec ac auctor lacus, vitae posuere nibh. Nullam dictum dolor in magna ultricies, ut tempor libero eleifend. Fusce non tincidunt turpis. Aenean a nibh scelerisque, semper sem a, bibendum quam. Vestibulum tincidunt, lacus sit amet molestie ultricies, magna urna lobortis mauris, at pharetra arcu nulla eu leo.</p><br><p></p>', 'assets/images/product_image/5af5a4ad216fe.jpg', 1),
(3, '[\"6\"]', '[\"5\"]', 'ginger spice chicken soup', '200.00', '<p><b>ginger spice chicken soup</b> is awesome.<br></p>', 'assets/images/product_image/5af91b75c8488.jpg', 1),
(4, '[\"2\"]', '[\"2\"]', 'grilld chicken', '400.00', '<p></p><p><b>grilld chicken is fatta.</b><b></b><br></p>', 'assets/images/product_image/5afc7d2c4a776.jpg', 1),
(5, '[\"3\"]', '[\"2\"]', 'friut salad', '500.00', '', 'assets/images/product_image/5af91c5759a5d.jpg', 1),
(9, '[\"4\"]', '[\"4\"]', 'chicken Wings', '500.00', '<p><b>this is awesome.</b></p>', 'assets/images/product_image/5afc799e649a9.jpg', 1),
(10, '[\"5\"]', '[\"2\"]', 'sweet appetiser', '350.00', '<p><b>this is awesome     </b></p>', 'assets/images/product_image/5afc79e2a6e30.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(1, 'Store 1', 1),
(2, 'Store 2', 1),
(3, 'Store 3', 2),
(4, 'Store 4', 1),
(5, 'Store 5', 1),
(6, 'Store 6', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_name`, `capacity`, `available`, `active`, `store_id`) VALUES
(4, 'TB-1', '1', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`, `store_id`) VALUES
(1, 'admin', '$2a$12$yjDDWhgY4C3jaEyU/r2qEevIyfoPztLqWBjLit0dsEHY50R2kM5fO', 'admin@admin.com', 'john', 'doe', '80789998', 1, 0),
(6, 'alpha', '$2y$10$8dJUEbrr5N7l9WBunFQRn.9Em2WVx.JbhFtB5Cp6mXmX1BX5fPfku', 'alpha@alpha.com', 'alpha', 'Samarasinghe ', '0112457889', 1, 2),
(7, 'bravo', '$2y$10$iCJ4IjjQ3noi0K/R1fs3YuzFHbSlh0zhfuyQdTzj6O8rlWOeDG572', 'bravo@bravo.com', 'bravo', 'rajapaksha', '45896523568', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 5),
(8, 7, 4),
(9, 8, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
