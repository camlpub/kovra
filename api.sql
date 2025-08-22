-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2025 a las 15:14:01
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
-- Base de datos: `api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `nombre` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `activo` int(11) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL,
  `date_entered` datetime NOT NULL,
  `tipo` varchar(200) NOT NULL DEFAULT 'home',
  `id_categoria` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`nombre`, `url`, `activo`, `id`, `date_entered`, `tipo`, `id_categoria`) VALUES
('10_08_25_10_06_38_4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', '10_08_25_10_06_38_4b61333a-9f17-4bce-860e-8c2ef1db56c8.png', 1, 23, '2025-08-10 22:06:38', 'home', NULL),
('10_08_25_10_07_13_Frame 350.png', '10_08_25_10_07_13_Frame 350.png', 1, 24, '2025-08-10 22:07:13', 'categoria', '957cd55c-fee0-dd2c-8131-688ee58cb068'),
('10_08_25_11_48_21_16261127170.webp', '10_08_25_11_48_21_16261127170.webp', 1, 25, '2025-08-10 23:48:21', 'home', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT 0,
  `parent_category_id` char(36) DEFAULT NULL,
  `date_entered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `name`, `description`, `is_parent`, `parent_category_id`, `date_entered`) VALUES
('926a1ca5-ce1f-647f-6f81-688ee48a65aa', 'VERANO', '', 1, '', '2025-08-03 04:23:58'),
('b66f1e4d-8bc2-a8de-c4f7-688ee4ad6a0e', 'CAMISAS', '', 0, '926a1ca5-ce1f-647f-6f81-688ee48a65aa', '2025-08-03 04:24:18'),
('b4494b8e-17f6-b518-da8b-688ee52c794a', 'INVIERNO', 'Nuevo elemento', 1, '', '2025-08-03 04:27:48'),
('d82c889e-0aef-0be5-15eb-688ee51be5aa', 'Pantalones', '', 0, 'b4494b8e-17f6-b518-da8b-688ee52c794a', '2025-08-03 04:28:18'),
('957cd55c-fee0-dd2c-8131-688ee58cb068', 'OTO&Ntilde;O', '', 1, '', '2025-08-03 04:28:54'),
('a19bd435-18fb-76d4-fe44-688ee567dc3d', 'otro', '', 0, '957cd55c-fee0-dd2c-8131-688ee58cb068', '2025-08-03 04:29:12'),
('691b0307-9e56-857e-a6a2-688ee8da1669', 'pantys', '', 0, '957cd55c-fee0-dd2c-8131-688ee58cb068', '2025-08-03 04:41:35'),
('1fda13a2-2dee-71d7-f85f-688ee80f6f76', 'nuevo', '', 0, '957cd55c-fee0-dd2c-8131-688ee58cb068', '2025-08-03 04:41:49'),
('3ee674f7-d16e-32ec-9e53-688ee847d065', 'pantalones', '', 0, '957cd55c-fee0-dd2c-8131-688ee58cb068', '2025-08-03 04:42:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `fecha_creado` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm`
--

CREATE TABLE `crm` (
  `id` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `crm`
--

INSERT INTO `crm` (`id`, `estado`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `estado` varchar(200) NOT NULL,
  `id_usuario` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `id_venta`, `estado`, `id_usuario`) VALUES
(30, 39, 'Entregado', '2dda2042-8174-a944-dc32-6737aa2bd127'),
(31, 38, 'Entregado', '2dda2042-8174-a944-dc32-6737aa2bd127'),
(32, 37, 'Devuelto', '2dda2042-8174-a944-dc32-6737aa2bd127'),
(33, 36, 'Reprogramar', '2dda2042-8174-a944-dc32-6737aa2bd127'),
(34, 36, 'Reprogramar', '409f6f2f-78c2-49d9-c2db-6737aacd9140'),
(35, 36, 'Asignado', '6f589093-3ce1-6bd4-c06f-6737aaf52885');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` int(11) NOT NULL,
  `id_crm` varchar(200) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `valoracion` decimal(3,2) DEFAULT NULL,
  `es_nuevo` tinyint(1) DEFAULT 0,
  `es_oferta` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `id_crm`, `imagen`, `categoria_id`, `marca`, `valoracion`, `es_nuevo`, `es_oferta`) VALUES
(10, 'DILIAN', '', 100000, 'b84d30d4-5457-31c6-6b36-6737c5b28968', NULL, NULL, NULL, NULL, 0, 0),
(12, 'TAY', '', 80000, '2a967464-ad17-80f3-f188-6737efcff705', NULL, NULL, NULL, NULL, 0, 0),
(16, 'BOMPER', '', 80000, '5ffc2737-6700-9ba5-cc61-6737f49ad389', NULL, NULL, NULL, NULL, 0, 0),
(17, 'TATIS', '', 45000, 'ac4aa8c2-b3e3-78c0-b8d3-6737f17d9d26', NULL, NULL, NULL, NULL, 0, 0),
(18, 'TATIS', '', 45000, 'ac4aa8c2-b3e3-78c0-b8d3-6737f17d9d26', NULL, NULL, NULL, NULL, 0, 0),
(19, 'TIMMY', '', 65, '89c16352-383c-0f01-2fdb-6745fd89f90a', NULL, NULL, NULL, NULL, 0, 0),
(20, 'TIMMY', '', 65000, '89c16352-383c-0f01-2fdb-6745fd89f90a', NULL, NULL, NULL, NULL, 0, 0),
(21, 'TIMMY', '', 68000, '37f60021-d7db-4903-a4fd-674626e478ab', NULL, NULL, NULL, NULL, 0, 0),
(22, 'TIMMY', '', 75000, '804dee41-a8b0-c820-202e-674626ab34ed', NULL, NULL, NULL, NULL, 0, 0),
(23, 'TIMMY', '', 80000, '1f7eaac8-e604-999c-8588-6746262796d9', NULL, NULL, NULL, NULL, 0, 0),
(24, 'MOTERO', '', 100000, '10ee23a9-27b4-0927-3e55-67462b834445', NULL, NULL, NULL, NULL, 0, 0),
(25, 'TIMMY', '', 80000, '1f7eaac8-e604-999c-8588-6746262796d9', NULL, NULL, NULL, NULL, 0, 0),
(26, 'TALIA', '', 40000, '3d84390b-fec6-d05f-ff15-67462cb5efc6', NULL, NULL, NULL, NULL, 0, 0),
(27, 'Camiseta Básica Algodón', 'Camiseta de manga corta en algodón suave.', 16, 'CAM001', 'URL_IMAGEN_CAMISETA_BASICA', 1, 'Generic', 4.20, 1, 0),
(28, 'Pantalón Vaquero Recto', 'Pantalón vaquero clásico de corte recto.', 40, 'PAN002', 'URL_IMAGEN_PANTALON_VAQUERO', 2, 'Levi\'s', 4.50, 0, 1),
(29, 'Zapatillas Deportivas Urban', 'Zapatillas cómodas para uso diario.', 59, 'ZAP003', 'URL_IMAGEN_ZAPATILLAS', 3, 'Nike', 4.80, 1, 0),
(30, 'Bolso Tote de Lona', 'Bolso grande de lona resistente con asas.', 26, 'BOL004', 'URL_IMAGEN_BOLSO_TOTE', 4, 'Generic', 4.00, 0, 0),
(31, 'Bufanda de Lana Invierno', 'Bufanda cálida de lana para los días fríos.', 20, 'ACC005', 'URL_IMAGEN_BUFANDA', 5, 'Generic', 4.60, 1, 1),
(32, 'Camiseta Básica Algodón', 'Camiseta de manga corta en algodón suave.', 16, 'CAM001', 'URL_IMAGEN_CAMISETA_BASICA', 1, 'Generic', 4.20, 1, 0),
(33, 'Pantalón Vaquero Recto', 'Pantalón vaquero clásico de corte recto.', 40, 'PAN002', 'URL_IMAGEN_PANTALON_VAQUERO', 2, 'Levi\'s', 4.50, 0, 1),
(34, 'Zapatillas Deportivas Urban', 'Zapatillas cómodas para uso diario.', 59, 'ZAP003', 'URL_IMAGEN_ZAPATILLAS', 3, 'Nike', 4.80, 1, 0),
(35, 'Bolso Tote de Lona', 'Bolso grande de lona resistente con asas.', 26, 'BOL004', 'URL_IMAGEN_BOLSO_TOTE', 4, 'Generic', 4.00, 0, 0),
(36, 'Bufanda de Lana Invierno', 'Bufanda cálida de lana para los días fríos.', 20, 'ACC005', 'URL_IMAGEN_BUFANDA', 5, 'Generic', 4.60, 1, 1),
(37, 'gabann', '', 50000, '20979f54-d546-efb8-a2e8-681950aed2c7', NULL, NULL, NULL, NULL, 0, 0),
(38, 'gabann', '', 50000, '20979f54-d546-efb8-a2e8-681950aed2c7', NULL, NULL, NULL, NULL, 0, 0),
(39, 'gabann', '', 50000, '20979f54-d546-efb8-a2e8-681950aed2c7', NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_page`
--

CREATE TABLE `productos_page` (
  `id` int(11) NOT NULL,
  `id_crm` varchar(250) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `id_categoria` varchar(250) DEFAULT NULL,
  `fecha_creacion` date NOT NULL DEFAULT current_timestamp(),
  `deleted` int(11) NOT NULL DEFAULT 0,
  `tipo_producto` varchar(150) DEFAULT NULL,
  `tono` varchar(150) DEFAULT NULL,
  `talla` varchar(150) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `url_imagen` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_page`
--

INSERT INTO `productos_page` (`id`, `id_crm`, `nombre`, `id_categoria`, `fecha_creacion`, `deleted`, `tipo_producto`, `tono`, `talla`, `precio`, `descripcion`, `url_imagen`) VALUES
(1, NULL, NULL, NULL, '2025-08-17', 0, NULL, NULL, NULL, NULL, NULL, '17_08_25_12_21_31_Honda_CB190R_2020_1000_0001.jpg'),
(5, NULL, NULL, NULL, '2025-08-18', 0, NULL, NULL, NULL, NULL, NULL, '18_08_25_02_57_27_Honda_CB190R_2020_1000_0001.jpg'),
(6, NULL, NULL, NULL, '2025-08-18', 0, NULL, NULL, NULL, NULL, NULL, '18_08_25_02_59_55_Honda_CB190R_2020_1000_0001.jpg'),
(7, '7afddafc-3059-dab0-aff1-68a324d2a5c9', 'otro 2', '3ee674f7-d16e-32ec-9e53-688ee847d065', '2025-08-18', 0, 'nino', '', '', 10000, 'producto', '18_08_25_03_02_33_Honda_CB190R_2020_1000_0001.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `contra` varchar(200) NOT NULL,
  `rol` int(11) NOT NULL,
  `id_crm` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `contra`, `rol`, `id_crm`) VALUES
(1, 'admin', 'admin', '123', 1, '1254'),
(3, 'domicilio', 'domicilio', '123', 2, ''),
(4, 'Vanesa', 'Asesor1', 'Asesor1', 1, 'ad6cb118-d72f-f8ea-2e10-6737a981000e'),
(5, 'Asesor10', 'Asesor10', 'Asesor10', 1, '96e0f73f-7337-2123-dd97-6737aa617ee0'),
(6, 'Vanesa', 'Asesor2', 'Asesor2', 1, '2d2857d1-7855-21a1-bda0-6737a9608001'),
(7, 'Daniel', 'Asesor3', 'Asesor3', 1, '1dbee6cf-6a7e-26c0-2109-6737a98cc34e'),
(8, 'Jessica', 'Asesor4', 'Asesor4', 1, '3532a985-c07c-5943-5ba9-6737a95aab8e'),
(9, 'Valeria', 'Asesor5', 'Asesor5', 1, '6ac04d1a-a674-358e-a403-6737a9a2a026'),
(10, 'Carolain', 'Asesor6', 'Asesor6', 1, '5c5f923f-48a4-cc28-0f8e-6737a96d1619'),
(11, 'Victor', 'Asesor7', 'Asesor7', 1, 'b4977a36-f927-974c-ea89-6737aab362b2'),
(12, 'Asesor8', 'Asesor8', 'Asesor8', 1, '337b7f17-4f10-1e9e-0cff-6737aaf3c983'),
(13, 'Asesor9', 'Asesor9', 'Asesor9', 1, '1ae064d3-9c68-f626-4ac4-6737aa0a1159'),
(14, 'Cristian', 'Domiciliario1', 'Domiciliario1', 2, '2dda2042-8174-a944-dc32-6737aa2bd127'),
(15, 'Daniel', 'Domiciliario2', 'Domiciliario2', 2, '409f6f2f-78c2-49d9-c2db-6737aacd9140'),
(16, 'Junior', 'Domiciliario3', 'Domiciliario3', 2, 'b6df5657-130d-afdb-0664-6737aa34b599'),
(17, 'Victor', 'Domiciliario4', 'Domiciliario4', 2, '276f2151-f426-e261-0a8a-6737aaaa0806'),
(18, 'Domiciliario5', 'Domiciliario5', 'Domiciliario5', 2, '6f589093-3ce1-6bd4-c06f-6737aaf52885');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `celular` varchar(200) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `observacion` text NOT NULL,
  `fecha_entrega` date NOT NULL,
  `fecha_creacion` date NOT NULL,
  `total` int(11) NOT NULL,
  `id_crm` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `nombre`, `celular`, `direccion`, `tipo`, `observacion`, `fecha_entrega`, `fecha_creacion`, `total`, `id_crm`) VALUES
(36, 'Beatriz Benítez ', '3202225905', 'Carrera 80j n 42 f 60 Sur ', 'Contra entrega sur', 'barrio la maria localidad Kennedy \nCasa 3 piso', '2024-11-27', '2024-11-26', 0, 'b4977a36-f927-974c-ea89-6737aab362b2'),
(37, 'Sharon Agudelo ', '3203948963 3227840102', 'Ac 26 86 57 Por el portal dorado por corona debajo del puente', 'Contra entrega norte', '', '2024-11-27', '2024-11-26', 0, 'b4977a36-f927-974c-ea89-6737aab362b2'),
(38, 'Brian Moreno', '3046164868', 'Toberin Av. Cra 19 #166-34, Bogotá ', 'Contra entrega norte', '', '2024-11-27', '2024-11-26', 0, 'b4977a36-f927-974c-ea89-6737aab362b2'),
(39, 'Edelmira ardila', '3025875454', 'Carrera 80d n 58j66sur Bosa clarelandia Casa 1 piso', 'Contra entrega sur', '', '2024-11-27', '2024-11-26', 0, 'b4977a36-f927-974c-ea89-6737aab362b2'),
(40, 'Vanessa ', '2484643', 'Bosa ', 'Contra entrega sur', 'talla M \ncolor negro \npor favor llevar después de las tres de la tarde', '2024-11-28', '2024-11-26', 0, 'b4977a36-f927-974c-ea89-6737aab362b2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_productos`
--

CREATE TABLE `venta_productos` (
  `id` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta_productos`
--

INSERT INTO `venta_productos` (`id`, `id_venta`, `id_producto`, `cantidad`, `precio_producto`) VALUES
(58, 36, 20, 2, 70000),
(59, 37, 12, 1, 68000),
(60, 38, 20, 1, 55000),
(61, 39, 18, 2, 40000),
(62, 40, 10, 2, 110000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_cliente` (`id_cliente`,`id_producto`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `crm`
--
ALTER TABLE `crm`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_page`
--
ALTER TABLE `productos_page`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta_productos`
--
ALTER TABLE `venta_productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `crm`
--
ALTER TABLE `crm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `productos_page`
--
ALTER TABLE `productos_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `venta_productos`
--
ALTER TABLE `venta_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos_page` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`parent_category_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
