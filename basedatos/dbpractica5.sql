-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2023 a las 09:51:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_13_192624_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `contrasena`, `created_at`, `updated_at`) VALUES
(3, 'fernando', 'suarez', 'jaquan24@hotmail.com', '>O<b/G', '2023-12-14 01:42:14', '2023-12-14 14:27:29'),
(5, 'Reynold Jaskolski', 'Crist', 'glover.daniela@strosin.com', 'GhkA`#{I9V6V', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(7, 'gerardo', 'arxo', 'lolita.skiles@hotmail.com', '0C?.1-nY3H&\\6PG@}R>*', '2023-12-14 01:42:14', '2023-12-14 13:56:35'),
(8, 'Dr. Keira Mann II', 'Gislason', 'fadel.reggie@deckow.com', '.s?+rTf.7:nSX90\']9', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(9, 'Mr. Kurt Raynor DVM', 'Dare', 'evalyn.nader@heaney.com', 'cRaIC.{-2U\'G^~U^7', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(10, 'Veronica Lemke', 'Larson', 'rlarson@hotmail.com', 'kXjk@1~y5RW`hqHqCPa}', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(11, 'Damian Conroy', 'Weimann', 'antonetta.hettinger@heathcote.biz', 'Md|\'D#!ZVY1CT6[U\\*5', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(12, 'Mabelle Hoppe', 'Labadie', 'cstanton@krajcik.com', 'l!Gj2h:', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(13, 'Rylan Pacocha', 'Eichmann', 'ivah45@trantow.net', '*f<?V?meRs9D', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(14, 'Lew Conn', 'Bashirian', 'slowe@gmail.com', 'Ap3z#{?L_UtE3=VSW}re', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(15, 'Prof. Dorothy Bergstrom', 'Dooley', 'ahmed.rosenbaum@ferry.biz', 'MeU&RCR8S)2?WzriU', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(16, 'Prof. Aletha Kassulke', 'Greenfelder', 'lynch.hellen@hotmail.com', 'XyYDFRzo', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(17, 'Jaquelin Glover DDS', 'Kunde', 'reva15@yahoo.com', ')C|TD*/*+]', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(18, 'Taryn Pagac', 'O\'Conner', 'trycia.fay@yahoo.com', '5+[^.t2hfmQV?9', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(19, 'Lorine Schinner Sr.', 'Cole', 'ngreenfelder@corkery.net', '!c}j{|c&', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(20, 'Jamey Russel DVM', 'Zulauf', 'felix.mraz@corwin.info', '06pK1?,q}T1', '2023-12-14 01:42:14', '2023-12-14 01:42:14'),
(21, 'charly', 'pacman', 'dibbert.mauricio@hotmail.com', '@;#dI\\iDq}Xn8[#.', '2023-12-14 06:49:33', '2023-12-14 06:49:33'),
(22, 'pedro', 'perez', 'soy@soy', '123456', '2023-12-14 07:01:28', '2023-12-14 07:01:28'),
(25, 'Mario123', 'chillon', 'soy@soy', '741', '2023-12-14 14:15:53', '2023-12-14 14:15:53'),
(26, 'Mario123', 'chillon', 'soy@soy', '741', '2023-12-14 14:16:00', '2023-12-14 14:16:00'),
(27, 'oscar', 'sainz', 'test@test', '741', '2023-12-14 14:16:59', '2023-12-14 14:16:59');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
