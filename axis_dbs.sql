-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 03:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `axis_dbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `firstname`, `lastname`, `password`, `status`, `timestamp`) VALUES
(1, 'haseebmughal69', 'haseebmughal69@gmail.com', 'Haseeb', 'Mughal', 'hello', 'active', '2020-05-10 13:02:52'),
(2, 'fahad', 'fahad@gmail.com', 'Fahad', 'Irshad', 'fahad', 'active', '2020-05-10 20:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `type_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `status` text NOT NULL,
  `start_date` text DEFAULT NULL,
  `end_date` text DEFAULT NULL,
  `start_admin_id` int(11) NOT NULL DEFAULT 0,
  `end_admin_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `type_id`, `description`, `status`, `start_date`, `end_date`, `start_admin_id`, `end_admin_id`) VALUES
(3, 'First Project', 1, 'This is first project', 'completed', '2020-05-14 01:48:44', '2020-05-14 02:09:38', 1, 1),
(4, 'cdvdf', 1, 'asfasdfasd', 'active', '2020-05-14 02:16:37', NULL, 1, 0),
(5, 'Test Project', 1, 'hi', 'active', '2020-06-05 13:15:57', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_requirements`
--

CREATE TABLE `project_requirements` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `revision` int(11) NOT NULL DEFAULT 1,
  `project_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `supplier_date` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` text NOT NULL,
  `start_date` text DEFAULT NULL,
  `end_date` text DEFAULT NULL,
  `start_admin_id` int(11) DEFAULT 0,
  `start_user_id` int(11) NOT NULL DEFAULT 0,
  `end_admin_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_requirements`
--

INSERT INTO `project_requirements` (`id`, `name`, `revision`, `project_id`, `supplier_id`, `supplier_date`, `description`, `status`, `start_date`, `end_date`, `start_admin_id`, `start_user_id`, `end_admin_id`) VALUES
(7, 'First Requirement', 1, 3, 1, NULL, 'nsdhbvhbfds', 'active', '2020-05-14 01:48:54', NULL, 1, 0, 0),
(8, 'safsafas', 1, 4, 1, NULL, 'fsafas', 'completed', '2020-05-14 02:16:41', '2020-06-05 13:14:45', 1, 0, 1),
(9, 'New Requirement', 1, 5, 1, '2020-06-05 13:42:49', 'hi', 'finished', '2020-06-05 13:16:14', '2020-06-05 13:17:21', 1, 0, 1),
(10, 'Second Requirement', 3, 5, 1, '2020-06-05 14:26:04', 'jhdsfsd', 'finished', '2020-06-05 13:25:48', '', 1, 0, 1),
(11, 'Fixing of Bulb', 2, 5, 1, '2020-06-05 14:36:45', 'fixing', 'finished', '2020-06-05 14:29:56', '2020-06-05 14:38:37', 1, 0, 1),
(12, 'User Requirement', 1, 5, 1, '2020-06-05 15:09:08', 'user', 'finished', '2020-06-05 14:44:44', '2020-06-05 15:09:20', 0, 1, 1),
(13, 'Door is not closing...', 1, 5, 1, '2020-06-05 15:10:30', 'fsafs', 'finished', '2020-06-05 15:09:56', '2020-06-05 15:10:53', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_types`
--

CREATE TABLE `project_types` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_types`
--

INSERT INTO `project_types` (`id`, `name`) VALUES
(1, 'Construction'),
(2, 'Upgradation');

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE `project_users` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` text DEFAULT NULL,
  `end_date` text DEFAULT NULL,
  `start_admin_id` int(11) NOT NULL DEFAULT 0,
  `end_admin_id` int(11) NOT NULL DEFAULT 0,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_users`
--

INSERT INTO `project_users` (`id`, `project_id`, `user_id`, `description`, `start_date`, `end_date`, `start_admin_id`, `end_admin_id`, `status`) VALUES
(5, 3, 2, 'fdgd', '2020-05-14 01:52:14', NULL, 1, 0, 'active'),
(6, 3, 1, 'fdhfdg', '2020-05-14 01:52:17', NULL, 1, 0, 'active'),
(7, 4, 2, 'sa', '2020-05-14 02:16:44', NULL, 1, 0, 'active'),
(8, 4, 1, 'fasdfas', '2020-05-14 02:16:47', NULL, 1, 0, 'active'),
(9, 5, 1, 'bla', '2020-06-05 13:16:28', NULL, 1, 0, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `requirement_comments`
--

CREATE TABLE `requirement_comments` (
  `id` int(11) NOT NULL,
  `requirement_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `title` text NOT NULL,
  `comment` text NOT NULL,
  `file` text NOT NULL,
  `filename` text NOT NULL,
  `date_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requirement_comments`
--

INSERT INTO `requirement_comments` (`id`, `requirement_id`, `revision`, `user_id`, `supplier_id`, `title`, `comment`, `file`, `filename`, `date_time`) VALUES
(6, 7, 1, 2, 0, 'First comment', 'kjjksdfsd', 'files/5ebc884ca09720.44686523.png', 'Untitled.png', '2020-05-14 01:52:44'),
(7, 8, 1, 1, 0, 'gsfgdesfds', 'dsfsd', 'files/5ebc8e059d1e24.72081401.png', 'Basic Recipe.png', '2020-05-14 02:17:09'),
(8, 8, 1, 1, 0, 'Testing Comment', 'fhgbhyusaggfdhjas', 'files/5ebd82083d7051.45163699.png', 'Untitled.png', '2020-05-14 19:38:16'),
(9, 8, 1, 1, 0, 'Title comment', '', '', '', '2020-05-14 19:43:59'),
(10, 8, 1, 1, 0, 'ddsfksdjhn', 'nkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjfnkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjfnkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjfnkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjfnkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjfnkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjfnkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjfnkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjfnkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjfnkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjfnkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjfnkjds sdbnhjfhgsdbfmn sdnmfbds fsdhjfsdbhjf', '', '', '2020-05-14 19:45:08'),
(11, 8, 1, 1, 0, 'fdhgfdgfd', 'gdfgfdgsfd', 'files/5ebd83c9897c94.96913140.png', 'Untitled4.png', '2020-05-14 19:45:45'),
(12, 8, 1, 1, 0, 'test', 'This is comment test', '', '', '2020-05-28 11:28:07'),
(13, 8, 1, 1, 0, 'New Comment', 'hi', '', '', '2020-06-05 12:54:19'),
(14, 9, 1, 1, 0, 'hgajsah', 'hnkjsahnkajdd', '', '', '2020-06-05 13:16:56'),
(15, 9, 1, 1, 0, 'sdfsafssa', 'safdasfdas', '', '', '2020-06-05 13:16:58'),
(16, 9, 1, 1, 0, 'asfdasda', 'asdasdas', '', '', '2020-06-05 13:17:00'),
(17, 9, 1, 1, 0, 'asdas', 'asdas', '', '', '2020-06-05 13:17:03'),
(18, 9, 1, 0, 1, 'new commentsakjd', 'jskijdsak', 'files/5eda3132dfc093.74163179.png', 'Untitled.png', '2020-06-05 13:49:06'),
(19, 9, 1, 0, 1, 'zxfdasfd', 'fdsadasdas', '', '', '2020-06-05 14:00:46'),
(20, 10, 1, 1, 0, 'dsfdsf', 'dsffdsf', 'files/5eda3683735286.15181995.png', 'Untitled2.png', '2020-06-05 14:11:47'),
(21, 10, 1, 1, 0, 'sadsa', 'asdas', 'files/5eda36876520c7.74414750.png', 'Untitled4.png', '2020-06-05 14:11:51'),
(22, 10, 2, 0, 1, 'Requirement Completed', 'done!!!', '', '', '2020-06-05 14:23:19'),
(23, 10, 3, 1, 0, 'sdsad', 'sdasdasdsa', '', '', '2020-06-05 14:25:51'),
(24, 10, 3, 0, 1, 'done!', 'dsad', '', '', '2020-06-05 14:26:17'),
(25, 11, 1, 1, 0, 'Second floor bulb damage', 'jshjd', 'files/5eda3af83ff0c1.33068173.png', 'Untitled1.png', '2020-06-05 14:30:48'),
(26, 11, 1, 0, 1, 'Fixed!', 'ok', '', '', '2020-06-05 14:34:28'),
(27, 11, 2, 1, 0, 'Fan off', 'sdfsa', '', '', '2020-06-05 14:36:31'),
(28, 11, 2, 0, 1, 'fan is fine!', 'dsaj', '', '', '2020-06-05 14:38:30'),
(29, 12, 1, 1, 0, 'dsfsdf', 'sdfsd', '', '', '2020-06-05 15:09:03'),
(30, 12, 1, 0, 1, 'dsfsd', 'sdfsd', '', '', '2020-06-05 15:09:12'),
(31, 13, 1, 1, 0, 'hajsghy', 'bjhjasdas', '', '', '2020-06-05 15:10:22'),
(32, 13, 1, 0, 1, 'zxcfsadas', 'asdasdas', '', '', '2020-06-05 15:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  `last_login` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `username`, `email`, `firstname`, `lastname`, `password`, `status`, `last_login`, `timestamp`) VALUES
(1, 'haseeb', 'haseeb@gmail.com', 'Haseeb', 'Mughal', 'hi', 'active', '2020-06-05 14:26:36', '2020-05-28 08:55:48'),
(2, 'Fahad', 'fahad@gmail.com', 'Fahad', 'Irshad', 'hello', 'active', NULL, '2020-06-05 11:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  `last_login` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `firstname`, `lastname`, `password`, `status`, `last_login`, `timestamp`) VALUES
(1, 'haseebmughal', 'haseebmughal69@gmail.com', 'Haseeb', 'Mughal', 'hello', 'active', '2020-06-05 14:26:37', '2020-05-10 13:03:49'),
(2, 'fahad', 'fahad@xyz.com', 'Fahad', 'Irshad', 'fahad', 'active', '2020-05-14 01:53:17', '2020-05-10 20:12:20'),
(4, 'test', 'test@gmail.com', 'te', 'st', 'hello', 'active', NULL, '2020-05-28 08:51:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_requirements`
--
ALTER TABLE `project_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_types`
--
ALTER TABLE `project_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_users`
--
ALTER TABLE `project_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requirement_comments`
--
ALTER TABLE `requirement_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_requirements`
--
ALTER TABLE `project_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `project_types`
--
ALTER TABLE `project_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_users`
--
ALTER TABLE `project_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `requirement_comments`
--
ALTER TABLE `requirement_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
