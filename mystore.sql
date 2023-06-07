-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 03:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart`
--

CREATE TABLE `add_to_cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_to_cart`
--

INSERT INTO `add_to_cart` (`cart_id`, `product_id`, `user_id`, `product_quantity`) VALUES
(24, 2, 7, 4),
(25, 3, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Adidas'),
(2, 'McDonalds'),
(3, 'Zigatto'),
(4, 'Jeans');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'fruits'),
(2, 'Vegetables'),
(3, 'Dairy Products'),
(4, 'Shoes'),
(5, 'Clothes');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `pendOrders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(100) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `total_quantity` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `product_category`, `product_brand`, `product_image`, `price`, `total_quantity`) VALUES
(1, 'Fresh Mango', 'Mangoes are always sweet and tasty', 'Summer season fruits', 1, 0, 'fresh Mango.jpg', 200.98, 20),
(2, 'Choclates', 'Choclates are made from milk', 'dairy stuff', 3, 2, 'choclates.jpg', 67.98, 9),
(3, 'Shoes', 'Lady Sandals styles are different', 'foot wearings', 4, 3, 'lady-shoe.jpg', 2000.98, 7),
(4, 'Women Clothes', 'Half Sleeve Kurta', 'Women Wearings', 5, 1, 'p1.jpg', 4200, 8),
(5, 'Women Clothes', 'Half Sleeves Kurta', 'Summer season clothes', 5, 1, 'p2.jpg', 3000, 8),
(6, 'Vegetables', 'Vegetables are good for health and weight loss', 'Vegeterian', 2, 3, 'vegetables.jpg', 500.9, 20),
(7, 'Apples', 'Apples are sweet and good for staying healthy', 'summer season fruits', 1, 3, 'apple.jpg', 90.34, 14);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory_mgm`
--

CREATE TABLE `product_inventory_mgm` (
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty_available` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchased_qty` int(11) NOT NULL,
  `transaction_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_inventory_mgm`
--

INSERT INTO `product_inventory_mgm` (`transaction_id`, `product_id`, `product_qty_available`, `user_id`, `purchased_qty`, `transaction_date`) VALUES
(3, 2, 9, 7, 6, '2023-06-07'),
(4, 7, 14, 7, 5, '2023-06-07'),
(6, 1, 18, 7, 2, '2023-06-07'),
(7, 2, 5, 7, 4, '2023-06-07'),
(8, 3, 5, 7, 2, '2023-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `user_id` int(11) NOT NULL,
  `user_Name` varchar(100) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_MobileNo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`user_id`, `user_Name`, `user_email`, `user_password`, `user_address`, `user_MobileNo`) VALUES
(3, 'OMER Khalid', 'omermahmood960@gmail.com', '$2y$10$GCjwlyaUwoplkBByk36PT.UHHuSan9h6FqUDi5sTYR9Kn6Aba0Ii.', ' 91A GOR5 FAISAL TOWN LAHORE', ' 0336-4669551'),
(5, 'Simona Saeed', 'simonasaeed@rltsquare.com', '$2y$10$wXZY149YOwIBAHgHmMcpX.y86TNJDnenYLAUQ85MIhBXBvKJPev2m', ' 231-K2 Johar Town', ' 0336-4669551'),
(7, 'Khanam', 'khanam@gmail.com', '$2y$10$DVpA81in94WFu17R/X5hDudbb2myRnt6rGIsJAl/wb0EUcTWa.XkC', ' DHA Phase VI', ' 0333-4266987');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_ordered_quantity` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `total_price` float NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `product_id`, `product_ordered_quantity`, `product_price`, `total_price`, `order_status`, `user_id`, `order_date`) VALUES
(1, 7, 4, 90.34, 361.36, 'Complete', 7, '2023-06-06'),
(2, 1, 2, 200.98, 401.96, 'Complete', 7, '2023-06-06'),
(3, 2, 6, 67.98, 407.88, 'Complete', 7, '2023-06-07'),
(4, 6, 5, 500.9, 2504.5, 'pending', 7, '2023-06-07'),
(5, 7, 5, 90.34, 451.7, 'Complete', 7, '2023-06-07'),
(6, 5, 3, 3000, 9000, 'Complete', 7, '2023-06-07'),
(7, 1, 2, 200.98, 401.96, 'Complete', 7, '2023-06-07'),
(8, 2, 4, 67.98, 271.92, 'pending', 7, '2023-06-07'),
(9, 3, 2, 2000.98, 4001.96, 'pending', 7, '2023-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `amount`, `payment_mode`, `user_id`) VALUES
(2, 1, 361.36, '', 7),
(4, 2, 401.96, '', 7),
(5, 3, 407.88, 'Cash On delivery', 7),
(6, 5, 451.7, 'Cash On delivery', 7),
(7, 6, 9000, 'EasyPaisa', 7),
(8, 7, 401.96, 'Cash On delivery', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`pendOrders_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_inventory_mgm`
--
ALTER TABLE `product_inventory_mgm`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `pendOrders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_inventory_mgm`
--
ALTER TABLE `product_inventory_mgm`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
