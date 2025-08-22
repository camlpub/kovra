-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2025 a las 15:13:27
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tomsom_crm_2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('103a19aa-9512-c5c4-30ef-673417096116', 'alejandro', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, '3503752816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10d921b3-5ecd-4ab7-dc80-67379d52f63b', 'ewqer', '2024-11-15 19:14:13', '2024-11-15 19:14:13', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '4dasdfas', NULL, NULL, NULL, NULL, NULL, '15448', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('17235a56-9c30-8aba-0fbd-673417bc6151', 'alejandro', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, '3503752816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1cd59f6f-502d-44d3-826b-664ea70e6522', 'hiug', '2024-05-23 02:18:43', '2024-05-23 02:18:41', '1', '1', '', 0, '1', NULL, NULL, NULL, '', '', '', '', '', '', NULL, '', NULL, 'http://', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, ''),
('264306db-1c88-a446-bea8-6736b6d8011c', 'prueba tarea', '2024-11-15 02:48:06', '2024-11-15 02:48:06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'dafa', NULL, NULL, NULL, NULL, NULL, '125464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('358bc8d4-eac3-7c01-8167-673416efba2e', 'datos prueba alejo', '2024-11-13 03:01:05', '2024-11-13 03:01:05', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, '36985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('361fb4aa-09e2-29cd-6a43-6737764bda36', 'alejandro', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, '3503752816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('5049f362-0868-96a0-23d9-6734119d2420', '36985', '2024-11-13 02:40:10', '2024-11-13 02:40:10', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('54264daa-9810-c0c6-cd55-673776d51e6b', 'Prueba cantidad', '2024-11-15 16:27:44', '2024-11-15 16:27:44', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'dafa', NULL, NULL, NULL, NULL, NULL, '350348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('550a1dab-8d8c-9257-a723-6689fda3f559', 'Carolain', '2024-07-07 02:28:35', '2024-07-07 02:28:35', '1', '1', '', 0, '1', NULL, NULL, NULL, NULL, 'dsfafs', 'fas', 'fas', 'fsa', 'fa', NULL, '315454', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('5b091ba0-b43e-4f0d-c661-6737754e45f4', 'Prueba cantidad', '2024-11-15 16:24:22', '2024-11-15 16:24:22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'dafa', NULL, NULL, NULL, NULL, NULL, '350348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('611ec03a-233e-604e-65fe-67341799437b', 'prueba alejo', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'cavhahs', NULL, NULL, NULL, NULL, NULL, '32881', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('61fad06d-a663-e826-2be1-6663965d3901', 'Tatiana Maldonado López', '2024-06-07 23:24:22', '2024-06-07 23:24:22', '1', '1', 'Cliente requiere buzo naranja', 0, '1', NULL, NULL, NULL, NULL, 'Calle 57c sur 77i 60', 'Bogota D.C', 'Bogota D.C', '0', 'Colombia', NULL, '3143890779', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('6750cd67-e976-2ec7-5769-673417ee6718', 'datos prueba alejo', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, '36985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('679cec20-eb45-f475-d4fc-6737769707eb', 'datos prueba alejo', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, '36985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('67b36cbe-a0bd-a583-6ee0-6736b6a0583a', 'carol', '2024-11-15 02:48:06', '2024-11-15 02:48:06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle 57 CA ru', NULL, NULL, NULL, NULL, NULL, '3503752816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('6a232430-6ce1-e3e2-5072-67341720c46a', 'victor', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'callejevdvd', NULL, NULL, NULL, NULL, NULL, '358946480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('72c55774-cb84-60f5-cd19-673417d4f55e', 'victor', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'callejevdvd', NULL, NULL, NULL, NULL, NULL, '358946480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('73758b30-410c-fe27-181c-6734178e22fb', 'carlos', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'call', NULL, NULL, NULL, NULL, NULL, '358357694', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('748e5c4b-4bdc-b48b-0bc6-673776dfd4f9', 'prueba alejo', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'cavhahs', NULL, NULL, NULL, NULL, NULL, '32881', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('7500d4d9-2a1b-9dc2-6e30-673417ae9bb1', 'carlos', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'call', NULL, NULL, NULL, NULL, NULL, '358357694', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('7563be77-e7b5-442e-7e52-67343555854d', 'alejandro', '2024-11-13 05:11:34', '2024-11-13 05:11:34', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle 57c sur 77', NULL, NULL, NULL, NULL, NULL, '3503752846', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('798f6ec5-c861-afc8-f8b7-665517f5d471', 'Alejandro Maldonado', '2024-05-27 23:29:59', '2024-05-27 23:29:59', '1', '1', 'El cliente vive en un cuarto piso', 0, '1', NULL, NULL, NULL, NULL, 'CL 57C SUR 77I 60 BQ 5 AP 110', 'Kennedy', 'Bogota D.C', '', 'Colombia', NULL, '3503752816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('7abdc537-b160-aaae-0db0-673435432b90', 'sol', '2024-11-13 05:15:12', '2024-11-13 05:15:12', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'vvvdkdnd', NULL, NULL, NULL, NULL, NULL, '6588494', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('7dd74d54-33ed-b571-f1a3-673776d19c00', 'victor', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'callejevdvd', NULL, NULL, NULL, NULL, NULL, '358946480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('7e065d1c-1c3a-0051-c7f2-6734174d5f55', 'datos prueba alejo', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, '36985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('800621b8-db8d-a632-1a05-6734179baae6', 'prueba alejo', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'cavhahs', NULL, NULL, NULL, NULL, NULL, '32881', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('85075e93-35e2-b8bc-e5c6-669745e3ad1e', 'Victor', '2024-07-17 04:14:14', '2024-07-17 04:14:14', '1', '1', '', 0, '1', NULL, NULL, NULL, NULL, 'Calle', '', '', '', '', NULL, '3626622', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('8fe9a294-3241-a9d3-7ed6-67341154fd1f', '', '2024-11-13 02:38:57', '2024-11-13 02:38:57', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('98b21136-f308-2242-9254-6737761eb014', 'carlos', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'call', NULL, NULL, NULL, NULL, NULL, '358357694', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('a2e2e788-5b4e-c94b-8197-667218b4ebbb', 'Carol', '2024-06-18 23:28:06', '2024-07-17 03:08:25', '1', 'ab66fc08-37cf-0829-7c32-667217f7f30c', NULL, 0, 'ab66fc08-37cf-0829-7c32-667217f7f30c', NULL, NULL, NULL, NULL, 'Calle 57c sur 77i 60', 'Bogota', NULL, NULL, NULL, NULL, '3627622', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, ''),
('a42345a5-9cca-a6f5-b15d-6736bed474e4', 'victor', '2024-11-15 03:24:22', '2024-11-15 03:24:22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'ccqbajdjd', NULL, NULL, NULL, NULL, NULL, '32218464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('aac08cef-981d-65de-1cc4-67377681baa7', 'prueba 6 ', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, '34848448', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('b39dd45d-5142-770c-f364-673412ad2932', '36985', '2024-11-13 02:42:39', '2024-11-13 02:42:39', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('d08cd9f6-ef73-985e-1346-67377978a496', 'prueba cantidades2', '2024-11-15 16:39:12', '2024-11-15 16:39:12', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '465464', NULL, NULL, NULL, NULL, NULL, '15454645', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('e433e866-1aca-63c6-6e7e-664e9edbb0c1', 'Alejandro Maldonado', '2024-05-23 01:42:19', '2024-05-23 01:42:19', '1', '1', '', 0, '1', 'Customer', 'Chemicals', '', '', '', '', '', '', '', NULL, '3503752816', NULL, 'http://', NULL, '', NULL, '', '', '', '', '', '', NULL, ''),
('f182d4a7-e503-fada-9906-6734185bdb5e', 'prueba 6 ', '2024-11-13 03:11:41', '2024-11-13 03:11:41', '1', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, '34848448', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accounts_contacts`
--

INSERT INTO `accounts_contacts` (`id`, `contact_id`, `account_id`, `date_modified`, `deleted`) VALUES
('1eae7f01-f366-a3c9-cc1b-664ea76830b2', '1ca93217-f347-5bb5-42e6-664ea763304c', '1cd59f6f-502d-44d3-826b-664ea70e6522', '2024-05-23 02:18:41', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('103a19aa-9512-c5c4-30ef-673417096116', 0.00000000, 0.00000000, NULL, NULL),
('10d921b3-5ecd-4ab7-dc80-67379d52f63b', 0.00000000, 0.00000000, NULL, NULL),
('17235a56-9c30-8aba-0fbd-673417bc6151', 0.00000000, 0.00000000, NULL, NULL),
('1cd59f6f-502d-44d3-826b-664ea70e6522', 0.00000000, 0.00000000, '', ''),
('264306db-1c88-a446-bea8-6736b6d8011c', 0.00000000, 0.00000000, NULL, NULL),
('358bc8d4-eac3-7c01-8167-673416efba2e', 0.00000000, 0.00000000, NULL, NULL),
('361fb4aa-09e2-29cd-6a43-6737764bda36', 0.00000000, 0.00000000, NULL, NULL),
('5049f362-0868-96a0-23d9-6734119d2420', 0.00000000, 0.00000000, NULL, NULL),
('54264daa-9810-c0c6-cd55-673776d51e6b', 0.00000000, 0.00000000, NULL, NULL),
('550a1dab-8d8c-9257-a723-6689fda3f559', 0.00000000, 0.00000000, NULL, NULL),
('5b091ba0-b43e-4f0d-c661-6737754e45f4', 0.00000000, 0.00000000, NULL, NULL),
('611ec03a-233e-604e-65fe-67341799437b', 0.00000000, 0.00000000, NULL, NULL),
('61fad06d-a663-e826-2be1-6663965d3901', 0.00000000, 0.00000000, NULL, NULL),
('6750cd67-e976-2ec7-5769-673417ee6718', 0.00000000, 0.00000000, NULL, NULL),
('679cec20-eb45-f475-d4fc-6737769707eb', 0.00000000, 0.00000000, NULL, NULL),
('67b36cbe-a0bd-a583-6ee0-6736b6a0583a', 0.00000000, 0.00000000, NULL, NULL),
('6a232430-6ce1-e3e2-5072-67341720c46a', 0.00000000, 0.00000000, NULL, NULL),
('72c55774-cb84-60f5-cd19-673417d4f55e', 0.00000000, 0.00000000, NULL, NULL),
('73758b30-410c-fe27-181c-6734178e22fb', 0.00000000, 0.00000000, NULL, NULL),
('748e5c4b-4bdc-b48b-0bc6-673776dfd4f9', 0.00000000, 0.00000000, NULL, NULL),
('7500d4d9-2a1b-9dc2-6e30-673417ae9bb1', 0.00000000, 0.00000000, NULL, NULL),
('7563be77-e7b5-442e-7e52-67343555854d', 0.00000000, 0.00000000, NULL, NULL),
('798f6ec5-c861-afc8-f8b7-665517f5d471', 0.00000000, 0.00000000, NULL, NULL),
('7abdc537-b160-aaae-0db0-673435432b90', 0.00000000, 0.00000000, NULL, NULL),
('7dd74d54-33ed-b571-f1a3-673776d19c00', 0.00000000, 0.00000000, NULL, NULL),
('7e065d1c-1c3a-0051-c7f2-6734174d5f55', 0.00000000, 0.00000000, NULL, NULL),
('800621b8-db8d-a632-1a05-6734179baae6', 0.00000000, 0.00000000, NULL, NULL),
('85075e93-35e2-b8bc-e5c6-669745e3ad1e', 0.00000000, 0.00000000, NULL, NULL),
('8fe9a294-3241-a9d3-7ed6-67341154fd1f', 0.00000000, 0.00000000, NULL, NULL),
('98b21136-f308-2242-9254-6737761eb014', 0.00000000, 0.00000000, NULL, NULL),
('a2e2e788-5b4e-c94b-8197-667218b4ebbb', 0.00000000, 0.00000000, '', ''),
('a42345a5-9cca-a6f5-b15d-6736bed474e4', 0.00000000, 0.00000000, NULL, NULL),
('aac08cef-981d-65de-1cc4-67377681baa7', 0.00000000, 0.00000000, NULL, NULL),
('b39dd45d-5142-770c-f364-673412ad2932', 0.00000000, 0.00000000, NULL, NULL),
('d08cd9f6-ef73-985e-1346-67377978a496', 0.00000000, 0.00000000, NULL, NULL),
('e433e866-1aca-63c6-6e7e-664e9edbb0c1', 0.00000000, 0.00000000, NULL, NULL),
('f182d4a7-e503-fada-9906-6734185bdb5e', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accounts_opportunities`
--

INSERT INTO `accounts_opportunities` (`id`, `opportunity_id`, `account_id`, `date_modified`, `deleted`) VALUES
('3d0c25f7-cbbf-7777-750f-664ea6e8056f', 'e40003ff-95be-84d8-0b16-664ea6f83d86', 'e433e866-1aca-63c6-6e7e-664e9edbb0c1', '2024-05-23 02:24:48', 0),
('a6348f24-ef0a-3a46-6aee-664ea7d1f353', '3b1f9a81-71fe-452c-66b1-664ea742367c', '1cd59f6f-502d-44d3-826b-664ea70e6522', '2024-05-23 02:18:41', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('103ffdf2-263a-5ebe-8f69-664e8204db86', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('1066cf07-52e8-e3c7-3758-664e82e0c64b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('10ce1e9e-8a16-e8b3-4dbb-664e82997885', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('11080cff-1ba7-c620-563d-664e82cc70e9', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Spots', 'module', 90, 0),
('117c6ad3-d68a-231e-8065-664e821f1731', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('125b95ca-4f4e-2803-06f5-664e826a9790', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('12bca614-509e-e5ef-bd1f-664e813106a8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Cases', 'module', 90, 0),
('12f08ff1-8164-3133-d715-664e81666df2', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Emails', 'module', 90, 0),
('13ba317f-b988-4d4c-a28e-664e8225504a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('14c95677-9a8f-5b2c-a52b-664e8248b008', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('156e441e-25cf-e0be-4f87-664e82be208f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('1588a90a-ceb5-20db-831e-664e82b99ff3', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('159af995-c39f-8cdc-5931-664e821fd958', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('167fe60f-5891-315d-16b1-664e82aa3c07', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Spots', 'module', 90, 0),
('16c2298b-ed1a-a141-e73a-664e827bb7d2', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('174c44c7-fc21-3075-4d8a-664e81c340c1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Cases', 'module', 90, 0),
('179d328f-5c35-f75c-dc3a-664e81cb1aaa', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('1aabf706-8938-cccb-cf40-664e82fa91ae', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('1ad5db09-4912-1df6-442c-664e8206fc3f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Spots', 'module', 90, 0),
('1b41c350-e95c-d3a7-0f52-664e81ab5e16', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Cases', 'module', 90, 0),
('1b9383ec-bb8e-f3e1-29a0-664e824ad54e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('1c2ee8b1-d120-7335-0c0d-664e828d28b6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('1f05f330-b9a0-a94b-1498-664e82cce213', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('1f152497-8d82-d27e-b741-664e82f36965', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Spots', 'module', 90, 0),
('1f340524-feb2-acff-e282-664e81d67974', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Emails', 'module', 90, 0),
('1f729622-9234-1e45-bb68-664e81d3efa4', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Accounts', 'module', 89, 0),
('1f7f5238-079a-4d55-9563-664e81c462fe', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Cases', 'module', 90, 0),
('2066afc5-6aec-8346-870f-664e82e96255', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('208e2215-4df6-9679-33d3-664e82632ec0', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'SurveyQuestionResponses', 'module', 89, 0),
('20caa965-da78-4bb4-e93f-664e82122d67', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('211ff1c2-1b67-b444-9a2e-664e82e6a488', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('21508d27-f473-5436-7a1e-664e816c0846', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Project', 'module', 89, 0),
('21cc880f-a5d8-23d0-0260-664e829622ad', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('23353df9-7785-2053-4df3-664e8215dab7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('23c6981d-a106-f5dc-0501-664e8206843f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('24180426-ec28-78c5-d6d9-664e8243d659', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('24de691b-b4c3-5f9f-ac3f-664e8263fb77', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('24e190af-bea7-3d33-b3b2-664e81a82f35', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('24e60ed0-f52f-ece9-5809-664e826da634', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'ExternalOAuthConnection', 'module', 90, 0),
('2544e206-5261-b24d-10ed-664e8295f7b8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'SurveyQuestionResponses', 'module', 90, 0),
('2573cb5d-901f-3a5e-515e-664e818df734', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Accounts', 'module', 90, 0),
('25c6cbf4-9604-09c7-4b61-664e8218ca3f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('260206b6-1fb0-1058-0bbf-664e82c17fcd', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('2671a452-7274-296a-3d20-664e81898b19', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Project', 'module', 90, 0),
('26b1184f-51ae-e8cf-da17-664e82071c8f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('26c1cb00-316e-381b-d7f8-664e82a02c60', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('285aef0e-25af-4ff9-80c9-664e829e81e0', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('28f1d458-f203-cce1-91a7-664e82015f12', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('2a85f8d8-4eed-4bcf-0787-664e812c0cad', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Project', 'module', 90, 0),
('2ad862c5-80f9-cbb3-f2ed-664e8226d996', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'SurveyQuestionResponses', 'module', 90, 0),
('2b832be9-6414-a49d-1ea3-664e82c78e6c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('2ba9723f-6c3f-2fe6-834e-664e819ccf77', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Accounts', 'module', 90, 0),
('2c5c7da5-ca1b-48a5-f622-664e823a399e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('2c838a98-df95-cad1-9574-664e8269cea4', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('2e2731f1-14ef-e718-8ccd-664e81ac3da9', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Project', 'module', 90, 0),
('2f0306c7-b9df-0472-2824-664e82aea581', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'SurveyQuestionResponses', 'module', 90, 0),
('30df79d3-42f3-bf08-1e0a-664e8124b731', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('30e074c2-84da-65c8-6046-664e8254742f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('323a4c4f-d551-d889-8c0d-664e818bea97', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Project', 'module', 90, 0),
('324afb69-d1d8-8123-ed8b-664e82dd84dd', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('338c8bfa-f089-1336-eaab-664e82109815', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'SurveyQuestionResponses', 'module', 90, 0),
('345e01a1-b2fc-07a5-30d3-664e82438c1e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'ExternalOAuthProvider', 'module', 89, 0),
('351eef50-d110-4412-8545-664e8171b8a3', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('352c2cde-0268-f8bc-8e1c-664e81704c2a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('3664c605-699e-a2dd-6302-664e82f36127', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('36ed35be-549c-86e1-61b2-664e81a11c6a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Project', 'module', 90, 0),
('375394e5-4166-85b3-15c4-664e82873332', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('377d0b2e-5b4d-d317-37ab-664e813138ea', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('37b4da72-716e-26fe-cdc4-664e8290ce18', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'SurveyQuestionResponses', 'module', 90, 0),
('37c5435a-d4fd-9f4d-1a52-664e82d8d85a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('3930023c-777f-a8de-9073-664e81291df7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Accounts', 'module', 90, 0),
('39770420-3f35-e7b7-ceae-664e812efceb', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('399a638a-4f0e-057f-0da9-664e82d7e918', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('39bf0e9e-4e1e-a8aa-d762-664e81bec993', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('3a660911-68fd-c5ee-5564-664e82fffd70', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('3aa54caf-81c8-8cd9-b5bd-664e82b1d4d8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'ExternalOAuthProvider', 'module', 90, 0),
('3abd04b3-b8ea-3cd4-e19e-664e8240bf82', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'SurveyQuestionOptions', 'module', 90, 0),
('3b60d346-457e-c8be-d482-664e824f6806', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('3b649e18-db38-f2bc-0379-664e8189ac7b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Project', 'module', 90, 0),
('3d2f1e21-b654-f4b7-8683-664e821e3a4c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('3d528412-cc2d-98d1-e4c2-664e82d9d6c8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'SurveyQuestionResponses', 'module', 90, 0),
('3d8f74d7-383e-0455-e228-664e81c0628d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('3dae50f7-5f59-6c5d-6b95-664e82d39a92', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('3e7090c3-66da-7ae8-2e66-664e8256908e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('3e9b0f43-08a0-5660-d367-664e828f2b0f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Spots', 'module', 89, 0),
('3eb70fdd-d540-00c9-32be-664e82df8943', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('3f30c08a-b9b8-43de-342f-664e81e1b4cb', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Accounts', 'module', 90, 0),
('3fc83fd5-5627-8437-f4e1-664e8130c36d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('4045b5ac-ac4e-c080-4102-664e82e8428b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('4184ac01-56ce-eb54-ec93-664e8161eba0', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('41acbdc5-23fb-78d5-b8ab-664e823d9da6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'SurveyQuestionResponses', 'module', 90, 0),
('428b1c5e-306b-5e9f-8d9d-664e824e24ce', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('428beac1-3627-87ce-6e1b-664e82151871', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('42ebb529-c8b6-77f5-fc4c-664e8218b859', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('42f23dc9-2df7-6735-2990-664e829ff10a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'ExternalOAuthProvider', 'module', 90, 0),
('43000393-0cc2-d30e-bac1-664e811d119f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Cases', 'module', 89, 0),
('431d4137-4f1c-5b76-5bef-664e81612614', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Notes', 'module', 89, 0),
('44abe5a8-1db3-5a07-9544-664e81caa215', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('45b07b69-05c4-41a7-3781-664e824d39d5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('45e31c6d-9cb4-6b4a-c42a-664e824a11ae', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('4616abcd-fc9d-159c-66e1-664e81e9e149', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('4717bbc7-bc1a-51d4-7db1-664e82fa1e22', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'SurveyResponses', 'module', 89, 0),
('479ef8b5-579b-603c-61e2-664e8158c032', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Notes', 'module', 90, 0),
('480a3678-421e-8e14-b1a1-664e829d088a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('484c2d0c-d095-0211-1b97-664e8244cb59', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('4a942cbd-8f62-d372-fc36-664e818f48eb', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('4b2cd3ea-2c20-c1a6-8b85-664e82758b76', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('4c24b95b-1223-4669-2163-664e822edbb6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'SurveyResponses', 'module', 90, 0),
('4c745dfb-553f-4d9c-95cb-664e8292220e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'ExternalOAuthProvider', 'module', 90, 0),
('4d3bd362-a740-363a-02ba-664e81b0c0bd', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Notes', 'module', 90, 0),
('4d4f9ca7-8458-8cef-678b-664e82678ef8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('4d835c46-8c8f-fbfa-1c00-664e82093d0b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('4ed657f2-6cac-ce71-a1b5-664e81f3e40c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('4eedf17c-a6a7-dd40-5653-664e820a25de', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('4fb05715-4299-5b71-0651-664e829975c2', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5166566f-3c4b-9a19-ac9b-664e81c08556', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Meetings', 'module', 89, 0),
('5204a683-4fce-435a-c5f0-664e8262baaa', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('520f5fde-5458-d195-878a-664e82f58148', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'ExternalOAuthProvider', 'module', 90, 0),
('52354d6f-5925-3a40-29d2-664e810a6333', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Notes', 'module', 90, 0),
('528347ed-58db-81df-e7e7-664e82c70842', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'InboundEmail', 'module', 89, 0),
('529760de-2f8a-5424-5606-664e81713416', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('52cfe9d5-3ccd-455a-4c97-664e8221c4dc', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('5343724d-1172-b24b-1ee8-664e82d6790f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'SurveyResponses', 'module', 90, 0),
('53ccda35-d9eb-7987-bbff-664e82a6819a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('542190eb-2071-d059-9a8e-664e8280b84a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('56838dc6-5735-d228-3a56-664e81d59b1e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Meetings', 'module', 90, 0),
('56f73276-fc72-62b4-3214-664e82ebe1b2', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('57743f7d-c01a-473d-9a17-664e825c13fb', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('580a37e6-885d-29c0-32f7-664e826fdc57', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'InboundEmail', 'module', 90, 0),
('5813a948-42de-c1ae-dad5-664e82c74622', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'ExternalOAuthProvider', 'module', 90, 0),
('58146acd-d624-1271-e7bd-664e819d073a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Notes', 'module', 90, 0),
('58528356-f6b7-36df-08c8-664e828d62fe', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('58606e36-2ea5-8186-9a02-664e821b7bcd', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Alerts', 'module', 89, 0),
('58a81a21-a135-e98a-80cc-664e82d75eb5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('596476d4-d7dc-30b8-8b8e-664e8293619f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5a9631fa-eeaa-81d2-c3e1-664e81b8696c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Meetings', 'module', 90, 0),
('5aa5b1f6-ef03-395c-b408-664e820e65a7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'SurveyResponses', 'module', 90, 0),
('5b749313-f528-99d0-4309-664e8289f2bd', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('5c413cee-26cb-2228-af02-664e82746665', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('5c800a78-9fe0-dbaf-8e25-664e8201b2fc', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'InboundEmail', 'module', 90, 0),
('5c8d8200-c950-2a3b-fbc6-664e82a4adf0', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('5ce88576-5613-9597-5d96-664e820bc8d1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('5d019cc9-6b20-1533-7fc7-664e81a3420d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Notes', 'module', 90, 0),
('5e0278d1-7a09-4d91-df8a-664e82aa7afc', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'ExternalOAuthProvider', 'module', 90, 0),
('5e7c24bf-4b29-4d83-058a-664e82534458', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Alerts', 'module', 90, 0),
('5f73b8c8-e000-ac03-945d-664e81d8c5ee', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('5fe9b9b9-ae2c-e6d2-67ce-664e82fa7731', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('606986c1-bdb0-bf76-456d-664e821d64d4', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('609b721e-7f05-30e5-51bd-664e8224a0bc', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('60b41d4e-ad10-aa5c-b51d-664e829750bb', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'SurveyResponses', 'module', 90, 0),
('61dd70ec-8f71-2a10-033a-664e81aec7f7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Notes', 'module', 90, 0),
('62bed39d-7fc7-a4d3-2533-664e82855679', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Alerts', 'module', 90, 0),
('631703c9-5709-e499-ccc2-664e81aa56fe', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Emails', 'module', 90, 0),
('6326d618-73d0-ab68-8017-664e82bc0d06', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('6453889b-6c97-27d1-1c2a-664e82d96f7e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'ExternalOAuthProvider', 'module', 90, 0),
('64a5725e-80a9-96f2-5b62-664e813be321', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('651e384f-cffb-b88b-8280-664e82dd94e2', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('65235bb2-c5b0-8804-77eb-664e813725ae', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Bugs', 'module', 89, 0),
('65646334-f1e4-31f3-df58-664e824c66ae', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('65fc60fe-8652-e40d-138c-664e81142192', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('6602db93-c857-c804-a724-664e82606746', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('662ef8d7-d5b3-1e31-0713-664e824e147b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'SurveyResponses', 'module', 90, 0),
('66707f6c-06e1-599a-70d8-664e82b038a6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'InboundEmail', 'module', 90, 0),
('6692271f-b69a-e647-6dc2-664e82714934', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('672a02d8-364b-f8db-58fb-664e8202e68a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('6788dcce-72e4-1639-bd71-664e82a28308', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('68e8cacf-2921-e03c-59b8-664e822645f9', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('6973c47c-e5a5-c896-9181-664e8293e980', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('69b9d524-7b11-8bef-0955-664e82571f67', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('69d7335e-714e-3e6c-e23a-664e812e3271', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Bugs', 'module', 90, 0),
('6a3553ee-8a64-fc8d-fec9-664e8226bad5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('6a3780b2-8bd3-bfc2-bf89-664e81ba3f96', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Meetings', 'module', 90, 0),
('6a95aed1-df06-4a69-b903-664e82ad1a28', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'SurveyResponses', 'module', 90, 0),
('6b91526f-f1e3-1417-93ae-664e82070670', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('6ba8e8f4-b333-68fa-e9b9-664e823268f8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('6c309759-0b54-9192-78de-664e829d8357', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('6ce8138a-b4c5-ce80-fceb-664e82674b93', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'InboundEmail', 'module', 90, 0),
('6d0e75bc-8794-9615-585c-664e8265f6f3', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('6d809ef6-072c-b60f-771e-664e81471f63', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('6dcf842c-0318-cae3-bad6-664e82170f7a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('6e2e58e5-d902-ed72-4559-664e81ceaf4a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Bugs', 'module', 90, 0),
('6e4346af-c63d-421e-7ca3-664e82312f39', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('6e4c63cd-6090-9643-f137-664e821cd253', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('7002b8d3-ec1d-82ec-9643-664e8113ffb8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Meetings', 'module', 90, 0),
('700fe423-a888-1b37-55ac-664e82a0bd80', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'SurveyResponses', 'module', 90, 0),
('70d3f078-151e-70bb-e835-664e82452f4b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('7178adde-667a-55c8-d51f-664e823ed30a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Alerts', 'module', 90, 0),
('719da19d-49c5-3f6c-b9ab-664e8271bcd6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('71a54d92-2eb5-8da6-7034-664e820fb02c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('7220710c-1722-59d4-0b9c-664e81656652', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('7223b9ae-b0da-d7ec-cae2-664e818ffbd1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('7267a43d-cb60-c08f-cf84-664e822fd6a5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'InboundEmail', 'module', 90, 0),
('72ae4d38-2a98-7e4e-0bd8-664e82d35a9f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('74b02c0c-2c72-6bb1-d119-664e82bb5dea', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('750b271c-8217-fb15-9bfa-664e818a1397', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('759130c6-9e40-6e2b-e4aa-664e829b9eac', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('75b41f23-5f5d-faf3-fbe1-664e828db451', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('762a3322-2f73-f9c2-8791-664e81172e36', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('763d31a6-84ee-4d1a-2d9b-664e8268228c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Alerts', 'module', 90, 0),
('765403e5-7bd7-49f3-904d-664e82e3a93a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('76eb5073-fc4f-b17c-3303-664e8101a00d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('778895f1-b204-7b64-c375-664e820250a3', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('77a98ee4-fc5d-9386-2eba-664e824310ec', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'InboundEmail', 'module', 90, 0),
('79c6b2a1-8b36-2567-4754-664e82531e03', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'SurveyQuestions', 'module', 89, 0),
('7a1407eb-0140-6fd1-9ce7-664e8290698d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('7a7c7964-e85f-c7ad-2324-664e81b29881', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('7ab0e14d-0e3b-187c-29c7-664e82f8550f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('7abd33bf-d892-0793-23b2-664e822c5dbe', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('7adbd32f-7658-2d38-55f6-664e8256d558', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('7b3522ec-3d37-ad9d-d7a0-664e81668b05', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Bugs', 'module', 90, 0),
('7befc017-ee75-c897-537f-664e8215b195', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'InboundEmail', 'module', 90, 0),
('7bfb37c1-19f3-daef-130a-664e82615411', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('7da3fc10-e366-d39a-3ea8-664e82d98467', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('7dcb0693-1470-38a9-4978-664e82e623ad', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('7e120433-5e57-e2d8-3b08-664e8206bddf', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'SurveyQuestionOptions', 'module', 90, 0),
('7e81fb49-e8f8-730f-8627-664e82e634f6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'FP_events', 'module', 89, 0),
('7e8d8f48-e0be-8120-9578-664e8244c6c4', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'SurveyQuestions', 'module', 90, 0),
('7ec48361-4e5a-56de-5c04-664e8237cf5d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('7ef6b486-d064-3abd-ccd3-664e81f23923', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('7f3f504b-5514-9010-5362-664e8265dff4', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('7fa791ab-1b7b-7942-4fe4-664e82f520ec', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('7ff0b39a-0e91-b6a0-2c8a-664e81aefbf5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Bugs', 'module', 90, 0),
('81398493-fe55-f4a4-6f68-664e82ab4c44', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('81c53240-1dab-c48d-e7e1-664e82d8ae4f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('831c31ae-4438-7579-c866-664e821b3699', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'SurveyQuestions', 'module', 90, 0),
('833932d0-5277-d42a-32b2-664e828a83d8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('834affa0-e7d2-0701-fdb3-664e82a909d4', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'FP_events', 'module', 90, 0),
('83a40adc-37b5-4741-2403-664e81ffaff7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('83a9c338-cd82-dbd0-fb4f-664e825be532', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('84075f21-57e9-fa2e-3d0b-664e812effcd', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('850328f2-7516-1ed4-e886-664e82e30509', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('853e376f-8419-9703-7536-664e81b29a28', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('864e5c0f-0572-3ec7-abf5-664e81ded859', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Prospects', 'module', 89, 0),
('868c6f98-87a2-d3bd-fab6-664e82df06a2', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('87337a0a-9e9f-af87-b20c-664e82c0197b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'SurveyQuestions', 'module', 90, 0),
('87fff626-ad44-326a-c04e-664e819bb44a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('88724e29-2bcd-f7e7-5eaf-664e82d2e765', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('89000dd1-ea93-2a9d-cb97-664e82a74bdb', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Spots', 'module', 90, 0),
('89080225-8d89-89d4-2270-664e81ded63d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('890ea3a0-826e-2512-efa0-664e82594af9', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'FP_events', 'module', 90, 0),
('895f4f33-2ce7-7053-a863-664e82b58723', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('8979f024-6641-60bc-027e-664e829b704f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('8982935e-7d89-f2f9-6bd0-664e82a9f0bd', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('8a604fe3-fc09-6617-2b71-664e823ee606', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('8a65ee62-7883-53d6-9abc-664e81217040', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('8ac7064e-bdac-df29-edc8-664e8219aad3', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('8adbd1cf-e951-91ce-a6c5-664e827615cd', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('8b73d102-6931-ce55-3a64-664e81428945', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Prospects', 'module', 90, 0),
('8b8d8f82-0327-8faf-573d-664e8271b2c7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'SurveyQuestions', 'module', 90, 0),
('8c1d57b5-154e-9ed4-9f61-664e814b73c8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Leads', 'module', 89, 0),
('8c55688d-4bfa-20d7-f4c8-664e81d6fedf', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('8db54290-d03a-b1d1-b0dd-664e82e09536', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('8e44a2f9-7cb6-f565-24cf-664e82611fff', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('8e891b15-d258-2d2b-0d99-664e828a3cf5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('8ebdb266-6b22-64ca-73c4-664e81b5b3e1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('8ed3fd7e-3d92-7eeb-c0a6-664e82d6c3ce', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('8f2f28ec-6210-bdfb-e891-664e8257d90a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('8f4e308d-8bbe-949a-4ce2-664e81d34978', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Prospects', 'module', 90, 0),
('8f753122-4c09-e1f4-7472-664e826a5a14', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('90dcc242-f29a-c565-eb7c-664e8225e541', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'SurveyQuestions', 'module', 90, 0),
('9107b266-4059-e314-8aef-664e825b011b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('9154e379-8058-9a4f-15af-664e8177902b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Leads', 'module', 90, 0),
('91b743dc-7dba-1ba0-ac2f-664e821eed12', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('92b747e9-5fd4-67b6-b27b-664e81c55d56', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('932c09bc-dc4d-05e7-f0aa-664e8159b31c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Cases', 'module', 90, 0),
('93483cc9-74cd-5ad3-03e6-664e816ef968', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('938b92a2-ac74-8d86-829d-664e826afe64', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('940ebba7-4094-0983-aeb4-664e82ee65bd', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('9479651c-d4b8-76b3-d385-664e82a523ac', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('94815155-cced-770b-bedf-664e82718a47', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('9499ab97-02a1-1aaf-4441-664e824a5ae7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('95892847-c9d1-1ae7-5064-664e8263ff66', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('95f1a1ce-e73c-150f-9297-664e82122d59', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('962b6711-19e1-be3d-8ca0-664e828bb79c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'SurveyQuestions', 'module', 90, 0),
('96858564-1a54-b8e6-d036-664e81ea1280', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Leads', 'module', 90, 0),
('96cd5dd1-94bd-66f5-5404-664e828930bc', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'FP_events', 'module', 90, 0),
('97ac9e5a-5bd2-afd0-21a8-664e814f1d3e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('97d9c041-c6af-d339-c0b0-664e81b319b2', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('98d7a60b-2571-435b-f9ef-664e82459921', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('99094e9d-6f45-648e-88c0-664e82a81d63', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('992f31d1-dfd1-30d1-c205-664e811712ca', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Calls', 'module', 89, 0),
('993a9a32-7f1c-3603-8236-664e822206b5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('99492199-03af-5df7-4c83-664e82d01396', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('99a3e9e2-186e-71b5-bfd0-664e82e12c6a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('9ab45f00-6a68-7e97-9099-664e82246534', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'SurveyQuestions', 'module', 90, 0),
('9b102577-4e7d-7a87-547f-664e823d8853', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'FP_events', 'module', 90, 0),
('9b50e738-5fc7-2714-617c-664e821957d6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('9b880bd9-dd09-cc9e-ede6-664e810a13cb', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Leads', 'module', 90, 0),
('9be56b1d-e30f-139d-3cf6-664e8129ac9b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('9beac867-9dc9-35d0-6d50-664e8113809d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Prospects', 'module', 90, 0),
('9ce1c444-0411-2084-157d-664e82bb66f0', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('9cf15aa1-2e06-f930-81d2-664e82102b17', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('9def9213-6322-ccc1-4e2b-664e8104965f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Calls', 'module', 90, 0),
('9dfa0f2b-a98d-ca95-67f7-664e81f7619d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Emails', 'module', 90, 0),
('9e5ff1dc-eedb-62ac-ef7d-664e82314c67', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('9e6dd531-654e-dd92-c587-664e8203f731', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('9eb17212-998c-7282-a7ef-664e8227e685', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('9fe231c3-7371-1d39-d25a-664e825ded46', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('9ff8af8f-6203-f372-85ff-664e82fb9a1c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('a03e4166-aab4-f368-813e-664e81bee7a1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Prospects', 'module', 90, 0),
('a0b5b33f-f7c3-a5c0-88e5-664e81be8252', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Leads', 'module', 90, 0),
('a0e75c5a-bc2f-e995-c5be-664e8121a520', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('a18601eb-7695-06d5-7432-664e8206f453', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('a21e9917-6e83-3b67-1692-664e8250c282', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('a268fb14-cd6c-55f0-94d3-664e82d9f105', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('a278b4fd-cb58-c18f-28a7-664e819e6b1a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Calls', 'module', 90, 0),
('a36f550d-1d2b-930d-9085-664e82e191f7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('a3b0a4d6-dddf-59a2-7dfc-664e81004ee4', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('a3bf2cd9-bd19-3cf4-c4d8-664e82c7f99a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('a44b501a-89ac-83e2-6bd9-664e82354965', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('a4fd17a4-e373-8ba3-33bd-664e8160a90d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('a50c73cb-b954-f325-c362-664e814f4af7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Contacts', 'module', 89, 0),
('a50ffd8b-10bd-67e5-28bf-664e81319b62', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Leads', 'module', 90, 0),
('a554c214-2502-6877-511c-664e82a3115c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('a67e0d9b-29d9-34af-b643-664e819f9394', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Calls', 'module', 90, 0),
('a7390cfe-1710-b750-e741-664e81863039', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Tasks', 'module', 89, 0),
('a74a632b-e9c8-f87b-28fc-664e82bef1df', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('a8092e77-f931-8881-8f23-664e82a75df4', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('a8c80b7c-75d9-0a31-d68a-664e8281dd32', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('a8df72ac-5e33-2814-5668-664e82f145c3', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('aa716eb0-6259-2b57-8d12-664e8142b83e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Leads', 'module', 90, 0),
('aa7363dc-ffde-c29c-6d2d-664e824fb749', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('aaa01f79-fcaa-1566-1351-664e8172b797', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Calls', 'module', 90, 0),
('ab05a48e-9d12-e0e2-62d7-664e827254b7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('ab2e4e88-a82e-d49c-ff44-664e8138f1ef', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Contacts', 'module', 90, 0),
('abb82ec8-8cd6-ba7a-d193-664e82bef40f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('abe96c65-3112-8ef1-c0ce-664e8277aeab', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('ac640024-04bb-1109-3db2-664e815365f9', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Tasks', 'module', 90, 0),
('acf76e95-dfc4-806e-9007-664e81552298', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Users', 'module', 89, 0),
('ad21f75b-ab74-2bf5-ced9-664e82a926e5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('ad493c08-faad-7490-57f0-664e823b46e1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('ade5167a-aaec-de8a-3f06-664e82103e54', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('aebd5d6e-5883-fdd5-221c-664e8150379f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('af3392ab-22c4-3be0-7287-664e814efebe', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Calls', 'module', 90, 0),
('af375774-2d65-df47-310a-664e826eda89', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('af800e60-f2f5-3f00-f0c2-664e81acc184', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Contacts', 'module', 90, 0),
('afa256bd-38dd-b9e6-a58d-664e82f8965c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('b0b5c9da-fe98-d277-b7dc-664e818721eb', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Tasks', 'module', 90, 0),
('b0fc02e0-4393-5ddc-8250-664e82a0af0d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('b141c6cf-208d-f284-4698-664e82ac2898', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Surveys', 'module', 89, 0),
('b16da9d0-587d-dfff-7bf4-664e818474f9', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Users', 'module', 90, 0),
('b1803898-b62c-10ec-757c-664e82d92506', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('b18d4a0c-a388-ebee-d212-664e82a7ae4b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('b1cf643c-639d-c8e7-6c5b-664e821d4f50', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('b2edcf9e-fd32-1aed-00a0-664e820615fb', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('b2fc7280-4c45-ef2c-81c3-664e825b2be5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('b3b373e2-8c70-7d1d-1fb8-664e81beed89', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('b42034da-074a-36a2-4cc1-664e819aa35f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Calls', 'module', 90, 0),
('b52b0515-f946-7ba5-c51d-664e828f26b1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('b54dd978-6e10-1f0a-9d81-664e81598ff6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Users', 'module', 90, 0),
('b55372d9-fbf6-7785-9dde-664e81e2fad1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('b58f97c1-8a2f-badf-2ff0-664e8214a5e8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('b5f707d1-74d9-dbb4-53d6-664e821fc951', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('b60f7d14-1daf-86eb-e04c-664e82c2ddaf', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('b6a66827-dcdd-03b1-0244-664e82c419cd', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Surveys', 'module', 90, 0),
('b7d63d1f-3f37-b716-f419-664e824cbac9', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('b84cd1fc-1349-89ea-df76-664e82d93f18', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('b88a0608-c5fb-2b82-7825-664e814547c6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('b8991ca0-5763-3cb1-463c-664e8177df30', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Calls', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('b8fc12cd-5261-351e-ef6b-664e82af5774', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('b97307ae-c2f9-b2dd-6ffe-664e8292fa9b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('b9ec6e0b-9b89-fa3d-e947-664e81c3242f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Users', 'module', 90, 0),
('ba9a1830-0daa-d987-3cda-664e819637bc', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('bb141a19-dfe2-727b-eb54-664e828a96cf', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('bc58c586-11c7-9c00-5f06-664e81e3905d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Contacts', 'module', 90, 0),
('bc67feec-4841-f45f-21d4-664e8213810a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Surveys', 'module', 90, 0),
('bca4037d-acce-9aa9-faa3-664e82487d3c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('bcc6a7c1-3927-ac18-25ce-664e824cc1c1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('bceb5225-cedc-77b6-8369-664e827fbd96', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'EAPM', 'module', 89, 0),
('bd9bd90f-5642-830a-f8f5-664e826d9205', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Documents', 'module', 89, 0),
('bda43793-485e-81ca-73ee-664e82fabf4d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('be50fb5d-656d-0c7a-b167-664e81f05570', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Users', 'module', 90, 0),
('beb709ee-4b53-297e-ceb0-664e81f3d43b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Tasks', 'module', 90, 0),
('c0a9c9a3-f746-0581-a520-664e82bbb430', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('c0d4f4ee-71aa-08b9-a847-664e81277d64', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Contacts', 'module', 90, 0),
('c18c6bbd-577e-2efb-a502-664e81b50719', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('c1fc6d7d-5d39-a5ac-bc54-664e826d05d8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('c214a0e9-2dc7-2cdc-d30a-664e82733bdc', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('c21644f8-8e81-835e-f33c-664e82d6274e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'EAPM', 'module', 90, 0),
('c22a6b3a-c27f-c0ef-4787-664e82d17e6a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Surveys', 'module', 90, 0),
('c25c3bcb-abe7-9717-fde9-664e8200a56c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('c2750230-8e0f-8837-4f9b-664e825a49c8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('c2b1856d-51b9-7da2-e442-664e816cf423', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Users', 'module', 90, 0),
('c2e57e39-0b77-76d9-9ea4-664e82fc9bfb', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Documents', 'module', 90, 0),
('c324f87f-f74e-0741-fff5-664e819d8419', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Tasks', 'module', 90, 0),
('c4b3d797-8e7a-1e14-6ea6-664e8165a293', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('c5f3f2e3-e354-f091-8ff8-664e815d0b06', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('c617c16e-cc98-735c-338d-664e828e8e79', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('c61e51d1-3b9f-2939-d944-664e82b50204', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('c6af1523-c7f9-aae9-b0be-664e8146d2e6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Users', 'module', 90, 0),
('c6ccf6ed-bff6-12f7-a6ef-664e8213e210', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('c73d6cfe-2dbc-8b5a-0f7b-664e82f7b9fe', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'EAPM', 'module', 90, 0),
('c77c0a2a-122c-c0b4-60d8-664e8242ccb1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('c78484a0-8506-083b-f9d1-664e825920e9', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Documents', 'module', 90, 0),
('c7a0d4a0-a15f-d639-8e2d-664e810379e1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('c82d3875-3c58-1ef1-7f1f-664e8249233e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Surveys', 'module', 90, 0),
('c99f2b29-0472-96ed-558a-664e82577f56', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('c9e57164-b3cb-d52c-2710-664e817cf449', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('cb069491-bb7e-b9e6-cb0b-664e8195b951', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('cb2006d4-2b13-dd48-d141-664e828173a7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('cb2427c9-c16f-ee1a-cfe2-664e82020516', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('cb352e63-e4ab-73b7-df88-664e829d345f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('ccbf09b4-cd3c-c666-6571-664e82ec3ef6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Spots', 'module', 90, 0),
('ccf36df9-98b5-9d61-5456-664e82b1c5ff', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Documents', 'module', 90, 0),
('cd8ad1e0-f1cb-6431-cc72-664e827d928d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Surveys', 'module', 90, 0),
('cde7ef87-7164-ee1e-85c0-664e818d6d05', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('cf9ea54a-caff-703b-8baa-664e82d41837', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('cfd45c97-c327-7f29-e0c4-664e824b64f7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('d0037b5e-cc3f-135a-fecc-664e82cd196b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('d01f0ee6-2ba8-c224-7136-664e826f637a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('d0a4dd9a-9c69-7b6c-a31c-664e821fb94a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('d0b07235-4da1-69a2-dc13-664e824a3f6c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('d148bd52-8307-d56c-53ba-664e823043f7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Documents', 'module', 90, 0),
('d2497989-09ee-ef66-abbc-664e815c7873', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('d3d1cc23-ab60-b0f3-d45b-664e82d58ef6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Surveys', 'module', 90, 0),
('d3f8e5fd-cecf-8382-c455-664e828a5650', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'EAPM', 'module', 90, 0),
('d453b597-08e6-dfad-a034-664e82b4580c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('d4dc4761-6c48-bf9c-97b2-664e8206c1b3', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'ExternalOAuthConnection', 'module', 89, 0),
('d5a7a415-1692-48df-7df1-664e822d68ad', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Documents', 'module', 90, 0),
('d6123237-2e32-6bfc-ccd1-664e82476087', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('d6788d2b-2f4e-232e-52a6-664e81b5f610', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('d7023929-fdb8-ca67-b52c-664e821b1f96', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('d9449ec9-7537-4dae-dfc1-664e81416485', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('d945d204-4951-482b-590c-664e82800cf6', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('d9708496-ae6c-95d1-30ad-664e829d33bc', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'EAPM', 'module', 90, 0),
('d9a6cc6d-7ee5-7f7b-b156-664e82013b74', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Surveys', 'module', 90, 0),
('d9ab42fc-c7d6-3d02-f6db-664e828dfb29', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'SurveyQuestionOptions', 'module', 89, 0),
('da24fc03-6b4e-52d5-e1e7-664e828d33c5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Documents', 'module', 90, 0),
('da4fff42-79a0-e544-e8ff-664e825a8616', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('da588f8a-73c8-0938-d1ce-664e82ccb7e3', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'ExternalOAuthConnection', 'module', 90, 0),
('da7473a7-b2b5-8eef-baf1-664e8120cc8f', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('db0d5b20-9d98-edea-84b6-664e81ec864c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('db79becc-636e-a197-2446-664e824e2298', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('dd3a8d07-ae9f-5476-99d8-664e82d01408', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('ddfa350d-2dd0-c797-e15a-664e822fe1a0', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('de84d643-10b1-a727-450a-664e829bf685', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('de86bd41-1e06-da2d-0b0b-664e81be8292', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('de8be5e8-33da-e49f-e7c6-664e82af7335', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'ExternalOAuthConnection', 'module', 90, 0),
('de91998a-db92-cb53-62ce-664e81bee63e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('dfca9005-8ad8-c01c-1122-664e819f26ca', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('dfdf8a91-54e1-977c-9647-664e828dda06', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('dff32164-6698-317a-0cf7-664e82428723', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'SurveyQuestionOptions', 'module', 90, 0),
('e26475e1-662b-2ad2-85a2-664e810dfba7', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('e2a000e8-d63a-ffff-ca5b-664e8190505a', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'Emails', 'module', 90, 0),
('e34feb24-7b05-a8d6-8623-664e824be113', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'ExternalOAuthConnection', 'module', 90, 0),
('e41e4614-0089-ff1b-b372-664e82d25af1', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('e596a679-3e60-84fd-4fe6-664e813f68aa', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('e5c12227-3b6f-cb05-af9e-664e821423af', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'SurveyQuestionOptions', 'module', 90, 0),
('e67e0722-1089-6f0e-a391-664e8220bbe0', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('e74030c4-6889-09ea-40ee-664e82b763d5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('e7476e83-391c-17ab-d131-664e81b49e0c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('e81094f2-b31f-513f-85ed-664e82a26e9b', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'ExternalOAuthConnection', 'module', 90, 0),
('e8b0dbd5-b37f-5297-bec0-664e82480e39', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('e91b0b7a-5ef6-be61-3ac9-664e818b9340', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'Cases', 'module', 90, 0),
('eabb72aa-9ace-6f73-9dfc-664e81021163', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('ead7f634-672f-2225-30c9-664e82e4cfd8', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'edit', 'SurveyQuestionOptions', 'module', 90, 0),
('eb9d1808-fdfa-a2d0-da64-664e82245c97', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('ebacb821-7399-61ab-4352-664e81bd480c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('ecab8bc5-1a5a-4eb0-148d-664e82403bbd', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'ExternalOAuthConnection', 'module', 90, 0),
('ed33ce4b-5991-11b0-c54a-664e81cb9971', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'access', 'Emails', 'module', 89, 0),
('ede3f3a1-8ea7-9a46-1b88-664e822f6efe', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('ee381e7b-79f5-4f38-1236-664e82bfc0a5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('eeccdaa5-9f34-544e-04c2-664e81870b86', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('ef1dbe31-8a57-10f0-47aa-664e82fc95cf', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'delete', 'SurveyQuestionOptions', 'module', 90, 0),
('efd5b089-699b-0644-6477-664e81467633', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('f0d12245-3e54-6bd5-11fd-664e8255b07e', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'ExternalOAuthConnection', 'module', 90, 0),
('f0d38c9c-c6ce-ea56-5b6b-664e825e2bec', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('f22df8c3-e01a-ffe6-2cdb-664e8129fb53', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'view', 'Emails', 'module', 90, 0),
('f2f14218-e11a-0139-9164-664e827f20a0', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('f38b43a2-f4cc-24a4-2c6c-664e813bd3e9', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('f38fa765-2afd-f8f0-74df-664e819d5628', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('f3a6f5a1-4de2-2b3d-be8f-664e821b604c', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '', 'import', 'SurveyQuestionOptions', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acl_roles`
--

INSERT INTO `acl_roles` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES
('ee9bc37a-a86e-1d52-2c0d-664ea0f95f8b', '2024-05-23 01:49:38', '2024-05-23 01:49:38', '1', '1', 'Asesor', 'Vendedor', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acl_roles_users`
--

INSERT INTO `acl_roles_users` (`id`, `role_id`, `user_id`, `date_modified`, `deleted`) VALUES
('3cc3a678-a2a2-bacd-56bc-671bd94c9ed4', 'ee9bc37a-a86e-1d52-2c0d-664ea0f95f8b', '32baac79-3049-9236-9e53-671bd9180ed4', '2024-10-25 17:48:08', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT 0,
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT 0,
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2024-05-22 23:39:30', '2024-05-22 23:39:30', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT 0,
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('10699d0f-4f3c-8626-a3a7-664ea766f587', 'jhda', '2024-05-23 02:18:44', '2024-05-23 02:18:44', '1', '1', NULL, 0, NULL, NULL, 1, '3b1f9a81-71fe-452c-66b1-664ea742367c', 'Opportunities'),
('12890bec-b0e2-49a8-5a43-6898f350f2de', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '2025-08-10 19:31:42', '2025-08-10 19:31:42', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, '7ed267f6-4669-5bf7-c9af-6898f3ac5f83', 'DocumentRevisions'),
('141111e2-aa68-3682-e78a-688ef895523e', 'banner.webp', '2025-08-03 05:50:42', '2025-08-03 05:50:42', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, '668e6a1a-f7d7-5246-23e1-688ef819287b', 'DocumentRevisions'),
('2144a953-3779-ba29-e99e-6898ed5be731', '4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', '2025-08-10 19:07:23', '2025-08-10 19:07:23', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, '988dfcc6-1cae-b1f5-49d2-6898ed8c6b63', 'DocumentRevisions'),
('257a97d7-c48c-d8aa-5351-688efa19b20c', 'banner.webp', '2025-08-03 05:58:58', '2025-08-03 05:58:58', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, '511fc413-36bd-696f-3703-688efabc5eaa', 'DocumentRevisions'),
('26f48109-5daf-16ac-03be-6898f2361015', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '2025-08-10 19:25:50', '2025-08-10 19:25:50', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, 'a354ec8d-3dfa-2b20-ad42-6898f2725626', 'DocumentRevisions'),
('28e06e1e-a0e2-48eb-fd30-6898f2905f93', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '2025-08-10 19:27:03', '2025-08-10 19:27:03', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, '9cc82ccb-c15a-4b5c-d8b4-6898f2c8085d', 'DocumentRevisions'),
('2b2b9d1f-b651-bab4-2f88-6898fb34ee19', '4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', '2025-08-10 20:06:47', '2025-08-10 20:06:47', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, '7cd5b10d-2044-c14a-12f2-6898fbd88703', 'DocumentRevisions'),
('37b6ffe0-f0bd-ab05-bac5-68958b152d22', 'plantilla-banner-semana-moda-banner-promocion-moda_122059-223.avif', '2025-08-08 05:31:18', '2025-08-08 05:31:18', '1', '1', NULL, 0, NULL, 'Mime type application/octet-stream not supported', 0, '9eae9ccc-40a7-1c4a-4817-68958ba88e0a', 'DocumentRevisions'),
('38b32bdc-7d7e-12ef-d8a9-6895904b86ff', 'R.jpg', '2025-08-08 05:53:11', '2025-08-08 05:53:11', '1', '1', NULL, 0, NULL, 'Mime type image/jpeg not supported', 0, '639a0faa-0ffd-f99f-b7aa-6895905f134f', 'DocumentRevisions'),
('3e63ebee-f39f-2b43-a314-6895400d8c06', 'banner.webp', '2025-08-08 00:09:15', '2025-08-08 00:09:15', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'c0bbd9ff-46e5-f22e-0158-689540d15d23', 'DocumentRevisions'),
('411b83d6-6411-8ccc-0783-6898faed915f', '4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', '2025-08-10 20:02:18', '2025-08-10 20:02:18', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, 'a791c80e-33b7-8a52-24b7-6898fad7fe90', 'DocumentRevisions'),
('41ddc0f5-2711-fed5-871d-68954027302e', 'banner.webp', '2025-08-08 00:11:11', '2025-08-08 00:11:11', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'c2befae8-f3c3-768e-dcaa-68954088f912', 'DocumentRevisions'),
('44b3a8d5-ede1-0e7e-f108-689541e3e4cd', 'banner.webp', '2025-08-08 00:16:54', '2025-08-08 00:16:54', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'c3d21b1c-252d-cc7c-e5dc-6895414ccb18', 'DocumentRevisions'),
('46e69892-3f8e-36e6-f56e-664ea76f9293', 'Sr. Alejandro Maldonado', '2024-05-23 02:18:44', '2024-05-23 02:18:44', '1', '1', NULL, 0, NULL, NULL, 1, '1ca93217-f347-5bb5-42e6-664ea763304c', 'Contacts'),
('54a371fa-e43c-d4af-e4b3-689913943959', '16261127170.webp', '2025-08-10 21:48:28', '2025-08-10 21:48:28', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'ccf2b707-717e-f7d0-948d-689913f25214', 'DocumentRevisions'),
('56600dcb-7301-9c2d-59f0-68958de474fc', 'R.jpg', '2025-08-08 05:37:44', '2025-08-08 05:37:44', '1', '1', NULL, 0, NULL, 'Mime type image/jpeg not supported', 0, '66167243-8b22-25cb-a4bb-68958d2942e4', 'DocumentRevisions'),
('5af798d7-9cb4-0b19-f8b1-664ea613c7bb', 'Mhda', '2024-05-23 02:12:52', '2024-05-23 02:12:52', '1', '1', NULL, 0, NULL, NULL, 1, 'b6a3e470-92a9-3999-5b1d-664ea6147f46', 'AOS_Contracts'),
('5b04baad-6eee-14df-0f6d-6663bccc1dff', 'TEXTIL', '2024-06-08 02:07:32', '2024-06-08 02:07:32', '1', '1', NULL, 0, NULL, NULL, 1, '8d3bbbae-8b41-f306-6236-6663bcea3d1a', 'Tasks'),
('5d44d9dc-4738-c3cb-5092-688ef9dd86ff', 'banner.webp', '2025-08-03 05:52:00', '2025-08-03 05:52:00', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'd190b301-f8eb-4eab-2f69-688ef8867c67', 'DocumentRevisions'),
('5d8536ea-f89d-7b75-3ff2-664ea6fbe300', 'Mhda Recordatorio de Renovación de Contrato', '2024-05-23 02:12:51', '2024-05-23 02:12:52', '1', '1', NULL, 0, '', NULL, 1, 'd44a5cf8-5910-a316-71bb-664ea65662dc', 'Calls'),
('5dcf443c-4e9a-150b-2a8f-689591677cb8', 'R.jpg', '2025-08-08 05:54:10', '2025-08-08 05:54:10', '1', '1', NULL, 0, NULL, 'Mime type image/jpeg not supported', 0, 'bc50eb29-2b38-3838-43dd-689591378d8f', 'DocumentRevisions'),
('5e7f634b-0c8d-5325-2e43-665517c33c8c', 'Alejandro Maldonado', '2024-05-27 23:30:01', '2024-05-27 23:30:01', '1', '1', NULL, 0, NULL, NULL, 1, '798f6ec5-c861-afc8-f8b7-665517f5d471', 'Accounts'),
('6179efe7-3c03-a405-79b0-68958c269c9b', 'color-diseno.jpg', '2025-08-08 05:32:57', '2025-08-08 05:32:57', '1', '1', NULL, 0, NULL, 'Mime type image/jpeg not supported', 0, 'cb69405f-d13a-011b-3c6e-68958c6a5b0d', 'DocumentRevisions'),
('646585e1-d381-de2c-0e94-68959181c186', 'plantilla-banner-semana-moda-banner-promocion-moda_122059-223.avif', '2025-08-08 05:57:39', '2025-08-08 05:57:39', '1', '1', NULL, 0, NULL, 'Mime type application/octet-stream not supported', 0, '9aba06bd-1fef-2efc-104e-68959138b8e8', 'DocumentRevisions'),
('67a9bc4d-689d-fb60-6591-688ef3974b29', 'banner.webp', '2025-08-03 05:27:22', '2025-08-03 05:27:22', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'c75d753e-9211-a697-9273-688ef3a7263c', 'DocumentRevisions'),
('6b2de583-b1d3-4754-ac2c-6895400df545', 'banner.webp', '2025-08-08 00:12:32', '2025-08-08 00:12:32', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, '1fc70d88-790e-28ac-4117-68954084db19', 'DocumentRevisions'),
('6c6d6aec-19d4-8b97-7261-688ef784d776', 'banner.webp', '2025-08-03 05:47:18', '2025-08-03 05:47:18', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'd48b7eba-8d71-3b5d-78d2-688ef71b2205', 'DocumentRevisions'),
('6f55048e-eb9f-51cc-68b8-688ef8a58e5d', 'banner.webp', '2025-08-03 05:49:39', '2025-08-03 05:49:39', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, '786fd10a-a004-1897-cbd5-688ef8da2fd9', 'DocumentRevisions'),
('7289223f-ced9-22bf-da6e-666396377831', 'Tatiana Maldonado López', '2024-06-07 23:24:24', '2024-06-07 23:24:24', '1', '1', NULL, 0, NULL, NULL, 1, '61fad06d-a663-e826-2be1-6663965d3901', 'Accounts'),
('73e0f5de-386c-01c0-4351-6895877c4b78', 'R.jpg', '2025-08-08 05:15:00', '2025-08-08 05:15:00', '1', '1', NULL, 0, NULL, 'Mime type image/jpeg not supported', 0, '42ed4aa5-7fb7-17fe-691f-689587c9f5b7', 'DocumentRevisions'),
('7463d879-4931-9a80-15ce-68953eb9e313', 'banner.webp', '2025-08-08 00:01:35', '2025-08-08 00:01:35', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'beed7596-c5cd-eba4-dc59-68953e54fb29', 'DocumentRevisions'),
('7769cbe3-bef6-6ab1-1eaa-6898ef2b93dd', '7dd37713-8089-4084-891c-47c03f63eba2.png', '2025-08-10 19:12:14', '2025-08-10 19:12:14', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, 'ed31ba3c-7445-e9ca-ce7d-6898ef5e7382', 'DocumentRevisions'),
('7a24f158-f2f3-a6d6-b77a-6898f185d8f1', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '2025-08-10 19:21:54', '2025-08-10 19:21:54', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, 'b4989e2c-e99f-7225-aa69-6898f1f3fdc6', 'DocumentRevisions'),
('7e3538c7-0dd5-27f2-475e-6895837a84f0', 'banner.webp', '2025-08-08 04:56:23', '2025-08-08 04:56:23', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'e88f8509-3910-f16e-4771-689583646e92', 'DocumentRevisions'),
('8c251675-5135-89e5-1b72-688efb26c25a', 'banner.webp', '2025-08-03 06:04:40', '2025-08-03 06:04:40', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, '1f9ae80b-9f17-b5fc-3203-688efba468d1', 'DocumentRevisions'),
('8d9e72b3-c576-a75e-802b-6898f2cafd57', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '2025-08-10 19:28:48', '2025-08-10 19:28:48', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, 'e59a73f4-f934-b32b-b3a7-6898f2e0fb64', 'DocumentRevisions'),
('8e43af52-75a9-ac69-9bce-6898f1116c3b', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '2025-08-10 19:24:17', '2025-08-10 19:24:17', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, 'cf252856-255b-4835-c220-6898f12d33cf', 'DocumentRevisions'),
('949bd0c2-3b90-b0c6-1635-6898fbce88d9', 'Frame 350.png', '2025-08-10 20:07:23', '2025-08-10 20:07:23', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, '3662851e-9ed4-3d7a-f53f-6898fb709669', 'DocumentRevisions'),
('9933239e-29a6-b9c5-20d8-664ea74a4efc', 'hiug', '2024-05-23 02:18:44', '2024-05-23 02:18:44', '1', '1', NULL, 0, NULL, NULL, 1, '1cd59f6f-502d-44d3-826b-664ea70e6522', 'Accounts'),
('9a56dcc6-a59c-79a5-12ab-689577b7e6c1', 'banner.webp', '2025-08-08 04:04:04', '2025-08-08 04:04:04', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'bcfc05de-193e-ff7e-0153-689577deedc4', 'DocumentRevisions'),
('a33b73b6-8e4e-b0de-f74f-66639bb7d30c', 'Nueva', '2024-06-07 23:44:20', '2024-06-07 23:47:14', '1', '1', NULL, 0, '', NULL, 1, 'cffbb5f4-57da-c4e4-994d-66639b2970c5', 'Meetings'),
('a38d42d3-3e04-827d-1068-68954137a732', 'banner.webp', '2025-08-08 00:13:49', '2025-08-08 00:13:49', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, '15acd857-cc3b-f2ad-f899-689541690ac7', 'DocumentRevisions'),
('a4c47b45-4517-e8f1-d7b8-6895410073c8', 'banner.webp', '2025-08-08 00:14:37', '2025-08-08 00:14:37', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, '43d36092-e9c3-409c-6480-689541315088', 'DocumentRevisions'),
('a6c9a660-d8f9-276e-8c44-688efa64ff78', 'banner.webp', '2025-08-03 05:56:33', '2025-08-03 05:56:33', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, '10d66622-5d78-4c72-1084-688efa9989d8', 'DocumentRevisions'),
('aecaec8f-f85c-f9fb-b6ed-664e9ef864b8', 'Alejandro Maldonado', '2024-05-23 01:42:20', '2024-05-23 01:42:20', '1', '1', NULL, 0, NULL, NULL, 1, 'e433e866-1aca-63c6-6e7e-664e9edbb0c1', 'Accounts'),
('b02b8d24-5710-a58a-0df4-664ea7e22159', 'Sr. Alejandro Maldonado', '2024-05-23 02:16:35', '2024-05-23 02:18:45', '1', '1', NULL, 0, '', NULL, 1, 'd21fecc2-da67-e429-ef89-664ea7121189', 'Leads'),
('b377935e-bc9f-79cf-e692-689540559461', 'banner.webp', '2025-08-08 00:10:23', '2025-08-08 00:10:23', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, '3e564ce9-18db-3cba-867f-689540a53efb', 'DocumentRevisions'),
('b47797b9-9853-736d-7a2a-6898fbe5e79f', 'Frame 350.png', '2025-08-10 20:03:23', '2025-08-10 20:03:23', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, '3e57c094-4aae-56fe-4d83-6898fb5fb901', 'DocumentRevisions'),
('c402483e-a9d9-215c-2d6f-688efbe0a0cc', 'banner.webp', '2025-08-03 06:03:03', '2025-08-03 06:03:03', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'c69bd13c-6228-8464-b7da-688efb5e9fb1', 'DocumentRevisions'),
('c7c21eca-7a42-76dc-5a82-689588aeb3c6', 'youtube-cover-and-banner-design-template-vector.jpg', '2025-08-08 05:16:53', '2025-08-08 05:16:53', '1', '1', NULL, 0, NULL, 'Mime type image/jpeg not supported', 0, 'd1030320-534c-13de-6236-6895881f1aa5', 'DocumentRevisions'),
('c8a54b3d-fc6f-b286-80da-689584a98635', 'banner.webp', '2025-08-08 04:59:25', '2025-08-08 04:59:25', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, '42432ed6-fe51-7214-e5b2-6895842bdd5a', 'DocumentRevisions'),
('cad5cc96-b4e1-5bac-f3ba-6898ed1118a5', '7dd37713-8089-4084-891c-47c03f63eba2.png', '2025-08-10 19:04:58', '2025-08-10 19:04:58', '1', '1', NULL, 0, NULL, 'Mime type image/png not supported', 0, '3cfdbf1a-ff0f-8be2-af7e-6898ed5b7569', 'DocumentRevisions'),
('daa0b12b-dc70-7ce6-0904-68958daed28f', 'R.jpg', '2025-08-08 05:37:21', '2025-08-08 05:37:21', '1', '1', NULL, 0, NULL, 'Mime type image/jpeg not supported', 0, 'f3a60f35-af59-f42d-005e-68958da3eb61', 'DocumentRevisions'),
('daa15664-9fc6-5d70-f882-689591505bab', 'plantilla-banner-semana-moda-banner-promocion-moda_122059-223.avif', '2025-08-08 05:55:51', '2025-08-08 05:55:51', '1', '1', NULL, 0, NULL, 'Mime type application/octet-stream not supported', 0, '4bec15a5-9ed4-4bdc-43d9-689591b02a1b', 'DocumentRevisions'),
('de5104d3-8e2b-d4c2-a033-68955c7313bb', 'banner.webp', '2025-08-08 02:08:43', '2025-08-08 02:08:43', '1', '1', NULL, 0, NULL, 'Mime type image/webp not supported', 0, 'd712c970-5c92-f04e-cead-68955c2b10a2', 'DocumentRevisions'),
('ef62ce2f-8a6e-7d6b-8501-664ea6fa2673', 'MYB', '2024-05-23 02:14:32', '2024-05-23 02:24:49', '1', '1', NULL, 0, '', NULL, 1, 'e40003ff-95be-84d8-0b16-664ea6f83d86', 'Opportunities');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aok_knowledgebase`
--

INSERT INTO `aok_knowledgebase` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `status`, `revision`, `additional_info`, `user_id_c`, `user_id1_c`) VALUES
('4db7f308-9678-7687-1272-68198b0214ea', 'Nueva entrada', '2025-05-06 04:07:44', '2025-05-06 04:07:44', '1', '1', '<p>nuevo elemento</p>\r\n<h1>dato nuevo</h1>\r\n<ul>\r\n<li><a href=\"#\">Conocenos</a>\r\n<ul class=\"dropdown\">\r\n<li><a href=\"./product-details.html\">Sobre nosotros</a></li>\r\n<li><a href=\"./checkout.html\">Solicitudes</a></li>\r\n<li><a href=\"./blog-details.html\">Unetenos</a></li>\r\n<li><a href=\"./blog-details.html\">Materiales</a></li>\r\n</ul>\r\n</li>\r\n<li><a href=\"./blog.html\">Blog</a></li>\r\n</ul>', 0, NULL, 'In_Review', '', 'Nuevo', '1', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aor_conditions`
--

INSERT INTO `aor_conditions` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `aor_report_id`, `condition_order`, `logic_op`, `parenthesis`, `module_path`, `field`, `operator`, `value_type`, `value`, `parameter`) VALUES
('11e70f1c-81b8-5be9-8777-669740b56958', '', '2024-07-17 03:54:47', '2024-07-17 03:54:47', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '8290259e-1484-242b-9d78-66974078bdd6', 0, NULL, NULL, 'YToxOntpOjA7czowOiIiO30=', 'assigned_user_name', 'Equal_To', 'Value', '', 1),
('3cf57ec1-7c55-32ba-3d6e-669740d3c61f', '', '2024-07-17 03:54:47', '2024-07-17 03:54:47', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '8290259e-1484-242b-9d78-66974078bdd6', 1, 'AND', 'START', NULL, '', '', '', NULL, 0),
('741f2f90-00cd-a550-2b05-669740eb596c', '', '2024-07-17 03:54:47', '2024-07-17 03:54:47', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '8290259e-1484-242b-9d78-66974078bdd6', 2, NULL, NULL, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 'Greater_Than_or_Equal_To', 'Value', '', 1),
('8a2d1228-138b-fdde-6d9a-67226fa71ef9', '', '2024-10-30 17:40:51', '2024-10-30 17:45:47', '1', '1', NULL, 0, 'bbb009ed-5368-df5b-0d6c-67226f844077', 0, NULL, NULL, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 'Equal_To', 'Value', NULL, 1),
('9e18a7b5-7ebe-36db-93df-669740ffe7a0', '', '2024-07-17 03:54:47', '2024-07-17 03:54:47', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '8290259e-1484-242b-9d78-66974078bdd6', 4, 'AND', NULL, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 'Less_Than_or_Equal_To', 'Value', '', 1),
('cd3e25be-35b6-9aa9-a98b-66974098f1c5', '', '2024-07-17 03:54:47', '2024-07-17 03:54:47', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '8290259e-1484-242b-9d78-66974078bdd6', 6, NULL, '3cf57ec1-7c55-32ba-3d6e-669740d3c61f', NULL, '', '', '', NULL, 0),
('ed083c87-58ae-f979-a882-67226e01b8ec', '', '2024-10-30 17:34:05', '2024-10-30 17:34:05', '1', '1', NULL, 0, 'a381fbee-2658-52a8-4e9c-67226df34ef7', 0, NULL, NULL, 'YToxOntpOjA7czowOiIiO30=', 'fecha_entrega_c', 'Equal_To', 'Value', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aor_fields`
--

INSERT INTO `aor_fields` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `aor_report_id`, `field_order`, `module_path`, `field`, `display`, `link`, `label`, `field_function`, `sort_by`, `format`, `total`, `sort_order`, `group_by`, `group_order`, `group_display`) VALUES
('18e0f2ae-88a9-71ae-958e-672270ce0528', '', '2024-10-30 17:42:39', '2024-10-30 17:42:39', '1', '1', NULL, 0, 'db34cec6-8759-68b3-b382-6722708ee720', 0, 'YToxOntpOjA7czowOiIiO30=', 'number', 1, 0, 'Codigo', '', '', '', '', NULL, 0, NULL, 0),
('1b2bf48c-77ba-0d82-fee3-672270e9e8ef', '', '2024-10-30 17:44:39', '2024-10-30 17:45:47', '1', '', NULL, 1, 'bbb009ed-5368-df5b-0d6c-67226f844077', 5, 'YTozOntpOjA7czoyMDoiYW9zX2xpbmVfaXRlbV9ncm91cHMiO2k6MTtzOjE5OiJhb3NfcHJvZHVjdHNfcXVvdGVzIjtpOjI7czoxMjoiYW9zX3Byb2R1Y3RzIjt9', 'name', 1, 0, 'Nombre del Producto', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
('204c160f-f716-4a21-4c37-6722707a94a7', '', '2024-10-30 17:42:39', '2024-10-30 17:42:39', '1', '1', NULL, 0, 'db34cec6-8759-68b3-b382-6722708ee720', 1, 'YToyOntpOjA7czoxOToiYW9zX3Byb2R1Y3RzX3F1b3RlcyI7aToxO3M6MTI6ImFvc19wcm9kdWN0cyI7fQ==', 'name', 1, 0, 'Nombre del Producto', '', '', '', '', NULL, 0, NULL, 0),
('2237be86-f633-784d-c482-672270f8e086', '', '2024-10-30 17:44:39', '2024-10-30 17:45:47', '1', '1', NULL, 1, 'bbb009ed-5368-df5b-0d6c-67226f844077', 6, 'YTozOntpOjA7czoyMDoiYW9zX2xpbmVfaXRlbV9ncm91cHMiO2k6MTtzOjE5OiJhb3NfcHJvZHVjdHNfcXVvdGVzIjtpOjI7czoxMjoiYW9zX3Byb2R1Y3RzIjt9', 'comision_c', 1, 0, 'Comision', '', '', '', '', NULL, 0, NULL, 0),
('27195ef2-0561-fab7-fc09-672270bef8e2', '', '2024-10-30 17:42:39', '2024-10-30 17:42:39', '1', '1', NULL, 0, 'db34cec6-8759-68b3-b382-6722708ee720', 2, 'YToyOntpOjA7czoxOToiYW9zX3Byb2R1Y3RzX3F1b3RlcyI7aToxO3M6MTI6ImFvc19wcm9kdWN0cyI7fQ==', 'corte_c', 1, 0, 'Corte', '', '', '', '', NULL, 0, NULL, 0),
('2da84c2c-1cbe-48ad-94ce-6722709fb244', '', '2024-10-30 17:42:39', '2024-10-30 17:42:39', '1', '1', NULL, 0, 'db34cec6-8759-68b3-b382-6722708ee720', 3, 'YToyOntpOjA7czoxOToiYW9zX3Byb2R1Y3RzX3F1b3RlcyI7aToxO3M6MTI6ImFvc19wcm9kdWN0cyI7fQ==', 'price', 1, 0, 'Precio', '', '', '', '', NULL, 0, NULL, 0),
('2e4abcb3-7df2-0cac-0df6-6697406a1da4', '', '2024-07-17 03:54:47', '2024-07-17 03:54:47', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '8290259e-1484-242b-9d78-66974078bdd6', 0, 'YToxOntpOjA7czo4OiJhY2NvdW50cyI7fQ==', 'name', 1, 0, 'Nombre del cliente', '', '', '', '', NULL, 0, NULL, 0),
('34e57193-cb40-8968-6154-67226d83afe9', '', '2024-10-30 17:33:08', '2024-10-30 17:34:05', '1', '1', NULL, 0, 'a381fbee-2658-52a8-4e9c-67226df34ef7', 0, 'YToxOntpOjA7czowOiIiO30=', 'number', 1, 0, 'Codigo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('3c5a75a2-5a3c-504a-a5c6-67226dc20973', '', '2024-10-30 17:33:08', '2024-10-30 17:34:05', '1', '1', NULL, 0, 'a381fbee-2658-52a8-4e9c-67226df34ef7', 1, 'YToxOntpOjA7czo4OiJhY2NvdW50cyI7fQ==', 'name', 1, 0, 'Nombre', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('400299ec-94dc-4d25-e3c2-67226ff5fc0d', '', '2024-10-30 17:40:51', '2024-10-30 17:45:47', '1', '1', NULL, 0, 'bbb009ed-5368-df5b-0d6c-67226f844077', 0, 'YToxOntpOjA7czoxODoiYXNzaWduZWRfdXNlcl9saW5rIjt9', 'first_name', 1, 0, 'Nombre', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('43345676-570f-b6c4-e8ca-67226dffdc88', '', '2024-10-30 17:33:08', '2024-10-30 17:34:05', '1', '1', NULL, 0, 'a381fbee-2658-52a8-4e9c-67226df34ef7', 2, 'YToxOntpOjA7czowOiIiO30=', 'tipo_venta_c', 1, 0, 'Tipo de venta', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('46c17065-474c-f236-dbd3-67226f21cf6d', '', '2024-10-30 17:40:51', '2024-10-30 17:45:47', '1', '1', NULL, 0, 'bbb009ed-5368-df5b-0d6c-67226f844077', 1, 'YToxOntpOjA7czo4OiJhY2NvdW50cyI7fQ==', 'name', 1, 0, 'Cliente', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('4ce19fb9-25d7-def9-8c26-67226d7976ae', '', '2024-10-30 17:33:08', '2024-10-30 17:34:05', '1', '1', NULL, 0, 'a381fbee-2658-52a8-4e9c-67226df34ef7', 3, 'YToxOntpOjA7czoxOToiYW9zX3Byb2R1Y3RzX3F1b3RlcyI7fQ==', 'name', 1, 0, 'Producto', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('4d2fc6fa-42e9-8ee2-cb9d-67226fc57a9e', '', '2024-10-30 17:40:51', '2024-10-30 17:45:47', '1', '1', NULL, 0, 'bbb009ed-5368-df5b-0d6c-67226f844077', 2, 'YToxOntpOjA7czowOiIiO30=', 'number', 1, 0, 'Codigo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('543dff1d-8ef9-97fb-bba3-67226f0da4ac', '', '2024-10-30 17:40:51', '2024-10-30 17:45:47', '1', '1', NULL, 0, 'bbb009ed-5368-df5b-0d6c-67226f844077', 3, 'YToxOntpOjA7czowOiIiO30=', 'total_amount', 1, 0, 'Total', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('54d656b5-1642-f95a-eccb-67226d29d864', '', '2024-10-30 17:33:08', '2024-10-30 17:34:05', '1', '1', NULL, 0, 'a381fbee-2658-52a8-4e9c-67226df34ef7', 4, 'YToxOntpOjA7czoyMDoiYW9zX2xpbmVfaXRlbV9ncm91cHMiO30=', 'total_amt', 1, 0, 'Valor', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('562084a4-8009-3405-bfe8-66974039449e', '', '2024-07-17 03:54:47', '2024-07-17 03:54:47', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '8290259e-1484-242b-9d78-66974078bdd6', 1, 'YToxOntpOjA7czowOiIiO30=', 'assigned_user_name', 1, 0, 'Asesor', '', '', '', '', NULL, 0, NULL, 0),
('5b07b7b5-b139-9cc5-67fa-67226d5c89b5', '', '2024-10-30 17:33:08', '2024-10-30 17:34:05', '1', '1', NULL, 0, 'a381fbee-2658-52a8-4e9c-67226df34ef7', 5, 'YToxOntpOjA7czowOiIiO30=', 'stage', 1, 0, 'Estado', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('5b9680b7-573b-6474-6d86-67226f76b2d4', '', '2024-10-30 17:40:51', '2024-10-30 17:44:39', '1', '', NULL, 1, 'bbb009ed-5368-df5b-0d6c-67226f844077', 4, 'YToyOntpOjA7czoxOToiYW9zX3Byb2R1Y3RzX3F1b3RlcyI7aToxO3M6MTI6ImFvc19wcm9kdWN0cyI7fQ==', 'name', 1, 0, 'Nombre del Producto', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
('615558fb-f790-6300-db34-67226d298e84', '', '2024-10-30 17:33:08', '2024-10-30 17:34:05', '1', '1', NULL, 0, 'a381fbee-2658-52a8-4e9c-67226df34ef7', 6, 'YToxOntpOjA7czo4OiJhY2NvdW50cyI7fQ==', 'billing_address_street', 1, 0, 'Dirección', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('62e2769f-6e65-26c6-b786-67226f7fa56b', '', '2024-10-30 17:40:51', '2024-10-30 17:44:39', '1', '1', NULL, 1, 'bbb009ed-5368-df5b-0d6c-67226f844077', 5, 'YToyOntpOjA7czoxOToiYW9zX3Byb2R1Y3RzX3F1b3RlcyI7aToxO3M6MTI6ImFvc19wcm9kdWN0cyI7fQ==', 'comision_c', 1, 0, 'Comision', '', '', '', '', NULL, 0, NULL, 0),
('67715275-f573-39a8-fe6f-67226d9562f6', '', '2024-10-30 17:33:08', '2024-10-30 17:34:05', '1', '1', NULL, 0, 'a381fbee-2658-52a8-4e9c-67226df34ef7', 7, 'YToxOntpOjA7czo4OiJhY2NvdW50cyI7fQ==', 'phone_office', 1, 0, 'Celular', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('69c43e20-44fc-4169-f883-67226fa205a5', '', '2024-10-30 17:40:51', '2024-10-30 17:45:47', '1', '1', NULL, 0, 'bbb009ed-5368-df5b-0d6c-67226f844077', 8, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 1, 0, 'Fecha de creación', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('753706f1-2c69-b5e5-a4f2-6697407f3ce8', '', '2024-07-17 03:54:47', '2024-07-17 03:54:47', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '8290259e-1484-242b-9d78-66974078bdd6', 5, 'YToxOntpOjA7czowOiIiO30=', 'total_amount', 1, 0, 'Gran Total', '', '', '', '', NULL, 0, NULL, 0),
('9e62e089-290b-9f46-7d49-669740262cee', '', '2024-07-17 03:54:47', '2024-07-17 03:54:47', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '8290259e-1484-242b-9d78-66974078bdd6', 3, 'YToxOntpOjA7czowOiIiO30=', 'number', 1, 0, 'Codigo', '', '', '', '', NULL, 0, NULL, 0),
('b6e2dcaa-81b6-a60a-8f7c-672270c4af52', '', '2024-10-30 17:45:47', '2024-10-30 17:45:47', '1', '1', NULL, 0, 'bbb009ed-5368-df5b-0d6c-67226f844077', 4, 'YToyOntpOjA7czoxOToiYW9zX3Byb2R1Y3RzX3F1b3RlcyI7aToxO3M6MTI6ImFvc19wcm9kdWN0cyI7fQ==', 'name', 1, 0, 'Nombre del Producto', '', '', '', '', NULL, 0, NULL, 0),
('bdceeef1-1ece-6cfa-08bc-6722709e38c2', '', '2024-10-30 17:45:47', '2024-10-30 17:45:47', '1', '1', NULL, 0, 'bbb009ed-5368-df5b-0d6c-67226f844077', 6, 'YToyOntpOjA7czoxOToiYW9zX3Byb2R1Y3RzX3F1b3RlcyI7aToxO3M6MTI6ImFvc19wcm9kdWN0cyI7fQ==', 'comision_c', 1, 0, 'Comision', '', '', '', '', NULL, 0, NULL, 0),
('cfd72574-01d8-d97c-33d4-669740ffd5ac', '', '2024-07-17 03:54:47', '2024-07-17 03:54:47', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '8290259e-1484-242b-9d78-66974078bdd6', 4, 'YToxOntpOjA7czowOiIiO30=', 'stage', 1, 0, 'Estado', '', '', '', '', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aor_reports`
--

INSERT INTO `aor_reports` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `report_module`, `graphs_per_row`) VALUES
('8290259e-1484-242b-9d78-66974078bdd6', 'Ventas por asesor', '2024-07-17 03:54:47', '2024-07-17 03:54:47', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'AOS_Quotes', 0),
('a381fbee-2658-52a8-4e9c-67226df34ef7', 'Domiciliarios', '2024-10-30 17:33:08', '2024-10-30 17:34:05', '1', '1', NULL, 0, '1', 'AOS_Quotes', 2),
('bbb009ed-5368-df5b-0d6c-67226f844077', 'Comision asesores', '2024-10-30 17:40:51', '2024-10-30 17:45:47', '1', '1', NULL, 0, '1', 'AOS_Quotes', 2),
('db34cec6-8759-68b3-b382-6722708ee720', 'Corte satelites', '2024-10-30 17:42:39', '2024-10-30 17:42:39', '1', '1', '', 0, '1', 'AOS_Quotes', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext DEFAULT NULL,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_contracts`
--

INSERT INTO `aos_contracts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `reference_code`, `start_date`, `end_date`, `total_contract_value`, `total_contract_value_usdollar`, `currency_id`, `status`, `customer_signed_date`, `company_signed_date`, `renewal_reminder_date`, `contract_type`, `contract_account_id`, `opportunity_id`, `contact_id`, `call_id`, `total_amt`, `total_amt_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `discount_amount`, `discount_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `shipping_amount`, `shipping_amount_usdollar`, `shipping_tax`, `shipping_tax_amt`, `shipping_tax_amt_usdollar`, `total_amount`, `total_amount_usdollar`) VALUES
('b6a3e470-92a9-3999-5b1d-664ea6147f46', 'Mhda', '2024-05-23 02:12:50', '2024-05-23 02:12:50', '1', '1', '', 0, '1', NULL, '2024-05-23', '2025-05-23', 0.000000, 0.000000, 'acea730d-beec-122c-5f93-664e9d5755da', 'Signed', NULL, NULL, '2025-05-09 10:00:00', 'Type', 'e433e866-1aca-63c6-6e7e-664e9edbb0c1', '', '', 'd44a5cf8-5910-a316-71bb-664ea65662dc', 10000.000000, 2.500000, 10000.000000, 2.500000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0.0', 0.000000, 0.000000, 10000.000000, 2.500000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_invoices`
--

INSERT INTO `aos_invoices` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `billing_account_id`, `billing_contact_id`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `number`, `total_amt`, `total_amt_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `discount_amount`, `discount_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `shipping_amount`, `shipping_amount_usdollar`, `shipping_tax`, `shipping_tax_amt`, `shipping_tax_amt_usdollar`, `total_amount`, `total_amount_usdollar`, `currency_id`, `quote_number`, `quote_date`, `invoice_date`, `due_date`, `status`, `template_ddown_c`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`) VALUES
('2a15808d-12aa-0b06-b2b2-664ea542e5c3', 'factura', '2024-05-23 02:11:57', '2024-05-23 02:11:57', '1', '1', '', 0, '1', 'e433e866-1aca-63c6-6e7e-664e9edbb0c1', '', '', '', '', '', '', '', '', '', '', '', 1, 10000.000000, 2.500000, 10000.000000, 2.500000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0.0', 0.000000, 0.000000, 10000.000000, 2.500000, 'acea730d-beec-122c-5f93-664e9d5755da', 1, '2024-05-23', '2024-05-23', NULL, '', NULL, NULL, 0.000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_line_item_groups`
--

INSERT INTO `aos_line_item_groups` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `total_amt`, `total_amt_usdollar`, `discount_amount`, `discount_amount_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`, `total_amount`, `total_amount_usdollar`, `parent_type`, `parent_id`, `number`, `currency_id`) VALUES
('37eb12bb-e109-78b3-b59b-6733ff8b0a8b', NULL, '2024-11-13 01:21:18', '2024-11-13 05:04:17', '1', '1', NULL, 0, '', 50000.000000, 50000.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, 2500.000000, 2500.000000, NULL, 0.000000, 52500.000000, 52500.000000, 'AOS_Quotes', '', 1, '-99'),
('38be9f11-62a5-356c-4b75-667218f7afe3', NULL, '2024-06-18 23:31:20', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', 'ab66fc08-37cf-0829-7c32-667217f7f30c', NULL, 0, 'ab66fc08-37cf-0829-7c32-667217f7f30c', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, 0.000000, 0.000000, NULL, 0.000000, 10000.000000, 2.500000, 'AOS_Quotes', '', 1, 'acea730d-beec-122c-5f93-664e9d5755da'),
('78132ed3-5a18-4c72-4bdd-664ea6afdd59', '', '2024-05-23 02:12:50', '2024-05-23 02:12:50', '1', '1', NULL, 0, '1', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, 0.000000, 0.000000, NULL, 0.000000, 10000.000000, 2.500000, 'AOS_Contracts', 'b6a3e470-92a9-3999-5b1d-664ea6147f46', 1, 'acea730d-beec-122c-5f93-664e9d5755da'),
('7de7faf4-b012-9125-33b6-6689efd1fba0', NULL, '2024-07-07 01:31:17', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 0, '1', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, 0.000000, 0.000000, NULL, 0.000000, 10000.000000, 2.500000, 'AOS_Quotes', '', 1, 'acea730d-beec-122c-5f93-664e9d5755da'),
('8a3f4e32-31c1-3400-5525-6663977044d5', NULL, '2024-06-07 23:29:49', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 0, '1', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, 0.000000, 0.000000, NULL, 0.000000, 10000.000000, 2.500000, 'AOS_Quotes', '', 1, 'acea730d-beec-122c-5f93-664e9d5755da'),
('95f02b69-718f-4ef0-e9ef-6697458cfce5', NULL, '2024-07-17 04:15:52', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 0, '1', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, 0.000000, 0.000000, NULL, 0.000000, 10000.000000, 2.500000, 'AOS_Quotes', '', 1, 'acea730d-beec-122c-5f93-664e9d5755da'),
('aedc186e-e9f2-c50f-4998-669739385420', NULL, '2024-07-17 03:25:44', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 0, '1', 25000.000000, 6.250000, -5000.000000, -1.250000, 20000.000000, 5.000000, 0.000000, 0.000000, NULL, 0.000000, 20000.000000, 5.000000, 'AOS_Quotes', '', 1, 'acea730d-beec-122c-5f93-664e9d5755da'),
('c3069099-c40d-b0f7-6260-664ea5545e52', '', '2024-05-23 02:11:57', '2024-05-23 02:11:57', '1', '1', NULL, 0, '1', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, 0.000000, 0.000000, NULL, 0.000000, 10000.000000, 2.500000, 'AOS_Invoices', '2a15808d-12aa-0b06-b2b2-664ea542e5c3', 1, 'acea730d-beec-122c-5f93-664e9d5755da'),
('c766169f-44e8-a232-e7a3-664ea55f2c6e', NULL, '2024-05-23 02:09:16', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 0, '1', 30000.000000, 7.500000, 0.000000, 0.000000, 30000.000000, 7.500000, 0.000000, 0.000000, NULL, 0.000000, 30000.000000, 7.500000, 'AOS_Quotes', '', 1, 'acea730d-beec-122c-5f93-664e9d5755da'),
('c994a4dc-b2aa-3a9f-34f7-6689fe281477', NULL, '2024-07-07 02:31:38', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 0, '1', 40000.000000, 10.000000, 0.000000, 0.000000, 40000.000000, 10.000000, 0.000000, 0.000000, NULL, 0.000000, 40000.000000, 10.000000, 'AOS_Quotes', '', 1, 'acea730d-beec-122c-5f93-664e9d5755da'),
('d391a937-b80a-46eb-f3db-664ea5c0e4d3', NULL, '2024-05-23 02:09:16', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 0, '1', NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, 'AOS_Quotes', '', 2, 'acea730d-beec-122c-5f93-664e9d5755da'),
('ee247ff0-bb38-4658-087f-665531b02b9b', NULL, '2024-05-28 01:21:54', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 0, '1', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, 0.000000, 0.000000, NULL, 0.000000, 10000.000000, 2.500000, 'AOS_Quotes', '', 1, 'acea730d-beec-122c-5f93-664e9d5755da');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` longtext DEFAULT NULL,
  `pdffooter` longtext DEFAULT NULL,
  `margin_left` int(255) DEFAULT 15,
  `margin_right` int(255) DEFAULT 15,
  `margin_top` int(255) DEFAULT 16,
  `margin_bottom` int(255) DEFAULT 16,
  `margin_header` int(255) DEFAULT 9,
  `margin_footer` int(255) DEFAULT 9,
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_pdf_templates`
--

INSERT INTO `aos_pdf_templates` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `active`, `type`, `pdfheader`, `pdffooter`, `margin_left`, `margin_right`, `margin_top`, `margin_bottom`, `margin_header`, `margin_footer`, `page_size`, `orientation`) VALUES
('3dcf0dbd-5cb2-444c-4f3b-666399d98a00', 'Cotizaciones', '2024-06-07 23:35:42', '2024-06-07 23:37:33', '1', '1', '<table style=\"width:100%;font-family:Arial;text-align:center;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\"><tbody style=\"text-align:left;\"><tr style=\"text-align:left;\"><td style=\"text-align:left;\"><p><img style=\"float:left;\" src=\"http://localhost/camltasks/tomsom/crm/custom/themes/default/images/company_logo.png\" alt=\"\" /> TOMSOM </p></td></tr><tr style=\"text-align:left;\"><td style=\"font-weight:bold;text-align:left;\"><div>$billing_account_name<br />$billing_account_billing_address_street<br />$billing_account_billing_address_city<br />Cualquier Lugar</div></td></tr><tr style=\"text-align:left;\"><td style=\"text-align:left;\"> </td></tr><tr style=\"text-align:left;\"><td style=\"text-align:left;\"><h1>FACTURA</h1></td></tr></tbody></table><p style=\"font-family:Arial;text-align:center;\"> </p><table style=\"text-align:center;width:100%;border:none;border-spacing:0pt;\"><tbody style=\"text-align:left;\"><tr style=\"text-align:left;\"><td style=\"font-weight:bold;background-color:#b0c4de;padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;vertical-align:top;text-align:left;width:50%;\">Preparado Para</td><td style=\"font-weight:bold;background-color:#b0c4de;padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;vertical-align:top;text-align:left;width:50%;\">Preparado Por</td></tr><tr style=\"text-align:left;\"><td style=\"padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;width:50%;vertical-align:top;text-align:left;\"><div>$aos_invoices_billing_account<br /> $aos_invoices_billing_address_street<br /> $aos_invoices_billing_address_city <br /> $aos_invoices_billing_address_state $aos_invoices_billing_address_postalcode</div></td><td style=\"padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;width:50%;vertical-align:top;text-align:left;\"><div>$aos_invoices_modified_by_name</div></td></tr><tr style=\"text-align:left;\"><td style=\"font-weight:bold;background-color:#b0c4de;padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;vertical-align:top;text-align:left;width:50%;\">Fecha de Facturación<span style=\"background-color:#99cc00;\">$billing_account_name</span></td><td style=\"font-weight:bold;background-color:#b0c4de;padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;vertical-align:top;text-align:left;width:50%;\">F$billing_account_nameecha de vencimiento</td></tr><tr style=\"text-align:left;\"><td style=\"padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;width:50%;vertical-align:top;text-align:left;\"><div>$aos_invoices_date_entered</div></td><td style=\"padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;width:50%;vertical-align:top;text-align:left;\"><div>$aos_invoices_due_date</div></td></tr><tr style=\"text-align:left;\"><td style=\"font-weight:bold;background-color:#b0c4de;padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;vertical-align:top;text-align:left;width:50%;\">Número de Factura</td><td style=\"font-weight:bold;background-color:#b0c4de;padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;vertical-align:top;text-align:left;width:50%;\"> </td></tr><tr style=\"text-align:left;\"><td style=\"padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;width:50%;vertical-align:top;text-align:left;\"><div>$aos_invoices_number</div></td><td style=\"padding:2px 6px;border-style:solid solid solid solid;border-width:0.5px;width:50%;vertical-align:top;text-align:left;\"> </td></tr></tbody></table><p> </p><table style=\"width:100%;border:none;border-spacing:0pt;\"><tbody><tr><td style=\"border-style:solid solid solid solid;background-color:#b0c4de;border-width:0.5px;padding:2px 6px;width:10%;font-weight:bold;text-align:center;\">Cantidad</td><td style=\"border-style:solid solid solid solid;background-color:#b0c4de;border-width:0.5px;padding:2px 6px;width:16%;font-weight:bold;text-align:center;\">Producto</td><td style=\"border-style:solid solid solid solid;background-color:#b0c4de;border-width:0.5px;padding:2px 6px;width:20%;font-weight:bold;text-align:center;\">Descripción</td><td style=\"border-style:solid solid solid solid;background-color:#b0c4de;border-width:0.5px;padding:2px 6px;width:10%;font-weight:bold;text-align:center;\">Lista</td><td style=\"border-style:solid solid solid solid;background-color:#b0c4de;border-width:0.5px;padding:2px 6px;width:11%;font-weight:bold;text-align:center;\">Descuento</td><td style=\"border-style:solid solid solid solid;background-color:#b0c4de;border-width:0.5px;padding:2px 6px;width:10%;font-weight:bold;text-align:center;\">Precio de Venta</td><td style=\"border-style:solid solid solid solid;background-color:#b0c4de;border-width:0.5px;padding:2px 6px;width:14%;font-weight:bold;text-align:center;\">Impuesto</td><td style=\"border-style:solid solid solid solid;background-color:#b0c4de;border-width:0.5px;padding:2px 6px;width:8%;font-weight:bold;text-align:center;\">Total</td></tr><tr><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;text-align:center;\">$aos_products_quotes_product_qty</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_products_quotes_name</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_products_description</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_products_quotes_product_list_price</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_products_quotes_product_discount</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_products_quotes_product_unit_price</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_products_quotes_vat</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_products_quotes_product_total_price</td></tr><tr><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\" colspan=\"3\">$aos_services_quotes_name</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_services_quotes_service_list_price</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_services_quotes_service_discount</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_services_quotes_service_unit_price</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_services_quotes_vat</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$aos_services_quotes_service_total_price</td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;font-weight:bold;text-align:right;\">Total</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$total_amt</td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;font-weight:bold;text-align:right;\">Descuento</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$discount_amount</td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;font-weight:bold;text-align:right;\">Subtotal</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$subtotal_amount</td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;font-weight:bold;text-align:right;\">Impuesto</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$tax_amount</td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;font-weight:bold;text-align:right;\">Envíos</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$shipping_amount</td></tr><tr><td colspan=\"6\"> </td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;font-weight:bold;text-align:right;\">Gran Total</td><td style=\"border-style:solid solid solid solid;border-width:0.5px;padding:2px 6px;\">$total_amount</td></tr></tbody></table>', 0, '1', 1, 'AOS_Quotes', '<p>COTIZACION <span>$billing_account_name</span></p>', '<table style=\"width:100%;border:none;border-spacing:0pt;\"><tbody><tr><td>Página {PAGENO}</td><td style=\"text-align:right;\">{DATE d/m/Y}</td></tr></tbody></table>', 15, 15, 16, 16, 9, 9, 'Letter', 'Portrait');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_pdf_templates_audit`
--

INSERT INTO `aos_pdf_templates_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('c01709c0-a16f-2773-8c56-66639913c0b4', '3dcf0dbd-5cb2-444c-4f3b-666399d98a00', '2024-06-07 23:37:33', '1', 'type', 'enum', 'AOS_Invoices', 'AOS_Quotes', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_products`
--

INSERT INTO `aos_products` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `maincode`, `part_number`, `category`, `type`, `cost`, `cost_usdollar`, `currency_id`, `price`, `price_usdollar`, `url`, `contact_id`, `product_image`, `aos_product_category_id`) VALUES
('134b1ce6-35d7-8a18-0b4e-6722cdb6d1b7', 'CUELLO POLO', '2024-10-31 00:22:44', '2025-08-03 04:22:34', '1', '32baac79-3049-9236-9e53-671bd9180ed4', 'CAMISETAS FABRICADAS EN RID COOL, CUELLO POLO, COLORES NEGRO, BLANCO, AZUL REY ENVIOS CONTRA ENTREGA A NIVEL NACIONAL', 0, '', 'XXXX', '1', NULL, 'Good', 40500.000000, 10.125000, 'acea730d-beec-122c-5f93-664e9d5755da', 55000.000000, 13.750000, NULL, '', NULL, ''),
('14987a97-04a3-9e2f-710e-68a3228a9eb9', 'Honda_CB190R_2020_1000_0001.jpg', '2025-08-18 12:54:18', '2025-08-18 12:54:18', '1', '1', 'otro producto', 0, NULL, 'XXXX', '', NULL, 'nino', NULL, 0.000000, '-99', 10000.000000, 10000.000000, NULL, NULL, 'http://localhost/crmtomsom2/upload/8C252065-64DC-912F-C87C-8766A75D6973_Honda_CB190R_2020_1000_0001.jpg', '3ee674f7-d16e-32ec-9e53-688ee847d065'),
('20979f54-d546-efb8-a2e8-681950aed2c7', 'gabann', '2025-05-05 23:57:52', '2025-05-06 00:04:46', '1', '1', NULL, 0, '', 'XXXX', NULL, NULL, 'Good', NULL, 0.000000, '-99', 50000.000000, 50000.000000, NULL, '', NULL, ''),
('65b0210e-fa8d-95c5-0364-68194e15a532', 'gabann', '2025-05-05 23:48:03', '2025-05-05 23:48:03', '1', '1', '', 0, NULL, 'XXXX', '', NULL, 'Good', NULL, 0.000000, '-99', 50000.000000, 50000.000000, NULL, NULL, 'http://localhost/crmtomsom2/upload/D619BAFC-2EC8-FF13-C887-EF6456B639DD_2022-11-21 11_03_33-Window.png', ''),
('6b1d2034-e5b8-15d6-32ef-67376aa77bd1', 'Imagen fondo', '2024-11-15 15:36:23', '2024-11-15 15:36:23', '1', '1', '', 0, NULL, 'XXXX', '', NULL, 'Good', NULL, 0.000000, '-99', 76378373.000000, 76378373.000000, NULL, NULL, 'http://localhost/crmtomsom2/upload/89D3DD00-853A-8FFA-41A1-0AECEBEE82DA_IMG-20241114-WA0204.jpg', ''),
('7afddafc-3059-dab0-aff1-68a324d2a5c9', 'otro 2', '2025-08-18 13:02:57', '2025-08-18 13:09:01', '1', '1', 'producto', 0, '', 'XXXX', NULL, NULL, 'nino', NULL, 0.000000, '-99', 10000.000000, 10000.000000, NULL, '', 'http://localhost/crmtomsom2/upload/4EC0131C-D369-2F91-427C-6543F8F33958_Honda_CB190R_2020_1000_0001.jpg', '3ee674f7-d16e-32ec-9e53-688ee847d065'),
('7f7a3415-9afc-bdec-caa0-6722c25cc3de', 'DILIAN', '2024-10-30 23:34:41', '2025-08-03 04:23:13', '1', '32baac79-3049-9236-9e53-671bd9180ed4', 'ABRIGO FABRICADO EN PELUCHE FINO GRAN ESPECIAL IMPORTADO FORRADO EN SEDA FRIA POLIESTER DE PUNTADA FINA, COLORES: NEGRO, GRIS, BLANCO, MARFIL, PALO ROSA 🛻ENVIOS CONTRA ENTREGA A NIVEL NACIONAL 		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n', 0, '', 'XXXX', '1', NULL, 'Good', 70380.000000, 17.595000, 'acea730d-beec-122c-5f93-664e9d5755da', 100000.000000, 25.000000, NULL, '', 'http://localhost/camltasks/tomsom/crm/upload/59FE2833-BDBC-F06B-34A0-744DCA32BB55_WhatsApp Image 2024-10-11 at 2.04.27 PM (2).jpeg', ''),
('80e105d9-688e-208a-8bd5-66973fd817f4', 'STOCK - Blusa oversiza', '2024-07-17 03:49:48', '2024-10-29 00:34:31', '32baac79-3049-9236-9e53-671bd9180ed4', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '', 1, NULL, 'XXXX', 'COD-AD-', NULL, 'Good', 0.000000, 0.000000, 'acea730d-beec-122c-5f93-664e9d5755da', 0.000000, 0.000000, NULL, NULL, NULL, ''),
('89dbfe45-7cc2-3e57-cf66-68a321ce83d5', 'nuevo', '2025-08-18 12:50:54', '2025-08-18 12:50:54', '1', '1', 'nuevbo', 0, NULL, 'XXXX', '', NULL, 'nino', NULL, 0.000000, '-99', 20000.000000, 20000.000000, NULL, NULL, NULL, ''),
('8c5e72bc-2b6a-341a-f17a-68a3213c564c', 'Honda_CB190R_2020_1000_0001.jpg', '2025-08-18 12:47:59', '2025-08-18 12:50:02', '1', '1', 'NUEVO ELEMENTO', 0, '', 'XXXX', NULL, NULL, 'nino', NULL, 0.000000, '-99', 10000.000000, 10000.000000, NULL, '', 'http://localhost/crmtomsom2/upload/D8D69A14-1B58-F045-9E2F-523DF4AF4C65_Honda_CB190R_2020_1000_0001.jpg', '3ee674f7-d16e-32ec-9e53-688ee847d065'),
('8ed7ab71-ea71-7ff0-6479-67365bb4808c', 'producto prueba', '2024-11-14 20:20:40', '2024-11-14 20:20:40', '1', '1', '', 0, NULL, 'XXXX', '', NULL, 'Good', NULL, 0.000000, '-99', 3099585.000000, 3099585.000000, NULL, NULL, NULL, ''),
('9fa4ef4c-f384-b31f-8308-67365c93245a', 'product pruebassss', '2024-11-14 20:25:36', '2024-11-14 20:25:36', '1', '1', '', 0, NULL, 'XXXX', '', NULL, 'Good', NULL, 0.000000, '-99', 312412424.000000, 312412424.000000, NULL, NULL, NULL, ''),
('a7faf1c0-804e-2062-2252-664ea4bfb86d', 'Camisa', '2024-05-23 02:04:07', '2024-10-29 00:34:31', '32baac79-3049-9236-9e53-671bd9180ed4', '1', '', 1, NULL, 'XXXX', '', NULL, 'Good', 10000.000000, 2.500000, 'acea730d-beec-122c-5f93-664e9d5755da', 10000.000000, 2.500000, '', '', NULL, ''),
('a9969b2c-0963-bc89-0382-67203ff092ea', 'GATUBOL', '2024-10-29 01:51:45', '2025-08-03 04:22:34', '1', '32baac79-3049-9236-9e53-671bd9180ed4', 'Composicion: 80% algodón 20% poliester Material: Monaco Nacional RF Pat Primo Tonos: Negro - Morado - Blanco - Azul Rey - Rojo - Rosado - Avena - Arena - Verde Militar Estampado: DTF 🛻ENVIOS CONTRA ENTREGA A NIVEL NACIONAL 		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n', 0, '', 'XXXX', '1', NULL, 'Good', 37100.000000, 9.275000, 'acea730d-beec-122c-5f93-664e9d5755da', 55000.000000, 13.750000, NULL, '', 'http://localhost/camltasks/tomsom/crm/upload/699B4AEA-9C15-294C-D5D0-19D602385E03_IMG-20241030-WA0002.jpg', ''),
('b0827319-b02c-7200-78bb-67367f69daf0', 'productos dos nuevo', '2024-11-14 22:54:39', '2024-11-14 22:54:39', '1', '1', '', 0, NULL, 'XXXX', '', NULL, 'Good', NULL, 0.000000, '-99', 21231244.000000, 21231244.000000, NULL, NULL, NULL, ''),
('b2ed9871-013c-c8bf-0f7a-673766cd3d33', 'Dato nuevo', '2024-11-15 15:19:39', '2025-08-03 04:22:34', '1', '1', NULL, 0, '', 'XXXX', NULL, NULL, 'Good', NULL, 0.000000, '-99', 265654.000000, 265654.000000, NULL, '', 'http://localhost/crmtomsom2/upload/CD13DEA3-5AF1-5F16-E42A-4A697C4BF1EA_kovra_logo.png', ''),
('b6423091-a78a-e265-341f-6732600d7ef8', 'CAMISETA EJEMPLO', '2024-11-11 19:53:47', '2024-11-11 19:53:47', '1', '1', 'Datos de prueba', 0, NULL, 'XXXX', '', NULL, 'Good', 0.000000, 0.000000, '-99', 50000.000000, 50000.000000, NULL, NULL, NULL, ''),
('b85bb11a-3182-6ea5-9bae-68a32286a896', 'Honda_CB190R_2020_1000_0001.jpg', '2025-08-18 12:54:37', '2025-08-18 12:54:37', '1', '1', 'otro producto', 0, NULL, 'XXXX', '', NULL, 'nino', NULL, 0.000000, '-99', 10000.000000, 10000.000000, NULL, NULL, 'http://localhost/crmtomsom2/upload/E07D5965-3276-FF80-E7B3-D2783B8A5DA1_Honda_CB190R_2020_1000_0001.jpg', '3ee674f7-d16e-32ec-9e53-688ee847d065'),
('b9c9b54b-a879-7b0d-14fb-67365be8498a', 'product pruebassss', '2024-11-14 20:22:09', '2024-11-14 20:22:09', '1', '1', '', 0, NULL, 'XXXX', '', NULL, 'Good', NULL, 0.000000, '-99', 312412424.000000, 312412424.000000, NULL, NULL, NULL, ''),
('be1208c6-ae0e-df02-0b72-66973882bfcb', 'Blusa oversiza', '2024-07-17 03:20:13', '2024-10-29 00:34:31', '32baac79-3049-9236-9e53-671bd9180ed4', '1', '', 1, NULL, 'XXXX', 'COD-AD-', NULL, 'Good', 0.000000, 0.000000, 'acea730d-beec-122c-5f93-664e9d5755da', 0.000000, 0.000000, NULL, NULL, 'http://localhost/camltasks/tomsom/crm/upload/1B900E30-9AF2-EA89-A6C2-A64B0041CF70_fondo_sfot.jpg', ''),
('cc284ca8-f170-d32c-5adf-68197495d491', 'gabann', '2025-05-06 02:29:27', '2025-05-06 02:29:27', '1', '1', '', 0, NULL, 'XXXX', '', NULL, 'Good', NULL, 0.000000, '-99', 50000.000000, 50000.000000, NULL, NULL, NULL, ''),
('cc4d3a30-dc44-fce2-779a-68a322a3c427', 'Honda_CB190R_2020_1000_0001.jpg', '2025-08-18 12:53:14', '2025-08-18 12:53:14', '1', '1', 'otro producto', 0, NULL, 'XXXX', '', NULL, 'nino', NULL, 0.000000, '-99', 10000.000000, 10000.000000, NULL, NULL, 'http://localhost/crmtomsom2/upload/389FAEAA-99FD-4B82-E65B-D5FCD5F0CB63_Honda_CB190R_2020_1000_0001.jpg', '3ee674f7-d16e-32ec-9e53-688ee847d065'),
('dbbad1c6-bd78-fc43-cf0c-67365a7dfb08', 'prueba producto', '2024-11-14 20:16:36', '2025-08-03 04:23:13', '1', '1', NULL, 0, '', 'XXXX', NULL, NULL, 'Good', NULL, 0.000000, '-99', 150000.000000, 150000.000000, NULL, '', NULL, ''),
('e1458f9c-4bb8-71c4-67af-68a322ecbf50', 'Honda_CB190R_2020_1000_0001.jpg', '2025-08-18 12:53:57', '2025-08-18 12:53:57', '1', '1', 'otro producto', 0, NULL, 'XXXX', '', NULL, 'nino', NULL, 0.000000, '-99', 10000.000000, 10000.000000, NULL, NULL, 'http://localhost/crmtomsom2/upload/19ABDDA0-64AD-F9CF-6866-8E980B117A36_Honda_CB190R_2020_1000_0001.jpg', '3ee674f7-d16e-32ec-9e53-688ee847d065'),
('ebb6b0a9-b864-8a67-31a8-67365c53f515', 'product pruebassss', '2024-11-14 20:23:41', '2024-11-14 20:23:41', '1', '1', '', 0, NULL, 'XXXX', '', NULL, 'Good', NULL, 0.000000, '-99', 312412424.000000, 312412424.000000, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_products_audit`
--

INSERT INTO `aos_products_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('3ad4c43b-cd03-e493-d430-6722c2f0a77e', 'a9969b2c-0963-bc89-0382-67203ff092ea', '2024-10-30 23:33:54', '32baac79-3049-9236-9e53-671bd9180ed4', 'cost', 'currency', '0.000000', '37100', NULL, NULL),
('3bb2c866-64b7-714f-099e-6722c208c969', 'a9969b2c-0963-bc89-0382-67203ff092ea', '2024-10-30 23:33:54', '32baac79-3049-9236-9e53-671bd9180ed4', 'cost_usdollar', 'currency', '0.000000', '9.275', NULL, NULL),
('3bef1b5a-c021-3759-feb3-6722c2804d79', 'a9969b2c-0963-bc89-0382-67203ff092ea', '2024-10-30 23:33:54', '32baac79-3049-9236-9e53-671bd9180ed4', 'price', 'currency', '0.000000', '55000', NULL, NULL),
('3c29ae9e-f4e1-e019-81b1-6722c206d4c6', 'a9969b2c-0963-bc89-0382-67203ff092ea', '2024-10-30 23:33:54', '32baac79-3049-9236-9e53-671bd9180ed4', 'price_usdollar', 'currency', '0.000000', '13.75', NULL, NULL),
('6bba8ca1-702f-d82e-90db-6722d195a0f6', '134b1ce6-35d7-8a18-0b4e-6722cdb6d1b7', '2024-10-31 00:39:26', '32baac79-3049-9236-9e53-671bd9180ed4', 'cost', 'currency', '0.000000', '40500', NULL, NULL),
('6c1530f7-7d76-d359-f178-6722d10f8918', '134b1ce6-35d7-8a18-0b4e-6722cdb6d1b7', '2024-10-31 00:39:26', '32baac79-3049-9236-9e53-671bd9180ed4', 'cost_usdollar', 'currency', '0.000000', '10.125', NULL, NULL),
('6c48283d-ae18-cb73-b34c-6722d184a42e', '134b1ce6-35d7-8a18-0b4e-6722cdb6d1b7', '2024-10-31 00:39:26', '32baac79-3049-9236-9e53-671bd9180ed4', 'price', 'currency', '0.000000', '55000', NULL, NULL),
('6c80032d-2cb4-03f8-b274-6722d1839b65', '134b1ce6-35d7-8a18-0b4e-6722cdb6d1b7', '2024-10-31 00:39:26', '32baac79-3049-9236-9e53-671bd9180ed4', 'price_usdollar', 'currency', '0.000000', '13.75', NULL, NULL),
('6cf5f16a-cfe8-be18-4a5b-6722c3424354', '7f7a3415-9afc-bdec-caa0-6722c25cc3de', '2024-10-30 23:36:51', '32baac79-3049-9236-9e53-671bd9180ed4', 'cost', 'currency', '0.000000', '70380', NULL, NULL),
('6d4b78e1-cade-c3f5-f458-6722c3caa6ae', '7f7a3415-9afc-bdec-caa0-6722c25cc3de', '2024-10-30 23:36:51', '32baac79-3049-9236-9e53-671bd9180ed4', 'cost_usdollar', 'currency', '0.000000', '17.595', NULL, NULL),
('6d8e661d-1340-ca48-884e-6722c3b3bb91', '7f7a3415-9afc-bdec-caa0-6722c25cc3de', '2024-10-30 23:36:51', '32baac79-3049-9236-9e53-671bd9180ed4', 'price', 'currency', '0.000000', '100000', NULL, NULL),
('6dcf8bbc-cef0-4155-ac65-6722c3563065', '7f7a3415-9afc-bdec-caa0-6722c25cc3de', '2024-10-30 23:36:51', '32baac79-3049-9236-9e53-671bd9180ed4', 'price_usdollar', 'currency', '0.000000', '25', NULL, NULL),
('71f2569f-248f-33f8-da6a-6722958c8cda', 'a9969b2c-0963-bc89-0382-67203ff092ea', '2024-10-30 20:23:24', '32baac79-3049-9236-9e53-671bd9180ed4', 'part_number', 'varchar', '', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products_cstm`
--

CREATE TABLE `aos_products_cstm` (
  `id_c` char(36) NOT NULL,
  `tono_c` varchar(255) DEFAULT NULL,
  `talla_c` varchar(255) DEFAULT NULL,
  `cantidad_c` int(255) DEFAULT NULL,
  `estampado_c` varchar(255) DEFAULT NULL,
  `tela_accesorios_c` decimal(26,6) DEFAULT NULL,
  `empaque_c` decimal(26,6) DEFAULT NULL,
  `comision_c` decimal(26,6) DEFAULT NULL,
  `corte_c` decimal(26,6) DEFAULT NULL,
  `confeccion_c` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_products_cstm`
--

INSERT INTO `aos_products_cstm` (`id_c`, `tono_c`, `talla_c`, `cantidad_c`, `estampado_c`, `tela_accesorios_c`, `empaque_c`, `comision_c`, `corte_c`, `confeccion_c`) VALUES
('134b1ce6-35d7-8a18-0b4e-6722cdb6d1b7', 'NEGRO - BLANCO - AZUL REY', 'XS - XXL', 1, 'NO', 110.000000, 1000.000000, 5500.000000, 2500.000000, 6000.000000),
('14987a97-04a3-9e2f-710e-68a3228a9eb9', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('20979f54-d546-efb8-a2e8-681950aed2c7', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('65b0210e-fa8d-95c5-0364-68194e15a532', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('6b1d2034-e5b8-15d6-32ef-67376aa77bd1', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('7afddafc-3059-dab0-aff1-68a324d2a5c9', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('7f7a3415-9afc-bdec-caa0-6722c25cc3de', 'NEGRO - GRIS - ROSADO - BLANCO - MARFIL', 'XS - XXL', 1, 'NO', 180.000000, 1000.000000, 10.000000, 3500.000000, 10000.000000),
('80e105d9-688e-208a-8bd5-66973fd817f4', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('89dbfe45-7cc2-3e57-cf66-68a321ce83d5', 'jdas', 'jdak', NULL, '', NULL, NULL, NULL, NULL, NULL),
('8c5e72bc-2b6a-341a-f17a-68a3213c564c', 'otro', 'M,S,P', NULL, '', NULL, NULL, NULL, NULL, NULL),
('8ed7ab71-ea71-7ff0-6479-67365bb4808c', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('9fa4ef4c-f384-b31f-8308-67365c93245a', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('a9969b2c-0963-bc89-0382-67203ff092ea', 'TODOS', '0 - 3 MESES HASTA XXL', 1, 'SI', 120.000000, 1000.000000, 10.000000, 2500.000000, 5000.000000),
('b0827319-b02c-7200-78bb-67367f69daf0', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('b2ed9871-013c-c8bf-0f7a-673766cd3d33', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('b6423091-a78a-e265-341f-6732600d7ef8', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('b85bb11a-3182-6ea5-9bae-68a32286a896', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('b9c9b54b-a879-7b0d-14fb-67365be8498a', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('be1208c6-ae0e-df02-0b72-66973882bfcb', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('cc284ca8-f170-d32c-5adf-68197495d491', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('cc4d3a30-dc44-fce2-779a-68a322a3c427', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('dbbad1c6-bd78-fc43-cf0c-67365a7dfb08', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('e1458f9c-4bb8-71c4-67af-68a322ecbf50', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
('ebb6b0a9-b864-8a67-31a8-67365c53f515', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products_documents_1_c`
--

CREATE TABLE `aos_products_documents_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_products_documents_1aos_products_ida` varchar(36) DEFAULT NULL,
  `aos_products_documents_1documents_idb` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_products_quotes`
--

INSERT INTO `aos_products_quotes` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `currency_id`, `part_number`, `item_description`, `number`, `product_qty`, `product_cost_price`, `product_cost_price_usdollar`, `product_list_price`, `product_list_price_usdollar`, `product_discount`, `product_discount_usdollar`, `product_discount_amount`, `product_discount_amount_usdollar`, `discount`, `product_unit_price`, `product_unit_price_usdollar`, `vat_amt`, `vat_amt_usdollar`, `product_total_price`, `product_total_price_usdollar`, `vat`, `parent_type`, `parent_id`, `product_id`, `group_id`) VALUES
('13ac7ade-96e2-75e4-d2a4-6736b65b3580', 'CAMISETA EJEMPLO', '2024-11-15 02:48:06', '2024-11-15 02:48:06', NULL, NULL, 'Datos de prueba', 0, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', '1b37aed4-272b-7d42-b1b4-6736b65e8603', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('19d97af9-1451-0cd6-a007-6689feb3d6e8', 'Camisa', '2024-07-07 02:31:38', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', 'Esta camisa debe tener bordado amarillo', 1, '1', 'acea730d-beec-122c-5f93-664e9d5755da', '', 'La necesito con tal estampado', 1, 3.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 30000.000000, 7.500000, '0.0', 'AOS_Quotes', 'cfc4923b-fc4d-3a54-621e-6689fe85eb42', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', 'c994a4dc-b2aa-3a9f-34f7-6689fe281477'),
('20c025ac-3661-107f-860b-673779d65637', 'productos dos nuevo', '2024-11-15 16:39:12', '2024-11-15 16:39:12', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4.0000, 21231244.000000, 21231244.000000, 21231244.000000, 21231244.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 84924976.000000, 84924976.000000, '5.0', 'AOS_Quotes', 'cf7f6a18-2ca5-659b-be18-673779381276', 'b0827319-b02c-7200-78bb-67367f69daf0', NULL),
('28cb210d-5f0f-4e74-18b6-6689fe0d289c', 'Camisa', '2024-07-07 02:31:38', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', '', 1, '1', 'acea730d-beec-122c-5f93-664e9d5755da', '', '', 2, 1.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, '0.0', 'AOS_Quotes', 'cfc4923b-fc4d-3a54-621e-6689fe85eb42', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', 'c994a4dc-b2aa-3a9f-34f7-6689fe281477'),
('32b9df24-81bb-b3fb-0c46-6734025036c9', 'CAMISETA EJEMPLO', '2024-11-13 01:34:53', '2024-11-13 05:04:17', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', 'c765b0c2-66ef-80ca-45d6-673402d9a8a8', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('3a95246e-db47-38eb-3946-6655315683bb', 'Camisa', '2024-05-28 01:21:54', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 1, '1', 'acea730d-beec-122c-5f93-664e9d5755da', NULL, NULL, 1, 1.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, '0.0', 'AOS_Quotes', '92e0f851-c096-4cf2-3244-66553171b166', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', 'ee247ff0-bb38-4658-087f-665531b02b9b'),
('3e146b26-ba24-3169-20e0-669739d80c89', 'Camisa', '2024-07-17 03:25:44', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', 'El producto tiene con etc de cosas', 1, '1', 'acea730d-beec-122c-5f93-664e9d5755da', NULL, NULL, 1, 1.0000, 10000.000000, 2.500000, 15000.000000, 3.750000, 5000.000000, 1.250000, -5000.000000, -1.250000, 'Amount', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, '0.0', 'AOS_Quotes', 'b0a54858-1dc7-b3ec-10b9-66973980a666', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', 'aedc186e-e9f2-c50f-4998-669739385420'),
('4ee457c2-418a-36de-6856-6733fe650a34', 'CAMISETA EJEMPLO', '2024-11-13 01:19:43', '2024-11-13 05:04:17', '1', '1', 'Datos de prueba', 1, '', '-99', NULL, NULL, 1, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 50000.000000, 50000.000000, 2500.000000, 2500.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', 'b6423091-a78a-e265-341f-6732600d7ef8', '37eb12bb-e109-78b3-b59b-6733ff8b0a8b'),
('5300ef2d-603b-c405-ed79-669739472efd', 'Camisa', '2024-07-17 03:25:44', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 1, '1', 'acea730d-beec-122c-5f93-664e9d5755da', NULL, NULL, 2, 1.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, '0.0', 'AOS_Quotes', 'b0a54858-1dc7-b3ec-10b9-66973980a666', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', 'aedc186e-e9f2-c50f-4998-669739385420'),
('582e0e60-52e9-e7dd-0d36-67379d7cbff3', 'productos dos nuevo', '2024-11-15 19:14:13', '2024-11-15 19:14:13', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 14.0000, 21231244.000000, 21231244.000000, 21231244.000000, 21231244.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 297237416.000000, 297237416.000000, '5.0', 'AOS_Quotes', '6b8ea194-6356-c7df-4294-67379dcfcf9b', 'b0827319-b02c-7200-78bb-67367f69daf0', NULL),
('59830dff-1531-dc9a-d4f1-673412392b97', 'CAMISETA EJEMPLO', '2024-11-13 02:42:39', '2024-11-13 05:04:51', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', '271f8b1f-2705-beca-6646-6734120c12f4', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('6adadfab-bafb-6af7-ada5-6737761a7f3f', 'CAMISETA EJEMPLO', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Datos de prueba', 0, NULL, NULL, NULL, NULL, NULL, 0.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '5.0', 'AOS_Quotes', '8db862be-c9e0-a1f7-c411-6737761b9d6c', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('6f1d023e-bdb2-f13d-596b-6734187f3361', 'CAMISETA EJEMPLO', '2024-11-13 03:11:41', '2024-11-13 05:04:51', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', '67e60b7d-97e2-fb6e-bf26-673418e9bf03', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('733128cf-8a8a-28d3-a880-673435ed9cf8', 'CAMISETA EJEMPLO', '2024-11-13 05:11:34', '2024-11-13 05:11:34', NULL, NULL, 'Datos de prueba', 0, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', 'a973c1cc-b358-c5f4-5518-673435ed96a1', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('7b1cb150-d8b1-ce55-6d2a-664eaa08d9e0', 'Camisa', '2024-05-23 02:32:42', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', '', 1, '1', 'acea730d-beec-122c-5f93-664e9d5755da', '', '', 2, 2.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 20000.000000, 5.000000, '0.0', 'AOS_Quotes', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', 'c766169f-44e8-a232-e7a3-664ea55f2c6e'),
('7d4bf6ba-be13-0e48-ca8a-673416b2a4ef', 'CAMISETA EJEMPLO', '2024-11-13 03:01:05', '2024-11-13 05:04:51', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', '97ed798c-45e7-b4e6-2cb7-67341656bfea', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('7d6e539a-d3c6-b787-bee9-673411cde930', 'CAMISETA EJEMPLO', '2024-11-13 02:40:10', '2024-11-13 05:04:51', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', 'badeb9b1-cd8f-ed30-92f2-6734111cf253', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('7e87072c-0ad5-4b5d-d67a-673417f5151e', 'CAMISETA EJEMPLO', '2024-11-13 03:05:34', '2024-11-13 05:04:51', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', '965d29f1-b0c3-e2e6-37c2-673417eb4965', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('816f941a-a561-46bb-7214-673417bdbc6e', 'CAMISETA EJEMPLO', '2024-11-13 03:05:58', '2024-11-13 05:04:51', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', 'a604445e-7bc6-9875-fb30-673417838082', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('8614132b-ad1a-6fe3-b82a-6672180a573f', 'Camisa', '2024-06-18 23:31:20', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', 'ab66fc08-37cf-0829-7c32-667217f7f30c', '', 1, 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'acea730d-beec-122c-5f93-664e9d5755da', '', '', 1, 1.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, '0.0', 'AOS_Quotes', '852f87de-4f03-6f8a-4193-667218b08885', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', '38be9f11-62a5-356c-4b75-667218f7afe3'),
('8c3c61ad-220a-a76d-c184-6734359bfc09', 'CAMISETA EJEMPLO', '2024-11-13 05:11:34', '2024-11-13 05:11:34', NULL, NULL, 'Datos de prueba', 0, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', 'a973c1cc-b358-c5f4-5518-673435ed96a1', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('8d2ec7bb-c2e3-a1b4-03ea-6734012456a7', 'CAMISETA EJEMPLO', '2024-11-13 01:29:53', '2024-11-13 05:04:17', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', 'eeba76e5-5825-a7bc-aaa4-6734019e4211', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('91796688-af8a-6332-5f97-673435661eb4', 'CAMISETA EJEMPLO', '2024-11-13 05:15:12', '2024-11-13 05:15:12', NULL, NULL, 'Datos de prueba', 0, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', '7d4bdc5f-18db-6fec-0b4a-673435ecf869', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('93157604-d6c1-bf82-e698-673418ee39fe', 'CAMISETA EJEMPLO', '2024-11-13 03:11:41', '2024-11-13 05:04:51', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', '67e60b7d-97e2-fb6e-bf26-673418e9bf03', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('9ba341de-a6b4-7365-dd4b-664ea69e2473', 'Camisa', '2024-05-23 02:12:50', '2024-05-23 02:12:50', '1', '1', '', 0, '1', 'acea730d-beec-122c-5f93-664e9d5755da', '', '', 1, 1.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, '0.0', 'AOS_Contracts', 'b6a3e470-92a9-3999-5b1d-664ea6147f46', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', '78132ed3-5a18-4c72-4bdd-664ea6afdd59'),
('9d0fd28d-091c-208c-84db-673400867de8', 'CAMISETA EJEMPLO', '2024-11-13 01:29:05', '2024-11-13 05:04:17', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', '187119cf-8852-accf-7576-6734006eb181', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('b0ddb68f-c186-e9fb-652b-6689ef6dc93f', 'Camisa', '2024-07-07 01:31:17', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', '', 1, '1', 'acea730d-beec-122c-5f93-664e9d5755da', '', '', 1, 1.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, '0.0', 'AOS_Quotes', '9994e02e-a7a6-6fa7-9030-6689ef9ab650', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', '7de7faf4-b012-9125-33b6-6689efd1fba0'),
('b640ce1c-ed99-ef14-015c-6733ff3cd9bc', 'CAMISETA EJEMPLO', '2024-11-13 01:23:33', '2024-11-13 05:04:17', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', '231e8946-5505-e9eb-9fea-6733ffd98ebe', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('b7f26741-2565-f7f0-5484-669745e2a6a7', 'STOCK - Blusa oversiza', '2024-07-17 04:15:52', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', '', 1, '1', 'acea730d-beec-122c-5f93-664e9d5755da', 'COD-AD-', '', 1, 1.0000, 0.000000, 0.000000, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0.0', 'AOS_Quotes', '6d680e95-9c29-441e-f51e-6697451aa84b', '80e105d9-688e-208a-8bd5-66973fd817f4', '95f02b69-718f-4ef0-e9ef-6697458cfce5'),
('bfa6ff87-d234-ba57-bfd0-669745583702', 'Camisa', '2024-07-17 04:15:52', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', '', 1, '1', 'acea730d-beec-122c-5f93-664e9d5755da', '', '', 2, 1.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, '0.0', 'AOS_Quotes', '6d680e95-9c29-441e-f51e-6697451aa84b', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', '95f02b69-718f-4ef0-e9ef-6697458cfce5'),
('cd5912ac-9839-ab5f-a3a1-673779050287', 'productos dos nuevo', '2024-11-15 16:39:12', '2024-11-15 16:39:12', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 5.0000, 21231244.000000, 21231244.000000, 21231244.000000, 21231244.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 106156220.000000, 106156220.000000, '5.0', 'AOS_Quotes', 'cf7f6a18-2ca5-659b-be18-673779381276', 'b0827319-b02c-7200-78bb-67367f69daf0', NULL),
('dc0d712e-9584-043a-a030-673411375c18', 'CAMISETA EJEMPLO', '2024-11-13 02:38:57', '2024-11-13 05:04:51', '1', '1', 'Datos de prueba', 1, NULL, NULL, NULL, NULL, NULL, 1.0000, 50000.000000, 50000.000000, 50000.000000, 50000.000000, NULL, 0.000000, NULL, 0.000000, 'Percentage', 0.000000, 0.000000, 0.000000, 0.000000, 50000.000000, 50000.000000, '5.0', 'AOS_Quotes', '137f7ae7-6c48-d80e-9b1f-673411bfe5e3', 'b6423091-a78a-e265-341f-6732600d7ef8', NULL),
('df71c646-0117-80bb-bb2e-6663979f741a', 'Camisa', '2024-06-07 23:29:49', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 1, '1', 'acea730d-beec-122c-5f93-664e9d5755da', NULL, 'Estampado azul', 1, 1.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, '0.0', 'AOS_Quotes', 'b8c20b19-1bde-51e4-67f9-6663979eec53', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', '8a3f4e32-31c1-3400-5525-6663977044d5'),
('e43bf9a2-cc03-fabd-7c89-664ea554200c', 'Camisa', '2024-05-23 02:11:57', '2024-05-23 02:11:57', '1', '1', '', 0, '1', 'acea730d-beec-122c-5f93-664e9d5755da', '', '', 1, 1.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, '0.0', 'AOS_Invoices', '2a15808d-12aa-0b06-b2b2-664ea542e5c3', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', 'c3069099-c40d-b0f7-6260-664ea5545e52'),
('efdb9d26-c2f0-e52a-5abd-664ea558d949', 'Camisa', '2024-05-23 02:09:16', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 1, '1', 'acea730d-beec-122c-5f93-664e9d5755da', NULL, NULL, 1, 1.0000, 10000.000000, 2.500000, 10000.000000, 2.500000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 10000.000000, 2.500000, 0.000000, 0.000000, 10000.000000, 2.500000, '0.0', 'AOS_Quotes', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', 'c766169f-44e8-a232-e7a3-664ea55f2c6e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_products_quotes_audit`
--

INSERT INTO `aos_products_quotes_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('8a21eed0-ecee-3781-f2e7-6733ff4e8f61', '4ee457c2-418a-36de-6856-6733fe650a34', '2024-11-13 01:21:18', '1', 'vat_amt', 'currency', '0.000000', '2500', NULL, NULL),
('8cb8ae03-e9c8-4ba9-7ddb-6733ff5e10fe', '4ee457c2-418a-36de-6856-6733fe650a34', '2024-11-13 01:21:18', '1', 'vat_amt_usdollar', 'currency', '0.000000', '2500', NULL, NULL),
('8dae8fe5-98de-508c-9a06-6733ffccc2a7', '4ee457c2-418a-36de-6856-6733fe650a34', '2024-11-13 01:21:18', '1', 'product_total_price', 'currency', '0.000000', '50000', NULL, NULL),
('8e41a8e7-dccf-f968-4654-6733fff919be', '4ee457c2-418a-36de-6856-6733fe650a34', '2024-11-13 01:21:18', '1', 'product_total_price_usdollar', 'currency', '0.000000', '50000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT 0,
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_product_categories`
--

INSERT INTO `aos_product_categories` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `is_parent`, `parent_category_id`) VALUES
('144e2883-8ab7-f194-5f5e-688e583bc80c', 'otro dato', '2025-08-02 18:28:18', '2025-08-03 04:22:34', '1', '1', '', 1, '1', 1, ''),
('1fda13a2-2dee-71d7-f85f-688ee80f6f76', 'nuevo', '2025-08-03 04:41:49', '2025-08-03 04:41:49', '1', '1', NULL, 0, '1', 0, '957cd55c-fee0-dd2c-8131-688ee58cb068'),
('3d0af7ae-781e-b133-c349-688ee040d404', 'otro', '2025-08-03 04:05:43', '2025-08-03 04:22:34', '1', '1', '', 1, '1', 1, ''),
('3ee674f7-d16e-32ec-9e53-688ee847d065', 'pantalones', '2025-08-03 04:42:01', '2025-08-03 04:42:01', '1', '1', NULL, 0, '1', 0, '957cd55c-fee0-dd2c-8131-688ee58cb068'),
('5793762b-8c2d-a5e0-edff-67203a445c1e', 'CONJUNTO ', '2024-10-29 01:31:35', '2025-08-03 04:22:34', '1', '32baac79-3049-9236-9e53-671bd9180ed4', '', 1, '32baac79-3049-9236-9e53-671bd9180ed4', 1, ''),
('673d445c-aa46-0426-bfc5-688e586b52c8', 'otro dato', '2025-08-02 18:27:14', '2025-08-03 04:22:34', '1', '1', '', 1, '1', 1, ''),
('691b0307-9e56-857e-a6a2-688ee8da1669', 'pantys', '2025-08-03 04:41:35', '2025-08-03 04:41:35', '1', '1', NULL, 0, '1', 0, '957cd55c-fee0-dd2c-8131-688ee58cb068'),
('6aa86b41-fd82-9cdd-07c1-688e57cd97a0', 'nuevo', '2025-08-02 18:22:32', '2025-08-03 04:22:34', '1', '1', 'elemento', 1, '', 1, ''),
('6aee405b-3b1e-d060-5e2f-688ee1d501a8', 'otro', '2025-08-03 04:12:44', '2025-08-03 04:22:34', '1', '1', '', 1, '1', 0, ''),
('7d88a4ce-9cc6-8f6f-92fb-688e59e2c12d', 'otro dato', '2025-08-02 18:29:29', '2025-08-03 04:22:34', '1', '1', NULL, 1, '1', 1, ''),
('7e23cbb1-2c69-5819-1438-67203fe788fb', 'BUSO', '2024-10-29 01:50:28', '2025-08-03 04:22:34', '1', '32baac79-3049-9236-9e53-671bd9180ed4', NULL, 1, '32baac79-3049-9236-9e53-671bd9180ed4', 1, ''),
('926a1ca5-ce1f-647f-6f81-688ee48a65aa', 'VERANO', '2025-08-03 04:23:58', '2025-08-03 04:23:58', '1', '1', '', 0, '1', 1, ''),
('957cd55c-fee0-dd2c-8131-688ee58cb068', 'OTOÑO', '2025-08-03 04:28:54', '2025-08-03 04:28:54', '1', '1', '', 0, '1', 1, ''),
('9a4e6c66-ee92-26ce-a7f3-688e4935c058', 'Nueva entrada', '2025-08-02 17:21:50', '2025-08-03 04:22:34', '1', '1', NULL, 1, '1', 0, 'ca44da16-f275-a9df-b4fe-6722cd4c9b62'),
('a19bd435-18fb-76d4-fe44-688ee567dc3d', 'otro', '2025-08-03 04:29:12', '2025-08-03 04:29:12', '1', '1', NULL, 0, '1', 0, '957cd55c-fee0-dd2c-8131-688ee58cb068'),
('b2d12421-a929-557a-b1c7-6720347a7abf', 'ABRIGO ', '2024-10-29 01:02:59', '2025-08-03 04:23:13', '1', '32baac79-3049-9236-9e53-671bd9180ed4', NULL, 1, '32baac79-3049-9236-9e53-671bd9180ed4', 1, ''),
('b4494b8e-17f6-b518-da8b-688ee52c794a', 'INVIERNO', '2025-08-03 04:27:48', '2025-08-03 04:27:48', '1', '1', 'Nuevo elemento', 0, '1', 1, ''),
('b66f1e4d-8bc2-a8de-c4f7-688ee4ad6a0e', 'CAMISAS', '2025-08-03 04:24:18', '2025-08-03 04:24:18', '1', '1', NULL, 0, '1', 0, '926a1ca5-ce1f-647f-6f81-688ee48a65aa'),
('bc31aa86-c3d0-8fc9-20c5-688ee1a855ce', 'nuevo', '2025-08-03 04:10:38', '2025-08-03 04:22:34', '1', '1', '', 1, '1', 0, ''),
('bd5a3455-9320-6dae-3a08-688e5bdc4e49', 'otra', '2025-08-02 18:39:23', '2025-08-03 04:22:34', '1', '1', NULL, 1, '1', 0, '7d88a4ce-9cc6-8f6f-92fb-688e59e2c12d'),
('bef85e41-693c-e08c-363d-688ee020df82', 'otro', '2025-08-03 04:05:21', '2025-08-03 04:22:34', '1', '1', '', 1, '1', 1, ''),
('c03910f3-14e7-20b1-73af-688e57cb3261', 'otro', '2025-08-02 18:23:37', '2025-08-03 04:22:34', '1', '1', 'dato', 1, '1', 1, ''),
('c85caea0-9b3f-6cf4-8060-672036bd2bb8', 'CHAQUETA ', '2024-10-29 01:10:43', '2025-08-03 04:23:13', '1', '32baac79-3049-9236-9e53-671bd9180ed4', '', 1, '32baac79-3049-9236-9e53-671bd9180ed4', 1, ''),
('c9ec83a6-88e4-51d0-55d6-688e58c61e48', 'otro dato', '2025-08-02 18:28:56', '2025-08-03 04:22:34', '1', '1', '', 1, '1', 1, ''),
('ca44da16-f275-a9df-b4fe-6722cd4c9b62', 'otra camiseta', '2024-10-31 00:21:56', '2025-08-03 04:22:34', '1', '32baac79-3049-9236-9e53-671bd9180ed4', NULL, 1, '32baac79-3049-9236-9e53-671bd9180ed4', 1, ''),
('cf902e15-dac4-618b-16c9-688ee10ffa96', 'otro', '2025-08-03 04:13:10', '2025-08-03 04:22:34', '1', '1', '', 1, '1', 0, ''),
('d169d98f-6994-63d4-0d21-688e5821cb40', 'otro dato', '2025-08-02 18:28:36', '2025-08-03 04:22:34', '1', '1', '', 1, '1', 1, ''),
('d7027b21-fd00-8257-af32-67203f408edf', 'FALDA ', '2024-10-29 01:50:02', '2025-08-03 04:22:34', '1', '32baac79-3049-9236-9e53-671bd9180ed4', '', 1, '32baac79-3049-9236-9e53-671bd9180ed4', 1, ''),
('d82c889e-0aef-0be5-15eb-688ee51be5aa', 'Pantalones', '2025-08-03 04:28:18', '2025-08-03 04:28:18', '1', '1', NULL, 0, '1', 0, 'b4494b8e-17f6-b518-da8b-688ee52c794a'),
('e7afda93-972f-efa2-c55d-688e5815d683', 'otro dato', '2025-08-02 18:27:51', '2025-08-03 04:22:34', '1', '1', '', 1, '1', 1, ''),
('f09e7065-c3c1-c675-f73c-688e56607e75', 'nueva categoria', '2025-08-02 18:18:13', '2025-08-03 04:22:34', '1', '1', 'otro elemento', 1, '1', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text DEFAULT NULL,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_quotes`
--

INSERT INTO `aos_quotes` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `approval_issue`, `billing_account_id`, `billing_contact_id`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `expiration`, `number`, `opportunity_id`, `template_ddown_c`, `total_amt`, `total_amt_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `discount_amount`, `discount_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `shipping_amount`, `shipping_amount_usdollar`, `shipping_tax`, `shipping_tax_amt`, `shipping_tax_amt_usdollar`, `total_amount`, `total_amount_usdollar`, `currency_id`, `stage`, `term`, `terms_c`, `approval_status`, `invoice_status`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`) VALUES
('137f7ae7-6c48-d80e-9b1f-673411bfe5e3', '5- App', '2024-11-13 02:38:57', '2024-11-13 05:04:51', '1', '1', 'nuevo', 1, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 29, NULL, NULL, 50000.000000, 50000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('15979e41-ed89-f7ad-7c15-6733f764168d', 'Prueba', '2024-11-13 00:49:44', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 12, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('17924e85-cbed-f4f6-66af-6733fd3b9710', 'Prueba', '2024-11-13 01:12:39', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 18, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('187119cf-8852-accf-7576-6734006eb181', 'Prueba', '2024-11-13 01:29:05', '2024-11-13 05:04:17', '1', '1', 'nuevo', 1, NULL, NULL, NULL, NULL, 'calle', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 26, NULL, NULL, NULL, 0.000000, NULL, 0.000000, 0.000000, 0.000000, 2500.000000, 2500.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('18785930-ed63-8e39-889f-6733fa1ad815', 'Prueba', '2024-11-13 01:02:56', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 15, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('1a4f6cfa-5749-e8c8-5e97-6737752051e2', '12- App', '2024-11-15 16:24:22', '2024-11-15 16:27:28', '1', NULL, 'ninguna', 1, NULL, NULL, '5b091ba0-b43e-4f0d-c661-6737754e45f4', NULL, 'dafa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 49, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('1b37aed4-272b-7d42-b1b4-6736b65e8603', '9- App', '2024-11-15 02:48:06', '2024-11-15 03:16:31', '1', '', 'dsafas', 0, '', NULL, '264306db-1c88-a446-bea8-6736b6d8011c', '', 'dafa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 46, '', NULL, 50000.000000, 50000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, '', 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('1ce5515e-165e-557f-ebf8-6733f9b4f06c', 'Prueba', '2024-11-13 00:57:19', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 14, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('1ebcc942-be4d-ebda-d024-664ea56fe1ef', 'MAY-C-1', '2024-05-23 02:09:16', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 1, '1', NULL, 'e433e866-1aca-63c6-6e7e-664e9edbb0c1', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-23', 1, '', NULL, 30000.000000, 7.500000, 30000.000000, 7.500000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0.0', 0.000000, 0.000000, 30000.000000, 7.500000, 'acea730d-beec-122c-5f93-664e9d5755da', 'Closed Accepted', 'Net 15', NULL, 'Approved', 'Invoiced', NULL, 0.000000),
('231e8946-5505-e9eb-9fea-6733ffd98ebe', 'Prueba', '2024-11-13 01:23:33', '2024-11-13 05:04:17', '1', '1', 'nuevo', 1, NULL, NULL, NULL, NULL, 'calle', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 25, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('271f8b1f-2705-beca-6646-6734120c12f4', '5- App', '2024-11-13 02:42:39', '2024-11-13 05:04:51', '1', '1', 'nuevo', 1, NULL, NULL, 'b39dd45d-5142-770c-f364-673412ad2932', NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 31, NULL, NULL, 50000.000000, 50000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('66197914-83d5-d889-e6fc-6733fd2409b7', 'Prueba', '2024-11-13 01:14:43', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 20, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('67e60b7d-97e2-fb6e-bf26-673418e9bf03', '6- App', '2024-11-13 03:11:41', '2024-11-13 05:04:51', '1', '1', 'ninguno', 1, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL, 'f182d4a7-e503-fada-9906-6734185bdb5e', '', 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 43, '', NULL, 100000.000000, 100000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 100000.000000, 100000.000000, '', 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('6b8ea194-6356-c7df-4294-67379dcfcf9b', '14- App', '2024-11-15 19:14:13', '2024-11-15 19:14:13', NULL, NULL, 'dasf', 0, NULL, NULL, '10d921b3-5ecd-4ab7-dc80-67379d52f63b', NULL, '4dasdfas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 58, NULL, NULL, 297237416.000000, 297237416.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 297237416.000000, 297237416.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('6d680e95-9c29-441e-f51e-6697451aa84b', '', '2024-07-17 04:15:52', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 1, '1', '', '85075e93-35e2-b8bc-e5c6-669745e3ad1e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17', 8, NULL, NULL, 10000.000000, 2.500000, 10000.000000, 2.500000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0.0', 0.000000, 0.000000, 10000.000000, 2.500000, 'acea730d-beec-122c-5f93-664e9d5755da', 'On Hold', NULL, NULL, '', 'Not Invoiced', NULL, 0.000000),
('6f8b6ae2-9dec-27bd-5f94-6733f7e0f6be', 'Prueba', '2024-11-13 00:48:11', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 11, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('716218f8-e36b-ea86-9cae-6733fc2225f0', 'Prueba', '2024-11-13 01:10:26', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 17, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('7d4bdc5f-18db-6fec-0b4a-673435ecf869', '8- App', '2024-11-13 05:15:12', '2024-11-13 05:16:36', '1', '', NULL, 0, '', NULL, '7abdc537-b160-aaae-0db0-673435432b90', '', 'vvvdkdnd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 45, '', NULL, 50000.000000, 50000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, '', 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('7f22e546-8d4b-484f-2ba8-6734174fda7f', '1- App', '2024-11-13 03:05:58', '2024-11-13 05:04:51', '1', '1', 'dad', 1, NULL, NULL, '17235a56-9c30-8aba-0fbd-673417bc6151', NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 38, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('823618c2-7d6f-a54a-7a13-673417f1424b', '1- App', '2024-11-13 03:05:34', '2024-11-13 05:04:51', '1', '1', 'dad', 1, NULL, NULL, '103a19aa-9512-c5c4-30ef-673417096116', NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 33, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('852f87de-4f03-6f8a-4193-667218b08885', 'Codigo', '2024-06-18 23:31:20', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', 'ab66fc08-37cf-0829-7c32-667217f7f30c', NULL, 1, 'ab66fc08-37cf-0829-7c32-667217f7f30c', '', 'a2e2e788-5b4e-c94b-8197-667218b4ebbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-19', 4, NULL, NULL, 10000.000000, 2.500000, 10000.000000, 2.500000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0.0', 0.000000, 0.000000, 10000.000000, 2.500000, 'acea730d-beec-122c-5f93-664e9d5755da', 'Confirmed', NULL, NULL, '', 'Not Invoiced', NULL, 0.000000),
('8658f711-4fe1-5a04-5a12-6733fd100a4a', 'Prueba', '2024-11-13 01:15:25', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 22, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('8c862107-c598-27ca-d54a-6733f8c7c4c3', 'Prueba', '2024-11-13 00:54:19', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 13, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('8d156a95-35b5-59d5-b086-6734172af241', '4- App', '2024-11-13 03:05:34', '2024-11-13 05:04:51', '1', '1', 'nuevos datos', 1, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL, '611ec03a-233e-604e-65fe-67341799437b', '', 'cavhahs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 36, '', NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, '', 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('8db862be-c9e0-a1f7-c411-6737761b9d6c', '5- App', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'nuevo', 0, NULL, NULL, '679cec20-eb45-f475-d4fc-6737769707eb', NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 54, NULL, NULL, 50000.000000, 50000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('9084f39a-2284-f2a2-b14e-673417213f03', '3- App', '2024-11-13 03:05:34', '2024-11-13 05:04:51', '1', '1', 'debe ser talla tal con tal estampado', 1, NULL, NULL, '6a232430-6ce1-e3e2-5072-67341720c46a', NULL, 'callejevdvd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 35, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('92e0f851-c096-4cf2-3244-66553171b166', 'Alejandro Maldonado', '2024-05-28 01:21:54', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 1, '1', NULL, '798f6ec5-c861-afc8-f8b7-665517f5d471', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-28', 2, '', NULL, 10000.000000, 2.500000, 10000.000000, 2.500000, 0.000000, 0.000000, 0.000000, 0.000000, 100000.000000, 25.000000, '0.0', 0.000000, 0.000000, 110000.000000, 27.500000, 'acea730d-beec-122c-5f93-664e9d5755da', 'Confirmed', NULL, NULL, 'Approved', 'Not Invoiced', NULL, 0.000000),
('965d29f1-b0c3-e2e6-37c2-673417eb4965', '5- App', '2024-11-13 03:05:34', '2024-11-13 05:04:51', '1', '1', 'nuevo', 1, NULL, NULL, '6750cd67-e976-2ec7-5769-673417ee6718', NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 37, NULL, NULL, 50000.000000, 50000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('97ed798c-45e7-b4e6-2cb7-67341656bfea', '5- App', '2024-11-13 03:01:05', '2024-11-13 05:04:51', '1', '1', 'nuevo', 1, NULL, NULL, '358bc8d4-eac3-7c01-8167-673416efba2e', NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 32, NULL, NULL, 50000.000000, 50000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('9994e02e-a7a6-6fa7-9030-6689ef9ab650', 'Codigo', '2024-07-07 01:31:17', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 1, '1', 'ninguna', '61fad06d-a663-e826-2be1-6663965d3901', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-07', 5, NULL, NULL, 10000.000000, 2.500000, 10000.000000, 2.500000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0.0', 0.000000, 0.000000, 10000.000000, 2.500000, 'acea730d-beec-122c-5f93-664e9d5755da', 'Confirmed', NULL, NULL, 'Approved', 'Not Invoiced', NULL, 0.000000),
('99ecf2c6-5093-f970-fe8a-6736b64bf435', '10- App', '2024-11-15 02:48:06', '2024-11-15 03:04:42', '1', '', 'necesita estampado tatata \r\nlleva tal \r\ncosa\r\ntalla m\r\n', 0, '', NULL, '67b36cbe-a0bd-a583-6ee0-6736b6a0583a', '', 'calle 57 CA ru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 47, '', NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, '', 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('9c25cd35-fb99-9225-1be1-6733fd67332a', 'Prueba', '2024-11-13 01:15:19', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 21, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('9d79030c-5a3b-91a9-73e8-6734177dfbb2', '2- App', '2024-11-13 03:05:58', '2024-11-13 05:04:51', '1', '1', 'ninguno', 1, NULL, NULL, '73758b30-410c-fe27-181c-6734178e22fb', NULL, 'call', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 39, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('9ed82902-c0d8-f10a-9a82-673417ee5a6d', '3- App', '2024-11-13 03:05:58', '2024-11-13 05:04:51', '1', '1', 'debe ser talla tal con tal estampado', 1, NULL, NULL, '72c55774-cb84-60f5-cd19-673417d4f55e', NULL, 'callejevdvd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 40, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('a15b1f68-86d3-00b8-6853-673417145166', '2- App', '2024-11-13 03:05:34', '2024-11-13 05:04:51', '1', '1', 'ninguno', 1, NULL, NULL, '7500d4d9-2a1b-9dc2-6e30-673417ae9bb1', NULL, 'call', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 34, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('a53790eb-63e1-2078-9c80-6737768e7c96', '3- App', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'debe ser talla tal con tal estampado', 0, NULL, NULL, '7dd74d54-33ed-b571-f1a3-673776d19c00', NULL, 'callejevdvd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 52, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('a5e719a1-9fc2-bd41-4cec-673776a89e6d', '4- App', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'nuevos datos', 0, NULL, NULL, '748e5c4b-4bdc-b48b-0bc6-673776dfd4f9', NULL, 'cavhahs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 53, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', 'Prueba', '2024-11-13 01:19:43', '2024-11-13 05:04:17', '1', '1', 'nuevo', 1, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL, '', '', 'calle', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 24, '', NULL, 50000.000000, 50000.000000, 50000.000000, 50000.000000, 0.000000, 0.000000, 2500.000000, 2500.000000, NULL, 0.000000, '0.0', 0.000000, 0.000000, 52500.000000, 52500.000000, '-99', 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('a604445e-7bc6-9875-fb30-673417838082', '5- App', '2024-11-13 03:05:58', '2024-11-13 05:04:51', '1', '1', 'nuevo', 1, NULL, NULL, '7e065d1c-1c3a-0051-c7f2-6734174d5f55', NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 42, NULL, NULL, 50000.000000, 50000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('a973c1cc-b358-c5f4-5518-673435ed96a1', '7- App', '2024-11-13 05:11:34', '2024-11-13 05:11:34', NULL, NULL, NULL, 0, NULL, NULL, '7563be77-e7b5-442e-7e52-67343555854d', NULL, 'calle 57c sur 77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 44, NULL, NULL, 100000.000000, 100000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 100000.000000, 100000.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('ab68cc5f-a7dd-ed15-cf61-673417095dfc', '4- App', '2024-11-13 03:05:58', '2024-11-13 05:04:51', '1', '1', 'nuevos datos', 1, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL, '800621b8-db8d-a632-1a05-6734179baae6', '', 'cavhahs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 41, '', NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, '', 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('ace6390a-2431-c9f1-858c-6733fe9cbb0c', 'Prueba', '2024-11-13 01:18:38', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 23, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('b0a54858-1dc7-b3ec-10b9-66973980a666', '', '2024-07-17 03:25:44', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 1, '1', NULL, 'a2e2e788-5b4e-c94b-8197-667218b4ebbb', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17', 7, '', NULL, 25000.000000, 6.250000, 20000.000000, 5.000000, -5000.000000, -1.250000, 0.000000, 0.000000, 0.000000, 0.000000, '7.5', 0.000000, 0.000000, 20000.000000, 5.000000, 'acea730d-beec-122c-5f93-664e9d5755da', 'Closed Accepted', NULL, NULL, 'Approved', 'Not Invoiced', NULL, 0.000000),
('b8c20b19-1bde-51e4-67f9-6663979eec53', '54', '2024-06-07 23:29:49', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 1, '1', NULL, '61fad06d-a663-e826-2be1-6663965d3901', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08', 3, '', NULL, 10000.000000, 2.500000, 10000.000000, 2.500000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0.0', 0.000000, 0.000000, 10000.000000, 2.500000, 'acea730d-beec-122c-5f93-664e9d5755da', 'Closed Accepted', NULL, NULL, 'Approved', 'Not Invoiced', NULL, 0.000000),
('badeb9b1-cd8f-ed30-92f2-6734111cf253', '5- App', '2024-11-13 02:40:10', '2024-11-13 05:04:51', '1', '1', 'nuevo', 1, NULL, NULL, NULL, NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 30, NULL, NULL, 50000.000000, 50000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('be062611-897c-6424-e34d-673776f7578a', '1- App', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'dad', 0, NULL, NULL, '361fb4aa-09e2-29cd-6a43-6737764bda36', NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 50, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('c256410d-f796-9788-bd45-6737765be40c', '2- App', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'ninguno', 0, NULL, NULL, '98b21136-f308-2242-9254-6737761eb014', NULL, 'call', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 51, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('c284dc4b-adb2-8cc6-6b95-67377634402e', '12- App', '2024-11-15 16:27:44', '2024-11-15 16:27:44', NULL, NULL, 'ninguna', 0, NULL, NULL, '54264daa-9810-c0c6-cd55-673776d51e6b', NULL, 'dafa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 56, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('c3300e15-328b-68b3-856c-6733fbd74479', 'Prueba', '2024-11-13 01:05:05', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 16, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('c765b0c2-66ef-80ca-45d6-673402d9a8a8', 'Prueba', '2024-11-13 01:34:53', '2024-11-13 05:04:17', '1', '1', 'nuevo', 1, NULL, NULL, NULL, NULL, 'calle', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 28, NULL, NULL, 50000.000000, 50000.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('cf67c5ab-416b-c6ce-55e7-673776d47e06', '6- App', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'ninguno', 0, NULL, NULL, 'aac08cef-981d-65de-1cc4-67377681baa7', NULL, 'calle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 55, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('cf7f6a18-2ca5-659b-be18-673779381276', '13- App', '2024-11-15 16:39:12', '2024-11-15 16:39:12', NULL, NULL, 'dasf', 0, NULL, NULL, 'd08cd9f6-ef73-985e-1346-67377978a496', NULL, '465464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 57, NULL, NULL, 42462488.000000, 42462488.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 42462488.000000, 42462488.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('cfb0c8ed-9874-799a-ace3-6733fdfa8ea0', 'Prueba', '2024-11-13 01:14:26', '2024-11-13 05:04:17', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, '123 Calle Ejemplo', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 19, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('cfc4923b-fc4d-3a54-621e-6689fe85eb42', '', '2024-07-07 02:31:38', '2024-10-31 00:42:35', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, 1, '1', '', '550a1dab-8d8c-9257-a723-6689fda3f559', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-07', 6, NULL, NULL, 40000.000000, 10.000000, 40000.000000, 10.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0.0', 0.000000, 0.000000, 40000.000000, 10.000000, 'acea730d-beec-122c-5f93-664e9d5755da', 'On Hold', NULL, NULL, '', 'Not Invoiced', NULL, 0.000000),
('de9d1f88-76d1-b6ce-1373-6732598732ad', '', '2024-11-11 19:24:22', '2024-11-13 05:04:17', '1', '1', NULL, 1, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-11', 9, '', NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, '0.0', NULL, 0.000000, NULL, 0.000000, '-99', 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('df00abda-253a-4b13-23c6-67325a734746', '', '2024-11-11 19:28:01', '2024-11-13 05:04:17', '1', '1', NULL, 1, '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-11', 10, NULL, NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, '0.0', NULL, 0.000000, NULL, 0.000000, '-99', 'Draft', NULL, NULL, '', 'Not Invoiced', NULL, 0.000000),
('eeba76e5-5825-a7bc-aaa4-6734019e4211', 'Prueba', '2024-11-13 01:29:53', '2024-11-13 05:04:17', '1', '1', 'nuevo', 1, NULL, NULL, NULL, NULL, 'calle', 'Ciudad Ejemplo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-13', 27, NULL, NULL, NULL, 0.000000, NULL, 0.000000, 0.000000, 0.000000, 2500.000000, 2500.000000, NULL, 0.000000, NULL, NULL, 0.000000, 50000.000000, 50000.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('eecc5645-d51e-dc2f-13a3-6736be29aab7', '11- App', '2024-11-15 03:24:22', '2024-11-15 03:24:22', NULL, NULL, 'vsvbdvd', 0, NULL, NULL, 'a42345a5-9cca-a6f5-b15d-6736bed474e4', NULL, 'ccqbajdjd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15', 48, NULL, NULL, 0.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, NULL, 0.000000, NULL, 0.000000, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, 'Draft', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_quotes_audit`
--

INSERT INTO `aos_quotes_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('14800e83-a69f-d4db-e4d1-6733ffdda0c1', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', '2024-11-13 01:21:18', '1', 'total_amt', 'currency', '', '50000', NULL, NULL),
('33757fb6-4c4c-a375-70b3-664eaad7985a', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', '2024-05-23 02:32:42', '1', 'total_amt', 'currency', '10000.000000', '30000', NULL, NULL),
('3430c243-b385-351c-1796-664eaa8e135c', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', '2024-05-23 02:32:42', '1', 'total_amt_usdollar', 'currency', '2.500000', '7.5', NULL, NULL),
('34944e0b-3404-9ec4-25b9-664eaa4a0de2', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', '2024-05-23 02:32:42', '1', 'subtotal_amount', 'currency', '10000.000000', '30000', NULL, NULL),
('353a585d-677f-94a3-0252-664eaa34dc95', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', '2024-05-23 02:32:42', '1', 'subtotal_amount_usdollar', 'currency', '2.500000', '7.5', NULL, NULL),
('360cce3d-4fbb-97ef-549b-664eaab1b698', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', '2024-05-23 02:32:42', '1', 'total_amount_usdollar', 'currency', '2.500000', '7.5', NULL, NULL),
('3de80736-2197-a55e-9adc-6733ff890fcd', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', '2024-11-13 01:21:18', '1', 'total_amt_usdollar', 'currency', '0.000000', '50000', NULL, NULL),
('3e8126f5-83e2-d66a-0b48-6734249cad79', 'ab68cc5f-a7dd-ed15-cf61-673417095dfc', '2024-11-13 04:02:45', '1', 'assigned_user_id', 'relate', '', 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL, NULL),
('3f3c4e64-0f78-7c64-5555-6736b97d6229', '99ecf2c6-5093-f970-fe8a-6736b64bf435', '2024-11-15 03:02:32', '1', 'domiciliario_c', 'relate', 'Bodega Area', 'Carolain Fea', NULL, NULL),
('40df770d-d045-b818-a57b-673429092270', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', '2024-11-13 04:21:59', '1', 'domiciliario_c', 'relate', 'Alejandro Maldonado', 'despacho Area', NULL, NULL),
('48950472-befe-f476-7708-6733ff742ac6', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', '2024-11-13 01:21:18', '1', 'subtotal_amount', 'currency', '', '50000', NULL, NULL),
('54c207ae-aba8-9cf2-6487-6733ff673754', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', '2024-11-13 01:21:18', '1', 'subtotal_amount_usdollar', 'currency', '0.000000', '50000', NULL, NULL),
('5aea051e-ca5f-965e-3146-6733ff8ca3f3', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', '2024-11-13 01:21:18', '1', 'tax_amount', 'currency', '', '2500', NULL, NULL),
('5b17a2bc-9239-d17a-5689-665534531280', '92e0f851-c096-4cf2-3244-66553171b166', '2024-05-28 01:32:13', '1', 'stage', 'enum', 'Draft', 'Confirmed', NULL, NULL),
('5e1fe76f-a637-a63a-3b63-6736b691e7fc', '99ecf2c6-5093-f970-fe8a-6736b64bf435', '2024-11-15 02:49:27', '1', 'domiciliario_c', 'relate', '', 'Bodega Area', NULL, NULL),
('5f1e38c4-1ef7-1a0e-35e5-67342820db4c', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', '2024-11-13 04:18:29', '1', 'domiciliario_c', 'relate', '', 'Alejandro Maldonado', NULL, NULL),
('62ab0a09-4f71-5706-fd21-6733ff2f48ef', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', '2024-11-13 01:21:18', '1', 'tax_amount_usdollar', 'currency', '0.000000', '2500', NULL, NULL),
('6e3c0a88-836e-2ff6-63bd-6733ff21f5ac', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', '2024-11-13 01:21:18', '1', 'total_amount_usdollar', 'currency', '0.000000', '52500', NULL, NULL),
('6f26f66a-00f2-a870-daa2-67342482a278', '67e60b7d-97e2-fb6e-bf26-673418e9bf03', '2024-11-13 04:02:45', '1', 'assigned_user_id', 'relate', '', 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL, NULL),
('71fc6d24-d88d-9e6a-b474-67342e4152d4', '67e60b7d-97e2-fb6e-bf26-673418e9bf03', '2024-11-13 04:45:38', '1', 'domiciliario_c', 'relate', '', 'Bodega Area', NULL, NULL),
('79187d62-2bcb-1642-3aa6-673424617b72', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', '2024-11-13 04:02:45', '1', 'assigned_user_id', 'relate', '', 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL, NULL),
('85d20252-c100-7858-d9ba-6733fff5a518', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', '2024-11-13 01:21:18', '1', 'tipo_venta_c', 'enum', '', 'provincia', NULL, NULL),
('94f762d5-b887-190b-adf0-664ea997356a', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', '2024-05-23 02:25:20', '1', 'approval_status', 'enum', '', 'Approved', NULL, NULL),
('9540789e-6b2b-37a6-f01e-673429ac2abc', 'de9d1f88-76d1-b6ce-1373-6732598732ad', '2024-11-13 04:21:59', '1', 'domiciliario_c', 'relate', 'Alejandro Maldonado', 'despacho Area', NULL, NULL),
('9963aef4-3675-e179-d716-67342ecad273', 'ab68cc5f-a7dd-ed15-cf61-673417095dfc', '2024-11-13 04:45:38', '1', 'domiciliario_c', 'relate', '', 'Bodega Area', NULL, NULL),
('a3eaf2c7-af0d-2510-5942-66973d23ff1c', 'b0a54858-1dc7-b3ec-10b9-66973980a666', '2024-07-17 03:42:14', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'stage', 'enum', 'Delivered', 'Closed Accepted', NULL, NULL),
('a49e0d0f-e165-a1a6-ccfb-67342452788d', '8d156a95-35b5-59d5-b086-6734172af241', '2024-11-13 04:02:45', '1', 'assigned_user_id', 'relate', '', 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL, NULL),
('a594d389-ec60-b789-8995-664ea9a634ab', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', '2024-05-23 02:25:52', '1', 'stage', 'enum', 'Confirmed', 'Closed Accepted', NULL, NULL),
('a67c5e05-3c15-202b-2086-664ea95ff053', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', '2024-05-23 02:25:52', '1', 'term', 'enum', '', 'Net 15', NULL, NULL),
('a7110355-50f0-cc85-511e-6736bdfb56fd', '1b37aed4-272b-7d42-b1b4-6736b65e8603', '2024-11-15 03:16:31', '1', 'domiciliario_c', 'relate', '', 'Carolain Fea', NULL, NULL),
('a71324da-c5f0-760b-8424-664ea9183f3f', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', '2024-05-23 02:25:52', '1', 'invoice_status', 'enum', 'Not Invoiced', 'Invoiced', NULL, NULL),
('a9aedae3-f3c7-bbef-b016-67342fbcd443', '67e60b7d-97e2-fb6e-bf26-673418e9bf03', '2024-11-13 04:48:09', '1', 'domiciliario_c', 'relate', 'Bodega Area', 'Contabilidad Area', NULL, NULL),
('ac74bb7f-51e4-9764-7e0b-66973b39cb87', 'b0a54858-1dc7-b3ec-10b9-66973980a666', '2024-07-17 03:34:55', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'stage', 'enum', 'On Hold', 'Delivered', NULL, NULL),
('ad386ca5-bfd4-c6f1-21b1-66973b184c8d', 'b0a54858-1dc7-b3ec-10b9-66973980a666', '2024-07-17 03:34:55', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'approval_status', 'enum', '', 'Approved', NULL, NULL),
('b446d9a3-cf22-cf9e-ec3d-6734288499bf', 'de9d1f88-76d1-b6ce-1373-6732598732ad', '2024-11-13 04:18:29', '1', 'domiciliario_c', 'relate', '', 'Alejandro Maldonado', NULL, NULL),
('beecf57b-d6fe-647b-1166-66639f48b735', 'b8c20b19-1bde-51e4-67f9-6663979eec53', '2024-06-08 00:02:17', '1', 'stage', 'enum', 'Confirmed', 'Closed Accepted', NULL, NULL),
('c4321f82-9354-5c40-4a89-673424b097fa', 'de9d1f88-76d1-b6ce-1373-6732598732ad', '2024-11-13 04:02:45', '1', 'assigned_user_id', 'relate', '1', 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL, NULL),
('ced49c69-3862-4cfc-ec97-67342f41ca71', 'ab68cc5f-a7dd-ed15-cf61-673417095dfc', '2024-11-13 04:47:12', '1', 'domiciliario_c', 'relate', 'Bodega Area', 'Confeccon Area', NULL, NULL),
('d6386c44-0fed-4f57-ae29-67342fb550d0', '8d156a95-35b5-59d5-b086-6734172af241', '2024-11-13 04:47:12', '1', 'domiciliario_c', 'relate', '', 'Confeccon Area', NULL, NULL),
('da9e621c-d43f-1510-0b58-6734367226a0', '7d4bdc5f-18db-6fec-0b4a-673435ecf869', '2024-11-13 05:16:36', '1', 'domiciliario_c', 'relate', '', 'Alejandro Maldonado', NULL, NULL),
('e73f6564-0b4f-0e17-6711-67342f2e8794', 'ab68cc5f-a7dd-ed15-cf61-673417095dfc', '2024-11-13 04:48:09', '1', 'domiciliario_c', 'relate', 'Confeccon Area', 'Contabilidad Area', NULL, NULL),
('f33da814-43ce-7a0e-61f3-67343025d972', '67e60b7d-97e2-fb6e-bf26-673418e9bf03', '2024-11-13 04:54:21', '1', 'domiciliario_c', 'relate', 'Contabilidad Area', 'Confeccon Area', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_cstm`
--

CREATE TABLE `aos_quotes_cstm` (
  `id_c` char(36) NOT NULL,
  `tipo_venta_c` varchar(100) DEFAULT NULL,
  `fecha_entrega_c` date DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `estado_entrega_c` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aos_quotes_cstm`
--

INSERT INTO `aos_quotes_cstm` (`id_c`, `tipo_venta_c`, `fecha_entrega_c`, `user_id_c`, `estado_entrega_c`) VALUES
('1a4f6cfa-5749-e8c8-5e97-6737752051e2', 'interrapidisimo', '2024-11-18', NULL, NULL),
('1b37aed4-272b-7d42-b1b4-6736b65e8603', 'provincia', '2024-11-16', '32baac79-3049-9236-9e53-671bd9180ed4', 'Reprogramar'),
('271f8b1f-2705-beca-6646-6734120c12f4', NULL, '2024-11-15', NULL, NULL),
('67e60b7d-97e2-fb6e-bf26-673418e9bf03', '', '2024-11-14', 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL),
('6b8ea194-6356-c7df-4294-67379dcfcf9b', 'contra_sur', '2024-11-20', NULL, ''),
('6d680e95-9c29-441e-f51e-6697451aa84b', 'provincia', '2024-07-19', NULL, NULL),
('7d4bdc5f-18db-6fec-0b4a-673435ecf869', 'interrapidisimo', '2024-11-15', 'ab66fc08-37cf-0829-7c32-667217f7f30c', NULL),
('7f22e546-8d4b-484f-2ba8-6734174fda7f', NULL, '2024-11-08', NULL, NULL),
('823618c2-7d6f-a54a-7a13-673417f1424b', NULL, '2024-11-08', NULL, NULL),
('852f87de-4f03-6f8a-4193-667218b08885', 'contra_sur', '2024-06-27', NULL, NULL),
('8d156a95-35b5-59d5-b086-6734172af241', '', '2024-11-14', 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', NULL),
('8db862be-c9e0-a1f7-c411-6737761b9d6c', 'provincia', '2024-11-15', NULL, NULL),
('9084f39a-2284-f2a2-b14e-673417213f03', NULL, '2024-11-09', NULL, NULL),
('92e0f851-c096-4cf2-3244-66553171b166', 'provincia', '2024-05-31', NULL, NULL),
('965d29f1-b0c3-e2e6-37c2-673417eb4965', NULL, '2024-11-15', NULL, NULL),
('97ed798c-45e7-b4e6-2cb7-67341656bfea', NULL, '2024-11-15', NULL, NULL),
('9994e02e-a7a6-6fa7-9030-6689ef9ab650', 'interrapidisimo', '2024-07-09', NULL, NULL),
('99ecf2c6-5093-f970-fe8a-6736b64bf435', 'contra_sur', '2024-11-18', '32baac79-3049-9236-9e53-671bd9180ed4', NULL),
('9d79030c-5a3b-91a9-73e8-6734177dfbb2', NULL, '2024-11-07', NULL, NULL),
('9ed82902-c0d8-f10a-9a82-673417ee5a6d', NULL, '2024-11-09', NULL, NULL),
('a15b1f68-86d3-00b8-6853-673417145166', NULL, '2024-11-07', NULL, NULL),
('a53790eb-63e1-2078-9c80-6737768e7c96', 'contra_sur', '2024-11-09', NULL, NULL),
('a5e719a1-9fc2-bd41-4cec-673776a89e6d', 'provincia', '2024-11-14', NULL, NULL),
('a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', 'provincia', '2024-11-14', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL),
('a604445e-7bc6-9875-fb30-673417838082', NULL, '2024-11-15', NULL, NULL),
('a973c1cc-b358-c5f4-5518-673435ed96a1', 'provincia', '2024-11-15', NULL, NULL),
('ab68cc5f-a7dd-ed15-cf61-673417095dfc', '', '2024-11-14', 'e7621a64-99ee-7d49-7c05-6689f788e06b', NULL),
('b0a54858-1dc7-b3ec-10b9-66973980a666', 'provincia', '2024-07-19', NULL, NULL),
('b8c20b19-1bde-51e4-67f9-6663979eec53', 'contra_sur', '2024-06-18', NULL, NULL),
('badeb9b1-cd8f-ed30-92f2-6734111cf253', NULL, '2024-11-15', NULL, NULL),
('be062611-897c-6424-e34d-673776f7578a', 'interrapidisimo', '2024-11-08', NULL, 'Pendiente'),
('c256410d-f796-9788-bd45-6737765be40c', 'provincia', '2024-11-07', NULL, NULL),
('c284dc4b-adb2-8cc6-6b95-67377634402e', 'interrapidisimo', '2024-11-18', NULL, NULL),
('cf67c5ab-416b-c6ce-55e7-673776d47e06', 'provincia', '2024-11-14', NULL, NULL),
('cf7f6a18-2ca5-659b-be18-673779381276', 'interrapidisimo', '2024-11-18', NULL, NULL),
('cfc4923b-fc4d-3a54-621e-6689fe85eb42', 'provincia', '2024-07-09', NULL, NULL),
('de9d1f88-76d1-b6ce-1373-6732598732ad', 'provincia', '2024-11-14', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL),
('df00abda-253a-4b13-23c6-67325a734746', 'provincia', '2024-11-13', NULL, NULL),
('eecc5645-d51e-dc2f-13a3-6736be29aab7', 'contra_sur', '2024-11-19', NULL, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aow_actions`
--

INSERT INTO `aow_actions` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `aow_workflow_id`, `action_order`, `action`, `parameters`) VALUES
('1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Tareaa confeccion', '2024-07-07 01:29:00', '2024-07-07 02:11:55', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 1, 'CreateRecord', 'YTo5OntzOjExOiJyZWNvcmRfdHlwZSI7czo1OiJUYXNrcyI7czoxODoicmVsYXRlX3RvX3dvcmtmbG93IjtzOjE6IjEiO3M6MjA6ImNvcHlfZW1haWxfYWRkcmVzc2VzIjtzOjE6IjAiO3M6NToiZmllbGQiO2E6NDp7aTowO3M6MTg6ImFzc2lnbmVkX3VzZXJfbmFtZSI7aToxO3M6NDoibmFtZSI7aToyO3M6MTE6ImRlc2NyaXB0aW9uIjtpOjM7czo4OiJkYXRlX2R1ZSI7fXM6MTA6InZhbHVlX3R5cGUiO2E6NDp7aTowO3M6NToiVmFsdWUiO2k6MTtzOjU6IkZpZWxkIjtpOjI7czo1OiJWYWx1ZSI7aTozO3M6NToiRmllbGQiO31zOjU6InZhbHVlIjthOjQ6e2k6MDtzOjM2OiI3YTliNTVkOC02NWNkLTgzNDAtOWQ1Zi02Njg5ZjcxMzU0MzEiO2k6MTtzOjY6Im51bWJlciI7aToyO3M6MTA3OiJTZSBoYSBnZW5lcmFkbyB1bmEgbnVldmEgb3JkZW4gZGUgY29tcHJhLCBpbXBvcnRhbnRlIHlhIGxhIHRhcmVhIGEgY29uZmVjY2lvbiBzZSBnZW5lcm8gcG9yIGZhdm9yIHJldmlzYXJsLiI7aTozO3M6MTU6ImZlY2hhX2VudHJlZ2FfYyI7fXM6MzoicmVsIjthOjE6e2k6MDtzOjg6ImFjY291bnRzIjt9czoxNDoicmVsX3ZhbHVlX3R5cGUiO2E6MTp7aTowO3M6NToiRmllbGQiO31zOjk6InJlbF92YWx1ZSI7YToxOntpOjA7czoxNToiYmlsbGluZ19hY2NvdW50Ijt9fQ=='),
('2980fbda-b8c5-feba-21a5-6689f817eb94', 'Tareaa confeccion', '2024-07-07 02:08:28', '2024-07-07 02:08:28', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 1, 'CreateRecord', 'YTo5OntzOjExOiJyZWNvcmRfdHlwZSI7czo1OiJUYXNrcyI7czoxODoicmVsYXRlX3RvX3dvcmtmbG93IjtzOjE6IjEiO3M6MjA6ImNvcHlfZW1haWxfYWRkcmVzc2VzIjtzOjE6IjAiO3M6NToiZmllbGQiO2E6NDp7aTowO3M6MTg6ImFzc2lnbmVkX3VzZXJfbmFtZSI7aToxO3M6NDoibmFtZSI7aToyO3M6MTE6ImRlc2NyaXB0aW9uIjtpOjM7czo4OiJkYXRlX2R1ZSI7fXM6MTA6InZhbHVlX3R5cGUiO2E6NDp7aTowO3M6NToiVmFsdWUiO2k6MTtzOjU6IkZpZWxkIjtpOjI7czo1OiJWYWx1ZSI7aTozO3M6NToiRmllbGQiO31zOjU6InZhbHVlIjthOjQ6e2k6MDtzOjM2OiJjZGQwZjFhNS1mYjMwLTFhMDEtYjk3Ni02Njg5ZWQ4OWI1YmYiO2k6MTtzOjY6Im51bWJlciI7aToyO3M6NDk6IlNlIGhhIGluZ3JzYWRvIHVuYSBudWV2YSBvcmRlbiB2ZXJpZmljYSBlbCBhc3VudG8iO2k6MztzOjE1OiJmZWNoYV9lbnRyZWdhX2MiO31zOjM6InJlbCI7YToxOntpOjA7czo4OiJhY2NvdW50cyI7fXM6MTQ6InJlbF92YWx1ZV90eXBlIjthOjE6e2k6MDtzOjU6IkZpZWxkIjt9czo5OiJyZWxfdmFsdWUiO2E6MTp7aTowO3M6MTU6ImJpbGxpbmdfYWNjb3VudCI7fX0=');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aow_processed`
--

INSERT INTO `aow_processed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `aow_workflow_id`, `parent_id`, `parent_type`, `status`) VALUES
('114419ea-a9e7-28b1-986f-673417016895', '', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'a604445e-7bc6-9875-fb30-673417838082', 'AOS_Quotes', 'Complete'),
('13c3a792-9ffd-3d02-5a71-6733fd8bff2c', '', '2024-11-13 01:14:43', '2024-11-13 01:14:43', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '66197914-83d5-d889-e6fc-6733fd2409b7', 'AOS_Quotes', 'Complete'),
('1828674d-1f57-b762-6877-673417f76de4', '', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'ab68cc5f-a7dd-ed15-cf61-673417095dfc', 'AOS_Quotes', 'Complete'),
('1905ce42-b281-5b48-0a8e-673776e4bf9f', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'c256410d-f796-9788-bd45-6737765be40c', 'AOS_Quotes', 'Complete'),
('1976633c-bfc1-09f5-4f35-6733f91c3ac7', '', '2024-11-13 00:57:19', '2024-11-13 00:57:19', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '1ce5515e-165e-557f-ebf8-6733f9b4f06c', 'AOS_Quotes', 'Complete'),
('1a82a151-3533-0fbf-ee52-673411475b88', '', '2024-11-13 02:38:57', '2024-11-13 02:38:57', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '137f7ae7-6c48-d80e-9b1f-673411bfe5e3', 'AOS_Quotes', 'Complete'),
('1eb7bc65-20ec-2597-5ecf-6736b6d22f9f', '', '2024-11-15 02:48:06', '2024-11-15 02:48:06', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '99ecf2c6-5093-f970-fe8a-6736b64bf435', 'AOS_Quotes', 'Complete'),
('20c8287b-7b4e-3cbe-da04-6733fc84b240', '', '2024-11-13 01:10:26', '2024-11-13 01:10:26', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '716218f8-e36b-ea86-9cae-6733fc2225f0', 'AOS_Quotes', 'Complete'),
('2890bb4a-893c-2c62-3978-6733fd08fdbd', '', '2024-11-13 01:15:25', '2024-11-13 01:15:25', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '8658f711-4fe1-5a04-5a12-6733fd100a4a', 'AOS_Quotes', 'Complete'),
('2a791ad6-2ca9-7433-98b0-6737765f00a2', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'cf67c5ab-416b-c6ce-55e7-673776d47e06', 'AOS_Quotes', 'Running'),
('308af0bf-e46e-4473-0f4a-6734354c8771', '', '2024-11-13 05:15:12', '2024-11-13 05:15:12', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '7d4bdc5f-18db-6fec-0b4a-673435ecf869', 'AOS_Quotes', 'Complete'),
('35e4d7de-ca21-373d-e4ab-6733fd690964', '', '2024-11-13 01:14:43', '2024-11-13 01:14:43', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '66197914-83d5-d889-e6fc-6733fd2409b7', 'AOS_Quotes', 'Complete'),
('38213f87-b1cf-d42b-6d9b-6733fa20d231', '', '2024-11-13 01:02:56', '2024-11-13 01:02:56', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '18785930-ed63-8e39-889f-6733fa1ad815', 'AOS_Quotes', 'Complete'),
('3a0a687a-e50d-cc90-8413-67377639816b', '', '2024-11-15 16:27:44', '2024-11-15 16:27:44', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'c284dc4b-adb2-8cc6-6b95-67377634402e', 'AOS_Quotes', 'Complete'),
('3e7b6538-b74b-7d62-ab29-6733f76f9fe7', '', '2024-11-13 00:48:11', '2024-11-13 00:48:11', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '6f8b6ae2-9dec-27bd-5f94-6733f7e0f6be', 'AOS_Quotes', 'Complete'),
('3fb3d877-4744-cf37-2ae9-6734127e986c', '', '2024-11-13 02:42:39', '2024-11-13 02:42:39', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '271f8b1f-2705-beca-6646-6734120c12f4', 'AOS_Quotes', 'Complete'),
('47228a92-720e-3543-e372-6733f880e9f2', '', '2024-11-13 00:54:19', '2024-11-13 00:54:19', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '8c862107-c598-27ca-d54a-6733f8c7c4c3', 'AOS_Quotes', 'Complete'),
('47cfa5db-df92-bcea-b8de-6737758650ec', '', '2024-11-15 16:24:22', '2024-11-15 16:24:22', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '1a4f6cfa-5749-e8c8-5e97-6737752051e2', 'AOS_Quotes', 'Complete'),
('4a9da714-929c-2874-cb40-6733fdcf97ad', '', '2024-11-13 01:12:39', '2024-11-13 01:12:39', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '17924e85-cbed-f4f6-66af-6733fd3b9710', 'AOS_Quotes', 'Complete'),
('4be19d4e-22d0-0d11-6258-6689fe579911', '', '2024-07-07 02:31:38', '2024-07-07 02:31:38', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'cfc4923b-fc4d-3a54-621e-6689fe85eb42', 'AOS_Quotes', 'Complete'),
('5021827f-08ea-b199-a823-67341137032c', '', '2024-11-13 02:38:57', '2024-11-13 02:38:57', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '137f7ae7-6c48-d80e-9b1f-673411bfe5e3', 'AOS_Quotes', 'Complete'),
('5406863d-8253-1d57-088c-6733fdc6d935', '', '2024-11-13 01:15:19', '2024-11-13 01:15:19', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '9c25cd35-fb99-9225-1be1-6733fd67332a', 'AOS_Quotes', 'Complete'),
('567f3f7f-25f2-1752-a17e-673775a9fa85', '', '2024-11-15 16:24:22', '2024-11-15 16:24:22', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '1a4f6cfa-5749-e8c8-5e97-6737752051e2', 'AOS_Quotes', 'Complete'),
('5ae881c5-9885-ed72-27e8-669745c1a8b1', '', '2024-07-17 04:15:52', '2024-07-17 04:15:52', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '6d680e95-9c29-441e-f51e-6697451aa84b', 'AOS_Quotes', 'Complete'),
('5c1b2f94-5690-df07-40e6-6733fc7c6a7f', '', '2024-11-13 01:10:26', '2024-11-13 01:10:26', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '716218f8-e36b-ea86-9cae-6733fc2225f0', 'AOS_Quotes', 'Complete'),
('5c1b3103-d07f-e6ac-f2f1-673402659ba4', '', '2024-11-13 01:34:53', '2024-11-13 01:34:53', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'c765b0c2-66ef-80ca-45d6-673402d9a8a8', 'AOS_Quotes', 'Complete'),
('5ec205c0-58c3-de6f-1c33-67341710d2e9', '', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '9d79030c-5a3b-91a9-73e8-6734177dfbb2', 'AOS_Quotes', 'Complete'),
('62dbec44-74e3-fbbc-8e1d-6736be342d69', '', '2024-11-15 03:24:22', '2024-11-15 03:24:22', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'eecc5645-d51e-dc2f-13a3-6736be29aab7', 'AOS_Quotes', 'Complete'),
('63f84eb7-a202-a94d-5c45-6733feb51690', '', '2024-11-13 01:18:38', '2024-11-13 01:18:38', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'ace6390a-2431-c9f1-858c-6733fe9cbb0c', 'AOS_Quotes', 'Complete'),
('651fb04f-2a57-9552-d586-67379d4c5c57', '', '2024-11-15 19:14:13', '2024-11-15 19:14:13', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '6b8ea194-6356-c7df-4294-67379dcfcf9b', 'AOS_Quotes', 'Complete'),
('654ad095-9e24-74e2-8079-6733fea17457', '', '2024-11-13 01:19:43', '2024-11-13 01:19:43', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', 'AOS_Quotes', 'Complete'),
('65c92ff7-6d49-a15f-99ff-6689fe2bb326', '', '2024-07-07 02:31:38', '2024-07-07 02:31:38', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'cfc4923b-fc4d-3a54-621e-6689fe85eb42', 'AOS_Quotes', 'Complete'),
('6638054f-6888-6149-9b44-6733fd7268b2', '', '2024-11-13 01:15:25', '2024-11-13 01:15:25', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '8658f711-4fe1-5a04-5a12-6733fd100a4a', 'AOS_Quotes', 'Complete'),
('66ce6859-dcff-9771-7e0c-6733fb327c53', '', '2024-11-13 01:05:05', '2024-11-13 01:05:05', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'c3300e15-328b-68b3-856c-6733fbd74479', 'AOS_Quotes', 'Complete'),
('6ac9cbb1-0a2d-ca1c-f142-6734124b57de', '', '2024-11-13 02:42:39', '2024-11-13 02:42:39', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '271f8b1f-2705-beca-6646-6734120c12f4', 'AOS_Quotes', 'Complete'),
('6b318ecf-ac7c-25f6-2063-6733f8c1cb36', '', '2024-11-13 00:54:19', '2024-11-13 00:54:19', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '8c862107-c598-27ca-d54a-6733f8c7c4c3', 'AOS_Quotes', 'Complete'),
('6dd5e819-9eed-1b2b-18aa-6733fdb86817', '', '2024-11-13 01:14:26', '2024-11-13 01:14:26', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'cfb0c8ed-9874-799a-ace3-6733fdfa8ea0', 'AOS_Quotes', 'Complete'),
('6f27075a-7dd2-9340-9868-673417f77c56', '', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'a15b1f68-86d3-00b8-6853-673417145166', 'AOS_Quotes', 'Complete'),
('733eda2f-3e11-9ea8-eb5e-673259f36870', '', '2024-11-11 19:24:22', '2024-11-11 19:24:22', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'de9d1f88-76d1-b6ce-1373-6732598732ad', 'AOS_Quotes', 'Complete'),
('75241892-a5d0-258d-43eb-6734024b14a3', '', '2024-11-13 01:34:53', '2024-11-13 01:34:53', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'c765b0c2-66ef-80ca-45d6-673402d9a8a8', 'AOS_Quotes', 'Complete'),
('76269270-3137-2ade-3508-6733fbd25c0c', '', '2024-11-13 01:05:05', '2024-11-13 01:05:05', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'c3300e15-328b-68b3-856c-6733fbd74479', 'AOS_Quotes', 'Complete'),
('7ac9099c-16c8-c7b5-895f-6733fd1e98cd', '', '2024-11-13 01:15:19', '2024-11-13 01:15:19', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '9c25cd35-fb99-9225-1be1-6733fd67332a', 'AOS_Quotes', 'Complete'),
('7b33974a-9ff7-4685-9c05-6736b6c1c6f8', '', '2024-11-15 02:48:06', '2024-11-15 02:48:06', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '1b37aed4-272b-7d42-b1b4-6736b65e8603', 'AOS_Quotes', 'Complete'),
('87292fb6-e942-4eb1-eaef-6689efee4846', '', '2024-07-07 01:31:17', '2024-07-07 01:31:17', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '9994e02e-a7a6-6fa7-9030-6689ef9ab650', 'AOS_Quotes', 'Complete'),
('8a705faa-ca79-9d24-b729-67325a6ba875', '', '2024-11-11 19:28:01', '2024-11-11 19:28:01', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'df00abda-253a-4b13-23c6-67325a734746', 'AOS_Quotes', 'Complete'),
('8b0f6ea6-7645-1466-f05a-673418d4e554', '', '2024-11-13 03:11:41', '2024-11-13 03:11:41', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '67e60b7d-97e2-fb6e-bf26-673418e9bf03', 'AOS_Quotes', 'Complete'),
('8f66cbfd-5362-a824-2840-67377928ddec', '', '2024-11-15 16:39:12', '2024-11-15 16:39:12', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'cf7f6a18-2ca5-659b-be18-673779381276', 'AOS_Quotes', 'Complete'),
('92160f25-e917-e5f4-d8a6-67377617ca12', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'be062611-897c-6424-e34d-673776f7578a', 'AOS_Quotes', 'Complete'),
('98b8d437-1707-d797-69b9-6733f7e3e8e7', '', '2024-11-13 00:48:11', '2024-11-13 00:48:11', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '6f8b6ae2-9dec-27bd-5f94-6733f7e0f6be', 'AOS_Quotes', 'Complete'),
('98fd631e-51cb-f469-c476-67340163289f', '', '2024-11-13 01:29:53', '2024-11-13 01:29:53', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'eeba76e5-5825-a7bc-aaa4-6734019e4211', 'AOS_Quotes', 'Complete'),
('99f84de8-e2c5-2572-f096-6733fec3620e', '', '2024-11-13 01:19:43', '2024-11-13 01:19:43', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', 'AOS_Quotes', 'Complete'),
('9b26f52a-2db3-e8f8-b681-67325961a8a2', '', '2024-11-11 19:24:22', '2024-11-11 19:24:22', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'de9d1f88-76d1-b6ce-1373-6732598732ad', 'AOS_Quotes', 'Complete'),
('9e580711-0f05-b4e8-66af-673417b5a18f', '', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '8d156a95-35b5-59d5-b086-6734172af241', 'AOS_Quotes', 'Complete'),
('9f4bc64a-f467-d2b8-9322-673776131baa', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '8db862be-c9e0-a1f7-c411-6737761b9d6c', 'AOS_Quotes', 'Complete'),
('9f7b6c5d-d43a-3f68-735b-6733feaad922', '', '2024-11-13 01:18:38', '2024-11-13 01:18:38', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'ace6390a-2431-c9f1-858c-6733fe9cbb0c', 'AOS_Quotes', 'Complete'),
('9fa1bed1-473c-52f9-8ba1-673417865914', '', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '9084f39a-2284-f2a2-b14e-673417213f03', 'AOS_Quotes', 'Complete'),
('9fab9fa7-0028-910f-2cba-673418be9eeb', '', '2024-11-13 03:11:41', '2024-11-13 03:11:41', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '67e60b7d-97e2-fb6e-bf26-673418e9bf03', 'AOS_Quotes', 'Complete'),
('a0d4a872-fc9d-14c3-39b5-6734357713dc', '', '2024-11-13 05:15:12', '2024-11-13 05:15:12', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '7d4bdc5f-18db-6fec-0b4a-673435ecf869', 'AOS_Quotes', 'Complete'),
('a1302b56-b0c1-d75c-8952-673417231986', '', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '7f22e546-8d4b-484f-2ba8-6734174fda7f', 'AOS_Quotes', 'Complete'),
('a17d1cf3-63c6-c630-c7fd-6737793c277d', '', '2024-11-15 16:39:12', '2024-11-15 16:39:12', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'cf7f6a18-2ca5-659b-be18-673779381276', 'AOS_Quotes', 'Complete'),
('a1c5295f-f6e8-fa6e-41c0-6734170d97e2', '', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '823618c2-7d6f-a54a-7a13-673417f1424b', 'AOS_Quotes', 'Complete'),
('a484adc6-8f2a-6a15-fa06-67379daf0ee7', '', '2024-11-15 19:14:13', '2024-11-15 19:14:13', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '6b8ea194-6356-c7df-4294-67379dcfcf9b', 'AOS_Quotes', 'Complete'),
('a5381c54-5692-ef8c-931d-673417450d8b', '', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '965d29f1-b0c3-e2e6-37c2-673417eb4965', 'AOS_Quotes', 'Complete'),
('a600eda5-0e4a-635d-15e5-67341602fc0f', '', '2024-11-13 03:01:05', '2024-11-13 03:01:05', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '97ed798c-45e7-b4e6-2cb7-67341656bfea', 'AOS_Quotes', 'Complete'),
('aafe0d08-b36e-c74f-7419-673417188fdd', '', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '9ed82902-c0d8-f10a-9a82-673417ee5a6d', 'AOS_Quotes', 'Complete'),
('abaac3be-c001-bd54-e3f5-6736be38f0cb', '', '2024-11-15 03:24:22', '2024-11-15 03:24:22', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'eecc5645-d51e-dc2f-13a3-6736be29aab7', 'AOS_Quotes', 'Complete'),
('ae9769a4-c35d-132b-d635-673417039c3b', '', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '9d79030c-5a3b-91a9-73e8-6734177dfbb2', 'AOS_Quotes', 'Complete'),
('aee38f13-1af6-da6e-c1c6-6733f7983263', '', '2024-11-13 00:49:44', '2024-11-13 00:49:44', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '15979e41-ed89-f7ad-7c15-6733f764168d', 'AOS_Quotes', 'Complete'),
('b03b6e83-0064-1043-ce51-6736b63fa218', '', '2024-11-15 02:48:06', '2024-11-15 02:48:06', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '99ecf2c6-5093-f970-fe8a-6736b64bf435', 'AOS_Quotes', 'Complete'),
('b115a42b-d84e-2d7f-963c-673417c1531f', '', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'a15b1f68-86d3-00b8-6853-673417145166', 'AOS_Quotes', 'Complete'),
('b13c1937-b2da-895b-7701-673417c11409', '', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '9ed82902-c0d8-f10a-9a82-673417ee5a6d', 'AOS_Quotes', 'Complete'),
('b487c5ee-5d70-734c-6a60-673776413ec7', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'a53790eb-63e1-2078-9c80-6737768e7c96', 'AOS_Quotes', 'Complete'),
('b4a3a284-042a-cd1a-2c90-6737762ac4a3', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'a5e719a1-9fc2-bd41-4cec-673776a89e6d', 'AOS_Quotes', 'Complete'),
('b7e878af-8a0a-2a44-556d-6734176848ce', '', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'a604445e-7bc6-9875-fb30-673417838082', 'AOS_Quotes', 'Complete'),
('b9a5c409-40f4-fa53-f088-673417f36812', '', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '7f22e546-8d4b-484f-2ba8-6734174fda7f', 'AOS_Quotes', 'Complete'),
('b9d858f8-a34a-4b58-b377-6734111d9cb5', '', '2024-11-13 02:40:10', '2024-11-13 02:40:10', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'badeb9b1-cd8f-ed30-92f2-6734111cf253', 'AOS_Quotes', 'Complete'),
('ba4b32b0-d76b-895a-9748-6734003ce39b', '', '2024-11-13 01:29:05', '2024-11-13 01:29:05', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '187119cf-8852-accf-7576-6734006eb181', 'AOS_Quotes', 'Complete'),
('bb2f76fe-ab64-4065-658e-6733ff0211ac', '', '2024-11-13 01:23:33', '2024-11-13 01:23:33', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '231e8946-5505-e9eb-9fea-6733ffd98ebe', 'AOS_Quotes', 'Complete'),
('bcc375d9-b712-070e-0ca8-6734179e076f', '', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'ab68cc5f-a7dd-ed15-cf61-673417095dfc', 'AOS_Quotes', 'Complete'),
('bd021158-f7e5-c933-0b3c-6733fa0524bb', '', '2024-11-13 01:02:56', '2024-11-13 01:02:56', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '18785930-ed63-8e39-889f-6733fa1ad815', 'AOS_Quotes', 'Complete'),
('bd0af97c-66d7-549f-df9c-673435d6d330', '', '2024-11-13 05:11:34', '2024-11-13 05:11:34', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'a973c1cc-b358-c5f4-5518-673435ed96a1', 'AOS_Quotes', 'Complete'),
('bf400661-1324-4447-0bb9-673417aa6aaa', '', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '823618c2-7d6f-a54a-7a13-673417f1424b', 'AOS_Quotes', 'Complete'),
('c0581bb8-5513-da82-38a6-6733fd1d14c7', '', '2024-11-13 01:14:26', '2024-11-13 01:14:26', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'cfb0c8ed-9874-799a-ace3-6733fdfa8ea0', 'AOS_Quotes', 'Complete'),
('c0ab4a4e-1742-6814-9fd3-67325a544a62', '', '2024-11-11 19:28:01', '2024-11-11 19:28:01', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'df00abda-253a-4b13-23c6-67325a734746', 'AOS_Quotes', 'Complete'),
('c44f53e4-69c9-e75e-789f-6697459746ba', '', '2024-07-17 04:15:52', '2024-07-17 04:15:52', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '6d680e95-9c29-441e-f51e-6697451aa84b', 'AOS_Quotes', 'Complete'),
('c72d0684-d278-4efe-37a6-673776872dfe', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'a53790eb-63e1-2078-9c80-6737768e7c96', 'AOS_Quotes', 'Complete'),
('c7ce2386-bea9-cc86-e0d7-6733f7f0e80b', '', '2024-11-13 00:49:44', '2024-11-13 00:49:44', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '15979e41-ed89-f7ad-7c15-6733f764168d', 'AOS_Quotes', 'Complete'),
('c7d3443d-a662-cd9d-21f0-6733fde6b915', '', '2024-11-13 01:12:39', '2024-11-13 01:12:39', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '17924e85-cbed-f4f6-66af-6733fd3b9710', 'AOS_Quotes', 'Complete'),
('cab05b73-a344-8d57-f820-673416e702ce', '', '2024-11-13 03:01:05', '2024-11-13 03:01:05', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '97ed798c-45e7-b4e6-2cb7-67341656bfea', 'AOS_Quotes', 'Complete'),
('cdac177b-e785-f90a-bf92-67340147a989', '', '2024-11-13 01:29:53', '2024-11-13 01:29:53', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'eeba76e5-5825-a7bc-aaa4-6734019e4211', 'AOS_Quotes', 'Complete'),
('ceb30481-a3b3-1437-8dff-669739c319a7', '', '2024-07-17 03:25:44', '2024-07-17 03:25:44', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'b0a54858-1dc7-b3ec-10b9-66973980a666', 'AOS_Quotes', 'Complete'),
('cfee9c62-74bb-9a53-a7cb-673776cdd478', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'c256410d-f796-9788-bd45-6737765be40c', 'AOS_Quotes', 'Complete'),
('d47e233c-e4ce-5ace-27a2-6737760868c6', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'be062611-897c-6424-e34d-673776f7578a', 'AOS_Quotes', 'Complete'),
('d833e35d-aaf8-717d-d8a5-6736b6a5c378', '', '2024-11-15 02:48:06', '2024-11-15 02:48:06', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '1b37aed4-272b-7d42-b1b4-6736b65e8603', 'AOS_Quotes', 'Complete'),
('da86bcc4-1714-be0f-bad6-6737769ea2c4', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'cf67c5ab-416b-c6ce-55e7-673776d47e06', 'AOS_Quotes', 'Complete'),
('e0ce6eed-7d7f-3f08-7359-673435932131', '', '2024-11-13 05:11:34', '2024-11-13 05:11:34', NULL, NULL, NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'a973c1cc-b358-c5f4-5518-673435ed96a1', 'AOS_Quotes', 'Complete'),
('e1efb53d-f1dd-8147-515e-6733ff3b4609', '', '2024-11-13 01:23:33', '2024-11-13 01:23:33', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '231e8946-5505-e9eb-9fea-6733ffd98ebe', 'AOS_Quotes', 'Complete'),
('e5dea54c-604d-b7a5-5877-669739aa394b', '', '2024-07-17 03:25:44', '2024-07-17 03:25:44', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'b0a54858-1dc7-b3ec-10b9-66973980a666', 'AOS_Quotes', 'Complete'),
('e745d2ef-2575-436f-3d43-673411aa6383', '', '2024-11-13 02:40:10', '2024-11-13 02:40:10', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', 'badeb9b1-cd8f-ed30-92f2-6734111cf253', 'AOS_Quotes', 'Complete'),
('e8f6f2ad-5a7a-9f31-1b57-6733f90ae1b2', '', '2024-11-13 00:57:19', '2024-11-13 00:57:19', '1', '1', NULL, 0, '25490286-6ce5-b511-83ee-6689f8ba2808', '1ce5515e-165e-557f-ebf8-6733f9b4f06c', 'AOS_Quotes', 'Complete'),
('e96ccd3f-a7e8-f9d6-8751-673776ea2714', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '8db862be-c9e0-a1f7-c411-6737761b9d6c', 'AOS_Quotes', 'Complete'),
('ec168fab-cb73-14a8-9feb-6734172e165b', '', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '9084f39a-2284-f2a2-b14e-673417213f03', 'AOS_Quotes', 'Complete'),
('eee2b17c-156f-d6b6-20a0-6734000d1d9f', '', '2024-11-13 01:29:05', '2024-11-13 01:29:05', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '187119cf-8852-accf-7576-6734006eb181', 'AOS_Quotes', 'Complete'),
('efa6c4ed-85f5-61c1-1d85-673417c34894', '', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '8d156a95-35b5-59d5-b086-6734172af241', 'AOS_Quotes', 'Complete'),
('f1cc712d-dd21-b84d-a542-6734171ae8ab', '', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', '965d29f1-b0c3-e2e6-37c2-673417eb4965', 'AOS_Quotes', 'Complete'),
('f2ba10c6-5b3f-ba8a-75ec-6737761ad2f2', '', '2024-11-15 16:27:44', '2024-11-15 16:27:44', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'c284dc4b-adb2-8cc6-6b95-67377634402e', 'AOS_Quotes', 'Complete'),
('f31c2471-66ab-c624-3244-673776624694', '', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, NULL, 0, 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'a5e719a1-9fc2-bd41-4cec-673776a89e6d', 'AOS_Quotes', 'Complete');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aow_processed_aow_actions`
--

INSERT INTO `aow_processed_aow_actions` (`id`, `aow_processed_id`, `aow_action_id`, `status`, `date_modified`, `deleted`) VALUES
('1143b6e2-db8b-0fe6-393f-6734117ed861', '5021827f-08ea-b199-a823-67341137032c', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 02:38:57', 0),
('13566159-fd09-3059-8798-6733ff314e55', 'e1efb53d-f1dd-8147-515e-6733ff3b4609', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:23:33', 0),
('139e53ea-6f62-954c-4900-6736b617eb45', 'b03b6e83-0064-1043-ce51-6736b63fa218', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 02:48:06', 0),
('1bb60def-a6d9-5138-fc6f-6734178a56d1', 'b13c1937-b2da-895b-7701-673417c11409', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:05:58', 0),
('1db909e8-ca3a-9888-0ece-673435c0db48', 'bd0af97c-66d7-549f-df9c-673435d6d330', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 05:11:34', 0),
('1efc2726-59cb-f3e5-2e53-6737764581ec', 'd47e233c-e4ce-5ace-27a2-6737760868c6', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 16:26:42', 0),
('1f41e846-3f8d-1c51-d908-6734008cb630', 'eee2b17c-156f-d6b6-20a0-6734000d1d9f', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:29:05', 0),
('211a78ee-c088-09ae-373c-67377671f073', 'da86bcc4-1714-be0f-bad6-6737769ea2c4', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 16:26:42', 0),
('2b2f8b16-f1c4-2010-5093-6734354479bd', 'a0d4a872-fc9d-14c3-39b5-6734357713dc', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 05:15:12', 0),
('2b7808a9-6f1f-f59e-9226-6733fad1fb19', 'bd021158-f7e5-c933-0b3c-6733fa0524bb', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:02:56', 0),
('2c0c7f20-9887-c528-1f1f-6733fdda44ed', '13c3a792-9ffd-3d02-5a71-6733fd8bff2c', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:14:43', 0),
('2d7bc3c3-bf3a-32ab-a074-6737767d4b94', 'e96ccd3f-a7e8-f9d6-8751-673776ea2714', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 16:26:42', 0),
('2f3b0064-9d10-06bf-e035-67377634dfe1', 'b487c5ee-5d70-734c-6a60-673776413ec7', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 16:26:42', 0),
('37478280-88b0-5833-da48-673412036e59', '6ac9cbb1-0a2d-ca1c-f142-6734124b57de', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 02:42:39', 0),
('38849867-e668-d20c-e592-673417b3e403', 'ec168fab-cb73-14a8-9feb-6734172e165b', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:05:34', 0),
('39dd35dc-8681-222d-8962-6736b63149a9', 'd833e35d-aaf8-717d-d8a5-6736b6a5c378', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 02:48:06', 0),
('3b5b4551-f2de-9370-220f-6733f9ec6edf', '1976633c-bfc1-09f5-4f35-6733f91c3ac7', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 00:57:19', 0),
('3d425795-2719-c4aa-85b0-6734179c6f0d', 'efa6c4ed-85f5-61c1-1d85-673417c34894', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:05:34', 0),
('3e1acd95-505a-8634-ff5b-67341197ff34', '1a82a151-3533-0fbf-ee52-673411475b88', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 02:38:57', 0),
('3f9fea45-91b7-c4de-ee59-6737758be594', '567f3f7f-25f2-1752-a17e-673775a9fa85', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 16:24:22', 0),
('411de5cd-a43f-dc2d-a2c4-67341735c2b9', 'f1cc712d-dd21-b84d-a542-6734171ae8ab', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:05:34', 0),
('43342603-849a-4122-cf48-6733fd131bda', 'c7d3443d-a662-cd9d-21f0-6733fde6b915', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:12:39', 0),
('434368d5-7e47-c1f3-ecc2-6737761735c4', 'f31c2471-66ab-c624-3244-673776624694', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 16:26:42', 0),
('48cb3631-46d2-a193-4ebb-673417c0ecf8', '5ec205c0-58c3-de6f-1c33-67341710d2e9', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:05:58', 0),
('49002add-e935-a1e7-b67c-6734172b8c2b', '6f27075a-7dd2-9340-9868-673417f77c56', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:05:34', 0),
('4dfb389b-838d-637d-3934-6734353922b6', '308af0bf-e46e-4473-0f4a-6734354c8771', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 05:15:12', 0),
('4f9329a6-6d22-94c5-3184-6734173dc6a3', '114419ea-a9e7-28b1-986f-673417016895', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:05:58', 0),
('504ba0eb-068b-60cc-9f6f-67377649800b', 'c72d0684-d278-4efe-37a6-673776872dfe', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 16:26:42', 0),
('51af63ba-fbaf-350c-688d-6733fc95b506', '20c8287b-7b4e-3cbe-da04-6733fc84b240', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:10:26', 0),
('53f2ae4f-5588-c7a5-36f2-6737764a6769', '1905ce42-b281-5b48-0a8e-673776e4bf9f', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 16:26:42', 0),
('556c9e24-55be-b7b0-b261-673417802cb6', 'aafe0d08-b36e-c74f-7419-673417188fdd', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:05:58', 0),
('561e50ba-71d0-3171-7451-66974599938f', 'c44f53e4-69c9-e75e-789f-6697459746ba', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-07-17 04:15:52', 0),
('566bbaf7-941b-823a-31d4-6689ef1e0243', '87292fb6-e942-4eb1-eaef-6689efee4846', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-07-07 01:31:17', 0),
('56863f23-8926-8cac-eb8c-669739fe2313', 'e5dea54c-604d-b7a5-5877-669739aa394b', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-07-17 03:25:44', 0),
('57990b08-11df-5f27-01b0-6733fd43c995', '2890bb4a-893c-2c62-3978-6733fd08fdbd', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:15:25', 0),
('598baf43-f8f5-b55c-b12c-6733fd25be5f', '35e4d7de-ca21-373d-e4ab-6733fd690964', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:14:43', 0),
('59d436e4-5e5c-db26-c737-67341793cc59', '1828674d-1f57-b762-6877-673417f76de4', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:05:58', 0),
('5e681815-98aa-e089-83cc-67379d0fa617', 'a484adc6-8f2a-6a15-fa06-67379daf0ee7', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 19:14:13', 0),
('5e6e6b86-c552-b7f2-8064-6689fed0188f', '4be19d4e-22d0-0d11-6258-6689fe579911', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-07-07 02:31:38', 0),
('604a80be-9fd7-274f-1caf-673779bd917f', 'a17d1cf3-63c6-c630-c7fd-6737793c277d', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 16:39:12', 0),
('61f6a964-540b-afe4-1151-6733f8386334', '47228a92-720e-3543-e372-6733f880e9f2', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 00:54:19', 0),
('6378d78d-8655-b8bc-a5d0-6733fab3567c', '38213f87-b1cf-d42b-6d9b-6733fa20d231', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:02:56', 0),
('644c5744-d1bd-abd5-4edd-6736b6645784', '1eb7bc65-20ec-2597-5ecf-6736b6d22f9f', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 02:48:06', 0),
('6678b13b-f619-e839-67ad-6733fbde1c61', '66ce6859-dcff-9771-7e0c-6733fb327c53', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:05:05', 0),
('6c5994e7-2a6c-5a0f-f740-673402e917ad', '5c1b3103-d07f-e6ac-f2f1-673402659ba4', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:34:53', 0),
('6efa8156-0d3e-bf6d-a9bf-6733fd54b623', '5406863d-8253-1d57-088c-6733fdc6d935', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:15:19', 0),
('7181fb32-d779-930f-47bf-6733fdbad096', '4a9da714-929c-2874-cb40-6733fdcf97ad', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:12:39', 0),
('7782c330-0e42-9678-8313-669745c398ab', '5ae881c5-9885-ed72-27e8-669745c1a8b1', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-07-17 04:15:52', 0),
('77a0e93b-99f7-591e-c7d4-6737766f4079', 'f2ba10c6-5b3f-ba8a-75ec-6737761ad2f2', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 16:27:44', 0),
('7b032270-53c9-3df1-7390-6734127fb0b7', '3fb3d877-4744-cf37-2ae9-6734127e986c', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 02:42:39', 0),
('7dec18a2-ea11-cd09-7f6a-673775451f2b', '47cfa5db-df92-bcea-b8de-6737758650ec', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 16:24:22', 0),
('806e45a2-f9c2-6d5f-a0db-673418ffa0f2', '9fab9fa7-0028-910f-2cba-673418be9eeb', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:11:41', 0),
('82f4bd3d-aeb3-ade7-41a0-6733fc15e6cf', '5c1b2f94-5690-df07-40e6-6733fc7c6a7f', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:10:26', 0),
('85080e40-4115-7347-3592-673417caa912', 'b7e878af-8a0a-2a44-556d-6734176848ce', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:05:58', 0),
('89102b7e-ea65-dd2c-b2b7-6737794adf1a', '8f66cbfd-5362-a824-2840-67377928ddec', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 16:39:12', 0),
('8c58e442-2abd-b047-986b-6733fd82a8a9', '6638054f-6888-6149-9b44-6733fd7268b2', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:15:25', 0),
('8d4c6055-d0e4-341d-1290-6733f8ef19c7', '6b318ecf-ac7c-25f6-2063-6733f8c1cb36', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 00:54:19', 0),
('8e53a049-0ea2-9843-5133-6733f779a2fe', '3e7b6538-b74b-7d62-ab29-6733f76f9fe7', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 00:48:11', 0),
('903e11bb-c907-929c-499a-6733fe5daee2', '63f84eb7-a202-a94d-5c45-6733feb51690', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:18:38', 0),
('90e98ab7-a9f7-216e-3960-6689fee28224', '65c92ff7-6d49-a15f-99ff-6689fe2bb326', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-07-07 02:31:38', 0),
('910a1fce-2413-3449-c1e9-6733fe6700c3', '654ad095-9e24-74e2-8079-6733fea17457', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:19:43', 0),
('938717fe-8f5d-6da6-d0b2-67325918d4f4', '733eda2f-3e11-9ea8-eb5e-673259f36870', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-11 19:24:22', 0),
('96b6ea23-a3d5-0f5e-e3bb-673417b07a85', 'b9a5c409-40f4-fa53-f088-673417f36812', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:05:58', 0),
('983e1595-62df-8922-d778-67341700f589', 'bf400661-1324-4447-0bb9-673417aa6aaa', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:05:34', 0),
('99822862-b4f5-a389-5512-673416c670ce', 'cab05b73-a344-8d57-f820-673416e702ce', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:01:05', 0),
('99bad4d2-e521-f7ce-5de5-6733fdea2c20', '7ac9099c-16c8-c7b5-895f-6733fd1e98cd', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:15:19', 0),
('9a761489-8880-950a-5f89-6733fb7c0a2e', '76269270-3137-2ade-3508-6733fbd25c0c', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:05:05', 0),
('9c0a69a3-0c5b-ca04-7651-6734022e2dbf', '75241892-a5d0-258d-43eb-6734024b14a3', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:34:53', 0),
('9cb3f7c9-1a8a-e011-7da9-6736be061fb2', '62dbec44-74e3-fbbc-8e1d-6736be342d69', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 03:24:22', 0),
('9d3b732c-d381-ba24-5193-67379d546f89', '651fb04f-2a57-9552-d586-67379d4c5c57', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 19:14:13', 0),
('aeaf25a5-295f-c6df-75c5-6734111c90cc', 'e745d2ef-2575-436f-3d43-673411aa6383', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 02:40:10', 0),
('b516e668-5188-df23-519d-67343590250f', 'e0ce6eed-7d7f-3f08-7359-673435932131', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 05:11:34', 0),
('b5cb8699-4ea1-9088-8c2d-6733fdb205d3', '6dd5e819-9eed-1b2b-18aa-6733fdb86817', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:14:26', 0),
('b7086b6a-08cb-94ab-8272-673259ae3b4b', '9b26f52a-2db3-e8f8-b681-67325961a8a2', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-11 19:24:22', 0),
('b8450864-4555-50ed-e6da-67325a896181', '8a705faa-ca79-9d24-b729-67325a6ba875', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-11 19:28:01', 0),
('b9825624-a6a1-cf0f-33f8-6733fe1e66cf', '99f84de8-e2c5-2572-f096-6733fec3620e', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:19:43', 0),
('bd7aa299-7c92-4705-239a-6733f7fbdaa5', 'aee38f13-1af6-da6e-c1c6-6733f7983263', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 00:49:44', 0),
('c22f43bf-86dd-0945-94fa-673401dd661e', '98fd631e-51cb-f469-c476-67340163289f', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:29:53', 0),
('c5269a85-f2b5-c915-5644-6733f71ab48c', '98b8d437-1707-d797-69b9-6733f7e3e8e7', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 00:48:11', 0),
('c9e55ac7-cd4b-f495-9e99-6733fe343858', '9f7b6c5d-d43a-3f68-735b-6733feaad922', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:18:38', 0),
('ccaefbbc-c2f0-e790-fe46-6736b6634b88', '7b33974a-9ff7-4685-9c05-6736b6c1c6f8', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 02:48:06', 0),
('cd094cb6-0bf6-0a22-9a72-67377622111f', '92160f25-e917-e5f4-d8a6-67377617ca12', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 16:26:42', 0),
('cdf88d92-1d2b-0efa-61b0-6734189c2055', '8b0f6ea6-7645-1466-f05a-673418d4e554', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:11:41', 0),
('d4faf20b-0424-ca8f-7a3f-66973946d45b', 'ceb30481-a3b3-1437-8dff-669739c319a7', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-07-17 03:25:44', 0),
('d85ab352-dec3-3d1e-00d9-6733ffacc28a', 'bb2f76fe-ab64-4065-658e-6733ff0211ac', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:23:33', 0),
('de140f8d-9b6b-3c1a-0b60-67377685703d', '3a0a687a-e50d-cc90-8413-67377639816b', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 16:27:44', 0),
('dec21aa2-01e5-34ba-a83b-6734113d8a4b', 'b9d858f8-a34a-4b58-b377-6734111d9cb5', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 02:40:10', 0),
('dfbc0dec-6106-14d5-38d1-6734177e7d7f', 'bcc375d9-b712-070e-0ca8-6734179e076f', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:05:58', 0),
('e0db1664-0aa3-22c3-5d36-6737767e15c1', '9f4bc64a-f467-d2b8-9322-673776131baa', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 16:26:42', 0),
('e0ff2819-0389-86bc-8491-67325a4829aa', 'c0ab4a4e-1742-6814-9fd3-67325a544a62', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-11 19:28:01', 0),
('e1a907c9-a5aa-0157-7ba7-673417469081', '9fa1bed1-473c-52f9-8ba1-673417865914', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:05:34', 0),
('e1f00f50-980a-9390-8949-673776e71bd9', 'cfee9c62-74bb-9a53-a7cb-673776cdd478', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 16:26:42', 0),
('e3563944-ccd3-847d-02a7-67340043da22', 'ba4b32b0-d76b-895a-9748-6734003ce39b', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 01:29:05', 0),
('e3cf2f9f-13ec-4689-34c2-6734179b8018', 'a1c5295f-f6e8-fa6e-41c0-6734170d97e2', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:05:34', 0),
('e429fb9c-fe40-a18e-14cf-673417b07243', '9e580711-0f05-b4e8-66af-673417b5a18f', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:05:34', 0),
('e6b45af9-a6f4-829d-c1e1-6734178644da', 'a1302b56-b0c1-d75c-8952-673417231986', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:05:58', 0),
('e6ced2d1-f6d3-75a7-1c22-673416286f25', 'a600eda5-0e4a-635d-15e5-67341602fc0f', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 03:01:05', 0),
('e85d7a14-f1c7-fb35-cb6d-6733f7a5618e', 'c7ce2386-bea9-cc86-e0d7-6733f7f0e80b', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 00:49:44', 0),
('e864756a-554a-4cce-9d38-6733fdf775f0', 'c0581bb8-5513-da82-38a6-6733fd1d14c7', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:14:26', 0),
('e8a948d2-1c18-fab3-391e-673417c8e1c1', 'a5381c54-5692-ef8c-931d-673417450d8b', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:05:34', 0),
('e99846d6-9e84-2699-124f-6737762894e2', 'b4a3a284-042a-cd1a-2c90-6737762ac4a3', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-15 16:26:42', 0),
('eb00044d-1e30-f10c-927c-6736be6180c6', 'abaac3be-c001-bd54-e3f5-6736be38f0cb', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-15 03:24:22', 0),
('f0a59081-6ae3-87e1-3b26-6734176bd02b', 'ae9769a4-c35d-132b-d635-673417039c3b', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:05:58', 0),
('f27217d8-e266-9aa5-5879-6734179bdad8', 'b115a42b-d84e-2d7f-963c-673417c1531f', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 03:05:34', 0),
('f3630f20-eeef-b1c8-8352-673401d53d7b', 'cdac177b-e785-f90a-bf92-67340147a989', '1c6904f5-3bd2-d377-9df7-6689efe57cd2', 'Complete', '2024-11-13 01:29:53', 0),
('fc46006c-1d2f-d236-a498-6733f9ae61b6', 'e8f6f2ad-5a7a-9f31-1b57-6733f90ae1b2', '2980fbda-b8c5-feba-21a5-6689f817eb94', 'Complete', '2024-11-13 00:57:19', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT 0,
  `run_on_import` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aow_workflow`
--

INSERT INTO `aow_workflow` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `flow_module`, `flow_run_on`, `status`, `run_when`, `multiple_runs`, `run_on_import`) VALUES
('25490286-6ce5-b511-83ee-6689f8ba2808', 'PASO 1 . Generar tarea a Confeccion', '2024-07-07 02:08:28', '2024-07-07 02:08:28', '1', '1', 'Se crea tarea a confección luego de ingresar la venta', 0, '1', 'AOS_Quotes', 'New_Records', 'Active', 'On_Save', 0, 0),
('b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'PASO 1 . Generar tarea a despacho', '2024-07-07 01:29:00', '2024-07-07 02:11:55', '1', '1', 'Se crea tarea a confección luego de ingresar la venta', 0, '1', 'AOS_Quotes', 'New_Records', 'Active', 'On_Save', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calls`
--

INSERT INTO `calls` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `parent_type`, `status`, `direction`, `parent_id`, `reminder_time`, `email_reminder_time`, `email_reminder_sent`, `outlook_id`, `repeat_type`, `repeat_interval`, `repeat_dow`, `repeat_until`, `repeat_count`, `repeat_parent_id`, `recurring_source`) VALUES
('d44a5cf8-5910-a316-71bb-664ea65662dc', 'Mhda Recordatorio de Renovación de Contrato', '2024-05-23 02:12:50', '2024-05-23 02:12:50', '1', '1', NULL, 0, '1', 0, 30, '2025-05-09 10:00:00', '2025-05-09 10:00:00', 'Accounts', 'Planned', 'Outbound', 'e433e866-1aca-63c6-6e7e-664e9edbb0c1', 60, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT 0,
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT 0,
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `hits` int(11) DEFAULT 0,
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'solicitudes@ingedev94.com'),
('notify', 'fromname', 'Alejo'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.25'),
('MySettings', 'tab', 'YTozMzp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjU6IlNwb3RzIjtpOjEwO3M6OToiQ2FtcGFpZ25zIjtpOjExO3M6NToiQ2FsbHMiO2k6MTI7czo4OiJNZWV0aW5ncyI7aToxMztzOjU6IlRhc2tzIjtpOjE0O3M6NToiTm90ZXMiO2k6MTU7czoxMjoiQU9TX0ludm9pY2VzIjtpOjE2O3M6MTM6IkFPU19Db250cmFjdHMiO2k6MTc7czo1OiJDYXNlcyI7aToxODtzOjk6IlByb3NwZWN0cyI7aToxOTtzOjEzOiJQcm9zcGVjdExpc3RzIjtpOjIwO3M6NzoiUHJvamVjdCI7aToyMTtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtpOjIyO3M6MTY6IkFNX1Rhc2tUZW1wbGF0ZXMiO2k6MjM7czo5OiJGUF9ldmVudHMiO2k6MjQ7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtpOjI1O3M6MTI6IkFPU19Qcm9kdWN0cyI7aToyNjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtpOjI3O3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjI4O3M6MTE6IkFPUl9SZXBvcnRzIjtpOjI5O3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtpOjMwO3M6Mjk6IkFPS19Lbm93bGVkZ2VfQmFzZV9DYXRlZ29yaWVzIjtpOjMxO3M6MTQ6IkVtYWlsVGVtcGxhdGVzIjtpOjMyO3M6NzoiU3VydmV5cyI7fQ=='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'KOVRA'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', ''),
('proxy', 'password', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `lawful_basis`, `date_reviewed`, `lawful_basis_source`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`, `joomla_account_id`, `portal_account_disabled`, `portal_user_type`) VALUES
('1ca93217-f347-5bb5-42e6-664ea763304c', '2024-05-23 02:18:43', '2024-05-23 02:18:41', '1', '1', '', 0, '1', 'Mr.', 'Alejandro', 'Maldonado', '', '', '', 0, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, 'Single');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('1ca93217-f347-5bb5-42e6-664ea763304c', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cron_remove_documents`
--

INSERT INTO `cron_remove_documents` (`id`, `bean_id`, `module`, `date_modified`) VALUES
('13457093-baf1-e9ad-dced-6898fa922b79', '3cfdbf1a-ff0f-8be2-af7e-6898ed5b7569', 'DocumentRevisions', '2025-08-10 22:01:21'),
('17c226cb-95d8-c6a9-5fdd-689583935e69', 'd712c970-5c92-f04e-cead-68955c2b10a2', 'DocumentRevisions', '2025-08-08 06:58:13'),
('1831659c-cee5-4712-a376-6895830676cc', 'c69bd13c-6228-8464-b7da-688efb5e9fb1', 'DocumentRevisions', '2025-08-08 06:58:14'),
('1c3a6b2c-7531-c95f-773a-689591247fee', '42432ed6-fe51-7214-e5b2-6895842bdd5a', 'DocumentRevisions', '2025-08-08 07:55:05'),
('1d789967-74eb-a3e4-fe61-6898fa3c9d1d', '388046fc-58e1-648d-7ebd-6898ed232e6a', 'Documents', '2025-08-10 22:01:21'),
('25b6c9b0-ce9b-90fa-3053-68959124a211', 'b5f97cbc-e760-d19b-3e24-689591b8f7ef', 'Documents', '2025-08-08 07:55:04'),
('26981e1d-69cb-32fd-54bc-689583cd1ccd', 'c5359e81-b7a2-cbc9-dfee-68955ca51962', 'Documents', '2025-08-08 06:58:13'),
('26d0b664-a8ce-d40e-a178-68958316455b', 'bdbf197b-fd6e-8b07-afa6-688efb50a405', 'Documents', '2025-08-08 06:58:14'),
('2ee206ea-77e3-54eb-f603-689583bb24d2', '980a08ad-aacb-aa2d-0891-688ef3d7b538', 'Documents', '2025-08-08 06:58:15'),
('2f05b7a0-47cd-053b-397e-6898faee14eb', '9aba06bd-1fef-2efc-104e-68959138b8e8', 'DocumentRevisions', '2025-08-10 22:01:21'),
('3045917c-96c3-29b9-b87f-689583cd80f9', 'c3d21b1c-252d-cc7c-e5dc-6895414ccb18', 'DocumentRevisions', '2025-08-08 06:58:13'),
('3128e1f5-8e95-2ecc-6e7f-689583f7d579', '511fc413-36bd-696f-3703-688efabc5eaa', 'DocumentRevisions', '2025-08-08 06:58:14'),
('353ab1fa-4a86-a061-ac8d-689591bdc6ed', '639a0faa-0ffd-f99f-b7aa-6895905f134f', 'DocumentRevisions', '2025-08-08 07:55:04'),
('3abcde6e-b47d-5287-e232-68958342415b', 'c0a82794-c333-83cc-2bf3-689541f5d388', 'Documents', '2025-08-08 06:58:13'),
('3c05a7f0-3261-04cd-2747-6898fac83ea7', '964eedac-b1fe-af24-b5ac-689591cf15d8', 'Documents', '2025-08-10 22:01:21'),
('42f0dc84-3fc7-e884-e485-689591da9988', '5e612492-872b-484b-2ad5-6895904db3a5', 'Documents', '2025-08-08 07:55:04'),
('43fe6346-49e0-d2fe-e266-6895834efd87', '49c2d5f7-2eee-26b9-8642-688efafdb5d1', 'Documents', '2025-08-08 06:58:14'),
('44357492-ff6e-f1f4-35e2-689583689784', '43d36092-e9c3-409c-6480-689541315088', 'DocumentRevisions', '2025-08-08 06:58:13'),
('44f0d179-01d7-7a04-ef48-68959116c6aa', '3c9b0dfa-87c6-b34a-6bd4-68958429e1b6', 'Documents', '2025-08-08 07:55:05'),
('45749809-aaa5-6d0d-e776-6898fa00d1f0', '78849aea-9543-4de9-210f-6898f385bf77', 'Documents', '2025-08-10 22:01:20'),
('4d673cf5-ae23-e528-aa52-6895917f0cd0', '66167243-8b22-25cb-a4bb-68958d2942e4', 'DocumentRevisions', '2025-08-08 07:55:04'),
('50e225ac-af68-37f7-4888-6898faccec0d', '4bec15a5-9ed4-4bdc-43d9-689591b02a1b', 'DocumentRevisions', '2025-08-10 22:01:21'),
('53c0e816-654d-107c-3949-6895837a4146', '412cfe20-e09c-8c6f-85f8-6895419f8f24', 'Documents', '2025-08-08 06:58:13'),
('550377a4-c4d0-347d-484a-6898fa402a20', 'e59a73f4-f934-b32b-b3a7-6898f2e0fb64', 'DocumentRevisions', '2025-08-10 22:01:20'),
('58555af7-f29c-1b89-3818-689583bb6beb', '10d66622-5d78-4c72-1084-688efa9989d8', 'DocumentRevisions', '2025-08-08 06:58:14'),
('5d51dd27-7cd3-c168-2a77-689591668784', '62320ced-051a-aec3-b051-68958df4b608', 'Documents', '2025-08-08 07:55:04'),
('5e376d65-a9f2-6c85-a102-6898fa82ee81', '470d7fba-cf6a-a10e-45c7-68959125ea11', 'Documents', '2025-08-10 22:01:21'),
('5f25561b-c11e-9fb6-cb96-6898fa158c1b', 'e0124367-4908-8de4-ca45-6898f28e552f', 'Documents', '2025-08-10 22:01:20'),
('5ffeec68-f4b3-4693-792c-689583528345', '1fc70d88-790e-28ac-4117-68954084db19', 'DocumentRevisions', '2025-08-08 06:58:13'),
('67d67c27-37ef-9800-5fec-6895830d81e7', 'c3c10b13-8523-f2e4-ea6d-688efaca2aba', 'Documents', '2025-08-08 06:58:14'),
('67dbda2a-beed-6f24-3d86-689591f07aac', 'f3a60f35-af59-f42d-005e-68958da3eb61', 'DocumentRevisions', '2025-08-08 07:55:04'),
('6b31fe69-49d7-e4de-1908-68958363d12d', 'f276a7e1-c915-2eef-0fbe-68954037c009', 'Documents', '2025-08-08 06:58:13'),
('6dd30ba3-9cbd-eb08-90fc-6898fa19ed9a', '9cc82ccb-c15a-4b5c-d8b4-6898f2c8085d', 'DocumentRevisions', '2025-08-10 22:01:20'),
('6e6ae9c7-ef10-6fa8-fc01-6898faa24672', '7ed267f6-4669-5bf7-c9af-6898f3ac5f83', 'DocumentRevisions', '2025-08-10 22:01:17'),
('731a53f2-df0e-225b-c823-689583f5060e', 'd190b301-f8eb-4eab-2f69-688ef8867c67', 'DocumentRevisions', '2025-08-08 06:58:14'),
('74ea008d-43c1-af5b-828b-6895917d9107', 'eda73607-dac9-31e6-cf53-68958d33e15d', 'Documents', '2025-08-08 07:55:04'),
('7743099b-ca20-b260-cffd-689583ded214', 'c2befae8-f3c3-768e-dcaa-68954088f912', 'DocumentRevisions', '2025-08-08 06:58:13'),
('78530edf-894c-3331-465b-6898faf7d87d', '944b4446-18e9-2126-857d-6898eddf17d9', 'Documents', '2025-08-10 22:01:21'),
('795ed0c8-c4c4-ba81-4125-6898fae8d81b', '97de0d3a-b912-d6a1-348f-6898f22d2d79', 'Documents', '2025-08-10 22:01:20'),
('7f05ea66-40cf-cd0d-84d9-68958384e64e', 'cd80e8ed-7916-ceaa-ad82-688ef8301cda', 'Documents', '2025-08-08 06:58:14'),
('7f96eb7f-3bfd-ea84-7170-689591b72aa5', 'cb69405f-d13a-011b-3c6e-68958c6a5b0d', 'DocumentRevisions', '2025-08-08 07:55:04'),
('84da4ab5-8bc4-8bc9-40bf-6898fab3f931', 'a354ec8d-3dfa-2b20-ad42-6898f2725626', 'DocumentRevisions', '2025-08-10 22:01:20'),
('851c50ef-b2fd-191c-c38c-689583db28e3', 'bf59c9c9-2dd3-f1b1-8827-6895406c099b', 'Documents', '2025-08-08 06:58:13'),
('8926efe6-f623-7127-3183-6895831398ee', '668e6a1a-f7d7-5246-23e1-688ef819287b', 'DocumentRevisions', '2025-08-08 06:58:14'),
('8f532c44-8c81-a250-09fc-6895918049a0', 'c7c0043a-6362-8e30-08fa-68958c03398a', 'Documents', '2025-08-08 07:55:04'),
('8fcfae81-6c6d-36ed-83c7-6898fad05e2a', '9e7a8c2b-5d8a-1e45-c905-6898f2a6dadd', 'Documents', '2025-08-10 22:01:20'),
('927d9db0-a261-9525-dafa-68958349ad0a', '3e564ce9-18db-3cba-867f-689540a53efb', 'DocumentRevisions', '2025-08-08 06:58:13'),
('9753172e-0340-f818-28dc-689583c28857', '628a39de-7a21-1202-e57d-688ef86679ac', 'Documents', '2025-08-08 06:58:14'),
('98c6860d-7671-3e4c-5909-6898fbbc08ac', '3e57c094-4aae-56fe-4d83-6898fb5fb901', 'DocumentRevisions', '2025-08-10 22:06:05'),
('9bf35d05-5b1a-3cf8-fd5f-689591000c7f', '9eae9ccc-40a7-1c4a-4817-68958ba88e0a', 'DocumentRevisions', '2025-08-08 07:55:04'),
('9f84004b-bb9e-75cc-36d6-6898fafef212', 'cf252856-255b-4835-c220-6898f12d33cf', 'DocumentRevisions', '2025-08-10 22:01:20'),
('9fe60b6b-9fa2-cc93-2677-6895911637dd', '3b43ef44-6955-959a-2c2e-689587b6b4bc', 'Documents', '2025-08-08 07:55:05'),
('a1c1b8b8-b900-176e-8d3c-6895838e2b4c', '3996bb6e-b440-8be5-79cd-68954061793f', 'Documents', '2025-08-08 06:58:13'),
('a318d302-103a-e2db-0e1c-689583efdeb7', '786fd10a-a004-1897-cbd5-688ef8da2fd9', 'DocumentRevisions', '2025-08-08 06:58:14'),
('ace7abbc-692a-f739-ad30-6898fa77e716', 'cb731390-2568-a0e7-ecc1-6898f152b83a', 'Documents', '2025-08-10 22:01:20'),
('ad3c7c6c-96c8-0f6b-708b-6895837fb0e8', 'c0bbd9ff-46e5-f22e-0158-689540d15d23', 'DocumentRevisions', '2025-08-08 06:58:13'),
('b03b52a6-a111-2658-e580-6898fb111979', '3a2ef239-6c9c-9531-248a-6898fbfa0f1e', 'Documents', '2025-08-10 22:06:06'),
('b26d09a5-8a6c-47c9-152a-68958380ad10', '1c0b2bbb-6fb5-cbe0-08b4-688efb051aa8', 'Documents', '2025-08-08 06:58:14'),
('b48601a6-552f-dde6-fa74-6895834e27b5', '6fad0f50-fa3b-8982-83d9-689577dff74e', 'Documents', '2025-08-08 06:58:13'),
('bba55ce1-f611-f18f-266a-6898fa155897', 'b4989e2c-e99f-7225-aa69-6898f1f3fdc6', 'DocumentRevisions', '2025-08-10 22:01:20'),
('bf46eeb3-ccc6-87b1-f536-689591e9f610', '9a76387d-f61d-439c-f8ab-68958b01e2a2', 'Documents', '2025-08-08 07:55:04'),
('bf9b981a-ae12-8bab-3d84-68958341a2fe', '741ebca8-f17a-7427-32fb-688ef89c9b36', 'Documents', '2025-08-08 06:58:14'),
('c1b23b65-4769-40b2-017e-689583ba78c8', 'bce851cf-2864-5d1f-2c04-689540e8399d', 'Documents', '2025-08-08 06:58:13'),
('c1f824e4-ed00-c645-3aa8-6898fb014628', 'a791c80e-33b7-8a52-24b7-6898fad7fe90', 'DocumentRevisions', '2025-08-10 22:06:06'),
('c468dca8-574e-b54b-4b39-689583a1a521', 'e88f8509-3910-f16e-4771-689583646e92', 'DocumentRevisions', '2025-08-08 06:58:11'),
('c755fc45-3a82-4a28-380c-6898fa2fb4fb', 'b0437b91-0d75-61cf-c407-6898f1542304', 'Documents', '2025-08-10 22:01:20'),
('c9da7a5a-4292-c348-d6f8-689583e77816', 'd48b7eba-8d71-3b5d-78d2-688ef71b2205', 'DocumentRevisions', '2025-08-08 06:58:14'),
('ccb911d5-edcb-5582-a16f-6898fbc4e492', 'a367fdd1-184e-74f4-72d8-6898fa92db50', 'Documents', '2025-08-10 22:06:06'),
('cec81388-56c2-e671-8f06-6895838b15af', 'beed7596-c5cd-eba4-dc59-68953e54fb29', 'DocumentRevisions', '2025-08-08 06:58:13'),
('ced51c1e-59ad-a687-858a-689591c37c3c', 'd1030320-534c-13de-6236-6895881f1aa5', 'DocumentRevisions', '2025-08-08 07:55:04'),
('d84ff884-dfeb-6281-10d9-6898fa79c3ec', 'ed31ba3c-7445-e9ca-ce7d-6898ef5e7382', 'DocumentRevisions', '2025-08-10 22:01:20'),
('d9a0d800-80c6-4707-8a50-6895836efa17', 'd12c7105-ddc3-5163-b94e-688ef7410cdd', 'Documents', '2025-08-08 06:58:14'),
('de96eb33-fe2f-bece-d968-68958348c28e', 'd8cd8c46-5d1b-e3fe-1103-6895831a8d56', 'Documents', '2025-08-08 06:58:12'),
('e01539e2-adb4-18bd-b9b6-68959190dadb', '7c0f0aeb-788d-9d52-aea5-689588fec19c', 'Documents', '2025-08-08 07:55:04'),
('e1e22758-40a5-63ac-a76a-6895838e274a', '87a7f7cb-9e1a-4704-50b9-68953e852f79', 'Documents', '2025-08-08 06:58:13'),
('e1fbde40-bfed-de2d-e76c-6898fa01a180', 'e93fa460-db56-beda-63d4-6898efe8b481', 'Documents', '2025-08-10 22:01:20'),
('e36baf93-8036-5f17-a6cb-689591d585da', 'bc50eb29-2b38-3838-43dd-689591378d8f', 'DocumentRevisions', '2025-08-08 07:55:02'),
('e763864a-b002-71d5-7285-689583e68c05', 'c75d753e-9211-a697-9273-688ef3a7263c', 'DocumentRevisions', '2025-08-08 06:58:14'),
('ec1ada4c-15b7-cf51-75ad-6895910813f9', '42ed4aa5-7fb7-17fe-691f-689587c9f5b7', 'DocumentRevisions', '2025-08-08 07:55:04'),
('eeda7b3e-1290-c4f5-6bce-689583a756fc', 'bcfc05de-193e-ff7e-0153-689577deedc4', 'DocumentRevisions', '2025-08-08 06:58:12'),
('f1690b0d-c751-5935-adae-689583d60a44', '1f9ae80b-9f17-b5fc-3203-688efba468d1', 'DocumentRevisions', '2025-08-08 06:58:13'),
('f1b30dc6-5292-1d56-d6e6-6898fa51f3be', '988dfcc6-1cae-b1f5-49d2-6898ed8c6b63', 'DocumentRevisions', '2025-08-10 22:01:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT 0,
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `iso4217`, `conversion_rate`, `status`, `deleted`, `date_entered`, `date_modified`, `created_by`) VALUES
('acea730d-beec-122c-5f93-664e9d5755da', 'COP', '$', '', 4000, 'Active', 0, '2024-05-23 01:34:27', '2024-05-23 01:34:27', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT 0,
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT 0,
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documents`
--

INSERT INTO `documents` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `document_name`, `doc_id`, `doc_type`, `doc_url`, `active_date`, `exp_date`, `category_id`, `subcategory_id`, `status_id`, `document_revision_id`, `related_doc_id`, `related_doc_rev_id`, `is_template`, `template_type`) VALUES
('1c0b2bbb-6fb5-cbe0-08b4-688efb051aa8', '2025-08-03 06:04:39', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-03', NULL, '', '', 'Active', '1f9ae80b-9f17-b5fc-3203-688efba468d1', '', NULL, 0, ''),
('3378ef1b-540d-08bb-6d0c-6898fb41f4c2', '2025-08-10 20:07:22', '2025-08-10 20:07:22', '1', '1', '', 0, '1', '10_08_25_10_07_13_Frame 350.png', '', 'Sugar', '', '2025-08-10', NULL, '957cd55c-fee0-dd2c-8131-688ee58cb068', NULL, 'Active', '3662851e-9ed4-3d7a-f53f-6898fb709669', NULL, NULL, 0, 'banner'),
('388046fc-58e1-648d-7ebd-6898ed232e6a', '2025-08-10 19:04:57', '2025-08-10 20:01:14', '1', '1', '', 1, '1', '7dd37713-8089-4084-891c-47c03f63eba2.png', '', 'Sugar', '', '2025-08-10', NULL, '', '', 'Active', '3cfdbf1a-ff0f-8be2-af7e-6898ed5b7569', '', NULL, 0, 'banner'),
('3996bb6e-b440-8be5-79cd-68954061793f', '2025-08-08 00:10:22', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', '3e564ce9-18db-3cba-867f-689540a53efb', '', NULL, 0, ''),
('3a2ef239-6c9c-9531-248a-6898fbfa0f1e', '2025-08-10 20:03:22', '2025-08-10 20:06:03', '1', '1', '', 1, '1', '10_08_25_10_03_13_Frame 350.png', '', 'Sugar', '', '2025-08-10', NULL, '957cd55c-fee0-dd2c-8131-688ee58cb068', NULL, 'Active', '3e57c094-4aae-56fe-4d83-6898fb5fb901', NULL, NULL, 0, 'banner'),
('3b43ef44-6955-959a-2c2e-689587b6b4bc', '2025-08-08 05:14:57', '2025-08-08 05:54:59', '1', '1', '', 1, '1', '08_08_25_07_14_51_R.jpg', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', '42ed4aa5-7fb7-17fe-691f-689587c9f5b7', '', NULL, 0, 'banner'),
('3c9b0dfa-87c6-b34a-6bd4-68958429e1b6', '2025-08-08 04:59:24', '2025-08-08 05:54:59', '1', '1', '', 1, '1', '08_08_25_06_59_18_banner.webp', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', '42432ed6-fe51-7214-e5b2-6895842bdd5a', '', NULL, 0, 'banner'),
('412cfe20-e09c-8c6f-85f8-6895419f8f24', '2025-08-08 00:14:36', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', '43d36092-e9c3-409c-6480-689541315088', '', NULL, 0, ''),
('470d7fba-cf6a-a10e-45c7-68959125ea11', '2025-08-08 05:55:50', '2025-08-10 20:01:14', '1', '1', '', 1, '1', '08_08_25_07_55_41_plantilla-banner-semana-moda-banner-promocion-moda_122059-223.avif', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', '4bec15a5-9ed4-4bdc-43d9-689591b02a1b', '', NULL, 0, 'eula'),
('49c2d5f7-2eee-26b9-8642-688efafdb5d1', '2025-08-03 05:58:54', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-03', NULL, '', '', 'Active', '511fc413-36bd-696f-3703-688efabc5eaa', '', NULL, 0, ''),
('5e612492-872b-484b-2ad5-6895904db3a5', '2025-08-08 05:53:09', '2025-08-08 05:54:59', '1', '1', '', 1, '1', '08_08_25_07_37_16_R.jpg', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', '639a0faa-0ffd-f99f-b7aa-6895905f134f', '', NULL, 0, 'banner'),
('62320ced-051a-aec3-b051-68958df4b608', '2025-08-08 05:37:43', '2025-08-08 05:54:59', '1', '1', '', 1, '1', '08_08_25_07_37_16_R.jpg', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', '66167243-8b22-25cb-a4bb-68958d2942e4', '', NULL, 0, 'banner'),
('628a39de-7a21-1202-e57d-688ef86679ac', '2025-08-03 05:50:40', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-03', NULL, '', '', 'Active', '668e6a1a-f7d7-5246-23e1-688ef819287b', '', NULL, 0, ''),
('6fad0f50-fa3b-8982-83d9-689577dff74e', '2025-08-08 04:04:03', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', 'bcfc05de-193e-ff7e-0153-689577deedc4', '', NULL, 0, ''),
('741ebca8-f17a-7427-32fb-688ef89c9b36', '2025-08-03 05:49:37', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-03', NULL, '', '', 'Active', '786fd10a-a004-1897-cbd5-688ef8da2fd9', '', NULL, 0, ''),
('77f16065-f941-c378-8162-6898fb775824', '2025-08-10 20:06:45', '2025-08-10 20:06:45', '1', '1', '', 0, '1', '10_08_25_10_06_38_4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', '', 'Sugar', '', '2025-08-10', NULL, '', NULL, 'Active', '7cd5b10d-2044-c14a-12f2-6898fbd88703', NULL, NULL, 0, 'banner'),
('78849aea-9543-4de9-210f-6898f385bf77', '2025-08-10 19:31:40', '2025-08-10 20:01:14', '1', '1', '', 1, '1', '10_08_25_09_21_43_e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '', 'Sugar', '', '2025-08-10', NULL, 'Sales', '', 'Active', '7ed267f6-4669-5bf7-c9af-6898f3ac5f83', '', NULL, 0, 'banner'),
('7c0f0aeb-788d-9d52-aea5-689588fec19c', '2025-08-08 05:16:52', '2025-08-08 05:54:59', '1', '1', '', 1, '1', '08_08_25_07_16_44_youtube-cover-and-banner-design-template-vector.jpg', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', 'd1030320-534c-13de-6236-6895881f1aa5', '', NULL, 0, 'banner'),
('87a7f7cb-9e1a-4704-50b9-68953e852f79', '2025-08-08 00:01:33', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', 'beed7596-c5cd-eba4-dc59-68953e54fb29', '', NULL, 0, ''),
('944b4446-18e9-2126-857d-6898eddf17d9', '2025-08-10 19:07:22', '2025-08-10 20:01:14', '1', '1', '', 1, '1', '10_08_25_09_07_18_4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', '', 'Sugar', '', '2025-08-10', NULL, '', '', 'Active', '988dfcc6-1cae-b1f5-49d2-6898ed8c6b63', '', NULL, 0, ''),
('964eedac-b1fe-af24-b5ac-689591cf15d8', '2025-08-08 05:57:37', '2025-08-10 20:01:14', '1', '1', '', 1, '1', '08_08_25_07_56_48_plantilla-banner-semana-moda-banner-promocion-moda_122059-223.avif', '', 'Sugar', '', '2025-08-08', NULL, 'Sales', '', 'Active', '9aba06bd-1fef-2efc-104e-68959138b8e8', '', NULL, 0, 'banner'),
('97de0d3a-b912-d6a1-348f-6898f22d2d79', '2025-08-10 19:27:02', '2025-08-10 20:01:14', '1', '1', '', 1, '1', '10_08_25_09_21_43_e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '', 'Sugar', '', '2025-08-10', NULL, 'Sales', '', 'Active', '9cc82ccb-c15a-4b5c-d8b4-6898f2c8085d', '', NULL, 0, 'banner'),
('980a08ad-aacb-aa2d-0891-688ef3d7b538', '2025-08-03 05:27:20', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-03', NULL, '', '', 'Active', 'c75d753e-9211-a697-9273-688ef3a7263c', '', NULL, 0, 'banner'),
('9a76387d-f61d-439c-f8ab-68958b01e2a2', '2025-08-08 05:31:16', '2025-08-08 05:54:59', '1', '1', '', 1, '1', '08_08_25_07_31_11_plantilla-banner-semana-moda-banner-promocion-moda_122059-223.avif', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', '9eae9ccc-40a7-1c4a-4817-68958ba88e0a', '', NULL, 0, 'banner'),
('9e7a8c2b-5d8a-1e45-c905-6898f2a6dadd', '2025-08-10 19:25:49', '2025-08-10 20:01:14', '1', '1', '', 1, '1', '10_08_25_09_21_43_e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '', 'Sugar', '', '2025-08-10', NULL, 'Sales', '', 'Active', 'a354ec8d-3dfa-2b20-ad42-6898f2725626', '', NULL, 0, 'banner'),
('a367fdd1-184e-74f4-72d8-6898fa92db50', '2025-08-10 20:02:17', '2025-08-10 20:06:03', '1', '1', '', 1, '1', '10_08_25_10_02_09_4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', '', 'Sugar', '', '2025-08-10', NULL, '', NULL, 'Active', 'a791c80e-33b7-8a52-24b7-6898fad7fe90', NULL, NULL, 0, 'banner'),
('b0437b91-0d75-61cf-c407-6898f1542304', '2025-08-10 19:21:53', '2025-08-10 20:01:14', '1', '1', '', 1, '1', '10_08_25_09_21_43_e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '', 'Sugar', '', '2025-08-10', NULL, 'Sales', '', 'Active', 'b4989e2c-e99f-7225-aa69-6898f1f3fdc6', '', NULL, 0, 'banner'),
('b5f97cbc-e760-d19b-3e24-689591b8f7ef', '2025-08-08 05:54:09', '2025-08-08 05:54:59', '1', '1', '', 1, '1', '08_08_25_07_37_16_R.jpg', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', 'bc50eb29-2b38-3838-43dd-689591378d8f', '', NULL, 0, 'banner'),
('bce851cf-2864-5d1f-2c04-689540e8399d', '2025-08-08 00:09:14', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', 'c0bbd9ff-46e5-f22e-0158-689540d15d23', '', NULL, 0, ''),
('bdbf197b-fd6e-8b07-afa6-688efb50a405', '2025-08-03 06:03:01', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-03', NULL, '', '', 'Active', 'c69bd13c-6228-8464-b7da-688efb5e9fb1', '', NULL, 0, ''),
('bf59c9c9-2dd3-f1b1-8827-6895406c099b', '2025-08-08 00:11:10', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', 'c2befae8-f3c3-768e-dcaa-68954088f912', '', NULL, 0, ''),
('c0a82794-c333-83cc-2bf3-689541f5d388', '2025-08-08 00:16:53', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', 'c3d21b1c-252d-cc7c-e5dc-6895414ccb18', '', NULL, 0, ''),
('c3c10b13-8523-f2e4-ea6d-688efaca2aba', '2025-08-03 05:56:32', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-03', NULL, '', '', 'Active', '10d66622-5d78-4c72-1084-688efa9989d8', '', NULL, 0, ''),
('c5359e81-b7a2-cbc9-dfee-68955ca51962', '2025-08-08 02:08:42', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', 'd712c970-5c92-f04e-cead-68955c2b10a2', '', NULL, 0, ''),
('c7c0043a-6362-8e30-08fa-68958c03398a', '2025-08-08 05:32:56', '2025-08-08 05:54:59', '1', '1', '', 1, '1', '08_08_25_07_32_49_color-diseno.jpg', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', 'cb69405f-d13a-011b-3c6e-68958c6a5b0d', '', NULL, 0, 'banner'),
('c8b413bd-dff1-f645-9e1f-6899130cde97', '2025-08-10 21:48:27', '2025-08-10 21:48:27', '1', '1', '', 0, '1', '10_08_25_11_48_21_16261127170.webp', '', 'Sugar', '', '2025-08-10', NULL, '', NULL, 'Active', 'ccf2b707-717e-f7d0-948d-689913f25214', NULL, NULL, 0, 'banner'),
('cb731390-2568-a0e7-ecc1-6898f152b83a', '2025-08-10 19:24:16', '2025-08-10 20:01:14', '1', '1', '', 1, '1', '10_08_25_09_21_43_e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '', 'Sugar', '', '2025-08-10', NULL, 'Sales', '', 'Active', 'cf252856-255b-4835-c220-6898f12d33cf', '', NULL, 0, 'banner'),
('cd80e8ed-7916-ceaa-ad82-688ef8301cda', '2025-08-03 05:51:59', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-03', NULL, '', '', 'Active', 'd190b301-f8eb-4eab-2f69-688ef8867c67', '', NULL, 0, ''),
('d12c7105-ddc3-5163-b94e-688ef7410cdd', '2025-08-03 05:47:17', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-03', NULL, '', '', 'Active', 'd48b7eba-8d71-3b5d-78d2-688ef71b2205', '', NULL, 0, 'banner'),
('d8cd8c46-5d1b-e3fe-1103-6895831a8d56', '2025-08-08 04:56:22', '2025-08-08 04:58:08', '1', '1', '', 1, '1', '08_08_25_06_56_14_banner.webp', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', 'e88f8509-3910-f16e-4771-689583646e92', '', NULL, 0, 'banner'),
('e0124367-4908-8de4-ca45-6898f28e552f', '2025-08-10 19:28:47', '2025-08-10 20:01:14', '1', '1', '', 1, '1', '10_08_25_09_21_43_e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', '', 'Sugar', '', '2025-08-10', NULL, 'Sales', '', 'Active', 'e59a73f4-f934-b32b-b3a7-6898f2e0fb64', '', NULL, 0, 'banner'),
('e93fa460-db56-beda-63d4-6898efe8b481', '2025-08-10 19:12:13', '2025-08-10 20:01:14', '1', '1', '', 1, '1', '10_08_25_09_12_06_7dd37713-8089-4084-891c-47c03f63eba2.png', '', 'Sugar', '', '2025-08-10', NULL, '', '', 'Active', 'ed31ba3c-7445-e9ca-ce7d-6898ef5e7382', '', NULL, 0, 'banner'),
('eda73607-dac9-31e6-cf53-68958d33e15d', '2025-08-08 05:37:20', '2025-08-08 05:54:59', '1', '1', '', 1, '1', '08_08_25_07_37_16_R.jpg', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', 'f3a60f35-af59-f42d-005e-68958da3eb61', '', NULL, 0, 'banner'),
('f276a7e1-c915-2eef-0fbe-68954037c009', '2025-08-08 00:12:31', '2025-08-08 04:58:08', '1', '1', '', 1, '1', 'banner.webp', '', 'Sugar', '', '2025-08-08', NULL, '', '', 'Active', '1fc70d88-790e-28ac-4117-68954084db19', '', NULL, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `document_revisions`
--

INSERT INTO `document_revisions` (`id`, `change_log`, `document_id`, `doc_id`, `doc_type`, `doc_url`, `date_entered`, `created_by`, `filename`, `file_ext`, `file_mime_type`, `revision`, `deleted`, `date_modified`) VALUES
('10d66622-5d78-4c72-1084-688efa9989d8', 'Documento creado', 'c3c10b13-8523-f2e4-ea6d-688efaca2aba', '', 'Sugar', '', '2025-08-03 05:56:32', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('15acd857-cc3b-f2ad-f899-689541690ac7', 'Documento creado', '11470ab4-dc55-4ea5-def1-689541fb96b1', '', 'Sugar', '', '2025-08-08 00:13:48', '1', 'banner.webp', 'webp', 'image/webp', '1', 0, '2025-08-08 00:13:48'),
('1f9ae80b-9f17-b5fc-3203-688efba468d1', 'Documento creado', '1c0b2bbb-6fb5-cbe0-08b4-688efb051aa8', '', 'Sugar', '', '2025-08-03 06:04:39', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('1fc70d88-790e-28ac-4117-68954084db19', 'Documento creado', 'f276a7e1-c915-2eef-0fbe-68954037c009', '', 'Sugar', '', '2025-08-08 00:12:31', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('3662851e-9ed4-3d7a-f53f-6898fb709669', 'Documento creado', '3378ef1b-540d-08bb-6d0c-6898fb41f4c2', '', 'Sugar', '', '2025-08-10 20:07:22', '1', 'Frame 350.png', 'png', 'image/png', '1', 0, '2025-08-10 20:07:22'),
('3cfdbf1a-ff0f-8be2-af7e-6898ed5b7569', 'Documento creado', '388046fc-58e1-648d-7ebd-6898ed232e6a', '', 'Sugar', '', '2025-08-10 19:04:57', '1', '7dd37713-8089-4084-891c-47c03f63eba2.png', 'png', 'image/png', '1', 1, '2025-08-10 20:01:14'),
('3e564ce9-18db-3cba-867f-689540a53efb', 'Documento creado', '3996bb6e-b440-8be5-79cd-68954061793f', '', 'Sugar', '', '2025-08-08 00:10:22', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('3e57c094-4aae-56fe-4d83-6898fb5fb901', 'Documento creado', '3a2ef239-6c9c-9531-248a-6898fbfa0f1e', '', 'Sugar', '', '2025-08-10 20:03:22', '1', 'Frame 350.png', 'png', 'image/png', '1', 1, '2025-08-10 20:06:03'),
('42432ed6-fe51-7214-e5b2-6895842bdd5a', 'Documento creado', '3c9b0dfa-87c6-b34a-6bd4-68958429e1b6', '', 'Sugar', '', '2025-08-08 04:59:24', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 05:54:59'),
('42ed4aa5-7fb7-17fe-691f-689587c9f5b7', 'Documento creado', '3b43ef44-6955-959a-2c2e-689587b6b4bc', '', 'Sugar', '', '2025-08-08 05:14:57', '1', 'R.jpg', 'jpg', 'image/jpeg', '1', 1, '2025-08-08 05:54:59'),
('43d36092-e9c3-409c-6480-689541315088', 'Documento creado', '412cfe20-e09c-8c6f-85f8-6895419f8f24', '', 'Sugar', '', '2025-08-08 00:14:36', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('4bec15a5-9ed4-4bdc-43d9-689591b02a1b', 'Documento creado', '470d7fba-cf6a-a10e-45c7-68959125ea11', '', 'Sugar', '', '2025-08-08 05:55:50', '1', 'plantilla-banner-semana-moda-banner-promocion-moda_122059-223.avif', 'avif', 'application/octet-stream', '1', 1, '2025-08-10 20:01:14'),
('511fc413-36bd-696f-3703-688efabc5eaa', 'Documento creado', '49c2d5f7-2eee-26b9-8642-688efafdb5d1', '', 'Sugar', '', '2025-08-03 05:58:54', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('639a0faa-0ffd-f99f-b7aa-6895905f134f', 'Documento creado', '5e612492-872b-484b-2ad5-6895904db3a5', '', 'Sugar', '', '2025-08-08 05:53:09', '1', 'R.jpg', 'jpg', 'image/jpeg', '1', 1, '2025-08-08 05:54:59'),
('66167243-8b22-25cb-a4bb-68958d2942e4', 'Documento creado', '62320ced-051a-aec3-b051-68958df4b608', '', 'Sugar', '', '2025-08-08 05:37:43', '1', 'R.jpg', 'jpg', 'image/jpeg', '1', 1, '2025-08-08 05:54:59'),
('668e6a1a-f7d7-5246-23e1-688ef819287b', 'Documento creado', '628a39de-7a21-1202-e57d-688ef86679ac', '', 'Sugar', '', '2025-08-03 05:50:40', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('786fd10a-a004-1897-cbd5-688ef8da2fd9', 'Documento creado', '741ebca8-f17a-7427-32fb-688ef89c9b36', '', 'Sugar', '', '2025-08-03 05:49:37', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('7cd5b10d-2044-c14a-12f2-6898fbd88703', 'Documento creado', '77f16065-f941-c378-8162-6898fb775824', '', 'Sugar', '', '2025-08-10 20:06:45', '1', '4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', 'png', 'image/png', '1', 0, '2025-08-10 20:06:45'),
('7ed267f6-4669-5bf7-c9af-6898f3ac5f83', 'Documento creado', '78849aea-9543-4de9-210f-6898f385bf77', '', 'Sugar', '', '2025-08-10 19:31:40', '1', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', 'png', 'image/png', '1', 1, '2025-08-10 20:01:14'),
('988dfcc6-1cae-b1f5-49d2-6898ed8c6b63', 'Documento creado', '944b4446-18e9-2126-857d-6898eddf17d9', '', 'Sugar', '', '2025-08-10 19:07:22', '1', '4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', 'png', 'image/png', '1', 1, '2025-08-10 20:01:14'),
('9aba06bd-1fef-2efc-104e-68959138b8e8', 'Documento creado', '964eedac-b1fe-af24-b5ac-689591cf15d8', '', 'Sugar', '', '2025-08-08 05:57:37', '1', 'plantilla-banner-semana-moda-banner-promocion-moda_122059-223.avif', 'avif', 'application/octet-stream', '1', 1, '2025-08-10 20:01:14'),
('9cc82ccb-c15a-4b5c-d8b4-6898f2c8085d', 'Documento creado', '97de0d3a-b912-d6a1-348f-6898f22d2d79', '', 'Sugar', '', '2025-08-10 19:27:02', '1', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', 'png', 'image/png', '1', 1, '2025-08-10 20:01:14'),
('9eae9ccc-40a7-1c4a-4817-68958ba88e0a', 'Documento creado', '9a76387d-f61d-439c-f8ab-68958b01e2a2', '', 'Sugar', '', '2025-08-08 05:31:16', '1', 'plantilla-banner-semana-moda-banner-promocion-moda_122059-223.avif', 'avif', 'application/octet-stream', '1', 1, '2025-08-08 05:54:59'),
('a354ec8d-3dfa-2b20-ad42-6898f2725626', 'Documento creado', '9e7a8c2b-5d8a-1e45-c905-6898f2a6dadd', '', 'Sugar', '', '2025-08-10 19:25:49', '1', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', 'png', 'image/png', '1', 1, '2025-08-10 20:01:14'),
('a791c80e-33b7-8a52-24b7-6898fad7fe90', 'Documento creado', 'a367fdd1-184e-74f4-72d8-6898fa92db50', '', 'Sugar', '', '2025-08-10 20:02:17', '1', '4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', 'png', 'image/png', '1', 1, '2025-08-10 20:06:03'),
('b4989e2c-e99f-7225-aa69-6898f1f3fdc6', 'Documento creado', 'b0437b91-0d75-61cf-c407-6898f1542304', '', 'Sugar', '', '2025-08-10 19:21:53', '1', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', 'png', 'image/png', '1', 1, '2025-08-10 20:01:14'),
('bc50eb29-2b38-3838-43dd-689591378d8f', 'Documento creado', 'b5f97cbc-e760-d19b-3e24-689591b8f7ef', '', 'Sugar', '', '2025-08-08 05:54:09', '1', 'R.jpg', 'jpg', 'image/jpeg', '1', 1, '2025-08-08 05:54:59'),
('bcfc05de-193e-ff7e-0153-689577deedc4', 'Documento creado', '6fad0f50-fa3b-8982-83d9-689577dff74e', '', 'Sugar', '', '2025-08-08 04:04:03', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('beed7596-c5cd-eba4-dc59-68953e54fb29', 'Documento creado', '87a7f7cb-9e1a-4704-50b9-68953e852f79', '', 'Sugar', '', '2025-08-08 00:01:33', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('c0bbd9ff-46e5-f22e-0158-689540d15d23', 'Documento creado', 'bce851cf-2864-5d1f-2c04-689540e8399d', '', 'Sugar', '', '2025-08-08 00:09:14', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('c2befae8-f3c3-768e-dcaa-68954088f912', 'Documento creado', 'bf59c9c9-2dd3-f1b1-8827-6895406c099b', '', 'Sugar', '', '2025-08-08 00:11:10', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('c3d21b1c-252d-cc7c-e5dc-6895414ccb18', 'Documento creado', 'c0a82794-c333-83cc-2bf3-689541f5d388', '', 'Sugar', '', '2025-08-08 00:16:53', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('c69bd13c-6228-8464-b7da-688efb5e9fb1', 'Documento creado', 'bdbf197b-fd6e-8b07-afa6-688efb50a405', '', 'Sugar', '', '2025-08-03 06:03:01', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('c75d753e-9211-a697-9273-688ef3a7263c', 'Documento creado', '980a08ad-aacb-aa2d-0891-688ef3d7b538', '', 'Sugar', '', '2025-08-03 05:27:20', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('cb69405f-d13a-011b-3c6e-68958c6a5b0d', 'Documento creado', 'c7c0043a-6362-8e30-08fa-68958c03398a', '', 'Sugar', '', '2025-08-08 05:32:56', '1', 'color-diseno.jpg', 'jpg', 'image/jpeg', '1', 1, '2025-08-08 05:54:59'),
('ccf2b707-717e-f7d0-948d-689913f25214', 'Documento creado', 'c8b413bd-dff1-f645-9e1f-6899130cde97', '', 'Sugar', '', '2025-08-10 21:48:27', '1', '16261127170.webp', 'webp', 'image/webp', '1', 0, '2025-08-10 21:48:27'),
('cf252856-255b-4835-c220-6898f12d33cf', 'Documento creado', 'cb731390-2568-a0e7-ecc1-6898f152b83a', '', 'Sugar', '', '2025-08-10 19:24:16', '1', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', 'png', 'image/png', '1', 1, '2025-08-10 20:01:14'),
('d1030320-534c-13de-6236-6895881f1aa5', 'Documento creado', '7c0f0aeb-788d-9d52-aea5-689588fec19c', '', 'Sugar', '', '2025-08-08 05:16:52', '1', 'youtube-cover-and-banner-design-template-vector.jpg', 'jpg', 'image/jpeg', '1', 1, '2025-08-08 05:54:59'),
('d190b301-f8eb-4eab-2f69-688ef8867c67', 'Documento creado', 'cd80e8ed-7916-ceaa-ad82-688ef8301cda', '', 'Sugar', '', '2025-08-03 05:51:59', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('d48b7eba-8d71-3b5d-78d2-688ef71b2205', 'Documento creado', 'd12c7105-ddc3-5163-b94e-688ef7410cdd', '', 'Sugar', '', '2025-08-03 05:47:17', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('d712c970-5c92-f04e-cead-68955c2b10a2', 'Documento creado', 'c5359e81-b7a2-cbc9-dfee-68955ca51962', '', 'Sugar', '', '2025-08-08 02:08:42', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('e59a73f4-f934-b32b-b3a7-6898f2e0fb64', 'Documento creado', 'e0124367-4908-8de4-ca45-6898f28e552f', '', 'Sugar', '', '2025-08-10 19:28:47', '1', 'e2e188e9-5ae8-4551-94d8-c9040d8b5ca4.png', 'png', 'image/png', '1', 1, '2025-08-10 20:01:14'),
('e88f8509-3910-f16e-4771-689583646e92', 'Documento creado', 'd8cd8c46-5d1b-e3fe-1103-6895831a8d56', '', 'Sugar', '', '2025-08-08 04:56:22', '1', 'banner.webp', 'webp', 'image/webp', '1', 1, '2025-08-08 04:58:08'),
('ed31ba3c-7445-e9ca-ce7d-6898ef5e7382', 'Documento creado', 'e93fa460-db56-beda-63d4-6898efe8b481', '', 'Sugar', '', '2025-08-10 19:12:13', '1', '7dd37713-8089-4084-891c-47c03f63eba2.png', 'png', 'image/png', '1', 1, '2025-08-10 20:01:14'),
('f3a60f35-af59-f42d-005e-68958da3eb61', 'Documento creado', 'eda73607-dac9-31e6-cf53-68958d33e15d', '', 'Sugar', '', '2025-08-08 05:37:20', '1', 'R.jpg', 'jpg', 'image/jpeg', '1', 1, '2025-08-08 05:54:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text DEFAULT NULL,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT 0,
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(250) DEFAULT NULL,
  `reply_to_addr` varchar(250) DEFAULT NULL,
  `to_addrs` text DEFAULT NULL,
  `cc_addrs` text DEFAULT NULL,
  `bcc_addrs` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `description_html` longtext DEFAULT NULL,
  `raw_source` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT 0,
  `opt_out` tinyint(1) DEFAULT 0,
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `confirm_opt_in`, `confirm_opt_in_date`, `confirm_opt_in_sent_date`, `confirm_opt_in_fail_date`, `confirm_opt_in_token`, `date_created`, `date_modified`, `deleted`) VALUES
('635cf715-f147-8830-c968-66639698c8ff', 'tatiana@gmail.com', 'TATIANA@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2024-06-07 23:24:22', '2024-06-07 23:24:22', 0),
('7b41e7ad-f82b-8e65-59e5-665517c0d273', 'c.a.m.l.123@hotmail.com', 'C.A.M.L.123@HOTMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2024-05-27 23:29:59', '2024-05-27 23:29:59', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_addresses_audit`
--

CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT 0,
  `reply_to_address` tinyint(1) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('6220ead6-a198-4a76-82a6-666396809f92', '635cf715-f147-8830-c968-66639698c8ff', '61fad06d-a663-e826-2be1-6663965d3901', 'Accounts', 1, 0, '2024-06-07 23:24:22', '2024-06-07 23:24:22', 0),
('79c3cbb8-b43a-3b11-4166-665517a6efea', '7b41e7ad-f82b-8e65-59e5-665517c0d273', '798f6ec5-c861-afc8-f8b7-665517f5d471', 'Accounts', 1, 0, '2024-05-27 23:29:59', '2024-05-27 23:29:59', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `body_html` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('1fc3295e-fbd1-f50d-0364-664e82960c67', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, 'system'),
('228b9e16-ca1d-27e3-c6a6-664e82e821e5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\r\nHere is your account username and temporary password:\r\nUsername : $contact_user_user_name\r\nPassword : $contact_user_user_hash\r\n\r\n$config_site_url\r\n\r\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('2b128b38-9df5-cf01-e93c-664e823ed7d0', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Description</td><td>$acase_description</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('2f86638a-52e2-7444-68eb-664e8290d5e5', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\r\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\r\n\r\nClick on the link below to reset your password:\r\n\r\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('39a2a0b7-6735-263a-7afd-664e824f6328', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'off', 'Two Factor Authentication email', 'This template is used to send a user a code for Two Factor Authentication.', 'Two Factor Authentication Code', 'Two Factor Authentication code is $code.', '<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('3a0980ea-7d05-1753-19ae-664e8204c05d', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, 'system'),
('45f5632c-6560-b037-d81b-664e82c0a8b9', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'off', 'User Case Update', 'Email template to send to a SuiteCRM user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					     <p> </p>\r\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>', 0, NULL, NULL, 'system'),
('66d574a1-628b-909d-1f33-664e82b8be6d', '2013-05-24 14:31:45', '2024-05-22 23:38:30', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'system'),
('d80019ca-d297-2321-53c6-664e823ff5a0', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'off', 'Confirmed Opt In', 'Email template to send to a contact to confirm they have opted in.', 'Confirm Opt In', 'Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n             <p>\r\n                Please confirm that you have opted in by selecting the following link:\r\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\r\n             </p>', 0, NULL, NULL, 'system'),
('ee24086b-1aea-a684-a386-664e82175688', '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, 'system');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `external_oauth_connections`
--

CREATE TABLE `external_oauth_connections` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `client_id` varchar(32) DEFAULT NULL,
  `client_secret` varchar(32) DEFAULT NULL,
  `token_type` varchar(32) DEFAULT NULL,
  `expires_in` varchar(32) DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `external_oauth_provider_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `external_oauth_providers`
--

CREATE TABLE `external_oauth_providers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `connector` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` text DEFAULT NULL,
  `url_authorize` varchar(255) DEFAULT NULL,
  `authorize_url_options` text DEFAULT NULL,
  `url_access_token` varchar(255) DEFAULT NULL,
  `extra_provider_params` text DEFAULT NULL,
  `get_token_request_grant` varchar(255) DEFAULT 'authorization_code',
  `get_token_request_options` text DEFAULT NULL,
  `refresh_token_request_grant` varchar(255) DEFAULT 'refresh_token',
  `refresh_token_request_options` text DEFAULT NULL,
  `access_token_mapping` varchar(255) DEFAULT 'access_token',
  `expires_in_mapping` varchar(255) DEFAULT 'expires_in',
  `refresh_token_mapping` varchar(255) DEFAULT 'refresh_token',
  `token_type_mapping` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT 0,
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `audited` tinyint(1) DEFAULT 0,
  `massupdate` tinyint(1) DEFAULT 0,
  `duplicate_merge` smallint(6) DEFAULT 0,
  `reportable` tinyint(1) DEFAULT 1,
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('AOS_Productscantidad_c', 'cantidad_c', 'LBL_CANTIDAD', '', '', 'AOS_Products', 'int', 255, 0, '', '2024-07-07 01:55:45', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productscomision_c', 'comision_c', 'LBL_COMISION', '', '', 'AOS_Products', 'currency', 26, 0, '', '2024-10-30 17:17:46', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productsconfeccion_c', 'confeccion_c', 'LBL_CONFECCION', '', '', 'AOS_Products', 'currency', 26, 0, '', '2024-10-30 17:18:28', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productscorte_c', 'corte_c', 'LBL_CORTE', '', '', 'AOS_Products', 'currency', 26, 0, '', '2024-10-30 17:18:02', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productsempaque_c', 'empaque_c', 'LBL_EMPAQUE', '', '', 'AOS_Products', 'currency', 26, 0, '', '2024-10-30 17:17:15', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productsestampado_c', 'estampado_c', 'LBL_ESTAMPADO', '', '', 'AOS_Products', 'varchar', 255, 0, '', '2024-07-07 01:56:49', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productstalla_c', 'talla_c', 'LBL_TALLA', '', '', 'AOS_Products', 'varchar', 255, 0, '', '2024-07-07 01:54:27', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productstela_accesorios_c', 'tela_accesorios_c', 'LBL_TELA_ACCESORIOS', '', '', 'AOS_Products', 'currency', 26, 0, '', '2024-10-30 17:16:42', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Productstono_c', 'tono_c', 'LBL_TONO', '', '', 'AOS_Products', 'varchar', 255, 0, '', '2024-07-07 01:53:29', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Quotesdomiciliario_c', 'domiciliario_c', 'LBL_DOMICILIARIO', NULL, NULL, 'AOS_Quotes', 'relate', 255, 0, NULL, '2024-11-13 04:07:15', 0, 1, 0, 0, 1, 'true', NULL, 'Users', 'user_id_c', NULL),
('AOS_Quotesestado_entrega_c', 'estado_entrega_c', 'LBL_ESTADO_ENTREGA', '', '', 'AOS_Quotes', 'enum', 100, 0, '', '2024-11-15 18:24:11', 0, 0, 0, 0, 1, 'true', 'estado_entrega_list', '', '', ''),
('AOS_Quotesfecha_entrega_c', 'fecha_entrega_c', 'LBL_FECHA_ENTREGA', '', '', 'AOS_Quotes', 'date', NULL, 1, '', '2024-05-27 23:44:17', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('AOS_Quotestipo_venta_c', 'tipo_venta_c', 'LBL_TIPO_VENTA', '', '', 'AOS_Quotes', 'enum', 100, 1, NULL, '2024-05-27 23:41:18', 0, 1, 0, 0, 1, 'true', 'tipo_venta_list', '', '', ''),
('AOS_Quotesuser_id_c', 'user_id_c', 'LBL_DOMICILIARIO_USER_ID', '', '', 'AOS_Quotes', 'id', 36, 0, NULL, '2024-11-13 04:05:28', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2024-05-22 23:38:30', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT 0,
  `is_group` tinyint(1) DEFAULT 0,
  `is_dynamic` tinyint(1) DEFAULT 0,
  `dynamic_query` text DEFAULT NULL,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `default_values` text DEFAULT NULL,
  `has_header` tinyint(1) DEFAULT 1,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `email_body_filtering` varchar(255) DEFAULT 'multi',
  `server_url` varchar(100) DEFAULT NULL,
  `connection_string` varchar(255) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT 143,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text DEFAULT NULL,
  `sentFolder` varchar(255) DEFAULT NULL,
  `trashFolder` varchar(255) DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT 0,
  `move_messages_to_trash_after_import` tinyint(1) DEFAULT 0,
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT 0,
  `groupfolder_id` char(36) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT 'basic',
  `protocol` varchar(255) DEFAULT 'imap',
  `is_ssl` tinyint(1) DEFAULT 0,
  `distribution_user_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `create_case_template_id` char(36) DEFAULT NULL,
  `external_oauth_connection_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_lng` float(11,8) DEFAULT 0.00000000,
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `requeue` tinyint(1) DEFAULT 0,
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT 0,
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `leads`
--

INSERT INTO `leads` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `lawful_basis`, `date_reviewed`, `lawful_basis_source`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `converted`, `refered_by`, `lead_source`, `lead_source_description`, `status`, `status_description`, `reports_to_id`, `account_name`, `account_description`, `contact_id`, `account_id`, `opportunity_id`, `opportunity_name`, `opportunity_amount`, `campaign_id`, `birthdate`, `portal_name`, `portal_app`, `website`) VALUES
('d21fecc2-da67-e429-ef89-664ea7121189', '2024-05-23 02:16:34', '2024-05-23 02:18:41', '1', '1', NULL, 0, '1', 'Mr.', 'Alejandro', 'Maldonado', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Converted', NULL, '', NULL, NULL, '1ca93217-f347-5bb5-42e6-664ea763304c', '1cd59f6f-502d-44d3-826b-664ea70e6522', '3b1f9a81-71fe-452c-66b1-664ea742367c', NULL, NULL, '', NULL, NULL, NULL, 'http://');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `leads_audit`
--

INSERT INTO `leads_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('bb3bc40d-88fc-1f89-0fe6-664ea716f3e5', 'd21fecc2-da67-e429-ef89-664ea7121189', '2024-05-23 02:18:41', '1', 'status', 'enum', 'New', 'Converted', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `leads_cstm`
--

INSERT INTO `leads_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('d21fecc2-da67-e429-ef89-664ea7121189', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT 0,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `meetings`
--

INSERT INTO `meetings` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `location`, `password`, `join_url`, `host_url`, `displayed_url`, `creator`, `external_id`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `parent_type`, `status`, `type`, `parent_id`, `reminder_time`, `email_reminder_time`, `email_reminder_sent`, `outlook_id`, `sequence`, `repeat_type`, `repeat_interval`, `repeat_dow`, `repeat_until`, `repeat_count`, `repeat_parent_id`, `recurring_source`, `gsync_id`, `gsync_lastsync`) VALUES
('cffbb5f4-57da-c4e4-994d-66639b2970c5', 'Nueva', '2024-06-07 23:44:17', '2024-06-07 23:47:10', '1', '1', 'Nuevo', 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 15, '2024-06-07 17:00:00', '2024-06-07 17:15:00', 'Accounts', 'Planned', 'Sugar', '61fad06d-a663-e826-2be1-6663965d3901', -1, -1, 0, NULL, 0, NULL, 1, NULL, NULL, NULL, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `meetings_cstm`
--

INSERT INTO `meetings_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('cffbb5f4-57da-c4e4-994d-66639b2970c5', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `meetings_users`
--

INSERT INTO `meetings_users` (`id`, `meeting_id`, `user_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES
('e1b90f02-4c3d-c573-6b1b-66639b94332f', 'cffbb5f4-57da-c4e4-994d-66639b2970c5', '1', '1', 'accept', '2024-06-07 23:44:17', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT 0,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth2clients`
--

CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT 1,
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth2tokens`
--

CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `opportunities`
--

INSERT INTO `opportunities` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `opportunity_type`, `campaign_id`, `lead_source`, `amount`, `amount_usdollar`, `currency_id`, `date_closed`, `next_step`, `sales_stage`, `probability`) VALUES
('3b1f9a81-71fe-452c-66b1-664ea742367c', 'jhda', '2024-05-23 02:18:43', '2024-05-23 02:18:41', '1', '1', '', 0, '1', NULL, '', '', 1000000, 250, 'acea730d-beec-122c-5f93-664e9d5755da', '2024-05-15', NULL, 'Closed Won', 100),
('e40003ff-95be-84d8-0b16-664ea6f83d86', 'MYB', '2024-05-23 02:14:31', '2024-05-23 02:24:48', '1', '1', NULL, 0, '1', 'New Business', '', 'Other', 100000, 25, 'acea730d-beec-122c-5f93-664e9d5755da', '2024-05-23', NULL, 'Closed Won', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `opportunities_audit`
--

INSERT INTO `opportunities_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('162da82a-476a-02ce-d23d-664ea8044599', 'e40003ff-95be-84d8-0b16-664ea6f83d86', '2024-05-23 02:24:48', '1', 'amount_usdollar', 'currency', '0', '25', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `opportunities_contacts`
--

INSERT INTO `opportunities_contacts` (`id`, `contact_id`, `opportunity_id`, `contact_role`, `date_modified`, `deleted`) VALUES
('3b3a4e09-1ae6-44e0-c697-664ea799f88b', '1ca93217-f347-5bb5-42e6-664ea763304c', '3b1f9a81-71fe-452c-66b1-664ea742367c', NULL, '2024-05-23 02:18:41', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `opportunities_cstm`
--

INSERT INTO `opportunities_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('3b1f9a81-71fe-452c-66b1-664ea742367c', 0.00000000, 0.00000000, '', ''),
('e40003ff-95be-84d8-0b16-664ea6f83d86', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) DEFAULT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `reply_to_name` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'SMTP',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '25',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT 0,
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `smtp_from_name`, `smtp_from_addr`, `reply_to_name`, `reply_to_addr`, `signature`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`) VALUES
('410505a9-210b-e17f-eab7-664e82d1ba02', 'system', 'system', '1', 'Alejo', 'solicitudes@ingedev94.com', NULL, NULL, NULL, 'SMTP', 'other', 'smtp.mi.com.co', '465', 'solicitudes@ingedev94.com', 'LxHU30RnyLEyOR+l7YHbmw==', 1, '1', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `predecessors` text DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text DEFAULT NULL,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT 1,
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `utilization` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('1131d07a-9acb-c07c-bd75-68a31ee0303d', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('11b876e1-c5f0-35f3-261e-68a31e322658', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1240afd7-3693-c640-11df-68a31eb15a8c', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1327052c-47d8-110a-48b7-68a31e4ab345', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('13d4c123-1e99-a8de-7acc-68a31e1a7d05', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('146235e4-59a4-c59c-7f77-68a31e09b689', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('14e3d4da-f281-6b7e-4306-68a31e41d086', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('167cbde7-9acc-f481-5d2e-68a31e092faf', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16fdde02-7ffc-165a-8f23-68a31ef75a2a', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('178657c4-594f-36db-05cf-68a31ef5dd86', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18228f2a-ace9-4257-5955-68a31ee058ae', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('19791475-a523-85b6-9d51-68a31e577f4f', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1a0aee3a-8c00-f36f-ee6a-68a31eb567fe', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1a8dd436-9fe3-081b-cc24-68a31ed9a909', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b2c031c-5c73-61df-dfa0-68a31e6b830e', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('1c068803-4f97-a223-e9f6-68a31ea5f16a', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1ef45087-5d11-9f79-0c71-68a31ef16498', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f82c502-87dd-aeb3-eb79-68a31e90f594', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2143950c-7576-13f2-3f1a-68a31e505f85', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('21b8ffbc-25bc-a7f7-53a6-68a31eba2784', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('221ba66d-916f-a358-d0c0-68a31efeb80f', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('229e24b6-32c5-337c-415f-68a31e826742', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('239da20e-c018-546d-1f5b-68a31ebe897c', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('242a363a-13cf-8fb1-4c86-68a31e3a37ec', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('24b4b7ea-9a72-9e5a-0f5f-68a31effadd8', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2521ec9a-d550-c686-9aa9-68a31ef18352', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('257d84ff-8ee6-bb01-796c-68a31e420ce6', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('25c482cf-79f3-1656-448a-68a31eb40ae2', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('266c594e-c04e-0ac3-eaaa-68a31e0e015f', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26d7e54e-da63-37c5-cacb-68a31eda3181', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('27320138-1712-8ec7-02b7-68a31e76bf34', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2831d10d-23e1-7582-bd41-68a31e66b61f', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2899a382-2d2e-9755-dc34-68a31e04ccd2', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('291c0c7a-5164-9c81-809c-68a31e3e84de', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2a32904c-397c-2be8-5ace-68a31e02c610', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2a9f23db-b24c-0b67-a921-68a31e84fcb6', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ae68e1c-870e-a2e5-7da6-68a31e8c898a', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b37a54f-4858-6643-482a-68a31e0458a6', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c598220-6a66-afe7-4b82-68a31e22e2e1', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2cb39142-2ac4-f591-8545-68a31e783bfb', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d1f0dd5-d201-7b98-b425-68a31e7bd071', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d3ff7ec-4cc3-834d-1a35-68a31ea115c8', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2dca7ce9-1446-0373-562a-68a31e06d5e4', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e60414f-5d33-5ef4-c5ae-68a31ef89f24', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('2f854b07-af86-1d15-f25f-68a31e31924f', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30042f4b-4fac-256d-98af-68a31e670ba4', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30a6f27a-b234-4b51-8703-68a31ec979ba', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3140e3bf-0ee6-c7eb-0736-68a31eb87119', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('31c91cc3-5496-1289-6158-68a31e55908a', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3242f404-adac-d206-e006-68a31e62a95c', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32b63598-bf61-9044-5d27-68a31e27a036', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33e503e2-946f-af05-aa33-68a31efa86af', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3405f13f-b6f9-e8e7-0763-68a31e328ffa', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34a950a8-ca9a-1fe0-410c-68a31ef54226', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('359c1b25-3f91-49ec-57f5-68a31ee7dd59', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3650dee0-d4c9-ce38-58b3-68a31ec82591', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36f1a11e-29cc-1e4b-b8d9-68a31ec9d4c7', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('389d1579-92e9-b59b-699a-68a31e4c95a6', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('394dfe48-18ed-4940-ea3f-68a31e65365b', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b13b9b8-b577-dcbf-8a3c-68a31e3f04af', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3bbd70dc-a179-0398-d0f9-68a31e291547', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c69d1c8-8a7b-387f-a53b-68a31e6ace5c', 'securitygroups_aor_scheduled_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Scheduled_Reports', 0, 0),
('3ea049a0-1452-a8c2-807e-68a31e5c4e99', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f430618-38a1-b2b0-b604-68a31e1915a4', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3fea3127-2d2d-a7c3-77b9-68a31e6a0f30', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('407d9c07-7696-3a47-739b-68a31e2327b4', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('4117c458-7e81-27cc-6112-68a31e387475', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('41a78584-d1fe-2295-251a-68a31e74c6d3', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('422eb664-4bd7-ca3c-0885-68a31e2a3f90', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('42ba56bf-af7c-0e50-f31c-68a31e633ce3', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('432cd60a-c605-551b-f983-68a31ee0c865', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43b5ead6-c870-12fe-4219-68a31e02a568', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43f006a7-b2f1-34f5-2518-68a31e9b2952', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('45127959-77c7-9eed-3b5d-68a31e41685f', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('458e0cb9-7274-d291-0113-68a31e3c90ab', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('45ac65ae-9fa0-15e7-d3ed-68a31ed7ee2b', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('464895a8-8617-cb60-9463-68a31e1bc848', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46cdd336-94af-e8e3-336f-68a31ef5bc23', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('475149ab-1346-6a0e-7f8b-68a31e730dcf', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('47ecbbb1-2917-b02d-2e33-68a31e04ca47', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49988165-a5f0-3aab-f461-68a31ee88eaa', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a47e67f-d94a-8c89-8c70-68a31e7aa5b9', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ae4ca0b-d03d-4ec4-ebed-68a31e4029c4', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b6aaa57-03f9-f407-45c6-68a31eee6d6c', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('4d2c52f8-95a1-3bdd-400d-68a31e52aca6', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d3908ae-344b-0d29-6603-68a31ef2056f', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4dec9ee8-3680-d891-5dd3-68a31e7d13c3', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e92a058-09fe-1a5f-0887-68a31eefa606', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f339c84-5c33-3a98-ac1a-68a31e9a06cd', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('4fe4ab80-2410-a5f9-1936-68a31e980954', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51ea16da-3eb0-93d9-886e-68a31ec24f40', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('52787896-6169-4ded-b007-68a31ece13fb', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('52df13af-c9dc-f916-7bde-68a31e4bd27d', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5345bc36-b3ae-35b9-7354-68a31e12e220', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('53a15d61-fd60-b73d-f4b6-68a31ef595cc', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55226a06-f726-4db9-4683-68a31eb93c78', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('557503ac-cf2c-c004-6746-68a31ef9fb60', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5590854a-f467-c696-48e7-68a31e716340', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55efe70a-5c0c-513d-0d7f-68a31ef4bb97', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56628db7-7e63-9943-12ee-68a31e075a24', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('573259b0-10fd-2613-3529-68a31ef9b643', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57952ebb-dbec-1118-f18e-68a31ec905cb', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57f4f7d6-8b8e-0099-57eb-68a31e89bca4', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58609bd9-1b25-d8c9-8ea7-68a31ea40cdd', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a4a9138-f6bf-d325-28b8-68a31e69a655', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ae01fb7-a227-2b5c-31b5-68a31ec429ca', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b690ba2-a559-ef8b-da1f-68a31ee727fa', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5be88139-65e7-e490-b2e3-68a31e85117e', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('5c6b79b0-d3c8-221c-c277-68a31e8fa187', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d0f0d31-ce74-17e9-945b-68a31e354367', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('601be5b8-84d0-948c-071c-68a31e310f8e', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60d453a6-fb8a-1707-a183-68a31eb1fecd', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62944c69-143f-bd0d-d2f5-68a31eae3f98', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('63339e29-7569-5786-2d50-68a31e99ca3d', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('63c3d499-462d-04a6-fc8f-68a31e65247b', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64563b5b-f357-5d7e-f44f-68a31e1269df', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('64fcecf7-fac0-f141-1256-68a31e2f2583', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6595461f-75c5-e8cc-74e4-68a31ea19b67', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('66286693-5baf-fa92-f7e2-68a31eb88104', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('674b03dc-6821-1199-b7da-68a31e24054c', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67c6d719-ee04-04d5-f27a-68a31ece102c', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68e61e13-bc54-5b0f-6cd7-68a31ee139e6', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('69792d1a-5528-d359-baab-68a31e8d8303', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6bd99c36-559c-a85f-e214-68a31e935a8b', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6c40e5dc-a84d-ff62-a7b4-68a31e736427', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6c9be63c-0eed-534e-73ca-68a31ee43457', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d19084d-5ad3-f440-ed31-68a31e7f8871', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('6dc4b0a4-0d55-d2a1-e896-68a31eb7f37b', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('6e31f68a-3349-2f43-b465-68a31ecd2c14', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('6eae7f8b-c8a2-ebb3-dbbc-68a31eb1e1f5', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('6f11c867-30b5-1629-62a3-68a31e5731b9', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('6f560e37-7ba4-c3a0-88b3-68a31ef8af7e', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f848e8c-5ccb-1cd3-0313-68a31eb326e4', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('6ffa5019-3fd5-1f9a-7e89-68a31ebb71e2', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('706a3ab0-dac5-cbe2-182c-68a31ebc8853', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('70e60894-0543-3a46-0839-68a31e6707f2', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('73e3976a-38fc-5da0-b71a-68a31e74618f', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('74332b31-6a1b-2da4-63d6-68a31ebabf45', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('748228c7-2451-c874-cbc0-68a31e936928', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('74aaed69-3d42-9daa-7dab-68a31edf6db6', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75174d04-4bf8-3701-e8df-68a31eddd5c4', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7521e315-298d-8161-9f18-68a31edfd031', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('759902a9-17c6-5695-95a1-68a31e34e699', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('75b6d6bb-8d09-5297-cfe1-68a31e848be2', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('760ed0ff-ae84-b1a9-79f2-68a31e6e4250', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('766f06bb-95b2-2c90-dbcd-68a31eb07c6d', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('76fd67f9-334f-25f0-03e7-68a31e5cdef8', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('777813d1-64d6-f7b1-1689-68a31ec00626', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('777a00ab-c6bd-29a9-fa9c-68a31ed56fd2', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77de319f-181b-1b59-0710-68a31efc1b87', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('7839e13b-3525-afbf-cb16-68a31e114f43', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('788ba1ed-7b4c-7e2f-5e8b-68a31e2fa70a', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('78d7bba5-2198-92cd-f910-68a31ebaa5b1', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('79222c4d-90be-a604-33d3-68a31efd196a', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('79654f67-0a4b-6b35-ea4e-68a31e6904a8', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79f7582f-3679-05ff-e94e-68a31ec6e167', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a86e02b-c868-f343-354c-68a31edf68e8', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b10b5bf-52e6-0ce9-fa5a-68a31e53afe6', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('7bfc5c65-6e82-6046-5caa-68a31e8eb3de', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c8f2528-96dd-1f47-1c1d-68a31ed0c6df', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d1b1e73-e44a-c457-8d73-68a31ed99b36', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d904389-0676-0888-7ba6-68a31e317d6c', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('7e3c9a94-f018-e9ec-55b1-68a31e1d3175', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('7e91bfa2-0b06-72d1-24e5-68a31e773d51', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ed80738-7cc8-eceb-231d-68a31e10c539', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ee2310b-ddc1-4379-e536-68a31e82f68c', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('7f1ff7eb-eab6-4e21-641b-68a31e00bf3d', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f6c4dc9-b250-a618-7b92-68a31eb87223', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('7f9679dd-e816-1f7f-494d-68a31ee1af7a', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ff9e695-d43a-9fef-a943-68a31e3f96af', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('80649fa8-816c-6367-53f2-68a31ebcac0d', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('80d0be82-f60c-45cb-454d-68a31ea5cbf5', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80e091ab-5374-2edc-858f-68a31ee566a2', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81873092-1d1b-3274-f2ee-68a31e37183e', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82167db0-0cc3-5c0b-6164-68a31eb27615', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('838fc92a-1ffe-e7f8-4913-68a31ef7d918', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83f09f0c-c949-8ca2-63cc-68a31ed01aa3', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('841016c1-9348-ff08-884b-68a31e5fa1a9', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8449e82c-eaa8-9003-9903-68a31e4e9808', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84b12d49-0f8a-f4d7-74c4-68a31e2026a3', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8538c7de-7bb5-6d61-0fa7-68a31eb263f3', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('85cfeee3-a874-8ac4-d8db-68a31edc062d', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('85d6b86e-4004-2bfd-d8b4-68a31e361da8', 'securitygroups_outboundemailaccounts', 'SecurityGroups', 'securitygroups', 'id', 'OutboundEmailAccounts', 'outbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'OutboundEmailAccounts', 0, 0),
('8663247a-f848-621f-008d-68a31ee79b3e', 'outbound_email_owner_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86938bdb-6aee-9ca4-45fa-68a31e1cf8b9', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('86d09251-3baa-0cf7-a549-68a31e91db10', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('872f055a-b403-25be-f8f9-68a31e2fd673', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('87556de6-b9e6-7578-436f-68a31e203f38', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('87b0f019-2667-1351-e521-68a31e19fa31', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('87d721a6-96a9-b9d5-b30d-68a31e622652', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('882e249b-4a74-6e1b-2f37-68a31e2887ee', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('88a33ca4-0975-117e-eef3-68a31e9b3418', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('8917d356-2293-eefa-b725-68a31e850ac5', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89441741-87d2-b724-d499-68a31e619e8a', 'externaloauthconnection_modified_user', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('896c9258-9b12-6d28-e6c1-68a31ef34511', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89d5c516-5ea8-f098-c8f7-68a31ec26af7', 'externaloauthconnection_created_by', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a62694c-3b97-9858-3001-68a31e2be47c', 'securitygroups_externaloauthconnection', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthConnection', 0, 0),
('8aec28c1-29f7-4b16-1425-68a31e542029', 'external_oauth_connections_external_oauth_providers', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'external_oauth_provider_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c7a4200-06e3-8ef5-d28e-68a31e1595f1', 'externaloauthprovider_modified_user', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ced418d-e43f-a3a5-2945-68a31ed40057', 'externaloauthprovider_created_by', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d2a55c3-dc8d-4d98-236b-68a31e2c5ad9', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d81799f-9331-d4ac-4053-68a31eb4dd2f', 'securitygroups_externaloauthprovider', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthProvider', 0, 0),
('8dc0d7c0-58d5-9b44-f9df-68a31e6ed8c1', 'users_users_password_link', 'Users', 'users', 'id', NULL, 'users_signatures', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e3fd4f8-2a3c-7523-ed31-68a31e251af4', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('8e86d6a0-6452-ec2a-8e0e-68a31ed8eea2', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8eb8005d-bc77-41cc-4170-68a31eb0168e', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('8f0f6594-e5f0-c570-3dc6-68a31e5a0dd3', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f900e07-ad8b-6b3d-4732-68a31e16ee38', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8fc7058f-365e-8ab9-faf3-68a31ef078da', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ffb6d10-d60a-f338-2768-68a31e5dc3f2', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9058230f-db3b-3657-1a2f-68a31e66ffaa', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9091b58e-186f-338d-9ea0-68a31e6d8f2b', 'oauth2tokens_modified_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90b2df39-6221-2a7b-892a-68a31e976668', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('910a87a9-3e8e-4005-7945-68a31ee1f434', 'oauth2tokens_created_by', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('911e7d5c-542f-30b6-eaba-68a31e0d59d3', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91a37d3f-47bb-4166-b2b8-68a31ea29152', 'oauth2tokens_assigned_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('921e4de2-3010-fd4c-39e8-68a31e853118', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('928b3a02-5a42-2edb-8c07-68a31eb691f2', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('92f16e0c-8b09-b667-4ca9-68a31e488fc2', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('935031e8-6d90-ea53-8dbe-68a31e312c46', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('93688002-a9cd-a1be-90de-68a31e9b7906', 'oauth2clients_modified_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('939f0332-495c-9dfc-1d27-68a31e6b260a', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('9403ce9e-cad0-6126-7874-68a31e9ac7f3', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('943bce47-0c00-2d96-86de-68a31efe03b3', 'oauth2clients_created_by', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94596e34-66be-9cd4-459d-68a31e063102', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94b2ca7b-2ddf-9a47-57f3-68a31efe8516', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94ef3845-9abf-db78-65f9-68a31eea6725', 'oauth2clients_oauth2tokens', 'OAuth2Clients', 'oauth2clients', 'id', 'OAuth2Tokens', 'oauth2tokens', 'client', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('950967ba-d571-603f-c230-68a31e83222e', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9579ad9b-9b4f-cc1a-7532-68a31e60d2ba', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('959884fd-4680-bd92-1b8d-68a31e596b3f', 'oauth2clients_assigned_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97a83706-f4e9-06b1-483f-68a31e719258', 'surveyresponses_modified_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97effb13-5bdf-6d86-1601-68a31e77fb5d', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('98565924-b4d3-b56e-76de-68a31e0bb32d', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('9858bfd7-2f16-3b51-2a1e-68a31e28304f', 'surveyresponses_created_by', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98740d0c-7971-47af-b0b4-68a31e8d7a5e', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98b89dc2-ec69-1248-f4eb-68a31eb132c2', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('98e4d867-4263-5bba-b28e-68a31eb11acc', 'surveyresponses_assigned_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99176874-63d5-5400-9b79-68a31eb334a3', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('99743376-d3f7-035e-fe86-68a31e7db506', 'securitygroups_surveyresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyResponses', 'surveyresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyResponses', 0, 0),
('99a360b5-cb18-3ce7-bee9-68a31ee5ca9e', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('99fbba5a-cc9c-e263-e600-68a31eb833b5', 'surveyresponses_surveyquestionresponses', 'SurveyResponses', 'surveyresponses', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyresponse_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a2560be-6d8e-e6d0-2deb-68a31e72f9dd', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('9a9084ac-5b94-5051-60b0-68a31ec8bf0e', 'surveyresponses_contacts', 'Contacts', 'contacts', 'id', 'SurveyResponses', 'surveyresponses', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('9a984e6b-3ea3-01b9-dd4b-68a31ecdc97d', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9af90ee8-9ae0-3274-02c4-68a31edefff5', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b1deee1-b482-60b7-8934-68a31ec126e1', 'surveyresponses_accounts', 'Accounts', 'accounts', 'id', 'SurveyResponses', 'surveyresponses', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b617ca4-677c-6420-8b49-68a31e36f168', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c535e8f-e7de-d200-4f28-68a31ef6c2bb', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c8f9124-aca2-a953-c9fc-68a31e16e0d0', 'surveys_modified_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ca3669b-6a1c-8631-a8cb-68a31e79fe1a', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9cea9018-4330-052b-a1b3-68a31ef4227b', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d120ae3-95b2-c555-76b4-68a31e63eaf5', 'surveys_created_by', 'Users', 'users', 'id', 'Surveys', 'surveys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d35a227-22c5-040b-ad01-68a31e0d9488', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('9d858293-f60a-8356-f9a7-68a31eff46e3', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9da16cda-3974-4309-232f-68a31e70c576', 'surveys_assigned_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9de0336f-790a-f271-7668-68a31e8aaa99', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e275772-b780-6fea-d387-68a31ed7b295', 'securitygroups_surveys', 'SecurityGroups', 'securitygroups', 'id', 'Surveys', 'surveys', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Surveys', 0, 0),
('9e5f895f-6248-5710-4ed2-68a31e12d8f4', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9eb6faa5-0fda-5e8a-e3af-68a31e32ecd7', 'surveys_surveyquestions', 'Surveys', 'surveys', 'id', 'SurveyQuestions', 'surveyquestions', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ec9cb90-953f-4fea-6aad-68a31e00986e', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f19dd85-56af-b043-5c1e-68a31e948b89', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f3740e7-95ec-59fa-509e-68a31e6e96b6', 'surveys_surveyresponses', 'Surveys', 'surveys', 'id', 'SurveyResponses', 'surveyresponses', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f5ea8c0-8b19-9ba4-2fa5-68a31e2ef0b4', 'campaign_notes', 'Campaigns', 'campaigns', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Campaigns', 0, 0),
('9fa90e0a-ba89-7254-c159-68a31e3464c4', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9faf0f23-0a7a-386c-869d-68a31e7661cf', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9fb24593-a42b-e59f-9b8e-68a31eb95ab3', 'surveys_campaigns', 'Surveys', 'surveys', 'id', 'Campaigns', 'campaigns', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ff2fbac-5e8c-fa0e-67d1-68a31e77af69', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a049b5da-7e9c-444a-5a04-68a31ea210d7', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0b29e0d-9da3-7b8f-0af1-68a31e78f0fa', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a114d189-965e-4a90-da5a-68a31ed8d980', 'surveyquestionresponses_modified_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a121f86b-df9d-667e-592f-68a31e40f581', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1af3af2-d04c-a330-1304-68a31e4ab092', 'surveyquestionresponses_created_by', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1b76c2a-09b3-1053-f3ba-68a31e516d38', 'surveyresponses_campaigns', 'Campaigns', 'campaigns', 'id', 'SurveyResponses', 'surveyresponses', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a241cb95-efcb-9a06-e6dd-68a31ec2f38c', 'surveyquestionresponses_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a27f01bb-4843-91e3-6ce0-68a31e21b1b8', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'ProspectLists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2a482fe-08a5-8b8b-b697-68a31e3c396d', 'securitygroups_surveyquestionresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionResponses', 0, 0),
('a2e81f46-7263-df6f-726b-68a31ef4d3ee', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('a43d516b-1ba5-d475-f0b2-68a31e444507', 'surveyquestions_modified_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4b03e79-e2b5-d90f-5892-68a31e976bc3', 'surveyquestions_created_by', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4fa6c75-2b28-8292-8e85-68a31e7d9625', 'surveyquestions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a545750b-cd82-811f-17e9-68a31ef81435', 'securitygroups_surveyquestions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestions', 'surveyquestions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestions', 0, 0),
('a550dfbf-fd27-329d-2544-68a31e70cb7d', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a591c98e-7b06-f8c3-62d8-68a31e5902e7', 'surveyquestions_surveyquestionoptions', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'survey_question_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5da82d8-7908-5fab-9368-68a31efd096f', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5e42115-8783-cf56-a280-68a31e19c590', 'surveyquestions_surveyquestionresponses', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyquestion_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a664e925-add7-2e21-56b3-68a31eda4a15', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6d058c6-b819-606f-c7cd-68a31e164a0e', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('a733efc8-504a-1c9c-337c-68a31ed615b2', 'surveyquestionoptions_modified_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a75c0c88-03bf-78b0-93e3-68a31ef11b85', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('a78b0f8c-6bf4-100e-47fd-68a31eb29610', 'surveyquestionoptions_created_by', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7d6ecd8-fd76-5ca2-a6bf-68a31e8a16a8', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('a7ddf94f-f9d3-f1ef-7ca2-68a31ef016b6', 'surveyquestionoptions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a83b9f44-f2a7-b3e1-125f-68a31e98b169', 'securitygroups_surveyquestionoptions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionOptions', 0, 0),
('a84ce31d-0e66-6f91-ac89-68a31e3b56d1', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('a8ab7a17-73d3-fef3-8abf-68a31ebbbb8d', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('a914935f-164c-ebf5-b93a-68a31e0f6da3', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('a98e60b7-a431-238b-646f-68a31e5f2791', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('aa04eb9f-cd84-33f3-b283-68a31e179e7b', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('aa86afec-c9d8-f514-8a6d-68a31efdb237', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('ab5c0a59-167a-5816-5183-68a31e8e6fa3', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ada0a625-611a-6c32-c84a-68a31e264ea0', 'securitygroups_emailmarketing', 'SecurityGroups', 'securitygroups', 'id', 'EmailMarketing', 'email_marketing', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailMarketing', 0, 0),
('ae41989c-b6b4-2793-651a-68a31e896212', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af1d7d00-3031-6d8c-420c-68a31e380e4f', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b0891ffd-a1c0-31c4-e6a0-68a31eb35e08', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('b0c41015-3686-911b-0267-68a31e0f893e', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('b0eadff2-4d1e-af86-bb4f-68a31e622285', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b14d2a56-8485-ec6e-9c3f-68a31e216548', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('b158aba3-fece-9cb9-0071-68a31ef94767', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1d84c05-d310-f0ca-34de-68a31e03d819', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('b21660d3-82ec-4614-015a-68a31e2bf30a', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b24fda2b-a92d-973b-1a41-68a31ea338eb', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('b2d69e7f-59d7-5d6d-a9f4-68a31ecb0e14', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('b354cf6f-2886-1721-5719-68a31e3bb913', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('b3718165-3eb1-a4c6-cbdf-68a31e942939', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3c0f84d-491f-db67-83e5-68a31eca4d4b', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('b3c2ea9b-5ec8-77c6-e3ff-68a31e531918', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b42e38da-c09e-05c8-68e7-68a31e4e5d09', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('b4420546-a6d9-cef3-97d9-68a31e2ebdee', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b48c4267-d12c-1ca1-8796-68a31e9199f8', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('b4a4c334-8ced-c097-d8b1-68a31e6eb641', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('b4e61003-b381-fafa-97b0-68a31e2e8784', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('b5070d89-8e17-6e91-3da3-68a31e4a1918', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('b5090c22-a3fd-5f3b-0888-68a31ee6c5a4', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b55d3329-d563-ddcf-095d-68a31ea2c5a7', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('b565cb85-9f4b-bd10-271a-68a31e8a5cad', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('b5b1ef43-92c2-abcb-54de-68a31e3475ed', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('b5c14346-0ca2-c18b-88ce-68a31e15b361', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b618ee2d-1619-ab9c-bdac-68a31e6811dd', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b6266e06-ead3-44fa-35ad-68a31ed1360c', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('b67a42a5-3d33-e118-7a66-68a31e597f43', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b68f9e31-bb81-42fc-51b9-68a31e4c0512', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('b6e5ef46-5f8c-aa3e-1cfd-68a31ec94452', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b6f72a59-15b3-3e9a-80ef-68a31e2c8ef5', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('b73de24b-46c6-8c82-853f-68a31eb4e315', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('b787fdcc-ddc1-0ee6-9765-68a31ee1e4c9', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('b7914a19-af28-9ea0-6ff1-68a31ef4c243', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('b7ef987d-05af-0321-ae8f-68a31e12a59d', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('b80569be-5006-d273-8b13-68a31ee3b877', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('b844a7f9-dc91-1720-3a20-68a31ebf83ac', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8787807-3511-42f9-2c1e-68a31e64d9e4', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('b8a9c4a7-ae8c-7087-9ecd-68a31e7181bc', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8e00b79-3dfa-0134-0478-68a31e35a27f', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8f202dc-4014-6e77-a062-68a31e4daaf0', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('b913664f-5ec0-d847-009a-68a31ee03b9d', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9776448-3240-a797-c36e-68a31e93c858', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('b979e2dd-e616-99e1-e5ed-68a31e506cbb', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba0a943c-397b-06cd-65c2-68a31ec431dd', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('ba92a279-8bbd-0c86-68a7-68a31e83b0a8', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('bb23f362-e5ce-3580-e800-68a31ef978ab', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('bbc85b5b-e5f0-a313-77f6-68a31e4a4149', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('bc266b21-5d01-377e-619f-68a31eb6d9ad', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc4a15c7-a541-909f-d687-68a31e33d33f', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('bc7ee34b-e91c-0f90-e6b7-68a31e5e0396', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bccf7d2a-d386-6031-b360-68a31efd974b', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bcd3d2cc-0eab-bee8-4325-68a31e617de9', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('bd204de9-c71a-004e-384a-68a31e9251ed', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('bd4cb36a-7cd2-6d23-5bb8-68a31ebd358a', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('bd6f495d-e4ef-83cf-ac47-68a31e2222e9', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('bdd0211e-d696-a2eb-b9b5-68a31e48eb9f', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('bddc327c-45b5-d4fa-d9ed-68a31eba6c4e', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('be4b2248-a9a0-a5b6-587a-68a31ecde656', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be6a109f-72f1-50ba-a2fd-68a31e531c43', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('bebfe072-6057-da8e-bf76-68a31e79b5c5', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bef7446d-ce0b-7af3-2327-68a31e8a16de', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('bf322d62-8ce1-6a5f-f024-68a31efe5e9e', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('bf9aea12-8f5e-901b-63df-68a31e6f2766', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('bffab493-375e-9c7e-ea4a-68a31e3e2422', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c00e46af-f972-e6ea-9ada-68a31ea71969', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('c04a2d5b-695c-bef1-12dd-68a31efde1d9', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c0a082ff-be76-f277-c5b6-68a31efb9c9f', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c0a8ce46-9f47-89bd-ece6-68a31e5a4ae4', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('c0e81f21-79db-ceb3-622d-68a31ed5a6e5', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c12e08da-3ff8-2374-b6a8-68a31e98357b', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c130fe6c-13cd-18ea-febb-68a31ec763e1', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('c19aab61-9cb0-7e60-253e-68a31ebb337a', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1b9d0f4-2964-a736-a881-68a31e75ed47', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('c1f2813c-794b-6840-ef55-68a31e255bd8', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c23eb0d6-6b08-348d-a633-68a31e85a1ef', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('c246979e-7552-2510-9c8d-68a31e119765', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c2cd5d63-5103-33ab-356c-68a31e08378c', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('c365ab0f-ebb7-9c31-ad6c-68a31e97c9e8', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('c3eaf168-c508-4abb-1c21-68a31e117786', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('c443a745-3ce7-f090-8937-68a31e37d2bf', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('c499d8de-9f65-1127-cade-68a31e7ad999', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c4eb171d-ffb9-26fb-eeb3-68a31e3f03d4', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('c4f3c464-d9ea-eb46-0679-68a31e5017c6', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c54c2ef6-bdbf-fb96-4520-68a31e7bc624', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c567d990-612a-365b-032b-68a31e3ff961', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('c59fca3c-0889-3c09-a60b-68a31e542ba0', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5e617a5-4e9f-ddbe-6f65-68a31e5ee362', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('c60628ff-0919-09ff-0c76-68a31e22cdb4', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('c662c1af-716f-5560-0db5-68a31ef5372a', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('c6744752-ddf8-1084-8394-68a31ee9afe4', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('c6b9cb60-6fe1-6aff-6b9f-68a31e3055f2', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('c6fbc985-34da-7737-1d47-68a31e8be4d5', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('c71bf3b7-108a-dc52-4296-68a31e8be795', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('c79b0054-39e7-9310-eb6b-68a31ec5343c', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('c79c1c59-6f6b-63af-1065-68a31e1002b5', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('c8262f71-12fc-beb1-1fea-68a31efe74be', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('c82d5a91-b6ae-6b78-8107-68a31eec48f2', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('c894c956-3892-5257-33d0-68a31eaf0f76', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c8c3baa4-1a22-0736-eb96-68a31e575a42', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('c8dedb70-4cd7-c9ce-e8d1-68a31e88775d', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c930b6d7-7b7f-71b3-5412-68a31e913727', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c964c46b-a210-9501-ed05-68a31ea35b88', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('c99a0530-afee-c162-8ede-68a31e598b39', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca0085de-afc1-e6ac-bed2-68a31ed990b1', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca047fa0-7fd0-3aec-d4ce-68a31ea6bec4', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('ca170017-2126-6f99-7d9d-68a31e676208', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('caa1e924-209e-dde4-ffbb-68a31eb37322', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('cb33a787-f5e9-3b49-a7ab-68a31eba70a7', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('cbc0eb82-6652-1dea-33f4-68a31eef1034', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('cc569925-7c24-31a4-3e91-68a31e0c75ce', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('cce3b380-49b8-98ea-83fe-68a31ec51692', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('ccf13a41-7f7e-d968-9743-68a31e9e8c7d', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('cd5d67fa-d4f0-26d2-1892-68a31e386776', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cd7cb538-75ca-01ef-502f-68a31e69a307', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('cdfb5197-23c8-2bfe-c754-68a31e1fea37', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('ce492429-01e3-b737-1202-68a31e93aab5', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce768e40-2085-bdc6-05b6-68a31e3d7f99', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('ceb1b83f-08ae-505f-2c89-68a31ed3f08d', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('cf0010e2-93e0-8dae-4f84-68a31ec313f8', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('cf438a96-d2d0-eeb0-8c9f-68a31ecec13e', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf8bbd9f-85a7-02aa-d5c8-68a31ee5a764', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('cfd52ca6-a95a-051f-94bc-68a31e250b44', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d001ae02-4827-36d2-0cbf-68a31e9921b7', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('d06c5f31-52f5-7e01-76c4-68a31e537d6d', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('d0cab901-2d19-61c6-4980-68a31ec8bfa6', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('d0eec219-8147-39e8-e6f9-68a31ec8dcbb', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d159e5d4-504c-a5db-6fce-68a31e7102f9', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d1b0776e-7c23-fa6d-fa2d-68a31e86ab0f', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d1b10e35-b4ba-ed50-48a7-68a31eef9df8', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d2092e70-d553-5c9a-0d02-68a31eac2866', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('d258b69f-19a4-4284-767e-68a31e3dfab3', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('d25d2a03-b7e2-e9ba-f572-68a31e296f83', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('d2af0c8b-2fc9-5dae-878d-68a31e5ad0d5', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d2ea3860-60d8-8bfc-bbcb-68a31ebb6f4e', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('d3b2f1c9-5e19-9756-2dee-68a31e83aef6', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('d42fcf09-96e0-4529-179c-68a31e15a9b5', 'surveyquestionoptions_surveyquestionresponses', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'surveyquestionoptions_surveyquestionresponses', 'surveyq72c7options_ida', 'surveyq10d4sponses_idb', 'many-to-many', NULL, NULL, 0, 0),
('d4a5d04d-3406-4960-0174-68a31ee4170c', 'aos_products_documents_1', 'AOS_Products', 'aos_products', 'id', 'Documents', 'documents', 'id', 'aos_products_documents_1_c', 'aos_products_documents_1aos_products_ida', 'aos_products_documents_1documents_idb', 'many-to-many', NULL, NULL, 0, 0),
('d4d59648-60af-0ecf-93b0-68a31e8a0e2a', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d56dcace-07cc-7917-c02b-68a31efe4ced', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5e5e955-b1cc-976c-d709-68a31eb526d6', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d664421d-951c-ecf1-5541-68a31e46b0b0', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('d6e54db6-01c4-8647-5dc5-68a31e381c1e', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d76ba558-6c19-02e2-eaca-68a31e59290d', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('d79a0137-a49d-2611-5478-68a31eef65ae', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7ea8fc3-d76d-1d39-ca19-68a31e5f7834', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('d86806da-1dad-8bc3-a5aa-68a31eee3e60', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('d8ea2072-b8eb-9e21-9149-68a31ecba74a', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('d96c4062-78a6-2f3e-6d51-68a31ed56dcb', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Meetings', 0, 0),
('db07484d-f70c-652d-8c8b-68a31ef5d4ab', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db8f46b8-2106-7b5e-cb84-68a31ecb1034', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc08d785-ac0a-0bcd-91be-68a31e013b13', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc83ce37-9799-3d4a-ae59-68a31e4afa1e', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('dcfbf262-a390-8ef0-1240-68a31eb20529', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('dfb5794a-c74c-8cf9-7804-68a31ee37f87', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e04c98ff-2c39-106d-0797-68a31e16f6f4', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0ccf2b7-cf4c-9f4e-4241-68a31e7f91bf', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e12f6c8c-8dd5-dadf-592b-68a31e526c18', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('e18dee78-8a7b-cf80-f89e-68a31eca26b8', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e501ca01-0945-1b84-ca22-68a31ee2d928', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e579fc6d-dcf8-f654-cfbe-68a31ec5371a', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e5ed1aed-cf8b-9236-d071-68a31e1adca6', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6fa85a6-2ba1-7540-9845-68a31ead3eb3', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e7569e52-cded-21d3-66ea-68a31ebcba66', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e7c806c9-ce21-57c5-aa4e-68a31e61a644', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e8418290-677e-0c94-5253-68a31e9cc02f', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('e8b10520-ec8a-cad1-55d5-68a31e30e4f8', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eaaf01a4-4fd1-2bec-7666-68a31efcfae5', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ed5d0d84-58f6-450f-80b6-68a31e147ea9', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eec6534d-42d8-136e-42d8-68a31eb3c43d', 'securitygroups_inboundemail', 'SecurityGroups', 'securitygroups', 'id', 'InboundEmail', 'inbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'InboundEmail', 0, 0),
('ef56e057-a947-3065-3921-68a31e0a9f2a', 'inbound_emails_distribution_user', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'distribution_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('efd7a424-229d-17fe-04b8-68a31e1db74b', 'inbound_emails_autoreply_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0342968-be8a-db2d-1420-68a31eac2fb0', 'inbound_emails_case_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'create_case_template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f089e175-6895-6100-e8da-68a31ed5ebd2', 'inbound_emails_external_oauth_connections', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'InboundEmail', 'inbound_email', 'external_oauth_connection_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0eeee36-58bc-64c6-aecf-68a31ed3e7dd', 'inbound_outbound_email_accounts', 'OutboundEmailAccounts', 'outbound_email', 'id', 'InboundEmail', 'inbound_email', 'outbound_email_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f15e7a36-d4b0-35aa-c571-68a31ecb40ce', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('f1daa591-8335-f657-dcfb-68a31edec45c', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('f28f2402-e1e8-bcbe-1c3a-68a31e649362', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f602076a-5c24-1abb-231b-68a31e42b634', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fe800026-e334-5bfd-0e22-68a31eb95f85', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT -1,
  `popup_viewed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reminders`
--

INSERT INTO `reminders` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `popup`, `email`, `email_sent`, `timer_popup`, `timer_email`, `related_event_module`, `related_event_module_id`, `date_willexecute`, `popup_viewed`) VALUES
('6e8f463e-f09b-09c7-e35e-66639bf864b2', '', '2024-06-07 23:47:06', '2024-06-07 23:47:10', '1', '1', NULL, 1, NULL, 1, 0, 0, '300', '60', 'Meetings', 'cffbb5f4-57da-c4e4-994d-66639b2970c5', -1, 0),
('81705228-09e9-00a0-11e9-66639bb72d2f', '', '2024-06-07 23:44:17', '2024-06-07 23:47:06', '1', '1', NULL, 1, '', 1, 0, 0, '300', '60', 'Meetings', 'cffbb5f4-57da-c4e4-994d-66639b2970c5', 1717736400, 0),
('d8514b4b-bd66-3e54-6201-66639ca58a69', '', '2024-06-07 23:47:10', '2024-06-07 23:47:18', '1', '1', NULL, 0, '', 1, 0, 0, '300', '60', 'Meetings', 'cffbb5f4-57da-c4e4-994d-66639b2970c5', 1717779600, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reminders_invitees`
--

INSERT INTO `reminders_invitees` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `reminder_id`, `related_invitee_module`, `related_invitee_module_id`) VALUES
('3123e866-79a2-4b36-2d9d-66639c95f45a', '', '2024-06-07 23:47:10', '2024-06-07 23:47:10', '1', '1', NULL, 0, NULL, 'd8514b4b-bd66-3e54-6201-66639ca58a69', 'Users', '1'),
('c53ec415-1040-e74a-0af0-66639b2f7245', '', '2024-06-07 23:47:06', '2024-06-07 23:47:10', '1', '1', NULL, 1, NULL, '6e8f463e-f09b-09c7-e35e-66639bf864b2', 'Users', '1'),
('d1c3c134-a367-c8ef-a194-66639bee140e', '', '2024-06-07 23:44:17', '2024-06-07 23:47:06', '1', '1', NULL, 1, NULL, '81705228-09e9-00a0-11e9-66639bb72d2f', 'Users', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `modules` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('8986b25f-5301-b4f1-fc1e-664e82c3d024', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 08:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('8f4db010-a654-2a64-2903-664e829ea1b4', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 08:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('9671b232-c428-e6f6-2d03-664e82e22017', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 13:45:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('9d3ce8e4-78c1-60b5-69a3-664e8282a923', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 15:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('a42e4a5a-b924-55d2-4b5b-664e82787b12', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 13:30:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('ab043289-028a-1125-504d-664e82b3124f', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 09:30:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('b02cf099-e458-832e-6ab6-664e825a3141', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 09:30:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('b56483d5-49ac-de84-ea09-664e82896a76', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 06:45:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('ba948670-1140-abe1-2997-664e82c29a47', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 13:30:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('bf6d5b73-a1e5-bd34-0ec0-664e82d27573', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 06:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('c612e7d9-864a-bb4c-eedb-664e82f8110e', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 17:45:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('cc1dd2ce-7fa3-86fd-b92b-664e82a0f13f', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 08:00:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('d13f698e-72fe-b8e5-4902-664e82485120', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 10:15:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('d6d563fd-00e2-dcc8-4228-664e821927b4', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Google Calendar Sync', 'function::syncGoogleCalendar', '2015-01-01 11:15:01', NULL, '*/15::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('dbf7184d-55e6-2807-e44f-664e82f775c7', 0, '2024-05-22 23:38:30', '2024-05-22 23:38:30', '1', '1', 'Perform Elasticsearch Index', 'function::runElasticSearchIndexerScheduler', '2015-01-01 10:15:01', NULL, '30::4::*::*::*', NULL, NULL, NULL, 'Active', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spots`
--

CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('161fdebd-0cda-db9b-5a8f-664ea77e4d9c', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:d21fecc2-da67-e429-ef89-664ea7121189:Alejandro Maldonado]', '2024-05-23 02:16:34', '2024-05-23 02:16:34', '1', '1', NULL, 0, '1', 'Leads', 'd21fecc2-da67-e429-ef89-664ea7121189', NULL, NULL),
('23e5242f-f4d8-1d70-471e-664ea73cb202', '<b>{this.CREATED_BY}</b> {SugarFeed.CONVERTED_LEAD} [Leads:d21fecc2-da67-e429-ef89-664ea7121189:Alejandro Maldonado]', '2024-05-23 02:18:41', '2024-05-23 02:18:41', '1', '1', NULL, 0, '1', 'Leads', 'd21fecc2-da67-e429-ef89-664ea7121189', NULL, NULL),
('58296d53-9101-d46f-1e19-66973c4e61e1', '<b>{this.CREATED_BY}</b> Orden de compra 7 en mal estado', '2024-07-17 03:39:39', '2024-07-17 03:39:39', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'UserFeed', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, NULL),
('60bcdb26-4ccd-3b3d-f481-66973cde6e97', '<b>{this.CREATED_BY}</b> Orden de compra 7 en mal estado', '2024-07-17 03:39:36', '2024-07-17 03:39:36', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'UserFeed', '7a9b55d8-65cd-8340-9d5f-6689f7135431', NULL, NULL),
('7580fa33-9e4d-7d74-e339-664ea69fdd36', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:e40003ff-95be-84d8-0b16-664ea6f83d86:MYB] {SugarFeed.WITH} [Accounts:e433e866-1aca-63c6-6e7e-664e9edbb0c1:Alejandro Maldonado] {SugarFeed.FOR_AMOUNT} $0.00', '2024-05-23 02:14:31', '2024-05-23 02:14:31', '1', '1', NULL, 0, '1', 'Opportunities', 'e40003ff-95be-84d8-0b16-664ea6f83d86', NULL, NULL),
('a9fb0823-2014-211b-4a2b-664ea7934c90', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:3b1f9a81-71fe-452c-66b1-664ea742367c:jhda] {SugarFeed.WITH} [Accounts:1cd59f6f-502d-44d3-826b-664ea70e6522:hiug] {SugarFeed.FOR_AMOUNT} $1,000,000.00', '2024-05-23 02:18:41', '2024-05-23 02:18:41', '1', '1', NULL, 0, '1', 'Opportunities', '3b1f9a81-71fe-452c-66b1-664ea742367c', NULL, NULL),
('bf456194-c86a-1eb1-260e-664ea713a5ea', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:1ca93217-f347-5bb5-42e6-664ea763304c:Alejandro Maldonado]', '2024-05-23 02:18:41', '2024-05-23 02:18:41', '1', '1', NULL, 0, '1', 'Contacts', '1ca93217-f347-5bb5-42e6-664ea763304c', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveyquestionoptions`
--

CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveyquestionoptions_audit`
--

CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveyquestionoptions_surveyquestionresponses`
--

CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveyquestionresponses`
--

CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveyquestionresponses_audit`
--

CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveyquestions_audit`
--

CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveyresponses`
--

CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveyresponses_audit`
--

CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveys`
--

CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'LBL_DRAFT',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveys_audit`
--

CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT 0,
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT 0,
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `status`, `date_due_flag`, `date_due`, `date_start_flag`, `date_start`, `parent_type`, `parent_id`, `contact_id`, `priority`) VALUES
('129fe629-4e67-94d1-b3ec-6734180caebc', '43.00', '2024-11-13 03:11:41', '2024-11-13 03:11:41', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', 'f182d4a7-e503-fada-9906-6734185bdb5e', NULL, ''),
('14a9b654-d04c-ff7f-52e6-6733f7af7787', '12.00', '2024-11-13 00:49:44', '2024-11-13 00:49:44', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('14ad7174-3ea0-ed6c-74b7-67341702519d', '40.00', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '72c55774-cb84-60f5-cd19-673417d4f55e', NULL, ''),
('150b061a-415f-9f01-5ae2-673776c36113', '52.00', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '7dd74d54-33ed-b571-f1a3-673776d19c00', NULL, ''),
('1b9bad1e-ec00-38d7-7879-673417cab13f', '42.00', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '7e065d1c-1c3a-0051-c7f2-6734174d5f55', NULL, ''),
('1bcaf763-184d-f149-912c-67325929cad5', '9.00', '2024-11-11 19:24:22', '2024-11-11 19:24:22', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('1ffa65e8-8958-ddc2-337f-6733f91f75e5', '14.00', '2024-11-13 00:57:19', '2024-11-13 00:57:19', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('207e0604-5aee-e178-b26a-673417a9a499', '35.00', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '6a232430-6ce1-e3e2-5072-67341720c46a', NULL, ''),
('21d59fbd-0d24-e3ee-8434-673776d70919', '51.00', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '98b21136-f308-2242-9254-6737761eb014', NULL, ''),
('2287721f-0655-47e2-c647-673417c2466b', '41.00', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '800621b8-db8d-a632-1a05-6734179baae6', NULL, ''),
('23b33b6e-9155-63c9-57a6-673411c7f5c0', '29.00', '2024-11-13 02:38:57', '2024-11-13 02:38:57', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('24816ce7-657e-7c53-567c-673417af4af9', '38.00', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '17235a56-9c30-8aba-0fbd-673417bc6151', NULL, ''),
('2547e6b1-8e40-d7e3-c91c-67340080d12d', '26.00', '2024-11-13 01:29:05', '2024-11-13 01:29:05', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('26078846-004c-0be2-94be-6736b617ab04', '46.00', '2024-11-15 02:48:06', '2024-11-15 02:48:06', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '264306db-1c88-a446-bea8-6736b6d8011c', NULL, ''),
('271f7c75-627f-575f-4ddc-6733ffecf793', '25.00', '2024-11-13 01:23:33', '2024-11-13 01:23:33', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('28212f9b-dcd2-4dbf-900f-6736b633e54b', '47.00', '2024-11-15 02:48:06', '2024-11-15 02:48:06', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '67b36cbe-a0bd-a583-6ee0-6736b6a0583a', NULL, ''),
('2bb5fe61-679a-088e-3dec-6733fa855a01', '15.00', '2024-11-13 01:02:56', '2024-11-13 01:02:56', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('2e42babd-3fef-8a97-f579-673417b55c56', '33.00', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '103a19aa-9512-c5c4-30ef-673417096116', NULL, ''),
('301ff8bf-eb4f-cf12-5e02-673416bba610', '32.00', '2024-11-13 03:01:05', '2024-11-13 03:01:05', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '358bc8d4-eac3-7c01-8167-673416efba2e', NULL, ''),
('3406bffd-fe76-ebf0-265f-67343507419d', '45.00', '2024-11-13 05:15:12', '2024-11-13 05:15:12', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '7abdc537-b160-aaae-0db0-673435432b90', NULL, ''),
('3e515050-757b-0196-71c3-6733fd6d9301', '20.00', '2024-11-13 01:14:43', '2024-11-13 01:14:43', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('413dac25-65e8-be0c-4875-6733faa78ddb', '15.00', '2024-11-13 01:02:56', '2024-11-13 01:02:56', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('42a40811-3f1c-298f-8cef-6734001e015d', '26.00', '2024-11-13 01:29:05', '2024-11-13 01:29:05', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('477e0a72-37a8-06e7-a5bc-6697450f9033', '8.00', '2024-07-17 04:15:52', '2024-07-17 04:15:52', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '85075e93-35e2-b8bc-e5c6-669745e3ad1e', NULL, ''),
('497e5df9-dbba-ed79-90c5-67341231c139', '31.00', '2024-11-13 02:42:39', '2024-11-13 02:42:39', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', 'b39dd45d-5142-770c-f364-673412ad2932', NULL, ''),
('4ecbb335-de9e-884f-25de-6737756bc555', '49.00', '2024-11-15 16:24:22', '2024-11-15 16:24:22', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '5b091ba0-b43e-4f0d-c661-6737754e45f4', NULL, ''),
('4ee10b06-9355-dfe7-a1c1-673417539e8d', '36.00', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '611ec03a-233e-604e-65fe-67341799437b', NULL, ''),
('4fba0a11-3f64-c8aa-802c-67379d72d3da', '58.00', '2024-11-15 19:14:13', '2024-11-15 19:14:13', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '10d921b3-5ecd-4ab7-dc80-67379d52f63b', NULL, ''),
('52cadcde-e6f9-471b-9959-6733f9e3c909', '14.00', '2024-11-13 00:57:19', '2024-11-13 00:57:19', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('54b97faf-4a20-b026-2bcf-673435a61319', '44.00', '2024-11-13 05:11:34', '2024-11-13 05:11:34', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '7563be77-e7b5-442e-7e52-67343555854d', NULL, ''),
('5543d11b-7e8b-1cff-2787-6733fd8037b1', '18.00', '2024-11-13 01:12:39', '2024-11-13 01:12:39', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('5bac7965-5c0f-9e71-93aa-673411dcf874', '30.00', '2024-11-13 02:40:10', '2024-11-13 02:40:10', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('5dedc561-a628-0ef3-90ca-669745be8b73', '8.00', '2024-07-17 04:15:52', '2024-07-17 04:15:52', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '85075e93-35e2-b8bc-e5c6-669745e3ad1e', NULL, ''),
('622cbc7a-f485-03da-324b-6733fc74f645', '17.00', '2024-11-13 01:10:26', '2024-11-13 01:10:26', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('6464b4dd-b2d1-dafa-c45b-67377684f765', '50.00', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '361fb4aa-09e2-29cd-6a43-6737764bda36', NULL, ''),
('6968ed84-5d7e-594f-6c8d-6689fee83105', '6.00', '2024-07-07 02:31:38', '2024-07-07 02:31:38', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '550a1dab-8d8c-9257-a723-6689fda3f559', NULL, ''),
('6ad432cc-252a-6873-ed8c-67379d52bf4e', '58.00', '2024-11-15 19:14:13', '2024-11-15 19:14:13', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '10d921b3-5ecd-4ab7-dc80-67379d52f63b', NULL, ''),
('6c04c9e7-b0a3-955d-617d-6733fd0d9f97', '18.00', '2024-11-13 01:12:39', '2024-11-13 01:12:39', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('6def7f2d-cbd8-2115-da51-6733fd8d25cd', '22.00', '2024-11-13 01:15:25', '2024-11-13 01:15:25', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('7279c6c6-9c33-ad09-b11a-6733f80f7218', '13.00', '2024-11-13 00:54:19', '2024-11-13 00:54:19', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('74efc27f-c53e-e80b-df8d-6733fdac9cec', '20.00', '2024-11-13 01:14:43', '2024-11-13 01:14:43', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('7d780897-edd3-f504-b1e1-673417a629da', '37.00', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '6750cd67-e976-2ec7-5769-673417ee6718', NULL, ''),
('7dcf09d9-91b7-3692-0a6f-673402955155', '28.00', '2024-11-13 01:34:53', '2024-11-13 01:34:53', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('7fd1dafa-79e7-a8ac-6c70-6733fcdf9368', '17.00', '2024-11-13 01:10:26', '2024-11-13 01:10:26', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('8034d99a-6cf9-60d1-a8f3-6733fba8ba7b', '16.00', '2024-11-13 01:05:05', '2024-11-13 01:05:05', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('83e1686e-35c8-cc37-5e07-6733fdee4de7', '21.00', '2024-11-13 01:15:19', '2024-11-13 01:15:19', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('8b4047b0-cf2f-33c1-d244-6733fd0273b6', '22.00', '2024-11-13 01:15:25', '2024-11-13 01:15:25', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('8d3bbbae-8b41-f306-6236-6663bcea3d1a', 'TEXTIL', '2024-06-08 02:07:29', '2024-06-08 02:07:29', '1', '1', '', 0, '1', 'Not Started', 1, '2024-06-10 09:00:00', 1, '2024-06-07 09:00:00', 'AOS_Quotes', 'b8c20b19-1bde-51e4-67f9-6663979eec53', '', 'Medium'),
('9217e0e6-bb05-302f-28b0-6734182859b9', '43.00', '2024-11-13 03:11:41', '2024-11-13 03:11:41', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', 'f182d4a7-e503-fada-9906-6734185bdb5e', NULL, ''),
('999408b9-c852-f382-8c62-673776953902', '53.00', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '748e5c4b-4bdc-b48b-0bc6-673776dfd4f9', NULL, ''),
('9f060f2c-c8f1-2581-6211-673776b976b2', '56.00', '2024-11-15 16:27:44', '2024-11-15 16:27:44', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '54264daa-9810-c0c6-cd55-673776d51e6b', NULL, ''),
('a014ea7d-d5d6-51f8-8d13-67325987e248', '9.00', '2024-11-11 19:24:22', '2024-11-11 19:24:22', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('a0801e15-d621-ee0e-de85-6733f832a787', '13.00', '2024-11-13 00:54:19', '2024-11-13 00:54:19', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('a2a96699-9d0b-6b9c-4735-6733fe0154ba', '24.00', '2024-11-13 01:19:43', '2024-11-13 01:19:43', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('a36c7fa3-ce2b-8560-692b-6733f70fb8b6', '11.00', '2024-11-13 00:48:11', '2024-11-13 00:48:11', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('a903cbbc-8537-03a4-1eb9-6737765e28e6', '54.00', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '679cec20-eb45-f475-d4fc-6737769707eb', NULL, ''),
('a931e34e-cec7-07a8-5f7c-6734179968be', '36.00', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '611ec03a-233e-604e-65fe-67341799437b', NULL, ''),
('aa2775dd-71df-cb7e-32bf-673417e88058', '38.00', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '17235a56-9c30-8aba-0fbd-673417bc6151', NULL, ''),
('ab25f0a4-8408-5f9c-dbb0-673417c407e3', '33.00', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '103a19aa-9512-c5c4-30ef-673417096116', NULL, ''),
('ab537adf-a623-9904-1d33-6734179ed3b3', '35.00', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '6a232430-6ce1-e3e2-5072-67341720c46a', NULL, ''),
('ab5edc7f-3143-c036-ae85-6733fe3bd5ea', '23.00', '2024-11-13 01:18:38', '2024-11-13 01:18:38', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('acc1dfc3-2e37-a2dd-37ac-6689fe211234', '6.00', '2024-07-07 02:31:38', '2024-07-07 02:31:38', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '550a1dab-8d8c-9257-a723-6689fda3f559', NULL, ''),
('ade803ce-70c4-86f2-e69a-6734174a15ac', '37.00', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '6750cd67-e976-2ec7-5769-673417ee6718', NULL, ''),
('ae24a970-e37f-7ebf-32ef-6734163a80c2', '32.00', '2024-11-13 03:01:05', '2024-11-13 03:01:05', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '358bc8d4-eac3-7c01-8167-673416efba2e', NULL, ''),
('afb926b8-12c9-490d-fcab-67377948b293', '57.00', '2024-11-15 16:39:12', '2024-11-15 16:39:12', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', 'd08cd9f6-ef73-985e-1346-67377978a496', NULL, ''),
('b0021cd8-4866-ee41-c469-6734025be8e1', '28.00', '2024-11-13 01:34:53', '2024-11-13 01:34:53', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('b4cc0cf2-ba84-8b8f-3a48-6734014b799e', '27.00', '2024-11-13 01:29:53', '2024-11-13 01:29:53', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('b62f9323-0fcd-5a14-f603-6734116c3b98', '29.00', '2024-11-13 02:38:57', '2024-11-13 02:38:57', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('b66630c7-f179-5acd-af1e-6733f77db3f8', '11.00', '2024-11-13 00:48:11', '2024-11-13 00:48:11', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('b7689025-885a-9c54-685f-6733fb9e0152', '16.00', '2024-11-13 01:05:05', '2024-11-13 01:05:05', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('b77a3571-3adb-9a9d-ace9-6733fd052834', '21.00', '2024-11-13 01:15:19', '2024-11-13 01:15:19', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('b8a47beb-d2f2-51e8-cfe7-6736be3bdf6a', '48.00', '2024-11-15 03:24:22', '2024-11-15 03:24:22', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', 'a42345a5-9cca-a6f5-b15d-6736bed474e4', NULL, ''),
('b97dcdeb-7b08-a086-4d89-6734175141ed', '39.00', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '73758b30-410c-fe27-181c-6734178e22fb', NULL, ''),
('ba51db71-6798-bc2d-3d48-673776b34d33', '53.00', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '748e5c4b-4bdc-b48b-0bc6-673776dfd4f9', NULL, ''),
('bb367c38-bc53-72cd-86e3-673417089fb7', '34.00', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '7500d4d9-2a1b-9dc2-6e30-673417ae9bb1', NULL, ''),
('bb741ce0-28c7-b9ba-e549-673417553e4c', '40.00', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '72c55774-cb84-60f5-cd19-673417d4f55e', NULL, ''),
('bbcd6152-27bd-43af-36e1-6736b6fb1b82', '47.00', '2024-11-15 02:48:06', '2024-11-15 02:48:06', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '67b36cbe-a0bd-a583-6ee0-6736b6a0583a', NULL, ''),
('bd6b50ca-1ff6-218f-9b99-673776bd20c7', '52.00', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '7dd74d54-33ed-b571-f1a3-673776d19c00', NULL, ''),
('c171297d-530f-e6f5-34f2-6733feefd86c', '23.00', '2024-11-13 01:18:38', '2024-11-13 01:18:38', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('c1819896-7edf-e364-e3cb-673417548314', '42.00', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '7e065d1c-1c3a-0051-c7f2-6734174d5f55', NULL, ''),
('c1b84094-f089-8c70-8428-6737752f3b8f', '49.00', '2024-11-15 16:24:22', '2024-11-15 16:24:22', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '5b091ba0-b43e-4f0d-c661-6737754e45f4', NULL, ''),
('c292b6a3-8ca3-f2ff-ecb7-67341188b98e', '30.00', '2024-11-13 02:40:10', '2024-11-13 02:40:10', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('c3c30421-1ee0-d2ce-8e58-6697395d35d6', '7.00', '2024-07-17 03:25:44', '2024-07-17 03:25:44', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', 'a2e2e788-5b4e-c94b-8197-667218b4ebbb', NULL, ''),
('c42e241a-11f7-ea5d-99ea-673435b902bb', '44.00', '2024-11-13 05:11:34', '2024-11-13 05:11:34', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '7563be77-e7b5-442e-7e52-67343555854d', NULL, ''),
('c60c4ce1-d095-b368-afd7-67325a4e1a9a', '10.00', '2024-11-11 19:28:01', '2024-11-11 19:28:01', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('c6368a67-456c-fcc3-8852-673417af59ce', '41.00', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '800621b8-db8d-a632-1a05-6734179baae6', NULL, ''),
('c8659b84-202d-ee39-2c38-673779f05d20', '57.00', '2024-11-15 16:39:12', '2024-11-15 16:39:12', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', 'd08cd9f6-ef73-985e-1346-67377978a496', NULL, ''),
('c9c73c84-9a54-af30-403b-6733fd2bda89', '19.00', '2024-11-13 01:14:26', '2024-11-13 01:14:26', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('ce990d51-0f3a-663c-63dc-67341783c278', '34.00', '2024-11-13 03:05:34', '2024-11-13 03:05:34', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '7500d4d9-2a1b-9dc2-6e30-673417ae9bb1', NULL, ''),
('cea97ce2-37b4-c312-3e24-6733f7404e89', '12.00', '2024-11-13 00:49:44', '2024-11-13 00:49:44', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('cf5bfd0f-3141-8fad-a46c-673412312969', '31.00', '2024-11-13 02:42:39', '2024-11-13 02:42:39', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', 'b39dd45d-5142-770c-f364-673412ad2932', NULL, ''),
('d10173d6-fea5-c78e-3cdc-6689ef8d797f', 'Codigo', '2024-07-07 01:31:17', '2024-07-07 01:32:52', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Completed', 0, NULL, 0, NULL, 'Accounts', '61fad06d-a663-e826-2be1-6663965d3901', '', ''),
('d4cdbddf-0333-1007-de06-6733fe93663a', '24.00', '2024-11-13 01:19:43', '2024-11-13 01:19:43', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('d7942a3f-81f0-dc17-0e78-673776c88490', '51.00', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '98b21136-f308-2242-9254-6737761eb014', NULL, ''),
('d88e0f7b-97d4-5955-36b1-673401c78df5', '27.00', '2024-11-13 01:29:53', '2024-11-13 01:29:53', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('daca6eca-9548-3904-8f4c-6737769a7b3c', '50.00', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '361fb4aa-09e2-29cd-6a43-6737764bda36', NULL, ''),
('dc774570-83e7-afd3-f64a-6733fd95f2f8', '19.00', '2024-11-13 01:14:26', '2024-11-13 01:14:26', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('df7082d3-2c93-597f-754c-673435611362', '45.00', '2024-11-13 05:15:12', '2024-11-13 05:15:12', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '7abdc537-b160-aaae-0db0-673435432b90', NULL, ''),
('e1efef40-e77f-a49c-971d-67325a13c1bc', '10.00', '2024-11-11 19:28:01', '2024-11-11 19:28:01', '1', '1', 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('e234223d-cc08-b369-5e3a-67377694da43', '55.00', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', 'aac08cef-981d-65de-1cc4-67377681baa7', NULL, ''),
('e3a2b34a-2303-35c9-4a6d-6736b6d69200', '46.00', '2024-11-15 02:48:06', '2024-11-15 02:48:06', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '264306db-1c88-a446-bea8-6736b6d8011c', NULL, ''),
('eb8cbf2d-0ea9-74d6-609f-6733ff1c9b32', '25.00', '2024-11-13 01:23:33', '2024-11-13 01:23:33', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, NULL, NULL, NULL, ''),
('ecd37ced-eab8-a143-e1b9-6736be955be2', '48.00', '2024-11-15 03:24:22', '2024-11-15 03:24:22', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', 'a42345a5-9cca-a6f5-b15d-6736bed474e4', NULL, ''),
('efd6c866-28a3-0f46-373f-673776aa349f', '54.00', '2024-11-15 16:26:42', '2024-11-15 16:26:42', NULL, NULL, 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '679cec20-eb45-f475-d4fc-6737769707eb', NULL, ''),
('f1040312-617d-a938-25cd-673417d2beef', '39.00', '2024-11-13 03:05:58', '2024-11-13 03:05:58', '1', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '73758b30-410c-fe27-181c-6734178e22fb', NULL, ''),
('f26dd33c-c8f5-9797-fa8d-669739a6d79d', '7.00', '2024-07-17 03:25:44', '2024-07-17 03:40:26', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '1', 'Se ha generado una nueva orden de compra, importante ya la tarea a confeccion se genero por favor revisarl.', 0, '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Completed', 0, NULL, 0, NULL, 'Accounts', 'a2e2e788-5b4e-c94b-8197-667218b4ebbb', '', ''),
('f36f0810-5631-bed7-6fdf-673776f87048', '56.00', '2024-11-15 16:27:44', '2024-11-15 16:27:44', NULL, NULL, 'Se ha ingrsado una nueva orden verifica el asunto', 0, 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Not Started', 0, NULL, 0, NULL, 'Accounts', '54264daa-9810-c0c6-cd55-673776d51e6b', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `templatesectionline`
--

CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(3, '1710dbc0-980b-66c3-55eb-664e9d53f6e5', '1', 'Currencies', 'acea730d-beec-122c-5f93-664e9d5755da', 'Base Implementation.  Should be overridden.', '2024-05-23 01:34:27', 'save', '6spsnf7jd33jhbp56aleqljv06', 1, 0),
(6, 'dfb69ee3-666c-d6b4-e901-664ea0eb0ba1', '1', 'ACLRoles', 'ee9bc37a-a86e-1d52-2c0d-664ea0f95f8b', 'Asesor', '2024-05-23 01:49:39', 'detailview', '6spsnf7jd33jhbp56aleqljv06', 1, 0),
(15, 'abf3f4c9-ea28-7841-e61b-664ea7dc22d8', '1', 'Leads', 'd21fecc2-da67-e429-ef89-664ea7121189', 'Sr. Alejandro Maldonado', '2024-05-23 02:16:36', 'detailview', '6spsnf7jd33jhbp56aleqljv06', 1, 0),
(16, 'e299acd0-a495-5444-b933-664ea70cb9f0', '1', 'Accounts', '1cd59f6f-502d-44d3-826b-664ea70e6522', 'hiug', '2024-05-23 02:18:51', 'detailview', '6spsnf7jd33jhbp56aleqljv06', 1, 0),
(20, '44519d8f-7279-c656-c29f-664ea883bb43', '1', 'Opportunities', 'e40003ff-95be-84d8-0b16-664ea6f83d86', 'MYB', '2024-05-23 02:24:19', 'editview', '6spsnf7jd33jhbp56aleqljv06', 1, 0),
(31, '946255ba-f4cf-ef41-0514-664eaa77c0a9', '1', 'AOS_Quotes', '1ebcc942-be4d-ebda-d024-664ea56fe1ef', 'MAY-C-1', '2024-05-23 02:32:43', 'detailview', '6spsnf7jd33jhbp56aleqljv06', 0, 0),
(32, '2ac7a69a-423f-633c-3f62-664eaa832759', '1', 'Accounts', 'e433e866-1aca-63c6-6e7e-664e9edbb0c1', 'Alejandro Maldonado', '2024-05-23 02:32:58', 'detailview', '6spsnf7jd33jhbp56aleqljv06', 1, 0),
(40, '4cdac9d3-0bb6-7e49-3271-664fc22b4167', '1', 'Users', '1', 'Administrator', '2024-05-23 22:27:08', 'detailview', '7cuohp3mchbgcv0d6mgv8rr0k8', 1, 0),
(46, 'd04602cd-4f6e-d48e-86cf-665534b93702', '1', 'Accounts', '798f6ec5-c861-afc8-f8b7-665517f5d471', 'Alejandro Maldonado', '2024-05-28 01:34:39', 'detailview', 'b5bv1j64nka7afkkcvik7p9meh', 1, 0),
(47, 'ec7b640c-8e50-c0ee-892e-665536293dbb', '1', 'AOS_Quotes', '92e0f851-c096-4cf2-3244-66553171b166', 'Alejandro Maldonado', '2024-05-28 01:43:22', 'detailview', 'b5bv1j64nka7afkkcvik7p9meh', 0, 0),
(56, '4d156f01-9133-36ca-1cd5-666399ea9580', '1', 'AOS_PDF_Templates', '3dcf0dbd-5cb2-444c-4f3b-666399d98a00', 'Cotizaciones', '2024-06-07 23:37:35', 'detailview', '2mucplg5qgutk1e1c1ttikpqdt', 1, 0),
(61, '4abbb248-c48c-46d7-3359-66639cb0d88d', '1', 'Meetings', 'cffbb5f4-57da-c4e4-994d-66639b2970c5', 'Nueva', '2024-06-07 23:47:18', 'detailview', '2mucplg5qgutk1e1c1ttikpqdt', 1, 0),
(73, '558e5962-356c-7c3a-5eee-6663bc502793', '1', 'Tasks', '8d3bbbae-8b41-f306-6236-6663bcea3d1a', 'TEXTIL', '2024-06-08 02:07:34', 'detailview', '2mucplg5qgutk1e1c1ttikpqdt', 1, 0),
(74, '63d8a9b9-2caa-4b13-66fb-6663bc1218df', '1', 'AOS_Quotes', 'b8c20b19-1bde-51e4-67f9-6663979eec53', '54', '2024-06-08 02:07:51', 'detailview', '2mucplg5qgutk1e1c1ttikpqdt', 0, 0),
(75, 'f252c39c-afdc-7cc1-4de5-66721784526f', '1', 'Users', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'Alejandro Maldonado', '2024-06-18 23:24:12', 'detailview', 'j9ip9lsspoduhoum3f0lhq11kl', 1, 0),
(77, '1628bae4-47c4-9036-6391-667218054d17', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'Accounts', 'a2e2e788-5b4e-c94b-8197-667218b4ebbb', 'Carol', '2024-06-18 23:31:24', 'detailview', 'nfnuoh1t2v4bp4act15di4dctd', 1, 0),
(83, '2abb89d6-596d-7c1d-93a6-6689ed730021', '1', 'Users', 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'Confeccon Area', '2024-07-07 01:22:29', 'detailview', 'u23hl3fq6dogcmgphkbo66gjvd', 1, 0),
(89, '29f733f2-ac15-218f-7723-6689f02dfc45', '1', 'Tasks', 'd10173d6-fea5-c78e-3cdc-6689ef8d797f', 'Codigo', '2024-07-07 01:32:54', 'detailview', 'u23hl3fq6dogcmgphkbo66gjvd', 1, 0),
(92, 'aff32431-9d54-7092-8d41-6689f03325a2', '1', 'AOS_Quotes', '9994e02e-a7a6-6fa7-9030-6689ef9ab650', 'Codigo', '2024-07-07 01:35:50', 'detailview', 'u23hl3fq6dogcmgphkbo66gjvd', 0, 0),
(96, '92431371-b3c3-d317-da69-6689f31c2e97', '1', 'Accounts', '61fad06d-a663-e826-2be1-6663965d3901', 'Tatiana Maldonado López', '2024-07-07 01:45:10', 'detailview', 'u23hl3fq6dogcmgphkbo66gjvd', 1, 0),
(97, '3663af2a-1fee-8959-26e3-6689f7748985', '1', 'Users', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'despacho Area', '2024-07-07 02:01:55', 'detailview', 'u23hl3fq6dogcmgphkbo66gjvd', 1, 0),
(98, '6fd300d7-672e-1602-f7d7-6689f7fecbcd', '1', 'Users', '6d8e075d-a8fd-fc0c-b777-6689f70640da', 'Diseño Area', '2024-07-07 02:04:22', 'detailview', 'u23hl3fq6dogcmgphkbo66gjvd', 1, 0),
(99, '76ba4c10-6317-bcac-852c-6689f7dbfaf8', '1', 'Users', 'e7621a64-99ee-7d49-7c05-6689f788e06b', 'Contabilidad Area', '2024-07-07 02:04:55', 'detailview', 'u23hl3fq6dogcmgphkbo66gjvd', 1, 0),
(100, 'ea130f20-9bc4-cce7-1117-6689f758d46a', '1', 'Users', '85caa074-99e4-7b7b-20cb-6689f752b389', 'Bodega Area', '2024-07-07 02:05:44', 'detailview', 'u23hl3fq6dogcmgphkbo66gjvd', 1, 0),
(104, 'eac863e7-c1a9-d0a1-4440-6689f8c5dca4', '1', 'AOW_WorkFlow', '25490286-6ce5-b511-83ee-6689f8ba2808', 'PASO 1 . Generar tarea a Confeccion', '2024-07-07 02:08:30', 'detailview', 'u23hl3fq6dogcmgphkbo66gjvd', 1, 0),
(107, 'ccdcde9a-638d-d80a-8170-6689f9b3564f', '1', 'AOW_WorkFlow', 'b253ab41-0a1a-7249-82ee-6689ef1a4d43', 'PASO 1 . Generar tarea a despacho', '2024-07-07 02:11:57', 'detailview', 'u23hl3fq6dogcmgphkbo66gjvd', 1, 0),
(110, '29de00e9-3e53-5754-cb01-6689fec2145a', '1', 'Accounts', '550a1dab-8d8c-9257-a723-6689fda3f559', 'Carolain', '2024-07-07 02:31:42', 'detailview', '8cacroo32dltef3t49cn2i821j', 1, 0),
(111, '5e592530-250a-034e-01f4-6689febc0e4c', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Tasks', '6968ed84-5d7e-594f-6c8d-6689fee83105', '6.00', '2024-07-07 02:33:48', 'detailview', '3vpja1vief69j6nbqe3bumduvs', 1, 0),
(113, '57b69244-4e5b-9f9f-648b-6689fe784af4', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Accounts', '550a1dab-8d8c-9257-a723-6689fda3f559', 'Carolain', '2024-07-07 02:34:02', 'detailview', '3vpja1vief69j6nbqe3bumduvs', 1, 0),
(118, 'dce0b2ef-69ab-34e2-ce6f-669738fd4926', '1', 'AOS_Products', 'be1208c6-ae0e-df02-0b72-66973882bfcb', 'Blusa oversiza', '2024-07-17 03:20:40', 'detailview', '1ae2da84bvsplptvnlv8b8om0k', 0, 0),
(121, '821cd0dc-12fe-4d26-d372-66973908def2', '1', 'AOS_Quotes', 'b0a54858-1dc7-b3ec-10b9-66973980a666', NULL, '2024-07-17 03:26:48', 'detailview', '1ae2da84bvsplptvnlv8b8om0k', 0, 0),
(122, '7278e69c-2c8f-7941-b7a6-66973a97e645', '1', 'AOS_Products', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', 'Camisa', '2024-07-17 03:28:09', 'detailview', '1ae2da84bvsplptvnlv8b8om0k', 0, 0),
(128, '83435f1b-ac64-2881-37ea-66973c6ac94f', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'AOS_Quotes', '9994e02e-a7a6-6fa7-9030-6689ef9ab650', 'Codigo', '2024-07-17 03:37:32', 'detailview', 'd3l2kq1bcjaj9e8bo7feu7lriv', 0, 0),
(130, 'd38fc647-9dc9-f70a-9998-66973d67f2db', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Tasks', 'f26dd33c-c8f5-9797-fa8d-669739a6d79d', '7.00', '2024-07-17 03:40:31', 'detailview', 'd3l2kq1bcjaj9e8bo7feu7lriv', 1, 0),
(134, '6cd400a4-0559-2f19-65ee-66973d17c4c1', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'AOS_Quotes', 'b0a54858-1dc7-b3ec-10b9-66973980a666', NULL, '2024-07-17 03:43:23', 'editview', 'd3l2kq1bcjaj9e8bo7feu7lriv', 0, 0),
(135, 'bc38597d-b524-93c9-60f7-66973eb505d1', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'Accounts', 'a2e2e788-5b4e-c94b-8197-667218b4ebbb', 'Carol', '2024-07-17 03:45:35', 'detailview', 'd3l2kq1bcjaj9e8bo7feu7lriv', 1, 0),
(137, '7020f275-007e-5231-2ecf-66973fd5f56c', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'AOS_Products', 'be1208c6-ae0e-df02-0b72-66973882bfcb', 'Blusa oversiza', '2024-07-17 03:49:35', 'editview', 'd3l2kq1bcjaj9e8bo7feu7lriv', 0, 0),
(138, 'acffee9e-12c9-5e4b-a756-66973f31e72e', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'AOS_Products', '80e105d9-688e-208a-8bd5-66973fd817f4', 'STOCK - Blusa oversiza', '2024-07-17 03:49:51', 'detailview', 'd3l2kq1bcjaj9e8bo7feu7lriv', 0, 0),
(142, '8e2987ae-1085-efed-eaba-66974075cef6', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'AOR_Reports', '8290259e-1484-242b-9d78-66974078bdd6', 'Ventas por asesor', '2024-07-17 03:56:20', 'detailview', 'd3l2kq1bcjaj9e8bo7feu7lriv', 1, 0),
(144, '946709fc-5b92-eaca-b087-669745d1d8c9', '1', 'Accounts', '85075e93-35e2-b8bc-e5c6-669745e3ad1e', 'Victor', '2024-07-17 04:15:55', 'detailview', '1k7gv7kfun1opjv4925m3k0n1k', 1, 0),
(146, 'a25577b3-beab-acdc-e283-669745112766', '1', 'AOR_Reports', '8290259e-1484-242b-9d78-66974078bdd6', 'Ventas por asesor', '2024-07-17 04:17:54', 'detailview', '1k7gv7kfun1opjv4925m3k0n1k', 1, 0),
(149, '8bb9c7a8-7298-4cb1-c9c1-66a6d9b79b2c', '1', 'Accounts', 'a2e2e788-5b4e-c94b-8197-667218b4ebbb', 'Carol', '2024-07-28 23:52:19', 'detailview', 'pk58jtj3mmsuada037ctluuj3m', 1, 0),
(150, '95cdbae1-8a7b-8f37-5464-671bd965d545', '1', 'Users', '32baac79-3049-9236-9e53-671bd9180ed4', 'Carolain Fea', '2024-10-25 17:47:52', 'detailview', 'mf62j0dmqvcjqp97qvu0nrk3s1', 1, 0),
(152, '77013ceb-d4c3-659c-3063-671bda0b0848', '32baac79-3049-9236-9e53-671bd9180ed4', 'Users', '32baac79-3049-9236-9e53-671bd9180ed4', 'Carolain Fea', '2024-10-25 17:49:00', 'detailview', 'p7tpj58ork7h6lu228nshl37vn', 1, 0),
(153, '77f8fa8e-864f-5612-d043-67202aaba98a', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Products', '80e105d9-688e-208a-8bd5-66973fd817f4', 'STOCK - Blusa oversiza', '2024-10-29 00:22:15', 'editview', 'eq7vl9ome77d4odhufe37flo2o', 0, 0),
(154, '36ba10ba-01be-058b-0a21-67202a21b68e', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Products', 'be1208c6-ae0e-df02-0b72-66973882bfcb', 'Blusa oversiza', '2024-10-29 00:22:21', 'editview', 'eq7vl9ome77d4odhufe37flo2o', 0, 0),
(155, 'da981ae4-ac82-2f24-8ea3-67202abaac43', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Products', 'a7faf1c0-804e-2062-2252-664ea4bfb86d', 'Camisa', '2024-10-29 00:22:22', 'editview', 'eq7vl9ome77d4odhufe37flo2o', 0, 0),
(156, '41335a25-da98-65d4-ca8f-6720349d825e', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Product_Categories', 'b2d12421-a929-557a-b1c7-6720347a7abf', 'ABRIGO ', '2024-10-29 01:03:00', 'detailview', 'eq7vl9ome77d4odhufe37flo2o', 0, 0),
(157, '321dd3ee-d97e-a2ba-254a-67203647dbc6', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Product_Categories', 'c85caea0-9b3f-6cf4-8060-672036bd2bb8', 'CHAQUETA ', '2024-10-29 01:10:44', 'detailview', 'eq7vl9ome77d4odhufe37flo2o', 0, 0),
(158, 'b3c88195-4ba1-30c0-d1b6-67203a6c1b2b', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Product_Categories', '5793762b-8c2d-a5e0-edff-67203a445c1e', 'CONJUNTO ', '2024-10-29 01:31:35', 'detailview', 'eq7vl9ome77d4odhufe37flo2o', 0, 0),
(159, '487aa9ec-7336-1074-00ea-67203f0decab', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Product_Categories', 'd7027b21-fd00-8257-af32-67203f408edf', 'FALDA ', '2024-10-29 01:50:03', 'detailview', 'eq7vl9ome77d4odhufe37flo2o', 0, 0),
(160, 'd8443454-4aa6-4acb-174b-67203f71435a', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Product_Categories', '7e23cbb1-2c69-5819-1438-67203fe788fb', 'BUSO', '2024-10-29 01:50:28', 'detailview', 'eq7vl9ome77d4odhufe37flo2o', 0, 0),
(169, '16f6c254-85fd-b7a9-eb87-67226e9705f6', '1', 'AOR_Reports', 'a381fbee-2658-52a8-4e9c-67226df34ef7', 'Domiciliarios', '2024-10-30 17:34:45', 'detailview', 'bnu7u3ccc1pn4ur714jgs7vifh', 1, 0),
(171, '7f8c52fb-20b5-1340-6eaa-6722702b965d', '1', 'AOR_Reports', 'db34cec6-8759-68b3-b382-6722708ee720', 'Corte satelites', '2024-10-30 17:42:40', 'detailview', 'bnu7u3ccc1pn4ur714jgs7vifh', 1, 0),
(180, 'c6acf953-ff0f-0494-b06c-672270787887', '1', 'AOR_Reports', 'bbb009ed-5368-df5b-0d6c-67226f844077', 'Comision asesores', '2024-10-30 17:46:02', 'editview', 'bnu7u3ccc1pn4ur714jgs7vifh', 1, 0),
(181, '1525f5bd-69a8-36b4-ad2f-672270eafa43', '1', 'AOS_Products', 'a9969b2c-0963-bc89-0382-67203ff092ea', 'GATUBOL', '2024-10-30 17:46:36', 'editview', 'bnu7u3ccc1pn4ur714jgs7vifh', 1, 0),
(184, '85caf7cf-9bb1-1b17-89b5-672272a9829a', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOR_Reports', 'a381fbee-2658-52a8-4e9c-67226df34ef7', 'Domiciliarios', '2024-10-30 17:51:50', 'detailview', 'm6klqqiihcrb2v58r9jel7llt0', 1, 0),
(194, '69570d85-3330-a1c3-971f-6722c35205a7', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Products', 'a9969b2c-0963-bc89-0382-67203ff092ea', 'GATUBOL', '2024-10-30 23:36:57', 'detailview', 'm6klqqiihcrb2v58r9jel7llt0', 1, 0),
(195, '39399209-7a97-508e-5f2e-6722c315a0cf', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Products', '7f7a3415-9afc-bdec-caa0-6722c25cc3de', 'DILIAN', '2024-10-30 23:37:07', 'detailview', 'm6klqqiihcrb2v58r9jel7llt0', 1, 0),
(196, '362a708c-9e71-ec68-66e2-6722cd6e3c12', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Product_Categories', 'ca44da16-f275-a9df-b4fe-6722cd4c9b62', 'CAMISETA', '2024-10-31 00:21:57', 'detailview', 'm6klqqiihcrb2v58r9jel7llt0', 0, 0),
(199, 'aade0ed4-6c57-c1c2-9516-6722d1aef003', '32baac79-3049-9236-9e53-671bd9180ed4', 'AOS_Products', '134b1ce6-35d7-8a18-0b4e-6722cdb6d1b7', 'CUELLO POLO', '2024-10-31 00:39:26', 'detailview', 'm6klqqiihcrb2v58r9jel7llt0', 1, 0),
(209, '8699e3d6-ab2d-3083-1b0a-6726fc899ee9', '1', 'AOS_Products', '134b1ce6-35d7-8a18-0b4e-6722cdb6d1b7', 'CUELLO POLO', '2024-11-03 04:29:31', 'detailview', '1ui12nknl9j4sssnf3098i0ft2', 1, 0),
(210, '4c8d88cf-196d-bbe8-c47a-673259ad6fa2', '1', 'AOS_Quotes', 'de9d1f88-76d1-b6ce-1373-6732598732ad', NULL, '2024-11-11 19:24:30', 'detailview', 'dvsvrphnl5gb5jog87gptjlp7p', 0, 0),
(212, 'e55eebae-e42d-df99-1e8d-673260b43b33', '1', 'AOS_Products', 'b6423091-a78a-e265-341f-6732600d7ef8', 'CAMISETA EJEMPLO', '2024-11-11 19:53:48', 'detailview', 'dvsvrphnl5gb5jog87gptjlp7p', 1, 0),
(214, '79e55c4c-c8af-5f5a-1d89-6733f1d0b1e1', '1', 'AOS_Quotes', 'df00abda-253a-4b13-23c6-67325a734746', NULL, '2024-11-13 00:23:50', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(215, 'b75742a9-eda1-d4be-cc23-6733f7ef5b8c', '1', 'AOS_Quotes', '6f8b6ae2-9dec-27bd-5f94-6733f7e0f6be', 'Prueba', '2024-11-13 00:49:05', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(216, 'bf43d141-09f0-bdbe-c181-6733f75b17cb', '1', 'AOS_Quotes', '15979e41-ed89-f7ad-7c15-6733f764168d', 'Prueba', '2024-11-13 00:50:10', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(217, 'ab4d07bb-b804-8f26-cdbd-6733f81e0fab', '1', 'AOS_Quotes', '8c862107-c598-27ca-d54a-6733f8c7c4c3', 'Prueba', '2024-11-13 00:54:30', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(220, 'ab98e7ab-dc91-3c02-b3a3-6733f938a69a', '1', 'AOS_Quotes', '1ce5515e-165e-557f-ebf8-6733f9b4f06c', 'Prueba', '2024-11-13 00:58:19', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(221, 'f21f4d4a-9ca2-c134-6908-6733fa24f84e', '1', 'AOS_Quotes', '18785930-ed63-8e39-889f-6733fa1ad815', 'Prueba', '2024-11-13 01:03:15', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(223, 'c9c585c2-7c1c-a89b-db7c-6733fcdfde36', '1', 'AOS_Quotes', 'c3300e15-328b-68b3-856c-6733fbd74479', 'Prueba', '2024-11-13 01:10:45', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(224, '479be96b-5621-28c9-eab8-6733fc9ac0b5', '1', 'AOS_Quotes', '716218f8-e36b-ea86-9cae-6733fc2225f0', 'Prueba', '2024-11-13 01:10:58', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(225, '64800205-536e-5add-c4df-6733fdab0772', '1', 'AOS_Quotes', '17924e85-cbed-f4f6-66af-6733fd3b9710', 'Prueba', '2024-11-13 01:13:08', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(229, '69619144-2f57-8bea-194b-6733ff68b959', '1', 'AOS_Quotes', 'a603c2ac-06bc-e84c-a6f7-6733fe8ec25a', 'Prueba', '2024-11-13 01:21:54', 'editview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(230, '2cfb36d7-9ae0-a5e8-a81f-67340081f7ba', '1', 'AOS_Quotes', '231e8946-5505-e9eb-9fea-6733ffd98ebe', 'Prueba', '2024-11-13 01:26:10', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(231, '7205d940-b053-9bd3-5d22-6734003c3294', '1', 'AOS_Quotes', '187119cf-8852-accf-7576-6734006eb181', 'Prueba', '2024-11-13 01:29:23', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(234, '2bca7438-2503-17d0-8872-6734014db0b2', '1', 'AOS_Quotes', 'eeba76e5-5825-a7bc-aaa4-6734019e4211', 'Prueba', '2024-11-13 01:31:42', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(236, '9fd1f242-6efa-bf5b-c4dd-673410069ff3', '1', 'AOS_Quotes', 'c765b0c2-66ef-80ca-45d6-673402d9a8a8', 'Prueba', '2024-11-13 02:36:50', 'editview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(239, 'a8bc16ef-2867-03f9-971b-6734117d7662', '1', 'AOS_Quotes', 'badeb9b1-cd8f-ed30-92f2-6734111cf253', '5- App', '2024-11-13 02:41:58', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(240, '84dfff93-3463-8d25-4cdb-673412909f0c', '1', 'AOS_Quotes', '271f8b1f-2705-beca-6646-6734120c12f4', '5- App', '2024-11-13 02:43:53', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(242, '541a9289-5bba-fd13-c6c6-6734194f3619', '1', 'Accounts', 'f182d4a7-e503-fada-9906-6734185bdb5e', 'prueba 6 ', '2024-11-13 03:12:40', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 1, 0),
(246, '25d59885-14de-1091-34a4-673423bf9549', '1', 'AOS_Quotes', '67e60b7d-97e2-fb6e-bf26-673418e9bf03', '6- App', '2024-11-13 03:58:20', 'detailview', 'rqur9knjj3dmitt0b5p5d1dqte', 0, 0),
(247, 'eeab4464-6887-7b56-7586-673435523bce', '1', 'AOS_Quotes', 'a973c1cc-b358-c5f4-5518-673435ed96a1', '7- App', '2024-11-13 05:12:01', 'detailview', 'j6eo826lnlns59jugpjcr7u739', 1, 0),
(249, '15f0b5e4-3070-20a4-6908-67365a6d5a0f', '1', 'AOS_Products', 'dbbad1c6-bd78-fc43-cf0c-67365a7dfb08', 'prueba producto', '2024-11-14 20:16:38', 'detailview', 'fi7v9o0m8560iqvcb8qmi30d1u', 1, 0),
(250, '83e2b20f-b3f7-0ef1-019e-67365b816c3f', '1', 'AOS_Products', '8ed7ab71-ea71-7ff0-6479-67365bb4808c', 'producto prueba', '2024-11-14 20:20:42', 'detailview', 'fi7v9o0m8560iqvcb8qmi30d1u', 1, 0),
(252, '78ba886e-2592-a052-b4e9-67365cfc4bb7', '1', 'AOS_Products', 'b9c9b54b-a879-7b0d-14fb-67365be8498a', 'product pruebassss', '2024-11-14 20:23:36', 'editview', 'fi7v9o0m8560iqvcb8qmi30d1u', 1, 0),
(254, '27700177-a928-daff-4849-67365ca32c07', '1', 'AOS_Products', 'ebb6b0a9-b864-8a67-31a8-67365c53f515', 'product pruebassss', '2024-11-14 20:25:30', 'editview', 'fi7v9o0m8560iqvcb8qmi30d1u', 1, 0),
(256, '157f341e-3b0b-47ed-407e-673662063418', '1', 'AOS_Products', '9fa4ef4c-f384-b31f-8308-67365c93245a', 'product pruebassss', '2024-11-14 20:49:56', 'detailview', 'fi7v9o0m8560iqvcb8qmi30d1u', 1, 0),
(258, '89761aa5-941b-cd6d-ee84-673690bfcbea', '1', 'AOS_Products', 'b0827319-b02c-7200-78bb-67367f69daf0', 'productos dos nuevo', '2024-11-15 00:05:56', 'detailview', 'scbmt7gokn25l6pk3lpt1j15bc', 1, 0),
(263, '78800d9e-8a80-94fd-4ce8-67376ad5f7a3', '1', 'AOS_Quotes', '7d4bdc5f-18db-6fec-0b4a-673435ecf869', '8- App', '2024-11-15 15:35:29', 'detailview', 'p0qt746i7l1r7845gcq7upd3st', 1, 0),
(264, '282c641b-c8dc-1ccf-c5f6-67376a5c5b73', '1', 'AOS_Products', '6b1d2034-e5b8-15d6-32ef-67376aa77bd1', 'Imagen fondo', '2024-11-15 15:36:25', 'detailview', 'p0qt746i7l1r7845gcq7upd3st', 1, 0),
(265, 'b9937c4a-1d7e-6d4e-8aa0-673775ded6f8', '1', 'AOS_Products', 'b2ed9871-013c-c8bf-0f7a-673766cd3d33', 'Dato nuevo', '2024-11-15 16:23:04', 'detailview', '6dgnrqba67itsodth0jviv7b10', 1, 0),
(266, 'df22c114-6f4c-399a-3b37-673776d68398', '1', 'AOS_Quotes', 'c284dc4b-adb2-8cc6-6b95-67377634402e', '12- App', '2024-11-15 16:28:08', 'detailview', '6dgnrqba67itsodth0jviv7b10', 1, 0),
(268, 'dd4c77ef-8d91-2250-a127-673790d6bc03', '1', 'AOS_Quotes', 'cf7f6a18-2ca5-659b-be18-673779381276', '13- App', '2024-11-15 18:17:52', 'detailview', '6dgnrqba67itsodth0jviv7b10', 1, 0),
(271, 'c3b415f7-8462-9a16-5a14-681950379820', '1', 'AOS_Products', '65b0210e-fa8d-95c5-0364-68194e15a532', 'gabann', '2025-05-05 23:57:42', 'editview', 'djv6kng1la7ppr1vpjprjnpeaq', 1, 0),
(278, '26b6ada0-45c5-c845-7772-68198b9fb34f', '1', 'AOK_KnowledgeBase', '4db7f308-9678-7687-1272-68198b0214ea', 'Nueva entrada', '2025-05-06 04:08:41', 'editview', 'djv6kng1la7ppr1vpjprjnpeaq', 1, 0),
(286, 'ee6ae490-7fcd-7325-a249-688e4acf1df3', '1', 'AOS_Product_Categories', '9a4e6c66-ee92-26ce-a7f3-688e4935c058', 'Nueva entrada', '2025-08-02 17:26:46', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(301, '1666ac15-5aff-d091-71e4-688ee1f8962d', '1', 'AOS_Product_Categories', 'ca44da16-f275-a9df-b4fe-6722cd4c9b62', 'otra camiseta', '2025-08-03 04:10:11', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(308, 'b0171e37-aead-a0e3-9a98-688ee3b02043', '1', 'AOS_Product_Categories', '7d88a4ce-9cc6-8f6f-92fb-688e59e2c12d', 'otro dato', '2025-08-03 04:18:34', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(310, '25ef6f5f-3bb7-daf6-7c59-688ee40ad107', '1', 'AOS_Product_Categories', '926a1ca5-ce1f-647f-6f81-688ee48a65aa', 'VERANO', '2025-08-03 04:24:19', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 1, 0),
(312, '79042dcc-d373-02f1-23ca-688ee55dcd9d', '1', 'AOS_Product_Categories', 'b4494b8e-17f6-b518-da8b-688ee52c794a', 'INVIERNO', '2025-08-03 04:28:19', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 1, 0),
(314, 'b9db2534-afe3-3a51-db3a-688ee5d623d8', '1', 'AOS_Product_Categories', '957cd55c-fee0-dd2c-8131-688ee58cb068', 'OTOÑO', '2025-08-03 04:29:14', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 1, 0),
(315, '137e607c-e03b-43d6-23bc-688ef30be1da', '1', 'Documents', '980a08ad-aacb-aa2d-0891-688ef3d7b538', 'banner.webp', '2025-08-03 05:27:23', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(316, '8ead0bbd-e951-c331-c9b1-688ef7b48044', '1', 'Documents', 'd12c7105-ddc3-5163-b94e-688ef7410cdd', 'banner.webp', '2025-08-03 05:47:19', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(317, 'cda4465c-a14e-8d7c-6264-688ef8b21467', '1', 'Documents', '741ebca8-f17a-7427-32fb-688ef89c9b36', 'banner.webp', '2025-08-03 05:49:40', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(318, 'babf3327-92e9-09c0-f432-688ef8f62117', '1', 'Documents', '628a39de-7a21-1202-e57d-688ef86679ac', 'banner.webp', '2025-08-03 05:50:43', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(319, 'f1ed0707-62e6-aa1a-5dfc-688ef9a0d362', '1', 'Documents', 'cd80e8ed-7916-ceaa-ad82-688ef8301cda', 'banner.webp', '2025-08-03 05:52:01', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(320, '29819528-9b95-4475-40c2-688efa25355a', '1', 'Documents', 'c3c10b13-8523-f2e4-ea6d-688efaca2aba', 'banner.webp', '2025-08-03 05:56:34', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(321, '7d2edd5e-83c6-ed4c-06c3-688efa2a77e8', '1', 'Documents', '49c2d5f7-2eee-26b9-8642-688efafdb5d1', 'banner.webp', '2025-08-03 05:58:59', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(322, '3d78cc79-71e9-2e59-29bf-688efb41a76d', '1', 'Documents', 'bdbf197b-fd6e-8b07-afa6-688efb50a405', 'banner.webp', '2025-08-03 06:03:04', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(323, '4567f745-fe08-7461-3043-688efb39d9af', '1', 'Documents', '1c0b2bbb-6fb5-cbe0-08b4-688efb051aa8', 'banner.webp', '2025-08-03 06:04:41', 'detailview', 'ib6l8vqoa294qeqqstjr8bgiao', 0, 0),
(324, '30251ae8-2a20-2175-d70d-689583c56c1e', '1', 'Documents', 'd8cd8c46-5d1b-e3fe-1103-6895831a8d56', '08_08_25_06_56_14_banner.webp', '2025-08-08 04:56:27', 'detailview', 'n3eldkmnvd429j76nqhotl8n2g', 0, 0),
(325, '593c06c8-af7d-4574-4d94-689584455ead', '1', 'Documents', '3c9b0dfa-87c6-b34a-6bd4-68958429e1b6', '08_08_25_06_59_18_banner.webp', '2025-08-08 04:59:26', 'detailview', 'n3eldkmnvd429j76nqhotl8n2g', 0, 0),
(326, 'be4f4424-99bb-7b34-09f3-689587323a81', '1', 'Documents', '3b43ef44-6955-959a-2c2e-689587b6b4bc', '08_08_25_07_14_51_R.jpg', '2025-08-08 05:15:02', 'detailview', 'n3eldkmnvd429j76nqhotl8n2g', 0, 0),
(327, 'e62fbe29-a2d5-b60e-b42c-689588c23992', '1', 'Documents', '7c0f0aeb-788d-9d52-aea5-689588fec19c', '08_08_25_07_16_44_youtube-cover-and-banner-design-template-vector.jpg', '2025-08-08 05:16:55', 'detailview', 'n3eldkmnvd429j76nqhotl8n2g', 0, 0),
(328, '206928a7-20ae-76c9-4d3f-68958b9e4a50', '1', 'Documents', '9a76387d-f61d-439c-f8ab-68958b01e2a2', '08_08_25_07_31_11_plantilla-banner-semana-moda-banner-promocion-moda_122059-223.avif', '2025-08-08 05:31:19', 'detailview', 'n3eldkmnvd429j76nqhotl8n2g', 0, 0),
(329, '400e3709-a05e-5a25-15fa-68958c38e0c8', '1', 'Documents', 'c7c0043a-6362-8e30-08fa-68958c03398a', '08_08_25_07_32_49_color-diseno.jpg', '2025-08-08 05:32:58', 'detailview', 'n3eldkmnvd429j76nqhotl8n2g', 0, 0),
(331, '21941784-36f0-ac26-2172-6898ec9167e3', '1', 'Documents', '964eedac-b1fe-af24-b5ac-689591cf15d8', '08_08_25_07_56_48_plantilla-banner-semana-moda-banner-promocion-moda_122059-223.avif', '2025-08-10 19:02:51', 'detailview', 'a6pvulqglon1qcmku7v986p24h', 0, 0),
(332, '31beae96-92fa-021e-5689-6898fadf587d', '1', 'Documents', 'a367fdd1-184e-74f4-72d8-6898fa92db50', '10_08_25_10_02_09_4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', '2025-08-10 20:02:19', 'detailview', 'a6pvulqglon1qcmku7v986p24h', 0, 0),
(333, '92ef01c5-527a-e851-766a-6898fb71009b', '1', 'Documents', '3a2ef239-6c9c-9531-248a-6898fbfa0f1e', '10_08_25_10_03_13_Frame 350.png', '2025-08-10 20:03:24', 'detailview', 'a6pvulqglon1qcmku7v986p24h', 0, 0),
(334, 'e83f5089-a028-5964-f388-6898fb5f86da', '1', 'Documents', '77f16065-f941-c378-8162-6898fb775824', '10_08_25_10_06_38_4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', '2025-08-10 20:06:48', 'detailview', 'a6pvulqglon1qcmku7v986p24h', 1, 0),
(335, '33353f1f-9404-0316-aaa7-6898fb5ef4d0', '1', 'Documents', '3378ef1b-540d-08bb-6d0c-6898fb41f4c2', '10_08_25_10_07_13_Frame 350.png', '2025-08-10 20:07:24', 'detailview', 'a6pvulqglon1qcmku7v986p24h', 1, 0),
(336, '3aa03eed-5611-6ca8-2670-68991367731a', '1', 'Documents', 'c8b413bd-dff1-f645-9e1f-6899130cde97', '10_08_25_11_48_21_16261127170.webp', '2025-08-10 21:48:29', 'detailview', 'a6pvulqglon1qcmku7v986p24h', 1, 0),
(337, 'ee200a74-0019-5d37-444a-68a31d7bded4', '1', 'AOS_Products', '20979f54-d546-efb8-a2e8-681950aed2c7', 'gabann', '2025-08-18 12:32:30', 'detailview', '55du9g3ko9tphcg7r3vnbg49kr', 1, 0),
(338, '2e9ad6fb-7186-b0b5-2d80-68a31fa8f894', '1', 'AOS_Products', 'cc284ca8-f170-d32c-5adf-68197495d491', 'gabann', '2025-08-18 12:42:23', 'detailview', '55du9g3ko9tphcg7r3vnbg49kr', 1, 0),
(341, '88933b21-c90d-0c54-0e1b-68a3216b0086', '1', 'AOS_Products', '8c5e72bc-2b6a-341a-f17a-68a3213c564c', 'Honda_CB190R_2020_1000_0001.jpg', '2025-08-18 12:50:11', 'detailview', '55du9g3ko9tphcg7r3vnbg49kr', 1, 0),
(344, '6c10a36b-ffca-9e9a-7ab7-68a325d8b673', '1', 'AOS_Products', '7afddafc-3059-dab0-aff1-68a324d2a5c9', 'otro 2', '2025-08-18 13:09:03', 'detailview', '55du9g3ko9tphcg7r3vnbg49kr', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('536b3090-8875-56c2-fd9c-664e84dc8265', 'upload/upgrades/langpack/SuiteCRM core (es-MX).zip', '8746a3904ec11a58f1b59f6987c825dd', 'langpack', 'installed', '8.6.1.01', 'Spanish (Mexico)', 'Traducción: www.crowdin.com/project/suitecrmtranslations', 'es_MX', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czoxNjoiU3BhbmlzaCAoTWV4aWNvKSI7czoxMToiZGVzY3JpcHRpb24iO3M6NTc6IlRyYWR1Y2Npw7NuOiB3d3cuY3Jvd2Rpbi5jb20vcHJvamVjdC9zdWl0ZWNybXRyYW5zbGF0aW9ucyI7czo0OiJ0eXBlIjtzOjg6ImxhbmdwYWNrIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtzOjM6IlllcyI7czoyNToiYWNjZXB0YWJsZV9zdWdhcl92ZXJzaW9ucyI7YTowOnt9czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjE6e2k6MDtzOjI6IkNFIjt9czo2OiJhdXRob3IiO3M6MTg6IkNvbXVuaWRhZCBTdWl0ZUNSTSI7czo3OiJ2ZXJzaW9uIjtzOjg6IjguNi4xLjAxIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAyNC0wNC0wMyI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjM6e3M6MjoiaWQiO3M6NToiZXNfTVgiO3M6OToiaW1hZ2VfZGlyIjtzOjE3OiI8YmFzZXBhdGg+L2ltYWdlcyI7czo0OiJjb3B5IjthOjM6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9pbmNsdWRlIjtzOjI6InRvIjtzOjc6ImluY2x1ZGUiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vbW9kdWxlcyI7czoyOiJ0byI7czo3OiJtb2R1bGVzIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L2luc3RhbGwiO3M6MjoidG8iO3M6NzoiaW5zdGFsbCI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2024-05-22 23:50:22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT 1,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `external_auth_only` tinyint(1) DEFAULT 0,
  `receive_notifications` tinyint(1) DEFAULT 1,
  `description` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT 0,
  `show_on_employees` tinyint(1) DEFAULT 1,
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`, `factor_auth`, `factor_auth_interface`) VALUES
('1', 'admin', '$2y$10$zDPjiQIArL4WylPhdqGeRuOov22Vmo9/eM6AGEhc3KBC6SV2ZsMDK', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2024-05-22 23:38:30', '2024-05-23 22:27:07', '1', '1', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0, 0, NULL),
('32baac79-3049-9236-9e53-671bd9180ed4', 'carol', '$2y$10$17ipS2J0CKETaSjnIGNqJ.V9TMYFgOB0Zy8MQTIpTaDXu0eJxnITW', 0, '2024-10-25 17:47:00', NULL, 1, 'Carolain', 'Fea', 0, 0, 1, NULL, '2024-10-25 17:47:52', '2024-10-25 17:49:00', '32baac79-3049-9236-9e53-671bd9180ed4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0, 0, NULL),
('6d8e075d-a8fd-fc0c-b777-6689f70640da', 'diseno', '$2y$10$h2374TASTAWFPN0sfDaZ7eoip5iaoRmB9PHvj.9zfPDhBr2l7rb.a', 0, '2024-07-07 02:04:21', NULL, 1, 'Diseño', 'Area', 0, 0, 1, '', '2024-07-07 02:04:21', '2024-07-07 02:04:21', '1', '1', '', '', '', '', '', '', '', '', 'Active', '', '', '', '', '', 0, 0, 1, 'Active', '', '', '', 0, 0, NULL),
('7a9b55d8-65cd-8340-9d5f-6689f7135431', 'despacho', '$2y$10$1UbMiap4TiTWW5FrSIX6F.CkxFjHGGW0y4y7.m3CtzTd0XihH79MW', 0, '2024-07-07 02:01:00', NULL, 1, 'despacho', 'Area', 0, 0, 1, NULL, '2024-07-07 02:01:54', '2024-07-07 02:32:41', '7a9b55d8-65cd-8340-9d5f-6689f7135431', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0, 0, NULL),
('85caa074-99e4-7b7b-20cb-6689f752b389', 'bodega', '$2y$10$DO8wtzDLhz81hFc0.B6lPu7qpUo/gcjoowxRoUCk4FpN2ID9PrPBa', 0, '2024-07-07 02:05:43', NULL, 1, 'Bodega', 'Area', 0, 0, 1, '', '2024-07-07 02:05:43', '2024-07-07 02:05:43', '1', '1', '', '', '', '', '', '', '', '', 'Active', '', '', '', '', '', 0, 0, 1, 'Active', '', '', '', 0, 0, NULL),
('ab66fc08-37cf-0829-7c32-667217f7f30c', 'alejo', '$2y$10$QGqp7wHWpttqyLa8E/O2COGV1e.6dg4v7FfygNFd9vDYW6bFyDV7S', 0, '2024-06-18 23:24:00', NULL, 1, 'Alejandro', 'Maldonado', 1, 0, 1, NULL, '2024-06-18 23:24:10', '2024-06-18 23:25:04', 'ab66fc08-37cf-0829-7c32-667217f7f30c', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0, 0, NULL),
('cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'confeccion', '$2y$10$8fs4.7qL9o8S5tPiTx1pb./24QByCD54K9JYCN0wuZazj1nRK1fUS', 0, '2024-07-07 01:22:28', NULL, 1, 'Confeccon', 'Area', 0, 0, 1, '', '2024-07-07 01:22:28', '2024-07-07 01:22:28', '1', '1', '', '', '', '', '', '', '', '', 'Active', '', '', '', '', '', 0, 0, 1, 'Active', '', '', '', 0, 0, NULL),
('e7621a64-99ee-7d49-7c05-6689f788e06b', 'contabilidad', '$2y$10$AnC7wkoi1RcBrwPNaW21xOpgBSVB17xUY8MVbmTmPAyxmQqe5XTVW', 0, '2024-07-07 02:04:53', NULL, 1, 'Contabilidad', 'Area', 0, 0, 1, '', '2024-07-07 02:04:53', '2024-07-07 02:04:53', '1', '1', '', '', '', '', '', '', '', '', 'Active', '', '', '', '', '', 0, 0, 1, 'Active', '', '', '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `keyhash` varchar(255) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `signature_html` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('1387defd-442d-dad1-7c0e-67343534bf68', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-13 05:11:26', '2024-11-13 05:11:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('13ce050c-97ef-4b96-9a51-6689f709ddfa', 'global', 0, '2024-07-07 02:04:21', '2024-07-07 02:04:21', '6d8e075d-a8fd-fc0c-b777-6689f70640da', 'YTozOTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjk6ImNhbWx0YXNrcyI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czo4OiJzdWJ0aGVtZSI7czo0OiJEYXduIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7fQ=='),
('14c2637f-e5c0-2943-542a-664e8249b85d', 'Home2_MEETING', 0, '2024-05-22 23:39:30', '2024-05-23 22:27:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('17e17063-fe56-75eb-05c6-6689fe52dfc8', 'Home', 0, '2024-07-07 02:32:42', '2024-07-17 03:32:50', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjI6e3M6MzY6IjczMzkwOTY2LTI3YmMtZDk2NC1mNzkxLTY2ODlmZTBjYmU3MCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjY4NWYxMTU4LTQxYjMtNzJkNS1kNWI1LTY2OTczYmFkY2FhNiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlUYXNrc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IlRhc2tzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9UYXNrcy9EYXNobGV0cy9NeVRhc2tzRGFzaGxldC9NeVRhc2tzRGFzaGxldC5waHAiO319czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjY4NWYxMTU4LTQxYjMtNzJkNS1kNWI1LTY2OTczYmFkY2FhNiI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToxOntpOjA7czozNjoiNzMzOTA5NjYtMjdiYy1kOTY0LWY3OTEtNjY4OWZlMGNiZTcwIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjMiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('17ec021e-f443-7515-bf42-664e828ed0fb', 'Home', 0, '2024-05-22 23:39:30', '2024-06-08 02:05:46', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjM4MjA4N2VjLTU5ODEtZjIzMC02MTBmLTY2NGU4NTkzZmMzMiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxMDoiUlNTRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czo3OiJvcHRpb25zIjthOjI6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vY2FtbHRhc2tzMS5lcGl6eS5jb20vcG9ydGFmb2xpby8iO3M6NToidGl0bGUiO3M6MDoiIjt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjQ3OiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvUlNTRGFzaGxldC9SU1NEYXNobGV0LnBocCI7fXM6MzY6IjI3OTgwYWUzLWZiNTItYmM5MS02NDAyLTY2NTI1ZmUwYTNkOSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImJhMmQwOWM1LTJiYTMtN2YwMS02MWYwLTY2NTI1ZmE0MDUxMSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjFhNjkxNjcxLTMyNDEtYTM2ZS0yNjA2LTY2NTI2MDRiNjFkNyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiQU9TX1F1b3Rlc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEwOiJBT1NfUXVvdGVzIjtzOjc6Im9wdGlvbnMiO2E6Njp7czo3OiJmaWx0ZXJzIjthOjE6e3M6MTI6ImRhdGVfZW50ZXJlZCI7YTowOnt9fXM6NToidGl0bGUiO3M6MTA6Ik1pcyBWZW50YXMiO3M6MTE6Im15SXRlbXNPbmx5IjtzOjQ6InRydWUiO3M6MTE6ImRpc3BsYXlSb3dzIjtzOjE6IjUiO3M6MTQ6ImRpc3BsYXlDb2x1bW5zIjthOjY6e2k6MDtzOjY6Im51bWJlciI7aToxO3M6MTU6ImJpbGxpbmdfYWNjb3VudCI7aToyO3M6NDoibmFtZSI7aTozO3M6NToic3RhZ2UiO2k6NDtzOjEyOiJ0b3RhbF9hbW91bnQiO2k6NTtzOjEwOiJleHBpcmF0aW9uIjt9czoxMToiYXV0b1JlZnJlc2giO3M6MjoiLTEiO31zOjEyOiJmaWxlTG9jYXRpb24iO3M6Njc6Im1vZHVsZXMvQU9TX1F1b3Rlcy9EYXNobGV0cy9BT1NfUXVvdGVzRGFzaGxldC9BT1NfUXVvdGVzRGFzaGxldC5waHAiO31zOjM2OiJkZTUwNDRjNS1lMTBkLWQwNTItOGMxOC02NjYzYmMyZjA5NmEiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15VGFza3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJUYXNrcyI7czo3OiJvcHRpb25zIjthOjY6e3M6NzoiZmlsdGVycyI7YTo1OntzOjY6InN0YXR1cyI7YTozOntpOjA7czoxMToiTm90IFN0YXJ0ZWQiO2k6MTtzOjExOiJJbiBQcm9ncmVzcyI7aToyO3M6OToiQ29tcGxldGVkIjt9czoxMjoiZGF0ZV9lbnRlcmVkIjthOjA6e31zOjEwOiJkYXRlX3N0YXJ0IjthOjE6e3M6NDoidHlwZSI7czo4OiJUUF90b2RheSI7fXM6ODoiZGF0ZV9kdWUiO2E6MDp7fXM6MTY6ImFzc2lnbmVkX3VzZXJfaWQiO2E6MTp7aTowO3M6MToiMSI7fX1zOjU6InRpdGxlIjtzOjI0OiJNaXMgQWN0aXZpZGFkZXMgYWJpZXJ0YXMiO3M6MTE6Im15SXRlbXNPbmx5IjtzOjQ6InRydWUiO3M6MTE6ImRpc3BsYXlSb3dzIjtzOjE6IjUiO3M6MTQ6ImRpc3BsYXlDb2x1bW5zIjthOjc6e2k6MDtzOjEyOiJzZXRfY29tcGxldGUiO2k6MTtzOjQ6Im5hbWUiO2k6MjtzOjExOiJwYXJlbnRfbmFtZSI7aTozO3M6ODoicHJpb3JpdHkiO2k6NDtzOjY6InN0YXR1cyI7aTo1O3M6MTA6ImRhdGVfc3RhcnQiO2k6NjtzOjg6ImRhdGVfZHVlIjt9czoxMToiYXV0b1JlZnJlc2giO3M6MjoiLTEiO31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvVGFza3MvRGFzaGxldHMvTXlUYXNrc0Rhc2hsZXQvTXlUYXNrc0Rhc2hsZXQucGhwIjt9czozNjoiNjY3ZDZiZGItYzIwMi0xZmU4LTU4M2MtNjY2M2JjZWYwOGZjIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeVRhc2tzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiVGFza3MiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL1Rhc2tzL0Rhc2hsZXRzL015VGFza3NEYXNobGV0L015VGFza3NEYXNobGV0LnBocCI7fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiZGU1MDQ0YzUtZTEwZC1kMDUyLThjMTgtNjY2M2JjMmYwOTZhIjtpOjE7czozNjoiMWE2OTE2NzEtMzI0MS1hMzZlLTI2MDYtNjY1MjYwNGI2MWQ3Ijt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjE6e2k6MDtzOjM2OiIyNzk4MGFlMy1mYjUyLWJjOTEtNjQwMi02NjUyNWZlMGEzZDkiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),
('186330af-af75-c84b-d363-6898fd5955a6', 'Notes2_NOTE', 0, '2025-08-10 20:12:05', '2025-08-10 20:12:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1ace1f72-c1cc-0182-729a-6689f7d941bd', 'GoogleSync', 0, '2024-07-07 02:04:21', '2024-07-07 02:04:21', '6d8e075d-a8fd-fc0c-b777-6689f70640da', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('1ad79872-fa46-b1c5-fffa-664e8278f91b', 'Home2_OPPORTUNITY', 0, '2024-05-22 23:39:30', '2024-05-23 22:27:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1cdbf8ec-8dba-dad0-c952-666df11d83ce', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-06-15 19:53:08', '2024-06-15 19:53:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1e012cf3-4f53-fef5-ed40-66973e9d8fc9', 'AOR_Reports2_AOR_REPORT', 0, '2024-07-17 03:45:07', '2024-07-17 03:45:07', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1e93376d-faa3-a707-668c-6689feea4f3f', 'Home2_CALL', 0, '2024-07-07 02:32:42', '2024-07-07 02:32:42', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1fdc4f9a-f6d3-ff92-cb41-667b2f0a4b05', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-06-25 20:58:01', '2024-06-25 20:58:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('20768b2e-6287-9b2d-e84a-664e82859161', 'Home2_ACCOUNT', 0, '2024-05-22 23:39:30', '2024-05-23 22:27:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('22236d16-17be-0a60-cb8f-664e8e6a388a', 'AOK_Knowledge_Base_Categories2_AOK_KNOWLEDGE_BASE_', 0, '2024-05-23 00:30:57', '2024-05-23 00:30:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('22ca5529-f26a-2bd4-ac11-6812d933c1a0', 'InboundEmail2_INBOUNDEMAIL', 0, '2025-05-01 02:17:28', '2025-05-01 02:17:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('22e15c20-575d-53a9-8280-66973b6add95', 'Home2_LEAD_743084e6-4d0e-31be-b361-6689fe0c0c45', 0, '2024-07-17 03:31:58', '2024-07-17 03:31:58', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('25be9850-b95e-c368-847e-664e82dbe114', 'Home2_LEAD', 0, '2024-05-22 23:39:30', '2024-05-23 22:27:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('25d91c50-20fb-630b-dbbb-6689fe4d9b5c', 'Home2_MEETING', 0, '2024-07-07 02:32:42', '2024-07-07 02:32:42', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('264dd65c-d8e1-87e9-d7d4-6689fd93ab44', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-07-07 02:27:15', '2024-07-07 02:27:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2859b95d-90f4-038d-74ed-6734355e9f56', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-13 05:14:03', '2024-11-13 05:14:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('29e90600-c3fc-e2ed-51cf-664e9b076cff', 'AOS_Products2_AOS_PRODUCTS', 0, '2024-05-23 01:28:31', '2024-05-23 01:28:31', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2b31486b-e618-eb76-3210-664ea0825e3b', 'ACLRoles2_ACLROLE', 0, '2024-05-23 01:49:18', '2024-05-23 01:49:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2bb0d209-e805-fdde-c0ad-664ea3cf7a86', 'Accounts', 0, '2024-05-23 02:02:28', '2024-06-07 23:25:20', '1', 'YToyOntzOjE0OiJzdWJwYW5lbExheW91dCI7YToxNjp7aTowO3M6MTg6ImFjY291bnRfYW9zX3F1b3RlcyI7aToxO3M6Mjc6InByb2R1Y3RzX3NlcnZpY2VzX3B1cmNoYXNlZCI7aToyO3M6MTA6ImFjdGl2aXRpZXMiO2k6MztzOjc6Imhpc3RvcnkiO2k6NDtzOjIwOiJhY2NvdW50X2Fvc19pbnZvaWNlcyI7aTo1O3M6OToiZG9jdW1lbnRzIjtpOjY7czo4OiJjb250YWN0cyI7aTo3O3M6MTM6Im9wcG9ydHVuaXRpZXMiO2k6ODtzOjk6ImNhbXBhaWducyI7aTo5O3M6NToibGVhZHMiO2k6MTA7czo4OiJhY2NvdW50cyI7aToxMTtzOjU6ImNhc2VzIjtpOjEyO3M6MjE6ImFjY291bnRfYW9zX2NvbnRyYWN0cyI7aToxMztzOjQ6ImJ1Z3MiO2k6MTQ7czo3OiJwcm9qZWN0IjtpOjE1O3M6MTQ6InNlY3VyaXR5Z3JvdXBzIjt9czoyMjoiTGlzdFZpZXdEaXNwbGF5Q29sdW1ucyI7YTowOnt9fQ=='),
('2ce7f700-b1ff-755d-8a28-664e826f9861', 'Home2_SUGARFEED', 0, '2024-05-22 23:39:30', '2024-05-23 22:27:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2cf648e6-203c-ab9f-d0ee-6689fe034af2', 'Home2_OPPORTUNITY', 0, '2024-07-07 02:32:42', '2024-07-07 02:32:42', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2e8e57f7-7633-05dd-e7c9-681c2116c3ef', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2025-05-08 03:14:57', '2025-05-08 03:14:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2fce6afa-faa5-2077-4fb1-673766dc0b69', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-15 15:17:32', '2024-11-15 15:17:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3156bcac-0fa9-e2f3-6fea-66973cae31b0', 'AOS_Quotes', 0, '2024-07-17 03:36:04', '2024-07-17 03:36:04', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('33a021de-d883-c14c-9aa7-6689fecc58e8', 'Home2_ACCOUNT', 0, '2024-07-07 02:32:42', '2024-07-07 02:32:42', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3492d0aa-fb52-cbc2-a445-6689f78ca72c', 'global', 0, '2024-07-07 02:05:43', '2024-07-07 02:05:43', '85caa074-99e4-7b7b-20cb-6689f752b389', 'YTozOTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjk6ImNhbWx0YXNrcyI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czo4OiJzdWJ0aGVtZSI7czo0OiJEYXduIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7fQ=='),
('35c3034a-3dfb-8be3-6c83-664e9be940ea', 'AOS_Contracts2_AOS_CONTRACTS', 0, '2024-05-23 01:26:48', '2024-05-23 01:26:48', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('36ef0159-9aba-c082-9960-664e905f8005', 'Dashboard', 0, '2024-05-23 00:42:29', '2024-05-23 22:27:01', '1', 'YTowOnt9'),
('39397d79-4881-ffc3-e4b0-6689fe2e1d23', 'Home2_LEAD', 0, '2024-07-07 02:32:42', '2024-07-07 02:32:42', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3b2b28ba-6212-21e6-6e40-6672156188ce', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-06-18 23:17:43', '2024-06-18 23:17:43', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3e87d756-006b-fdfc-7e26-6689f707aec6', 'GoogleSync', 0, '2024-07-07 02:05:43', '2024-07-07 02:05:43', '85caa074-99e4-7b7b-20cb-6689f752b389', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('3ecc2204-7fc7-9051-a579-667218b5b439', 'AOS_Products2_AOS_PRODUCTS', 0, '2024-06-18 23:30:34', '2024-06-18 23:30:34', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3f534dce-edf7-e2ed-4fa7-6689fe2ac159', 'Home2_SUGARFEED', 0, '2024-07-07 02:32:42', '2024-07-07 02:32:42', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4565c391-f0b5-13d1-b548-6689f72c225f', 'global', 0, '2024-07-07 02:01:54', '2024-07-17 03:55:37', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YTo0ODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MjA6InNvcnRfbW9kdWxlc19ieV9uYW1lIjtzOjA6IiI7czoxMzoic3VicGFuZWxfdGFicyI7czowOiIiO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjk6ImNhbWx0YXNrcyI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOjM2MDA7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJkYXRlZm9ybWF0IjtzOjU6ImQvbS9ZIjtzOjEwOiJ0aW1lZm9ybWF0IjtzOjQ6Img6aWEiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7czo2OiJUYXNrc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiQU9TX1Byb2R1Y3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjExOiJBT1NfUXVvdGVzUSI7YToyOntzOjE0OiJkaXNwbGF5Q29sdW1ucyI7czoxMDU6Ik5VTUJFUnxOQU1FfFNUQUdFfEJJTExJTkdfQ09OVEFDVHxCSUxMSU5HX0FDQ09VTlR8VE9UQUxfQU1PVU5UfEVYUElSQVRJT058QVNTSUdORURfVVNFUl9OQU1FfERBVEVfRU5URVJFRCI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMjoiQU9SX1JlcG9ydHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiVXNlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fX0='),
('46881203-81d4-03e4-815f-673255c3dc35', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-11 19:07:06', '2024-11-11 19:07:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('476559f9-e7ad-32ef-0d71-672ab91bfd2e', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-06 00:33:32', '2024-11-06 00:33:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4770226d-7f76-e364-9f5a-66973bc29c20', 'Home2_TASK_685f1158-41b3-72d5-d5b5-66973badcaa6', 0, '2024-07-17 03:32:32', '2024-07-17 03:32:32', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4989cf55-df63-4b29-e49a-665513661a39', 'Home2_AOW_PROCESSED_e6cd05a4-e7ab-60ec-0a11-665260', 0, '2024-05-27 23:11:30', '2024-05-27 23:11:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4c86806e-30ec-adde-aa15-664e90836e8b', 'AOK_Knowledge_Base_Categories2_AOK_KNOWLEDGE_BASE_', 0, '2024-05-23 00:42:34', '2024-05-23 00:42:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4d376ee1-2f4e-70ef-b57b-6689f7ed581b', 'GoogleSync', 0, '2024-07-07 02:01:54', '2024-07-07 02:32:41', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('4da93453-63c7-fcfd-6d3b-688e478028b9', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2025-08-02 17:13:01', '2025-08-02 17:13:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4dedafdb-2e4a-f84c-7d35-66526077c6ec', 'Home2_AOW_PROCESSED', 0, '2024-05-25 22:05:25', '2024-05-25 22:05:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4e48b10b-052b-9e66-16be-667a00016d06', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-06-24 23:23:49', '2024-06-24 23:23:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4e6ccb87-abe8-4328-d764-6723e5a9fc2f', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-10-31 20:14:16', '2024-10-31 20:14:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5051cfdc-0b04-d6e8-0ff2-67367f2d3682', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-14 22:54:07', '2024-11-14 22:54:07', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('517d4f9b-7908-135f-24d5-67365af29376', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-14 20:14:45', '2024-11-14 20:14:45', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('51c5b441-06f5-4dd3-4993-6734345386ea', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-13 05:09:30', '2024-11-13 05:09:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5201d904-95ec-782f-3d3c-6892c90a499a', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2025-08-06 03:19:06', '2025-08-06 03:19:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('520fe293-1edb-cd0f-67cc-66974071d86c', 'Users2_USER', 0, '2024-07-17 03:55:37', '2024-07-17 03:55:37', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5632ac80-f427-ec78-72f1-671bd9f569a5', 'global', 0, '2024-10-25 17:47:52', '2024-10-30 17:49:10', '32baac79-3049-9236-9e53-671bd9180ed4', 'YTo0Nzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo5OiJjYW1sdGFza3MiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czozOiJvZmYiO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czo4OiJzdWJ0aGVtZSI7czo0OiJEdXNrIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czo0OiJUb2RvIjtzOjk6IkFjY291bnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjExOiJBT1NfUXVvdGVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEwOiJFbXBsb3llZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTM6IkFPU19Qcm9kdWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoyMzoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo2OiJVc2Vyc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxMjoiQU9SX1JlcG9ydHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),
('58248f8e-b1e4-2352-194d-671bd9aedfbd', 'GoogleSync', 0, '2024-10-25 17:47:52', '2024-10-25 17:47:52', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('5c27c381-98db-349e-f61e-66973456ee09', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-07-17 03:05:27', '2024-07-17 03:05:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5c6f40a0-1d5a-c457-966d-6652604ad130', 'Home2_AOS_QUOTES', 0, '2024-05-25 22:06:05', '2024-05-25 22:06:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5ce30421-9c54-afb6-babc-66973c8202a4', 'AOS_Quotes2_AOS_QUOTES', 0, '2024-07-17 03:35:41', '2024-07-17 03:36:04', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo2OiJudW1iZXIiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('5dda04f7-30ab-0727-9252-6655138bcd65', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-05-27 23:11:30', '2024-05-27 23:11:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5ecf9545-cb4b-201c-e072-6689eddbee1c', 'global', 0, '2024-07-07 01:22:28', '2024-07-07 01:22:28', 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'YTozOTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjk6ImNhbWx0YXNrcyI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czo4OiJzdWJ0aGVtZSI7czo0OiJEYXduIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7fQ=='),
('60fcf9d0-d733-8cf2-d04c-6736577f1386', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-14 20:04:20', '2024-11-14 20:04:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('62637fc4-790e-5bfb-258a-664e8f2ca94f', 'AOW_WorkFlow2_AOW_WORKFLOW', 0, '2024-05-23 00:37:54', '2024-05-23 00:42:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6795c56b-155a-fd5f-23e7-6689edd98c53', 'GoogleSync', 0, '2024-07-07 01:22:28', '2024-07-07 01:22:28', 'cdd0f1a5-fb30-1a01-b976-6689ed89b5bf', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('69247def-9011-669d-bfd0-68952ec934de', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2025-08-07 22:51:42', '2025-08-07 22:51:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('69fe437c-fa53-64e4-1287-66a6d89b7e2e', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-07-28 23:48:04', '2024-07-28 23:48:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6c337c17-6f02-9457-55a1-6723e26fb95c', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-10-31 20:01:25', '2024-10-31 20:01:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6c507d4e-3ed9-ed10-ea35-664e8eb8c53d', 'AOS_Product_Categories2_AOS_PRODUCT_CATEGORIES', 0, '2024-05-23 00:31:07', '2024-05-23 00:42:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6c7574bc-8b50-c9c8-1389-6697359b42fd', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-07-17 03:05:59', '2024-07-17 03:05:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7044f81d-63f3-c9be-4fe9-6672350f2c30', 'Documents2_DOCUMENT', 0, '2024-06-19 01:32:03', '2024-06-19 01:32:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('73399cb4-ef2c-166c-7b8a-66973bdf2245', 'Home2_TASK', 0, '2024-07-17 03:32:30', '2024-07-17 03:32:30', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('73e412ca-a9e2-d83b-584d-6723dfb99a4f', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-10-31 19:52:12', '2024-10-31 19:52:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('751edc56-0823-e43b-8fa6-6812d2df4648', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2025-05-01 01:46:40', '2025-05-01 01:46:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('76c56440-da52-5ca8-f02e-67202d9f07ca', 'AOS_Product_Categories2_AOS_PRODUCT_CATEGORIES', 0, '2024-10-29 00:34:57', '2024-10-29 00:34:57', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('78b08800-4296-c616-9502-6734223a2a74', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-13 03:53:56', '2024-11-13 03:53:56', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('790c93cf-8d53-1b3c-bb2d-664e9082cbaf', 'Emails', 0, '2024-05-23 00:42:29', '2024-05-23 22:27:01', '1', 'YTowOnt9'),
('7aade850-bd56-af9a-b754-666398644f59', 'AOS_PDF_Templates2_AOS_PDF_TEMPLATES', 0, '2024-06-07 23:31:24', '2024-06-07 23:31:24', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7b297333-aafa-4668-b808-672029c4270c', 'Employees2_EMPLOYEE', 0, '2024-10-29 00:15:23', '2024-10-29 00:15:23', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7be9862c-d81a-1891-0a1c-664e82ec45d6', 'global', 0, '2024-05-22 23:38:30', '2025-08-16 20:17:58', '1', 'YTo2Njp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6Ijc1Y2RjMGQwLTAxN2MtMWFhMi03OTExLTY2NGU4MmVjZTcwZiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjI6InV0IjtzOjE6IjEiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBvcnQiO3M6MjoiMjUiO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mzoib2ZmIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxMDoidXNlcl90aGVtZSI7czo5OiJjYW1sdGFza3MiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7czo2OiJTcG90c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxODoiQU9LX0tub3dsZWRnZUJhc2VRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MzA6IkFPS19Lbm93bGVkZ2VfQmFzZV9DYXRlZ29yaWVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjIzOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjg6IlN1cnZleXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTM6IkFPV19Xb3JrRmxvd1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMjoiQU9SX1JlcG9ydHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6ODoic3VidGhlbWUiO3M6NDoiRHVzayI7czo5OiJBY2NvdW50c1EiO2E6Mjp7czoxNDoiZGlzcGxheUNvbHVtbnMiO047czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNDoiQU9TX0NvbnRyYWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiQU9TX1Byb2R1Y3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjI1OiJDb250YWN0c19DT05UQUNUX09SREVSX0JZIjtzOjIyOiJwcmltYXJ5X2FkZHJlc3Nfc3RyZWV0IjtzOjY6IlRhc2tzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjk6IkFDTFJvbGVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjY6IkxlYWRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEwOiJFbXBsb3llZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6OToiQ29udGFjdHNRIjthOjIzOntzOjE4OiJzZWxlY3RfZW50aXJlX2xpc3QiO3M6MToiMCI7czoyMzoiQ29udGFjdHNfQ09OVEFDVF9vZmZzZXQiO3M6MToiMCI7czoyNToiQ29udGFjdHNfQ09OVEFDVF9PUkRFUl9CWSI7czoxOiIwIjtzOjY6Im1vZHVsZSI7czo4OiJDb250YWN0cyI7czo2OiJhY3Rpb24iO3M6MjQ6IkNsb3NlQ29udGFjdEFkZHJlc3NQb3B1cCI7czo2OiJVcGRhdGUiO3M6NjoiVXBkYXRlIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MjE6InNhdmVkX2Fzc29jaWF0ZWRfZGF0YSI7czowOiIiO3M6MTI6ImNsb3NlX3dpbmRvdyI7czo0OiJ0cnVlIjtzOjQ6Imh0bWwiO3M6MTQ6ImNoYW5nZV9hZGRyZXNzIjtzOjEyOiJhY2NvdW50X25hbWUiO3M6MTk6IkFsZWphbmRybyBNYWxkb25hZG8iO3M6MjI6InByaW1hcnlfYWRkcmVzc19zdHJlZXQiO3M6MDoiIjtzOjIwOiJwcmltYXJ5X2FkZHJlc3NfY2l0eSI7czowOiIiO3M6MjE6InByaW1hcnlfYWRkcmVzc19zdGF0ZSI7czowOiIiO3M6MjY6InByaW1hcnlfYWRkcmVzc19wb3N0YWxjb2RlIjtzOjA6IiI7czoyMzoicHJpbWFyeV9hZGRyZXNzX2NvdW50cnkiO3M6MDoiIjtzOjE4OiJhbHRfYWRkcmVzc19zdHJlZXQiO3M6Mjk6IkNMIDU3QyBTVVIgNzdJIDYwIEJRIDUgQVAgMTEwIjtzOjE2OiJhbHRfYWRkcmVzc19jaXR5IjtzOjc6Iktlbm5lZHkiO3M6MTc6ImFsdF9hZGRyZXNzX3N0YXRlIjtzOjEwOiJCb2dvdGEgRC5DIjtzOjIyOiJhbHRfYWRkcmVzc19wb3N0YWxjb2RlIjtzOjA6IiI7czoxOToiYWx0X2FkZHJlc3NfY291bnRyeSI7czo4OiJDb2xvbWJpYSI7czo2OiJidXR0b24iO3M6Mjg6IiAgQ29waWFyIGEgb3RyYSBkaXJlY2Npw7NuICAiO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTE6IkFPU19RdW90ZXNRIjthOjk6e3M6NjoibW9kdWxlIjtzOjEwOiJBT1NfUXVvdGVzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czoxNDoiZGlzcGxheUNvbHVtbnMiO3M6MTM5OiJOVU1CRVJ8TkFNRXxTVEFHRXxUSVBPX1ZFTlRBX0N8QklMTElOR19BQ0NPVU5UfEVTVEFET19FTlRSRUdBX0N8RkVDSEFfRU5UUkVHQV9DfERPTUlDSUxJQVJJT19DfFRPVEFMX0FNT1VOVHxBU1NJR05FRF9VU0VSX05BTUV8REFURV9FTlRFUkVEIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTY6InVzZV9zdG9yZWRfcXVlcnkiO3M6NDoidHJ1ZSI7czoyMzoidXBkYXRlX3N0b3JlZF9xdWVyeV9rZXkiO3M6MTQ6ImRpc3BsYXlDb2x1bW5zIjtzOjE1OiJsYXN0X3NlYXJjaF90YWIiO3M6ODoiYWR2YW5jZWQiO3M6MTg6InNhdmVfY29sdW1uc19vcmRlciI7czo0OiJ0cnVlIjtzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE4OiJBT1NfUERGX1RlbXBsYXRlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJNZWV0aW5nc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czo2OiJVc2Vyc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxMDoiRG9jdW1lbnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjc6IkVtYWlsc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiSW5ib3VuZEVtYWlsUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjY6Ik5vdGVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),
('7cc9f27c-a5ac-1217-9436-664e8ed28e9e', 'AOK_KnowledgeBase2_AOK_KNOWLEDGEBASE', 0, '2024-05-23 00:30:26', '2024-05-23 00:42:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7d76040a-1b42-93ab-a05c-667217bfb6df', 'Accounts2_ACCOUNT', 0, '2024-06-18 23:27:08', '2024-06-18 23:27:08', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8001bde3-3fa1-4bd4-8b57-664e827407db', 'GoogleSync', 0, '2024-05-22 23:38:30', '2024-05-23 22:27:01', '1', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('80718268-6814-1a7f-5d6d-671bd9ab8f9a', 'Home', 0, '2024-10-25 17:48:21', '2024-10-25 17:50:35', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjM6e3M6MzY6IjY2MDFhYjczLTQ1N2ItMDA5Yi1iMGM5LTY3MWJkOTcwODMyZiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjY2NTFjZDVkLTBlNzItNjZjNy03MjMwLTY3MWJkOThkZjcyNCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlMZWFkc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkxlYWRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9MZWFkcy9EYXNobGV0cy9NeUxlYWRzRGFzaGxldC9NeUxlYWRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6Ijc5ODhkZWY2LTdjYmMtMWE4MS0yZTlhLTY3MWJkYTlmYjkwYSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlUYXNrc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IlRhc2tzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9UYXNrcy9EYXNobGV0cy9NeVRhc2tzRGFzaGxldC9NeVRhc2tzRGFzaGxldC5waHAiO319czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Mjp7aTowO3M6MzY6Ijc5ODhkZWY2LTdjYmMtMWE4MS0yZTlhLTY3MWJkYTlmYjkwYSI7aToxO3M6MzY6IjY2NTFjZDVkLTBlNzItNjZjNy03MjMwLTY3MWJkOThkZjcyNCI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToxOntpOjA7czozNjoiNjYwMWFiNzMtNDU3Yi0wMDliLWIwYzktNjcxYmQ5NzA4MzJmIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjMiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('80ed3625-0b7f-044f-7c00-664fc28a6819', 'Users', 0, '2024-05-23 22:25:48', '2024-05-23 22:27:01', '1', 'YTowOnt9'),
('8216051a-0a53-fe90-78b6-664e8ee1124d', 'Surveys2_SURVEYS', 0, '2024-05-23 00:31:48', '2024-05-23 00:42:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('82347edc-41e3-746a-18d0-671bd90ee535', 'Home2_CALL', 0, '2024-10-25 17:48:21', '2024-10-25 17:48:21', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8423599b-7b50-b9a5-c942-671bd9255a0c', 'Home2_MEETING', 0, '2024-10-25 17:48:21', '2024-10-25 17:48:21', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('84eb7501-ab15-6cff-2477-6663bc8e3c61', 'Tasks2_TASK', 0, '2024-06-08 02:06:04', '2024-06-08 02:06:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('85f72b90-8292-566d-b651-671bd998e38f', 'Home2_OPPORTUNITY', 0, '2024-10-25 17:48:21', '2024-10-25 17:48:21', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('87cc0790-20b6-d6e0-e5d4-671bd9505589', 'Home2_ACCOUNT', 0, '2024-10-25 17:48:21', '2024-10-25 17:48:21', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('882d6920-d462-ab0f-c18a-68a0e0863f03', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2025-08-16 19:46:47', '2025-08-16 19:46:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('88b289b0-9d30-ebdf-9e6f-669744c9fc85', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-07-17 04:13:08', '2024-07-17 04:13:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8a4cd73e-7fea-bc31-e8b6-671bd9478608', 'Home2_LEAD', 0, '2024-10-25 17:48:21', '2024-10-25 17:48:21', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8c1ef607-6ed7-834e-0a24-671bd92566c0', 'Home2_SUGARFEED', 0, '2024-10-25 17:48:21', '2024-10-25 17:48:21', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8d5ec3ba-0bfb-ba95-5376-6689f70dff44', 'global', 0, '2024-07-07 02:04:53', '2024-07-07 02:04:53', 'e7621a64-99ee-7d49-7c05-6689f788e06b', 'YTozOTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjk6ImNhbWx0YXNrcyI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czo4OiJzdWJ0aGVtZSI7czo0OiJEYXduIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7fQ=='),
('8e5d381a-81d0-2ed0-57f8-6689fe2dfd71', 'Accounts', 0, '2024-07-07 02:34:36', '2024-07-17 03:34:13', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjE0OiJzdWJwYW5lbExheW91dCI7YToxNjp7aTowO3M6Mjc6InByb2R1Y3RzX3NlcnZpY2VzX3B1cmNoYXNlZCI7aToxO3M6MTA6ImFjdGl2aXRpZXMiO2k6MjtzOjE4OiJhY2NvdW50X2Fvc19xdW90ZXMiO2k6MztzOjc6Imhpc3RvcnkiO2k6NDtzOjk6ImRvY3VtZW50cyI7aTo1O3M6ODoiY29udGFjdHMiO2k6NjtzOjEzOiJvcHBvcnR1bml0aWVzIjtpOjc7czo5OiJjYW1wYWlnbnMiO2k6ODtzOjU6ImxlYWRzIjtpOjk7czo4OiJhY2NvdW50cyI7aToxMDtzOjU6ImNhc2VzIjtpOjExO3M6MjA6ImFjY291bnRfYW9zX2ludm9pY2VzIjtpOjEyO3M6MjE6ImFjY291bnRfYW9zX2NvbnRyYWN0cyI7aToxMztzOjQ6ImJ1Z3MiO2k6MTQ7czo3OiJwcm9qZWN0IjtpOjE1O3M6MTQ6InNlY3VyaXR5Z3JvdXBzIjt9fQ=='),
('8f39edf8-019a-47aa-9466-665260bf37a1', 'Home2_AOW_PROCESSED_e6cd05a4-e7ab-60ec-0a11-665260', 0, '2024-05-25 22:05:27', '2024-05-25 22:05:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8fe6894a-2b33-4df1-a410-6672176e760a', 'global', 0, '2024-06-18 23:24:10', '2024-06-18 23:30:34', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YTo0NDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MjA6InNvcnRfbW9kdWxlc19ieV9uYW1lIjtzOjA6IiI7czoxMzoic3VicGFuZWxfdGFicyI7czowOiIiO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjk6ImNhbWx0YXNrcyI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOjM2MDA7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJkYXRlZm9ybWF0IjtzOjU6ImQvbS9ZIjtzOjEwOiJ0aW1lZm9ybWF0IjtzOjQ6Img6aWEiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiQU9TX1Byb2R1Y3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO319'),
('910a08b9-0dfd-b6d8-9550-667216562d74', 'Users2_USER', 0, '2024-06-18 23:22:54', '2024-06-18 23:22:54', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('917b2e88-46dc-3a34-a3e2-671bda6bd4c3', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-10-25 17:52:22', '2024-10-25 17:52:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('93283fb7-5669-4718-aab0-664e8fd1f7be', 'AOR_Reports2_AOR_REPORT', 0, '2024-05-23 00:38:08', '2024-05-23 00:42:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('94a90840-927b-b791-e463-671bd9abe0e5', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-10-25 17:46:42', '2024-10-25 17:46:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9587bd43-9ae6-0f26-1600-665536f575c6', 'AOS_Quotes2_AOS_QUOTES', 0, '2024-05-28 01:44:19', '2024-11-13 04:00:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo2OiJudW1iZXIiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('961d46e3-ecab-ccb1-0edf-6689f78b8963', 'GoogleSync', 0, '2024-07-07 02:04:53', '2024-07-07 02:04:53', 'e7621a64-99ee-7d49-7c05-6689f788e06b', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('99f42b0b-7342-ff19-c8c9-673424abdeed', 'AOS_Quotes', 0, '2024-11-13 04:00:36', '2024-11-13 04:00:36', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('9cc239d3-5653-fcff-a764-6672178222ae', 'GoogleSync', 0, '2024-06-18 23:24:10', '2024-06-18 23:24:10', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('9dd223b8-d8e6-affa-028a-667217e3ad68', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-06-18 23:23:52', '2024-06-18 23:23:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9fe4a298-7c1e-6e2b-81ec-664e90144f26', 'AOK_Knowledge_Base_Categories2_AOK_KNOWLEDGE_BASE_', 0, '2024-05-23 00:42:29', '2024-05-23 00:42:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a03b475b-3a34-ff89-10ef-667217b57823', 'Home', 0, '2024-06-18 23:25:06', '2024-06-18 23:25:06', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjRmNjQxOTdjLWIyNWMtNjhmNy00ZjAwLTY2NzIxN2I4MTlmZiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjhlNDc3YWY3LWEyMzEtOGJjZi1hMzNhLTY2NzIxN2Y5NjhmMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImNmMzJiYjViLTdmNjUtNzI5My1mOTFkLTY2NzIxNzBhNTQ4ZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjFmNjc2Y2NkLWJmZjItMTI2NC1hNTY0LTY2NzIxNzM3ZGE2NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjU0Y2JlNjEtNmQ2YS04ODQ0LTliNjQtNjY3MjE3ZGRmN2RkIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYTljYzQzNTItYWU5ZC01Yjc0LWVlODktNjY3MjE3NTcxYTRhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI4ZTQ3N2FmNy1hMjMxLThiY2YtYTMzYS02NjcyMTdmOTY4ZjAiO2k6MTtzOjM2OiJjZjMyYmI1Yi03ZjY1LTcyOTMtZjkxZC02NjcyMTcwYTU0OGYiO2k6MjtzOjM2OiIxZjY3NmNjZC1iZmYyLTEyNjQtYTU2NC02NjcyMTczN2RhNjciO2k6MztzOjM2OiI2NTRjYmU2MS02ZDZhLTg4NDQtOWI2NC02NjcyMTdkZGY3ZGQiO2k6NDtzOjM2OiJhOWNjNDM1Mi1hZTlkLTViNzQtZWU4OS02NjcyMTc1NzFhNGEiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjRmNjQxOTdjLWIyNWMtNjhmNy00ZjAwLTY2NzIxN2I4MTlmZiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('a095787f-93bb-18b5-21c8-671bd96dff9e', 'Home2_LEAD_6651cd5d-0e72-66c7-7230-671bd98df724', 0, '2024-10-25 17:48:25', '2024-10-25 17:48:25', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a99f4fbe-125a-4f32-0a1d-664e90560ffb', 'ETag', 0, '2024-05-23 00:42:29', '2024-05-23 22:27:01', '1', 'YTowOnt9'),
('aa614c0a-deaf-2596-2bde-664e8d67afd2', 'Spots2_SPOTS', 0, '2024-05-23 00:26:52', '2024-05-23 00:42:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('abbb4776-d947-88d2-952a-667217e53908', 'Home2_CALL', 0, '2024-06-18 23:25:06', '2024-06-18 23:25:06', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b1e5a7fa-1e0c-6b75-e3a6-6689d5a9d78b', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-07-06 23:40:04', '2024-07-06 23:40:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b7745275-5561-8ca3-0f06-6672177949f8', 'Home2_MEETING', 0, '2024-06-18 23:25:06', '2024-06-18 23:25:06', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b7a45a3e-989b-f572-edc4-6726f2c5689d', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-03 03:46:25', '2024-11-03 03:46:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bb536118-8b82-01f5-9507-664e821011e0', 'Home2_LEAD_9c98fa5e-8e7d-a7c5-fd96-664e823e0827', 0, '2024-05-22 23:39:43', '2024-05-23 22:27:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bbc47f8d-6691-7b22-276a-6723e25a1eb3', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-10-31 20:02:34', '2024-10-31 20:02:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bcbf7e02-f0dc-cff6-b3a7-6663bc97b9d6', 'Home2_TASK', 0, '2024-06-08 02:04:31', '2024-06-08 02:04:31', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bd9ea359-e5a9-4ee6-dc0d-6898ebfc9bcb', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2025-08-10 18:58:43', '2025-08-10 18:58:43', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('beff04d9-9e78-6ddc-5b76-67343338e7de', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-11-13 05:03:50', '2024-11-13 05:03:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bf146c5a-cdea-6713-053f-664fc2eae730', 'Employees2_EMPLOYEE', 0, '2024-05-23 22:24:31', '2024-05-23 22:27:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bf934fff-ac13-0e97-31f5-672269ecd732', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-10-30 17:13:21', '2024-10-30 17:13:21', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c0081d2c-085f-2e42-fc47-671bdab29556', 'AOS_Quotes2_AOS_QUOTES', 0, '2024-10-25 17:49:06', '2024-10-25 17:49:06', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c220a899-1019-3e6c-28de-68a0e7c1faf0', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2025-08-16 20:18:06', '2025-08-16 20:18:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c2c2da12-ec75-8a34-bd1e-667217b2c0f4', 'Home2_OPPORTUNITY', 0, '2024-06-18 23:25:06', '2024-06-18 23:25:06', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c61b1075-8b08-04cc-cad1-66639bfaf940', 'Meetings2_MEETING', 0, '2024-06-07 23:46:06', '2024-06-07 23:46:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c75aa102-f2ea-cd0e-7545-67227107c847', 'AOR_Reports2_AOR_REPORT', 0, '2024-10-30 17:49:10', '2024-10-30 17:49:10', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c775c7d1-8e77-0315-6412-671bcb2e2e71', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-10-25 16:46:15', '2024-10-25 16:46:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cbd9c228-d3f2-ab36-8c94-664e904c882b', 'AOK_Knowledge_Base_Categories2_AOK_KNOWLEDGE_BASE_', 0, '2024-05-23 00:42:29', '2024-05-23 00:42:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ce5b0971-8cc9-d17a-3c2d-66721775ef1a', 'Home2_ACCOUNT', 0, '2024-06-18 23:25:06', '2024-06-18 23:25:06', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cfeed6f1-1e14-00fd-dff4-6663963776a4', 'Home2_AOW_PROCESSED_e6cd05a4-e7ab-60ec-0a11-665260', 0, '2024-06-07 23:22:29', '2024-06-07 23:22:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d12370b8-22b9-ecee-400d-671bdae1a1ec', 'Home2_TASK_7988def6-7cbc-1a81-2e9a-671bda9fb90a', 0, '2024-10-25 17:50:35', '2024-10-25 17:50:35', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d2f426ee-4880-de80-0419-665260cb0c47', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-05-25 22:06:07', '2024-05-25 22:06:07', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d31c6110-fcc2-ce33-e9e2-68a31acc6a75', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2025-08-18 12:19:40', '2025-08-18 12:19:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d3e18229-9dc5-529e-cdc0-66721694e645', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-06-18 23:21:43', '2024-06-18 23:21:43', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d44034f0-c470-702e-ca14-66973dc72186', 'Accounts2_ACCOUNT', 0, '2024-07-17 03:41:27', '2024-07-17 03:41:27', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d4c0fd13-a1b1-755c-33a7-667217cb670d', 'Home2_LEAD_a9cc4352-ae9d-5b74-ee89-667217571a4a', 0, '2024-06-18 23:25:15', '2024-06-18 23:25:15', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d4d62f64-6f56-3b10-2191-671bd7fdf7e8', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-10-25 17:37:23', '2024-10-25 17:37:23', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d55d04ea-57ee-658b-8f26-6723e5d9bfc1', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-10-31 20:17:50', '2024-10-31 20:17:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d5f2f509-7f90-c970-4b11-671bd9afe0bb', 'Accounts2_ACCOUNT', 0, '2024-10-25 17:48:34', '2024-10-25 17:48:34', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('da72ddd2-f1e8-0ebc-2ddf-66721720f6fd', 'Home2_LEAD', 0, '2024-06-18 23:25:06', '2024-06-18 23:25:06', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dd316206-1c55-1b68-ade6-6663bc12377f', 'Home2_TASK_de5044c5-e10d-d052-8c18-6663bc2f096a', 0, '2024-06-08 02:04:35', '2024-06-08 02:04:35', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dd3f1843-1103-128f-e0af-664ea663883a', 'Leads2_LEAD', 0, '2024-05-23 02:16:08', '2024-05-23 02:16:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ddad1895-b50a-4b63-0c70-667e3c0aa26d', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-06-28 04:32:36', '2024-06-28 04:32:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('df96a04c-2689-82a0-8981-665517ad9474', 'Contacts2_CONTACT', 0, '2024-05-27 23:30:33', '2024-05-27 23:30:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e0a7424d-c0bc-8d9e-ee87-666396406d3d', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-06-07 23:22:29', '2024-06-07 23:22:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e0f83466-fe9f-7192-fd7e-671bda786c39', 'Home2_TASK', 0, '2024-10-25 17:50:34', '2024-10-25 17:50:34', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e1e0e790-38d8-f3be-a6ff-672029c68790', 'AOS_Products2_AOS_PRODUCTS', 0, '2024-10-29 00:16:02', '2024-10-29 00:16:02', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e3490862-4705-ab86-bcf4-667cc2384372', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-06-27 01:37:55', '2024-06-27 01:37:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e41f0542-8408-db7d-b9e2-664e82b5bc75', 'Home2_CALL', 0, '2024-05-22 23:39:30', '2024-05-23 22:27:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e536f452-ddb2-1c2d-05ce-688e355bc3f5', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2025-08-02 15:59:50', '2025-08-02 15:59:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e5764bdf-a884-25cc-8b81-6689fed53589', 'Tasks2_TASK', 0, '2024-07-07 02:33:29', '2024-07-07 02:33:29', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e61334da-562d-f1f0-7f8d-667217a878ce', 'Home2_SUGARFEED', 0, '2024-06-18 23:25:06', '2024-06-18 23:25:06', 'ab66fc08-37cf-0829-7c32-667217f7f30c', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e763cd1c-abd4-b0d5-63a7-67202ee74fc1', 'Users2_USER', 0, '2024-10-29 00:37:23', '2024-10-29 00:37:23', '32baac79-3049-9236-9e53-671bd9180ed4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f0830e60-d781-7340-f63c-664e913fdc92', 'Accounts2_ACCOUNT', 0, '2024-05-23 00:45:18', '2024-07-17 03:07:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czowOiIiO319'),
('f16c1ba1-3f06-5e25-d12a-6689fcaedc73', 'Home2_AOS_QUOTES_1a691671-3241-a36e-2606-6652604b6', 0, '2024-07-07 02:26:11', '2024-07-07 02:26:11', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f352ff83-2158-03a1-8f6b-6689fe1d7941', 'AOS_Products2_AOS_PRODUCTS', 0, '2024-07-07 02:34:55', '2024-07-07 02:34:55', '7a9b55d8-65cd-8340-9d5f-6689f7135431', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vcals`
--

INSERT INTO `vcals` (`id`, `deleted`, `date_entered`, `date_modified`, `user_id`, `type`, `source`, `content`) VALUES
('ab4430e1-1210-0137-cd76-664ea637d538', 0, '2024-05-23 02:12:50', '2024-06-07 23:47:10', '1', 'vfb', 'sugar', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=Administrator:VFREEBUSY\r\nDTSTART:2024-06-06 22:00:00\r\nDTEND:2024-08-06 22:00:00\r\nFREEBUSY:20240607T170000Z/20240607T171500Z\r\nX-FREEBUSY-ID:cffbb5f4-57da-c4e4-994d-66639b2970c5\r\nX-FREEBUSY-TYPE:Meeting\r\nDTSTAMP:2024-06-07 23:47:10\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indices de la tabla `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indices de la tabla `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indices de la tabla `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indices de la tabla `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indices de la tabla `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indices de la tabla `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indices de la tabla `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indices de la tabla `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indices de la tabla `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indices de la tabla `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indices de la tabla `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indices de la tabla `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Indices de la tabla `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indices de la tabla `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Indices de la tabla `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indices de la tabla `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indices de la tabla `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Indices de la tabla `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Indices de la tabla `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Indices de la tabla `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Indices de la tabla `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Indices de la tabla `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Indices de la tabla `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indices de la tabla `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indices de la tabla `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indices de la tabla `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indices de la tabla `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indices de la tabla `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indices de la tabla `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_products_cstm`
--
ALTER TABLE `aos_products_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `aos_products_documents_1_c`
--
ALTER TABLE `aos_products_documents_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_products_documents_1_ida1` (`aos_products_documents_1aos_products_ida`),
  ADD KEY `aos_products_documents_1_alt` (`aos_products_documents_1documents_idb`);

--
-- Indices de la tabla `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indices de la tabla `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indices de la tabla `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_quotes_cstm`
--
ALTER TABLE `aos_quotes_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indices de la tabla `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indices de la tabla `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indices de la tabla `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indices de la tabla `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indices de la tabla `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indices de la tabla `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indices de la tabla `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indices de la tabla `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indices de la tabla `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indices de la tabla `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indices de la tabla `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indices de la tabla `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indices de la tabla `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indices de la tabla `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indices de la tabla `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`),
  ADD KEY `idx_survey_id` (`survey_id`);

--
-- Indices de la tabla `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indices de la tabla `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indices de la tabla `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indices de la tabla `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indices de la tabla `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indices de la tabla `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indices de la tabla `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indices de la tabla `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indices de la tabla `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indices de la tabla `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indices de la tabla `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indices de la tabla `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indices de la tabla `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indices de la tabla `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indices de la tabla `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indices de la tabla `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indices de la tabla `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indices de la tabla `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indices de la tabla `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indices de la tabla `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indices de la tabla `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indices de la tabla `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indices de la tabla `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  ADD KEY `idx_email_cat` (`category_id`),
  ADD KEY `idx_email_uid` (`uid`);

--
-- Indices de la tabla `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indices de la tabla `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indices de la tabla `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indices de la tabla `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indices de la tabla `email_addresses_audit`
--
ALTER TABLE `email_addresses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_addresses_parent_id` (`parent_id`);

--
-- Indices de la tabla `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indices de la tabla `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indices de la tabla `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indices de la tabla `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indices de la tabla `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indices de la tabla `external_oauth_connections`
--
ALTER TABLE `external_oauth_connections`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `external_oauth_providers`
--
ALTER TABLE `external_oauth_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indices de la tabla `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indices de la tabla `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indices de la tabla `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indices de la tabla `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indices de la tabla `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indices de la tabla `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indices de la tabla `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indices de la tabla `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indices de la tabla `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Indices de la tabla `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indices de la tabla `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indices de la tabla `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indices de la tabla `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indices de la tabla `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indices de la tabla `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indices de la tabla `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indices de la tabla `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indices de la tabla `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indices de la tabla `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indices de la tabla `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indices de la tabla `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indices de la tabla `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indices de la tabla `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indices de la tabla `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indices de la tabla `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indices de la tabla `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indices de la tabla `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indices de la tabla `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indices de la tabla `oauth2clients`
--
ALTER TABLE `oauth2clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth2tokens`
--
ALTER TABLE `oauth2tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indices de la tabla `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indices de la tabla `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indices de la tabla `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indices de la tabla `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indices de la tabla `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indices de la tabla `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Indices de la tabla `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indices de la tabla `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indices de la tabla `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indices de la tabla `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indices de la tabla `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indices de la tabla `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indices de la tabla `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indices de la tabla `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indices de la tabla `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indices de la tabla `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indices de la tabla `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indices de la tabla `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indices de la tabla `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indices de la tabla `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indices de la tabla `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indices de la tabla `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Indices de la tabla `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indices de la tabla `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indices de la tabla `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indices de la tabla `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indices de la tabla `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indices de la tabla `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indices de la tabla `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indices de la tabla `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indices de la tabla `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indices de la tabla `surveyquestionoptions`
--
ALTER TABLE `surveyquestionoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `surveyquestionoptions_audit`
--
ALTER TABLE `surveyquestionoptions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionoptions_parent_id` (`parent_id`);

--
-- Indices de la tabla `surveyquestionoptions_surveyquestionresponses`
--
ALTER TABLE `surveyquestionoptions_surveyquestionresponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`);

--
-- Indices de la tabla `surveyquestionresponses`
--
ALTER TABLE `surveyquestionresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `surveyquestionresponses_audit`
--
ALTER TABLE `surveyquestionresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionresponses_parent_id` (`parent_id`);

--
-- Indices de la tabla `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `surveyquestions_audit`
--
ALTER TABLE `surveyquestions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestions_parent_id` (`parent_id`);

--
-- Indices de la tabla `surveyresponses`
--
ALTER TABLE `surveyresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `surveyresponses_audit`
--
ALTER TABLE `surveyresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyresponses_parent_id` (`parent_id`);

--
-- Indices de la tabla `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `surveys_audit`
--
ALTER TABLE `surveys_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveys_parent_id` (`parent_id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indices de la tabla `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indices de la tabla `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`);

--
-- Indices de la tabla `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indices de la tabla `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indices de la tabla `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indices de la tabla `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indices de la tabla `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indices de la tabla `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
