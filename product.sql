-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 01, 2019 at 02:34 PM
-- Server version: 5.7.20
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL DEFAULT '300',
  `avilability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL DEFAULT 'Samsung',
  `image` varchar(255) NOT NULL DEFAULT '../template/images/home/product1.jpg',
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recomended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `avilability`, `brand`, `image`, `description`, `is_new`, `is_recomended`, `status`) VALUES
(1, 'Мобильный телефон Honor 10 4/128GB Blue', 1, 1, 300, 1, 'Samsung', '../template/images/home/product1.jpg', '', 0, 0, 1),
(2, 'Мобильный телефон Samsung Galaxy M20', 1, 2, 300, 10, 'Samsung', '../template/images/home/product1.jpg', '', 0, 0, 1),
(3, 'Мобильный телефон Samsung Galaxy M10', 2, 3, 300, 10, 'Samsung', '../template/images/home/product1.jpg', '', 0, 0, 1),
(4, 'Samsung Exynos 9825', 2, 4, 300, 10, 'Samsung', '../template/images/home/product1.jpg', '', 0, 0, 1),
(5, 'Мобильный телефон Huawei P smart+ Black', 3, 5, 300, 10, 'Samsung', '../template/images/home/product1.jpg', '', 0, 0, 1),
(6, 'Мобильный телефон Xiaomi Redmi 7 2/16GB Eclipse Black', 3, 6, 300, 10, 'Samsung', '../template/images/home/product1.jpg', '', 0, 0, 1),
(7, 'Мобильный телефон Xiaomi Redmi Note 5 4/64GB Black (Global Rom + OTA)', 4, 7, 300, 10, 'Samsung', '../template/images/home/product1.jpg', '', 0, 0, 1),
(8, 'Мобильный телефон Vivo Y17 4/128GB Mineral Blue', 4, 8, 300, 1, 'Samsung', '../template/images/home/product1.jpg', '', 0, 0, 1),
(9, 'Мобильный телефон Vivo Y1 4/128GB Mineral Blue', 5, 9, 300, 10, 'Samsung', '../template/images/home/product1.jpg', '', 0, 0, 1),
(10, 'Vivo Y17 4/128GB Mineral Blue', 5, 10, 300, 2, 'Samsung', '../template/images/home/product1.jpg', '', 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
