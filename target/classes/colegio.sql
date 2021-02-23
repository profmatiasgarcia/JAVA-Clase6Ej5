-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-06-2018 a las 16:35:50
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(3) NOT NULL,
  `nombres` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(2) NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `localidad` int(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombres`, `apellidos`, `edad`, `direccion`, `localidad`) VALUES
(1, 'Angie', 'Lione', 15, 'Por alla 33', 33),
(2, 'Matias', 'Garcia', 16, 'Aca a la vuelta 150', 1),
(3, 'Ramiro', 'Lopez', 13, 'Av Sarasa 2123', 2),
(4, 'Maria Lorena', 'Shulls', 14, 'En la Esquina 25', 1),
(5, 'Rodrigo', 'Muscari', 14, 'Otro Lado 973', 6),
(6, 'Daniela', 'Rivas', 15, 'Cerca 3421', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `id` int(3) NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `zona` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `provincia` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`id`, `nombre`, `zona`, `provincia`) VALUES
(1, 'CABA', 'CABA', 'Buenos Aires'),
(2, 'Vicente Lopez', 'GBA Norte', 'Buenos Aires'),
(3, 'San Isidro', 'GBA Norte', 'Buenos Aires'),
(4, 'San Martín', 'GBA Norte', 'Buenos Aires'),
(5, 'San Fernando', 'GBA Norte', 'Buenos Aires'),
(6, 'Tigre', 'GBA Norte', 'Buenos Aires'),
(7, 'Avellaneda', 'GBA Sur', 'Buenos Aires'),
(8, 'Dock Sud', 'GBA Sur', 'Buenos Aires'),
(9, 'Gerli', 'GBA Sur', 'Buenos Aires'),
(10, 'Pineyro', 'GBA Sur', 'Buenos Aires'),
(11, 'Gerli', 'GBA Sur', 'Buenos Aires'),
(12, 'Sarandi', 'GBA Sur', 'Buenos Aires'),
(13, 'Villa Dominico', 'GBA Sur', 'Buenos Aires'),
(14, 'Wilde', 'GBA Sur', 'Buenos Aires'),
(15, 'San Justo', 'GBA Oeste', 'Buenos Aires'),
(16, 'Aldo Bonzi', 'GBA Oeste', 'Buenos Aires'),
(17, 'Ciudad Evita', 'GBA Oeste', 'Buenos Aires'),
(18, 'González Catán', 'GBA Oeste', 'Buenos Aires'),
(19, 'Gregorio de Laferrere', 'GBA Oeste', 'Buenos Aires'),
(20, 'Isidro Casanova', 'GBA Oeste', 'Buenos Aires'),
(21, 'La Tablada', 'GBA Oeste', 'Buenos Aires'),
(22, 'Lomas del Mirador', 'GBA Oeste', 'Buenos Aires'),
(23, 'Rafael Castillo', 'GBA Oeste', 'Buenos Aires'),
(24, 'Ramos Mejía', 'GBA Oeste', 'Buenos Aires'),
(25, 'Tapiales', 'GBA Oeste', 'Buenos Aires'),
(26, 'Villa Luzuriaga', 'GBA Oeste', 'Buenos Aires'),
(27, 'Villa Madero', 'GBA Oeste', 'Buenos Aires'),
(28, 'Virrey del Pino', 'GBA Oeste', 'Buenos Aires'),
(29, 'Lanús', 'GBA Sur', 'Buenos Aires'),
(30, 'Monte Chingolo', 'GBA Sur', 'Buenos Aires'),
(31, 'El Talar', 'GBA Norte', 'Buenos Aires'),
(32, 'Don Torcuato', 'GBA Norte', 'Buenos Aires'),
(33, 'Martínez', 'GBA Norte', 'Buenos Aires'),
(34, 'Boulogne', 'GBA Norte', 'Buenos Aires'),
(35, 'Munro', 'GBA Norte', 'Buenos Aires'),
(36, 'Villa Ballester', 'GBA Norte', 'Buenos Aires'),
(37, 'Ombú', 'GBA Norte', 'Buenos Aires'),
(38, 'Churruca', 'GBA Norte', 'Buenos Aires'),
(39, 'El Palomar', 'GBA Norte', 'Buenos Aires'),
(40, 'Caseros', 'GBA Norte', 'Buenos Aires'),
(41, 'Santos Lugares', 'GBA Norte', 'Buenos Aires'),
(42, 'Lomas de Zamora', 'GBA Sur', 'Buenos Aires'),
(43, 'Banfield', 'GBA Sur', 'Buenos Aires'),
(44, 'Temperley', 'GBA Sur', 'Buenos Aires'),
(45, 'Llavallol', 'GBA Sur', 'Buenos Aires'),
(46, 'Turdera', 'GBA Sur', 'Buenos Aires'),
(47, 'Villa Centenario', 'GBA Sur', 'Buenos Aires'),
(48, 'Villa Fiorito', 'GBA Sur', 'Buenos Aires'),
(49, 'Ingeniero Budge', 'GBA Sur', 'Buenos Aires'),
(50, 'Villa Albertina', 'GBA Sur', 'Buenos Aires');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_loc` (`localidad`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `fk_loc` FOREIGN KEY (`Localidad`) REFERENCES `localidades` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
