-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2025 at 04:31 PM
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
-- Database: `foodtek`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `city`, `state`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '123 Main Street', 'Amman', 'Amman', 1, '2025-04-05 13:24:24', '2025-04-05 13:24:24'),
(2, '456 King Abdullah St', 'Zarqa', 'Zarqa', 2, '2025-04-05 13:24:24', '2025-04-05 13:24:24'),
(3, '789 Queen Rania St', 'Irbid', 'Irbid', 3, '2025-04-05 13:24:24', '2025-04-05 13:24:24'),
(4, '1012 Al-Muqabalain', 'Madaba', 'Madaba', 4, '2025-04-05 13:24:24', '2025-04-05 13:24:24'),
(5, '11th Floor, Al-Shmeisani', 'Amman', 'Amman', 5, '2025-04-05 13:24:24', '2025-04-05 13:24:24'),
(6, '45 Khaled Bin Al-Waleed', 'Aqaba', 'Aqaba', 6, '2025-04-05 13:24:24', '2025-04-05 13:24:24'),
(7, '67 Al-Nahda St', 'Maan', 'Maan', 7, '2025-04-05 13:24:24', '2025-04-05 13:24:24'),
(8, '32 Al-Madina Al-Munawara', 'Tafila', 'Tafila', 8, '2025-04-05 13:24:24', '2025-04-05 13:24:24'),
(9, '1003 Al-Jubaiha', 'Amman', 'Amman', 9, '2025-04-05 13:24:24', '2025-04-05 13:24:24'),
(10, '654 Al-Duwwar', 'Salt', 'Salt', 10, '2025-04-05 13:24:24', '2025-04-05 13:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`id`, `user_id`, `staff_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-04-05 13:42:37', '2025-04-05 13:42:37'),
(2, 2, 2, '2025-04-05 13:42:37', '2025-04-05 13:42:37'),
(3, 3, 3, '2025-04-05 13:42:37', '2025-04-05 13:42:37'),
(4, 4, 4, '2025-04-05 13:42:37', '2025-04-05 13:42:37'),
(5, 5, 5, '2025-04-05 13:42:37', '2025-04-05 13:42:37'),
(6, 6, 6, '2025-04-05 13:42:37', '2025-04-05 13:42:37'),
(7, 7, 7, '2025-04-05 13:42:37', '2025-04-05 13:42:37'),
(8, 8, 8, '2025-04-05 13:42:37', '2025-04-05 13:42:37'),
(9, 9, 9, '2025-04-05 13:42:37', '2025-04-05 13:42:37'),
(10, 10, 10, '2025-04-05 13:42:37', '2025-04-05 13:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', '2025-04-05 13:26:36', '2025-04-05 13:26:36'),
(2, 'Clothing', '2025-04-05 13:26:36', '2025-04-05 13:26:36'),
(3, 'Food & Beverages', '2025-04-05 13:26:36', '2025-04-05 13:26:36'),
(4, 'Books', '2025-04-05 13:26:36', '2025-04-05 13:26:36'),
(5, 'Home Appliances', '2025-04-05 13:26:36', '2025-04-05 13:26:36'),
(6, 'Beauty & Health', '2025-04-05 13:26:36', '2025-04-05 13:26:36'),
(7, 'Sports & Outdoors', '2025-04-05 13:26:36', '2025-04-05 13:26:36'),
(8, 'Toys & Games', '2025-04-05 13:26:36', '2025-04-05 13:26:36'),
(9, 'Automotive', '2025-04-05 13:26:36', '2025-04-05 13:26:36'),
(10, 'Furniture', '2025-04-05 13:26:36', '2025-04-05 13:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user_id`, `staff_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Hello, I need help with my order.', '2025-04-05 13:34:39', '2025-04-05 13:34:39'),
(2, 2, 2, 'Can you assist me with tracking my delivery?', '2025-04-05 13:34:39', '2025-04-05 13:34:39'),
(3, 3, 3, 'I want to cancel my recent order, please.', '2025-04-05 13:34:39', '2025-04-05 13:34:39'),
(4, 4, 4, 'Is there any discount on electronics?', '2025-04-05 13:34:39', '2025-04-05 13:34:39'),
(5, 5, 5, 'I am having trouble making a payment.', '2025-04-05 13:34:39', '2025-04-05 13:34:39'),
(6, 6, 6, 'How can I return a product?', '2025-04-05 13:34:39', '2025-04-05 13:34:39'),
(7, 7, 7, 'Can I change my delivery address?', '2025-04-05 13:34:39', '2025-04-05 13:34:39'),
(8, 8, 8, 'My product is damaged, what should I do?', '2025-04-05 13:34:39', '2025-04-05 13:34:39'),
(9, 9, 9, 'When will my order arrive?', '2025-04-05 13:34:39', '2025-04-05 13:34:39'),
(10, 10, 10, 'Do you have any special offers?', '2025-04-05 13:34:39', '2025-04-05 13:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `driver_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `status_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `order_id`, `staff_id`, `driver_name`, `status`, `status_time`, `delivery_address`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'John Doe', 'Out for delivery', '2025-04-05 13:52:55', '123 Main St, City, Country', '2025-04-05 13:52:55', '2025-04-05 13:52:55'),
(2, 2, 2, 'Jane Smith', 'Delivered', '2025-04-05 13:52:55', '456 Oak Rd, City, Country', '2025-04-05 13:52:55', '2025-04-05 13:52:55'),
(3, 3, 3, 'Tom Brown', 'Processing', '2025-04-05 13:52:55', '789 Pine Ave, City, Country', '2025-04-05 13:52:55', '2025-04-05 13:52:55'),
(4, 4, 4, 'Alice Green', 'Out for delivery', '2025-04-05 13:52:55', '101 Maple Dr, City, Country', '2025-04-05 13:52:55', '2025-04-05 13:52:55'),
(5, 5, 5, 'Bob White', 'Delivered', '2025-04-05 13:52:55', '202 Birch Ln, City, Country', '2025-04-05 13:52:55', '2025-04-05 13:52:55'),
(6, 6, 6, 'Charlie Black', 'In transit', '2025-04-05 13:52:55', '303 Cedar Blvd, City, Country', '2025-04-05 13:52:55', '2025-04-05 13:52:55'),
(7, 7, 7, 'Eve Blue', 'Out for delivery', '2025-04-05 13:52:55', '404 Elm St, City, Country', '2025-04-05 13:52:55', '2025-04-05 13:52:55'),
(8, 8, 8, 'Frank Yellow', 'Delivered', '2025-04-05 13:52:55', '505 Walnut Rd, City, Country', '2025-04-05 13:52:55', '2025-04-05 13:52:55'),
(9, 9, 9, 'Grace Pink', 'Processing', '2025-04-05 13:52:55', '606 Pineapple Ave, City, Country', '2025-04-05 13:52:55', '2025-04-05 13:52:55'),
(10, 10, 10, 'Hank Red', 'Delivered', '2025-04-05 13:52:55', '707 Apple Dr, City, Country', '2025-04-05 13:52:55', '2025-04-05 13:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `menu_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `menu_item_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-04-05 13:33:36', '2025-04-05 13:33:36'),
(2, 1, 2, '2025-04-05 13:33:36', '2025-04-05 13:33:36'),
(3, 2, 3, '2025-04-05 13:33:36', '2025-04-05 13:33:36'),
(4, 2, 4, '2025-04-05 13:33:36', '2025-04-05 13:33:36'),
(5, 3, 5, '2025-04-05 13:33:36', '2025-04-05 13:33:36'),
(6, 3, 6, '2025-04-05 13:33:36', '2025-04-05 13:33:36'),
(7, 4, 7, '2025-04-05 13:33:36', '2025-04-05 13:33:36'),
(8, 4, 8, '2025-04-05 13:33:36', '2025-04-05 13:33:36'),
(9, 5, 9, '2025-04-05 13:33:36', '2025-04-05 13:33:36'),
(10, 5, 10, '2025-04-05 13:33:36', '2025-04-05 13:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `user_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'I am unable to log in to my account.', '2025-04-05 13:50:20', '2025-04-05 13:50:20'),
(2, 2, 'My order has not been delivered yet, I need help tracking it.', '2025-04-05 13:50:20', '2025-04-05 13:50:20'),
(3, 3, 'I received a damaged product, I want to return it.', '2025-04-05 13:50:20', '2025-04-05 13:50:20'),
(4, 4, 'My payment failed, and I was charged incorrectly.', '2025-04-05 13:50:20', '2025-04-05 13:50:20'),
(5, 5, 'I forgot my password and cannot reset it.', '2025-04-05 13:50:20', '2025-04-05 13:50:20'),
(6, 6, 'The item I ordered is out of stock, can I get a refund?', '2025-04-05 13:50:20', '2025-04-05 13:50:20'),
(7, 7, 'I am having trouble accessing my account on the mobile app.', '2025-04-05 13:50:20', '2025-04-05 13:50:20'),
(8, 8, 'I want to update my delivery address, but the system won’t let me.', '2025-04-05 13:50:20', '2025-04-05 13:50:20'),
(9, 9, 'I need support with a billing issue.', '2025-04-05 13:50:20', '2025-04-05 13:50:20'),
(10, 10, 'The product I received does not match the description on the website.', '2025-04-05 13:50:20', '2025-04-05 13:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Smartphone', 599.99, 1, '2025-04-05 13:27:35', '2025-04-05 13:27:35'),
(2, 'Laptop', 999.99, 1, '2025-04-05 13:27:35', '2025-04-05 13:27:35'),
(3, 'T-shirt', 29.99, 2, '2025-04-05 13:27:35', '2025-04-05 13:27:35'),
(4, 'Jeans', 49.99, 2, '2025-04-05 13:27:35', '2025-04-05 13:27:35'),
(5, 'Pizza', 12.99, 3, '2025-04-05 13:27:35', '2025-04-05 13:27:35'),
(6, 'Burger', 7.99, 3, '2025-04-05 13:27:35', '2025-04-05 13:27:35'),
(7, 'Fiction Book', 15.99, 4, '2025-04-05 13:27:35', '2025-04-05 13:27:35'),
(8, 'Science Book', 20.99, 4, '2025-04-05 13:27:35', '2025-04-05 13:27:35'),
(9, 'Washing Machine', 499.99, 5, '2025-04-05 13:27:35', '2025-04-05 13:27:35'),
(10, 'Microwave', 89.99, 5, '2025-04-05 13:27:35', '2025-04-05 13:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_03_14_215923_create_personal_access_tokens_table', 1),
(2, '2025_04_03_124100_create_roles_table', 1),
(3, '2025_04_03_124117_create_permissions_table', 1),
(4, '2025_04_03_124122_create_role_permissions_table', 1),
(5, '2025_04_03_124130_create_users_table', 1),
(6, '2025_04_03_124138_create_staff_table', 1),
(7, '2025_04_03_124144_create_addresses_table', 1),
(8, '2025_04_03_124150_create_orders_table', 1),
(9, '2025_04_03_124157_create_categories_table', 1),
(10, '2025_04_03_124158_create_menus_table', 1),
(11, '2025_04_03_124159_create_order_items_table', 1),
(12, '2025_04_03_124207_create_offers_table', 1),
(13, '2025_04_03_124334_create_favorites_table', 1),
(14, '2025_04_03_124340_create_chats_table', 1),
(15, '2025_04_03_124348_create_calls_table', 1),
(16, '2025_04_03_124408_create_notifications_table', 1),
(17, '2025_04_03_124416_create_issues_table', 1),
(18, '2025_04_03_124457_create_rateds_table', 1),
(19, '2025_04_04_195828_create_deliveries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'You have a new message from support.', '2025-04-05 13:43:37', '2025-04-05 13:43:37'),
(2, 2, 'Your order has been shipped.', '2025-04-05 13:43:37', '2025-04-05 13:43:37'),
(3, 3, 'A new offer is available for you!', '2025-04-05 13:43:37', '2025-04-05 13:43:37'),
(4, 4, 'Your password was successfully updated.', '2025-04-05 13:43:37', '2025-04-05 13:43:37'),
(5, 5, 'You have a new discount available.', '2025-04-05 13:43:37', '2025-04-05 13:43:37'),
(6, 6, 'Your product has been successfully returned.', '2025-04-05 13:43:37', '2025-04-05 13:43:37'),
(7, 7, 'Your delivery is on the way!', '2025-04-05 13:43:37', '2025-04-05 13:43:37'),
(8, 8, 'Your request for cancellation has been processed.', '2025-04-05 13:43:37', '2025-04-05 13:43:37'),
(9, 9, 'Your payment was successful.', '2025-04-05 13:43:37', '2025-04-05 13:43:37'),
(10, 10, 'A new item has been added to your favorite list.', '2025-04-05 13:43:37', '2025-04-05 13:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, '50% Off on Electronics', 'Enjoy 50% off on all electronics including smartphones and laptops.', '2025-04-05 13:31:45', '2025-04-05 13:31:45'),
(2, 'Buy 1 Get 1 Free', 'Buy any T-shirt and get another one for free.', '2025-04-05 13:31:45', '2025-04-05 13:31:45'),
(3, 'Free Delivery on Orders Above $100', 'Get free delivery for all orders above $100 in value.', '2025-04-05 13:31:45', '2025-04-05 13:31:45'),
(4, 'Buy 2 Burgers, Get 1 Free', 'Get a free burger with every two you purchase.', '2025-04-05 13:31:45', '2025-04-05 13:31:45'),
(5, 'Discount on Books', '10% discount on all books in our store.', '2025-04-05 13:31:45', '2025-04-05 13:31:45'),
(6, '20% Off on Home Appliances', 'Enjoy 20% off on select home appliances.', '2025-04-05 13:31:45', '2025-04-05 13:31:45'),
(7, 'Limited Time Offer: 15% Off', 'Limited time only! Get 15% off your total order.', '2025-04-05 13:31:45', '2025-04-05 13:31:45'),
(8, 'Summer Sale', 'Up to 40% off on summer clothing and accessories.', '2025-04-05 13:31:45', '2025-04-05 13:31:45'),
(9, 'New Year Offer', 'Start the year with amazing deals on electronics and accessories.', '2025-04-05 13:31:45', '2025-04-05 13:31:45'),
(10, 'Exclusive VIP Offer', 'Get exclusive access to VIP deals and discounts on select items.', '2025-04-05 13:31:45', '2025-04-05 13:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-04-05 13:25:27', '2025-04-05 13:25:27'),
(2, 2, 2, '2025-04-05 13:25:27', '2025-04-05 13:25:27'),
(3, 3, 3, '2025-04-05 13:25:27', '2025-04-05 13:25:27'),
(4, 4, 4, '2025-04-05 13:25:27', '2025-04-05 13:25:27'),
(5, 5, 5, '2025-04-05 13:25:27', '2025-04-05 13:25:27'),
(6, 6, 6, '2025-04-05 13:25:27', '2025-04-05 13:25:27'),
(7, 7, 7, '2025-04-05 13:25:27', '2025-04-05 13:25:27'),
(8, 8, 8, '2025-04-05 13:25:27', '2025-04-05 13:25:27'),
(9, 9, 9, '2025-04-05 13:25:27', '2025-04-05 13:25:27'),
(10, 10, 10, '2025-04-05 13:25:27', '2025-04-05 13:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `menu` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `menu`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2025-04-05 13:30:56', '2025-04-05 13:30:56'),
(2, 1, 2, 1, '2025-04-05 13:30:56', '2025-04-05 13:30:56'),
(3, 2, 3, 3, '2025-04-05 13:30:56', '2025-04-05 13:30:56'),
(4, 2, 4, 2, '2025-04-05 13:30:56', '2025-04-05 13:30:56'),
(5, 3, 5, 1, '2025-04-05 13:30:56', '2025-04-05 13:30:56'),
(6, 3, 6, 4, '2025-04-05 13:30:56', '2025-04-05 13:30:56'),
(7, 4, 7, 2, '2025-04-05 13:30:56', '2025-04-05 13:30:56'),
(8, 4, 8, 1, '2025-04-05 13:30:56', '2025-04-05 13:30:56'),
(9, 5, 9, 1, '2025-04-05 13:30:56', '2025-04-05 13:30:56'),
(10, 5, 10, 2, '2025-04-05 13:30:56', '2025-04-05 13:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'edit', '2025-04-05 13:13:24', '2025-04-05 13:13:24'),
(2, 'delete', '2025-04-05 13:13:24', '2025-04-05 13:13:24'),
(3, 'view', '2025-04-05 13:13:24', '2025-04-05 13:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rateds`
--

CREATE TABLE `rateds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rateds`
--

INSERT INTO `rateds` (`id`, `user_id`, `order_item_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, 'Excellent quality, would recommend!', '2025-04-05 13:51:57', '2025-04-05 13:51:57'),
(2, 2, 2, 4, 'Good product, but the delivery was late.', '2025-04-05 13:51:57', '2025-04-05 13:51:57'),
(3, 3, 3, 3, 'The item was okay, but it didn’t match the description.', '2025-04-05 13:51:57', '2025-04-05 13:51:57'),
(4, 4, 4, 5, 'Very satisfied with my purchase!', '2025-04-05 13:51:57', '2025-04-05 13:51:57'),
(5, 5, 5, 2, 'The product broke after a week of use.', '2025-04-05 13:51:57', '2025-04-05 13:51:57'),
(6, 6, 6, 4, 'Good, but the color was different from the website image.', '2025-04-05 13:51:57', '2025-04-05 13:51:57'),
(7, 7, 7, 5, 'Perfect, exactly what I was looking for.', '2025-04-05 13:51:57', '2025-04-05 13:51:57'),
(8, 8, 8, 1, 'Not as expected, very disappointed.', '2025-04-05 13:51:57', '2025-04-05 13:51:57'),
(9, 9, 9, 4, 'Great value for the price, will buy again.', '2025-04-05 13:51:57', '2025-04-05 13:51:57'),
(10, 10, 10, 3, 'It’s an okay product, but could be improved.', '2025-04-05 13:51:57', '2025-04-05 13:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2025-04-05 13:10:49', '2025-04-05 13:10:49'),
(2, 'User', '2025-04-05 13:10:49', '2025-04-05 13:10:49'),
(3, 'Staff', '2025-04-05 13:10:49', '2025-04-05 13:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-04-05 13:14:57', '2025-04-05 13:14:57'),
(2, 1, 2, '2025-04-05 13:14:57', '2025-04-05 13:14:57'),
(3, 1, 3, '2025-04-05 13:14:57', '2025-04-05 13:14:57'),
(4, 2, 3, '2025-04-05 13:14:57', '2025-04-05 13:14:57'),
(5, 3, 1, '2025-04-05 13:14:57', '2025-04-05 13:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-04-05 13:22:09', '2025-04-05 13:22:09'),
(2, 2, '2025-04-05 13:22:09', '2025-04-05 13:22:09'),
(3, 3, '2025-04-05 13:22:09', '2025-04-05 13:22:09'),
(4, 4, '2025-04-05 13:22:09', '2025-04-05 13:22:09'),
(5, 5, '2025-04-05 13:22:09', '2025-04-05 13:22:09'),
(6, 6, '2025-04-05 13:22:09', '2025-04-05 13:22:09'),
(7, 7, '2025-04-05 13:22:09', '2025-04-05 13:22:09'),
(8, 8, '2025-04-05 13:22:09', '2025-04-05 13:22:09'),
(9, 9, '2025-04-05 13:22:09', '2025-04-05 13:22:09'),
(10, 10, '2025-04-05 13:22:09', '2025-04-05 13:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `verification_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone_number`, `birth_date`, `verification_token`, `remember_token`, `email_verified_at`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Ali Ahmad', 'ali@gmail.com', '$2y$10$examplehash01', '0790000001', '1990-01-01', NULL, NULL, '2025-04-05 13:18:22', 1, '2025-04-05 13:18:22', '2025-04-05 13:18:22'),
(2, 'Sara Khalid', 'sara@gmail.com', '$2y$10$examplehash02', '0790000002', '1992-02-02', NULL, NULL, '2025-04-05 13:18:22', 2, '2025-04-05 13:18:22', '2025-04-05 13:18:22'),
(3, 'Omar Naser', 'omar@gmail.com', '$2y$10$examplehash03', '0790000003', '1995-03-03', NULL, NULL, NULL, 2, '2025-04-05 13:18:22', '2025-04-05 13:18:22'),
(4, 'Lina Saeed', 'lina@gmail.com', '$2y$10$examplehash04', NULL, '1993-04-04', NULL, NULL, '2025-04-05 13:18:22', 3, '2025-04-05 13:18:22', '2025-04-05 13:18:22'),
(5, 'Hani Zaid', 'hani@gmail.com', '$2y$10$examplehash05', '0790000005', NULL, NULL, NULL, '2025-04-05 13:18:22', 1, '2025-04-05 13:18:22', '2025-04-05 13:18:22'),
(6, 'Mona Rami', 'mona@gmail.com', '$2y$10$examplehash06', '0790000006', '1994-06-06', NULL, NULL, NULL, 2, '2025-04-05 13:18:22', '2025-04-05 13:18:22'),
(7, 'Khaled Amin', 'khaled@gmail.com', '$2y$10$examplehash07', NULL, '1996-07-07', NULL, NULL, '2025-04-05 13:18:22', 3, '2025-04-05 13:18:22', '2025-04-05 13:18:22'),
(8, 'Dana Tarek', 'dana@gmail.com', '$2y$10$examplehash08', '0790000008', '1991-08-08', NULL, NULL, '2025-04-05 13:18:22', 1, '2025-04-05 13:18:22', '2025-04-05 13:18:22'),
(9, 'Fadi Hasan', 'fadi@gmail.com', '$2y$10$examplehash09', '0790000009', NULL, NULL, NULL, NULL, 2, '2025-04-05 13:18:22', '2025-04-05 13:18:22'),
(10, 'Rana Adel', 'rana@gmail.com', '$2y$10$examplehash10', '0790000010', '1997-10-10', NULL, NULL, '2025-04-05 13:18:22', 3, '2025-04-05 13:18:22', '2025-04-05 13:18:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calls_user_id_foreign` (`user_id`),
  ADD KEY `calls_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_user_id_foreign` (`user_id`),
  ADD KEY `chats_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveries_order_id_foreign` (`order_id`),
  ADD KEY `deliveries_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_menu_item_id_foreign` (`menu_item_id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issues_user_id_foreign` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_menu_foreign` (`menu`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rateds`
--
ALTER TABLE `rateds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rateds_user_id_foreign` (`user_id`),
  ADD KEY `rateds_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_permissions_role_id_foreign` (`role_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rateds`
--
ALTER TABLE `rateds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `calls`
--
ALTER TABLE `calls`
  ADD CONSTRAINT `calls_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `calls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deliveries_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `issues`
--
ALTER TABLE `issues`
  ADD CONSTRAINT `issues_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_menu_foreign` FOREIGN KEY (`menu`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rateds`
--
ALTER TABLE `rateds`
  ADD CONSTRAINT `rateds_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rateds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
