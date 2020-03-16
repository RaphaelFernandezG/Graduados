-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-03-2020 a las 15:35:23
-- Versión del servidor: 5.7.29
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jalfredo_graduado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `user` varchar(50) NOT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`user`, `password`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id_eve` varchar(50) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `lugar` varchar(50) DEFAULT NULL,
  `fechaini` varchar(50) DEFAULT NULL,
  `fechafin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id_eve`, `nombre`, `ciudad`, `lugar`, `fechaini`, `fechafin`) VALUES
('EV0', 'VI Semana', 'Cucuta', 'UFPS', '19/11/2019', '22/11/2019'),
('EV1', 'Colonizacion', 'Cucuta', 'Marte', '9/10/2019', '3/03/2021'),
('EV2', 'Rueda de Negocios', 'Cucuta', 'UFPS, Posgrados', '18/11/2019', '18/11/2019'),
('EV3', 'Semilleros', 'Bucaramanga', 'UIS', '30/11/2019', '13/2/2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventoprin`
--

CREATE TABLE `eventoprin` (
  `descripcion` varchar(150) DEFAULT NULL,
  `id_eveprin` varchar(50) NOT NULL,
  `id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `eventoprin`
--

INSERT INTO `eventoprin` (`descripcion`, `id_eveprin`, `id`) VALUES
('SAS', 'EV0', 'EVP1'),
('Interesante', 'EV1', 'EVP2'),
('SAS', 'EV3', 'EVP3'),
('SAS', 'EV3', 'EVP4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expdest`
--

CREATE TABLE `expdest` (
  `id_dest` varchar(50) NOT NULL,
  `link_dest` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `link` varchar(150) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `numdocum` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`link`, `descripcion`, `numdocum`) VALUES
('https://www.youtube.com/watch?v=LYdCzs5uPrI', 'El graduado esta bien', '91238798'),
('https://www.youtube.com/watch?v=uNC0w2dnvyg', 'Proyectos de investigacion en el ENISI 2019', '91238798');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graddestacado`
--

CREATE TABLE `graddestacado` (
  `titulo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `numdocum` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `graddestacado`
--

INSERT INTO `graddestacado` (`titulo`, `descripcion`, `numdocum`) VALUES
('Ing de sistemas', 'Trabaja para microsoft', '91238798');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graduado`
--

CREATE TABLE `graduado` (
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `fechagrad` varchar(50) DEFAULT NULL,
  `numdocum` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `graduado`
--

INSERT INTO `graduado` (`nombre`, `apellidos`, `fechagrad`, `numdocum`, `email`, `telefono`, `ciudad`, `direccion`) VALUES
('Graduado D', 'Graduado', '10/12/2019', '1090123422', 'graduado@mail.com', '5701234', 'Cali', 'Estadio Olimpico'),
('Graduado c', 'graduado c', '12/11/2019', '1090123456', 'graduado@mail.com', '30011234576', 'Bogota', 'salitre'),
('GraduadoB', NULL, '11/11/2019', '109055261', 'graduado@mail.com', '374353', 'Bogota', 'Salitre'),
('Graduado A', 'Graduado B', '11/11/1989', '91238798', 'graduado@mail.com', '087987', 'Cucuta', 'Zulima');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `id` varchar(50) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `fecha` varchar(50) NOT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `lugar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`id`, `descripcion`, `fecha`, `ciudad`, `lugar`) VALUES
('1', 'Se batio el record del 2006', '11/12/2013', 'Cucuta', 'UFPS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notides`
--

CREATE TABLE `notides` (
  `id_notides` varchar(10) NOT NULL,
  `titular` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `notides`
--

INSERT INTO `notides` (`id_notides`, `titular`) VALUES
('1', 'Se logró');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertalab`
--

CREATE TABLE `ofertalab` (
  `id` varchar(50) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `salario` varchar(50) DEFAULT NULL,
  `descripcion` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `ofertalab`
--

INSERT INTO `ofertalab` (`id`, `cargo`, `empresa`, `salario`, `descripcion`) VALUES
('1', 'Diseñador', 'Microsoft', '1000', 'Trabajo diario 24/7');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`user`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id_eve`);

--
-- Indices de la tabla `eventoprin`
--
ALTER TABLE `eventoprin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_eveprin` (`id_eveprin`);

--
-- Indices de la tabla `expdest`
--
ALTER TABLE `expdest`
  ADD PRIMARY KEY (`id_dest`),
  ADD KEY `link_dest` (`link_dest`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`link`),
  ADD KEY `numdocum` (`numdocum`);

--
-- Indices de la tabla `graddestacado`
--
ALTER TABLE `graddestacado`
  ADD PRIMARY KEY (`numdocum`);

--
-- Indices de la tabla `graduado`
--
ALTER TABLE `graduado`
  ADD PRIMARY KEY (`numdocum`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notides`
--
ALTER TABLE `notides`
  ADD PRIMARY KEY (`id_notides`);

--
-- Indices de la tabla `ofertalab`
--
ALTER TABLE `ofertalab`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventoprin`
--
ALTER TABLE `eventoprin`
  ADD CONSTRAINT `eventoprin_ibfk_1` FOREIGN KEY (`id_eveprin`) REFERENCES `evento` (`id_eve`);

--
-- Filtros para la tabla `expdest`
--
ALTER TABLE `expdest`
  ADD CONSTRAINT `expdest_ibfk_1` FOREIGN KEY (`link_dest`) REFERENCES `experiencia` (`link`);

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `experiencia_ibfk_1` FOREIGN KEY (`numdocum`) REFERENCES `graduado` (`numdocum`);

--
-- Filtros para la tabla `graddestacado`
--
ALTER TABLE `graddestacado`
  ADD CONSTRAINT `graddestacado_ibfk_1` FOREIGN KEY (`numdocum`) REFERENCES `graduado` (`numdocum`);

--
-- Filtros para la tabla `notides`
--
ALTER TABLE `notides`
  ADD CONSTRAINT `notides_ibfk_1` FOREIGN KEY (`id_notides`) REFERENCES `noticia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
