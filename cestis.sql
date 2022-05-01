-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2022 a las 04:27:45
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cestis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `id` bigint(11) NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenido` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `anuncios`
--

INSERT INTO `anuncios` (`id`, `imagen`, `contenido`, `created_at`, `updated_at`) VALUES
(1, 'becas.webp', '', NULL, NULL),
(2, 'becas2.webp', '', NULL, NULL),
(3, 'covid.webp', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arg_alumno`
--

CREATE TABLE `arg_alumno` (
  `id` bigint(11) NOT NULL,
  `id_gg` bigint(11) NOT NULL,
  `id_esp` bigint(11) NOT NULL,
  `id_alm` bigint(11) NOT NULL,
  `id_turn` bigint(11) NOT NULL,
  `id_sexo` bigint(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `arg_alumno`
--

INSERT INTO `arg_alumno` (`id`, `id_gg`, `id_esp`, `id_alm`, `id_turn`, `id_sexo`, `created_at`, `updated_at`) VALUES
(14, 11, 1, 31, 1, 5, NULL, NULL),
(16, 11, 1, 33, 1, 5, NULL, NULL),
(17, 11, 1, 34, 1, 6, NULL, NULL),
(19, 11, 1, 36, 1, 5, NULL, NULL),
(22, 11, 1, 38, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arg_maestro`
--

CREATE TABLE `arg_maestro` (
  `id` bigint(11) NOT NULL,
  `id_gg` bigint(11) NOT NULL,
  `id_esp` bigint(11) NOT NULL,
  `id_mst` bigint(11) NOT NULL,
  `id_turno` bigint(11) NOT NULL,
  `id_sexo` bigint(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `arg_maestro`
--

INSERT INTO `arg_maestro` (`id`, `id_gg`, `id_esp`, `id_mst`, `id_turno`, `id_sexo`, `created_at`, `updated_at`) VALUES
(5, 11, 1, 10, 1, 6, NULL, NULL),
(6, 11, 1, 11, 1, 6, NULL, NULL),
(7, 11, 1, 12, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arg_public`
--

CREATE TABLE `arg_public` (
  `id` bigint(11) NOT NULL,
  `id_mst` bigint(11) NOT NULL,
  `id_pbc` bigint(11) NOT NULL,
  `id_gradgrup` bigint(11) NOT NULL,
  `id_esp` bigint(11) NOT NULL,
  `id_turno` bigint(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `arg_public`
--

INSERT INTO `arg_public` (`id`, `id_mst`, `id_pbc`, `id_gradgrup`, `id_esp`, `id_turno`, `created_at`, `updated_at`) VALUES
(20, 12, 32, 11, 1, 1, NULL, NULL),
(21, 10, 33, 11, 1, 1, NULL, NULL),
(22, 10, 34, 11, 1, 1, NULL, NULL),
(23, 11, 35, 11, 1, 1, NULL, NULL),
(25, 12, 37, 11, 1, 1, NULL, NULL),
(26, 10, 40, 11, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classmodels`
--

CREATE TABLE `classmodels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clase` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `classmodels`
--

INSERT INTO `classmodels` (`id`, `tipo`, `clase`, `created_at`, `updated_at`) VALUES
(1, 'Alerta primaria', 'alert-primary', '2022-04-23 01:43:42', '2022-04-23 01:45:36'),
(2, 'Alerta secundaria', 'alert-secondary', '2022-04-23 01:44:45', '2022-04-23 01:45:29'),
(3, 'Completado', 'alert-success', '2022-04-23 01:45:20', '2022-04-23 01:45:20'),
(4, 'Peligro', 'alert-danger', '2022-04-23 01:45:55', '2022-04-23 01:45:55'),
(5, 'Advertencia', 'alert-warning', '2022-04-23 01:46:19', '2022-04-23 01:46:19'),
(6, 'Información', 'alert-info', '2022-04-23 01:46:42', '2022-04-23 01:46:42'),
(7, 'Alerta blanca', 'alert-light', '2022-04-23 01:47:20', '2022-04-23 01:47:20'),
(8, 'Alerta oscura', 'alert-dark', '2022-04-23 01:47:44', '2022-04-23 01:47:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descargas`
--

CREATE TABLE `descargas` (
  `id` bigint(11) NOT NULL,
  `id_gg` bigint(11) NOT NULL,
  `id_esp` bigint(11) NOT NULL,
  `id_turn` bigint(11) NOT NULL,
  `descripcion` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `descargas`
--

INSERT INTO `descargas` (`id`, `id_gg`, `id_esp`, `id_turn`, `descripcion`, `ruta`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, 'Horario', '6AP_horario.pdf', NULL, '2022-04-24 05:00:13'),
(3, 11, 1, 1, 'Calificaciones', '6AP_calificaciones.pdf', '2022-04-24 05:16:14', '2022-04-24 05:16:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` bigint(11) NOT NULL,
  `especialidad` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `especialidad`, `created_at`, `updated_at`) VALUES
(1, 'Programación', NULL, NULL),
(2, 'Contabilidad', NULL, NULL),
(3, 'Ofimática', NULL, NULL),
(4, 'Ninguna', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradgrup`
--

CREATE TABLE `gradgrup` (
  `id` bigint(11) NOT NULL,
  `grado` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gradgrup`
--

INSERT INTO `gradgrup` (`id`, `grado`, `grupo`, `created_at`, `updated_at`) VALUES
(1, '1 - 2', 'A', NULL, NULL),
(2, '1 - 2', 'B', NULL, NULL),
(3, '1 - 2', 'C', NULL, NULL),
(4, '1 - 2', 'D', NULL, NULL),
(5, '1 - 2', 'E', NULL, NULL),
(6, '3 - 4', 'A', NULL, '2022-04-19 02:32:37'),
(7, '3 - 4', 'B', NULL, '2022-04-19 02:32:31'),
(8, '3 - 4', 'C', NULL, '2022-04-19 02:32:23'),
(9, '3 - 4', 'D', NULL, '2022-04-19 02:32:16'),
(10, '3 - 4', 'E', NULL, '2022-04-19 02:32:10'),
(11, '5 - 6', 'A', NULL, NULL),
(12, '5 - 6', 'B', NULL, NULL),
(13, '5 - 6', 'C', NULL, NULL),
(14, '5 - 6', 'D', NULL, NULL),
(15, '5 - 6', 'E', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` bigint(11) NOT NULL,
  `usuario` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discapacidad` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `usuario`, `password`, `correo`, `img`, `nombre`, `discapacidad`, `created_at`, `updated_at`) VALUES
(10, 'emma', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'emma@josprox.com', 'IMG_20220211_104222.webp', 'Emma N', 'Ninguna', NULL, '2022-04-24 05:55:04'),
(11, 'puff', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'kenia@josprox.com', 'IMG_20220211_120541.webp', 'Kenia N', 'Ninguna', NULL, '2022-04-24 05:55:13'),
(12, 'norma', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'norma@josprox.com', 'Norma.webp', 'Norma Carreón', 'Ninguna', NULL, '2022-04-24 05:55:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_15_000005_numcontrols', 1),
(6, '2022_04_22_202625_classmodels', 2),
(7, '2022_04_22_202923_notifications', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Contenido` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `tipo`, `Contenido`, `created_at`, `updated_at`) VALUES
(2, 'Información', 'Desde ahora podrás agregar otro grado, grupo y especialidad, así podrás publicar en su panel de estudiante.', '2022-04-23 02:08:25', '2022-04-23 02:08:25'),
(3, 'Alerta secundaria', 'La información de la versión TIMELINE v5.0.1 beta 2 ya se encuentra disponible para su descarga, <a href=\"https://next.josprox.com/nextcloud/index.php/s/G5t7TPAwydYyDa9/download/v5.0.1%20beta2.docx\" class=\"text-white\">Clic aquí</a>.', '2022-04-23 02:14:00', '2022-04-23 02:24:47'),
(4, 'Alerta secundaria', 'La información de la versión TIMELINE 6.0.1 Beta 4 ya se encuentra disponible para su descarga, <a href=\"https://next.josprox.com/nextcloud/index.php/s/96etf5cEqcdLjwW/download/TIMELINE%20versi%C3%B3n%206.0.1%20beta%204.docx\" class=\"text-white\">Clic aquí</a>.', '2022-04-23 02:22:08', '2022-04-23 02:27:20'),
(5, 'Completado', 'Se ha actualizado el sistema a Cetis CWP 6.1', '2022-04-23 02:23:51', '2022-04-23 02:23:51'),
(6, 'Alerta secundaria', 'La información de la versión Cetis CWP timelinet versión 6.1 ya se encuentra disponible para su descarga, <a href=\"https://next.josprox.com/nextcloud/index.php/s/2PYxHkR54fc9cfP/download/Cetis%20CWP%20timelinet%20versi%C3%B3n%206.1.pdf\" class=\"text-white\">Clic aquí</a>.', '2022-04-23 06:17:14', '2022-04-23 06:17:14'),
(7, 'Información', 'Desde este momento, la sección de notificaciones está funcionando, se recomienda que cheques las mejoras de la nueva versión de Cetis CWP timelinet versión 6.1.', '2022-04-23 06:19:51', '2022-04-23 06:20:09'),
(8, 'Completado', 'Se ha actualizado el sistema a Cetis CWP 6.1.1', '2022-04-24 23:45:25', '2022-04-24 23:45:25'),
(9, 'Alerta secundaria', 'La información de la versión Cetis CWP timelinet versión 6.1.1 ya se encuentra disponible. <a href=\"https://github.com/josprox/Cetis-CWP#timeline-versi%C3%B3n-611-soluci%C3%B3n-de-errores\" class=\"text-white\">Clic aquí.</a>', '2022-04-25 01:16:36', '2022-04-25 01:19:03'),
(10, 'Información', 'Ahora podrás descargar el proyecto COMPLETO desde github. <a href=\"https://github.com/josprox/Cetis-CWP/\" class=\"text-white\">Vamos allá.</a>', '2022-04-25 01:20:31', '2022-04-25 01:21:05'),
(11, 'Completado', 'Se ha actualizado el sistema a Cetis CWP 6.2', '2022-05-01 07:25:37', '2022-05-01 07:25:37'),
(12, 'Alerta secundaria', 'La información de la versión Cetis CWP timelinet versión 6.2 ya se encuentra disponible. <a href=\"https://github.com/josprox/Cetis-CWP/releases/tag/V6.2\" class=\"text-white\">Clic aquí.</a>', '2022-05-01 07:26:43', '2022-05-01 07:26:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numcontrols`
--

CREATE TABLE `numcontrols` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curp` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `numcontrols`
--

INSERT INTO `numcontrols` (`id`, `num`, `curp`, `created_at`, `updated_at`) VALUES
(1, '19309060540339', 'MEEL040608HDFLSSA2', '2022-04-15 05:13:29', '2022-04-15 05:13:29'),
(3, '19309060540247', '-', '2022-04-17 03:03:50', '2022-04-17 03:03:50'),
(4, '19309060540318', '-', '2022-04-17 03:04:01', '2022-04-17 03:04:01'),
(8, '19309060540379', '-', '2022-04-22 05:35:54', '2022-04-22 05:35:54'),
(9, '19309060540241', '-', '2022-04-22 05:43:08', '2022-04-22 05:43:08'),
(10, '19309060540242', '-', '2022-04-22 05:43:20', '2022-04-22 05:43:20'),
(11, '19309060540234', '-', '2022-04-22 05:43:29', '2022-04-22 05:43:29'),
(12, '19309060540854', '-', '2022-04-22 05:44:03', '2022-04-22 05:44:03'),
(13, '19309060540272', '-', '2022-04-22 05:44:20', '2022-04-22 05:44:20'),
(14, '19309060541627', '-', '2022-04-22 05:45:32', '2022-04-22 05:45:32'),
(15, '19309060540266', '-', '2022-04-22 05:45:55', '2022-04-22 05:45:55'),
(16, '19309060541654', '-', '2022-04-22 05:46:18', '2022-04-22 05:46:18'),
(17, '19309060540287', '-', '2022-04-22 05:46:31', '2022-04-22 05:46:31'),
(18, '19309060540290', '-', '2022-04-22 05:46:46', '2022-04-22 05:46:46'),
(19, '19309061520330', '-', '2022-04-22 05:47:10', '2022-04-22 05:47:10'),
(20, '19309060540313', '-', '2022-04-22 05:47:39', '2022-04-22 05:47:39'),
(21, '19309060540291', '-', '2022-04-22 05:48:09', '2022-04-22 05:48:09'),
(22, '19309060540295', '-', '2022-04-22 05:48:24', '2022-04-22 05:48:24'),
(23, '19309060540307', '-', '2022-04-22 05:48:48', '2022-04-22 05:48:48'),
(24, '19309060540310', '-', '2022-04-22 05:49:04', '2022-04-22 05:49:04'),
(25, '18309060540491', '-', '2022-04-22 05:49:37', '2022-04-22 05:49:37'),
(26, '18309060540155', '-', '2022-04-22 05:50:06', '2022-04-22 05:50:06'),
(27, '18309060541362', '-', '2022-04-22 05:50:35', '2022-04-22 05:50:35'),
(28, '19309060540329', '-', '2022-04-22 05:50:50', '2022-04-22 05:50:50'),
(29, '19309060541431', '-', '2022-04-22 05:51:04', '2022-04-22 05:51:04'),
(30, '19309060540347', '-', '2022-04-22 05:51:38', '2022-04-22 05:51:38'),
(31, '19309060540362', '-', '2022-04-22 05:51:52', '2022-04-22 05:51:52'),
(32, '19309060540365', '-', '2022-04-22 05:52:09', '2022-04-22 05:52:09'),
(33, '19309060540370', '-', '2022-04-22 05:52:34', '2022-04-22 05:52:34'),
(34, '19309060560567', '-', '2022-04-22 05:52:54', '2022-04-22 05:52:54'),
(35, '19309060540376', '-', '2022-04-22 05:53:06', '2022-04-22 05:53:06'),
(36, '19309060540393', '-', '2022-04-22 05:53:28', '2022-04-22 05:53:28'),
(37, '19309060540396', '-', '2022-04-22 05:53:46', '2022-04-22 05:53:46'),
(38, '19309060540404', '-', '2022-04-22 05:54:03', '2022-04-22 05:54:03'),
(39, '19309060540411', '-', '2022-04-22 05:54:18', '2022-04-22 05:54:18'),
(40, '19309060540413', '-', '2022-04-22 05:54:40', '2022-04-22 05:54:40'),
(41, '19309060540415', '-', '2022-04-22 05:55:03', '2022-04-22 05:55:03'),
(42, '19309060540417', '-', '2022-04-22 05:55:14', '2022-04-22 05:55:14'),
(43, '19309060540421', '-', '2022-04-22 05:55:31', '2022-04-22 05:55:31'),
(44, '19309060540422', '-', '2022-04-22 05:55:45', '2022-04-22 05:55:45'),
(45, '19309060540425', '-', '2022-04-22 05:56:01', '2022-04-22 05:56:01'),
(46, '19309060540427', '-', '2022-04-22 05:56:15', '2022-04-22 05:56:15'),
(47, '19309060540429', '-', '2022-04-22 05:56:29', '2022-04-22 05:56:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` bigint(11) NOT NULL,
  `iduser` bigint(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vista` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `iduser`, `titulo`, `vista`, `descripcion`, `created_at`, `updated_at`) VALUES
(32, 12, 'Conceptos Generales', 'Trabajo para clase', 'Con el objetivo de rescatar saberes previos, resuelve el cuestionario que se detalla en el documento de Word e inserte imágenes correspondientes al tema.', NULL, NULL),
(33, 10, 'PRACTICA 2 PARCIAL 3', 'ELABORAR LA PRACTICA CONTENIDA ', 'ELABORAR LA PRACTICA CONTENIDA NO OMITIENDO QUE SE ENTREGARAN DOS DOCUMENTOS :\r\nWORD CON IMAGENES DE LOS CODIGOS Y FORMULARIOS\r\nBLOC DE NOTAS CON 2 CODIGOS (FORMULARIO Y EL QUE CONTIENE EL METODO POST PARA LLAMAR Y MOSTRAR VARIABLES)', NULL, NULL),
(34, 10, 'REGISTRO DE EQUIPO', 'REGISTRAR EN UN DOCUMENTO DE WORD', 'REGISTRAR EN UN DOCUMENTO DE WORD LOS INTEGRANTES DE SU EQUIPO ,RECUERDEN QUE:\r\nAL MENOS UN INTEGRANTE DEBE CONTAR CON XAMPP\r\nDEBEN SER MAXIMO 6 POR EQUIPO', NULL, NULL),
(35, 11, 'PROYECTO FINAL', 'Para el proyecto final se realizará en equipo una página web llamada INDEX.HTML', 'Para el proyecto final\r\nse realizará en equipo una página web llamada INDEX.HTML\r\nque contendrá una tabla, el tema a desarrollar será de libre elección ya sea de\r\ndeportes, autos, video juegos, modas, cosméticos, tenis etc.\r\nSigue las instrucciones que se indican el archivo de word adjunto y también en el video tutorial.', NULL, NULL),
(37, 12, '19.- Mi escuela', 'Objetivo: El estudiante realizara una aplicación que integre varias ventanas y me muestre el plantel de mi escuela CETis No. 54, el tema es libre, puede ser las instalaciones, los profesores, los talleres, etc.', 'Objetivo: El estudiante realizara una aplicación que integre varias ventanas y me muestre el plantel de mi escuela CETis No. 54, el tema es libre, puede ser las instalaciones, los profesores, los talleres, etc.\r\n\r\n1.-  Agregamos los siguientes elementos para el diseño de nuestro proyecto y una función principal es que la aplicación lleve texto, imágenes, hable y se pueda desplazar por las siguientes ventas, así como regresar al inicio y salir. Deberá tener condiciones, solicitar información, y vario elementos que hemos realizado en los ejercicios anteriores.  Como mínimo deberá tener por las menos 10 ventanas, el estudiante es libre de colocar los elementos de acuerdo a sus diseño y función de su aplicación.', NULL, NULL),
(40, 10, '16.- Salario Múltiple', 'Actividad: Realizar una aplicación, que por medio de teclado me permita introducir el nombre del trabajador, los días y horas trabajadas, las faltas por día y por hora', 'Objetivos:\r\n· Usar los componente del área de Disposición\r\n· Realizar el Diseño\r\n· Programar las solicitudes\r\n\r\n Actividad: Realizar una aplicación, que por medio de teclado me permita introducir el nombre del trabajador, los días y horas trabajadas, las faltas por día y por hora; Que me calcule por medio de botones al evento click por DIA, SEMANA, QUINCENA Y MES, arrojando resultados del Salario bruto, los descuentos de los días y/o horas no trabajadas, que descuente el ISR y me muestre el salario neto después de las deducciones realizadas.\r\n Se comparte el diseño de la aplicación.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `id` bigint(11) NOT NULL,
  `sexo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`id`, `sexo`, `created_at`, `updated_at`) VALUES
(5, 'Masculino', NULL, NULL),
(6, 'Femenino', NULL, NULL),
(7, 'No binario', '2022-04-16 05:48:12', '2022-04-16 05:48:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id` bigint(11) NOT NULL,
  `turno` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id`, `turno`, `created_at`, `updated_at`) VALUES
(1, 'Matutino', NULL, NULL),
(2, 'Vespertino', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'José Luis Melchor Estrada', 'joss@int.josprox.com', NULL, '$2y$10$1L1ZmE6gTQ1NYlCwb4GQBesiM0g1Quyzg3lOSMmdEdxCfcAJFVUyW', 'Tjpjpip1BqRH1vdQ1R5ddLEShPQRH1nq7c8swRcA1VeLItmcmqBxRcXvEL9j', '2022-04-15 05:12:26', '2022-04-15 05:12:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(11) NOT NULL,
  `usuario` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_control` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discapacidad` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `correo`, `img`, `num_control`, `nombre`, `discapacidad`, `created_at`, `updated_at`) VALUES
(31, 'josprox', '2b7dece1db9cea030242b61f343bd6870970ba26', 'joss@int.josprox.com', 'jossestrada.webp', '19309060540339', 'Melchor Estrada José Luis', 'Ninguna', NULL, '2022-04-24 05:56:50'),
(33, 'Alextremo', '2b7dece1db9cea030242b61f343bd6870970ba26', 'Rpramiro18@gmail.com', 'main.webp', '19309060540379', 'Paz García Alejandro', 'Ninguna', NULL, '2022-04-22 05:35:44'),
(34, 'xime04', '5387141cab2eab1e8da198dbf482feedf9a07f8e', 'anemixsanchez3@gmail.com', 'main.webp', '19309060540247', 'Aranda Sánchez Ximena', 'Ninguna', NULL, '2022-04-14 01:58:50'),
(36, 'Isra Lara', '41ccd4dc2cd47cec179a8378973c5994b7a1c987', 'isra.lara04@gmail.com', 'isra.webp', '19309060540318', 'Lara Prieto Jefte Israel', 'Ninguna', NULL, '2022-04-24 05:57:01'),
(38, 'eriicksanchez_', '2b7dece1db9cea030242b61f343bd6870970ba26', 'ericksanchez.100504@gmail.com', 'erick.webp', '19309060540234', 'Alvirde Sánchez Erick', 'Ninguna', NULL, '2022-04-24 05:57:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `arg_alumno`
--
ALTER TABLE `arg_alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `arg_maestro`
--
ALTER TABLE `arg_maestro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `arg_public`
--
ALTER TABLE `arg_public`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `classmodels`
--
ALTER TABLE `classmodels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descargas`
--
ALTER TABLE `descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `gradgrup`
--
ALTER TABLE `gradgrup`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `numcontrols`
--
ALTER TABLE `numcontrols`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `arg_alumno`
--
ALTER TABLE `arg_alumno`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `arg_maestro`
--
ALTER TABLE `arg_maestro`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `arg_public`
--
ALTER TABLE `arg_public`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `classmodels`
--
ALTER TABLE `classmodels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `descargas`
--
ALTER TABLE `descargas`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gradgrup`
--
ALTER TABLE `gradgrup`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `numcontrols`
--
ALTER TABLE `numcontrols`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
