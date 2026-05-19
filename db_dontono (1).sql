-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2026 a las 00:00:59
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_dontono`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `categoria`, `stock`, `imagen`, `imagen2`) VALUES
(1, 'Martilo', 'Martillo de acero resistente', 10.50, 'Herramientas', 20, 'hammer.png', NULL),
(2, 'Tornillo', 'Tornillo para madera', 0.25, 'Construcción', 200, 'screw.png', NULL),
(3, 'Llave Spanner', 'Llave ajustable', 15.00, 'Herramientas', 15, 'spanner.png', NULL),
(4, 'Woodburning Pen', 'Herramienta para grabado en madera', 25.00, 'Herramientas', 10, 'woodburning pen.png', NULL),
(5, 'Llave Wrench', 'Llave inglesa resistente', 18.00, 'Herramientas', 12, 'wrench.png', NULL),
(6, 'Llave Allen', 'lorem ipsum', 8.50, 'Herramientas', 5, 'allen.jpg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(200) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `nombre`, `ubicacion`, `descripcion`, `imagen`) VALUES
(1, 'Casa de Don Toño', 'Ilopango', 'La ferreteria más vista', 'ferreteria1.webp'),
(2, 'Herramientas Don Toño', 'Soyapango', 'Conocida por su buen servicio', 'ferreteria2.webp'),
(3, 'Bodega Don toño', 'Apopa', 'Ferreteria disponible 24/7', 'ferreteria3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuarioID` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `correo` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('admin','usuario') DEFAULT 'usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuarioID`, `nombre`, `correo`, `password`, `rol`) VALUES
(1, 'Byron', 'byron@gmail.com', '$2y$10$vYYIM49FJ733OthkcXsN8.TKuVg/YHVweAbQ4ObTYvIrIH0hcyi4G', 'usuario'),
(3, 'rene', 'rene@gmail.com', '$2y$10$wN0SghYE0k5lKRL5lQmqeOGnDEbYh/7Jag31kbUT1Hn9kRNnY0X8.', 'usuario'),
(4, 'Byron', '', '$2y$10$/pd9h6w/nkj.pbZIdx2AmuCALy05D6FqtEio1YTQ6vKbX8aqGkn3q', 'usuario'),
(5, 'Carquiño', 'carcamo@dias.com', '$2y$10$zSnYuBWjqKtmWtTNUKTXaOCm8cTiEUAseslaoIeGjFwH56L1BtcBa', 'usuario'),
(6, 'Carquiño', 'byron@gmail.sv', '$2y$10$qhYrGHPlRa4n3YbEpH303uXx2FdxqEYKoVhV8wHa0hKFuITMht7ia', 'usuario'),
(8, 'bryan', 'rene@gmail.gm', '$2y$10$FsYnKjQyooql2f19A9Zw0.C8pX18Oh/jE9MlEZjuADdonBeKwqAjK', 'usuario'),
(10, 'carcamu', 'byro@gmail.sv', '$2y$10$tNtt3Sm72/R/oxfxKGmPSuQQ3KTpB9boSo8JiIdVo5CKiwg4tjdfG', 'usuario'),
(12, 'carcamos', 'byros@gmail.rv', '$2y$10$WFGGdcQgmmkxWOdVsSVGD.5DkrJstl41lpKn2fNhGFc01F9XNxxWG', 'usuario'),
(13, 'Byron ', 'byron@gmoil.com', '$2y$10$PzaGruft1tiRYDJE1JTEU.hHosFNoMHvK41bLJnCvIAt6g.ktq4dq', 'usuario'),
(14, 'Admin Don Toño', 'admin@gmail.com', '$2y$10$PzaGruft1tiRYDJE1JTEU.hHosFNoMHvK41bLJnCvIAt6g.ktq4dq', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarioID`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuarioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
