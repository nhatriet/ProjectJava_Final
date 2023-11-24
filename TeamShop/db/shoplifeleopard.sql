-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 02:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhom5`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(12);

-- --------------------------------------------------------

--
-- Table structure for table `table_about`
--

CREATE TABLE `table_about` (
  `about_id` tinyint(4) NOT NULL,
  `about_title` text NOT NULL,
  `about_sub` text NOT NULL,
  `about_topic` text NOT NULL,
  `about_img` varchar(64) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_about`
--

INSERT INTO `table_about` (`about_id`, `about_title`, `about_sub`, `about_topic`, `about_img`, `name`, `status`, `Created`, `Updated`) VALUES
(1, 'Ho Hoang Khang', '46.01.104.077', 'Mặc áo hồng để làm chồng em', '/images/about-01.jpg', '', 1, '2022-11-22 10:16:37', '2023-11-24 20:51:10'),
(2, 'Nguyen Phuong Dai', '47.01.104.057', 'Ôm con bò đẹp trai thế nhò', '/images/about-02.jpg', '', 1, '2022-11-22 10:16:37', '2023-11-24 20:49:58'),
(3, 'Nguyen Ngoc Tran', '47.01.104.214', 'Miệng chữ O thích ăn cá kho', '/images/about-03.jpg', '', 1, '2022-11-22 10:16:37', '2023-11-24 20:53:13'),
(4, 'Doan Ngoc Nha Triet', '47.01.104.218', 'Gơ nón hồng làm anh phải lòng', '/images/about-04.jpg', '', 1, '2022-11-22 10:16:37', '2023-11-24 20:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `table_accounts`
--

CREATE TABLE `table_accounts` (
  `Account_id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role_id` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `Verification_code` varchar(255) DEFAULT NULL,
  `reset_pass_code` varchar(255) DEFAULT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_accounts`
--

INSERT INTO `table_accounts` (`Account_id`, `Username`, `Password`, `Role_id`, `Status`, `Verification_code`, `reset_pass_code`, `Created`, `Updated`) VALUES
(1, 'admin_npd', '$2a$10$T4gMFcvbC3z71daUG280neusl9e9fxMrysf3fItLEKQU0L/3nMzVu', 2, 1, '', NULL, '2022-11-05 15:25:38', '2023-11-24 10:47:44'),
(2, 'user_npd', '$2a$10$.xv3//v6j8oY1GmCbpebLu/vrXNJQ82bRG5ux4psUiBCm.884Rrf.', 1, 1, '', NULL, '2022-11-05 15:25:38', '2023-11-24 10:48:03'),
(3, 'user_hhk', '$2a$10$GixiwoIjaryBJJhTzKy64eOYZvTha3PxXSNeXMmfjVIfPfFcNx/rC', 1, 1, '', NULL, '2022-11-05 15:25:38', '2023-11-24 10:48:10'),
(4, 'user_dnnt', '$2a$10$GixiwoIjaryBJJhTzKy64eOYZvTha3PxXSNeXMmfjVIfPfFcNx/rC', 1, 1, '', NULL, '2022-11-05 15:25:38', '2023-11-24 10:48:17'),
(5, 'user_nnt', '$2a$10$GixiwoIjaryBJJhTzKy64eOYZvTha3PxXSNeXMmfjVIfPfFcNx/rC', 1, 1, '', NULL, '2022-11-05 15:25:38', '2023-11-24 10:48:22'),
(6, 'admin', '$2a$10$.xv3//v6j8oY1GmCbpebLu/vrXNJQ82bRG5ux4psUiBCm.884Rrf.', 2, 1, '', NULL, '2022-11-05 15:25:38', '2023-11-23 12:43:54'),
(7, 'test', '$2a$10$GixiwoIjaryBJJhTzKy64eOYZvTha3PxXSNeXMmfjVIfPfFcNx/rC', 1, 1, '', NULL, '2022-11-05 15:25:38', '2022-11-07 11:28:09'),
(24, 'test_npd', '$2a$10$5wWkyrFpsIm362Hlz/xSBOq4DmZTDouFgvwP1K6wCsD5gNAtLs1by', 1, 1, NULL, NULL, '2023-11-24 12:43:01', '2023-11-24 12:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `table_blog`
--

CREATE TABLE `table_blog` (
  `blog_id` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_blog_cmt`
--

CREATE TABLE `table_blog_cmt` (
  `cmt_id` int(11) NOT NULL,
  `cmt` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_category`
--

CREATE TABLE `table_category` (
  `Category_id` int(11) NOT NULL,
  `Category_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `Created` datetime NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_category`
--

INSERT INTO `table_category` (`Category_id`, `Category_name`, `status`, `Created`, `Updated`) VALUES
(1, 'Rau_Củ', 1, '2023-11-24 17:07:15', '2023-11-24 10:33:32'),
(2, 'Hoa_Quả', 1, '2023-11-24 17:07:15', '2023-11-24 10:33:06'),
(3, 'Thịt_Cá', 1, '2023-11-24 17:07:15', '2023-11-24 10:32:58'),
(4, 'Trứng_Sữa', 1, '2023-11-24 17:07:15', '2023-11-24 10:33:44'),
(5, 'Ngũ_Cốc', 1, '2023-11-24 17:07:15', '2023-11-24 10:33:58'),
(6, 'Mứt', 1, '2023-11-24 17:07:15', '2023-11-24 10:07:15'),
(13, 'a', 0, '2023-11-23 19:54:52', '2023-11-24 10:08:02'),
(14, 'trai cai', 0, '2023-11-23 20:17:14', '2023-11-24 10:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `table_comment`
--

CREATE TABLE `table_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_value` varchar(255) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `table_comment`
--

INSERT INTO `table_comment` (`comment_id`, `comment_value`, `created`, `rating`, `status`, `updated`, `customer_id`, `product_id`) VALUES
(1, 'alo', NULL, 5, 1, NULL, 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `table_contact`
--

CREATE TABLE `table_contact` (
  `contact_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email_sup` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_contact`
--

INSERT INTO `table_contact` (`contact_id`, `address`, `phone_number`, `email_sup`, `status`, `Created`, `Updated`) VALUES
(1, '280, An Duong Vuong, Ward 4, District 5, Ho Chi Minh City', '+84 99 111 1114', 'URFood.contact@gmail.com', 1, '2022-11-22 09:52:25', '2023-11-24 07:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `table_customer`
--

CREATE TABLE `table_customer` (
  `Customer_id` int(11) NOT NULL,
  `Account_id` int(11) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Birthday` date DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone_number` varchar(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_customer`
--

INSERT INTO `table_customer` (`Customer_id`, `Account_id`, `First_name`, `Last_name`, `Birthday`, `Email`, `Phone_number`, `Address`, `Created`, `Updated`) VALUES
(1, 2, 'Nguyễn Phương', 'Đại', '2003-11-03', 'pdai.nguyen@gmail.com', '09056*****', 'Việt Nam', '2022-11-05 15:18:33', '2023-11-24 10:50:05'),
(2, 3, 'Hồ Hoàng', 'Khang', NULL, 'hkhang.ho@gmail.com', '1234567890', 'Việt Nam', '2022-11-05 15:18:33', '2023-11-24 10:51:22'),
(3, 4, 'Đoàn Ngọc Nhã', 'Triết', '2003-12-24', 'nntriet.doan@gmail.com', '1234567890', 'Việt Nam', '2022-11-05 15:18:33', '2023-11-24 10:54:10'),
(4, 5, 'Nguyễn Ngọc', 'Trân', '2003-08-15', 'ntran.nguyen@gmail.com', '01232312312', 'Việt Nam', '2022-11-05 15:18:33', '2023-11-24 10:54:29'),
(10, 24, 'Nguyễn', 'Đại', '2003-11-03', 'phuongdai0311@gmail.com', '0822286198', 'Tân Phú', '2023-11-24 12:43:01', '2023-11-24 12:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `table_departments`
--

CREATE TABLE `table_departments` (
  `Department_id` int(11) NOT NULL,
  `Department_name` varchar(255) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_departments`
--

INSERT INTO `table_departments` (`Department_id`, `Department_name`, `Created`, `Updated`) VALUES
(1, '280 An Dương Vương', '2022-11-05 15:19:08', '2022-11-05 15:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `table_employee`
--

CREATE TABLE `table_employee` (
  `Employee_id` int(11) NOT NULL,
  `Account_id` int(11) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Birthday` date DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone_number` varchar(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Department_id` int(11) NOT NULL,
  `Position_id` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_employee`
--

INSERT INTO `table_employee` (`Employee_id`, `Account_id`, `First_name`, `Last_name`, `Birthday`, `Email`, `Phone_number`, `Address`, `Department_id`, `Position_id`, `Status`, `Created`, `Updated`) VALUES
(1, 1, 'Nguyễn Phương', 'Đại', NULL, 'daiadmin@gmail.com', '0905633***', 'Bến Tre - Việt Nam', 1, 2, 1, '2022-11-05 15:26:00', '2023-11-24 10:56:00'),
(2, 6, 'admin', 'test', NULL, 'admin@gmail.com', '123456789', 'Viet Nam', 1, 2, 1, '2022-11-05 15:26:00', '2023-11-24 10:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `table_event`
--

CREATE TABLE `table_event` (
  `event_id` tinyint(4) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_topic` varchar(255) NOT NULL,
  `event_img` varchar(64) DEFAULT NULL,
  `list_product_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `Created` datetime NOT NULL DEFAULT current_timestamp(),
  `Updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_event`
--

INSERT INTO `table_event` (`event_id`, `event_name`, `event_topic`, `event_img`, `list_product_id`, `status`, `Created`, `Updated`) VALUES
(1, 'Black Friday', 'Trend', '/images/event/1/black6.jpg', '1,2,3,4', 1, '2023-11-24 20:12:35', '2023-11-24 20:14:42'),
(5, 'Khuyến mãi Tết', 'Holiday', '/images/event/5/tet.jpg', '8,17,24', 1, '2023-11-23 21:22:16', '2023-11-24 20:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `table_order`
--

CREATE TABLE `table_order` (
  `Order_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Phone_numer` varchar(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Total` double NOT NULL,
  `Payment` varchar(255) DEFAULT NULL,
  `Payment_status` tinyint(4) NOT NULL DEFAULT 0,
  `Status` int(11) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_order`
--

INSERT INTO `table_order` (`Order_id`, `Customer_id`, `First_name`, `Last_name`, `Phone_numer`, `Address`, `Total`, `Payment`, `Payment_status`, `Status`, `Created`, `Updated`) VALUES
(1, 2, 'Nguyễn', 'My', '0123455612', 'Lạc Long Quân', 165000, '', 1, 2, '2022-11-09 16:36:08', '2022-11-09 16:36:08'),
(2, 4, 'Không', 'Biết', '0123455612', 'không biết luôn', 75000, '', 1, 2, '2022-11-09 16:37:55', '2022-11-09 16:37:55'),
(3, 1, 'Nguyễn Phương', 'Đại', '09056*****', 'Việt Nam', 3333, NULL, 0, 2, '2023-11-23 13:35:26', '2023-11-24 10:57:27'),
(4, 1, 'Nguyễn Phương', 'Đại', '09056*****', 'Việt Nam', 50000, NULL, 0, 0, '2023-11-24 10:46:39', '2023-11-24 10:57:36'),
(5, 1, 'Nguyễn Phương', 'Đại', '09056*****', 'Việt Nam', 30000, NULL, 0, 0, '2023-11-24 11:13:35', '2023-11-24 11:13:35'),
(6, 1, 'Nguyễn Phương', 'Đại', '09056*****', 'Việt Nam', 30000, NULL, 0, 0, '2023-11-24 11:15:36', '2023-11-24 11:15:36'),
(7, 1, 'Nguyễn Phương', 'Đại', '09056*****', 'Việt Nam', 300000, NULL, 0, 0, '2023-11-24 11:29:40', '2023-11-24 11:29:40'),
(8, 1, 'Nguyễn Phương', 'Đại', '09056*****', 'Việt Nam', 80000, NULL, 0, 0, '2023-11-24 11:44:50', '2023-11-24 11:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `table_position`
--

CREATE TABLE `table_position` (
  `Position_id` int(11) NOT NULL,
  `Position_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_position`
--

INSERT INTO `table_position` (`Position_id`, `Position_name`) VALUES
(1, 'Bảo Vệ'),
(2, 'Bán Hàng');

-- --------------------------------------------------------

--
-- Table structure for table `table_products`
--

CREATE TABLE `table_products` (
  `Product_id` int(11) NOT NULL,
  `Category_id` int(11) NOT NULL,
  `Product_type` int(11) DEFAULT NULL,
  `Product_name` varchar(255) NOT NULL,
  `Product_images_preview` varchar(64) DEFAULT NULL,
  `Short_description` text NOT NULL,
  `description` text NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `pirce_preview` double NOT NULL,
  `Weight` double DEFAULT NULL,
  `Dimensions` varchar(64) DEFAULT NULL,
  `Materials` varchar(64) DEFAULT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_products`
--

INSERT INTO `table_products` (`Product_id`, `Category_id`, `Product_type`, `Product_name`, `Product_images_preview`, `Short_description`, `description`, `Quantity`, `Status`, `pirce_preview`, `Weight`, `Dimensions`, `Materials`, `Created`, `Updated`) VALUES
(1, 1, NULL, 'Salad Đà Lạt', '/images/product/1/salad.jpg', 'a', 'a', 9989, 1, 10000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:11:20'),
(2, 2, NULL, 'Táo Mỹ', '/images/product/2/tao-my.jpg', 'a', 'a', 9994, 1, 20000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:17:55'),
(3, 3, NULL, 'Thịt bò Kobe', '/images/product/3/kobe.jpg', 'a', 'a', 9998, 1, 30000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:18:15'),
(4, 3, NULL, 'Cá Saba', '/images/product/4/ca-saba.jpg', 'a', 'a', 10000, 1, 40000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:18:29'),
(5, 4, NULL, 'Vỉ trứng gà', '/images/product/5/trungga.jpg', 'a', 'a', 10000, 1, 50000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:18:43'),
(6, 5, NULL, 'Ngũ cốc ăn liền', '/images/product/6/ngu-coc.jpg', 'a', 'a', 10000, 1, 60000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:18:59'),
(7, 4, NULL, 'Sữa bò', '/images/product/7/suabo.jpg', 'a', 'a', 10000, 1, 70000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:19:11'),
(8, 6, NULL, 'Mứt dừa mix vị', '/images/product/8/mutdua.jpg', 'a', 'a', 10000, 1, 80000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:19:27'),
(9, 3, NULL, 'Cá ngừ', '/images/product/9/cangu.jpg', 'a', 'a', 10000, 1, 90000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:19:38'),
(10, 1, NULL, 'Củ cải đỏ', '/images/product/10/cucaido.jpg', 'đa', 'ad', 1108, 1, 100000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:19:50'),
(11, 1, NULL, 'Củ su hào', '/images/product/11/su-hao.jpg', 'đa', 'ad', 1108, 1, 110000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:20:06'),
(12, 2, NULL, 'Chuối sứ', '/images/product/12/Chuoi-Su.jpg', 'a', 'a', 10000, 1, 120000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:20:22'),
(13, 2, NULL, 'Cam campuchia', '/images/product/13/qua-cam.jpg', 'a', 'a', 10000, 1, 130000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:20:37'),
(14, 4, NULL, 'Vỉ trứng vịt', '/images/product/14/trung-vit.jpg', 'a', 'a', 10000, 1, 140000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:20:51'),
(15, 5, NULL, 'Ngũ cốc Hàn Quốc', '/images/product/15/ngucochq.jpg', 'a', 'a', 10000, 1, 150000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:21:11'),
(16, 5, NULL, 'Ngũ cốc Dalgona', '/images/product/16/granola.jpg', 'a', 'a', 10000, 1, 160000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:21:27'),
(17, 6, NULL, 'Mứt quýt', '/images/product/17/mut-quyt.jpg', 'a', 'a', 10000, 1, 170000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:21:55'),
(18, 13, NULL, 'a', '/images/product/18/qbcdouvnT120231123204902.png', 'a', 'a', 10000, 0, 1111111, 0, NULL, NULL, '2023-11-23 12:56:48', '2023-11-24 12:17:17'),
(19, 14, NULL, 'adaada', '/images/product/19/wFk6ClTMCR20231123201751.jpg', 'đa', 'ad', 1108, 0, 1111110, 0, NULL, NULL, '2023-11-23 13:17:51', '2023-11-24 12:17:15'),
(20, 14, NULL, 'Táo Mỹ', '/images/product/20/ovu4EkNaoD20231123213512.png', 'ababba', 'snshshd', 111, 0, 100, 0, NULL, NULL, '2023-11-23 14:35:12', '2023-11-24 12:17:24'),
(21, 13, NULL, 'Test', '/images/product/21/nhdodZHXAc20231123232554.png', 'agggg', 'aaaa', 100, 0, 90000, 0, NULL, NULL, '2023-11-23 16:25:54', '2023-11-24 12:17:10'),
(24, 6, NULL, 'Mứt bưởi', '/images/product/24/mutbuoi.jpg', 'a', 'a', 10000, 1, 180000, 0, NULL, NULL, '2023-11-24 10:15:23', '2023-11-24 12:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `table_product_images`
--

CREATE TABLE `table_product_images` (
  `Product_images_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Product_imgaes_url` varchar(64) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_product_images`
--

INSERT INTO `table_product_images` (`Product_images_id`, `Product_id`, `Product_imgaes_url`, `Created`, `Updated`) VALUES
(1, 1, '/images/product/1/salad.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(2, 2, '/images/product/2/tao-my.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(3, 3, '/images/product/3/kobe.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(4, 4, '/images/product/4/ca-saba.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(5, 5, '/images/product/5/trungga.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(6, 6, '/images/product/6/ngu-coc.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(7, 7, '/images/product/7/suabo.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(8, 8, '/images/product/8/mutdua.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(9, 9, '/images/product/9/cangu.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(10, 10, '/images/product/10/cucaido.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(11, 11, '/images/product/11/su-hao.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(12, 12, '/images/product/12/Chuoi-Su.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(13, 13, '/images/product/13/qua-cam.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(14, 14, '/images/product/14/trung-vit.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(15, 15, '/images/product/15/ngucochq.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(16, 16, '/images/product/16/granola.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(17, 17, '/images/product/17/mut-quyt.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48'),
(18, 18, '/images/product/18/qbcdouvnT120231123204902.png', '2023-11-23 12:56:48', '2023-11-23 13:49:02'),
(19, 19, '/images/product/19/wFk6ClTMCR20231123201751.jpg', '2023-11-23 13:17:51', '2023-11-23 13:17:51'),
(20, 20, '/images/product/20/ovu4EkNaoD20231123213512.png', '2023-11-23 14:35:12', '2023-11-23 14:35:12'),
(21, 21, '/images/product/21/nhdodZHXAc20231123232554.png', '2023-11-23 16:25:54', '2023-11-23 16:25:54'),
(24, 24, '/images/product/24/mutbuoi.jpg', '2023-11-24 12:38:48', '2023-11-24 12:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `table_product_order`
--

CREATE TABLE `table_product_order` (
  `Product_Order_id` int(11) NOT NULL,
  `Order_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_product_order`
--

INSERT INTO `table_product_order` (`Product_Order_id`, `Order_id`, `Product_id`, `Quantity`, `Price`, `Created`, `Updated`) VALUES
(3, 3, 123, 3, 3333, '2023-11-23 13:35:26', '2023-11-23 13:35:26'),
(4, 4, 150, 5, 50000, '2023-11-24 10:46:39', '2023-11-24 10:46:39'),
(5, 5, 150, 3, 30000, '2023-11-24 11:13:35', '2023-11-24 11:13:35'),
(6, 6, 150, 3, 30000, '2023-11-24 11:15:36', '2023-11-24 11:15:36'),
(7, 7, 152, 2, 100000, '2023-11-24 11:29:40', '2023-11-24 11:29:40'),
(8, 7, 153, 2, 200000, '2023-11-24 11:29:40', '2023-11-24 11:29:40'),
(9, 8, 152, 4, 80000, '2023-11-24 11:44:50', '2023-11-24 11:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `table_product_size`
--

CREATE TABLE `table_product_size` (
  `Product_Size_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Size_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_product_size`
--

INSERT INTO `table_product_size` (`Product_Size_id`, `Product_id`, `Size_id`, `Quantity`, `Price`, `Status`) VALUES
(120, 18, 8, 100, 10000, 1),
(121, 18, 9, 1000, 1221312312, 1),
(122, 19, 8, 1111111, 11111, 1),
(123, 19, 9, 11108, 1111, 1),
(124, 20, 8, 110, 100, 1),
(125, 20, 9, 100, 100, 1),
(126, 21, 8, 90, 0, 0),
(127, 21, 9, 100, 90000, 1),
(128, 7, 4, 50, 70000, 1),
(129, 8, 2, 1000, 80000, 1),
(130, 8, 4, 700, 80000, 1),
(131, 9, 2, 1111, 90000, 1),
(132, 10, 2, 11108, 100000, 1),
(133, 10, 4, 118, 100000, 1),
(134, 11, 4, 108, 110000, 1),
(135, 11, 2, 218, 110000, 1),
(136, 12, 1, 118, 120000, 1),
(137, 12, 2, 58, 120000, 1),
(138, 13, 4, 118, 130000, 1),
(139, 13, 2, 88, 130000, 1),
(140, 14, 1, 118, 140000, 1),
(141, 15, 4, 118, 150000, 1),
(142, 15, 3, 118, 150000, 1),
(143, 16, 4, 189, 160000, 1),
(144, 16, 3, 98, 160000, 1),
(145, 17, 2, 109, 170000, 1),
(146, 17, 4, 180, 170000, 1),
(147, 18, 2, 90, 180000, 1),
(148, 18, 4, 85, 180000, 1),
(150, 1, 2, 89, 10000, 1),
(151, 2, 4, 100, 20000, 1),
(152, 2, 2, 504, 20000, 1),
(153, 3, 2, 98, 30000, 1),
(154, 4, 2, 101, 40000, 1),
(155, 5, 1, 100, 50000, 1),
(156, 6, 4, 100, 60000, 1),
(157, 6, 3, 100, 60000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_type`
--

CREATE TABLE `table_product_type` (
  `Type_id` int(11) NOT NULL,
  `Type_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_roles`
--

CREATE TABLE `table_roles` (
  `Role_id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_roles`
--

INSERT INTO `table_roles` (`Role_id`, `role_name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `table_size`
--

CREATE TABLE `table_size` (
  `Size_id` int(11) NOT NULL,
  `Size_name` varchar(255) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_size`
--

INSERT INTO `table_size` (`Size_id`, `Size_name`, `Created`, `Updated`) VALUES
(1, 'Dozens', '2023-11-24 10:18:48', '2023-11-24 10:18:48'),
(2, 'Kilograms', '2023-11-24 10:18:48', '2023-11-24 10:18:48'),
(3, 'Pieces', '2023-11-24 10:18:48', '2023-11-24 10:18:48'),
(4, 'Boxes', '2023-11-24 10:18:48', '2023-11-24 10:18:48'),
(8, 'Gói', '2023-11-23 12:55:41', '2023-11-24 06:29:03'),
(9, 'Kg', '2023-11-23 12:55:41', '2023-11-23 12:55:41'),
(10, 'Thùng', '2023-11-24 06:28:34', '2023-11-24 06:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `table_slide_home`
--

CREATE TABLE `table_slide_home` (
  `slide_id` tinyint(4) NOT NULL,
  `slide_img` varchar(64) NOT NULL,
  `slide_sub` text NOT NULL,
  `slide_title` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_slide_home`
--

INSERT INTO `table_slide_home` (`slide_id`, `slide_img`, `slide_sub`, `slide_title`, `status`, `Created`, `Updated`) VALUES
(1, '/images/slide-01.jpg', 'Fresh & Clean', 'VEGETABLE', 1, '2022-11-22 11:03:24', '2023-11-24 13:03:31'),
(2, '/images/slide-02.jpg', 'Various of', 'CATEGORY', 1, '2022-11-22 11:03:24', '2023-11-24 13:04:04'),
(3, '/images/slide-03.jpg', 'Full enegry', 'WITH NUTS', 1, '2022-11-22 11:03:24', '2023-11-24 13:04:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_about`
--
ALTER TABLE `table_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `table_accounts`
--
ALTER TABLE `table_accounts`
  ADD PRIMARY KEY (`Account_id`),
  ADD UNIQUE KEY `User_name` (`Username`),
  ADD KEY `Role_id` (`Role_id`);

--
-- Indexes for table `table_blog`
--
ALTER TABLE `table_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `table_blog_cmt`
--
ALTER TABLE `table_blog_cmt`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `FKm7p2e6sqp566s9t6us8dc3lkh` (`blog_id`),
  ADD KEY `FKivq4deixxtp6vblx55klfkpgg` (`author_id`);

--
-- Indexes for table `table_category`
--
ALTER TABLE `table_category`
  ADD PRIMARY KEY (`Category_id`);

--
-- Indexes for table `table_comment`
--
ALTER TABLE `table_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `FKb9pr3i50ub9s4t5c0nrcwnmnf` (`customer_id`),
  ADD KEY `FKgayfqtr4r4avtqswe6mhq1dd2` (`product_id`);

--
-- Indexes for table `table_contact`
--
ALTER TABLE `table_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `table_customer`
--
ALTER TABLE `table_customer`
  ADD PRIMARY KEY (`Customer_id`),
  ADD UNIQUE KEY `Username` (`Account_id`);

--
-- Indexes for table `table_departments`
--
ALTER TABLE `table_departments`
  ADD PRIMARY KEY (`Department_id`);

--
-- Indexes for table `table_employee`
--
ALTER TABLE `table_employee`
  ADD PRIMARY KEY (`Employee_id`),
  ADD KEY `Department_id` (`Department_id`),
  ADD KEY `Position_id` (`Position_id`),
  ADD KEY `Account_id` (`Account_id`);

--
-- Indexes for table `table_event`
--
ALTER TABLE `table_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `table_order`
--
ALTER TABLE `table_order`
  ADD PRIMARY KEY (`Order_id`),
  ADD KEY `FKrv5by75uwwfxjn8mvu5hpxf6h` (`Customer_id`);

--
-- Indexes for table `table_position`
--
ALTER TABLE `table_position`
  ADD PRIMARY KEY (`Position_id`);

--
-- Indexes for table `table_products`
--
ALTER TABLE `table_products`
  ADD PRIMARY KEY (`Product_id`),
  ADD KEY `FKqurjuqo4fo8qbk0x7ygtmxvby` (`Category_id`);

--
-- Indexes for table `table_product_images`
--
ALTER TABLE `table_product_images`
  ADD PRIMARY KEY (`Product_images_id`),
  ADD KEY `FKner637g99t8cybonraf640soc` (`Product_id`);

--
-- Indexes for table `table_product_order`
--
ALTER TABLE `table_product_order`
  ADD PRIMARY KEY (`Product_Order_id`),
  ADD KEY `FK3rxpo4povqcftkcgsodtlnoxq` (`Order_id`),
  ADD KEY `FKnbe9j30yemq7ogsq967miqwbg` (`Product_id`);

--
-- Indexes for table `table_product_size`
--
ALTER TABLE `table_product_size`
  ADD PRIMARY KEY (`Product_Size_id`),
  ADD KEY `Size_id` (`Size_id`),
  ADD KEY `Product_id` (`Product_id`);

--
-- Indexes for table `table_product_type`
--
ALTER TABLE `table_product_type`
  ADD PRIMARY KEY (`Type_id`);

--
-- Indexes for table `table_roles`
--
ALTER TABLE `table_roles`
  ADD PRIMARY KEY (`Role_id`);

--
-- Indexes for table `table_size`
--
ALTER TABLE `table_size`
  ADD PRIMARY KEY (`Size_id`);

--
-- Indexes for table `table_slide_home`
--
ALTER TABLE `table_slide_home`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_about`
--
ALTER TABLE `table_about`
  MODIFY `about_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_accounts`
--
ALTER TABLE `table_accounts`
  MODIFY `Account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `table_blog`
--
ALTER TABLE `table_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_blog_cmt`
--
ALTER TABLE `table_blog_cmt`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_category`
--
ALTER TABLE `table_category`
  MODIFY `Category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `table_comment`
--
ALTER TABLE `table_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_contact`
--
ALTER TABLE `table_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_customer`
--
ALTER TABLE `table_customer`
  MODIFY `Customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_departments`
--
ALTER TABLE `table_departments`
  MODIFY `Department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_employee`
--
ALTER TABLE `table_employee`
  MODIFY `Employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_event`
--
ALTER TABLE `table_event`
  MODIFY `event_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_order`
--
ALTER TABLE `table_order`
  MODIFY `Order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_position`
--
ALTER TABLE `table_position`
  MODIFY `Position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_products`
--
ALTER TABLE `table_products`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `table_product_images`
--
ALTER TABLE `table_product_images`
  MODIFY `Product_images_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `table_product_order`
--
ALTER TABLE `table_product_order`
  MODIFY `Product_Order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table_product_size`
--
ALTER TABLE `table_product_size`
  MODIFY `Product_Size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `table_product_type`
--
ALTER TABLE `table_product_type`
  MODIFY `Type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_roles`
--
ALTER TABLE `table_roles`
  MODIFY `Role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_size`
--
ALTER TABLE `table_size`
  MODIFY `Size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_slide_home`
--
ALTER TABLE `table_slide_home`
  MODIFY `slide_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_accounts`
--
ALTER TABLE `table_accounts`
  ADD CONSTRAINT `table_accounts_ibfk_1` FOREIGN KEY (`Role_id`) REFERENCES `table_roles` (`Role_id`);

--
-- Constraints for table `table_blog_cmt`
--
ALTER TABLE `table_blog_cmt`
  ADD CONSTRAINT `FKivq4deixxtp6vblx55klfkpgg` FOREIGN KEY (`author_id`) REFERENCES `table_customer` (`Customer_id`),
  ADD CONSTRAINT `FKm7p2e6sqp566s9t6us8dc3lkh` FOREIGN KEY (`blog_id`) REFERENCES `table_blog` (`blog_id`);

--
-- Constraints for table `table_comment`
--
ALTER TABLE `table_comment`
  ADD CONSTRAINT `FKb9pr3i50ub9s4t5c0nrcwnmnf` FOREIGN KEY (`customer_id`) REFERENCES `table_customer` (`Customer_id`),
  ADD CONSTRAINT `FKgayfqtr4r4avtqswe6mhq1dd2` FOREIGN KEY (`product_id`) REFERENCES `table_products` (`Product_id`);

--
-- Constraints for table `table_customer`
--
ALTER TABLE `table_customer`
  ADD CONSTRAINT `table_customer_ibfk_1` FOREIGN KEY (`Account_id`) REFERENCES `table_accounts` (`Account_id`);

--
-- Constraints for table `table_employee`
--
ALTER TABLE `table_employee`
  ADD CONSTRAINT `table_employee_ibfk_1` FOREIGN KEY (`Department_id`) REFERENCES `table_departments` (`Department_id`),
  ADD CONSTRAINT `table_employee_ibfk_2` FOREIGN KEY (`Position_id`) REFERENCES `table_position` (`Position_id`),
  ADD CONSTRAINT `table_employee_ibfk_3` FOREIGN KEY (`Account_id`) REFERENCES `table_accounts` (`Account_id`);

--
-- Constraints for table `table_order`
--
ALTER TABLE `table_order`
  ADD CONSTRAINT `FKrv5by75uwwfxjn8mvu5hpxf6h` FOREIGN KEY (`Customer_id`) REFERENCES `table_customer` (`Customer_id`);

--
-- Constraints for table `table_products`
--
ALTER TABLE `table_products`
  ADD CONSTRAINT `FKqurjuqo4fo8qbk0x7ygtmxvby` FOREIGN KEY (`Category_id`) REFERENCES `table_category` (`Category_id`);

--
-- Constraints for table `table_product_images`
--
ALTER TABLE `table_product_images`
  ADD CONSTRAINT `FKner637g99t8cybonraf640soc` FOREIGN KEY (`Product_id`) REFERENCES `table_products` (`Product_id`);

--
-- Constraints for table `table_product_order`
--
ALTER TABLE `table_product_order`
  ADD CONSTRAINT `FK3rxpo4povqcftkcgsodtlnoxq` FOREIGN KEY (`Order_id`) REFERENCES `table_order` (`Order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FKnbe9j30yemq7ogsq967miqwbg` FOREIGN KEY (`Product_id`) REFERENCES `table_product_size` (`Product_Size_id`);

--
-- Constraints for table `table_product_size`
--
ALTER TABLE `table_product_size`
  ADD CONSTRAINT `table_product_size_ibfk_2` FOREIGN KEY (`Size_id`) REFERENCES `table_size` (`Size_id`),
  ADD CONSTRAINT `table_product_size_ibfk_3` FOREIGN KEY (`Product_id`) REFERENCES `table_products` (`Product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
