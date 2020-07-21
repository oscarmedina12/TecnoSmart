-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2020 a las 05:53:31
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tecnosmart`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`) VALUES
(1, 'En Revisión'),
(2, 'En Reparación'),
(3, 'Pendiente Retiro'),
(4, 'Entregado sin Solucion'),
(5, 'Entregado - Solucionado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigo` bigint(50) NOT NULL,
  `tipoProducto` varchar(50) NOT NULL,
  `modeloProducto` varchar(50) NOT NULL,
  `descripcionProblema` text NOT NULL,
  `precio` int(11) NOT NULL,
  `nombreCliente` varchar(50) NOT NULL,
  `emailCliente` varchar(50) NOT NULL,
  `rutCliente` varchar(50) NOT NULL,
  `telefonoCliente` varchar(50) NOT NULL,
  `id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `tipoProducto`, `modeloProducto`, `descripcionProblema`, `precio`, `nombreCliente`, `emailCliente`, `rutCliente`, `telefonoCliente`, `id_estado`) VALUES
(1, 'Notebook', 'Notebook', 'Formateo', 15000, 'Raul Oliva', 'raul@example.cl', '18929028', '98985656', 2),
(2, 'Android', 'Android', 'Bloqueo IMEI', 79990, 'Elvis Matias', 'elvis@gmail', '12334332', '67676767', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `password`) VALUES
('admin', 'Elvis', 'Matias', '123');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_productos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_productos` (
`codigo` bigint(50)
,`tipoProducto` varchar(50)
,`modeloProducto` varchar(50)
,`descripcionProblema` text
,`precio` int(11)
,`nombreCliente` varchar(50)
,`emailCliente` varchar(50)
,`rutCliente` varchar(50)
,`telefonoCliente` varchar(50)
,`id` int(11)
,`e_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_productos`
--
DROP TABLE IF EXISTS `v_productos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_productos`  AS  (select `producto`.`codigo` AS `codigo`,`producto`.`tipoProducto` AS `tipoProducto`,`producto`.`modeloProducto` AS `modeloProducto`,`producto`.`descripcionProblema` AS `descripcionProblema`,`producto`.`precio` AS `precio`,`producto`.`nombreCliente` AS `nombreCliente`,`producto`.`emailCliente` AS `emailCliente`,`producto`.`rutCliente` AS `rutCliente`,`producto`.`telefonoCliente` AS `telefonoCliente`,`estado`.`id` AS `id`,`estado`.`nombre` AS `e_nombre` from (`producto` join `estado` on(`producto`.`id_estado` = `estado`.`id`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `id_estado` (`id_estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
