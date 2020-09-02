-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2017 a las 14:48:39
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

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
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `simbolo` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `codigo`, `simbolo`, `estado`) VALUES
(1, 'Tracto alimentario y metabolismo', 'A', 'ATC', NULL),
(2, 'Sangre y órganos formadores de sangre ', 'B', 'ATC', NULL),
(3, 'Sistema cardiovascular ', 'C', 'ATC', NULL),
(4, 'Dermatólogicos ', 'D', 'ATC', NULL),
(5, 'Sistema Genitourinario y hormonas sexuales', 'G', 'ATC', NULL),
(6, 'Preparados Hormonales Sistémicos EXCL Hormonales sexuales e insulina', 'H', 'ATC', NULL),
(7, 'Antiinfecciosos para uso sistémico', 'J', 'ATC', NULL),
(8, 'Agentes antineoplásicos e inmunomoduladores', 'L', 'ATC', NULL),
(9, 'Sistema musculoesquelético ', 'M', 'ATC', NULL),
(10, 'Sistema nervioso ', 'N', 'ATC', NULL),
(11, 'Productos antiparasitarios, Insecticidas y repelentes', 'P', 'ATC', NULL),
(12, 'Sistema respiratorio', 'R', 'ATC', NULL),
(13, 'Órganos de los sentidos ', 'S', 'ATC', NULL),
(14, 'Varios', 'V', 'ATC', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `sigla` varchar(45) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `nombre`, `sigla`, `create_at`, `update_at`, `id_usuario`, `estado`) VALUES
(1, 'Las Paz', 'LPZ', NULL, NULL, NULL, '2'),
(2, 'Cochabamba', 'CBA', NULL, NULL, NULL, NULL),
(4, 'Santa Cruz', 'SCZ', NULL, NULL, NULL, NULL),
(5, 'Beni', 'BNI', NULL, NULL, NULL, NULL),
(6, 'Chuquisaca', 'CHQ', NULL, NULL, NULL, NULL),
(7, 'Oruro', 'ORU', NULL, NULL, NULL, NULL),
(8, 'Pando', 'PND', NULL, NULL, NULL, NULL),
(9, 'Potosí', 'PSI', NULL, NULL, NULL, NULL),
(10, 'Tarija', 'TJA', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido_paterno` varchar(45) DEFAULT NULL,
  `apellido_materno` varchar(45) DEFAULT NULL,
  `compania` varchar(45) DEFAULT NULL,
  `nit` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `tipo_cliente` varchar(45) DEFAULT NULL COMMENT 'frecuente, temporal',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `compania`, `nit`, `email`, `celular`, `telefono`, `fax`, `tipo_cliente`, `create_at`, `update_at`, `id_usuario`, `estado`) VALUES
(1, 'Mirian ', 'Hernandez', 'Montero', 'Ninguna', '2566688', 'Mirian@gmail.com', '703754788', '4228888', '45474863', 'eventual ', NULL, NULL, NULL, ''),
(2, 'Marcelo', 'Vargas', 'Morales', 'Ninguno', '2135454', 'marceloV@gmail.com', '78965443', '4522266', '', 'comprador habitual ', NULL, NULL, NULL, ''),
(5, 'Juan ', 'Quintanilla', 'Peredo', 'IMBOPLAS', '14552266', 'juanQ@gmail.com', '70556654', '4545465', '4335655', 'Habitual', NULL, NULL, NULL, 'Activo'),
(6, 'Orlando', 'Pereira', 'Pozo', 'Farma', '12346655', 'orkando@gmail.com', '76655222', '4552226', '4522225', 'habitual', NULL, NULL, NULL, NULL),
(7, 'Ernesto', 'Campero', 'Ricaldi', 'Farmali', '13265465', 'fae@gmail.com', '75454545', '45552121', '4216565', 'habitual', NULL, NULL, NULL, NULL),
(8, 'Veronica', 'Corrales', 'Perez', 'Indufar', '132413545', 'vero@gmail.com', '70354455', '4545454', '4545121', 'ha', NULL, NULL, NULL, NULL),
(9, 'Danilo', 'Sueares', 'Perez', 'Ninguna', '13233645', 'dani@gmail.com', '702555414', '455552', '455222', 'Nuevo', NULL, NULL, NULL, NULL),
(10, 'David', 'Sueres', 'Merida', '', '4521266', 'david@gmail.com', '72232323', '454545', '45465656', '', NULL, NULL, NULL, NULL),
(11, 'Carlos', 'Mendez', 'Perez', 'Farmacias', '12456545', 'carlos@gmail.com', '734654654', '5445454', '545454', 'habitual', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `composicion`
--

CREATE TABLE `composicion` (
  `id` int(11) NOT NULL,
  `unidad_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `camtidad` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `eslogan` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nit` varchar(45) DEFAULT NULL,
  `candidad_minima` int(11) DEFAULT NULL,
  `candidad_maxima` int(11) DEFAULT NULL,
  `porcentaje_utilidad` int(11) DEFAULT NULL,
  `iva` decimal(2,0) NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `id_usuario` varchar(45) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `nombre`, `logo`, `eslogan`, `email`, `nit`, `candidad_minima`, `candidad_maxima`, `porcentaje_utilidad`, `iva`, `create_at`, `update_at`, `id_usuario`, `estado`) VALUES
(1, 'FARMACIA ', NULL, NULL, 'farma@gmail.com', '1223344556', 1, 100, 20, '13', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contraindicaciones`
--

CREATE TABLE `contraindicaciones` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `nombre` varchar(225) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int(11) NOT NULL,
  `venta_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_producto` decimal(10,3) DEFAULT NULL,
  `precio` decimal(10,3) DEFAULT NULL COMMENT 'sin descuentos',
  `descuento` decimal(10,3) DEFAULT NULL,
  `precio_venta` decimal(10,3) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id`, `venta_id`, `producto_id`, `cantidad`, `precio_producto`, `precio`, `descuento`, `precio_venta`, `create_at`, `update_at`, `id_usuario`, `estado`) VALUES
(44, 55, 2, 1, '15.000', NULL, NULL, '15.000', NULL, NULL, NULL, NULL),
(45, 55, 5, 1, '12.500', NULL, NULL, '12.500', NULL, NULL, NULL, NULL),
(46, 54, 2, 2, '15.000', NULL, NULL, '30.000', NULL, NULL, NULL, NULL),
(49, 57, 5, 8, '12.500', NULL, NULL, '100.000', NULL, NULL, NULL, NULL),
(50, 57, 6, 15, '1.000', NULL, NULL, '15.000', NULL, NULL, NULL, NULL),
(54, 58, 12, 20, '3.000', NULL, NULL, '60.000', NULL, NULL, NULL, NULL),
(55, 58, 15, 1, '562.500', NULL, NULL, '562.500', NULL, NULL, NULL, NULL),
(56, 59, 11, 10, '13.800', NULL, NULL, '138.000', NULL, NULL, NULL, NULL),
(57, 60, 19, 3, '3.800', NULL, NULL, '11.400', NULL, NULL, NULL, NULL),
(58, 60, 7, 5, '3.500', NULL, NULL, '17.500', NULL, NULL, NULL, NULL),
(60, 61, 15, 2, '562.500', NULL, NULL, '1125.000', NULL, NULL, NULL, NULL),
(61, 62, 4, 1, '27.500', NULL, NULL, '27.500', NULL, NULL, NULL, NULL),
(62, 62, 6, 1, '1.000', NULL, NULL, '1.000', NULL, NULL, NULL, NULL),
(63, 62, 6, 1, '1.000', NULL, NULL, '1.000', NULL, NULL, NULL, NULL),
(64, 56, 2, 1, '15.000', NULL, NULL, '15.000', NULL, NULL, NULL, NULL),
(65, 63, 15, 1, '562.500', NULL, NULL, '562.500', NULL, NULL, NULL, NULL),
(66, 64, 2, 5, '15.000', NULL, NULL, '75.000', NULL, NULL, NULL, NULL),
(67, 65, 2, 70, '15.000', NULL, NULL, '1050.000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE `devolucion` (
  `id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion_producto`
--

CREATE TABLE `devolucion_producto` (
  `id` int(11) NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `producto_id` int(11) NOT NULL,
  `devolucion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dosis_administracion`
--

CREATE TABLE `dosis_administracion` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `categoria` varchar(45) DEFAULT NULL COMMENT 'niños, adultos',
  `cantidad` varchar(45) DEFAULT NULL COMMENT 'cantidad de administracion',
  `descripcion` text,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `existencia`
--

CREATE TABLE `existencia` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `codigo_producto` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_compra` decimal(10,2) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `precio_venta` decimal(10,2) DEFAULT NULL,
  `fecha_vencimiento` varchar(45) DEFAULT NULL,
  `codigo_lote` varchar(45) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `existencia`
--

INSERT INTO `existencia` (`id`, `producto_id`, `codigo_producto`, `cantidad`, `precio_compra`, `precio_unitario`, `precio_venta`, `fecha_vencimiento`, `codigo_lote`, `create_at`, `update_at`, `id_usuario`, `estado`) VALUES
(1, 2, '1001', 93, '12.00', '15.00', '15.00', '2016-12-21', 'A01AB11', '2016-08-26 00:00:00', NULL, NULL, 'Vencido'),
(2, 2, '1001', 14, '12.00', '15.00', '15.00', '2017-02-10', 'A01AB11', '2016-04-22 00:00:00', NULL, NULL, 'Vencido'),
(3, 2, '1001', 100, '12.00', '15.00', '15.00', '2017-03-25', 'A01AB11', '2016-08-16 00:00:00', NULL, NULL, 'Activo'),
(4, 5, '12011', 49, '10.00', '12.50', '12.50', '2016-12-23', 'A02AD01', '2016-09-02 00:00:00', NULL, NULL, 'Vencido'),
(5, 5, '12011', 10, '10.00', '12.50', '12.50', '2016-09-21', 'A02AD01', '2016-05-16 00:00:00', NULL, NULL, 'Vencido'),
(6, 5, '12011', 100, '10.00', '12.50', '12.50', '2017-03-09', 'A02AD01', '2016-11-22 00:00:00', NULL, NULL, 'Activo'),
(7, 5, '12011', 12, '10.00', '12.50', '12.50', '2016-08-21', 'A02AD01', '2016-05-11 00:00:00', NULL, NULL, 'Vencido'),
(8, 6, '45445', 4, '0.80', '1.00', '1.00', '2017-02-10', 'A02BC01', '2016-09-10 00:00:00', NULL, NULL, 'Vencido'),
(9, 6, '45445', 24, '0.80', '1.00', '1.00', '2016-08-24', 'A02BC01', '2016-05-01 00:00:00', NULL, NULL, 'Vencido'),
(10, 4, '2001', 19, '22.00', '27.50', '27.50', '2016-12-23', 'A01AA01', '2016-04-27 00:00:00', NULL, NULL, 'Vencido'),
(11, 7, '42452', 65, '2.80', '3.50', '3.50', '2016-12-24', 'A02BA02', '2016-08-04 00:00:00', NULL, NULL, 'Vencido'),
(12, 15, '15450', 5, '450.00', '562.50', '562.50', '2017-03-11', 'N01AB01', '2016-10-11 00:00:00', NULL, NULL, 'Activo'),
(13, 11, '4434', 90, '11.00', '13.80', '13.80', '2016-12-21', 'A03BA01', '2016-09-12 00:00:00', NULL, NULL, 'Vencido'),
(14, 11, '4434', 10, '11.00', '13.80', '13.80', '2017-03-17', 'A03BA01', '2016-10-02 00:00:00', NULL, NULL, 'Activo'),
(15, 12, '4545', 10, '2.40', '3.00', '3.00', '2017-05-06', 'A03AX13', '2017-01-02 00:00:00', NULL, NULL, 'Activo'),
(16, 12, '4545', 10, '2.40', '3.00', '3.00', '2016-12-22', 'A03AX13', '2016-05-05 00:00:00', NULL, NULL, 'Vencido'),
(17, 19, '21568', 1, '3.00', '3.80', '3.80', '2017-02-23', 'N01BB52', '2016-12-09 00:00:00', NULL, NULL, 'Activo'),
(18, 19, '21568', 25, '3.00', '3.80', '3.80', '2017-02-18', 'N01BB52', '2016-11-10 00:00:00', NULL, NULL, 'Vencido'),
(19, 14, '10205', 100, '3.00', '3.80', '3.80', '2017-04-22', 'J05AF06', '2016-09-04 00:00:00', NULL, NULL, 'Activo'),
(20, 16, '16545', 70, '35.00', '43.80', '43.80', '2017-03-19', 'N01AX03', '2016-08-08 00:00:00', NULL, NULL, 'Activo'),
(21, 17, '54546', 20, '40.00', '50.00', '50.00', '2017-04-09', 'N01AF03', '2016-06-11 00:00:00', NULL, NULL, 'Activo'),
(22, 18, '23156', 25, '15.00', '18.80', '18.80', '2017-06-23', 'N01BB01', '2016-12-22 00:00:00', NULL, NULL, 'Activo'),
(23, 15, '15450', 20, '450.00', '562.50', '562.50', '2017-02-18', 'N01AB01', '2016-08-08 00:00:00', NULL, NULL, 'Vencido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma`
--

CREATE TABLE `forma` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` text,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forma`
--

INSERT INTO `forma` (`id`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'Polvo', '', NULL),
(2, 'Gel o Pasta', '', NULL),
(3, 'Suspension', '', NULL),
(4, 'Cápsula', '', NULL),
(5, 'Comprimido', '', NULL),
(6, 'Inyectable', '', NULL),
(7, 'Solución oral gotas', '', NULL),
(8, 'Ampolla', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicacion`
--

CREATE TABLE `indicacion` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `asunto` varchar(45) DEFAULT NULL,
  `contenido` varchar(225) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion_cliente`
--

CREATE TABLE `notificacion_cliente` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `notificacion_id` int(11) NOT NULL,
  `id_usuario` datetime DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasillo`
--

CREATE TABLE `pasillo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio_venta`
--

CREATE TABLE `precio_venta` (
  `id` int(11) NOT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `candidad_minima` int(11) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentacion`
--

CREATE TABLE `presentacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `presentacion`
--

INSERT INTO `presentacion` (`id`, `nombre`, `descripcion`, `estado`) VALUES
(2, 'Paquete', 'Presentación en caja', 'Si'),
(3, 'Unitario', 'Presentación una sola unidad  ', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `unidad_id` int(11) DEFAULT NULL,
  `forma_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `presentacion_id` int(11) DEFAULT NULL,
  `sub_categoria_id` int(11) DEFAULT NULL,
  `nombre` varchar(45) NOT NULL,
  `cantidad` int(11) DEFAULT '0' COMMENT 'cantidad',
  `concentracion` varchar(100) DEFAULT NULL,
  `presentacion` text,
  `nombre_generico` varchar(45) DEFAULT NULL,
  `general_indicacion` text,
  `pais` varchar(45) DEFAULT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `lab_fabricante` varchar(100) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `precio_compra` decimal(10,2) DEFAULT NULL,
  `precio_paquete` decimal(10,3) DEFAULT NULL,
  `porcentaje_utilidad` decimal(4,2) DEFAULT NULL,
  `precio_venta` decimal(10,2) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `codigo_producto` varchar(45) DEFAULT NULL,
  `codigo_lote` varchar(100) DEFAULT NULL,
  `promocion` tinyint(1) DEFAULT NULL COMMENT 'Si esta de promocion',
  `foto` varchar(100) DEFAULT NULL,
  `observacion` text,
  `descripcion` text,
  `fecha_vencimiento` date DEFAULT NULL,
  `codigo_qr` varchar(100) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `cantidad_minima` int(11) DEFAULT NULL,
  `cantidad_paquete` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL COMMENT 'activo, vendido, vencido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `unidad_id`, `forma_id`, `categoria_id`, `presentacion_id`, `sub_categoria_id`, `nombre`, `cantidad`, `concentracion`, `presentacion`, `nombre_generico`, `general_indicacion`, `pais`, `empresa`, `lab_fabricante`, `codigo`, `precio_compra`, `precio_paquete`, `porcentaje_utilidad`, `precio_venta`, `precio_unitario`, `codigo_producto`, `codigo_lote`, `promocion`, `foto`, `observacion`, `descripcion`, `fecha_vencimiento`, `codigo_qr`, `fecha_registro`, `cantidad_minima`, `cantidad_paquete`, `create_at`, `update_at`, `id_usuario`, `estado`) VALUES
(2, NULL, 1, 1, 3, 1, 'Bicarbonato de sodio ', 100, '20g', 'Unitario', 'Bicarbonato de sodio ', NULL, 'Indu', 'INDUFAR', NULL, 'A01AB11', '12.00', '100.000', '20.00', '15.00', '15.00', '1001', '2511', NULL, NULL, NULL, '', '2016-11-17', NULL, NULL, 1, 1, NULL, NULL, NULL, '1'),
(4, NULL, 2, 1, 3, 1, 'Fluohan', 0, '100 ml', 'Unitario', 'Fluoruro de sodio', NULL, 'Chile', 'HAHNEMANN', NULL, 'A01AA01', '22.00', NULL, '20.00', '27.50', '27.50', '2001', '3025', NULL, NULL, NULL, 'FORMA FARMACEUTICA Y FORMULACION:\r\nCada 5 ml de solución oral contiene:\r\nFluoruro de sodio\r\n(equivalente a 1 mg de flúor).\r\nExcipientes c.s.\r\nINDICACIONES TERAPEUTICAS:\r\nRefuerza el esmalte dental. Está indicado para la prevención de la caries dental.\r\nCONTRAINDICACIONES:\r\nEmbarazo. Período de lactancia. Si el paciente es alérgico al fluoruro de sodio o a alguno de los\r\ncomponentes de la formulación. Si el contenido de ion fluoruro del agua de abastecimiento local es superior\r\na 0,7 mg/l o 0,7 ppm.\r\nPRECAUCIONES GENERALES:\r\nLa leche o productos lácteos, así como medicamentos antiácidos a base de sales de calcio, aluminio o\r\nmagnesio, dificultan la absorción de ion fluoruro. En consecuencia, conviene evitar la toma simultánea con\r\nestos productos y medicamentos. Su administración se realizará con 2 horas de diferencia.\r\nSeñales de sobredosis muy fuerte: Heces negras y blandas; vómito sangriento; diarrea; sueño; sensación\r\nde desmayo; aumento de saliva en la boca; náuseas o vómitos; respiración superficial; retortijones o dolor\r\ndel estómago; temblores; excitación inusual; ojos llorosos, debilidad. Señales de posible sobredosis\r\ncrónica: Dolor de los huesos; rigidez; decoloración blanca, marrón o negra de los dientes.\r\nDOSIS Y VIA DE ADMINISTRACION:\r\nLa dosis diaria recomendada depende de la edad y el contenido en flúor del agua de bebida. En general se\r\nrecomienda:\r\nAgua conteniendo una cantidad menor de F que 300 microgramos/litro (0.3 partes por millón):\r\nNiños mayores de 6 meses no es necesaria la suplementación.\r\nNiños de 6 meses a 3 años: 250 microgramos diarios (1.25 ml).\r\nNiños de 3 a 6 años: 500 microgramos (2,5 ml) diarios.\r\nNiños por encima de 6 años: 1 mg (5 ml )diarios.\r\nAgua potable conteniendo F entre 300 y 700 microgramos/litro (0.3 a 0.7 partes por millón):\r\nNiños por encima de 3 años no es necesaria la suplementación.\r\nNiños de 3 a 6 años: 250 (1,25 ml)microgramos diarios.\r\nNiños mayores de 6 años: 500 microgramos diarios (2,5 ml).\r\nAgua conteniendo F por encima 700 microgramos/litro (0.7 partes por millón): La suplementación no es\r\nnecesaria.\r\nPRESENTACIONES:\r\nFLUOHAN solución oral, caja con un frasco por 100 ml.\r\n', '2017-05-05', NULL, NULL, 1, 1, NULL, NULL, NULL, '1'),
(5, NULL, 3, 1, 3, 5, 'Acydone gel', 100, '100 ml', 'Unitario', 'Hidroxido de aluminio y magnesio', NULL, 'Brazil', 'SIGMA CORP', NULL, 'A02AD01', '10.00', NULL, '20.00', '12.50', '12.50', '12011', '25450', NULL, NULL, NULL, '', '2016-11-17', NULL, NULL, 1, 1, NULL, NULL, NULL, '1'),
(6, NULL, 4, 1, 2, 5, 'Omeprazol', 0, '20 ml', 'Paquete', 'Omeprazol', NULL, 'Bolivia', 'COFAR S.A.', NULL, 'A02BC01', '0.80', NULL, '20.00', '1.00', '1.00', '45445', '01244', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 30, NULL, NULL, NULL, '1'),
(7, NULL, 5, 1, 2, 5, 'Ranitidina', 0, '150 ml', 'Paquete', 'Ranitidina', NULL, 'Bolivia', 'LAFAR', NULL, 'A02BA02', '2.80', NULL, '20.00', '3.50', '3.50', '42452', '54554', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, '1'),
(8, NULL, 6, 1, 3, 5, 'Ranitidina', 0, '50 ml', 'Unitario', 'Ranitidina', NULL, 'Bolivia', 'IFARBO LTDA', NULL, 'A02BA02', '2.00', NULL, '20.00', '2.50', '2.50', '5645', '04542', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '1'),
(9, NULL, 5, 1, 2, 5, 'Misopostrol', 0, '200 ml ', 'Paquete', 'Misopostrol', NULL, 'Bolivia', 'l', NULL, 'A02BC01', '0.80', NULL, '20.00', '1.00', '1.00', '120002', '21541', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 30, NULL, NULL, NULL, '1'),
(11, NULL, 5, 1, 2, 6, 'Butilbromuro de Hioscina', 10, '10ml', 'Paquete', 'Butilescopolamina', NULL, 'Bolivia', 'VITA S.A.', NULL, 'A03BA01', '11.00', NULL, '20.00', '13.80', '13.80', '4434', '212', NULL, NULL, NULL, 'Acción Terapéutica: Antiespasmódico. Antídoto en intoxicaciones con anticolinesterásicos.', NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '1'),
(12, NULL, 4, 1, 2, 6, 'Simeticona', 10, '300 ml', 'Paquete', 'Digestogas', NULL, 'Bolivia', 'BRESKOT PHARMA', NULL, 'A03AX13', '2.40', NULL, '20.00', '3.00', '3.00', '4545', '6454', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 30, NULL, NULL, NULL, '1'),
(13, NULL, 4, 1, 2, 6, 'Digestogas 300', 0, '300 ml', 'Paquete', 'Simeticona', NULL, 'Indu', 'BRESKOT PHARMA', NULL, 'A03AX13', '2.20', '62.500', '20.00', '2.80', '2.80', '02154', '05454', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, '1'),
(14, NULL, 5, 7, 2, 44, 'Lamivudina', 100, '300g ', 'Paquete', 'Abacavir', NULL, 'Bolivia', 'Quality Farma', NULL, 'J05AF06', '3.00', '90.000', '20.00', '3.80', '3.80', '10205', '15450', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 30, NULL, NULL, NULL, NULL),
(15, NULL, 7, 10, 3, 55, 'Tanohalo', 5, '250ml', 'Unitario', 'Halotano', NULL, 'Bolivia', 'Cristalia LTDA', NULL, 'N01AB01', '450.00', NULL, '20.00', '562.50', '562.50', '15450', '65350', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, NULL),
(16, NULL, 6, 10, 2, 55, 'Ketamin', 70, '50ml', 'Paquete', 'Ketamina', NULL, 'Bolivia', 'Cristalia LTDA', NULL, 'N01AX03', '35.00', '175.000', '20.00', '43.80', '43.80', '16545', '24564', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 5, NULL, NULL, NULL, NULL),
(17, NULL, 6, 10, 2, 55, 'Thiopentax', 20, '1g', 'Paquete', 'Tiopental sódico', NULL, 'Bolivia', 'Cristalia LTDA', NULL, 'N01AF03', '40.00', '1000.000', '20.00', '50.00', '50.00', '54546', '52121', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, NULL),
(18, NULL, 1, 10, 3, 55, 'Bupigobbi', 25, '3 ml', 'Unitario', 'Bupivacaina clorhidrato', NULL, 'Bolivia', 'Farmedical SRL', NULL, 'N01BB01', '15.00', NULL, '20.00', '18.80', '18.80', '23156', '54623', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, NULL),
(19, NULL, 6, 10, 2, 55, 'Agua Anestisica', 1, '5ml', 'Paquete', 'Lidocaina clorhidrato', NULL, 'Bolivia', 'Vita S.A', NULL, 'N01BB52', '3.00', '75.000', '20.00', '3.80', '3.80', '21568', '51561', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, NULL),
(20, NULL, 6, 10, 2, 55, 'Adrenalina', 0, '1mg', 'Paquete', 'Lidocaina clorhidrato + Epinefrina', NULL, 'Bolivia', 'Drogueria Inti S.A', NULL, 'N01BB52', '10.00', '250.000', '20.00', '12.50', '12.50', '54578', '68751', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, NULL),
(22, NULL, 5, 10, 2, 58, 'Diazepam', 0, '10mg', 'Paquete', 'Diazepam', NULL, 'Bolivia', 'Delta S.A', NULL, 'N05BA01', '0.60', '10.000', '20.00', '0.70', '0.70', '21848', '57865', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 20, NULL, NULL, NULL, NULL),
(23, NULL, 5, 10, 2, 73, 'Morfina', 0, '10mg', 'Paquete', 'Morfina', NULL, 'Bolivia', 'Drogueria Inti S.A', NULL, 'N02AA01', '2.80', '80.000', '20.00', '3.50', '3.50', '54548', '57681', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 40, NULL, NULL, NULL, NULL),
(24, NULL, 5, 2, 2, 14, 'Ácido acetil salicílico', 0, '10mg', 'Paquete', 'Ácido acetil salicílico', NULL, 'Peru', 'Pharmandina', NULL, 'B01AC06', '0.50', '120.000', '20.00', '0.60', '0.60', '15752', '24589', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 240, NULL, NULL, NULL, NULL),
(25, NULL, 5, 9, 2, 51, 'Ibuprofeno', 0, '400 mg', 'Paquete', 'Ibuprofeno', NULL, 'Chile', 'Laboratorio Chile', NULL, 'M01AE01', '0.80', '10.000', '20.00', '1.00', '1.00', '57487', '65821', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 20, NULL, NULL, NULL, NULL),
(26, NULL, 5, 10, 2, 73, 'Paracetamol ', 0, '500mg', 'Paquete', 'Acetaminofeno', NULL, 'Bolivia', 'Delta S.A', NULL, 'N02BE01', '0.80', '10.000', '20.00', '1.00', '1.00', '35689', '61587', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 20, NULL, NULL, NULL, NULL),
(27, NULL, 5, 10, 2, 73, 'Codezol', 0, '30mg', 'Paquete', 'Codeína', NULL, 'Bolivia', 'Quimfa Bolivia S.A', NULL, 'N02AA07', '4.00', '80.000', '20.00', '5.00', '5.00', '48987', '54821', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 20, NULL, NULL, NULL, NULL),
(28, NULL, 5, 9, 2, 53, 'Alopurinol', 0, '300mg', 'Paquete', 'Alopurinol', NULL, 'India', 'Hahnemann', NULL, 'M04AA01', '1.00', '250.000', '20.00', '1.30', '1.30', '52155', '65721', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 250, NULL, NULL, NULL, NULL),
(29, NULL, 5, 11, 2, 61, 'Cloroquina', 0, '250mg', 'Paquete', 'Cloroquina', NULL, 'Bolivia', 'Lafar S.A', NULL, 'P01BA01', '0.80', '250.000', '20.00', '1.00', '1.00', '45785', '57813', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 500, NULL, NULL, NULL, NULL),
(30, NULL, 5, 8, 2, 50, 'Azatioprina', 0, '50mg', 'Paquete', 'Azatioprina', NULL, 'Bolivia', 'Tecnofarma S.A', NULL, 'L04AX01', '5.00', '500.000', '20.00', '6.30', '6.25', '32148', '54812', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 100, NULL, NULL, NULL, NULL),
(31, NULL, 5, 9, 2, 51, 'Penicilamina', 0, '250mg', 'Paquete', 'Penicilamina', NULL, 'Bolivia', 'Drogueria Inti S.A', NULL, 'M01CC01', '15.00', '300.000', '20.00', '18.80', '18.75', '24871', '54123', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 20, NULL, NULL, NULL, NULL),
(32, NULL, 5, 12, 2, 66, 'Algergin', 0, '4mg', 'Paquete', 'Clorfenamina', NULL, 'Bolivia', 'Alcos S.A', NULL, 'R06AB04', '0.80', '25.000', '20.00', '1.00', '1.00', '32589', '54841', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 48, NULL, NULL, NULL, NULL),
(33, NULL, 5, 6, 2, 39, 'Dexametasona', 0, '4mg', 'Paquete', 'Dexametasona', NULL, 'Bolivia', 'Delta S.A', NULL, 'H02AB02', '3.20', '300.000', '20.00', '4.00', '4.00', '12451', '35362', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 100, NULL, NULL, NULL, NULL),
(34, NULL, 5, 1, 2, 9, 'Carbón medicinal', 0, '300mg', 'Paquete', 'Carbón medicinal activado', NULL, 'Bolivia', 'Vita S.A', NULL, 'A07BA01', '1.60', '150.000', '20.00', '2.00', '2.00', '26884', '54875', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 100, NULL, NULL, NULL, NULL),
(35, NULL, 5, 7, 2, 41, 'Amoxicilina', 0, '500mg', 'Paquete', 'Amoxicilina', NULL, 'Bolivia', 'Lafar S.A', NULL, 'J01CA05', '1.60', '750.000', '20.00', '2.00', '2.00', '32433', '12315', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 500, NULL, NULL, NULL, NULL),
(36, NULL, 6, 7, 2, 41, 'Neo Terbocilin', 0, '1g', 'Paquete', 'Ampicilina', NULL, 'Chile', 'Terbol S.A', NULL, 'J01CA01', '8.00', '200.000', '20.00', '10.00', '10.00', '12352', '21354', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, NULL),
(37, NULL, 5, 7, 2, 41, 'Azitromicina', 0, '500mg', 'Paquete', 'Azitromicina', NULL, 'Chile', 'Laboratorio Chile', NULL, 'J01FA10', '6.80', '40.000', '20.00', '8.50', '8.50', '53521', '54876', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 6, NULL, NULL, NULL, NULL),
(38, NULL, 5, 4, 2, 32, 'Eritromicina', 0, '500mg', 'Paquete', 'Eritromicina', NULL, 'Bolivia', 'Delta S.A', NULL, 'D10AF02', '1.00', '200.000', '20.00', '1.30', '1.20', '25436', '23423', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 200, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_promocion`
--

CREATE TABLE `producto_promocion` (
  `id` int(11) NOT NULL,
  `promocion_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `precio_venta` decimal(10,3) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL COMMENT 'descuento en porcentaje',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_sustituto`
--

CREATE TABLE `producto_sustituto` (
  `id` int(11) NOT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `producto_id` int(11) NOT NULL,
  `sustituto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `descripcion` text,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedad`
--

CREATE TABLE `propiedad` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `nombre` text,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `pasillo_id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `create_at` varchar(45) DEFAULT NULL,
  `update_at` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_categoria`
--

CREATE TABLE `sub_categoria` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `nombre` varchar(300) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sub_categoria`
--

INSERT INTO `sub_categoria` (`id`, `categoria_id`, `codigo`, `nombre`, `estado`) VALUES
(1, 1, '01', 'Preparados estomatológicos', NULL),
(5, 1, '02', 'Agentes para el tratamiento de alteraciones causadas por ácidos', NULL),
(6, 1, '03', 'Agentes contra padecimientos funcionales del estómago e intestino', NULL),
(7, 1, '04', 'Antieméticos y antinauseosos', NULL),
(8, 1, '06', 'Laxantes', NULL),
(9, 1, '07', 'Antidiarreicos, agentes antiinflamatorios/antiinfecciosos intestinales', NULL),
(10, 1, '09', 'Digestivos, incluyendo enzimas', NULL),
(11, 1, '10', 'Drogas usadas en diabetes', NULL),
(12, 1, '11', 'Vitaminas', NULL),
(13, 1, '12', 'Suplementos minerales', NULL),
(14, 2, '01', 'Agentes antitrombóticos', NULL),
(15, 2, '02', 'Antihemorrágicos', NULL),
(16, 2, '03', 'Preparados antianémicos', NULL),
(17, 2, '05', 'Sustitutos de la sangre y soluciones para perfusión', NULL),
(18, 3, '01', 'Terapia cardíaca', NULL),
(19, 3, '02', 'Antihipertensivos', NULL),
(20, 3, '03', 'Diuréticos', NULL),
(21, 3, '05', 'Vasoprotectores', NULL),
(22, 3, '07', 'Agentes beta-bloqueantes', NULL),
(23, 3, '08', 'Bloqueantes de canales de calcio', NULL),
(24, 3, '09', 'Agentes que actúan sobre el sistema renina-angiotensina', NULL),
(25, 3, '10', 'Agentes que reducen los lípidos séricos', NULL),
(26, 4, '01', 'Antifúngicos para uso dermatológico', NULL),
(27, 4, '02', 'Emolientes y protectores', NULL),
(28, 4, '04', 'Antipruriginosos, Incl. antihistamínicos, anestésicos, etc.', NULL),
(29, 4, '06', 'Antibióticos y quimioterápicos para uso dermatológico ', NULL),
(30, 4, '07', 'Preparados dermatológicos con corticoesteroides', NULL),
(31, 4, '08', 'Antisépticos y desinfectantes', NULL),
(32, 4, '10', 'Preparados anti-acné', NULL),
(33, 4, '11', 'Otros preparados dermatológicos', NULL),
(34, 5, '01', 'Antiinfecciosos y antisépticos ginecológicos', NULL),
(35, 5, '02', 'Otros ginecológicos', NULL),
(36, 5, '03', 'Hormonas sexuales y moduladores del sistema genital', NULL),
(37, 5, '04', 'productos de uso urologico', NULL),
(38, 6, '01', 'Hormonas hipofisarias e hipotalámicas y sus análogos', NULL),
(39, 6, '02', 'Corticoesteroides para uso sistémico', NULL),
(40, 6, '03', 'Terapia tiróidea', NULL),
(41, 7, '01', 'Antibacterianos para uso sistémico', NULL),
(42, 7, '02', 'Antimicóticos para uso sistémico', NULL),
(43, 7, '04', 'Antimicobacterias', NULL),
(44, 7, '05', 'Antivirales de uso sistémico', NULL),
(45, 7, '06', 'Sueros inmunes e inmunoglobulinas', NULL),
(46, 7, '07', 'Vacunas', NULL),
(47, 8, '01', 'agentes antineoplásicos', NULL),
(48, 8, '02', 'Terapia endócrina', NULL),
(49, 8, '03', 'Inmunoestimulantes', NULL),
(50, 8, '04', 'Agentes inmunosupresores', NULL),
(51, 9, '01', 'Productos antiinflamatorios y antirreumáticos', NULL),
(52, 9, '03', 'Relajantes musculares', NULL),
(53, 9, '04', 'Preparados antigotosos', NULL),
(54, 9, '05', 'Drogas para el tratamiento de enfermedades óseas', NULL),
(55, 10, '01', 'Anestésicos', NULL),
(56, 10, '03', 'Antiepilépticos', NULL),
(57, 10, '04', 'antiparkinsonianos', NULL),
(58, 10, '05', 'Psicolépticos', NULL),
(59, 10, '06', 'Psicoanalépticos', NULL),
(60, 10, '07', 'Otras drogas que actúan sobre el sistema nervioso', NULL),
(61, 11, '01', 'Antiprotozoarios', NULL),
(62, 11, '02', 'Antihelmínticos', NULL),
(63, 11, '03', 'Ectoparasiticidas, incl. escabicidas, insecticidas y repelentes', NULL),
(64, 10, '03', 'Agentes contra padecimientos obstructivos de las vías respiratorias', NULL),
(65, 10, '05', 'Preparados para la tos y el resfrío', NULL),
(66, 12, '06', 'Antihistamínicos para uso sistémico', NULL),
(67, 12, '07', 'Otros productos para el sistema respiratorio', NULL),
(68, 13, '01', 'Oftalmológicos', NULL),
(69, 13, '02', 'Otológicos', NULL),
(70, 14, '03', 'Todo el resto de los productos terapéuticos', NULL),
(71, 14, '06', 'Nutrientes generales', NULL),
(72, 1, '08', 'Medios de contraste', NULL),
(73, 10, '02', 'Analgesicos', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sustituto`
--

CREATE TABLE `sustituto` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id` int(11) NOT NULL,
  `seccion_id` int(11) NOT NULL,
  `pasillo_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`id`, `nombre`, `estado`) VALUES
(1, 'Kg.', NULL),
(2, 'gsdfg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido_paterno` varchar(45) DEFAULT NULL,
  `apellido_materno` varchar(45) DEFAULT NULL,
  `ci` int(11) DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(105) DEFAULT NULL,
  `rol` varchar(45) DEFAULT NULL COMMENT 'Admin,vendedor',
  `id_usuario` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `ciudad_id`, `nombre`, `apellido_paterno`, `apellido_materno`, `ci`, `genero`, `celular`, `email`, `direccion`, `fecha_nacimiento`, `foto`, `username`, `password`, `rol`, `id_usuario`, `estado`, `create_at`, `update_at`) VALUES
(1, 1, 'admin', 'admin', 'admin', 7878, 'Mujer', '788', 'admin1@gmail.com', 'lanza', '2016-01-06', '', 'admin', 'admin', 'Admin', NULL, NULL, NULL, NULL),
(4, 2, 'Juan', 'Gonzales ', 'Morales', 8965087, 'Hombre', '70678187', 'juan@gmail.com', 'Av. Salamanca #1423', '2016-10-13', NULL, 'juan', 'juan', 'Auxiliar', NULL, NULL, NULL, NULL),
(5, 2, 'Jorge', '', 'Ovando', 6550787, 'Hombre', '70375172', 'jorge@gmail.com', 'Calle Alamos #142', '2015-09-02', '', 'jorge', 'jorge', 'Admin', NULL, NULL, NULL, NULL),
(6, 1, 'Daniel ', 'Chavez', 'Camacho', 123456789, 'Hombre', '76428939', 'daniel@hotmail.com', 'Avenida Aniceto Arce #783', '1990-01-02', '', 'daniel', 'daniel', 'Auxiliar', NULL, NULL, NULL, NULL),
(7, 1, 'Vanesa', 'Fuentes', 'Illanes', 7560874, 'Mujer', '70358963', 'vanesa@gmail.com', 'calle Retamas #1254', '1992-02-05', '', 'vanesa', 'vanesa', 'Admin', NULL, NULL, NULL, NULL),
(8, 2, 'Raul', 'Senzano', 'Ovando', 123456789, 'Hombre', '12345', 'ruben@gmail.com', '', '2016-06-01', NULL, 'ruben', 'ruben', 'Auxiliar', NULL, NULL, NULL, NULL),
(9, 2, 'Camila', 'Crespo', 'Duran', 6545565, 'Mujer', '70644455', 'camila@gmail.com', '', '1990-12-06', NULL, 'camila', 'camila', 'Admin', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `numero_factura` varchar(45) DEFAULT NULL,
  `nit_empresa` varchar(45) DEFAULT NULL,
  `nombre_cliente` varchar(45) DEFAULT NULL,
  `nit_cliente` varchar(45) DEFAULT NULL,
  `compania` varchar(45) DEFAULT NULL,
  `fecha_venta` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `iva` decimal(2,0) NOT NULL,
  `montototal` decimal(10,2) NOT NULL,
  `descuento` decimal(10,0) DEFAULT '0',
  `comision` decimal(10,3) DEFAULT NULL,
  `codigo_qr` varchar(100) DEFAULT NULL,
  `observacion` varchar(45) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `user_id`, `cliente_id`, `numero_factura`, `nit_empresa`, `nombre_cliente`, `nit_cliente`, `compania`, `fecha_venta`, `cantidad`, `monto`, `iva`, `montototal`, `descuento`, `comision`, `codigo_qr`, `observacion`, `create_at`, `update_at`, `estado`) VALUES
(54, 5, 1, '000001', '1223344556', 'Mirian ', '2566688', NULL, '2016-12-20', '2', '30.00', '13', '34.50', '0', NULL, NULL, '', NULL, NULL, NULL),
(55, 5, 2, '000054', '1223344556', 'Marcelo', '2135454', NULL, '2016-12-20', '2', '27.50', '13', '31.63', '0', NULL, NULL, '', NULL, NULL, NULL),
(56, 5, 5, '000055', '1223344556', 'Juan ', '14552266', NULL, '2016-12-20', '1', '15.00', '13', '15.53', '10', NULL, NULL, 'descuento 10%', NULL, NULL, NULL),
(57, 5, 6, '000056', '1223344556', 'Orlando', '12346655', NULL, '2016-12-20', '23', '115.00', '13', '132.25', '0', NULL, NULL, '', NULL, NULL, NULL),
(58, 5, 7, '000057', '1223344556', 'Ernesto', '13265465', NULL, '2016-12-21', '21', '622.50', '13', '715.88', '0', NULL, NULL, '', NULL, NULL, NULL),
(59, 5, 8, '000058', '1223344556', 'Veronica', '132413545', NULL, '2016-12-21', '10', '138.00', '13', '158.70', '0', NULL, NULL, '', NULL, NULL, NULL),
(60, 5, 9, '000059', '1223344556', 'Danilo', '13233645', NULL, '2016-12-21', '8', '28.90', '13', '33.23', '0', NULL, NULL, '', NULL, NULL, NULL),
(61, 5, 10, '000060', '1223344556', 'David', '4521266', NULL, '2016-12-21', '2', '1125.00', '13', '1293.75', '0', NULL, NULL, '', NULL, NULL, NULL),
(62, 5, 11, '000061', '1223344556', 'Carlos', '12456545', NULL, '2016-12-21', '3', '29.50', '13', '33.92', '0', NULL, NULL, '', NULL, NULL, NULL),
(63, 5, 5, '000062', '1223344556', 'Juan ', '14552266', NULL, '2016-12-21', '1', '562.50', '13', '582.19', '10', NULL, NULL, '', NULL, NULL, NULL),
(64, 5, 2, '000063', '1223344556', 'Marcelo', '2135454', NULL, '2017-01-14', '5', '75.00', '13', '86.25', '0', NULL, NULL, '', NULL, NULL, NULL),
(65, 5, 2, '000064', '1223344556', 'Marcelo', '2135454', NULL, '2017-01-14', '70', '1050.00', '13', '1207.50', '0', NULL, NULL, '', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `composicion`
--
ALTER TABLE `composicion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_composision_unidad1_idx` (`unidad_id`),
  ADD KEY `fk_composision_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contraindicaciones`
--
ALTER TABLE `contraindicaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contraindicaciones_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detalle_venta_venta1_idx` (`venta_id`),
  ADD KEY `fk_detalle_venta_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_devolucion_venta1_idx` (`venta_id`);

--
-- Indices de la tabla `devolucion_producto`
--
ALTER TABLE `devolucion_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_devolucion_producto_producto1_idx` (`producto_id`),
  ADD KEY `fk_devolucion_producto_devolucion1_idx` (`devolucion_id`);

--
-- Indices de la tabla `dosis_administracion`
--
ALTER TABLE `dosis_administracion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dosis_administracion_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `existencia`
--
ALTER TABLE `existencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventario_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `forma`
--
ALTER TABLE `forma`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `indicacion`
--
ALTER TABLE `indicacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_indicacion_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notificacion_user1_idx` (`user_id`);

--
-- Indices de la tabla `notificacion_cliente`
--
ALTER TABLE `notificacion_cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notificacion_cliente_cliente1_idx` (`cliente_id`),
  ADD KEY `fk_notificacion_cliente_notificacion1_idx` (`notificacion_id`);

--
-- Indices de la tabla `pasillo`
--
ALTER TABLE `pasillo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `precio_venta`
--
ALTER TABLE `precio_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_precio_venta_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_medicamento_unidad1_idx` (`unidad_id`),
  ADD KEY `fk_medicamento_forma1_idx` (`forma_id`),
  ADD KEY `fk_medicamento_categoria1_idx` (`categoria_id`),
  ADD KEY `fk_medicamento_sub_categoria1_idx` (`sub_categoria_id`),
  ADD KEY `fk_producto_presentacion1_idx` (`presentacion_id`);

--
-- Indices de la tabla `producto_promocion`
--
ALTER TABLE `producto_promocion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_producto_promocion_promocion1_idx` (`promocion_id`),
  ADD KEY `fk_producto_promocion_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `producto_sustituto`
--
ALTER TABLE `producto_sustituto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_producto_sustituto_producto1_idx` (`producto_id`),
  ADD KEY `fk_producto_sustituto_sustituto1_idx` (`sustituto_id`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `propiedad`
--
ALTER TABLE `propiedad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_propiedad_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_seccion_pasillo1_idx` (`pasillo_id`);

--
-- Indices de la tabla `sub_categoria`
--
ALTER TABLE `sub_categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sub_categoria_categoria1_idx` (`categoria_id`);

--
-- Indices de la tabla `sustituto`
--
ALTER TABLE `sustituto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sustituto_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ubicacion_seccion1_idx` (`seccion_id`),
  ADD KEY `fk_ubicacion_pasillo1_idx` (`pasillo_id`),
  ADD KEY `fk_ubicacion_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_ciudad1_idx` (`ciudad_id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venta_cliente1_idx` (`cliente_id`),
  ADD KEY `fk_venta_user1_idx` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `contraindicaciones`
--
ALTER TABLE `contraindicaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `devolucion_producto`
--
ALTER TABLE `devolucion_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dosis_administracion`
--
ALTER TABLE `dosis_administracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `existencia`
--
ALTER TABLE `existencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `forma`
--
ALTER TABLE `forma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `indicacion`
--
ALTER TABLE `indicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `notificacion_cliente`
--
ALTER TABLE `notificacion_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pasillo`
--
ALTER TABLE `pasillo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `precio_venta`
--
ALTER TABLE `precio_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `producto_promocion`
--
ALTER TABLE `producto_promocion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `producto_sustituto`
--
ALTER TABLE `producto_sustituto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `propiedad`
--
ALTER TABLE `propiedad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sub_categoria`
--
ALTER TABLE `sub_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT de la tabla `sustituto`
--
ALTER TABLE `sustituto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `composicion`
--
ALTER TABLE `composicion`
  ADD CONSTRAINT `fk_composision_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_composision_unidad1` FOREIGN KEY (`unidad_id`) REFERENCES `unidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `contraindicaciones`
--
ALTER TABLE `contraindicaciones`
  ADD CONSTRAINT `fk_contraindicaciones_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalle_venta_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_venta_venta1` FOREIGN KEY (`venta_id`) REFERENCES `venta` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `fk_devolucion_venta1` FOREIGN KEY (`venta_id`) REFERENCES `venta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `devolucion_producto`
--
ALTER TABLE `devolucion_producto`
  ADD CONSTRAINT `fk_devolucion_producto_devolucion1` FOREIGN KEY (`devolucion_id`) REFERENCES `devolucion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_devolucion_producto_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `dosis_administracion`
--
ALTER TABLE `dosis_administracion`
  ADD CONSTRAINT `fk_dosis_administracion_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `existencia`
--
ALTER TABLE `existencia`
  ADD CONSTRAINT `fk_inventario_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `indicacion`
--
ALTER TABLE `indicacion`
  ADD CONSTRAINT `fk_indicacion_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD CONSTRAINT `fk_notificacion_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notificacion_cliente`
--
ALTER TABLE `notificacion_cliente`
  ADD CONSTRAINT `fk_notificacion_cliente_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_notificacion_cliente_notificacion1` FOREIGN KEY (`notificacion_id`) REFERENCES `notificacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `precio_venta`
--
ALTER TABLE `precio_venta`
  ADD CONSTRAINT `fk_precio_venta_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_medicamento_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_medicamento_forma1` FOREIGN KEY (`forma_id`) REFERENCES `forma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_medicamento_sub_categoria1` FOREIGN KEY (`sub_categoria_id`) REFERENCES `sub_categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_medicamento_unidad1` FOREIGN KEY (`unidad_id`) REFERENCES `unidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_presentacion1` FOREIGN KEY (`presentacion_id`) REFERENCES `presentacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_promocion`
--
ALTER TABLE `producto_promocion`
  ADD CONSTRAINT `fk_producto_promocion_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_promocion_promocion1` FOREIGN KEY (`promocion_id`) REFERENCES `promocion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_sustituto`
--
ALTER TABLE `producto_sustituto`
  ADD CONSTRAINT `fk_producto_sustituto_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_sustituto_sustituto1` FOREIGN KEY (`sustituto_id`) REFERENCES `sustituto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `propiedad`
--
ALTER TABLE `propiedad`
  ADD CONSTRAINT `fk_propiedad_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD CONSTRAINT `fk_seccion_pasillo1` FOREIGN KEY (`pasillo_id`) REFERENCES `pasillo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sub_categoria`
--
ALTER TABLE `sub_categoria`
  ADD CONSTRAINT `fk_sub_categoria_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sustituto`
--
ALTER TABLE `sustituto`
  ADD CONSTRAINT `fk_sustituto_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `fk_ubicacion_pasillo1` FOREIGN KEY (`pasillo_id`) REFERENCES `pasillo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ubicacion_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ubicacion_seccion1` FOREIGN KEY (`seccion_id`) REFERENCES `seccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_usuario_ciudad1` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
