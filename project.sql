-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 03:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(4, 2, 1, 'Egg Planter - 9 Inch', 12, 1, 'Egg Planter - 9 Inch.webp'),
(5, 2, 4, 'Expressions Planters', 15, 1, 'Expressions Planters.webp'),
(6, 2, 13, 'Broccoli', 2, 1, 'SeedPack-broccoli_469x469.webp');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(8, 2, 'Hy Sreanghour', 'asndjnas@skd.com', '012313', '213saddasdadasd');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(13, 2, 'Hy Sreanghour Sreanghour', '098347778', 'hymenghour2@gmail.com', 'credit card', 'flat no. st135,ccv,Pnhom Penh,Cambodia adasd Pnhom Penh asdad Cambodia - 101110', ', Expressions Planters ( 1 )', 15, '20-Feb-2024', 'pending'),
(14, 4, 'Hy Sreanghour Sreanghour', '098347778', 'hymenghour2@gmail.com', 'cash on delivery', 'flat no. st135,ccv,Pnhom Penh,Cambodia 123 Pnhom Penh pp Cambodia - 101110', ', Stone Footed Planter  ( 1 )', 21, '20-Feb-2024', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(1, 'Egg Planter - 9 Inch', 'meat', 'aadsd', 12, 'Egg Planter - 9 Inch.webp'),
(2, 'Eyes Pot - 7 Inch', 'meat', 'qweqwe', 23, 'Eyes Pot - 7 Inch.webp'),
(3, 'Expressions Planters 2', 'meat', 'dadasd', 12, 'Expressions Planters 2.webp'),
(4, 'Expressions Planters', 'meat', 'weqwe', 15, 'Expressions Planters.webp'),
(5, 'Stone Footed Planter ', 'meat', 'adasd', 21, 'Stone Footed Planter - 6.5 Inch.webp'),
(6, 'Disco Ball Hanging Planters', 'meat', 'qweqwe', 45, 'Disco Ball Hanging Planters.webp'),
(7, 'Hoya &#39;Crassipetiolata&#39;', 'vegitables', 'adasd', 12, '4_HOYA_CRASSIPETIOLATA_469x469.webp'),
(8, 'Delosperma echinatumt', 'vegitables', 'dasda', 15, '2_SUCCULENT_PICKLE.PLANT_469x469.webp'),
(9, 'Ctenanthe burle-marxii ', 'vegitables', 'asdasda', 24, '4_CTENANTHE_AMAGRIS_469x469.webp'),
(10, 'Philodendron &#39;Gloriosum&#39;', 'vegitables', 'asdasdasd', 30, '77c57d20-6d26-471b-8846-9ebe6eeabe9f_470x626.webp'),
(11, 'Maranta Variegated &#39; Kim&#39;', 'vegitables', 'asdasdasd', 25, '39a1baed-1be6-4fa0-9eb1-794e8df43d11_473x631.webp'),
(12, 'Syngonium &#39;Albo Variegata&#39;', 'vegitables', 'adasdasd', 30, 'e062f3f8-4965-46e8-bdf3-78628572cb51_470x626.webp'),
(13, 'Broccoli', 'seeds', 'asdasda', 2, 'SeedPack-broccoli_469x469.webp'),
(14, 'Papper', 'seeds', 'asdasd', 2, 'SeedPack-greenpepper_469x469.webp'),
(15, 'Okra', 'seeds', 'adsasd', 3, 'SeedPack-okra_469x469.webp'),
(16, 'Eggplant', 'seeds', 'asdasd', 2, 'SeedPack-eggplant_469x469.webp'),
(17, 'Lettuce', 'seeds', 'asdasd', 2, 'SeedPack-lettucemix_469x469.webp'),
(18, 'Fatsia &#39;Spider&#39;s Web&#39;', 'new arrivals', 'asdasdad', 35, '6_FATSIA_SPIDERS.WEB_1_469x469.webp'),
(19, 'Begonia &#39;Rex&#39; - 4 Pack Variety', 'new arrivals', 'asdasdad', 50, '4181a27f-7779-4013-a692-664bb3d24a51_469x469.webp'),
(20, 'Begonia &#39;Maculata&#39;', 'new arrivals', 'asdasd', 50, 'image_png97273166_469x469.webp'),
(21, 'Pilea &#39;Aluminum&#39;', 'new arrivals', 'asdasda', 43, 'image_png1110496854_469x469.webp'),
(22, 'Spider Plant &#39;Reverse&#39;', 'new arrivals', 'asdasd', 12, 'image_png309158502_469x469.webp'),
(23, 'Maranta &#39;Red Prayer&#39;', 'new arrivals', 'asdasd', 35, 'image_png253282168_469x469.webp'),
(24, 'Rutabaga ', 'seeds', 'adasdas', 2, 'SeedPack-rutabaga_469x469.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(2, 'Hy Sreanghour', 'hymenghour2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user', '75594637_971699873197635_6923209886394220544_n.jpg'),
(3, 'Hy menghour', 'hy.sreanghour@student.cadt.edu.kh', '202cb962ac59075b964b07152d234b70', 'admin', '75594637_971699873197635_6923209886394220544_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(52, 2, 2, 'Eyes Pot - 7 Inch', 23, 'Eyes Pot - 7 Inch.webp'),
(53, 2, 3, 'Expressions Planters 2', 12, 'Expressions Planters 2.webp'),
(54, 2, 5, 'Stone Footed Planter ', 21, 'Stone Footed Planter - 6.5 Inch.webp'),
(55, 2, 8, 'Delosperma echinatumt', 15, '2_SUCCULENT_PICKLE.PLANT_469x469.webp'),
(56, 2, 9, 'Ctenanthe burle-marxii ', 24, '4_CTENANTHE_AMAGRIS_469x469.webp'),
(57, 4, 6, 'Disco Ball Hanging Planters', 45, 'Disco Ball Hanging Planters.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
