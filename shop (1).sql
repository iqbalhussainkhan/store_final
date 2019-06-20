-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 20, 2019 at 02:37 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(2, 'Category 1', 'This is Category 1'),
(3, 'Category 2', 'This is Category 2'),
(4, 'iqbal category', 'this is cateogry added by iqbal');

-- --------------------------------------------------------

--
-- Table structure for table `category_items`
--

CREATE TABLE `category_items` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `zone_no` char(1) DEFAULT '0',
  `column_no` int(11) DEFAULT '0',
  `shelf_no` int(11) DEFAULT '0',
  `carton_no` varchar(255) DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `quantity_unit` varchar(255) NOT NULL DEFAULT '0',
  `total_quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_items`
--

INSERT INTO `category_items` (`id`, `category_id`, `description`, `model_no`, `brand_name`, `photo`, `zone_no`, `column_no`, `shelf_no`, `carton_no`, `quantity`, `quantity_unit`, `total_quantity`) VALUES
(1, 4, 'Shoes', 'Ut quis eveniet ali', 'Cathleen Rivers', '11_1551343651_1556513942.PNG', 'R', 10, 7, 'Sunt aspernatur mol', 1000, 'M', 1000),
(2, 4, 'Clothes', 'In laboriosam elit', 'Thomas Santana', '11_1556513964.PNG', 'E', 24, 7, 'Voluptatem delectus', 900, 'M', 1000),
(3, 4, 'Books', 'Suscipit ad itaque o', 'Marny Salazar', '11_1551343014_1556513979.PNG', 'T', 33, 1, 'Facere minima iusto', 400, 'No\'s', 1000),
(4, 3, 'C2Item1', 'Occaecat sed aliquam', 'Silas Bennett', 'shopping-cart_1556514012.png', 'L', 80, 1, 'Aut blanditiis moles', 1700, 'M', 2000),
(5, 3, 'C2Item2', 'Vero ab sunt aliquam', 'Leah Walls', '11_1551343014_1556514027.PNG', 'G', 64, 10, 'Doloribus necessitat', 1800, 'No\'s', 2000),
(6, 2, 'C1Item1', 'Et consequatur Aut', 'Brent Rasmussen', '11_1556514051.PNG', 'A', 79, 1, 'Do est repudiandae m', 2970, 'No\'s', 3000),
(7, 2, 'C1Item2', 'Veniam fuga Eum it', 'Hop Pearson', '11_1556514066.PNG', 'K', 6, 8, 'Eum dolore sed aut b', 3000, 'No\'s', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `form_items`
--

CREATE TABLE `form_items` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_items`
--

INSERT INTO `form_items` (`id`, `form_id`, `item_id`, `quantity`) VALUES
(1, 1, 3, 1000),
(2, 1, 2, 1000),
(3, 1, 1, 1000),
(4, 1, 5, 2000),
(5, 1, 4, 2000),
(6, 1, 7, 3000),
(7, 1, 6, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `link`, `created_at`) VALUES
(1, 'Goods Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-04-29 01:20:55'),
(2, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-04-29 01:21:11'),
(3, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-04-29 01:21:15'),
(4, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-04-29 01:21:23'),
(5, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-04-29 01:21:27'),
(6, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-04-29 01:21:29'),
(7, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-04-29 01:21:30'),
(8, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-04-29 01:21:32'),
(9, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-04-29 01:21:33'),
(10, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-04-29 01:21:34'),
(11, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-04-29 01:21:35'),
(12, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-04-29 01:21:36'),
(13, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-04-29 01:21:37'),
(14, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-04-29 01:21:42'),
(15, 'Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-04-29 01:21:45'),
(16, 'Material Request: Project Iqbal', 'Engineer Requested Materials. Please Take Required Action', 'projects/pendingMaterialRequests', '2019-04-29 01:25:18'),
(17, 'Request Approved', 'Project Store Material Request Approved', 'projects/engineerStoreOrders', '2019-04-29 01:25:40'),
(18, 'Request Approved', 'Project Store Material Request Approved', 'projects/engineerStoreOrders', '2019-04-29 01:25:42'),
(19, 'Request Approved', 'Project Store Material Request Approved', 'projects/engineerStoreOrders', '2019-04-29 01:25:43'),
(20, 'Request Approved', 'Project Store Material Request Approved', 'projects/engineerStoreOrders', '2019-04-29 01:25:44'),
(21, 'Request Approved', 'Project Store Material Request Approved', 'projects/engineerStoreOrders', '2019-04-29 01:25:47'),
(22, 'Request Rejected', 'Project Store Request Rejectd', 'projects/engineerStoreOrders', '2019-04-29 01:25:48'),
(23, 'Items Return Requested', 'Items Return Requested For Project Iqbal', '/storeReturnedItems', '2019-04-29 01:26:38'),
(24, 'Request Rejected', 'Items Returned Request Rejected By StoreKeeper', '/reports/projectInventoryList/5', '2019-04-29 01:26:46'),
(25, 'Items Return Requested', 'Items Return Requested For Project Iqbal', '/storeReturnedItems', '2019-04-29 01:27:07'),
(26, 'Items Returned', 'Items Returned To Store . Please Take Further Actions', '/returnedItems', '2019-04-29 01:27:13'),
(27, 'Items Return Requested', 'Items Return Requested For Project Iqbal', '/storeReturnedItems', '2019-04-29 01:28:01'),
(28, 'Items Returned', 'Items Returned To Store . Please Take Further Actions', '/returnedItems', '2019-04-29 01:28:05'),
(29, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-04-29 01:35:22'),
(30, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-04-29 01:35:32'),
(31, 'Material Request: Project Iqbal', 'Engineer Requested Materials. Please Take Required Action', 'projects/pendingMaterialRequests', '2019-05-01 00:16:55'),
(32, 'Request Approved', 'Project Store Material Request Approved', 'projects/engineerStoreOrders', '2019-05-01 00:23:51'),
(33, 'Items Return Requested', 'Items Return Requested For Project Iqbal', '/storeReturnedItems', '2019-05-01 01:06:03'),
(34, 'Items Returned', 'Items Returned To Store . Please Take Further Actions', '/returnedItems', '2019-05-01 01:06:35'),
(35, 'Goods Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-01 01:29:31'),
(36, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-01 01:30:01'),
(37, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-05-01 01:30:05'),
(38, 'Items Return Requested', 'Items Return Requested For Project Iqbal', '/storeReturnedItems', '2019-05-05 01:11:05'),
(39, 'Items Returned', 'Items Returned To Store . Please Take Further Actions', '/returnedItems', '2019-05-05 01:16:19'),
(40, 'Request Rejected', 'Items Returned Request Rejected By Store Manager', '/reports/projectInventoryList/5', '2019-05-05 01:50:55'),
(41, 'Request Rejected', 'Items Returned Request Rejected By Store Manager', '/reports/projectInventoryList/5', '2019-05-05 01:51:02'),
(42, 'Items Return Requested', 'Items Return Requested For Project Iqbal', '/storeReturnedItems', '2019-05-05 01:53:24'),
(43, 'Items Returned', 'Items Returned To Store . Please Take Further Actions', '/returnedItems', '2019-05-05 01:53:46'),
(44, 'Request Rejected', 'Items Returned Request Rejected By Store Manager', '/reports/projectInventoryList/5', '2019-05-05 01:53:51'),
(45, 'Request Rejected', 'Items Returned Request Rejected By Store Manager', '/reports/projectInventoryList/5', '2019-05-05 01:53:51'),
(46, 'Goods Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 02:11:07'),
(47, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 02:11:13'),
(48, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-05-05 02:11:14'),
(49, 'Materials Rejected', 'Project : Project Iqbal. Engineer rejected materials', 'requestedGoods/MyOrders', '2019-05-05 02:49:26'),
(50, 'Goods Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 02:52:49'),
(51, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 02:52:55'),
(52, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-05-05 02:52:56'),
(53, 'Materials Rejected', 'Project : Project Iqbal. Engineer rejected materials', 'requestedGoods/PendingRequests', '2019-05-05 02:53:17'),
(54, 'Goods Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 02:53:49'),
(55, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 02:53:56'),
(56, 'Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-05 02:56:55'),
(57, 'Goods Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 02:57:14'),
(58, 'Request Rejected', 'Rejected By Procurement Manager', 'requestedGoods/MyOrders', '2019-05-05 02:57:27'),
(59, 'Goods Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 02:57:46'),
(60, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 03:00:13'),
(61, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-05-05 03:00:14'),
(62, 'Materials Rejected', 'Project : Project Iqbal. Engineer rejected materials', 'requestedGoods/PendingRequests', '2019-05-05 03:00:58'),
(63, 'Material Request: Project Iqbal', 'Engineer Requested Materials. Please Take Required Action', 'projects/pendingMaterialRequests', '2019-05-05 03:52:41'),
(64, 'Request Approved', 'Project Store Material Request Approved', 'projects/engineerStoreOrders', '2019-05-05 03:53:10'),
(65, 'Idle Items Requested', 'Items Requested For P45', 'projects/idleItemsRequests', '2019-05-05 03:59:37'),
(66, 'Request Approved ', 'Idle Items Request Approved By Store Keeper', 'projects/myIdleItemsRequest', '2019-05-05 04:01:08'),
(67, 'Idle Items Requested', 'Items Requested For P45', 'projects/idleItemsRequests', '2019-05-05 04:14:15'),
(68, 'Request Approved ', 'Idle Items Request Approved By Store Keeper', 'projects/myIdleItemsRequest', '2019-05-05 04:14:22'),
(69, 'Material Request: P45', 'Engineer Requested Materials. Please Take Required Action', 'projects/pendingMaterialRequests', '2019-05-05 04:30:03'),
(70, 'Goods Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 04:30:34'),
(71, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 04:30:38'),
(72, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-05-05 04:30:40'),
(73, 'Goods Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 04:34:55'),
(74, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-05 04:35:00'),
(75, 'Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-05 04:35:03'),
(76, 'Request Approved', 'Project Store Material Request Approved', 'projects/engineerStoreOrders', '2019-05-05 04:46:27'),
(77, 'Idle Items Requested', 'Items Requested For Project Iqbal', 'projects/idleItemsRequests', '2019-05-05 04:47:47'),
(78, 'Request Approved ', 'Idle Items Request Approved By Store Keeper', 'projects/myIdleItemsRequest', '2019-05-05 04:48:06'),
(79, 'Items Return Requested', 'Items Return Requested For Project Iqbal', '/storeReturnedItems', '2019-05-05 05:12:25'),
(80, 'Items Returned', 'Items Returned To Store . Please Take Further Actions', '/returnedItems', '2019-05-05 05:12:46'),
(81, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-05 07:23:41'),
(82, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-05 07:26:24'),
(83, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-05 08:09:21'),
(84, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-05 08:09:29'),
(85, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-05 08:26:15'),
(86, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-05 08:32:30'),
(87, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-05 09:19:25'),
(88, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-05 09:19:35'),
(89, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-08 01:45:08'),
(90, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-08 01:58:53'),
(91, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-08 02:10:14'),
(92, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-08 02:10:20'),
(93, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-08 03:16:01'),
(94, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:16:07'),
(95, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:17:56'),
(96, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:18:35'),
(97, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:18:59'),
(98, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:19:43'),
(99, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:20:11'),
(100, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:20:47'),
(101, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-08 03:21:44'),
(102, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:21:48'),
(103, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-08 03:22:26'),
(104, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:22:28'),
(105, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:22:32'),
(106, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:23:16'),
(107, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:25:08'),
(108, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:25:31'),
(109, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:26:00'),
(110, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:26:01'),
(111, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:42:14'),
(112, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:44:49'),
(113, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyOrders', '2019-05-08 03:44:59'),
(114, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-08 03:45:01'),
(115, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-08 03:48:21'),
(116, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyToolsOrders', '2019-05-08 03:48:37'),
(117, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyToolsOrders', '2019-05-08 03:48:38'),
(118, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyToolsOrders', '2019-05-08 03:49:22'),
(119, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyToolsOrders', '2019-05-08 03:49:25'),
(120, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyToolsOrders', '2019-05-08 03:49:38'),
(121, 'Idle Items Requested', 'Items Requested For Project Iqbal', 'projects/idleToolsRequests', '2019-05-08 05:32:20'),
(122, 'Idle Items Requested', 'Items Requested For Project Iqbal', 'projects/idleToolsRequests', '2019-05-08 05:32:53'),
(123, 'Idle Tools Requested', 'Tools Requested For Project Iqbal', 'projects/idleToolsRequests', '2019-05-08 05:34:15'),
(124, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-08 06:20:48'),
(125, 'Idle Tools Requested', 'Tools Requested For Project Iqbal', 'projects/idleToolsRequests', '2019-05-08 06:25:42'),
(126, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-08 06:27:23'),
(127, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-08 07:19:02'),
(128, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-08 07:19:20'),
(129, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-08 07:22:17'),
(130, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-08 07:22:27'),
(131, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-08 07:24:19'),
(132, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-08 07:24:24'),
(133, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-08 07:31:35'),
(134, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-08 07:31:41'),
(135, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-08 07:36:39'),
(136, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-08 07:40:01'),
(137, 'Idle Tools Requested', 'Tools Requested For Project Iqbal', 'projects/idleToolsRequests', '2019-05-08 07:44:52'),
(138, 'Request Rejected ', 'Idle Tool Request Rejected By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-08 07:51:39'),
(139, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-08 07:51:57'),
(140, 'Items Return Requested', 'Items Return Requested For Project Iqbal', '/storeReturnedItems', '2019-05-09 02:16:36'),
(141, 'Items Return Requested', 'Items Return Requested For Project Iqbal', '/storeReturnedItems', '2019-05-09 02:16:42'),
(142, 'Tool Return Requested', 'Tool Return Requested For Project Iqbal', '/storeReturnedTools', '2019-05-09 02:30:34'),
(143, 'Tool Returned', 'Tool Returned To Store . Please Take Further Actions', '/returnedTools', '2019-05-09 03:58:35'),
(144, 'Tool Return Requested', 'Tool Return Requested For P45', '/storeReturnedTools', '2019-05-09 04:08:19'),
(145, 'Tool Returned', 'Tool Returned To Store . Please Take Further Actions', '/returnedTools', '2019-05-09 04:08:43'),
(146, 'Tool Return Requested', 'Tool Return Requested For Project Iqbal', '/storeReturnedTools', '2019-05-09 05:19:31'),
(147, 'Tool Return Requested', 'Tool Return Requested For Project Iqbal', '/storeReturnedTools', '2019-05-09 05:19:40'),
(148, 'Tool Returned', 'Tool Returned To Store . Please Take Further Actions', '/returnedTools', '2019-05-09 05:20:00'),
(149, 'Tool Return Requested', 'Tool Return Requested For Project Iqbal', '/storeReturnedTools', '2019-05-09 05:27:58'),
(150, 'Tool Return Requested', 'Tool Return Requested For Project Iqbal', '/storeReturnedTools', '2019-05-09 05:32:05'),
(151, 'Request Rejected', 'Tools Returned Request Rejected By StoreKeeper', '/reports/projectToolsList', '2019-05-09 05:32:27'),
(152, 'Tool Returned', 'Tool Returned To Store . Please Take Further Actions', '/returnedTools', '2019-05-09 05:32:45'),
(153, 'Tool Returned', 'Tool Returned To Store . Please Take Further Actions', '/returnedTools', '2019-05-09 05:32:47'),
(154, 'Request Rejected', 'Tool Returned Request Rejected By Store Manager', '/reports/projectToolsList', '2019-05-09 05:55:28'),
(155, 'Request Rejected', 'Tool Returned Request Rejected By Store Manager', '/reports/projectToolsList', '2019-05-09 05:55:29'),
(156, 'Request Rejected', 'Tool Returned Request Rejected By Store Manager', '/reports/projectToolsList', '2019-05-09 05:55:54'),
(157, 'Request Rejected', 'Tool Returned Request Rejected By Store Manager', '/reports/projectToolsList', '2019-05-09 05:55:54'),
(158, 'Request Rejected', 'Tool Returned Request Rejected By Store Manager', '/reports/projectToolsList', '2019-05-09 05:56:24'),
(159, 'Request Rejected', 'Tool Returned Request Rejected By Store Manager', '/reports/projectToolsList', '2019-05-09 05:56:24'),
(160, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-09 05:59:06'),
(161, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-09 05:59:14'),
(162, 'Tool Return Requested', 'Tool Return Requested For Project Iqbal', '/storeReturnedTools', '2019-05-09 06:00:51'),
(163, 'Tool Returned', 'Tool Returned To Store . Please Take Further Actions', '/returnedTools', '2019-05-09 06:01:05'),
(164, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:36:56'),
(165, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:42:21'),
(166, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:42:21'),
(167, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:42:21'),
(168, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-12 07:42:21'),
(169, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:42:21'),
(170, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-12 07:42:21'),
(171, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:42:21'),
(172, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:44:38'),
(173, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:44:49'),
(174, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:47:06'),
(175, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:47:48'),
(176, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:47:48'),
(177, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:47:48'),
(178, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:47:48'),
(179, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:47:48'),
(180, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:47:48'),
(181, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:50:06'),
(182, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:50:06'),
(183, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:50:06'),
(184, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:50:06'),
(185, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:50:06'),
(186, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:50:06'),
(187, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:50:06'),
(188, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:50:07'),
(189, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:50:07'),
(190, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:50:07'),
(191, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:50:07'),
(192, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:50:07'),
(193, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-12 07:50:07'),
(194, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:50:07'),
(195, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-12 07:50:07'),
(196, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:50:08'),
(197, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:52:03'),
(198, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:52:03'),
(199, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:52:03'),
(200, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:52:36'),
(201, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:52:36'),
(202, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:52:36'),
(203, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:57:01'),
(204, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:57:01'),
(205, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:57:01'),
(206, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:57:01'),
(207, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:57:01'),
(208, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:57:01'),
(209, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:57:01'),
(210, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-12 07:57:02'),
(211, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-12 07:57:02'),
(212, 'Project Iqbal/C2Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:33:44'),
(213, 'Project Iqbal/C2Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:33:44'),
(214, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:33:44'),
(215, 'Project Iqbal/C2Item2item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:33:45'),
(216, 'Project Iqbal/C2Item2item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:33:45'),
(217, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:33:45'),
(218, 'Project Iqbal/C1Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:33:45'),
(219, 'Project Iqbal/C1Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:33:45'),
(220, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:33:45'),
(221, 'P45/C2Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-13 01:33:45'),
(222, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:33:45'),
(223, 'P45/Booksitem Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-13 01:33:46'),
(224, 'Project Item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:33:46'),
(225, 'Item: Clothes Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:42:01'),
(226, 'Item: Clothes Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:42:01'),
(227, 'Project Iqbal/Clothesitem Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:42:01'),
(228, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:42:01'),
(229, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:42:01'),
(230, 'Project Iqbal/C2Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:42:01'),
(231, 'Item: C2Item2 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:42:01'),
(232, 'Item: C2Item2 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:42:02'),
(233, 'Project Iqbal/C2Item2item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:42:02'),
(234, 'Item: C1Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:42:02'),
(235, 'Item: C1Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:42:02'),
(236, 'Project Iqbal/C1Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:42:02'),
(237, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-13 01:42:02'),
(238, 'P45/C2Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:42:02'),
(239, 'Item: Books Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-13 01:42:02'),
(240, 'P45/Booksitem Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:42:02'),
(241, 'Item: Clothes Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:43:34'),
(242, 'Item: Clothes Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:43:34'),
(243, 'Project Iqbal/Clothesitem Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:43:35'),
(244, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:43:35'),
(245, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:43:35'),
(246, 'Project Iqbal/C2Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:43:35'),
(247, 'Item: C2Item2 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:43:35'),
(248, 'Item: C2Item2 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:43:35'),
(249, 'Project Iqbal/C2Item2item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:43:35'),
(250, 'Item: C1Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:43:35'),
(251, 'Item: C1Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:43:35'),
(252, 'Project Iqbal/C1Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:43:36'),
(253, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-13 01:43:36'),
(254, 'P45/C2Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:43:36'),
(255, 'Item: Books Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-13 01:43:36'),
(256, 'P45/Booksitem Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:43:36'),
(257, 'Item: Clothes Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:52:22'),
(258, 'Item: Clothes Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:52:22'),
(259, 'Project Iqbal/Clothesitem Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:52:22'),
(260, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:52:22'),
(261, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:52:22'),
(262, 'Project Iqbal/C2Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:52:22'),
(263, 'Item: C2Item2 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:52:22'),
(264, 'Item: C2Item2 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:52:22'),
(265, 'Project Iqbal/C2Item2item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:52:22'),
(266, 'Item: C1Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:52:23'),
(267, 'Item: C1Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 01:52:23'),
(268, 'Project Iqbal/C1Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:52:23'),
(269, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-13 01:52:23'),
(270, 'P45/C2Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:52:23'),
(271, 'Item: Books Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-13 01:52:23'),
(272, 'P45/Booksitem Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 01:52:23'),
(273, 'Item: C2Item2 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 06:16:53'),
(274, 'Item: C2Item2 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-05-13 06:16:53'),
(275, 'Project Iqbal/C2Item2item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 06:16:53'),
(276, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-13 06:16:53'),
(277, 'P45/C2Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 06:16:53'),
(278, 'Item: Books Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/12', '2019-05-13 06:16:54'),
(279, 'P45/Booksitem Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-05-13 06:16:54'),
(280, 'Items Return Requested', 'Items Return Requested For Project Iqbal', '/storeReturnedItems', '2019-05-13 06:40:02'),
(281, 'Request Rejected', 'Items Returned Request Rejected By StoreKeeper', '/reports/projectInventoryList/5', '2019-05-13 06:40:33'),
(282, 'Request Rejected', 'Items Returned Request Rejected By StoreKeeper', '/reports/projectInventoryList/5', '2019-05-13 06:40:36'),
(283, 'Items Returned', 'Items Returned To Store . Please Take Further Actions', '/returnedItems', '2019-05-13 06:40:38'),
(284, 'Request Rejected', 'Items Returned Request Rejected By StoreKeeper', '/reports/projectInventoryList/5', '2019-05-13 06:43:21'),
(285, 'Request Rejected', 'Items Returned Request Rejected By Store Manager', '/reports/projectInventoryList/5', '2019-05-13 06:46:22'),
(286, 'Request Rejected', 'Items Returned Request Rejected By Store Manager', '/reports/projectInventoryList/5', '2019-05-13 06:46:22'),
(287, 'Idle Tools Requested', 'Tools Requested For Project Iqbal', 'projects/idleToolsRequests', '2019-05-13 07:06:53'),
(288, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-13 07:07:31'),
(289, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-13 07:07:32'),
(290, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-14 03:06:30'),
(291, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-14 03:07:01'),
(292, 'Goods Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-14 03:17:10'),
(293, 'Request Approved', 'Procurement Accepted Goods Request. Please Take Required Action', 'requestedGoods/PendingRequests', '2019-05-14 03:17:25'),
(294, 'Request Approved', 'Your Request is Approved', 'requestedGoods/MyOrders', '2019-05-14 03:17:26'),
(295, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-14 03:17:54'),
(296, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-14 03:18:09'),
(297, 'Tool Rejected', 'Project : . Engineer rejected Tool', 'requestedGoods/PendingToolsRequests', '2019-05-14 03:25:52'),
(298, 'Tool Rejected', 'Project : . Engineer rejected Tool', 'requestedGoods/PendingToolsRequests', '2019-05-14 03:27:16'),
(299, 'Materials Rejected', 'Project : Project Iqbal. Engineer rejected materials', 'requestedGoods/PendingRequests', '2019-05-14 03:27:32'),
(300, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-14 03:46:02'),
(301, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-14 03:46:26'),
(302, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-14 03:46:29'),
(303, 'Request Rejected ', 'Idle Tool Request Rejected By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-14 03:46:31'),
(304, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-14 07:12:10'),
(305, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-14 07:12:23'),
(306, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-14 07:12:25'),
(307, 'Tools/Assets Request Rejected', 'Rejected By Store Manager', 'requestedGoods/MyToolsOrders', '2019-05-14 07:12:26'),
(308, 'Tool Rejected', 'Project : . Engineer rejected Tool', 'requestedGoods/PendingToolsRequests', '2019-05-14 07:12:45'),
(309, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-14 07:21:08'),
(310, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-14 07:21:15'),
(311, 'Tool Rejected', 'Project : . Engineer rejected Tool', 'requestedGoods/PendingToolsRequests', '2019-05-14 07:22:15'),
(312, 'Tool Return Requested', 'Tool Return Requested For Project Iqbal', '/storeReturnedTools', '2019-05-14 07:25:15'),
(313, 'Tool Return Requested', 'Tool Return Requested For Project Iqbal', '/storeReturnedTools', '2019-05-14 07:25:21'),
(314, 'Tool Returned', 'Tool Returned To Store . Please Take Further Actions', '/returnedTools', '2019-05-14 07:25:48'),
(315, 'Tool Returned', 'Tool Returned To Store . Please Take Further Actions', '/returnedTools', '2019-05-14 07:25:50'),
(316, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-14 07:50:18'),
(317, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-14 07:50:24'),
(318, 'Tool Rejected', 'Project : . Engineer rejected Tool', 'requestedGoods/PendingToolsRequests', '2019-05-14 07:50:48'),
(319, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-14 07:52:55'),
(320, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-14 07:53:05'),
(321, 'Tool Rejected', 'Project : Project Iqbal. Engineer rejected Tool', 'requestedGoods/PendingToolsRequests', '2019-05-14 07:53:10'),
(322, 'Items Return Requested', 'Items Return Requested For Project Iqbal', '/storeReturnedItems', '2019-05-16 01:40:30'),
(323, 'Items Returned', 'Items Returned To Store . Please Take Further Actions', '/returnedItems', '2019-05-16 01:40:44'),
(324, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-16 05:57:21'),
(325, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-16 05:57:57'),
(326, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-16 06:19:24'),
(327, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-16 06:19:26'),
(328, 'Idle Tools Requested', 'Tools Requested For P45', 'projects/idleToolsRequests', '2019-05-16 06:19:28'),
(329, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-16 06:19:54'),
(330, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-16 06:19:56'),
(331, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-16 06:19:57'),
(332, 'Idle Tools Requested', 'Tools Requested For P441', 'projects/idleToolsRequests', '2019-05-27 01:30:34'),
(333, 'Request Approved ', 'Idle Tools Request Approved By Store Keeper', 'projects/myIdleToolsRequest', '2019-05-27 01:33:12'),
(334, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-05-27 01:59:12'),
(335, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-05-27 01:59:25'),
(336, 'Item: Clothes Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-06-18 00:42:11'),
(337, 'Item: Clothes Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-06-18 00:42:11'),
(338, 'Project Iqbal/Clothesitem Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-06-18 00:42:11'),
(339, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-06-18 00:42:11'),
(340, 'Item: C2Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-06-18 00:42:11'),
(341, 'Project Iqbal/C2Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-06-18 00:42:11'),
(342, 'Item: C2Item2 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-06-18 00:42:11'),
(343, 'Item: C2Item2 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-06-18 00:42:11'),
(344, 'Project Iqbal/C2Item2item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-06-18 00:42:11'),
(345, 'Item: C1Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-06-18 00:42:12'),
(346, 'Item: C1Item1 Added To Idle List', 'Item had more than one month in store without use', 'reports/projectInventoryList/5', '2019-06-18 00:42:12'),
(347, 'Project Iqbal/C1Item1item Added To Idle List', 'Item had more than one month in store without use', 'reports/allProjectsInventory', '2019-06-18 00:42:12'),
(348, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-06-19 00:09:41'),
(349, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-06-19 00:09:47'),
(350, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-06-19 00:27:55'),
(351, 'Tools/Assets Requested', 'Engineer Requested Goods. Please Take Required Action', 'requestedGoods/PendingToolsRequests', '2019-06-19 00:28:53'),
(352, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-06-19 00:29:07'),
(353, 'Tools/Assets Request Approved', 'Your Request For Tools/Assets Approved', 'requestedGoods/MyToolsOrders', '2019-06-19 00:29:09'),
(354, 'Tool Return Requested', 'Tool Return Requested For P45', '/storeReturnedTools', '2019-06-19 03:31:15'),
(355, 'Tool Returned', 'Tool Returned To Store . Please Take Further Actions', '/returnedTools', '2019-06-19 03:31:35'),
(356, 'Tool Return Requested', 'Tool Return Requested For Project Iqbal', '/storeReturnedTools', '2019-06-19 04:13:44'),
(357, 'Tool Returned', 'Tool Returned To Store . Please Take Further Actions', '/returnedTools', '2019-06-19 04:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `notification_users`
--

CREATE TABLE `notification_users` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `is_read` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_users`
--

INSERT INTO `notification_users` (`id`, `notification_id`, `user_id`, `project_id`, `is_read`, `created_at`) VALUES
(1, 1, 2, 0, 1, '2019-04-29 05:21:04'),
(2, 1, 3, 0, 1, '2019-04-29 05:21:04'),
(3, 2, 1, 0, 0, '2019-04-29 01:21:11'),
(4, 2, 3, 0, 1, '2019-04-30 04:36:40'),
(5, 3, 15, 5, 1, '2019-04-29 05:23:29'),
(6, 4, 1, 0, 0, '2019-04-29 01:21:23'),
(7, 4, 3, 0, 1, '2019-04-30 04:36:40'),
(8, 5, 15, 5, 1, '2019-04-29 05:23:29'),
(9, 6, 1, 0, 0, '2019-04-29 01:21:29'),
(10, 6, 3, 0, 1, '2019-04-30 04:36:40'),
(11, 7, 15, 5, 1, '2019-04-29 05:23:29'),
(12, 8, 1, 0, 0, '2019-04-29 01:21:32'),
(13, 8, 3, 0, 1, '2019-04-30 04:36:40'),
(14, 9, 15, 5, 1, '2019-04-29 05:23:29'),
(15, 10, 1, 0, 0, '2019-04-29 01:21:34'),
(16, 10, 3, 0, 1, '2019-04-30 04:36:40'),
(17, 11, 15, 5, 1, '2019-04-29 05:23:29'),
(18, 12, 1, 0, 1, '2019-05-07 07:05:20'),
(19, 12, 3, 0, 1, '2019-04-30 04:36:40'),
(20, 13, 15, 5, 1, '2019-04-29 05:23:29'),
(21, 14, 1, 0, 0, '2019-04-29 01:21:42'),
(22, 14, 3, 0, 1, '2019-04-30 04:36:40'),
(23, 15, 15, 5, 1, '2019-04-29 05:21:52'),
(24, 16, 6, 5, 1, '2019-04-29 05:25:38'),
(25, 17, 15, 5, 1, '2019-05-13 05:47:17'),
(26, 18, 15, 5, 1, '2019-05-13 05:47:17'),
(27, 19, 15, 5, 1, '2019-05-05 06:01:29'),
(28, 20, 15, 5, 1, '2019-05-05 06:01:24'),
(29, 21, 15, 5, 1, '2019-05-13 05:47:17'),
(30, 22, 15, 5, 1, '2019-04-29 05:25:53'),
(31, 23, 6, 5, 1, '2019-04-29 05:26:42'),
(32, 24, 15, 5, 1, '2019-05-13 05:47:17'),
(33, 25, 6, 5, 0, '2019-04-29 01:27:07'),
(34, 26, 1, 0, 0, '2019-04-29 01:27:13'),
(35, 26, 3, 0, 1, '2019-04-30 04:36:40'),
(36, 27, 6, 5, 1, '2019-04-29 05:33:06'),
(37, 28, 1, 0, 1, '2019-04-29 05:28:50'),
(38, 28, 3, 0, 1, '2019-04-29 05:28:50'),
(39, 29, 1, 0, 1, '2019-04-29 05:35:27'),
(40, 29, 3, 0, 1, '2019-04-29 05:35:27'),
(41, 30, 15, 0, 1, '2019-05-13 05:47:17'),
(42, 31, 6, 5, 0, '2019-05-01 00:16:55'),
(43, 32, 15, 5, 1, '2019-05-05 05:57:34'),
(44, 33, 6, 5, 0, '2019-05-01 01:06:03'),
(45, 34, 1, 0, 0, '2019-05-01 01:06:35'),
(46, 34, 3, 0, 1, '2019-05-13 10:25:40'),
(47, 35, 2, 0, 0, '2019-05-01 01:29:31'),
(48, 35, 3, 0, 1, '2019-05-13 10:25:40'),
(49, 36, 1, 0, 0, '2019-05-01 01:30:01'),
(50, 36, 3, 0, 1, '2019-05-13 10:25:40'),
(51, 37, 15, 5, 1, '2019-05-01 05:30:20'),
(52, 38, 6, 5, 1, '2019-05-05 05:11:21'),
(53, 39, 1, 0, 1, '2019-05-05 06:02:24'),
(54, 39, 3, 0, 1, '2019-05-05 06:02:24'),
(55, 40, 15, 5, 1, '2019-05-05 06:06:25'),
(56, 41, 15, 5, 1, '2019-05-07 07:05:05'),
(57, 42, 6, 5, 1, '2019-05-05 05:53:40'),
(58, 43, 1, 0, 1, '2019-05-05 05:56:11'),
(59, 43, 3, 0, 1, '2019-05-05 05:56:11'),
(60, 44, 15, 5, 1, '2019-05-05 06:06:28'),
(61, 45, 6, 5, 1, '2019-05-07 07:05:24'),
(62, 46, 2, 0, 1, '2019-05-05 06:11:12'),
(63, 46, 3, 0, 1, '2019-05-05 06:11:12'),
(64, 47, 1, 0, 0, '2019-05-05 02:11:13'),
(65, 47, 3, 0, 1, '2019-05-13 10:25:40'),
(66, 48, 15, 5, 1, '2019-05-05 06:11:19'),
(67, 49, 1, 0, 1, '2019-05-05 06:51:28'),
(68, 49, 3, 0, 1, '2019-05-05 06:51:28'),
(69, 50, 2, 0, 1, '2019-05-05 06:52:54'),
(70, 50, 3, 0, 1, '2019-05-05 06:52:54'),
(71, 51, 1, 0, 0, '2019-05-05 02:52:55'),
(72, 51, 3, 0, 1, '2019-05-13 10:25:40'),
(73, 52, 15, 5, 1, '2019-05-05 06:53:11'),
(74, 53, 1, 0, 1, '2019-05-05 06:53:22'),
(75, 53, 3, 0, 1, '2019-05-05 06:53:22'),
(76, 54, 2, 0, 1, '2019-05-05 06:53:54'),
(77, 54, 3, 0, 1, '2019-05-05 06:53:54'),
(78, 55, 1, 0, 0, '2019-05-05 02:53:56'),
(79, 55, 3, 0, 1, '2019-05-13 10:25:40'),
(80, 56, 15, 5, 1, '2019-05-07 07:05:02'),
(81, 57, 2, 0, 1, '2019-05-05 06:57:19'),
(82, 57, 3, 0, 1, '2019-05-05 06:57:19'),
(83, 58, 15, 5, 1, '2019-05-07 07:04:59'),
(84, 59, 2, 0, 1, '2019-05-05 06:57:52'),
(85, 59, 3, 0, 1, '2019-05-05 06:57:52'),
(86, 60, 1, 0, 0, '2019-05-05 03:00:13'),
(87, 60, 3, 0, 1, '2019-05-13 10:25:40'),
(88, 61, 15, 5, 1, '2019-05-05 07:00:23'),
(89, 62, 1, 0, 1, '2019-05-05 07:01:17'),
(90, 62, 3, 0, 1, '2019-05-05 07:01:17'),
(91, 63, 6, 5, 1, '2019-05-05 07:53:08'),
(92, 64, 5, 5, 1, '2019-05-05 07:53:23'),
(93, 65, 6, 5, 1, '2019-05-05 08:01:00'),
(94, 66, 5, 12, 1, '2019-05-05 08:01:17'),
(95, 67, 6, 5, 1, '2019-05-05 08:42:46'),
(96, 68, 5, 12, 1, '2019-05-05 08:14:27'),
(97, 69, 6, 12, 1, '2019-05-05 08:46:23'),
(98, 70, 2, 0, 0, '2019-05-05 04:30:34'),
(99, 70, 3, 0, 1, '2019-05-13 10:25:40'),
(100, 71, 1, 0, 0, '2019-05-05 04:30:38'),
(101, 71, 3, 0, 1, '2019-05-13 10:25:40'),
(102, 72, 5, 12, 1, '2019-05-05 08:30:43'),
(103, 73, 2, 0, 1, '2019-05-05 08:34:59'),
(104, 73, 3, 0, 1, '2019-05-05 08:34:59'),
(105, 74, 1, 0, 1, '2019-05-05 08:42:10'),
(106, 74, 3, 0, 1, '2019-05-05 08:42:10'),
(107, 75, 5, 12, 1, '2019-05-05 08:35:07'),
(108, 76, 5, 12, 1, '2019-05-05 08:47:18'),
(109, 77, 6, 12, 1, '2019-05-05 08:48:03'),
(110, 78, 15, 5, 1, '2019-05-05 08:48:19'),
(111, 79, 6, 5, 1, '2019-05-05 09:12:43'),
(112, 80, 1, 0, 0, '2019-05-05 05:12:46'),
(113, 80, 3, 0, 1, '2019-05-13 10:25:40'),
(114, 81, 1, 0, 1, '2019-05-05 11:23:45'),
(115, 81, 3, 0, 1, '2019-05-05 11:23:45'),
(116, 82, 5, 0, 1, '2019-05-13 10:24:15'),
(117, 83, 1, 0, 1, '2019-05-05 12:09:25'),
(118, 83, 3, 0, 1, '2019-05-05 12:09:25'),
(119, 84, 5, 0, 1, '2019-05-13 10:24:15'),
(120, 85, 1, 0, 0, '2019-05-05 08:26:16'),
(121, 85, 3, 0, 1, '2019-05-13 10:25:40'),
(122, 86, 15, 5, 1, '2019-05-05 12:32:35'),
(123, 87, 1, 0, 1, '2019-05-05 13:19:32'),
(124, 87, 3, 0, 1, '2019-05-05 13:19:32'),
(125, 88, 5, 12, 1, '2019-05-13 10:24:15'),
(126, 89, 1, 0, 1, '2019-05-08 05:45:28'),
(127, 89, 3, 0, 1, '2019-05-08 05:45:28'),
(128, 90, 1, 0, 0, '2019-05-08 01:58:53'),
(129, 90, 3, 0, 1, '2019-05-13 10:25:40'),
(130, 91, 15, 5, 1, '2019-05-13 05:47:17'),
(131, 92, 15, 5, 1, '2019-05-08 06:10:30'),
(132, 93, 1, 0, 1, '2019-05-08 07:16:05'),
(133, 93, 3, 0, 1, '2019-05-08 07:16:05'),
(134, 101, 1, 0, 0, '2019-05-08 03:21:44'),
(135, 101, 3, 0, 1, '2019-05-13 10:25:40'),
(136, 103, 1, 0, 0, '2019-05-08 03:22:26'),
(137, 103, 3, 0, 1, '2019-05-13 10:25:40'),
(138, 112, 15, 5, 1, '2019-05-13 05:47:17'),
(139, 113, 15, 5, 1, '2019-05-08 07:45:33'),
(140, 114, 15, 5, 1, '2019-05-08 07:45:07'),
(141, 115, 1, 0, 1, '2019-05-08 08:55:07'),
(142, 115, 3, 0, 1, '2019-05-08 08:55:07'),
(143, 116, 15, 5, 1, '2019-05-13 05:47:17'),
(144, 117, 15, 5, 1, '2019-05-13 05:47:17'),
(145, 118, 15, 5, 1, '2019-05-13 05:47:17'),
(146, 119, 15, 5, 1, '2019-05-08 07:50:58'),
(147, 120, 15, 5, 1, '2019-05-08 07:49:46'),
(148, 121, 6, 12, 0, '2019-05-08 05:32:20'),
(149, 122, 6, 12, 0, '2019-05-08 05:32:53'),
(150, 123, 6, 12, 1, '2019-05-08 09:38:23'),
(151, 124, 15, 5, 1, '2019-05-13 05:47:17'),
(152, 125, 6, 12, 1, '2019-05-27 05:27:13'),
(153, 126, 15, 5, 1, '2019-05-09 06:04:51'),
(154, 127, 6, 5, 1, '2019-05-08 11:19:18'),
(155, 128, 5, 12, 1, '2019-05-08 11:19:24'),
(156, 129, 6, 5, 1, '2019-05-08 11:22:25'),
(157, 130, 5, 12, 1, '2019-05-08 11:22:31'),
(158, 131, 6, 5, 0, '2019-05-08 07:24:19'),
(159, 132, 5, 12, 1, '2019-05-08 11:25:04'),
(160, 133, 6, 5, 1, '2019-05-08 11:31:39'),
(161, 134, 5, 12, 1, '2019-05-08 11:31:59'),
(162, 135, 6, 5, 0, '2019-05-08 07:36:39'),
(163, 136, 6, 5, 1, '2019-05-08 11:45:18'),
(164, 137, 6, 12, 0, '2019-05-08 07:44:52'),
(165, 138, 5, 12, 1, '2019-05-08 11:52:20'),
(166, 139, 5, 12, 1, '2019-05-13 10:24:15'),
(167, 140, 6, 5, 0, '2019-05-09 02:16:36'),
(168, 141, 6, 5, 0, '2019-05-09 02:16:42'),
(169, 142, 6, 5, 0, '2019-05-09 02:30:34'),
(170, 143, 1, 0, 1, '2019-05-09 08:02:59'),
(171, 143, 3, 0, 1, '2019-05-09 08:02:59'),
(172, 144, 6, 12, 1, '2019-05-09 08:08:36'),
(173, 145, 1, 0, 1, '2019-05-09 08:08:54'),
(174, 145, 3, 0, 1, '2019-05-09 08:08:54'),
(175, 146, 6, 5, 0, '2019-05-09 05:19:31'),
(176, 147, 6, 5, 1, '2019-05-09 09:19:54'),
(177, 148, 1, 0, 0, '2019-05-09 05:20:00'),
(178, 148, 3, 0, 1, '2019-05-13 10:25:40'),
(179, 149, 6, 5, 0, '2019-05-09 05:27:58'),
(180, 150, 6, 5, 1, '2019-05-09 09:32:23'),
(181, 151, 15, 5, 1, '2019-05-09 09:32:38'),
(182, 152, 1, 0, 1, '2019-05-09 09:48:09'),
(183, 152, 3, 0, 1, '2019-05-09 09:48:09'),
(184, 153, 1, 0, 1, '2019-05-09 09:33:08'),
(185, 153, 3, 0, 1, '2019-05-09 09:33:08'),
(186, 154, 15, 5, 1, '2019-05-13 05:47:17'),
(187, 155, 6, 5, 0, '2019-05-09 05:55:29'),
(188, 156, 15, 5, 1, '2019-05-13 05:47:17'),
(189, 157, 6, 5, 0, '2019-05-09 05:55:54'),
(190, 158, 15, 5, 1, '2019-05-13 05:47:17'),
(191, 159, 6, 5, 0, '2019-05-09 05:56:24'),
(192, 160, 1, 0, 1, '2019-05-09 09:59:13'),
(193, 160, 3, 0, 1, '2019-05-09 09:59:13'),
(194, 161, 15, 5, 1, '2019-05-09 09:59:46'),
(195, 162, 6, 5, 1, '2019-05-09 10:01:03'),
(196, 163, 1, 0, 1, '2019-05-09 10:01:15'),
(197, 163, 3, 0, 1, '2019-05-09 10:01:15'),
(198, 165, 15, 5, 1, '2019-05-13 05:47:17'),
(199, 166, 5, 5, 1, '2019-05-13 10:24:15'),
(200, 167, 1, 5, 0, '2019-05-12 07:42:21'),
(201, 168, 5, 12, 1, '2019-05-13 10:24:15'),
(202, 169, 1, 12, 0, '2019-05-12 07:42:21'),
(203, 170, 5, 12, 1, '2019-05-13 10:24:15'),
(204, 171, 1, 12, 0, '2019-05-12 07:42:21'),
(205, 175, 15, 5, 1, '2019-05-13 05:47:17'),
(206, 176, 5, 5, 1, '2019-05-13 10:24:15'),
(207, 177, 1, 5, 0, '2019-05-12 07:47:48'),
(208, 178, 15, 5, 1, '2019-05-12 11:48:31'),
(209, 179, 5, 5, 1, '2019-05-13 10:24:15'),
(210, 180, 1, 5, 0, '2019-05-12 07:47:48'),
(211, 181, 15, 5, 1, '2019-05-13 05:47:17'),
(212, 182, 5, 5, 1, '2019-05-13 10:24:15'),
(213, 183, 1, 0, 0, '2019-05-12 07:50:06'),
(214, 184, 15, 5, 1, '2019-05-13 05:47:17'),
(215, 185, 5, 5, 1, '2019-05-13 10:24:15'),
(216, 186, 1, 0, 0, '2019-05-12 07:50:06'),
(217, 187, 15, 5, 1, '2019-05-13 05:47:17'),
(218, 188, 5, 5, 1, '2019-05-13 10:24:15'),
(219, 189, 1, 0, 0, '2019-05-12 07:50:07'),
(220, 190, 15, 5, 1, '2019-05-13 05:47:17'),
(221, 191, 5, 5, 1, '2019-05-13 10:24:15'),
(222, 192, 1, 0, 0, '2019-05-12 07:50:07'),
(223, 193, 5, 12, 1, '2019-05-13 10:24:15'),
(224, 194, 1, 0, 0, '2019-05-12 07:50:07'),
(225, 195, 5, 12, 1, '2019-05-13 10:24:15'),
(226, 196, 1, 0, 0, '2019-05-12 07:50:08'),
(227, 197, 15, 5, 1, '2019-05-13 05:47:17'),
(228, 198, 5, 5, 1, '2019-05-13 10:24:15'),
(229, 200, 15, 5, 1, '2019-05-13 05:47:17'),
(230, 201, 5, 5, 1, '2019-05-13 10:24:15'),
(231, 202, 1, 0, 0, '2019-05-12 07:52:36'),
(232, 203, 15, 5, 1, '2019-05-13 05:47:17'),
(233, 204, 5, 5, 1, '2019-05-13 10:24:15'),
(234, 205, 3, 0, 1, '2019-05-13 10:25:40'),
(235, 206, 15, 5, 1, '2019-05-13 05:47:17'),
(236, 207, 5, 5, 1, '2019-05-13 10:24:15'),
(237, 208, 3, 0, 1, '2019-05-13 10:25:40'),
(238, 209, 15, 5, 1, '2019-05-13 05:47:17'),
(239, 210, 5, 5, 1, '2019-05-13 10:24:15'),
(240, 211, 3, 0, 1, '2019-05-13 10:25:40'),
(241, 212, 15, 5, 1, '2019-05-13 05:47:17'),
(242, 213, 5, 5, 1, '2019-05-13 10:24:15'),
(243, 214, 3, 0, 1, '2019-05-13 10:25:40'),
(244, 215, 15, 5, 1, '2019-05-13 05:46:52'),
(245, 216, 5, 5, 1, '2019-05-13 10:24:15'),
(246, 217, 3, 0, 1, '2019-05-13 10:25:40'),
(247, 218, 15, 5, 1, '2019-05-13 05:46:48'),
(248, 219, 5, 5, 1, '2019-05-13 10:24:15'),
(249, 220, 3, 0, 1, '2019-05-13 10:25:40'),
(250, 221, 5, 12, 1, '2019-05-13 10:24:15'),
(251, 222, 3, 0, 1, '2019-05-13 10:25:40'),
(252, 223, 5, 12, 1, '2019-05-13 10:24:15'),
(253, 224, 3, 0, 1, '2019-05-13 10:25:40'),
(254, 225, 15, 5, 1, '2019-05-13 05:47:12'),
(255, 226, 5, 5, 1, '2019-05-13 10:24:15'),
(256, 227, 3, 0, 1, '2019-05-13 10:25:40'),
(257, 228, 15, 5, 1, '2019-05-13 05:46:43'),
(258, 229, 5, 5, 1, '2019-05-13 10:24:15'),
(259, 230, 3, 0, 1, '2019-05-13 10:25:40'),
(260, 231, 15, 5, 1, '2019-05-13 05:47:08'),
(261, 232, 5, 5, 1, '2019-05-13 08:26:47'),
(262, 233, 3, 0, 1, '2019-05-13 10:25:40'),
(263, 234, 15, 5, 1, '2019-05-13 05:47:17'),
(264, 235, 5, 5, 1, '2019-05-13 08:26:44'),
(265, 236, 3, 0, 1, '2019-05-13 10:25:40'),
(266, 237, 5, 12, 1, '2019-05-13 10:24:15'),
(267, 238, 3, 0, 1, '2019-05-13 10:25:40'),
(268, 239, 5, 12, 1, '2019-05-13 10:24:15'),
(269, 240, 3, 0, 1, '2019-05-13 10:25:40'),
(270, 241, 15, 5, 1, '2019-05-13 05:46:41'),
(271, 242, 5, 5, 1, '2019-05-13 08:26:40'),
(272, 243, 3, 0, 1, '2019-05-13 10:25:40'),
(273, 244, 15, 5, 1, '2019-05-13 05:46:39'),
(274, 245, 5, 5, 1, '2019-05-13 08:26:36'),
(275, 246, 3, 0, 1, '2019-05-13 10:25:40'),
(276, 247, 15, 5, 1, '2019-05-13 05:44:14'),
(277, 248, 5, 5, 1, '2019-05-13 08:26:34'),
(278, 249, 3, 0, 1, '2019-05-13 10:25:40'),
(279, 250, 15, 5, 1, '2019-05-13 05:44:09'),
(280, 251, 5, 5, 1, '2019-05-13 08:26:31'),
(281, 252, 3, 0, 1, '2019-05-13 10:25:40'),
(282, 253, 5, 12, 1, '2019-05-13 10:24:15'),
(283, 254, 3, 0, 1, '2019-05-13 10:25:40'),
(284, 255, 5, 12, 1, '2019-05-13 10:24:15'),
(285, 256, 3, 0, 1, '2019-05-13 10:25:40'),
(286, 257, 15, 5, 1, '2019-05-13 10:51:55'),
(287, 258, 5, 5, 1, '2019-05-13 08:26:29'),
(288, 259, 3, 0, 1, '2019-05-13 10:25:40'),
(289, 260, 15, 5, 1, '2019-05-13 10:51:55'),
(290, 261, 5, 5, 1, '2019-05-13 08:26:26'),
(291, 262, 3, 0, 1, '2019-05-13 10:25:40'),
(292, 263, 15, 5, 1, '2019-05-13 10:51:55'),
(293, 264, 5, 5, 1, '2019-05-13 08:26:25'),
(294, 265, 3, 0, 1, '2019-05-13 10:25:40'),
(295, 266, 15, 5, 1, '2019-05-13 10:51:55'),
(296, 267, 5, 5, 1, '2019-05-13 07:39:06'),
(297, 268, 3, 0, 1, '2019-05-13 06:11:22'),
(298, 269, 5, 12, 1, '2019-05-13 10:24:15'),
(299, 270, 3, 0, 1, '2019-05-13 06:11:20'),
(300, 271, 5, 12, 1, '2019-05-13 07:33:51'),
(301, 272, 3, 0, 1, '2019-05-13 06:11:18'),
(302, 273, 15, 5, 1, '2019-05-13 10:51:55'),
(303, 274, 5, 5, 1, '2019-05-13 10:17:00'),
(304, 275, 3, 0, 1, '2019-05-13 10:25:40'),
(305, 276, 5, 12, 1, '2019-05-13 10:24:15'),
(306, 277, 3, 0, 1, '2019-05-13 10:25:40'),
(307, 278, 5, 12, 1, '2019-05-13 10:24:15'),
(308, 279, 3, 0, 1, '2019-05-13 10:25:37'),
(309, 280, 6, 5, 1, '2019-05-13 10:40:25'),
(310, 281, 15, 5, 1, '2019-05-13 10:51:55'),
(311, 282, 15, 5, 1, '2019-05-13 10:51:55'),
(312, 283, 1, 0, 1, '2019-05-13 10:40:43'),
(313, 283, 3, 0, 1, '2019-05-13 10:40:43'),
(314, 284, 15, 5, 1, '2019-05-13 10:44:11'),
(315, 285, 15, 5, 1, '2019-05-13 10:46:27'),
(316, 286, 6, 5, 0, '2019-05-13 06:46:22'),
(317, 287, 6, 12, 1, '2019-05-13 11:07:27'),
(318, 288, 5, 5, 0, '2019-05-13 07:07:31'),
(319, 289, 15, 5, 1, '2019-05-13 11:07:37'),
(320, 290, 6, 5, 1, '2019-05-14 07:06:59'),
(321, 291, 5, 12, 1, '2019-05-14 07:07:11'),
(322, 292, 2, 0, 1, '2019-05-14 07:17:23'),
(323, 292, 3, 0, 1, '2019-05-14 07:17:23'),
(324, 293, 1, 0, 0, '2019-05-14 03:17:25'),
(325, 293, 3, 0, 1, '2019-05-14 11:33:59'),
(326, 294, 15, 5, 1, '2019-05-14 07:17:34'),
(327, 295, 1, 0, 1, '2019-05-14 07:18:06'),
(328, 295, 3, 0, 1, '2019-05-14 07:18:06'),
(329, 296, 15, 5, 1, '2019-05-14 07:18:13'),
(330, 297, 1, 0, 0, '2019-05-14 03:25:52'),
(331, 297, 3, 0, 1, '2019-05-14 11:33:59'),
(332, 298, 1, 0, 0, '2019-05-14 03:27:16'),
(333, 298, 3, 0, 1, '2019-05-14 11:33:59'),
(334, 299, 1, 0, 0, '2019-05-14 03:27:32'),
(335, 299, 3, 0, 1, '2019-05-14 11:33:59'),
(336, 300, 6, 5, 1, '2019-05-14 07:46:18'),
(337, 301, 6, 5, 1, '2019-05-14 07:48:47'),
(338, 302, 5, 12, 0, '2019-05-14 03:46:30'),
(339, 303, 5, 12, 1, '2019-05-14 07:52:46'),
(340, 304, 1, 0, 1, '2019-05-14 11:12:13'),
(341, 304, 3, 0, 1, '2019-05-14 11:12:13'),
(342, 305, 15, 5, 1, '2019-05-15 06:31:07'),
(343, 306, 15, 5, 1, '2019-05-15 06:31:07'),
(344, 307, 15, 5, 1, '2019-05-14 11:12:30'),
(345, 308, 1, 0, 1, '2019-05-14 11:12:50'),
(346, 308, 3, 0, 1, '2019-05-14 11:12:50'),
(347, 309, 1, 0, 1, '2019-05-14 11:21:12'),
(348, 309, 3, 0, 1, '2019-05-14 11:21:12'),
(349, 310, 15, 5, 1, '2019-05-14 11:21:18'),
(350, 311, 1, 0, 1, '2019-05-14 11:25:26'),
(351, 311, 3, 0, 1, '2019-05-14 11:25:26'),
(352, 312, 6, 5, 0, '2019-05-14 07:25:15'),
(353, 313, 6, 5, 1, '2019-05-14 11:25:44'),
(354, 314, 1, 0, 1, '2019-05-14 11:32:37'),
(355, 314, 3, 0, 1, '2019-05-14 11:32:37'),
(356, 315, 1, 0, 1, '2019-05-14 11:25:54'),
(357, 315, 3, 0, 1, '2019-05-14 11:25:54'),
(358, 316, 1, 0, 1, '2019-05-14 11:50:22'),
(359, 316, 3, 0, 1, '2019-05-14 11:50:22'),
(360, 317, 15, 5, 1, '2019-05-14 11:50:28'),
(361, 318, 1, 0, 1, '2019-05-14 11:50:53'),
(362, 318, 3, 0, 1, '2019-05-14 11:50:53'),
(363, 319, 1, 0, 1, '2019-05-14 11:53:04'),
(364, 319, 3, 0, 1, '2019-05-14 11:53:04'),
(365, 320, 15, 5, 1, '2019-05-14 11:53:08'),
(366, 321, 1, 0, 1, '2019-05-14 11:53:17'),
(367, 321, 3, 0, 1, '2019-05-14 11:53:17'),
(368, 322, 6, 5, 1, '2019-05-16 05:40:41'),
(369, 323, 1, 0, 1, '2019-05-21 05:55:54'),
(370, 323, 3, 0, 1, '2019-05-21 05:55:54'),
(371, 324, 6, 5, 1, '2019-05-16 09:57:55'),
(372, 325, 5, 12, 1, '2019-05-16 09:58:40'),
(373, 326, 6, 5, 0, '2019-05-16 06:19:24'),
(374, 327, 6, 5, 1, '2019-05-27 05:25:26'),
(375, 328, 6, 5, 1, '2019-05-16 10:19:50'),
(376, 329, 5, 12, 0, '2019-05-16 06:19:54'),
(377, 330, 5, 12, 0, '2019-05-16 06:19:56'),
(378, 331, 5, 12, 1, '2019-05-16 10:20:11'),
(379, 332, 6, 5, 1, '2019-05-27 05:32:53'),
(380, 333, 15, 13, 1, '2019-05-27 05:33:19'),
(381, 334, 1, 0, 1, '2019-05-27 05:59:20'),
(382, 334, 3, 0, 1, '2019-05-27 05:59:20'),
(383, 335, 15, 5, 0, '2019-05-27 01:59:25'),
(384, 336, 15, 5, 0, '2019-06-18 00:42:11'),
(385, 337, 5, 5, 0, '2019-06-18 00:42:11'),
(386, 338, 3, 0, 0, '2019-06-18 00:42:11'),
(387, 339, 15, 5, 0, '2019-06-18 00:42:11'),
(388, 340, 5, 5, 0, '2019-06-18 00:42:11'),
(389, 341, 3, 0, 0, '2019-06-18 00:42:11'),
(390, 342, 15, 5, 0, '2019-06-18 00:42:11'),
(391, 343, 5, 5, 0, '2019-06-18 00:42:11'),
(392, 344, 3, 0, 0, '2019-06-18 00:42:11'),
(393, 345, 15, 5, 0, '2019-06-18 00:42:12'),
(394, 346, 5, 5, 0, '2019-06-18 00:42:12'),
(395, 347, 3, 0, 1, '2019-06-19 04:08:12'),
(396, 348, 1, 0, 1, '2019-06-19 04:09:46'),
(397, 348, 3, 0, 1, '2019-06-19 04:09:46'),
(398, 349, 15, 5, 1, '2019-06-19 04:09:58'),
(399, 350, 1, 0, 1, '2019-06-19 04:28:13'),
(400, 350, 3, 0, 1, '2019-06-19 04:28:13'),
(401, 351, 1, 0, 1, '2019-06-19 07:28:01'),
(402, 351, 3, 0, 1, '2019-06-19 07:28:01'),
(403, 352, 5, 12, 0, '2019-06-19 00:29:07'),
(404, 353, 5, 12, 0, '2019-06-19 00:29:09'),
(405, 354, 6, 12, 1, '2019-06-19 07:31:32'),
(406, 355, 1, 0, 1, '2019-06-19 08:07:02'),
(407, 355, 3, 0, 1, '2019-06-19 08:07:02'),
(408, 356, 6, 5, 1, '2019-06-19 08:14:02'),
(409, 357, 1, 0, 1, '2019-06-19 08:14:09'),
(410, 357, 3, 0, 1, '2019-06-19 08:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`) VALUES
(1, 'Project 1'),
(5, 'Project Iqbal'),
(12, 'P45'),
(13, 'P441');

-- --------------------------------------------------------

--
-- Table structure for table `projects_receiving_materials_2`
--

CREATE TABLE `projects_receiving_materials_2` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `required_qty` int(11) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects_receiving_materials_2`
--

INSERT INTO `projects_receiving_materials_2` (`id`, `form_id`, `project_id`, `category_id`, `item_id`, `required_qty`, `location`) VALUES
(1, 0, 5, 4, 1, 100, ''),
(2, 0, 5, 4, 2, 100, ''),
(3, 0, 5, 4, 3, 100, ''),
(4, 0, 5, 3, 4, 200, ''),
(5, 0, 5, 3, 5, 200, ''),
(6, 0, 5, 2, 6, 300, ''),
(7, 1, 5, 3, 4, 100, 'Ajman corner2'),
(8, 0, 5, 2, 6, 100, ''),
(9, 0, 12, 4, 3, 100, '');

-- --------------------------------------------------------

--
-- Table structure for table `projects_receiving_tools`
--

CREATE TABLE `projects_receiving_tools` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `requested_user_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `asset_no` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects_receiving_tools`
--

INSERT INTO `projects_receiving_tools` (`id`, `form_id`, `project_id`, `category_id`, `requested_user_id`, `description`, `model`, `asset_no`, `image`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 2, 15, 'New Drillers for project', 'M-23', 'DR004', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557833043.png', 'Japan', '2019-05-14 07:24:03', '2019-05-14 07:24:03'),
(2, 1, 5, 1, 15, 'Short Ladders', 'M-2343', 'LA004', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557833043.png', 'Jangul', '2019-05-14 07:24:03', '2019-05-14 07:24:03'),
(3, 2, 5, 2, 15, 'Provident deserunt', 'Veniam rerum at sed', 'DR006', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557222538_1557999311_1558001924.png', 'Enim qui et dolorem', '2019-05-16 06:18:44', '2019-05-16 06:18:44'),
(4, 2, 5, 1, 15, 'Necessitatibus exerc', 'Vitae nostrum atque', 'LA007', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557222538_1557999311_1558001924.png', 'Sunt dolorem eveniet', '2019-05-16 06:18:44', '2019-05-16 06:18:44'),
(5, 2, 5, 1, 15, 'Repellendus Aut ut', 'Est enim praesentium', 'LA007', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557222538_1557999311_1558001924.png', 'Reprehenderit distin', '2019-05-16 06:18:44', '2019-05-16 06:18:44'),
(6, 2, 5, 1, 15, 'Culpa quos elit im', 'Eius dolore dolor te', 'LA007', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557222538_1557999311_1558001924.png', 'Nulla repellendus O', '2019-05-16 06:18:44', '2019-05-16 06:18:44'),
(7, 3, 5, 2, 15, 'Keyboards', '123', 'DR006', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1556516376_1557228532_1560832954.png', 'aaaa', '2019-06-18 00:42:34', '2019-06-18 00:42:34'),
(8, 4, 5, 1, 15, 'Keyboards', '234', 'LA008', '11_1551343014_1560833399.png', 'sdfs', '2019-06-18 00:49:59', '2019-06-18 00:49:59'),
(9, 5, 5, 2, 15, 'Keyboards', '234', 'DR007', '11_1551343651_1560834091.png', 'ajman', '2019-06-18 01:01:31', '2019-06-18 01:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `project_idle_items_request`
--

CREATE TABLE `project_idle_items_request` (
  `id` int(11) NOT NULL,
  `project_item_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `requested_project_id` int(11) NOT NULL,
  `requested_user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `storekeeper_id` int(11) NOT NULL,
  `storekeeper_approve` int(11) NOT NULL DEFAULT '0',
  `is_recevied` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_idle_items_request`
--

INSERT INTO `project_idle_items_request` (`id`, `project_item_id`, `project_id`, `requested_project_id`, `requested_user_id`, `category_id`, `item_id`, `quantity`, `storekeeper_id`, `storekeeper_approve`, `is_recevied`, `date`) VALUES
(1, 4, 5, 12, 5, 3, 4, 20, 6, 1, 1, '0000-00-00'),
(2, 4, 5, 12, 5, 3, 4, 60, 6, 1, 1, '2019-05-05'),
(3, 8, 12, 5, 15, 3, 4, 9, 6, 1, 1, '2019-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `project_idle_tools_request`
--

CREATE TABLE `project_idle_tools_request` (
  `id` int(11) NOT NULL,
  `project_item_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `requested_project_id` int(11) NOT NULL,
  `requested_user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `storekeeper_id` int(11) NOT NULL,
  `storekeeper_approve` int(11) NOT NULL DEFAULT '0',
  `is_recevied` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_idle_tools_request`
--

INSERT INTO `project_idle_tools_request` (`id`, `project_item_id`, `project_id`, `requested_project_id`, `requested_user_id`, `category_id`, `item_id`, `storekeeper_id`, `storekeeper_approve`, `is_recevied`, `date`) VALUES
(1, 2, 5, 12, 5, 2, 7, 6, 1, 1, '2019-05-16'),
(2, 7, 5, 12, 5, 1, 12, 6, 1, 1, '2019-05-16'),
(3, 6, 5, 12, 5, 1, 11, 6, 1, 1, '2019-05-16'),
(4, 5, 5, 12, 5, 1, 10, 6, 1, 1, '2019-05-16'),
(5, 4, 5, 13, 15, 2, 9, 6, 1, 0, '2019-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `project_items`
--

CREATE TABLE `project_items` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_2` int(11) NOT NULL,
  `is_idle` int(11) NOT NULL DEFAULT '0',
  `under_store_approval` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_items`
--

INSERT INTO `project_items` (`id`, `project_id`, `category_id`, `location`, `item_id`, `quantity`, `quantity_2`, `is_idle`, `under_store_approval`, `created_at`, `updated_at`) VALUES
(2, 5, 4, 'Ajman Store 2', 2, 80, 80, 1, 0, '2019-04-29 01:22:25', '2019-05-16 04:00:27'),
(4, 5, 3, 'Ajman corner2', 4, 209, 209, 1, 0, '2019-04-29 01:22:34', '2019-05-16 04:00:30'),
(5, 5, 3, 'Ajamn store 4', 5, 180, 180, 1, 0, '2019-04-29 01:23:00', '2019-05-16 04:00:28'),
(7, 5, 2, 'werwe', 6, 100, 100, 1, 2, '2019-05-01 01:31:57', '2019-05-13 06:13:44'),
(8, 12, 3, '', 4, 10, 10, 1, 0, '2019-05-05 08:02:02', '2019-03-05 04:49:21'),
(9, 12, 4, 'klhanasdf', 3, 97, 97, 1, 0, '2019-05-05 04:30:46', '2019-03-05 04:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `project_receiving_materials`
--
-- Error reading structure for table shop.project_receiving_materials: #1932 - Table 'shop.project_receiving_materials' doesn't exist in engine
-- Error reading data for table shop.project_receiving_materials: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `shop`.`project_receiving_materials`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `project_reciving_form`
--

CREATE TABLE `project_reciving_form` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `reciving_from` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_reciving_form`
--

INSERT INTO `project_reciving_form` (`id`, `project_id`, `reciving_from`, `file`, `date`) VALUES
(1, 5, 'khanjan', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1556516376.xlsx', '2019-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `project_reciving_tools_form`
--

CREATE TABLE `project_reciving_tools_form` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `reciving_from` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_reciving_tools_form`
--

INSERT INTO `project_reciving_tools_form` (`id`, `project_id`, `reciving_from`, `file`, `date`) VALUES
(1, 5, 'Khanjan', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557833043.xlsx', '2019-05-14'),
(2, 5, 'Necessitatibus incid', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557222538_1557999311_1558001924.xlsx', '2019-05-16'),
(3, 5, 'aaaaa', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1556516376_1557228532_1560832954.xlsx', '2019-06-18'),
(4, 5, 'sdfsdf', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1560833399.xlsx', '2019-06-18'),
(5, 5, 'aaaaa', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557222538_1557999311_1560834091.xlsx', '2019-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `project_request_materials`
--

CREATE TABLE `project_request_materials` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requested_qty` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `issued_to` varchar(255) DEFAULT NULL,
  `store_approval` int(11) NOT NULL DEFAULT '0',
  `order_recieved` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_request_materials`
--

INSERT INTO `project_request_materials` (`id`, `category_id`, `item_id`, `user_id`, `requested_qty`, `project_id`, `date`, `issued_to`, `store_approval`, `order_recieved`) VALUES
(1, 2, 6, 15, 30, 5, '2019-04-29', 'khan', 1, 0),
(2, 3, 5, 15, 20, 5, '2019-04-29', 'jan', 1, 0),
(3, 3, 4, 15, 20, 5, '2019-04-29', 'khan', 1, 0),
(4, 4, 3, 15, 10, 5, '2019-04-29', 'khan', 1, 0),
(5, 4, 2, 15, 10, 5, '2019-04-29', 'jan', 1, 0),
(6, 4, 1, 15, 10, 5, '2019-04-29', 'khan', 2, 0),
(7, 4, 3, 15, 10, 5, '2019-05-01', 'adi', 1, 0),
(8, 4, 2, 5, 10, 5, '2019-05-05', 'khan jan', 1, 0),
(9, 3, 4, 5, 1, 12, '2019-05-05', 'khan jan', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_tools`
--

CREATE TABLE `project_tools` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_idle` int(11) NOT NULL DEFAULT '0',
  `under_store_approval` int(11) NOT NULL DEFAULT '0',
  `is_recevied` int(11) NOT NULL COMMENT '1 = not recived , 0 = received',
  `store_return_approve` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_tools`
--

INSERT INTO `project_tools` (`id`, `project_id`, `category_id`, `location`, `item_id`, `quantity`, `is_idle`, `under_store_approval`, `is_recevied`, `store_return_approve`, `created_at`, `updated_at`) VALUES
(1, 5, 2, 'Dubai', 2, 1, 0, 2, 0, 1, '2019-05-14 07:12:39', '2019-05-14 07:12:39'),
(2, 12, 2, 'Japan', 7, 1, 0, 1, 0, 0, '2019-05-14 07:24:03', '2019-05-16 05:57:05'),
(3, 5, 1, 'Jangul', 8, 1, 1, 2, 0, 0, '2019-05-14 07:24:03', '2019-05-16 06:19:02'),
(4, 5, 2, 'Enim qui et dolorem', 9, 1, 1, 1, 1, 0, '2019-05-16 06:18:44', '2019-05-16 06:19:05'),
(5, 12, 1, 'Sunt dolorem eveniet', 10, 1, 0, 2, 0, 1, '2019-05-16 06:18:44', '2019-05-16 06:19:01'),
(6, 12, 1, 'Reprehenderit distin', 11, 1, 0, 0, 0, 0, '2019-05-16 06:18:44', '2019-05-16 06:18:59'),
(7, 12, 1, 'Nulla repellendus O', 12, 1, 0, 0, 0, 0, '2019-05-16 06:18:44', '2019-05-16 06:18:57'),
(8, 5, 2, 'aaaa', 13, 1, 0, 0, 0, 0, '2019-06-18 00:42:34', '2019-06-18 00:42:34'),
(9, 5, 1, 'sdfs', 14, 1, 0, 0, 0, 0, '2019-06-18 00:49:59', '2019-06-18 00:49:59'),
(10, 5, 2, 'ajman', 15, 1, 0, 0, 0, 0, '2019-06-18 01:01:31', '2019-06-18 01:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE `project_users` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `engineer_id` int(11) NOT NULL,
  `storekeeper_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_users`
--

INSERT INTO `project_users` (`id`, `project_id`, `engineer_id`, `storekeeper_id`) VALUES
(1, 5, 15, 6),
(2, 5, 5, 6),
(4, 1, 4, 10),
(5, 1, 17, 19),
(6, 1, 18, 19),
(7, 8, 4, 6),
(8, 9, 4, 6),
(9, 10, 4, 8),
(10, 11, 12, 9),
(11, 12, 5, 6),
(12, 13, 15, 16);

-- --------------------------------------------------------

--
-- Table structure for table `reciving_goods`
--

CREATE TABLE `reciving_goods` (
  `id` int(11) NOT NULL,
  `reciving_from` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reciving_goods`
--

INSERT INTO `reciving_goods` (`id`, `reciving_from`, `project_name`, `date`) VALUES
(1, 'Iqbal khan', 'P44', '2019-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `request_goods`
--

CREATE TABLE `request_goods` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requested_qty` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `proc_approval` int(11) NOT NULL DEFAULT '0',
  `store_approval` int(11) NOT NULL DEFAULT '0',
  `order_recieved` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_goods`
--

INSERT INTO `request_goods` (`id`, `category_id`, `item_id`, `user_id`, `requested_qty`, `project_id`, `date`, `location`, `proc_approval`, `store_approval`, `order_recieved`) VALUES
(1, 4, 3, 15, 100, 5, '2019-04-29', 'Ajman Store 1', 1, 1, 1),
(2, 4, 2, 15, 100, 5, '2019-04-29', 'Ajman Store 2', 1, 1, 1),
(3, 4, 1, 15, 100, 5, '2019-04-29', 'Ajman Store 3', 1, 1, 1),
(4, 3, 5, 15, 200, 5, '2019-04-29', 'Ajamn store 4', 1, 1, 1),
(5, 3, 4, 15, 200, 5, '2019-04-29', 'Ajamn store 5', 1, 1, 1),
(6, 2, 7, 15, 300, 5, '2019-04-29', 'Ajman store 6', 1, 2, 0),
(7, 2, 6, 15, 300, 5, '2019-04-29', 'Ajman store 7', 1, 1, 1),
(8, 2, 6, 15, 100, 5, '2019-05-01', 'werwe', 1, 1, 1),
(9, 3, 4, 15, 100, 5, '2019-05-05', 'ajman', 1, 1, 2),
(10, 4, 3, 15, 400, 5, '2019-05-05', 'japan', 1, 1, 2),
(11, 4, 3, 15, 100, 5, '2019-05-05', 'janan', 1, 2, 0),
(12, 4, 3, 15, 100, 5, '2019-05-05', 'new location', 2, 0, 0),
(13, 4, 3, 15, 10, 5, '2019-05-05', 'werwe', 1, 1, 2),
(14, 4, 3, 5, 100, 12, '2019-05-05', 'klhanasdf', 1, 1, 1),
(15, 4, 3, 5, 1, 12, '2019-05-05', 'sdfs', 1, 2, 0),
(16, 3, 4, 15, 100, 5, '2019-05-14', 'ajman', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `returned_items`
--

CREATE TABLE `returned_items` (
  `id` int(11) NOT NULL,
  `engineer_id` int(11) NOT NULL,
  `engineer_name` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `reason` text NOT NULL,
  `project_id` int(11) NOT NULL,
  `store_approve` int(11) NOT NULL,
  `is_returned` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returned_items`
--

INSERT INTO `returned_items` (`id`, `engineer_id`, `engineer_name`, `item_id`, `quantity`, `reason`, `project_id`, `store_approve`, `is_returned`, `date`) VALUES
(1, 15, 'jan', 1, 100, 'No more used in the project', 5, 2, 0, '0000-00-00'),
(2, 15, 'jan', 1, 100, 'no more used in the project . this item!', 5, 1, 1, '0000-00-00'),
(3, 15, 'jan', 6, 270, 'just a test reason', 5, 1, 1, '0000-00-00'),
(4, 15, 'jan', 3, 80, 'because of isfaq', 5, 3, 0, '0000-00-00'),
(5, 15, 'jan', 6, 100, 'just test reason', 5, 3, 0, '0000-00-00'),
(6, 15, 'jan', 2, 90, 'just a test reason added to the return item', 5, 3, 0, '0000-00-00'),
(7, 15, 'jan', 2, 80, 'Just a test Reason', 5, 3, 0, '2019-05-05'),
(8, 15, 'jan', 5, 180, 'just a test reason for tool', 5, 2, 0, '2019-05-13'),
(9, 15, 'jan', 5, 180, 'just a test reason for tool', 5, 2, 0, '0000-00-00'),
(10, 15, 'jan', 6, 100, 'this is just a reason to return the item to main stroe', 5, 2, 0, '0000-00-00'),
(11, 15, 'jan', 6, 100, 'sadsfasdfasd', 5, 1, 1, '2019-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `returned_tools`
--

CREATE TABLE `returned_tools` (
  `id` int(11) NOT NULL,
  `engineer_id` int(11) NOT NULL,
  `engineer_name` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `project_id` int(11) NOT NULL,
  `store_approve` int(11) NOT NULL,
  `is_returned` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returned_tools`
--

INSERT INTO `returned_tools` (`id`, `engineer_id`, `engineer_name`, `item_id`, `reason`, `project_id`, `store_approve`, `is_returned`, `date`) VALUES
(1, 15, 'jan', 8, 'test reasoon', 5, 1, 1, '2019-05-14'),
(2, 15, 'jan', 2, 'test reason', 5, 1, 1, '2019-05-14'),
(3, 5, 'Saif Ali', 10, 'just a test reason', 12, 1, 1, '2019-06-19'),
(4, 15, 'jan', 2, 'this is test reason to return item', 5, 1, 1, '2019-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `tools_categories`
--

CREATE TABLE `tools_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tools_categories`
--

INSERT INTO `tools_categories` (`id`, `title`, `description`) VALUES
(1, 'Ladders', 'New Ladders Avalible'),
(2, 'Drillers', 'Lattest Drillers');

-- --------------------------------------------------------

--
-- Table structure for table `tools_category_items`
--

CREATE TABLE `tools_category_items` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `zone_no` char(1) DEFAULT '0',
  `column_no` int(11) DEFAULT '0',
  `shelf_no` int(11) DEFAULT '0',
  `carton_no` varchar(255) DEFAULT '0',
  `tool_condition` int(11) NOT NULL DEFAULT '0',
  `is_taken` int(11) NOT NULL DEFAULT '0',
  `project_recived` int(11) NOT NULL COMMENT 'received by project in project receiving'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tools_category_items`
--

INSERT INTO `tools_category_items` (`id`, `category_id`, `description`, `model_no`, `brand_name`, `photo`, `zone_no`, `column_no`, `shelf_no`, `carton_no`, `tool_condition`, `is_taken`, `project_recived`) VALUES
(1, 2, 'Deleniti consequatur', 'DR001', 'Leilani Navarro', 'abc_logo_1557832233.png', 'C', 45, 8, 'C-223', 0, 1, 0),
(2, 2, 'Nisi reiciendis veli', 'DR002', 'Keith Cantu', 'abc_logo_1557832247.png', 'X', 61, 4, 'Aliqua Aperiam dolo', 0, 0, 0),
(3, 2, 'Labore id sunt aut', 'DR003', 'Sopoline Rodriquez', 'abc_logo_1557832257.png', 'X', 31, 5, 'Provident voluptas', 0, 1, 0),
(4, 1, 'Ab ex nobis quisquam', 'LA001', 'Rachel Price', 'abc_logo_1557832270.png', 'H', 6, 9, 'Qui eum voluptatem', 0, 0, 0),
(5, 1, 'Autem neque consecte', 'LA002', 'Oscar Bryant', 'abc_logo_1557832278.png', 'D', 57, 7, 'Molestias ea soluta', 0, 0, 0),
(6, 1, 'Nostrum quaerat cons', 'LA003', 'Darrel Barrett', 'abc_logo_1557832287.png', 'P', 76, 4, 'Eius et aliqua Esse', 0, 0, 0),
(7, 2, 'New Drillers for project', 'DR004', 'M-23', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557833043.png', '0', 0, 0, '0', 0, 1, 1),
(8, 1, 'Short Ladders', 'LA004', 'M-2343', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557833043.png', 'D', 2, 5, 'C-23432', 0, 0, 0),
(9, 2, 'Provident deserunt', 'DR006', 'Veniam rerum at sed', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557222538_1557999311_1558001924.png', '0', 0, 0, '0', 0, 1, 1),
(10, 1, 'Necessitatibus exerc', 'LA007', 'Vitae nostrum atque', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557222538_1557999311_1558001924.png', '0', 0, 0, '0', 0, 1, 1),
(11, 1, 'Repellendus Aut ut', 'LA007', 'Est enim praesentium', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557222538_1557999311_1558001924.png', '0', 0, 0, '0', 0, 1, 1),
(12, 1, 'Culpa quos elit im', 'LA007', 'Eius dolore dolor te', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1557222538_1557999311_1558001924.png', '0', 0, 0, '0', 0, 1, 1),
(13, 2, 'Keyboards', 'DR006', '123', '28.1 - NCO, JUNIORS & SOLDIERS MESS....._1556516376_1557228532_1560832954.png', '0', 0, 0, '0', 0, 1, 1),
(14, 1, 'Keyboards', 'LA008', '234', '11_1551343014_1560833399.png', '0', 0, 0, '0', 0, 1, 1),
(15, 2, 'Keyboards', 'DR007', '234', '11_1551343651_1560834091.png', '0', 0, 0, '0', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tools_request_goods`
--

CREATE TABLE `tools_request_goods` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `requested_user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `store_approval` int(11) NOT NULL DEFAULT '0',
  `tools_user` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `returned` int(11) NOT NULL DEFAULT '0',
  `order_recieved` int(11) NOT NULL DEFAULT '0',
  `is_idle` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tools_request_goods`
--

INSERT INTO `tools_request_goods` (`id`, `category_id`, `item_id`, `requested_user_id`, `project_id`, `date`, `store_approval`, `tools_user`, `location`, `returned`, `order_recieved`, `is_idle`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 15, 5, '2019-05-14', 1, 'Khan', 'Ajman', 0, 2, 0, '2019-05-14 11:12:45', '0000-00-00 00:00:00'),
(2, 2, 2, 15, 5, '2019-05-14', 1, 'Janas', 'Dubai', 0, 1, 0, '2019-05-14 11:12:39', '0000-00-00 00:00:00'),
(3, 1, 5, 15, 5, '2019-05-14', 2, 'jawad', 'Dubai', 0, 0, 0, '2019-05-14 11:12:26', '0000-00-00 00:00:00'),
(4, 1, 4, 15, 5, '2019-05-14', 1, 'khan', 'jalalabad', 0, 2, 0, '2019-05-14 11:22:15', '0000-00-00 00:00:00'),
(5, 2, 2, 15, 5, '2019-05-14', 1, 'khanajan', 'ajman', 0, 2, 0, '2019-05-14 11:50:48', '0000-00-00 00:00:00'),
(6, 2, 3, 15, 5, '2019-05-14', 1, 'sadfs', 'ssdf', 0, 2, 0, '2019-05-14 11:53:10', '0000-00-00 00:00:00'),
(7, 2, 3, 15, 5, '2019-05-27', 1, 'Iqbal', 'Ajman', 1, 0, 0, '2019-05-27 06:15:40', '0000-00-00 00:00:00'),
(8, 2, 3, 15, 5, '2019-06-19', 1, 'Iqbal', 'Ajman', 0, 0, 0, '2019-06-19 04:09:47', '0000-00-00 00:00:00'),
(9, 2, 2, 5, 12, '2019-06-19', 1, 'khan', 'jangzaoo', 0, 0, 0, '2019-06-19 04:29:07', '0000-00-00 00:00:00'),
(10, 2, 1, 5, 12, '2019-06-19', 1, 'khan', 'jalalabad', 0, 0, 0, '2019-06-19 04:29:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_no`, `address`, `email_verified_at`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@abc-gcc.com', '058951054', 'Ajman', NULL, '$2y$10$SQ7n7Q2sQzq4KMbHFObaxO6rcXNAQleMjsUomTvfpPEdFQsw4Gmme', 101, 'bb5UFBndIVqRcNVOqP3g7d4ZNV2oiFIBf8oPWG7ItZfZV3WTeJGgmkL2zA9L', '2019-02-18 20:00:00', '2019-02-14 20:00:00'),
(2, 'Khan', 'khan@yahoo.com', '0567776555', 'Dubai', NULL, '$2y$10$.5lsPoAoAmn.r05hysdSN..euIoZuyPlc.0xk1oDC2nufnzjnrha6', 2, '82zuI9psVmuIlAuS3nL7mm3hhtRm6uF0YinTnyBaP8yDYFgxStvarR6Fv6S1', NULL, NULL),
(3, 'admin', 'admin@abcstore.com', '34533453', 'Abu Dhabi', NULL, '$2y$10$VvApZ5gxEiweulTGowr0lu9ECCH/483HPazx9QvkY38K00967ncTu', 1001, 'OYoHkiyleiC8EPuwl8ijjOBjlQK6GZ8mzXU0w2ZftRN8tRMdQKwEyF2jYtzl', NULL, NULL),
(4, 'jan khan', 'jan@jankhan.com', '0589510365', 'chakdara', NULL, '$2y$10$zOJcUYU.nBmW0kMXVNpFl.TVEbjsW9DNiCo.64su.9I5a6XTtWBeG', 1, 'AbOYa5fE5BMtNFFYaM4A4Dfqnzuo6Hix2rsjojWB55JiwmtB9E4FUta7X4lc', NULL, NULL),
(5, 'Saif Ali', 'saif@g.c', '123344', 'ajaman', NULL, '$2y$10$XfCf7WxIhnIQj7TXxifhr.wBcGLDt9qFSiR17Xr.8jp08o299.pG6', 1, 'Ms7sxZFk26PXGnb2nRuMFf6S5SP0kHZm5QXlhaQIDxc8Iw6OVaRvF4sjrzak', NULL, NULL),
(6, 'jawad', 'jawad@yahoo.com', '123213211', 'ajman', NULL, '$2y$10$F602gSA8e0Sghj96M8XWtOO7VppGgFDR8YphVFUYjzkLLFSV9fEuK', 3, 'YrMoCEtYG7qaOs9Qv8NE8eSkA83SzqxCWTUNRvEJa4qDauMM0FxO8f47GMU3', NULL, NULL),
(8, 'Jane khan', 'jane@gmail.com', '23432423', 'Jalaal abad', NULL, '$2y$10$OH73tvqBuRKhLpVESwYC3ub3roigEdC72OU/SBXsidgxhNH3dTNsC', 3, 'gWMIpEt2LkD3GIXSdajGbrid874uXlgyuriAUqesj1QZ7X5I8mdgDeJrJG5O', NULL, NULL),
(9, 'sami', 'sami@abc-gcc.com', '54654645', 'dsfasd fasd', NULL, '$2y$10$8BjYaQVkAKGO5SFKhwYBwewR07ffwbvNmc7ye35919EXB5/xRDDW2', 3, 'jlEBxPNEj7T9D7wrMuXmqE9ZQTg1D9W32C7leZtKSqvn6DX928ugdPgbL09t', NULL, NULL),
(10, 'Mark', 'mark@abc-gcc.com', '23423443', 'dubai', NULL, '$2y$10$rZOqI4DXeURw5M/5iIygV.4BEqZwNYk626jpTgSr7jIP5WvgWl7Ne', 3, 'O2hscGaLTggT4ei3ALJbA21CguQo0kQvdsdfwNZgyftQBVp0I7NQAz5RdtqT', NULL, NULL),
(11, 'janas', 'janas@yahoo.com', '22222222', 'ajamn', NULL, '$2y$10$wnIIfLDl0rT6YtaocpjD.Or9Yl1pjU5PBVKxpl2dqP6Valvd5MhT2', 3, NULL, NULL, NULL),
(12, 'john', 'jogn@gg.cc', '33333', 'Dubai', NULL, '$2y$10$.i.8.pFge1kwPZ7Wc2D2mORtkQld9G7kHUhLiIxx4wcnEsPjuxZCG', 1, NULL, NULL, NULL),
(14, 'store', 'store@store.com', '23423', 'alain', NULL, '$2y$10$y6eyGpAR530yld3VjjSfD.XpoNOW9d9Dks7tcbOY8Gzl.s/Gl128q', 3, NULL, NULL, NULL),
(15, 'jan', 'jan@jan.com', '23432', 'ajamn', NULL, '$2y$10$QdzbdNdHVkmhbpKp50npV.3zwAlkjXVNa9ErOUyGLdI6Kmy72dV86', 1, 'LhYXP164qSbCqrNNiClMs0LZz3AQMLapu9A9UWVrDmLBLywcHJhHGm32YmWb', NULL, NULL),
(16, 'jane', 'jan@janas.com', '12345667', 'Ajamn', NULL, '$2y$10$HS4ZJh/EDY2UPopA.j6/d.ebbktW9lvPsQpMtoMlkokKMaM5mZ9Fe', 3, NULL, NULL, NULL),
(17, 'sami1', 'sami1@abc-gcc.com', '4234', '324', NULL, '$2y$10$UN/ZxaPiMUrMxZsG7fadyOgMu6io42DHrYZ4lubuZlONgGULG6Rje', 1, 'FI896Q7ncGGkX2M6BBZ8MnTGBXcqIBWVYFN1Y34elSWfqd17eXIJyuXMtiIj', NULL, NULL),
(18, 'sami2', 'sami2@abc-gcc.com', '432423', ';lfskl;fksaldf;lasdf', NULL, '$2y$10$ymITYo1BqJfGrgEAPcYfVOFl6n7EWQ3shgYIBMB2sIT.nk3P6pHDa', 1, NULL, NULL, NULL),
(19, 'samistore', 'samistore@abc-gcc.com', '4234213', 'al;skdf;las', NULL, '$2y$10$WLPv/wl0CNYj0Y3mwoKc4eWIfyDOzA2G9b9m9H5ReVhznwm6rvIfi', 3, 'NO9PlvacLa4RCtZlcvunZr6NAFgHfyHiIDlfrYfXbXJ2Al0nwpcK316S3XSr', NULL, NULL),
(20, 'test', 'test@student.com', '12345678', 'test', NULL, '$2y$10$lHFom/NWnlAdccj4zvZsP.yqHJpEs/Hws2AnALfOIqvoLvHi3VEqm', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_items`
--
ALTER TABLE `category_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_items`
--
ALTER TABLE `form_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_users`
--
ALTER TABLE `notification_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_receiving_materials_2`
--
ALTER TABLE `projects_receiving_materials_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_receiving_tools`
--
ALTER TABLE `projects_receiving_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_idle_items_request`
--
ALTER TABLE `project_idle_items_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_idle_tools_request`
--
ALTER TABLE `project_idle_tools_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_items`
--
ALTER TABLE `project_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_reciving_form`
--
ALTER TABLE `project_reciving_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_reciving_tools_form`
--
ALTER TABLE `project_reciving_tools_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_request_materials`
--
ALTER TABLE `project_request_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_tools`
--
ALTER TABLE `project_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_users`
--
ALTER TABLE `project_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reciving_goods`
--
ALTER TABLE `reciving_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_goods`
--
ALTER TABLE `request_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returned_items`
--
ALTER TABLE `returned_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returned_tools`
--
ALTER TABLE `returned_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools_categories`
--
ALTER TABLE `tools_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools_category_items`
--
ALTER TABLE `tools_category_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools_request_goods`
--
ALTER TABLE `tools_request_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_items`
--
ALTER TABLE `category_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `form_items`
--
ALTER TABLE `form_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `notification_users`
--
ALTER TABLE `notification_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `projects_receiving_materials_2`
--
ALTER TABLE `projects_receiving_materials_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `projects_receiving_tools`
--
ALTER TABLE `projects_receiving_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `project_idle_items_request`
--
ALTER TABLE `project_idle_items_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_idle_tools_request`
--
ALTER TABLE `project_idle_tools_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_items`
--
ALTER TABLE `project_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `project_reciving_form`
--
ALTER TABLE `project_reciving_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_reciving_tools_form`
--
ALTER TABLE `project_reciving_tools_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_request_materials`
--
ALTER TABLE `project_request_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `project_tools`
--
ALTER TABLE `project_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_users`
--
ALTER TABLE `project_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reciving_goods`
--
ALTER TABLE `reciving_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request_goods`
--
ALTER TABLE `request_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `returned_items`
--
ALTER TABLE `returned_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `returned_tools`
--
ALTER TABLE `returned_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tools_categories`
--
ALTER TABLE `tools_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tools_category_items`
--
ALTER TABLE `tools_category_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tools_request_goods`
--
ALTER TABLE `tools_request_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `make_item_idle` ON SCHEDULE EVERY 1 MONTH STARTS '2019-04-25 13:11:02' ON COMPLETION NOT PRESERVE DISABLE DO UPDATE shop.project_items
    SET `is_idle`=1
    WHERE updated_at <= DATE_ADD(now( ), INTERVAL -1 MONTH)$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
