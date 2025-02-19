-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 03:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `body_types`
--

CREATE TABLE `body_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=shown,1=hide',
  `created_at` DATE DEFAULT (CURRENT_DATE)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `body_types`
--

INSERT INTO `body_types` (`id`, `name`, `slug`, `image`, `status`, `created_at`) VALUES
(1, 'Sedan', 'sedan', '', 0, '2024-01-01'),
(2, 'Hatchback', 'hatchback', '', 0, '2024-01-01'),
(3, 'SUV', 'suv', '', 0, '2024-01-01'),
(4, 'Compact SUV', 'compact-suv', '', 0, '2024-01-01'),
(5, 'Sport', 'sport', '', 0, '2024-01-01'),
(6, 'Luxury', 'lux', '', 0, '2024-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_no` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `total_price` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `payment_mode` varchar(191) NOT NULL COMMENT 'cash payment, upi,card',
  `payment_status` varchar(191) NOT NULL COMMENT 'completed, refunded, pending',
  `payment_id` varchar(191) DEFAULT NULL,
  `cancel_status` tinyint(1) NOT NULL DEFAULT 0,
  `cancel_reason` varchar(500) DEFAULT NULL COMMENT 'user cancelled, car not available',
  `booking_status` varchar(50) NOT NULL DEFAULT 'booked' COMMENT 'booked, live, completed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_no`, `user_id`, `car_id`, `start_date`, `end_date`, `total_price`, `booking_date`, `payment_mode`, `payment_status`, `payment_id`, `cancel_status`, `cancel_reason`, `booking_status`) VALUES
(1, 'CRarWblQ6219', 3, 3, '2024-01-18 13:00:00', '2024-01-19 13:00:00', 197, '2024-01-18', 'Paid By PayPal', 'completed', '90F88267LV5485249', 0, '', 'live');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=show,1=hide',
  `created_at` DATE NOT NULL DEFAULT (CURRENT_DATE)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `status`, `created_at`) VALUES
(1, 'Honda', 'honda', '', 0, '2024-01-01'),
(2, 'Nissan', 'nissan', '', 0, '2024-01-01'),
(5, 'Hyundai', 'hyundai', '', 0, '2024-01-01'),
(6, 'Toyota', 'toyota', '', 0, '2024-01-01'),
(7, 'Kia', 'kia', '', 0, '2024-01-01'),
(8, 'Mercedes', 'tata', '', 0, '2024-01-01'),
(9, 'BMW', 'maruti-suzuki', '', 0, '2024-01-01'),
(10, 'Volkswagen', 'volkswagen', '', 0, '2024-01-01'),
(11, 'Audi', 'audi', '', 1, '2024-01-01'),
(12, 'Chevrolet', 'chevrolet', '', 0, '2024-01-01'),
(13, 'Ford', 'ford', '', 0, '2024-01-01'),
(14, 'Dodge', 'dodge', '', 0, '2024-01-01'),
(15, 'Tesla', 'tesla', '', 0, '2024-01-01'),
(16, 'Lexus', 'lexus', '', 0, '2024-01-01'),
(17, 'Maserati', 'maserati', '', 0, '2024-01-01'),
(18, 'Infiniti', 'infiniti', '', 0, '2024-01-01'),
(19, 'Porsche', 'porsche', '', 0, '2024-01-01'),
(20, 'Land Rover', 'land-rover', '', 0, '2024-01-01'),
(21, 'Jaguar', 'jaguar', '', 0, '2024-01-01'),
(22, 'Bentley', 'bentley', '', 0, '2024-01-01'),
(23, 'Rolls-Royce', 'rolls-royce', '', 0, '2024-01-01'),
(24, 'Aston Martin', 'aston-martin', '', 0, '2024-01-01'),
(25, 'Alfa Romeo', 'alfa-romeo', '', 0, '2024-01-01'),
(26, 'Fiat', 'fiat', '', 0, '2024-01-01'),
(27, 'Peugeot', 'peugeot', '', 0, '2024-01-01'),
(28, 'Renault', 'renault', '', 0, '2024-01-01'),
(29, 'Saab', 'saab', '', 0, '2024-01-01'),
(30, 'Skoda', 'skoda', '', 0, '2024-01-01'),
(31, 'Volvo', 'volvo', '', 0, '2024-01-01'),
(32, 'Bugatti', 'bugatti', '', 0, '2024-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `body_type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `car_cid` varchar(20) NOT NULL COMMENT 'car custom id',
  `car_reg_no` varchar(50) DEFAULT NULL,
  `model` date NOT NULL,
  `transmission` varchar(100) DEFAULT NULL,
  `fuel` varchar(100) DEFAULT NULL,
  `seating_capacity` varchar(50) DEFAULT NULL,
  `fastag` tinyint(1) DEFAULT 0,
  `kms_driven` varchar(100) DEFAULT NULL,
  `sun_roof` tinyint(1) NOT NULL,
  `cruise_control` tinyint(1) NOT NULL,
  `360_camera` tinyint(1) NOT NULL,
  `price_per_hour` varchar(100) DEFAULT NULL,
  `home_delivery` tinyint(1) NOT NULL,
  `airbags` tinyint(1) NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '0=show,1=hide',
  `owner_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand_id`, `body_type_id`, `name`, `car_cid`, `car_reg_no`, `model`, `transmission`, `fuel`, `seating_capacity`, `fastag`, `kms_driven`, `sun_roof`, `cruise_control`, `360_camera`, `price_per_hour`, `home_delivery`, `airbags`, `description`, `image`, `status`, `owner_id`) VALUES
(1, 9, 2, 'M3 Competition', '74715916', 'KA03K8987', '2023-01-29', 'Manual', 'Petrol', '5', 1, '10000', 0, 1, 1, '6', 0, 1, 'Qwertyuiop', 'assets/images/car-front-2.jpg', 0, 2),
(2, 32, 2, 'Veyron Supersport', '39172701', 'KA03EA5698', '2013-01-22', 'Manual', 'Diesel', '5', 0, '10000', 1, 0, 1, '15', 0, 1, 'Qwertyuiop', 'assets/images/car-front-3.jpg', 0, 4),
(3, 9, 2, 'CLS 63', '89991597', 'DL56EE523X', '2021-07-27', 'Automatic', 'Petrol', '5', 1, '12032', 1, 1, 1, '8', 0, 1, 'Qwertyuiop', 'assets/images/car-front-1.jpg', 0, 2),
(4, 9, 2, 'Series 7', '74715916', 'KA03K8987', '2023-01-29', 'Manual', 'Petrol', '5', 1, '10000', 0, 1, 1, '6', 0, 1, 'Qwertyuiop', 'assets/images/car-front-2.jpg', 0, 4),
(5, 32, 2, 'G-Class AMG', '39172701', 'KA03EA5698', '2013-01-22', 'Manual', 'Diesel', '5', 0, '10000', 1, 0, 1, '15', 0, 1, 'Qwertyuiop', 'assets/images/car-front-3.jpg', 0, 2),
(6, 9, 2, 'Challenger', '89991597', 'DL56EE523X', '2021-07-27', 'Automatic', 'Petrol', '5', 1, '12032', 1, 1, 1, '8', 0, 1, 'Qwertyuiop', 'assets/images/car-front-1.jpg', 0, 4),
(7, 9, 2, 'Supra MK4', '74715916', 'KA03K8987', '2023-01-29', 'Manual', 'Petrol', '5', 1, '10000', 0, 1, 1, '6', 0, 1, 'Qwertyuiop', 'assets/images/car-front-2.jpg', 0, 2),
(8, 32, 2, 'SkyLine', '39172701', 'KA03EA5698', '2013-01-22', 'Manual', 'Diesel', '5', 0, '10000', 1, 0, 1, '15', 0, 1, 'Qwertyuiop', 'assets/images/car-front-3.jpg', 0, 4),
(9, 9, 2, 'Aventador', '89991597', 'DL56EE523X', '2021-07-27', 'Automatic', 'Petrol', '5', 1, '12032', 1, 1, 1, '8', 0, 1, 'Qwertyuiop', 'assets/images/car-front-1.jpg', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `car_images`
--

CREATE TABLE `car_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `car_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `is_thumbnail` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_images`
--

INSERT INTO `car_images` (`id`, `car_id`, `image`, `is_thumbnail`, `status`) VALUES
(1, 1, 'assets/images/car-front-1.jpg', 1, 0),
(2, 1, 'assets/images/car-back-1', 0, 0),
(3, 1, 'assets/images/car-in-1.jpg', 0, 0),
(4, 2, 'assets/images/car-front-2.jpg', 0, 0),
(5, 2, 'assets/images/car-back-2.jpg', 0, 0),
(6, 2, 'assets/images/car-in-2.jpg', 0, 0),
(7, 3, 'assets/images/car-front-3.jpg', 0, 0),
(8, 3, 'assets/images/car-back-3.jpg', 0, 0),
(9, 3, 'assets/images/car-in-3.jpg', 0, 0),
(10, 4, 'assets/images/car-front-1.jpg', 0, 0),
(11, 4, 'assets/images/car-back-1.jpg', 0, 0),
(12, 4, 'assets/images/car-in-1.jpg', 0, 0),
(13, 5, 'assets/images/car-front-2.jpg', 0, 0),
(14, 5, 'assets/images/car-back-2.jpg', 0, 0),
(15, 5, 'assets/images/car-in-2.jpg', 0, 0),
(16, 6, 'assets/images/car-front-3.jpg', 0, 0),
(17, 6, 'assets/images/car-back-3.jpg', 0, 0),
(18, 6, 'assets/images/car-in-3.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '0=show,1=hide'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `name`, `slug`, `status`) VALUES
(1, 'Facebook', 'www.facebook.com/', 0),
(3, 'Instagram', 'www.instagram.com/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `alt_phone` varchar(20) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `role` enum('user','owner','admin') DEFAULT NULL,
  `is_ban` tinyint(1) DEFAULT 0 COMMENT '0=active,1=ban',
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `remarks` varchar(500) DEFAULT NULL,
  `dl_number` varchar(100) DEFAULT NULL,
  `dl_image_front` varchar(100) DEFAULT NULL,
  `dl_image_back` varchar(100) DEFAULT NULL,
  `id_proof_type` enum('Passport','ID Card') DEFAULT NULL,
  `id_proof_number` varchar(100) DEFAULT NULL,
  `created_at` DATE DEFAULT (CURRENT_DATE)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `alt_phone`, `address`, `role`, `is_ban`, `is_verified`, `remarks`, `dl_number`, `dl_image_front`, `dl_image_back`, `id_proof_type`, `id_proof_number`, `created_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '123456', NULL, NULL, NULL, 'admin', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-01'),
(2, 'owner', 'owner@gmail.com', '123456', '123456789', '', '21 Middlesex Street', 'owner', 0, 1, NULL, 'KA122456789', 'assets/images/dl-front.jpg', 'assets/images/dl-back.jpg', 'Passport', 'KA1223456789', '2024-01-01'),
(3, 'user ', 'user@gmail.com', '123456', '123456789', '', '21 Middlesex Street', 'user', 0, 1, NULL, 'KA12345678', 'assets/images/dl-front.jpg', 'assets/images/dl-back.jpg', 'ID Card', 'KA123453678', '2024-01-01'),
(4, 'owner', 'owner2@gmail.com', '123456', '123456789', '', '21 Middlesex Street', 'owner', 0, 1, NULL, 'KA12334563789', 'assets/images/dl-front.jpg', 'assets/images/dl-back.jpg', 'Passport', 'KA1234564789', '2024-01-01'),
(5, 'user ', 'user@gmail.com', '123456', '123456789', '', '21 Middlesex Street', 'user', 0, 1, NULL, 'KA12345678', 'assets/images/dl-front.jpg', 'assets/images/dl-back.jpg', 'ID Card', 'KA123453678', '2024-01-01'),
(7, 'Test User', 'testuser@gmail.com', '123456', '123152562', NULL, NULL, 'user', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-18'),
(8, 'finaltest', 'finaltest@gmail.com', '123456', '12351251', NULL, NULL, 'owner', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `web_settings`
--

CREATE TABLE `web_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `phone1` varchar(15) DEFAULT NULL,
  `phone2` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_settings`
--

INSERT INTO `web_settings` (`id`, `title`, `url`, `description`, `logo`, `address`, `email1`, `email2`, `phone1`, `phone2`) VALUES
(1, 'Rentit', 'www.rentit.com', 'Rentit - the best car rental portal', 'assets/uploads/28201687333597.png', '12 Middlesex Street, London, United Kingdom', 'mufasadullaev@gmail.com', 'muftullo@gmail.com', '1234567890', '1234567891');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `body_types`
--
ALTER TABLE `body_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cars_users` (`owner_id`);

--
-- Indexes for table `car_images`
--
ALTER TABLE `car_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_settings`
--
ALTER TABLE `web_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `body_types`
--
ALTER TABLE `body_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `car_images`
--
ALTER TABLE `car_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `web_settings`
--
ALTER TABLE `web_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `fk_cars_users` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
