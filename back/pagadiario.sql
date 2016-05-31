-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2016 a las 05:53:40
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pagadiario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abonos`
--

CREATE TABLE `abonos` (
  `id` int(10) UNSIGNED NOT NULL,
  `cuota` double NOT NULL,
  `prestamo_id` int(10) UNSIGNED NOT NULL,
  `autor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `celular` int(11) NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barrio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zona` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(10) UNSIGNED NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_05_30_043829_clientes', 1),
('2016_05_30_044946_empleados', 2),
('2016_05_30_051458_prestamos', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id` int(10) UNSIGNED NOT NULL,
  `prestamo` double NOT NULL,
  `interes` double NOT NULL,
  `totalprestamo` double NOT NULL,
  `cuotas` int(11) NOT NULL,
  `valorcuota` double NOT NULL,
  `debito` double NOT NULL,
  `empleado_id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `tipo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Petra Breitenberg II', 'effertz.landen@example.net', '$2y$10$a.thfPntYRhb8qwSdYYFhum5GKyLwT6ZW6rfV1JwwMs.J/J4Z1xd6', 'empleado', 'BvBi5w7Xi18nXEkGKOOX', '2016-05-31 00:05:45', '2016-05-31 00:05:45'),
(2, 'Mr. Tito Crooks PhD', 'mcdermott.aimee@example.net', '$2y$10$KpiUPzpLvnZ8tQ2CO9o97ust3dxFccaoRr28917l5R5wXE3mpBM6e', 'empleado', 'lFRdUHfgfC5xPvkmIs1n', '2016-05-31 00:05:45', '2016-05-31 00:05:45'),
(3, 'Sabryna Schmidt', 'lysanne.conroy@example.net', '$2y$10$GajsGlJJviqh0IylC1TFxe5I72pc8ZsxQvxDmjVf9bRwmYRl/cqSK', 'empleado', 'OVPLuegKJKXOmzCZ9HxU', '2016-05-31 00:05:45', '2016-05-31 00:05:45'),
(4, 'Angelina Smitham I', 'yfunk@example.org', '$2y$10$uhitX8kU8BmWq6DxmOwhCeE2swPoji5l.aQH/GjAguHBpifcBrN6u', 'empleado', 'SPTmfPeQLaYMzQWHTS1S', '2016-05-31 00:05:45', '2016-05-31 00:05:45'),
(5, 'Giuseppe Waters', 'hane.anabelle@example.com', '$2y$10$QUHmK2ttXney24ueFCfQoeEyz5G.tkaBj4EJDkDwGG6Njb7Pmcqpi', 'empleado', '594PImMaXR4ZvXNBKymW', '2016-05-31 00:05:45', '2016-05-31 00:05:45'),
(6, 'Eulah Bogan II', 'shanelle.breitenberg@example.org', '$2y$10$M5HEcqTDsQH3VA.tXwAF6edwTeH0Ot/r17wfPRKBEa8uuNE9ENvIS', 'empleado', '9mV26dFL3UbWF17jhIDN', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(7, 'Prof. Khalil Tremblay Sr.', 'effie37@example.org', '$2y$10$zuMw1qFC3rN8Iio4LRhh..K3G1aXCUnO.4ynkKVgrxgugFsnrFHsa', 'empleado', 'GE2eN7ALfpsAbyD4C0Xw', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(8, 'Sarah Durgan', 'ywilkinson@example.net', '$2y$10$HEUZyZyAMwyglwgmNWR4IeyJ9Fp3hfNGr3XV9FX.JWmJeLPbkfSOW', 'empleado', 'L1jXO3mhmzZ3a3SbgmD3', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(9, 'Ludie Effertz IV', 'dbarrows@example.com', '$2y$10$eavnbT3vtT0JrwJPGKEn7O5.ZHx9AyHWKLCHiWZv62HoF7lrdLsey', 'empleado', 'UvLwVxMjwSNgJZ27pAAC', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(10, 'Rico Berge', 'tillman.sarina@example.com', '$2y$10$1H3bTY5TN5MIsm1HIZNSfOnJOpCXk78VQrJmKb6Ds6Msh3hL9dGju', 'empleado', 'ocdo63FEXg4Q6QCsR2e3', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(11, 'Mr. Kayley Lakin MD', 'rogers.stiedemann@example.net', '$2y$10$eg/oJZgVu49AfBUTKYK6xek3p8s6rUFTupzcxifhKelfOThrLBZTa', 'empleado', 'XCr7yKf4KmUDZujPnNQn', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(12, 'Ms. Laurie Schowalter V', 'walsh.chris@example.org', '$2y$10$ZhxYpKVtBMPClhZrLzSL7..9MWCZXo/qNVZkjsIrSuO7ctKQAByd6', 'empleado', 'rjC5PTqvFnmlQbsKSqLA', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(13, 'Fern Schamberger', 'thiel.jess@example.com', '$2y$10$kO3yj3RcxVUs7K7gWOX/auPUZ.iRYN513cmv.LNLoHqi4nES6mHWO', 'empleado', 't5saAiDD4WV7LwnOIb8K', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(14, 'Kadin Erdman', 'flo70@example.com', '$2y$10$IFuxLqUm2BuAFma27VOGUe5H90rCIaat9juanE0kz2njIinr54eBe', 'empleado', 'N9JZbukBxZoLykkHvo5b', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(15, 'Clarabelle Luettgen', 'nels.west@example.com', '$2y$10$1mmaEBF1F6NR3NaLcQf5Oe.wiIzsa3Vi.0J7Jm6wD3FgNwVxofpm.', 'empleado', 'IpyOUlM7BGcrEAGSshFc', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(16, 'Candida Emard', 'boris.satterfield@example.org', '$2y$10$iKhUEOr2Rh9ugTecPIxusOW9e23yjD0WaZzmC/Cp2/X95OTc.OTRW', 'empleado', 'QzqHqTxkpBX6iEgdjhTa', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(17, 'Gianni Casper', 'pinkie.stracke@example.com', '$2y$10$sXwSws/L2Kdj1IbFiTO17u9df2wE/hLhKvFj6W.dtECViTD87BlRe', 'empleado', 'CDG2fVmK988UgeRv0VPZ', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(18, 'Heather Volkman', 'jerde.alvah@example.org', '$2y$10$LPT0Eq7CBYL9sssBJxLxduG/LNB68baqZ0ESf6H7/AYPkFLD..ITu', 'empleado', '1G99gXZNrU7aN3m9YtRO', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(19, 'Chelsea Zulauf', 'tyson21@example.org', '$2y$10$zo6gkXCmscgKFuM7q2NGeOlrD8ziIJuBTyWbpb9FIuGtP.2LqqPdG', 'empleado', '2kfSOIIKL1wzSomHUSEy', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(20, 'Deja Halvorson', 'powlowski.sigmund@example.org', '$2y$10$PWJb93gQ6U3BvHTHTi1mJ.b8xhKR611T0KOPsca6gfv4llmsZW1Rm', 'empleado', 'WdjI69rUU1VrW5jExvEG', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(21, 'Evert Hansen', 'lueilwitz.jany@example.org', '$2y$10$JTykfhXNUf9id.YxBQwEHunU4W3jUYAneWHt/gGJwg.EHaKSeSj8S', 'empleado', 'UMuHN2BVgumKpQpvEyzK', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(22, 'Stella Rohan I', 'mattie.rau@example.net', '$2y$10$mbkXUPXM1fdrWtYWIME5C.FXVspb2XbuymC3bOHnTqKo6RvubBPz.', 'empleado', 'q5v4hb7AOd6IMJlbqlhn', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(23, 'Katlyn Friesen', 'ytillman@example.org', '$2y$10$M2yotlvZIxIoDeYYzSBQd.7hBNm6YPqsuQe.ix.bb4ZjGNJJqR3WS', 'empleado', '4a92yIpCmZoFd4JoMYLF', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(24, 'Ms. Nakia Hammes', 'sydni.lehner@example.com', '$2y$10$V40tc1kXduiMOMKYpdTuzucK./0L3fMslsUhg.gFStA9e9fiecbU.', 'empleado', 'Ih6HiD6Bu8FGFh06Mv5b', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(25, 'Johnathan Rolfson DDS', 'allen.towne@example.net', '$2y$10$uAH/nRDw9iIidBk2/VWtk.eCOljTDuasCVquRsygovf5ETqwg4zoy', 'empleado', 'XEOngcnyjrZnNLpPkfJe', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(26, 'Patsy Hickle DDS', 'astroman@example.org', '$2y$10$dOIPMBWZGIfhgReTPpD10uKKgQnvELlMASq0DO1XCtwkJS6KBfRpq', 'empleado', '2K4H45WC8JP6WwPrwyYt', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(27, 'Dr. Kay Barrows', 'collier.austyn@example.com', '$2y$10$UqRn.Uq4wXjGWTFW7C2CPO9wq6y99hmYWBA5Xcln/6K29qoiNuJNK', 'empleado', 'bKiTKXgGK1Zmk5IycRwN', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(28, 'Sonya Willms', 'bins.tyler@example.net', '$2y$10$dUZ0t2t1QN/PaN0ak8d.tuiA3/IV5gelZrZ/koLUs3Tl26JXpOSDC', 'empleado', 'x03w7GptxsjlMGuJC9WQ', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(29, 'Ivory Terry', 'will99@example.net', '$2y$10$zlV8yhfpXMFYOzty.lpF5OoKDBtlMxIYa/RB56P4D/nAKSdcCwd3i', 'empleado', 'VPybrcN9vn7APFpOOQDg', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(30, 'Tremayne Sporer', 'monahan.novella@example.net', '$2y$10$xUxfqKNRKjJiVyAVipSCpea5/WSpJKQxMnBbgQGAkHS3CtqnZNCBm', 'empleado', 'D3UQCWUQFTSgL9xxJ00g', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(31, 'Mark Davis', 'isimonis@example.com', '$2y$10$QNsKY16PQlXHAP1sfUUY/e215GaPWUQIXkmJiSCaF9/5naRjGAs36', 'empleado', '5I9ROwRLji4O00FG3O8E', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(32, 'Bulah Torp', 'fkling@example.net', '$2y$10$X5mbnujZf9s3JjqSdOHb.ORjTbe6GOrN/6yf1RADDGgJWg1dmrVxO', 'empleado', 'ixUWIQs3ELwCLqxvG6oq', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(33, 'Nicholaus Moen V', 'jude.olson@example.com', '$2y$10$aST1mmpBdSCS8UVBRhnR9uJeAqqRGdqvNKYfv/txCPPPJ4pSPgnBO', 'empleado', 'Y0voYJkL4vCVJEIdHOMx', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(34, 'Dr. Virgil Abbott', 'krodriguez@example.org', '$2y$10$ZEi6k.N14ZMhpAEIHkFikug18OKqZa/xsyM9D6NP.yLo3GrE1BaQK', 'empleado', 'w7VVczE36OGj3pk72HkU', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(35, 'Prof. Ashlee Gaylord DDS', 'tmitchell@example.com', '$2y$10$Xr54dK/ncYt22gBxHCsS0uX8VHlPeDrWAXNFD09uEEf2FH3gqcN8y', 'empleado', 'YE1nfGaalITBb6f5Q05u', '2016-05-31 00:05:46', '2016-05-31 00:05:46'),
(36, 'Damien Schaefer', 'kayden48@example.net', '$2y$10$xLlV6qlLSESxks0I8oHVM.HJCCLjcGXP7kCHJTvCDxB7jzK9Ghf.G', 'empleado', 'CUzoJLprKjKHSqI5PedT', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(37, 'Miss Penelope Simonis', 'dickens.roger@example.org', '$2y$10$7GQARg68hKYb6G2FSzhZAeS02vz0KKGOVtzlLuLMtk7eUki38tB1e', 'empleado', 'OdUQp8YCsjYe53gLctD1', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(38, 'Jeromy Wolff', 'jeremie.greenholt@example.net', '$2y$10$kQvch19qPbgywDa/Zi7t3ertA8oKjPQ9yJp9Xm.LQiTMcvSRShdQG', 'empleado', 'KGBJgajZx1DfOxVrMOED', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(39, 'Dangelo Streich', 'xschneider@example.org', '$2y$10$wS3won8MVtIZmX5zFtTO/ebg0SLPK5rTbPE1u2lXnxXYIipD4.aTi', 'empleado', '9HdZOp8ZzNixNCNdeEKd', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(40, 'Laura Braun', 'ewald.mann@example.net', '$2y$10$wfYLhWDbitOWrIxfnCbMyuNY5D5JXWV57mAtk2lISe7hYTtEEcD82', 'empleado', 'mg9eQ26f5OQaoXU1Buor', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(41, 'Ivy Corwin', 'dorris69@example.com', '$2y$10$Qq2LHXGZ2A4oTjvJypZCp.K.BjLiFf/9PvuFXtCFgdD2TgxqTRAYm', 'empleado', 'nWDY16l5JsYPZ67OGlRY', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(42, 'Miss Rosalinda Zemlak', 'mae62@example.org', '$2y$10$ggjz9mwEBkkJ65eyMVobOOj2Lb55XEpPQbY669GrzQBdQPbe3E3nK', 'empleado', 'wGk1HPx2FyKbw9B1Yx1p', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(43, 'Miss Jessyca Wehner', 'linda45@example.org', '$2y$10$1PtHMljS2utXNWK0zgvSAuk2OokXhmNhwWfFxAWbFFw9hreZl8vxm', 'empleado', '38w9R7gHW7Vn2WrrJm7q', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(44, 'Alexandro Gerhold', 'arlie.green@example.net', '$2y$10$6Rel5eJdFOVuYrQJVhHhk.G0f7G/CkVECZej3C3Jx1Tyw6tEkGM/.', 'empleado', 'S4yhxkU3aRWMnHnjgAKr', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(45, 'Mr. Darwin Keebler', 'walter.kennedi@example.org', '$2y$10$vEQP0.vhfxAFU5Inz/wf5OpwKyR0R.jMtE7RAWuoEMHx6ru0VtQiy', 'empleado', 'cazcsOxJiNmjH1fFlovc', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(46, 'Tianna Casper Sr.', 'aleen.murray@example.net', '$2y$10$LngK.XaV8/y6DW5KPiGN8.v/tkxWzQIRNFCtH7ZH2K4OnFSzd3Fli', 'empleado', '3Z5O8BqrJgQ8fRHB9JeJ', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(47, 'Prof. Makenna Goyette MD', 'hwisoky@example.org', '$2y$10$uEMSo5/tlFmI0GSrMn1Hp.YNd1cyMrE9NeuKn.lrIKwxrNfGnahTK', 'empleado', '9tzq52KoXYEMT3nqPQIc', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(48, 'Dr. Neil Crist', 'kstanton@example.net', '$2y$10$F3Qww0YQzGenUt2DBaHcCe76Pr3d/Y3JeMbF33JeXnGvFHJdtx9Ju', 'empleado', 'e4O5XJyyL90wuCWS22Op', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(49, 'Prof. Franco Kassulke', 'lehner.amari@example.com', '$2y$10$.2NmfZeSK4uEGuu1M0bKPuIDBftBWeKjoAmPcQq5UP9jr/CziBUk.', 'empleado', 'MkXff93DqAonZg6qNKYQ', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(50, 'Dr. Manuela Heller Jr.', 'adrianna.hauck@example.com', '$2y$10$dh5mwK71NISjXw/RwQIaG.fG7iL4F1U1AdBa0XyraLTpT4s4Ffl1G', 'empleado', '9cVh1cxftwOIl7xIbAXC', '2016-05-31 00:05:47', '2016-05-31 00:05:47'),
(51, 'Geraldine Welch', 'kylee.beatty@example.net', '$2y$10$iZSIfztBlbelMX3U8gDGyeRgO0WffTv1tGEYuldEoIV/hJJH6GYc.', 'empleado', 'g0v9eQ4MckTF0qGTNYpj', '2016-05-31 00:24:39', '2016-05-31 00:24:39'),
(52, 'Cecelia Beatty', 'mandy26@example.net', '$2y$10$5cm3IJbtUPV/CFIhStOtQ.kFTg8fOle.5VTlhNmZvANnCjVLj8r7W', 'empleado', 'bNhIF57gnel0Pn2zQ5yn', '2016-05-31 00:24:40', '2016-05-31 00:24:40'),
(53, 'Mr. Matt Stehr Jr.', 'lou.marvin@example.com', '$2y$10$lYOISxLqMZectLz6OUv/WegtNcXz1IoteaM20TpxgKw.Fx6xE5dZy', 'empleado', 'BCrJ5UPqKOmTdcfHSNx0', '2016-05-31 00:24:40', '2016-05-31 00:24:40'),
(54, 'Prof. Kelli Frami', 'imogene.turcotte@example.net', '$2y$10$QcZTnsdtsIJrOly9GV4xw.L76rqUTbwvi8KzheXV419/ktS1EidxC', 'empleado', 'uk30U6wd0jUfOctvL72I', '2016-05-31 00:24:40', '2016-05-31 00:24:40'),
(55, 'Mr. Easton White', 'river.nitzsche@example.org', '$2y$10$jBkG9NpXHn8fpnBaz6dFUuoSnLI.ZEl8boim8OnV2rqOI5HwEiwSW', 'empleado', 'HisS5COmBhPGzFkaD2K4', '2016-05-31 00:24:40', '2016-05-31 00:24:40'),
(56, 'Bobby Boehm V', 'zachery46@example.com', '$2y$10$BPuinWZD3qv2rDHwE0wlTOLqrAz0ScTFCLMAnxJcv.YrD99rAMc7y', 'empleado', 'Xwt3SlqIrr4wVt5Eg8uC', '2016-05-31 00:24:40', '2016-05-31 00:24:40'),
(57, 'Ottis Gerhold Sr.', 'torrance.batz@example.org', '$2y$10$ME.u2GbOkdVCmMzBooSYN.INZMFTSDjMFardoQ3ZNmRIhgv1EkuNS', 'empleado', 'OJ5gpYquQvhFH2BwxqMa', '2016-05-31 00:24:40', '2016-05-31 00:24:40'),
(58, 'Rose Carter', 'rice.hayden@example.com', '$2y$10$lNiYiEkmt/gSC9wQrqZ8SOQdptdmZUtjSAqEQbw0qdjTuI23OKYd2', 'empleado', 'IchxfRreWW28GJ8pGwTb', '2016-05-31 00:24:40', '2016-05-31 00:24:40'),
(59, 'Mollie Maggio DDS', 'dolly85@example.com', '$2y$10$U/eZGsymHmaMNzbIcxkTPO7Psnb4XwewV6jUw0lKvCApgeJ5raH4.', 'empleado', 'GZvxgJVjERBCBctJObgC', '2016-05-31 00:24:40', '2016-05-31 00:24:40'),
(60, 'Raina Macejkovic', 'vicky25@example.net', '$2y$10$p8bRZw7yJrRFt3AQy9Lc2.lnEdR2ddWCWkrjyjnSVwPiDVZHAQpCq', 'empleado', 'j0Y37fRtP5wn4nmMrM6u', '2016-05-31 00:24:40', '2016-05-31 00:24:40'),
(61, 'Eugenia Mayer', 'lspencer@example.org', '$2y$10$tbEgyOilYPTxqfVoJbqTeONnIFvvIVleZa2RhnUNXfJo.s9YpyGNO', 'empleado', 'SOQqaNo44i6twRZVm0H4', '2016-05-31 00:24:40', '2016-05-31 00:24:40'),
(62, 'Izabella Kessler IV', 'gladys58@example.net', '$2y$10$CmOs6hqz/MoD650XtKCg4e2YkHe1uAB1ZTzyz08kqR2L9Fwg6Jg1e', 'empleado', 'qfCIjsElILHwFdGpcnCB', '2016-05-31 00:24:40', '2016-05-31 00:24:40'),
(63, 'Dr. Nicholas Kihn', 'sandrine23@example.net', '$2y$10$rXvTqV1tQZe1MqblwOeev.XM4hEbX9IgOs5FnS82hDCWmVXFEDdya', 'empleado', 'yoKrDaG6sxZ38YdEVRVO', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(64, 'Tia Dach IV', 'ernie.schroeder@example.net', '$2y$10$RwQGvyk4W7Y9z0sK3n7BXOdaY4gMftgsZ344ewHiaMb52838meak2', 'empleado', 'kQw4GEWpEfSbUTtsxLXY', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(65, 'Lawson White Jr.', 'dion.murray@example.org', '$2y$10$cjoD7nqW3v72DySI9SrCrugMrigDkUYkCzMIMfY0zeKiDc0x2za5C', 'empleado', 'rWiFOp2hdjCjm8jkRTs3', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(66, 'Travon Herman', 'hope.bradtke@example.org', '$2y$10$B8yrl1KDOzilHhR3I5y.HeRhFJxrW.5M0QvP4XjDU79HB6H6Wu2Fi', 'empleado', 'CstwzMV4FAA50VHEwRJ2', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(67, 'Mr. Richard Kshlerin', 'kristina70@example.org', '$2y$10$CnBsFpELaj4qJgwSUl5nr.2HOHK5Uu2bOaS1w2frOSNMEEHGbX6my', 'empleado', 'K9Xd1IyVF1jmL9vCqlGI', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(68, 'Ettie Will', 'nprosacco@example.com', '$2y$10$mtmT7ESKntH4qxZzDKmpCeYegyw4cmChTqLKz9iiO0R/qlWplITmy', 'empleado', 'YyxceugCgjGa857BykjP', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(69, 'Zion Feil', 'raina04@example.com', '$2y$10$MrSbTZrAdvk1VvhZZiZYoeIxwhVNg9slXw1UJLapq1CYhNwDoNhj.', 'empleado', 'xt4EC6JMCvtDJpIs8fqC', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(70, 'Deanna Adams IV', 'schumm.chanelle@example.com', '$2y$10$qg6aOaYCsvH/gUiwnBUbE.WjgWOi8Q0kdG8UZC4ZK0kNAAEmbBwm6', 'empleado', '0CCwD0GIc80j9J1Bk0D4', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(71, 'Jacques Rohan', 'wintheiser.melba@example.com', '$2y$10$Uw3xL07FY5ETfcKBC/P7rePs5Dq/WoIY69ho4j1YD.FCYbzcdxQ.u', 'empleado', 'AjowjFxy2cUP0BPbbBYQ', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(72, 'Dr. Lulu Rodriguez', 'yadira.ryan@example.com', '$2y$10$ducWBTVIbWXzLZKoBwmzuORAA5vAxxJicX6jof.Z5dAZGInhaFvI6', 'empleado', '9IWZj5fp2plEsBNBpcSl', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(73, 'Mr. Braulio Skiles III', 'moore.bridget@example.com', '$2y$10$28iW2pT7QTVBVGph9E9TbuS1gdM8.UYbm5F2wkLKIQLNRdFLTNKzu', 'empleado', 'WQ5pK89p7Xv6rMTY7w30', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(74, 'Ms. Jolie Altenwerth', 'clare.pagac@example.com', '$2y$10$A0QcRSd8yrF5Vj4XBt2Zve4Mzy0IWPSmhu6/9S1wFFi5shma/wiju', 'empleado', 'u7xG3NTTrLN6lojwi0My', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(75, 'Kiana Cassin', 'xpfannerstill@example.com', '$2y$10$G.xUufunBiz4bLhgraX7lepQwGFRgIVUVwU3fRs6jCB7TD5xLPzPG', 'empleado', 'a6B1euhEnG5NV5eizhs7', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(76, 'Ova Gleason Sr.', 'wilmer.simonis@example.org', '$2y$10$cxySD5t2.HJp5h8EbHf0POgi1Kyomddf4qa2TNjRz1krIsgES4YD2', 'empleado', 'iMxwkDYKhvGYTMwBSQ2h', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(77, 'Dr. Garry Hessel DVM', 'cathy.hayes@example.com', '$2y$10$XUlBBNiT5SYAcbQgNraTaedDbKJqsqov9mjFcvjnvF51l9N9uNDz2', 'empleado', 'QRIwWAXHsLEq8ODSBXxu', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(78, 'Dr. Sunny Stark', 'lavinia.kilback@example.net', '$2y$10$5.lVnPxYJDwyqJewfjSBM.8K76lL7FTSeYFKUHwEKb7wuRgGuIo6C', 'empleado', '62OQEVTTdaOgHwKfjFde', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(79, 'Dr. Hillary Batz', 'wendy.ward@example.net', '$2y$10$UW/D/2oLXJwUg0ZwzhPAdO1JpYtsn2virCtZsxRqauClQnrpLWyyq', 'empleado', 'NJHJIxTOrJ6axPoFy9bx', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(80, 'Gretchen Boyer', 'nitzsche.avis@example.net', '$2y$10$8e18zbRsT2ugZUGMiENazOkH35Jt5erPcMP0hfsC7EK.G41dF61VK', 'empleado', 'CN1GaeqPuy9AxmN9JBwk', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(81, 'Sandy Muller', 'ratke.kassandra@example.org', '$2y$10$1rhvVKg2qp7.n7PXOLjN0ug3doY6c9KBfJ872gUWtCHHKFw5L4/Za', 'empleado', 'RWlb53R1PRsgT1se9mMw', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(82, 'Carolanne Wolf', 'donny15@example.org', '$2y$10$y6GMChJO98q1Dep9gdXvbOK0X.bNWw7LErYsU27wloVlITO2T68Nm', 'empleado', 'oqXyPGvUPPSx5qlpb9N3', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(83, 'Emmy Kunde', 'rosemarie20@example.com', '$2y$10$EJIgd3YgzqUlZsE5IFy2/ulFMWsZb9Ip30fwv6Nj7RiJQYabDShZG', 'empleado', 'BTfJNK5EWzLlCvdvsXGj', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(84, 'Ruby Olson MD', 'alexandra33@example.com', '$2y$10$ig2geBM0tyvI1e/dzNXNvOrZdePeXFpa6ox4zeH5q1DDonjDQNVX2', 'empleado', 'SBvGdWcvw8SUKHMMaGM0', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(85, 'Dr. Jakayla Grimes', 'pouros.jettie@example.com', '$2y$10$WaFSOBingcJymT6RvAb81e47f/CVnqpNstiRcEI3Ljr6mT0iV2iFu', 'empleado', 'CZyMtoVmLWXGJoIS1imb', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(86, 'Prof. Chandler Yundt Sr.', 'alakin@example.org', '$2y$10$kIRC9SFZiM855m6dziPCa.XXB5oP1e285725h6T62oVfseP59hJMC', 'empleado', 'Vrenlp41xiPXPyroMyMQ', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(87, 'Wendell Cassin', 'alfonzo.beier@example.org', '$2y$10$Z9CF0u4x6d5h6ImZk/LMP.qTldPrHI7EQl5bPYmvGjlz4pXpxpAB.', 'empleado', 'YQBvXLZN8hHvpJcPuk2S', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(88, 'Clair Cremin', 'roob.simeon@example.org', '$2y$10$ku4gKxGh7mbpDrXL4dpo0uNubyjQ8oVnU4jyv6LDEsFkJyGwut2R2', 'empleado', 'jAtKxLsIFachgwXoFjvD', '2016-05-31 00:24:41', '2016-05-31 00:24:41'),
(89, 'Tamara Pfeffer I', 'brandyn.herman@example.com', '$2y$10$BTcOK.UlFMDxSS6nmbcU8O9LASdVgh/nWOuYbfKhiP8F.csPKCM.a', 'empleado', 'Yy7tVLT4SQELrwKbDlwl', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(90, 'Delaney Hackett Sr.', 'pbergstrom@example.com', '$2y$10$upJF2mSiRzrhlp.1RmEKDeFN8oAQirbMuoV3vXv/.FEvOGzh2Rhci', 'empleado', 'sAZw2pXXZaji1Xk56U8m', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(91, 'Ms. Maryam Prohaska IV', 'mohr.dariana@example.org', '$2y$10$3F5c7neM8x7pZQKY4e1eoO3/zmjmh3JCEUn6tCrUfKWEvvoF.m6k6', 'empleado', 'KefU5oNrfiQMSehleYCN', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(92, 'Mr. Frederick Green', 'nadams@example.com', '$2y$10$nTWWhFymiOxRUK41T1NMW.8iTIwZ/3LaOB5fp4WegoJ9fPEEIaoWW', 'empleado', 'qr7Fy8tTjgXAdf1Xv0a8', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(93, 'Ms. Burdette Block', 'hcassin@example.org', '$2y$10$ErgZVP961SeemPn/eZ0eQuNssm1NXx9UWy/ONzywmHUUC378bXZF6', 'empleado', '3QHAKtVzUAaerDfZWeLL', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(94, 'Iliana Olson', 'okon.vinnie@example.org', '$2y$10$sByNboxDLmOMjZPjMZk7seutlJQ6vYzKPmpsNasfyaga7QF4C6pNy', 'empleado', 'ZmnBU3bX4p4nOov3hUEC', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(95, 'Micaela Beahan', 'rframi@example.net', '$2y$10$7bShzLQCquPxHoY22PN6HevmrVnH/wd.RIZR.ndq1y5V984cc8nUS', 'empleado', 'zqviFRX3m5Ocn8pgkv0v', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(96, 'Ashton Larson', 'milan20@example.com', '$2y$10$vqo1Nanh/7SsS849hRAe7eYGzsVT8qk6cj4F5wE5NnIjickyimQbK', 'empleado', 'OGY0LXWUHk3CqsZKcbEh', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(97, 'Forrest Hamill DDS', 'danial.reichert@example.org', '$2y$10$9/C5wjQpqUVIWPKRf2gnVu8J2B4ADDQnEQxWRTFmBD5.9wDxu9trO', 'empleado', 'MIGSNu1O0yYUJOkK4dMT', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(98, 'Whitney Bednar', 'rozella.daniel@example.com', '$2y$10$h9LuYu22/Ea2DDm2aZRFCORtU8KGs26HudkQa.clt9BE2tQyihRsC', 'empleado', 'KHxm2y7jdQPqw1d20DdT', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(99, 'Aracely Jaskolski', 'goldner.eldred@example.net', '$2y$10$bUk.N5E51k0LUuOBVTUpV.3iljlOPg8Oqz3qT8uYqGiji1hYPsbY2', 'empleado', 'ADeXzOiz3gF8SMtKjROd', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(100, 'Marisol Quigley', 'perry.botsford@example.net', '$2y$10$ak8jmSsorROY9OwSI2D4pe39EIew18M/gAP/rCIgUZANICpYSWZLm', 'empleado', 'eeKO07VQjjDPpOKNu9M0', '2016-05-31 00:24:42', '2016-05-31 00:24:42'),
(101, 'Javonte Wilkinson II', 'weimann.coralie@example.net', '$2y$10$r3WFmoZR2P.wSgowH4DOiOiAzIibpOri3JquAH4xasBCS6DU.QYzG', 'empleado', 'KWuQ3pHCxbudLWa8tHiu', '2016-05-31 00:27:38', '2016-05-31 00:27:38'),
(102, 'Jessica Muller', 'sabryna.gorczany@example.org', '$2y$10$st.4M5Ryq/Ju6LGp53qXsOgImed/FlgPsyxren5f3JyLh.DVbau5C', 'empleado', 'wkC4x1bK9Xs73I0YKlO7', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(103, 'Eulah Hintz', 'maybell12@example.com', '$2y$10$a.hJrPIqazuJbwqju2qbD.C12WivOS8XXykMfG8ad3cKNmeNyOXNK', 'empleado', 'R09W2X4gwCSzvx0htQ4j', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(104, 'Leonard Herzog', 'hweber@example.net', '$2y$10$PPajNbzi3zoJ2c./YhwRduy0ipkknjvmhVNQcHO1vM9gSwOI.Uc.q', 'empleado', 'aiilHNemXD7AiTC8Cbu6', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(105, 'Genesis Sanford', 'cassin.mafalda@example.com', '$2y$10$8mEgBkF2bzo0xkxGzRkqxeVAVRh9UaAsOl4yii97RceR1vpazKd2W', 'empleado', 'JxPA5dzSvqOYKkvovGqT', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(106, 'Jerad Kuvalis', 'alysson90@example.org', '$2y$10$ldMBjEpUi234L66NyWS9R.z8Babp8oOvdsZsI2ogDtyhHHuFaHo4q', 'empleado', 'hn0HRDWHEaX6dHNp7eTE', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(107, 'Stefan Johnson II', 'lucile.bayer@example.com', '$2y$10$U.NynrhujnBQHyqvLxBTWeM6.q4rszOxlhdoVBxQD2FN1UszkHj6W', 'empleado', '1cdsZNT2iD1ZKY7YLuUD', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(108, 'Antone Miller V', 'roel49@example.net', '$2y$10$5uczs7l8XvxyQbXFd7vif.fYwzFzlp87p9YV6ypWvbipQE42TqpFa', 'empleado', 'rabVero5J5zXknaZrp0u', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(109, 'Gust Goldner PhD', 'qfeest@example.com', '$2y$10$cM7Qsqzus13IsaM4XQ3TROOVCHNe.i7FTg6s.vCRGZv.wZ/FgdNC.', 'empleado', 'FLxtr8SqAO2QgGSWvA6V', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(110, 'Emmitt Schuster', 'balistreri.blair@example.org', '$2y$10$3UQ.xqznIQp6cXkgK7AVPO4EEwUI4st.AMvG2aKqNyUTsuNhXllIC', 'empleado', 'kzZ2xF1aHcHGpjIiNKjx', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(111, 'Kianna Koelpin PhD', 'ukoch@example.net', '$2y$10$iqcM3b2pYxkZzkNxpY.mDOzEjZN8c1/Pq6YWO5439aJNQfhbXwc8i', 'empleado', '7j5ykh5F3hwmtH7mpGde', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(112, 'Kieran Grimes', 'hanna.lebsack@example.net', '$2y$10$/C7tuTw3qNbh6/uZpv4OBeE14BAP.TF4WK16g48krJstUpi1GQ6Vy', 'empleado', 'RyYM1Z44aJx4vIEDyopK', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(113, 'Jordon Baumbach', 'freeman.powlowski@example.net', '$2y$10$WIEH4KbxwAlK2Fa22aBBHuBZ1Px9JLP/TxHcGZv9RmUiiLSh./uXu', 'empleado', '3d1K4G8L4I9U3qyZsvXr', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(114, 'Libbie Greenfelder', 'garnett93@example.com', '$2y$10$/87IoKPQJiiCKuIOtdnK6uy4kXxGbqbCGzc85XSl3DRh0k.X6a/rq', 'empleado', 'S3So2PTqprdYT1eA8dPv', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(115, 'Kelly Stehr', 'lhaley@example.com', '$2y$10$xwscahMQ2BQ1zso9DXaRuOsKngcfF7Z5agyB2VuuReHUESMttwHc2', 'empleado', 'V1xxeiDuULm2xb0g8Ist', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(116, 'Prof. Thaddeus Weissnat DDS', 'liliane.rohan@example.com', '$2y$10$co72zKxhWXM4A.fRMrwD1O2bfSeAcTP4YoofPt7AXiWII2Y0P3EcG', 'empleado', '67rIkMKCNb0y4GZS2Mub', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(117, 'Prof. Dawson Oberbrunner MD', 'bogisich.jana@example.org', '$2y$10$akvXrXgONiWWVVPqABzDvuyq4gmLzJolkUhyV73Vhr2g1uVcHVckO', 'empleado', 'PwSZOIaxtMdSPhIEgGYC', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(118, 'Garrison Pfeffer', 'gbeier@example.com', '$2y$10$jJ7thjQTXR8nJ5UZCTpbYeEywBN5g7KFf7ksYjT6zFoKg1yy3stlu', 'empleado', 'Retwj2T5XCquK1ZcS7AA', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(119, 'Mr. Luigi Lebsack Sr.', 'uhalvorson@example.net', '$2y$10$nOORBDZr2W49d26Jt8Y/euFNiYxP8I8CaMGs1xa9v7jNgJGsqHTQK', 'empleado', 'o9JHSlpzERgtUIevTO7c', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(120, 'Micah Kohler', 'ernser.mallie@example.org', '$2y$10$e6j8GUMRuuYQ/FURkt2CSeEksU14Kn5a0t7sZ1yEsL1ZRi0.j51pS', 'empleado', 'dDo27OcUzFTDiO8jiKRC', '2016-05-31 00:27:39', '2016-05-31 00:27:39'),
(121, 'Eliza Kassulke', 'kiara.torphy@example.net', '$2y$10$YQRMdgJvGWzC7cAY87jc1.zhgjb3rTE2En6zD22kNq4O8N87Thnem', 'empleado', '9MN5jZCaCtguXbvat1I1', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(122, 'Shaylee Bradtke III', 'foster07@example.net', '$2y$10$y5PIZLZj3A.NWn/a8Ud/eeu8LzSBj0VnsHBySYLuGxwhcNpoM00WK', 'empleado', 'NjfyNMh7WfAEO3XtMWD4', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(123, 'Juanita Paucek', 'umacejkovic@example.org', '$2y$10$rYh5YfFL3LLDEa6wHR54E.mG4RTC8.sD.ifZUVe2HQGUe/Evn4gu.', 'empleado', 'mOBDqE2Rbek6muQ3PF6v', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(124, 'Alfreda Jacobson PhD', 'susanna90@example.com', '$2y$10$Ww81SMnHZPczLr8/.Aoz2.cm2bclowNyB8wtK1ImIxsxaezUCDr9C', 'empleado', 'j4EWyyFNOFNzXdlXl3xi', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(125, 'Mrs. Ramona Schmeler', 'dhettinger@example.com', '$2y$10$RFfvhsCZnK8GoiPHD0mTXO.eLQUtTSZ3osYTNTC2yP0uLliWZVh.S', 'empleado', 'viSVnyQy69eMWpMfVsas', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(126, 'Dr. Ferne Bahringer', 'elwyn22@example.net', '$2y$10$oleABoMGIq2arCYShvyqn.3KLYSmEu/.QWssE69CXTTCIdK5ylLWy', 'empleado', 'KA83oGBjSoyhskjF5r4p', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(127, 'Mr. Taurean Hermiston', 'stella30@example.org', '$2y$10$0R7qcXiF9ShxxXrM2a5Rpu2a7i4c4LaWdXIBJLj6F4ZhU.QcHry9W', 'empleado', '3RZrvSvnGrQLoKoGTgTx', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(128, 'Ms. Mireille Bergnaum', 'carmela16@example.net', '$2y$10$c0zBjYT1cJolkRDGfDWOieDcMwwU.5Nc7grfDO1wiFofdL3l3RREy', 'empleado', 'oV2NlEj18EeNrtGEFRDK', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(129, 'Marc Boyle', 'kianna52@example.org', '$2y$10$yU0QpNmQbOlNLKrSJqW2.OJu5BpuibjL7kwQYdbMr8q8wB/PbI9fS', 'empleado', 'sjXZiwW4wt2vVY3is7kW', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(130, 'Haleigh Koss', 'jaeden18@example.org', '$2y$10$3B9T3Pyncz4CTISWJL8lyuPw/5ZQlJBccjCzOKSFi3f2kYW4cBNH6', 'empleado', 'F2p9yMeaenaZpvyttjDO', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(131, 'Jazmyne DuBuque DDS', 'hailie.oconnell@example.com', '$2y$10$l7zmRgiEN3bNpcOjWdGHyOCXdQst.y8EtEd54ZPD/7m59KNKq6ebi', 'empleado', 'NeiRoJLxuE0SWas7lCXX', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(132, 'Raquel Goldner', 'zachery.gaylord@example.com', '$2y$10$yzXg0Y1m3vJnMMD.B5WDj.tolv65z2HUqFUlZnzvuiIzyjkTdOd82', 'empleado', '568gkGgdSWRIUOWBeGum', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(133, 'Bernice Schroeder', 'vdavis@example.org', '$2y$10$fMTCk4fpvcX84xw0wPHf.uoQjkP3IGTUrEHuEkZPbhphQWKnXSVc2', 'empleado', 'V6thRLfnmhqr75Z3TUTt', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(134, 'Lavada Stanton Sr.', 'earnestine24@example.com', '$2y$10$zqdaI4RKk92PWjxAGu/qU.ensQtZ/0BAzzlVird.UtJHuXdplQ3Qm', 'empleado', 'fReInXHVUSImut6lWczt', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(135, 'Nels Nicolas', 'rcrooks@example.com', '$2y$10$.NJdWxwveHEYp46I9xkM7ulux7vZLiBdVKFH4y1pvqrs/vEnA6XZm', 'empleado', 'Jd24bgWHmGxL44ZfTkJz', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(136, 'Enoch Baumbach', 'ylang@example.com', '$2y$10$8YAjYwqEiCCJCrb53y.nKOGJWvuCRX.SRarB6a7LpWnH86kUli.rS', 'empleado', '5Wsp9qKYVAJ1Mel1FJhj', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(137, 'Peyton Gleason', 'jamey09@example.net', '$2y$10$ns4xmAOrJT/UgIISset.T.ZUr8qbYrW/1Eh2UbX/2teX0uN8Zduu2', 'empleado', '8plpLaCQ8UMpk26KZSHn', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(138, 'Brycen Nader', 'norris.wilkinson@example.net', '$2y$10$5N1x184aQCSh720bL4lRkeS6zES.aD8hai84.2so.nL3R4ERKw/9W', 'empleado', '4mRpglz35n39VDnXY0C0', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(139, 'Monica Kuvalis IV', 'wilber.macejkovic@example.net', '$2y$10$odxfGR5rvnU7MGh7WTqdLOcwmPtVCbcgkHpct5HrK26UUsoxWYqQO', 'empleado', 'GW4jWOtmbIZhP6BJUAsd', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(140, 'Khalid Hessel', 'veum.mireille@example.org', '$2y$10$a4FPBjJ0VM.ih3IyiqKyBO5cYzJyi5qVKiEUGpOFVts7Dq77qKLUW', 'empleado', 'gcwnFDZHX6VXSOh6u3y5', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(141, 'Benny Bogisich', 'lorenza95@example.com', '$2y$10$06XzBCN2iGueMTT7/0seo.Cj3ekEYuiwCylkOB.WTU34OQk59fBpe', 'empleado', '6nYSD6MmPYm4jfF81rJ9', '2016-05-31 00:27:40', '2016-05-31 00:27:40'),
(142, 'Dorothea Marvin', 'raquel67@example.com', '$2y$10$3f1zgvwq/LaC8Rbn5J7pvuW4xd6Cw.3m2bd.5p5mki.19zCqaZtSe', 'empleado', 'bG6Lh4YX5UDyi5vW2nQK', '2016-05-31 00:27:41', '2016-05-31 00:27:41'),
(143, 'Clemmie Mante', 'farrell.shakira@example.com', '$2y$10$Ieuvp6pCVUKGVkiwMsZFZ.ap3nAM/V6np7MbXQW47TUEpV7x4ae.m', 'empleado', '8zmIp4CkorPkOpR2l1Hz', '2016-05-31 00:27:41', '2016-05-31 00:27:41'),
(144, 'Mrs. Ada Greenholt I', 'waelchi.kaleigh@example.net', '$2y$10$zb.kVAH1Ht.N3GymMN3DzOEvkHZMM1MVrxNcrWN/RY.SBq86kd1Zm', 'empleado', 'Nto9hXogw4lVEAsNbfwd', '2016-05-31 00:27:41', '2016-05-31 00:27:41'),
(145, 'Mrs. Josianne Jacobs II', 'kerluke.uriah@example.net', '$2y$10$OEUvXYSUb75dLt8FcwkbYuJi6wA0T8y69yYWlBAaYJp.HEdpJeAL6', 'empleado', 'FY24f9NSZXDCP21UA74O', '2016-05-31 00:27:41', '2016-05-31 00:27:41'),
(146, 'Adolph Wisozk', 'josefa16@example.org', '$2y$10$by48rtg2sGmm9UgGoHx0X.spaMAVW9PV/oRy5Mzn1/7VtheOpSBOO', 'empleado', 'BhaSN7PMQU2CfxsB95Br', '2016-05-31 00:27:41', '2016-05-31 00:27:41'),
(147, 'Miss Ara Schaefer V', 'mcclure.madison@example.org', '$2y$10$wYakP2sUo9eoM48Lcrcf6upKRsA4A99RtzjIkKJbR.G3y0ye2xYxS', 'empleado', 'uoafYs9to3IIKP1oP22x', '2016-05-31 00:27:41', '2016-05-31 00:27:41'),
(148, 'Miss Bernice Balistreri Sr.', 'kuphal.wayne@example.com', '$2y$10$2BCv49fqp8Tm3kHLF5CNj.XiBPcgoycXg3p/n6XHLaNg1mmxwJd4O', 'empleado', 'JTip3Fq7mNWCxW4VKmGe', '2016-05-31 00:27:41', '2016-05-31 00:27:41'),
(149, 'Kole Hauck', 'uhomenick@example.com', '$2y$10$tSeY4JZJbzunFn/y.5iDz.zfT2stau3VRSTefULcojkKQB2Ns3QQa', 'empleado', 'ImUvQkM7nrqD36AYtdvy', '2016-05-31 00:27:41', '2016-05-31 00:27:41'),
(150, 'Mrs. Anissa Hessel', 'charley29@example.org', '$2y$10$Gj6rnsMCJ.HMkj0uxajYKOrHnQGN7FRglX1b0dsG2n3lTPFnRFopy', 'empleado', 'gCfA7NlMepn2aNJW8jY3', '2016-05-31 00:27:41', '2016-05-31 00:27:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abonos`
--
ALTER TABLE `abonos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abonos_prestamo_id_foreign` (`prestamo_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_cedula_unique` (`cedula`),
  ADD UNIQUE KEY `clientes_email_unique` (`email`),
  ADD KEY `clientes_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `empleados_cedula_unique` (`cedula`),
  ADD UNIQUE KEY `empleados_email_unique` (`email`),
  ADD KEY `empleados_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prestamos_empleado_id_foreign` (`empleado_id`),
  ADD KEY `prestamos_cliente_id_foreign` (`cliente_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abonos`
--
ALTER TABLE `abonos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abonos`
--
ALTER TABLE `abonos`
  ADD CONSTRAINT `abonos_prestamo_id_foreign` FOREIGN KEY (`prestamo_id`) REFERENCES `prestamos` (`id`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `prestamos_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
