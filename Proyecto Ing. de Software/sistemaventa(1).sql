-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2021 a las 04:48:03
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemaventa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `dni` int(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`, `razon`, `fecha`) VALUES
(22, 2, 'Victoria', '8795546581', 'Santiago', 'Compras', '2021-02-11 18:37:47'),
(25, 3, 'Pamela', '8094556545', 'Bonao', '', '2021-04-09 23:50:36'),
(27, 5, 'Yulyanna ', '8094860362', 'La Vega', '', '2021-04-09 23:52:01'),
(28, 6, 'Victoria', '8795546589', 'Santiago', 'Compras', '2021-04-09 23:52:14'),
(29, 594994, 'Inocencio Then', '8095698956', 'La Vega', 'Comprar', '2021-04-10 11:22:05'),
(30, 656644, 'Benjamin Cruz', '8095389999', 'La Vega', 'Cliente ', '2021-04-10 11:32:31'),
(31, 445849, 'Yulissa Almonte', '8095554898', 'La Vega', 'Cliente compra', '2021-04-10 11:35:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `nombre`, `ruc`, `telefono`, `direccion`, `razon`) VALUES
(561665, 'Sell Safely', '55949494', '8094860362', 'La Vega', 'Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `cod_pro` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id`, `cod_pro`, `cantidad`, `precio`, `id_venta`) VALUES
(27, 698, 1, '1.00', 24),
(28, 255, 2, '2.00', 25),
(29, 698, 1, '1.00', 25),
(30, 600, 3, '3.00', 25),
(31, 698, 2, '2.00', 26),
(32, 255, 2, '2.00', 26),
(33, 255, 1, '1.00', 27),
(34, 698, 1, '1.00', 27),
(35, 255, 1, '1.00', 28),
(36, 255, 1, '1.00', 29),
(37, 255, 1, '1.00', 30),
(38, 698, 4, '4.00', 31),
(39, 255, 2, '2.00', 32),
(40, 255, 1, '1.00', 33),
(41, 255, 2, '2.00', 34),
(42, 600, 2, '2.00', 35),
(43, 601, 3, '3.00', 35),
(44, 600, 2, '2.00', 36),
(45, 601, 3, '3.00', 36),
(46, 600, 2, '2.00', 37),
(47, 601, 2, '2.00', 37),
(48, 600, 2, '2.00', 38),
(49, 601, 1, '1.00', 38),
(50, 600, 2, '2.00', 39),
(51, 255, 1, '1.00', 39),
(52, 601, 1, '1.00', 39),
(53, 605, 1, '1.00', 40),
(54, 255, 1, '1.00', 40),
(55, 600, 2, '2.00', 41),
(56, 255, 1, '1.00', 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `nombre`, `proveedor`, `stock`, `precio`, `fecha`) VALUES
(2, '255', 'Refresco Coca Cola', 'Coca Cola', 47, '15.00', '2021-03-05 20:57:16'),
(6, '601', 'Doritos', 'Frito Lay', 41, '25.00', '2021-03-21 14:15:35'),
(7, '600', 'Tostitos', 'Frito Lay', 38, '30.00', '2021-04-07 21:05:11'),
(8, '602', 'Cheetos', 'Frito Lay', 51, '10.00', '2021-04-09 23:33:34'),
(9, '603', 'Sabritas', 'Frito Lay', 52, '15.00', '2021-04-09 23:47:45'),
(10, '604', 'Ruffles', 'Frito Lay', 50, '20.00', '2021-04-09 23:48:15'),
(11, '605', 'Double Nuts', 'Frito Lay', 51, '15.00', '2021-04-09 23:49:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `ruc` int(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `ruc`, `nombre`, `telefono`, `direccion`, `razon`, `fecha`) VALUES
(8, 5895, 'Coca Cola', '8095735555', 'La Vega', 'Bebidas', '2021-02-12 22:54:21'),
(9, 58499, 'Biscochitos esponjosos', '8095734848', 'La Vega', 'Comida', '2021-02-20 11:35:54'),
(10, 594, 'Pepsi Cola', '8095731236', 'La Vega', 'Bebidas', '2021-03-06 11:22:07'),
(11, 5449, 'Frito Lay', '8095730898', 'Bonao', 'Comestible', '2021-04-06 21:20:28'),
(12, 58948977, 'Kelloggs', '8095735569', 'La Vega', 'Comida', '2021-04-09 23:50:17'),
(13, 5949945, 'Distribuidora dos mil', '8095734895', 'La Vega', 'Ventas', '2021-04-10 11:34:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `pass`, `rol`) VALUES
(1, 'Yulyanna Lora', 'admin', '12345', 'Administrador'),
(445699, 'Daniela Almonte', 'usuario2', '123', 'Asistente'),
(445700, 'Juan Lopez', 'usuario3', '1234', 'Asistente'),
(445701, 'Daniel Lora', 'usuario5', '12345', 'Asistente'),
(445702, 'Junior Lora', 'junior', '12345678', 'Asistente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `Vendedor` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `cliente`, `Vendedor`, `total`, `fecha`) VALUES
(36, 'Josue', 'Yulyanna Lora', '135.00', '09/04/21'),
(37, 'Yulyanna ', 'Hugo Vargas', '110.00', '10/04/21'),
(38, 'Yulyanna ', 'Hugo Vargas', '85.00', '10/04/21'),
(39, 'Inocencio Then', 'Yulyanna Lora', '100.00', '10/04/21'),
(40, 'Yulyanna ', 'Hugo Vargas', '30.00', '10/04/21'),
(41, 'Yulyanna ', 'Yulyanna Lora', '75.00', '23/05/21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561667;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445703;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
