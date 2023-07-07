-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2023 at 11:41 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `james`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Manager',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `pic`, `designation`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hexesis', 'hexesist@gmail.com', '$2y$10$ll4tHz0VG6fq0bAIuRFZO.bKc0atEb1l/wnijV1cmY23jMclaeV42', NULL, 'Manager', 'active', NULL, '2023-07-06 20:22:51', '2023-07-06 20:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`role_id`, `admin_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_02_054249_create_admins_table', 1),
(4, '2018_03_02_054250_create_admin_password_resets_table', 1),
(5, '2018_03_02_054631_create_roles_table', 1),
(6, '2023_07_06_155330_create_projects_table', 2),
(7, '2023_07_06_155416_create_tasks_table', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'developerOnly', 'developerOnly', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(2, 'role', 'role', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(3, 'admin.list', 'Admin List', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(4, 'admin.create', 'Admin Create', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(5, 'admin.edit', 'Admin Edit', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(6, 'admin.update', 'Admin Update', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(7, 'admin.remove', 'Admin Delete', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(8, 'user.list', 'User list', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(9, 'user.create', 'User create', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(10, 'user.edit', 'User edit', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(11, 'user.update', 'User update', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(12, 'user.remove', 'User remove', '2023-07-06 20:22:51', '2023-07-06 20:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'E-Commerce Website', '2023-07-06 16:28:41', '2023-07-06 16:28:45'),
(2, 'Websocket Updates', '2023-07-06 16:29:04', '2023-07-06 16:29:07'),
(3, 'Angular Upgrade', '2023-07-06 16:29:25', '2023-07-06 16:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'developer', 'Developer', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(2, 'Admin', 'Admin', '2023-07-06 20:22:51', '2023-07-06 20:22:51'),
(3, 'Super', 'Super Admin', '2023-07-06 20:22:51', '2023-07-06 20:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `user_id`, `project_id`, `time`, `created_at`, `updated_at`) VALUES
(1, 'Product Pages', 3, 1, 5, '2023-07-06 16:30:33', '2023-07-06 16:30:35'),
(2, 'Shopping Cart', 4, 1, 10, '2023-07-06 16:30:56', '2023-07-06 16:31:01'),
(3, 'My Account', 3, 1, 5, '2023-07-06 16:31:20', '2023-07-06 16:31:22'),
(4, 'Add to Socket.IO', 1, 2, 2, '2023-09-01 16:31:40', '2023-07-06 16:31:48'),
(5, 'Enable Broadcasting', 1, 2, 5, '2023-07-06 16:32:04', '2023-07-06 16:32:06'),
(6, 'Adjust Interface', 1, 2, 3, '2023-07-06 16:32:19', '2023-07-06 16:32:21'),
(7, 'Upgrade Angular', 2, 3, 15, '2023-07-06 16:32:40', '2023-07-06 16:32:42'),
(8, 'Fix Broken Things', 1, 3, 10, '2023-07-01 16:33:00', '2023-07-06 16:33:05'),
(9, 'Test', 2, 3, 10, '2023-07-06 16:33:16', '2023-07-06 16:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `profile_pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `profile_pic`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Stuart', 'stuart@gmail.com', '$2y$10$INuZ76psRKBEQN3/.K9aIeGRJCOQZIRO06ySE.FGhgPJ6X1O25neC', 'active', NULL, 'jekKfQGqGof2NfIyCGaB0resgkJpzcxoCs9n4rjfKggVgO9QOGlTofxRDgPM', 'vkADwUoqPE0yPIB6XbZqg4Y5gIGh8cAE3KqrcVXbHfI67xd7uMF9HxDRt8x1', '2023-07-06 21:26:31', '2023-07-06 21:26:31'),
(2, 'Lan', 'lan@gmail.com', '$2y$10$bpOnN2ujAPspLC1Z2vC4zOsFnQsQBsupYq.bnxRfGE.YtBztVfkJG', 'active', NULL, 'KClvmOdpQcQ0DgCmT0a16PIbkFKwoprZpyJ0FS5OpRYexvY5fxIeJV3cnTfG', 'SNu06dNjq2l3yMqk2yOrrBIQORdSZlt5izLdwnKP9XVmXZAjEJnZAORo9d5i', '2023-07-06 21:26:57', '2023-07-06 21:26:57'),
(3, 'Adam', 'adam@gmail.com', '$2y$10$oNND5Mwd3Aqo6lSGUf1O5..LrsoCMSe7UjKHaQ4edQQ9IxGOVyVpe', 'active', NULL, 'YUfQVR90NeTvX6QyiIumfPg6sEvW61PxhrtmLR0nkSdSSLyDHLSHMAgVwbvH', 'qH88fUUcvVR5buTwqb0qq8mle8VF37CduibnHCn7Y1Wu3YkN64sWfP9rggpY', '2023-07-06 21:27:23', '2023-07-06 21:27:23'),
(4, 'Tyler', 'tyler@gmail.com', '$2y$10$v59q52lmA7mSlasJJTBvwusog1JFEvZG57Q9f.Q1IDyNGs67yQVbG', 'active', NULL, 'zzRxtmR6FZBqNs9yGCzcydJTBk6GPB7Q3yTyqvNDslVC9akFSGwbzZUvnNTr', '4zfxpiTwmarnwFbu68ObufpHii6dXpxmaY3nio46rBAf2eLBX5QY5f0OTQJP', '2023-07-06 21:27:47', '2023-07-06 21:27:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`role_id`,`admin_id`),
  ADD KEY `admin_role_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD CONSTRAINT `admin_role_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
