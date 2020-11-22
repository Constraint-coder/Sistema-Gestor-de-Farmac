-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2020 a las 05:14:16
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `cart_qty` int(11) NOT NULL,
  `cart_stock_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart_uniqid` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expired`
--

CREATE TABLE `expired` (
  `exp_id` int(11) NOT NULL,
  `exp_itemName` varchar(50) NOT NULL,
  `exp_itemPrice` float NOT NULL,
  `exp_itemQty` int(11) NOT NULL,
  `exp_expiredDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_price` double NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `item_code` varchar(35) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_grams` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_price`, `item_type_id`, `item_code`, `item_brand`, `item_grams`) VALUES
(10, 'Acetaminofen', 0.25, 1, '696969', 'Arpirinita Con Sabor A Fruta', '200'),
(11, 'Paracetamol', 0.75, 2, '1213141', 'Arpirinita Con Sabor A Fruta', '22'),
(12, 'Ambroxol', 2.35, 2, '0342', 'Pharmazel', '200'),
(13, 'Desloratadina', 1.25, 2, '0344', 'Pharmazel', '200'),
(14, 'Cetirizina', 0.75, 1, '0343', 'Drogueria Belen', '100'),
(15, 'Loratadina', 0.75, 1, '03445', 'Drogueria Belen', '100'),
(16, 'Levocetirizina', 1, 1, '03446', 'Drogueria Belen', '125'),
(17, 'Tetraciclina', 0.5, 1, '03447', 'Drogueria Belen', '500'),
(18, 'Penicilina', 0.75, 1, '03448', 'Drogueria Internacional El Salvador', '500'),
(19, 'Intestinomicina', 0.75, 1, '03449', 'Drogueria Internacional El Salvador', '200'),
(20, 'Dolofin', 0.75, 1, '03450', 'Laboratorios Lopez', '200'),
(21, 'Dolofin Fuerte', 0.75, 1, '03451', 'Laboratorios Lopez', '200'),
(22, 'Panadol Ultra', 0.75, 1, '03452', 'Laboratorios Lopez', '100'),
(23, 'Alive', 1.25, 1, '03452', 'Bayer Ag', '200'),
(24, 'Alive Extra Fuerte', 1.75, 1, '03453', 'Bayer Ag', '200'),
(25, 'Cafi Aspirina', 1.1, 1, '03454', 'Bayer Ag', '200'),
(26, 'Alka-seltzer', 1.1, 1, '03454', 'Bayer Ag', '2.1'),
(27, 'Complejo B', 4.25, 2, '03455', 'Laboratorios Lopez', '1.0'),
(28, 'Complejo B12', 4.8, 2, '03456', 'Laboratorios Lopez', '2.0'),
(29, 'Neuroglutan', 6, 2, '03461', 'Laboratorios Quimical', '300'),
(30, 'Energy', 1, 2, '03460', 'Laboratorios Quimical', '100'),
(31, 'Benexol', 2, 1, '03457', 'Laboratorios Quimical', '300'),
(32, 'Complejo B', 2, 1, '03458', 'Pharmazel', '300'),
(33, 'Complejo B', 2, 1, '03459', 'Drogueria Belen', '300'),
(34, 'Hierro+complejo B', 2, 2, '03459', 'Drogueria Belen', '200'),
(35, 'Neuroglutan', 6, 2, '03462', 'Laboratorios Lopez', '100'),
(36, 'Vacaolinita', 8, 2, '03463', 'Laboratorios Lopez', '100'),
(37, 'Tabcin', 8, 1, '03464', 'Drogueria Internacional El Salvador', '100'),
(38, 'Palagrip', 0.25, 1, '03465', 'Drogueria Internacional El Salvador', '50'),
(39, 'Virogrip', 0.25, 1, '03466', 'Drogueria Internacional El Salvador', '50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_type`
--

CREATE TABLE `item_type` (
  `item_type_id` int(11) NOT NULL,
  `item_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `item_type`
--

INSERT INTO `item_type` (`item_type_id`, `item_type_desc`) VALUES
(1, 'Tabletas'),
(2, 'Jarabe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `item_code` varchar(35) NOT NULL,
  `generic_name` varchar(35) NOT NULL,
  `brand` varchar(35) NOT NULL,
  `gram` varchar(35) NOT NULL,
  `type` varchar(35) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `date_sold` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`sales_id`, `item_code`, `generic_name`, `brand`, `gram`, `type`, `qty`, `price`, `date_sold`) VALUES
(2, '0343', 'Cetirizina', 'Drogueria Belen', '100', 'Tabletas', 5, 0.75, '2020-11-22 04:12:39'),
(3, '0342', 'Ambroxol', 'Pharmazel', '200', 'Jarabe', 3, 2.35, '2020-11-22 04:12:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `stock_expiry` date NOT NULL,
  `stock_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stock_manufactured` date NOT NULL,
  `stock_purchased` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`stock_id`, `item_id`, `stock_qty`, `stock_expiry`, `stock_added`, `stock_manufactured`, `stock_purchased`) VALUES
(3, 11, 200, '2020-02-06', '2020-11-02 19:13:35', '2019-08-06', '2020-11-02'),
(4, 10, 500, '2019-10-15', '2020-11-22 04:11:39', '2016-11-08', '2020-11-19'),
(5, 23, 100, '2021-12-12', '2020-11-22 04:00:35', '2020-01-01', '2020-11-01'),
(6, 24, 100, '2021-12-12', '2020-11-22 04:00:48', '2020-01-01', '2020-11-01'),
(7, 26, 100, '2021-12-12', '2020-11-22 04:01:01', '2020-02-01', '2020-11-01'),
(8, 12, 97, '2022-01-06', '2020-11-22 04:11:46', '2019-12-01', '2020-11-01'),
(9, 31, 400, '2020-12-01', '2020-11-22 04:02:02', '2019-12-01', '2020-11-01'),
(10, 25, 400, '2020-11-24', '2020-11-22 04:02:31', '2019-12-01', '2020-11-01'),
(11, 14, 395, '2021-01-01', '2020-11-22 04:11:51', '2019-12-01', '2020-11-01'),
(12, 27, 400, '2021-01-01', '2020-11-22 04:03:02', '2019-12-15', '2020-11-01'),
(13, 33, 400, '2021-04-21', '2020-11-22 04:03:17', '2019-12-15', '2020-11-01'),
(14, 32, 400, '2021-04-21', '2020-11-22 04:03:23', '2019-12-15', '2020-11-01'),
(15, 28, 400, '2021-04-21', '2020-11-22 04:03:29', '2019-12-15', '2020-11-01'),
(16, 13, 400, '2021-04-21', '2020-11-22 04:03:36', '2019-12-15', '2020-11-01'),
(17, 20, 400, '2021-04-21', '2020-11-22 04:03:43', '2019-12-15', '2020-11-01'),
(18, 21, 400, '2021-04-21', '2020-11-22 04:03:49', '2019-12-15', '2020-11-01'),
(19, 30, 400, '2021-04-21', '2020-11-22 04:03:57', '2019-12-15', '2020-11-01'),
(20, 34, 400, '2021-09-15', '2020-11-22 04:04:16', '2020-01-15', '2020-11-01'),
(21, 19, 400, '2021-09-15', '2020-11-22 04:04:30', '2020-01-15', '2020-11-01'),
(22, 19, 400, '2021-09-15', '2020-11-22 04:04:36', '2020-01-15', '2020-11-01'),
(23, 19, 400, '2021-09-15', '2020-11-22 04:04:42', '2020-01-15', '2020-11-01'),
(24, 16, 100, '2021-09-15', '2020-11-22 04:05:28', '2020-01-15', '2020-11-01'),
(25, 15, 100, '2021-09-15', '2020-11-22 04:05:35', '2020-01-15', '2020-11-01'),
(26, 35, 100, '2021-09-15', '2020-11-22 04:05:44', '2020-01-15', '2020-11-01'),
(27, 29, 100, '2021-09-15', '2020-11-22 04:05:52', '2020-01-15', '2020-11-01'),
(28, 38, 100, '2021-09-15', '2020-11-22 04:06:01', '2020-01-15', '2020-11-01'),
(29, 22, 100, '2021-09-15', '2020-11-22 04:06:07', '2020-01-15', '2020-11-01'),
(30, 11, 100, '2021-09-15', '2020-11-22 04:06:14', '2020-01-15', '2020-11-01'),
(31, 18, 100, '2021-09-15', '2020-11-22 04:06:21', '2020-01-15', '2020-11-01'),
(32, 37, 100, '2021-09-15', '2020-11-22 04:06:28', '2020-01-15', '2020-11-01'),
(33, 17, 100, '2021-09-15', '2020-11-22 04:06:35', '2020-01-15', '2020-11-01'),
(34, 36, 100, '2021-09-15', '2020-11-22 04:06:43', '2020-01-15', '2020-11-01'),
(35, 39, 100, '2021-09-15', '2020-11-22 04:06:49', '2020-01-15', '2020-11-01'),
(36, 20, 100, '2020-12-01', '2020-11-22 04:07:07', '2020-01-15', '2020-11-01'),
(37, 10, 100, '2021-02-09', '2020-11-22 04:07:36', '2020-01-15', '2020-11-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_account` varchar(50) NOT NULL,
  `user_pass` varchar(35) NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`user_id`, `user_account`, `user_pass`, `user_type`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `expired`
--
ALTER TABLE `expired`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_type_id` (`item_type_id`);

--
-- Indices de la tabla `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`item_type_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `expired`
--
ALTER TABLE `expired`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `item_type`
--
ALTER TABLE `item_type`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Filtros para la tabla `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`item_type_id`) REFERENCES `item_type` (`item_type_id`);

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
