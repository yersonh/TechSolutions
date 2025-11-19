-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2025 a las 17:59:19
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
-- Base de datos: `techsolutions`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria_producto`
--

INSERT INTO `categoria_producto` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'Bombilleria de Lujo', 'Sistemas de iluminaci?n premium y LED'),
(2, 'Repuestos para Carros', 'Partes y repuestos para autom?viles'),
(3, 'Repuestos Maquinaria Agricola', 'Componentes para maquinaria agr?cola'),
(4, 'Accesorios y Herramientas', 'Herramientas y accesorios varios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `estado` varchar(16) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `id_persona`, `id_usuario`, `fecha_registro`, `estado`) VALUES
(1, 1, 1, '2023-04-10', 'Activo'),
(2, 2, 2, '2023-06-15', 'Activo'),
(3, 3, 3, '2023-08-20', 'Activo'),
(4, 4, 4, '2023-10-12', 'Activo'),
(5, 5, 5, '2023-12-05', 'Activo'),
(6, 6, 6, '2024-01-25', 'Activo'),
(7, 7, 7, '2024-03-08', 'Activo'),
(8, 8, 8, '2024-04-18', 'Activo'),
(9, 9, 9, '2024-05-22', 'Activo'),
(10, 10, 10, '2024-07-03', 'Activo'),
(11, 11, 11, '2024-08-14', 'Activo'),
(12, 12, 12, '2024-09-26', 'Activo'),
(13, 13, 13, '2024-10-30', 'Activo'),
(14, 14, 14, '2024-11-11', 'Activo'),
(15, 15, 15, '2024-12-24', 'Activo'),
(16, 16, 16, '2025-01-09', 'Activo'),
(17, 17, 17, '2025-02-17', 'Activo'),
(18, 18, 18, '2025-03-25', 'Activo'),
(19, 19, 19, '2025-04-05', 'Activo'),
(20, 20, 20, '2025-05-19', 'Activo'),
(21, 21, 21, '2025-06-28', 'Activo'),
(22, 22, 22, '2025-07-10', 'Activo'),
(23, 23, 23, '2025-08-22', 'Activo'),
(24, 24, 24, '2025-09-14', 'Activo'),
(25, 25, 25, '2025-10-08', 'Activo'),
(26, 26, 26, '2025-11-19', 'Activo'),
(27, 27, 27, '2025-12-03', 'Activo'),
(28, 28, 28, '2025-12-15', 'Activo'),
(29, 29, 29, '2025-12-22', 'Activo'),
(30, 30, 30, '2025-12-29', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra_proveedor`
--

CREATE TABLE `detalle_compra_proveedor` (
  `id_proveedor` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `fecha_provee` date DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_compra_proveedor`
--

INSERT INTO `detalle_compra_proveedor` (`id_proveedor`, `id_producto`, `fecha_provee`, `cantidad`) VALUES
(1, 1, '2024-01-10', 50),
(1, 6, '2024-01-15', 200),
(1, 9, '2024-02-05', 300),
(1, 11, '2024-02-20', 150),
(2, 2, '2024-01-12', 80),
(2, 7, '2024-01-25', 120),
(2, 13, '2024-02-08', 30),
(2, 26, '2024-02-22', 200),
(3, 3, '2024-01-18', 40),
(3, 8, '2024-01-28', 35),
(3, 12, '2024-02-10', 15),
(3, 14, '2024-02-25', 20),
(4, 16, '2024-01-20', 70),
(4, 17, '2024-02-02', 10),
(4, 18, '2024-02-12', 5),
(4, 19, '2024-02-28', 35),
(5, 4, '2024-01-22', 120),
(5, 5, '2024-02-04', 60),
(5, 1, '2024-02-14', 40),
(5, 2, '2024-03-01', 90),
(6, 7, '2024-01-25', 150),
(6, 10, '2024-02-06', 25),
(6, 18, '2024-02-16', 8),
(6, 13, '2024-03-03', 40),
(7, 1, '2024-01-28', 45),
(7, 2, '2024-02-08', 85),
(7, 3, '2024-02-18', 35),
(7, 4, '2024-03-05', 110),
(8, 6, '2024-02-01', 180),
(8, 16, '2024-02-10', 90),
(8, 21, '2024-02-20', 50),
(8, 9, '2024-03-08', 250),
(9, 10, '2024-02-03', 30),
(9, 17, '2024-02-12', 12),
(9, 25, '2024-02-22', 10),
(9, 13, '2024-03-10', 35),
(10, 24, '2024-02-05', 8),
(10, 23, '2024-02-14', 65),
(10, 27, '2024-02-24', 40),
(10, 19, '2024-03-12', 25),
(11, 9, '2024-02-07', 400),
(11, 27, '2024-02-16', 60),
(11, 28, '2024-02-26', 300),
(11, 6, '2024-03-14', 220),
(12, 29, '2024-02-09', 15),
(12, 30, '2024-02-18', 20),
(12, 7, '2024-02-28', 100),
(12, 13, '2024-03-16', 25),
(13, 13, '2024-02-11', 45),
(13, 20, '2024-02-20', 40),
(13, 7, '2024-03-01', 110),
(13, 10, '2024-03-18', 20),
(14, 12, '2024-02-13', 20),
(14, 9, '2024-02-22', 180),
(14, 15, '2024-03-03', 70),
(14, 8, '2024-03-20', 25),
(15, 8, '2024-02-15', 40),
(15, 14, '2024-02-24', 25),
(15, 29, '2024-03-05', 12),
(15, 4, '2024-03-22', 95);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_venta` int(11) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `IVA` float DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_venta`, `id_pedido`, `subtotal`, `IVA`, `cantidad`) VALUES
(1, 1, 1340340, 254664, 29),
(2, 2, 970588, 184412, 21),
(3, 3, 1386550, 263445, 30),
(4, 4, 647059, 122941, 14),
(5, 5, 647059, 122941, 14),
(6, 6, 785714, 149286, 17),
(7, 7, 600840, 114160, 13),
(8, 8, 1201680, 228319, 26),
(9, 9, 739496, 140504, 16),
(10, 10, 693277, 131723, 15),
(11, 11, 785714, 149286, 17),
(12, 12, 554622, 105378, 12),
(13, 13, 680672, 129328, 18),
(14, 14, 983193, 186807, 26),
(15, 15, 831933, 158067, 22),
(16, 16, 869748, 165252, 23),
(17, 17, 642857, 122143, 17),
(18, 18, 1096640, 208361, 29),
(19, 19, 831933, 158067, 22),
(20, 20, 567227, 107773, 15),
(21, 21, 756302, 143697, 20),
(22, 22, 869748, 165252, 23),
(23, 23, 735294, 139706, 25),
(24, 24, 735294, 139706, 25),
(25, 25, 647059, 122941, 22),
(26, 26, 676471, 128529, 23),
(27, 27, 558824, 106176, 19),
(28, 28, 441176, 83823.5, 15),
(29, 29, 852941, 162059, 29),
(30, 30, 794118, 150882, 27),
(31, 31, 1361340, 258655, 9),
(32, 32, 1361340, 258655, 9),
(33, 33, 2268910, 431092, 15),
(34, 34, 1512600, 287395, 10),
(35, 35, 1512600, 287395, 10),
(36, 36, 2268910, 431092, 15),
(37, 37, 1361340, 258655, 9),
(38, 38, 3025210, 574790, 8),
(39, 39, 2268910, 431092, 6),
(40, 40, 5672270, 1077730, 15),
(41, 41, 1890760, 359244, 5),
(42, 42, 4159660, 790336, 11),
(43, 43, 5294120, 1005880, 14),
(44, 44, 630252, 119748, 10),
(45, 45, 315126, 59873.9, 5),
(46, 46, 630252, 119748, 10),
(47, 47, 504202, 95798.3, 8),
(48, 48, 378151, 71848.7, 6),
(49, 49, 2331930, 443067, 15),
(50, 50, 777311, 147689, 5),
(51, 51, 1710080, 324916, 11),
(52, 52, 1865550, 354454, 12),
(53, 53, 857143, 162857, 12),
(54, 54, 714286, 135714, 10),
(55, 55, 642857, 122143, 9),
(56, 56, 483193, 91806.7, 23),
(57, 57, 630252, 119748, 30),
(58, 58, 567227, 107773, 27),
(59, 59, 1176470, 223529, 5),
(60, 60, 941176, 178824, 4),
(61, 61, 1882350, 357647, 8),
(62, 62, 2857140, 542857, 4),
(63, 63, 3571430, 678571, 5),
(64, 64, 5714290, 1085710, 8),
(65, 65, 1764710, 335294, 6),
(66, 66, 1470590, 279412, 5),
(67, 67, 882353, 167647, 3),
(68, 68, 1075630, 204370, 4),
(69, 69, 806723, 153277, 3),
(70, 70, 2151260, 408740, 8),
(71, 71, 2142860, 407143, 3),
(72, 72, 5000000, 950000, 7),
(73, 73, 2857140, 542857, 4),
(74, 74, 100840, 19159.7, 1),
(75, 75, 302521, 57479, 3),
(76, 76, 1058820, 201176, 3),
(77, 77, 1058820, 201176, 3),
(77, 77, 1058820, 201176, 1),
(77, 128, 1058820, 201176, 1),
(78, 88, 571429, 108571, 1),
(79, 90, 1142860, 217143, 2),
(80, 92, 1210080, 229916, 2),
(81, 94, 605042, 114958, 1),
(82, 96, 239496, 45504.2, 3),
(83, 98, 239496, 45504.2, 3),
(84, 100, 54621.9, 10378.2, 1),
(85, 102, 109244, 20756.3, 2),
(86, 104, 1546220, 293782, 2),
(87, 106, 2319330, 440672, 3),
(88, 108, 4663870, 886134, 3),
(89, 110, 1554620, 295378, 1),
(90, 112, 1134450, 215546, 3),
(91, 114, 756302, 143697, 2),
(92, 116, 235294, 44705.9, 1),
(93, 118, 470588, 89411.8, 2),
(94, 120, 302521, 57479, 3),
(95, 122, 302521, 57479, 3),
(96, 124, 6302520, 1197480, 3),
(97, 126, 2100840, 399160, 1),
(98, 129, 159664, 30336.1, 2),
(99, 130, 239496, 45504.2, 3),
(100, 131, 8067230, 1532770, 3),
(101, 132, 5378150, 1021850, 2),
(102, 133, 1554620, 295378, 1),
(103, 134, 4663870, 886134, 3),
(104, 135, 546218, 103782, 1),
(105, 136, 546218, 103782, 1),
(106, 137, 882353, 167647, 30),
(107, 138, 676471, 128529, 23),
(108, 89, 411765, 78235.3, 14),
(109, 91, 352941, 67058.8, 12),
(110, 93, 323529, 61470.6, 11),
(111, 95, 794118, 150882, 27),
(112, 97, 323529, 61470.6, 11),
(113, 99, 852941, 162059, 29),
(114, 101, 441176, 83823.5, 15),
(115, 103, 1663870, 316134, 11),
(116, 105, 1058820, 201176, 7),
(117, 107, 907563, 172437, 6),
(118, 109, 1210080, 229916, 8),
(119, 111, 2117650, 402353, 14),
(120, 113, 1663870, 316134, 11),
(121, 115, 1361340, 258655, 9),
(122, 117, 1210080, 229916, 8),
(123, 119, 378151, 71848.7, 6),
(124, 121, 819328, 155672, 13),
(125, 123, 567227, 107773, 9),
(126, 125, 819328, 155672, 13),
(127, 127, 630252, 119748, 10),
(106, 137, 882353, 167647, 14),
(106, 262, 882353, 167647, 21),
(107, 138, 676471, 128529, 12),
(107, 266, 676471, 128529, 28),
(108, 89, 411765, 78235.3, 13),
(108, 151, 411765, 78235.3, 14),
(109, 91, 352941, 67058.8, 18),
(109, 156, 352941, 67058.8, 21),
(110, 93, 323529, 61470.6, 21),
(110, 161, 323529, 61470.6, 10),
(111, 95, 794118, 150882, 18),
(111, 166, 794118, 150882, 29),
(112, 97, 323529, 61470.6, 21),
(112, 171, 323529, 61470.6, 30),
(113, 99, 852941, 162059, 12),
(113, 176, 852941, 162059, 24),
(114, 101, 441176, 83823.5, 10),
(114, 181, 441176, 83823.5, 11),
(115, 103, 1663870, 316134, 9),
(115, 186, 1663870, 316134, 12),
(116, 105, 1058820, 201176, 6),
(116, 190, 1058820, 201176, 10),
(117, 107, 907563, 172437, 9),
(117, 194, 907563, 172437, 8),
(118, 109, 1210080, 229916, 8),
(118, 198, 1210080, 229916, 12),
(119, 111, 2117650, 402353, 9),
(119, 202, 2117650, 402353, 15),
(120, 113, 1663870, 316134, 12),
(120, 206, 1663870, 316134, 9),
(121, 115, 1361340, 258655, 7),
(121, 210, 1361340, 258655, 14),
(122, 117, 1210080, 229916, 11),
(122, 214, 1210080, 229916, 8),
(123, 119, 378151, 71848.7, 14),
(123, 218, 378151, 71848.7, 8),
(124, 121, 819328, 155672, 6),
(124, 222, 819328, 155672, 12),
(125, 123, 567227, 107773, 14),
(125, 226, 567227, 107773, 10),
(126, 125, 819328, 155672, 15),
(126, 230, 819328, 155672, 6),
(127, 127, 630252, 119748, 14),
(127, 234, 630252, 119748, 5),
(128, 152, 1109240, 210756, 24),
(129, 157, 647059, 122941, 14),
(130, 162, 1340340, 254664, 29),
(131, 167, 508403, 96596.6, 11),
(132, 172, 970588, 184412, 21),
(133, 177, 718487, 136513, 19),
(134, 182, 945378, 179622, 25),
(135, 187, 529412, 100588, 14),
(136, 191, 1021010, 193992, 27),
(137, 195, 617647, 117353, 21),
(138, 199, 500000, 95000, 17),
(139, 203, 323529, 61470.6, 11),
(140, 207, 1058820, 201176, 7),
(141, 211, 2117650, 402353, 14),
(142, 215, 3781510, 718487, 10),
(143, 219, 2268910, 431092, 6),
(144, 223, 441176, 83823.5, 7),
(145, 227, 819328, 155672, 13),
(146, 231, 2331930, 443067, 15),
(147, 235, 785714, 149286, 11),
(148, 238, 252101, 47899.2, 12),
(149, 241, 1647060, 312941, 7),
(150, 244, 2857140, 542857, 4),
(151, 247, 2352940, 447059, 8),
(152, 250, 806723, 153277, 3),
(153, 253, 5000000, 950000, 7),
(154, 256, 100840, 19159.7, 1),
(155, 259, 1058820, 201176, 3),
(156, 263, 1142860, 217143, 2),
(157, 267, 1210080, 229916, 2),
(158, 153, 159664, 30336.1, 2),
(159, 158, 54621.9, 10378.2, 1),
(160, 163, 2319330, 440672, 3),
(161, 168, 1554620, 295378, 1),
(162, 173, 1134450, 215546, 3),
(163, 178, 878151, 166849, 19),
(164, 183, 924370, 175630, 20),
(165, 188, 600840, 114160, 13),
(166, 192, 605042, 114958, 16),
(167, 196, 415966, 79033.6, 11),
(168, 200, 642857, 122143, 17),
(169, 204, 617647, 117353, 21),
(170, 208, 705882, 134118, 24),
(171, 212, 2268910, 431092, 15),
(172, 216, 1361340, 258655, 9),
(173, 220, 3781510, 718487, 10),
(174, 224, 5672270, 1077730, 15),
(175, 228, 630252, 119748, 10),
(176, 232, 567227, 107773, 9),
(177, 236, 1865550, 354454, 12),
(178, 239, 500000, 95000, 7),
(179, 242, 609244, 115756, 29),
(180, 245, 1882350, 357647, 8),
(181, 248, 2857140, 542857, 4),
(182, 251, 2352940, 447059, 8),
(183, 254, 806723, 153277, 3),
(184, 257, 3571430, 678571, 5),
(185, 260, 302521, 57479, 3),
(186, 264, 1058820, 201176, 3),
(187, 268, 1714290, 325714, 3),
(188, 154, 1815130, 344874, 3),
(189, 159, 159664, 30336.1, 2),
(190, 164, 109244, 20756.3, 2),
(191, 169, 1546220, 293782, 2),
(192, 174, 4663870, 886134, 3),
(193, 179, 378151, 71848.7, 1),
(194, 184, 705882, 134118, 3),
(195, 189, 201681, 38319.3, 2),
(196, 193, 508403, 96596.6, 11),
(197, 197, 647059, 122941, 14),
(198, 201, 1096640, 208361, 29),
(199, 205, 1096640, 208361, 29),
(200, 209, 764706, 145294, 26),
(201, 213, 382353, 72647.1, 13),
(202, 217, 1663870, 316134, 11),
(203, 221, 1210080, 229916, 8),
(204, 225, 4537820, 862185, 12),
(205, 229, 4537820, 862185, 12),
(206, 233, 630252, 119748, 10),
(207, 237, 932773, 177227, 6),
(208, 240, 571429, 108571, 8),
(209, 243, 357143, 67857.1, 17),
(210, 246, 1411760, 268235, 6),
(211, 249, 2142860, 407143, 3),
(212, 252, 1470590, 279412, 5),
(213, 255, 1075630, 204370, 4),
(214, 258, 4285710, 814286, 6),
(215, 261, 201681, 38319.3, 2),
(216, 265, 705882, 134118, 2),
(217, 269, 1714290, 325714, 3),
(218, 155, 1815130, 344874, 3),
(219, 160, 79831.9, 15168.1, 1),
(220, 165, 109244, 20756.3, 2),
(221, 170, 773109, 146891, 1),
(222, 175, 3109240, 590756, 2),
(223, 180, 756302, 143697, 2),
(224, 185, 705882, 134118, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_envio`
--

CREATE TABLE `direccion_envio` (
  `id_direccion` int(11) NOT NULL,
  `codigo_postal` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `direccion` varchar(256) DEFAULT NULL,
  `barrio` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `direccion_envio`
--

INSERT INTO `direccion_envio` (`id_direccion`, `codigo_postal`, `id_cliente`, `direccion`, `barrio`) VALUES
(1, 500001, 1, 'Carrera 35 # 25-40', 'Barrio La Madrid'),
(2, 500001, 2, 'Carrera 38 # 22-18', 'Barrio El Emporio'),
(3, 500001, 3, 'Calle 15 # 23-45', 'Barrio La Esperanza'),
(4, 500001, 4, 'Carrera 7 # 45-12', 'Barrio El Barzal'),
(5, 500002, 5, 'Calle 8 # 12-34', 'Barrio La Vega'),
(6, 500002, 6, 'Carrera 3 # 22-11', 'Barrio Villa Julia'),
(7, 500002, 7, 'Calle 20 # 30-40', 'Barrio La Madrid'),
(8, 500002, 8, 'Carrera 9 # 15-25', 'Barrio El Recreo'),
(9, 500003, 9, 'Calle 12 # 18-22', 'Barrio La Reliquia'),
(10, 500003, 10, 'Cra 5 # 33-21', 'Barrio Porfia'),
(11, 500003, 11, 'Calle 7 # 14-18', 'Barrio La Grama'),
(12, 500003, 12, 'Cra 6 # 11-17', 'Barrio Villa Bolivar'),
(13, 500004, 13, 'Calle 9 # 20-30', 'Barrio San Benito'),
(14, 500004, 14, 'Cra 8 # 19-29', 'Barrio Villa Hermosa'),
(15, 500004, 15, 'Calle 11 # 25-35', 'Barrio La Coralina'),
(16, 500004, 16, 'Cra 4 # 17-27', 'Barrio San Antonio'),
(17, 500005, 17, 'Calle 13 # 21-31', 'Barrio El Triunfo'),
(18, 500005, 18, 'Cra 2 # 16-26', 'Barrio Villa Claudia'),
(19, 500005, 19, 'Calle 10 # 24-34', 'Barrio La Primavera'),
(20, 500005, 20, 'Cra 10 # 13-23', 'Barrio Villa Fabiola'),
(21, 500006, 21, 'Calle 6 # 22-32', 'Barrio El Buque'),
(22, 500006, 22, 'Cra 11 # 14-24', 'Barrio La Alborada'),
(23, 500006, 23, 'Calle 5 # 19-29', 'Barrio Villa del Sol'),
(24, 500006, 24, 'Cra 12 # 20-30', 'Barrio El Triangulo'),
(25, 500007, 25, 'Calle 14 # 11-21', 'Barrio La Ceiba'),
(26, 500007, 26, 'Cra 13 # 23-33', 'Barrio Villa Lorena'),
(27, 500007, 27, 'Calle 16 # 26-36', 'Barrio La Esperanza'),
(28, 500007, 28, 'Cra 14 # 18-28', 'Barrio Villa Olimpica'),
(29, 500008, 29, 'Calle 18 # 27-37', 'Barrio El Estero'),
(30, 500008, 30, 'Carrera 15 # 28-32', 'Barrio El Emporio'),
(31, 500008, 1, 'Calle 12 # 18-22', 'Barrio La Reliquia'),
(32, 500008, 2, 'Calle 20 # 35-12', 'Barrio Villa Julia'),
(33, 500009, 3, 'Carrera 25 # 19-33', 'Barrio El Triunfo'),
(34, 500009, 4, 'Calle 22 # 14-25', 'Barrio Villa Hermosa'),
(35, 500009, 5, 'Carrera 18 # 26-42', 'Barrio San Antonio'),
(36, 500009, 6, 'Calle 30 # 16-28', 'Barrio Villa Claudia'),
(37, 500010, 7, 'Carrera 22 # 34-19', 'Barrio La Primavera'),
(38, 500010, 8, 'Calle 28 # 21-36', 'Barrio Villa Fabiola'),
(39, 500010, 9, 'Carrera 14 # 29-11', 'Barrio El Buque'),
(40, 500010, 10, 'Calle 32 # 24-38', 'Barrio La Alborada'),
(41, 500011, 11, 'Carrera 8 # 35-22', 'Barrio Villa del Sol'),
(42, 500011, 12, 'Calle 34 # 27-14', 'Barrio El Triangulo'),
(43, 500011, 13, 'Carrera 11 # 23-32', 'Barrio La Ceiba'),
(44, 500011, 14, 'Calle 36 # 19-25', 'Barrio Villa Lorena'),
(45, 500012, 15, 'Carrera 13 # 26-21', 'Barrio Villa Olimpica'),
(46, 500012, 16, 'Calle 38 # 22-16', 'Barrio El Estero'),
(47, 500012, 17, 'Carrera 19 # 24-13', 'Barrio La Esperanza'),
(48, 500012, 18, 'Calle 26 # 32-19', 'Barrio Villa Julia'),
(49, 500013, 19, 'Carrera 23 # 20-35', 'Barrio El Barzal'),
(50, 500013, 20, 'Calle 24 # 37-11', 'Barrio San Antonio'),
(51, 500013, 21, 'Carrera 27 # 18-29', 'Barrio La Reliquia'),
(52, 500013, 22, 'Calle 44 # 26-13', 'Barrio Villa Bolivar'),
(53, 500014, 23, 'Carrera 30 # 21-16', 'Barrio El Triangulo'),
(54, 500014, 24, 'Calle 46 # 23-31', 'Barrio La Ceiba'),
(55, 500014, 25, 'Carrera 33 # 25-14', 'Barrio Villa Lorena'),
(56, 500014, 26, 'Calle 48 # 17-22', 'Barrio Villa Olimpica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `id_metodo_pago` int(11) NOT NULL,
  `forma_pago` varchar(64) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `metodo_pago`
--

INSERT INTO `metodo_pago` (`id_metodo_pago`, `forma_pago`, `fecha_pago`) VALUES
(1, 'Tarjeta de Credito', '2024-02-21'),
(2, 'Transferencia PSE', '2024-02-09'),
(3, 'Contraentrega', '2024-02-14'),
(4, 'Tarjeta de Credito', '2024-04-12'),
(5, 'Transferencia PSE', '2024-01-15'),
(6, 'Contraentrega', '2024-05-09'),
(7, 'Tarjeta de Credito', '2024-08-28'),
(8, 'Transferencia PSE', '2024-03-22'),
(9, 'Contraentrega', '2024-02-23'),
(10, 'Tarjeta de Credito', '2024-01-21'),
(11, 'Transferencia PSE', '2024-11-03'),
(12, 'Contraentrega', '2024-01-18'),
(13, 'Tarjeta de Credito', '2024-09-16'),
(14, 'Transferencia PSE', '2024-05-28'),
(15, 'Contraentrega', '2024-11-25'),
(16, 'Tarjeta de Credito', '2024-04-18'),
(17, 'Transferencia PSE', '2024-10-12'),
(18, 'Contraentrega', '2024-01-04'),
(19, 'Tarjeta de Credito', '2024-09-14'),
(20, 'Transferencia PSE', '2024-06-29'),
(21, 'Contraentrega', '2024-05-12'),
(22, 'Tarjeta de Credito', '2024-05-01'),
(23, 'Transferencia PSE', '2024-07-25'),
(24, 'Contraentrega', '2024-11-02'),
(25, 'Tarjeta de Credito', '2024-06-28'),
(26, 'Transferencia PSE', '2024-12-12'),
(27, 'Contraentrega', '2024-04-08'),
(28, 'Tarjeta de Credito', '2024-06-29'),
(29, 'Transferencia PSE', '2024-08-31'),
(30, 'Contraentrega', '2024-11-05'),
(31, 'Tarjeta de Credito', '2024-03-29'),
(32, 'Transferencia PSE', '2024-09-01'),
(33, 'Contraentrega', '2024-08-12'),
(34, 'Tarjeta de Credito', '2024-01-27'),
(35, 'Transferencia PSE', '2024-07-06'),
(36, 'Contraentrega', '2024-05-06'),
(37, 'Tarjeta de Credito', '2024-03-11'),
(38, 'Transferencia PSE', '2024-12-05'),
(39, 'Contraentrega', '2024-01-28'),
(40, 'Tarjeta de Credito', '2024-07-30'),
(41, 'Transferencia PSE', '2024-09-03'),
(42, 'Contraentrega', '2024-08-18'),
(43, 'Tarjeta de Credito', '2024-02-19'),
(44, 'Transferencia PSE', '2024-10-13'),
(45, 'Contraentrega', '2024-07-05'),
(46, 'Tarjeta de Credito', '2024-03-16'),
(47, 'Transferencia PSE', '2024-07-02'),
(48, 'Contraentrega', '2024-11-20'),
(49, 'Tarjeta de Credito', '2024-12-09'),
(50, 'Transferencia PSE', '2024-01-14'),
(51, 'Contraentrega', '2024-05-10'),
(52, 'Tarjeta de Credito', '2024-09-05'),
(53, 'Transferencia PSE', '2024-04-30'),
(54, 'Contraentrega', '2024-08-08'),
(55, 'Tarjeta de Credito', '2024-01-12'),
(56, 'Transferencia PSE', '2024-05-07'),
(57, 'Tarjeta de Credito', '2024-08-24'),
(58, 'Transferencia PSE', '2024-03-10'),
(59, 'Contraentrega', '2024-01-03'),
(60, 'Tarjeta de Credito', '2024-06-18'),
(61, 'Transferencia PSE', '2024-04-19'),
(62, 'Contraentrega', '2024-02-11'),
(63, 'Tarjeta de Credito', '2024-08-28'),
(64, 'Transferencia PSE', '2024-12-16'),
(65, 'Contraentrega', '2024-10-26'),
(66, 'Tarjeta de Credito', '2024-03-20'),
(67, 'Transferencia PSE', '2024-08-20'),
(68, 'Contraentrega', '2024-07-10'),
(69, 'Tarjeta de Credito', '2024-09-17'),
(70, 'Transferencia PSE', '2024-12-29'),
(71, 'Contraentrega', '2024-11-02'),
(72, 'Tarjeta de Credito', '2024-03-19'),
(73, 'Transferencia PSE', '2024-07-19'),
(74, 'Contraentrega', '2024-02-05'),
(75, 'Tarjeta de Credito', '2024-11-04'),
(76, 'Transferencia PSE', '2024-12-06'),
(77, 'Contraentrega', '2024-02-19'),
(78, 'Tarjeta de Credito', '2024-11-13'),
(79, 'Transferencia PSE', '2024-12-09'),
(80, 'Contraentrega', '2024-02-05'),
(81, 'Tarjeta de Credito', '2024-08-31'),
(82, 'Transferencia PSE', '2024-01-15'),
(83, 'Contraentrega', '2024-03-15'),
(84, 'Tarjeta de Credito', '2024-11-22'),
(85, 'Transferencia PSE', '2024-11-11'),
(86, 'Contraentrega', '2024-08-20'),
(87, 'Tarjeta de Credito', '2024-08-03'),
(88, 'Transferencia PSE', '2024-01-16'),
(89, 'Contraentrega', '2024-06-09'),
(90, 'Tarjeta de Credito', '2024-01-26'),
(91, 'Transferencia PSE', '2024-01-10'),
(92, 'Contraentrega', '2024-12-05'),
(93, 'Tarjeta de Credito', '2024-07-25'),
(94, 'Transferencia PSE', '2024-01-16'),
(95, 'Contraentrega', '2024-07-08'),
(96, 'Tarjeta de Credito', '2024-06-18'),
(97, 'Transferencia PSE', '2024-10-05'),
(98, 'Contraentrega', '2024-06-02'),
(99, 'Tarjeta de Credito', '2024-10-25'),
(100, 'Transferencia PSE', '2024-10-29'),
(101, 'Contraentrega', '2024-09-09'),
(102, 'Tarjeta de Credito', '2024-12-18'),
(103, 'Transferencia PSE', '2024-10-02'),
(104, 'Contraentrega', '2024-11-16'),
(105, 'Tarjeta de Credito', '2024-02-17'),
(106, 'Transferencia PSE', '2024-01-06'),
(107, 'Contraentrega', '2024-09-04'),
(108, 'Tarjeta de Credito', '2024-05-07'),
(109, 'Transferencia PSE', '2024-09-16'),
(110, 'Contraentrega', '2024-07-05'),
(111, 'Tarjeta de Credito', '2024-06-02'),
(112, 'Transferencia PSE', '2024-07-27'),
(113, 'Contraentrega', '2024-08-05'),
(114, 'Tarjeta de Credito', '2024-04-04'),
(115, 'Transferencia PSE', '2024-07-04'),
(116, 'Contraentrega', '2024-10-07'),
(117, 'Tarjeta de Credito', '2024-04-26'),
(118, 'Transferencia PSE', '2024-04-15'),
(119, 'Contraentrega', '2024-06-24'),
(120, 'Tarjeta de Credito', '2024-07-17'),
(121, 'Transferencia PSE', '2024-04-10'),
(122, 'Contraentrega', '2024-09-27'),
(123, 'Tarjeta de Credito', '2024-11-18'),
(124, 'Transferencia PSE', '2024-03-12'),
(125, 'Contraentrega', '2024-04-29'),
(126, 'Tarjeta de Credito', '2024-01-18'),
(127, 'Transferencia PSE', '2024-04-04'),
(128, 'Contraentrega', '2024-02-26'),
(129, 'Tarjeta de Credito', '2024-12-27'),
(130, 'Transferencia PSE', '2024-06-28'),
(131, 'Contraentrega', '2024-06-25'),
(132, 'Tarjeta de Credito', '2024-12-10'),
(133, 'Transferencia PSE', '2024-04-07'),
(134, 'Contraentrega', '2024-07-02'),
(135, 'Tarjeta de Credito', '2024-09-18'),
(136, 'Transferencia PSE', '2024-01-26'),
(137, 'Contraentrega', '2024-03-14'),
(138, 'Tarjeta de Credito', '2024-10-19'),
(139, 'Transferencia PSE', '2024-05-24'),
(140, 'Contraentrega', '2024-07-29'),
(141, 'Tarjeta de Credito', '2024-09-10'),
(142, 'Transferencia PSE', '2024-09-27'),
(143, 'Contraentrega', '2024-08-13'),
(144, 'Tarjeta de Credito', '2024-11-14'),
(145, 'Transferencia PSE', '2024-07-06'),
(146, 'Contraentrega', '2024-12-09'),
(147, 'Tarjeta de Credito', '2024-03-02'),
(148, 'Transferencia PSE', '2024-01-06'),
(149, 'Contraentrega', '2024-07-26'),
(150, 'Tarjeta de Credito', '2024-10-19'),
(151, 'Transferencia PSE', '2024-04-18'),
(152, 'Contraentrega', '2024-01-30'),
(153, 'Tarjeta de Credito', '2024-07-08'),
(154, 'Transferencia PSE', '2024-05-08'),
(155, 'Contraentrega', '2024-03-15'),
(156, 'Tarjeta de Credito', '2024-12-18'),
(157, 'Transferencia PSE', '2024-03-18'),
(158, 'Contraentrega', '2024-03-01'),
(159, 'Tarjeta de Credito', '2024-03-10'),
(160, 'Transferencia PSE', '2024-06-16'),
(161, 'Contraentrega', '2024-09-20'),
(162, 'Tarjeta de Credito', '2024-03-27'),
(163, 'Transferencia PSE', '2024-01-06'),
(164, 'Contraentrega', '2024-05-13'),
(165, 'Tarjeta de Credito', '2024-10-12'),
(166, 'Transferencia PSE', '2024-10-22'),
(167, 'Contraentrega', '2024-09-12'),
(168, 'Tarjeta de Credito', '2024-01-29'),
(169, 'Transferencia PSE', '2024-04-15'),
(170, 'Contraentrega', '2024-03-18'),
(171, 'Tarjeta de Credito', '2024-03-13'),
(172, 'Transferencia PSE', '2024-05-06'),
(173, 'Contraentrega', '2024-02-22'),
(174, 'Tarjeta de Credito', '2024-09-04'),
(175, 'Transferencia PSE', '2024-12-16'),
(176, 'Contraentrega', '2024-10-08'),
(177, 'Tarjeta de Credito', '2024-12-19'),
(178, 'Transferencia PSE', '2024-07-12'),
(179, 'Contraentrega', '2024-09-27'),
(180, 'Tarjeta de Credito', '2024-02-14'),
(181, 'Transferencia PSE', '2024-05-21'),
(182, 'Contraentrega', '2024-07-27'),
(183, 'Tarjeta de Credito', '2024-09-10'),
(184, 'Transferencia PSE', '2024-10-02'),
(185, 'Contraentrega', '2024-09-08'),
(186, 'Tarjeta de Credito', '2024-03-07'),
(187, 'Transferencia PSE', '2024-11-02'),
(188, 'Contraentrega', '2024-08-27'),
(189, 'Tarjeta de Credito', '2024-10-05'),
(190, 'Transferencia PSE', '2024-11-03'),
(191, 'Contraentrega', '2024-12-05'),
(192, 'Tarjeta de Credito', '2024-02-14'),
(193, 'Transferencia PSE', '2024-10-23'),
(194, 'Contraentrega', '2024-09-13'),
(195, 'Tarjeta de Credito', '2024-01-27'),
(196, 'Transferencia PSE', '2024-04-05'),
(197, 'Contraentrega', '2024-02-02'),
(198, 'Tarjeta de Credito', '2024-08-26'),
(199, 'Transferencia PSE', '2024-01-02'),
(200, 'Contraentrega', '2024-01-22'),
(201, 'Tarjeta de Credito', '2024-04-13'),
(202, 'Transferencia PSE', '2024-03-28'),
(203, 'Contraentrega', '2024-05-06'),
(204, 'Tarjeta de Credito', '2024-01-07'),
(205, 'Transferencia PSE', '2024-01-19'),
(206, 'Contraentrega', '2024-03-13'),
(207, 'Tarjeta de Credito', '2024-11-03'),
(208, 'Transferencia PSE', '2024-08-13'),
(209, 'Contraentrega', '2024-07-24'),
(210, 'Tarjeta de Credito', '2024-12-15'),
(211, 'Transferencia PSE', '2024-02-05'),
(212, 'Contraentrega', '2024-08-10'),
(213, 'Tarjeta de Credito', '2024-10-06'),
(214, 'Transferencia PSE', '2024-12-28'),
(215, 'Contraentrega', '2024-08-30'),
(216, 'Tarjeta de Credito', '2024-05-07'),
(217, 'Transferencia PSE', '2024-10-03'),
(218, 'Contraentrega', '2024-09-24'),
(219, 'Tarjeta de Credito', '2024-05-25'),
(220, 'Transferencia PSE', '2024-10-13'),
(221, 'Contraentrega', '2024-09-25'),
(222, 'Tarjeta de Credito', '2024-04-27'),
(223, 'Transferencia PSE', '2024-05-24'),
(224, 'Contraentrega', '2024-01-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `estado_pedido` varchar(24) NOT NULL DEFAULT 'Pendiente',
  `id_metodo_pago` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_venta`, `estado_pedido`, `id_metodo_pago`) VALUES
(1, 1, 'Entregado', 1),
(2, 2, 'Procesado', 2),
(3, 3, 'Enviado', 3),
(4, 4, 'Entregado', 4),
(5, 5, 'Cancelado', 5),
(6, 6, 'Pendiente', 6),
(7, 7, 'Entregado', 7),
(8, 8, 'Enviado', 8),
(9, 9, 'Procesado', 9),
(10, 10, 'Entregado', 10),
(11, 11, 'Entregado', 11),
(12, 12, 'Enviado', 12),
(13, 13, 'Pendiente', 13),
(14, 14, 'Entregado', 14),
(15, 15, 'Procesado', 15),
(16, 16, 'Entregado', 16),
(17, 17, 'Cancelado', 17),
(18, 18, 'Enviado', 18),
(19, 19, 'Entregado', 19),
(20, 20, 'Pendiente', 20),
(21, 21, 'Entregado', 21),
(22, 22, 'Procesado', 22),
(23, 23, 'Entregado', 23),
(24, 24, 'Enviado', 24),
(25, 25, 'Entregado', 25),
(26, 26, 'Pendiente', 26),
(27, 27, 'Entregado', 27),
(28, 28, 'Procesado', 28),
(29, 29, 'Enviado', 29),
(30, 30, 'Entregado', 30),
(31, 31, 'Entregado', 31),
(32, 32, 'Cancelado', 32),
(33, 33, 'Pendiente', 33),
(34, 34, 'Entregado', 34),
(35, 35, 'Enviado', 35),
(36, 36, 'Procesado', 36),
(37, 37, 'Entregado', 37),
(38, 38, 'Entregado', 38),
(39, 39, 'Pendiente', 39),
(40, 40, 'Enviado', 40),
(41, 41, 'Entregado', 41),
(42, 42, 'Procesado', 42),
(43, 43, 'Entregado', 43),
(44, 44, 'Cancelado', 44),
(45, 45, 'Pendiente', 45),
(46, 46, 'Entregado', 46),
(47, 47, 'Enviado', 47),
(48, 48, 'Procesado', 48),
(49, 49, 'Entregado', 49),
(50, 50, 'Entregado', 50),
(51, 51, 'Pendiente', 51),
(52, 52, 'Enviado', 52),
(53, 53, 'Entregado', 53),
(54, 54, 'Procesado', 54),
(55, 55, 'Entregado', 55),
(56, 56, 'Cancelado', 56),
(57, 57, 'Entregado', 57),
(58, 58, 'Entregado', 58),
(59, 59, 'Entregado', 59),
(60, 60, 'Entregado', 60),
(61, 61, 'Entregado', 61),
(62, 62, 'Entregado', 62),
(63, 63, 'Entregado', 63),
(64, 64, 'Entregado', 64),
(65, 65, 'Entregado', 65),
(66, 66, 'Entregado', 66),
(67, 67, 'Entregado', 67),
(68, 68, 'Entregado', 68),
(69, 69, 'Entregado', 69),
(70, 70, 'Entregado', 70),
(71, 71, 'Entregado', 71),
(72, 72, 'Entregado', 72),
(73, 73, 'Entregado', 73),
(74, 74, 'Entregado', 74),
(75, 75, 'Entregado', 75),
(76, 76, 'Entregado', 76),
(77, 77, 'Entregado', 77),
(88, 78, 'Entregado', 88),
(89, 108, 'Entregado', 89),
(90, 79, 'Entregado', 90),
(91, 109, 'Entregado', 91),
(92, 80, 'Enviado', 92),
(93, 110, 'Entregado', 93),
(94, 81, 'Entregado', 94),
(95, 111, 'Entregado', 95),
(96, 82, 'Enviado', 96),
(97, 112, 'Entregado', 97),
(98, 83, 'Enviado', 98),
(99, 113, 'Entregado', 99),
(100, 84, 'Entregado', 100),
(101, 114, 'Enviado', 101),
(102, 85, 'Enviado', 102),
(103, 115, 'Entregado', 103),
(104, 86, 'Entregado', 104),
(105, 116, 'Enviado', 105),
(106, 87, 'Entregado', 106),
(107, 117, 'Entregado', 107),
(108, 88, 'Enviado', 108),
(109, 118, 'Entregado', 109),
(110, 89, 'Entregado', 110),
(111, 119, 'Enviado', 111),
(112, 90, 'Entregado', 112),
(113, 120, 'Entregado', 113),
(114, 91, 'Entregado', 114),
(115, 121, 'Entregado', 115),
(116, 92, 'Entregado', 116),
(117, 122, 'Entregado', 117),
(118, 93, 'Entregado', 118),
(119, 123, 'Enviado', 119),
(120, 94, 'Entregado', 120),
(121, 124, 'Entregado', 121),
(122, 95, 'Entregado', 122),
(123, 125, 'Entregado', 123),
(124, 96, 'Enviado', 124),
(125, 126, 'Entregado', 125),
(126, 97, 'Entregado', 126),
(127, 127, 'Entregado', 127),
(128, 77, 'Enviado', 128),
(129, 98, 'Enviado', 129),
(130, 99, 'Entregado', 130),
(131, 100, 'Enviado', 131),
(132, 101, 'Entregado', 132),
(133, 102, 'Entregado', 133),
(134, 103, 'Entregado', 134),
(135, 104, 'Enviado', 135),
(136, 105, 'Enviado', 136),
(137, 106, 'Entregado', 137),
(138, 107, 'Entregado', 138),
(151, 108, 'Entregado', 151),
(152, 128, 'Entregado', 152),
(153, 158, 'Entregado', 153),
(154, 188, 'Entregado', 154),
(155, 218, 'Entregado', 155),
(156, 109, 'Entregado', 156),
(157, 129, 'Entregado', 157),
(158, 159, 'Entregado', 158),
(159, 189, 'Entregado', 159),
(160, 219, 'Entregado', 160),
(161, 110, 'Entregado', 161),
(162, 130, 'Entregado', 162),
(163, 160, 'Entregado', 163),
(164, 190, 'Entregado', 164),
(165, 220, 'Entregado', 165),
(166, 111, 'Entregado', 166),
(167, 131, 'Entregado', 167),
(168, 161, 'Entregado', 168),
(169, 191, 'Entregado', 169),
(170, 221, 'Entregado', 170),
(171, 112, 'Entregado', 171),
(172, 132, 'Entregado', 172),
(173, 162, 'Entregado', 173),
(174, 192, 'Entregado', 174),
(175, 222, 'Entregado', 175),
(176, 113, 'Entregado', 176),
(177, 133, 'Entregado', 177),
(178, 163, 'Entregado', 178),
(179, 193, 'Entregado', 179),
(180, 223, 'Entregado', 180),
(181, 114, 'Entregado', 181),
(182, 134, 'Entregado', 182),
(183, 164, 'Entregado', 183),
(184, 194, 'Entregado', 184),
(185, 224, 'Entregado', 185),
(186, 115, 'Entregado', 186),
(187, 135, 'Entregado', 187),
(188, 165, 'Entregado', 188),
(189, 195, 'Entregado', 189),
(190, 116, 'Entregado', 190),
(191, 136, 'Entregado', 191),
(192, 166, 'Entregado', 192),
(193, 196, 'Entregado', 193),
(194, 117, 'Entregado', 194),
(195, 137, 'Entregado', 195),
(196, 167, 'Entregado', 196),
(197, 197, 'Entregado', 197),
(198, 118, 'Entregado', 198),
(199, 138, 'Entregado', 199),
(200, 168, 'Entregado', 200),
(201, 198, 'Entregado', 201),
(202, 119, 'Entregado', 202),
(203, 139, 'Entregado', 203),
(204, 169, 'Entregado', 204),
(205, 199, 'Entregado', 205),
(206, 120, 'Entregado', 206),
(207, 140, 'Entregado', 207),
(208, 170, 'Entregado', 208),
(209, 200, 'Entregado', 209),
(210, 121, 'Entregado', 210),
(211, 141, 'Entregado', 211),
(212, 171, 'Entregado', 212),
(213, 201, 'Entregado', 213),
(214, 122, 'Entregado', 214),
(215, 142, 'Entregado', 215),
(216, 172, 'Entregado', 216),
(217, 202, 'Entregado', 217),
(218, 123, 'Entregado', 218),
(219, 143, 'Entregado', 219),
(220, 173, 'Entregado', 220),
(221, 203, 'Entregado', 221),
(222, 124, 'Entregado', 222),
(223, 144, 'Entregado', 223),
(224, 174, 'Entregado', 224),
(225, 204, 'Entregado', 45),
(226, 125, 'Entregado', 4),
(227, 145, 'Entregado', 18),
(228, 175, 'Entregado', 21),
(229, 205, 'Entregado', 35),
(230, 126, 'Entregado', 8),
(231, 146, 'Entregado', 22),
(232, 176, 'Entregado', 43),
(233, 206, 'Entregado', 53),
(234, 127, 'Entregado', 2),
(235, 147, 'Entregado', 23),
(236, 177, 'Entregado', 33),
(237, 207, 'Entregado', 49),
(238, 148, 'Entregado', 16),
(239, 178, 'Entregado', 34),
(240, 208, 'Entregado', 47),
(241, 149, 'Entregado', 27),
(242, 179, 'Entregado', 39),
(243, 209, 'Entregado', 51),
(244, 150, 'Entregado', 30),
(245, 180, 'Entregado', 34),
(246, 210, 'Entregado', 47),
(247, 151, 'Entregado', 17),
(248, 181, 'Entregado', 33),
(249, 211, 'Entregado', 52),
(250, 152, 'Entregado', 21),
(251, 182, 'Entregado', 33),
(252, 212, 'Entregado', 53),
(253, 153, 'Entregado', 29),
(254, 183, 'Entregado', 36),
(255, 213, 'Entregado', 49),
(256, 154, 'Entregado', 20),
(257, 184, 'Entregado', 39),
(258, 214, 'Entregado', 55),
(259, 155, 'Entregado', 28),
(260, 185, 'Entregado', 39),
(261, 215, 'Entregado', 47),
(262, 106, 'Entregado', 3),
(263, 156, 'Entregado', 23),
(264, 186, 'Entregado', 44),
(265, 216, 'Entregado', 56),
(266, 107, 'Entregado', 5),
(267, 157, 'Entregado', 22),
(268, 187, 'Entregado', 34),
(269, 217, 'Entregado', 46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `nombres` varchar(24) DEFAULT NULL,
  `apellidos` varchar(24) DEFAULT NULL,
  `cc` varchar(16) DEFAULT NULL,
  `correo` varchar(64) DEFAULT NULL,
  `telefono` varchar(16) DEFAULT NULL,
  `direccion` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `nombres`, `apellidos`, `cc`, `correo`, `telefono`, `direccion`) VALUES
(1, 'Yerson', 'Solano Alfonso', '1078871667', 'sola@gmail.com', '3134576432', 'calle 15 13-43b'),
(2, 'Nikol Alexandra', 'Velandia Ortiz', '20403104', 'ale@gmail.com', '3159450945', 'carrera 38'),
(3, 'Lauren Sofia', 'Oviedo Garces', '10012345', 'sofi@gmail.com', '3201234567', 'Cra 1 10-20 Barrio El Emporio'),
(4, 'Luis Fernando', 'Gomez Diaz', '10023456', 'luis.gomez@gmail.com', '3212345678', 'Calle 15 23-45 Barrio La Esperanza'),
(5, 'Maria Camila', 'Rodriguez Pena', '10034567', 'maria.rodriguez@gmail.com', '3223456789', 'Cra 7 45-12 Barrio El Barzal'),
(6, 'Carlos Andres', 'Perez Romero', '10045678', 'carlos.perez@gmail.com', '3234567890', 'Calle 8 12-34 Barrio La Vega'),
(7, 'Laura Sofia', 'Sanchez Leon', '10056789', 'laura.sanchez@gmail.com', '3245678901', 'Cra 3 22-11 Barrio Villa Julia'),
(8, 'Jorge Eliecer', 'Ramirez Torres', '10067890', 'jorge.ramirez@gmail.com', '3256789012', 'Calle 20 30-40 Barrio La Madrid'),
(9, 'Sofia Alejandra', 'Martinez Cardenas', '10078901', 'sofia.martinez@gmail.com', '3267890123', 'Cra 9 15-25 Barrio El Recreo'),
(10, 'Andres Felipe', 'Herrera Quintero', '10089012', 'andres.herrera@gmail.com', '3278901234', 'Calle 12 18-22 Barrio La Reliquia'),
(11, 'Valentina Isabel', 'Diaz Navarro', '10090123', 'valentina.diaz@gmail.com', '3289012345', 'Cra 5 33-21 Barrio Porfia'),
(12, 'Camilo Jose', 'Ruiz Mendoza', '10101234', 'camilo.ruiz@gmail.com', '3290123456', 'Calle 7 14-18 Barrio La Grama'),
(13, 'Paola Andrea', 'Castro Beltran', '10112345', 'paola.castro@gmail.com', '3101234567', 'Cra 6 11-17 Barrio Villa Bolivar'),
(14, 'Felipe Esteban', 'Morales Naranjo', '10123456', 'felipe.morales@gmail.com', '3112345678', 'Calle 9 20-30 Barrio San Benito'),
(15, 'Daniela Fernanda', 'Rios Aguirre', '10134567', 'daniela.rios@gmail.com', '3123456789', 'Cra 8 19-29 Barrio Villa Hermosa'),
(16, 'Sebastian David', 'Leon Pineda', '10145678', 'sebastian.leon@gmail.com', '3134567890', 'Calle 11 25-35 Barrio La Coralina'),
(17, 'Natalia Andrea', 'Vargas Salazar', '10156789', 'natalia.vargas@gmail.com', '3145678901', 'Cra 4 17-27 Barrio San Antonio'),
(18, 'Esteban Julian', 'Cardenas Romero', '10167890', 'esteban.cardenas@gmail.com', '3156789012', 'Calle 13 21-31 Barrio El Triunfo'),
(19, 'Isabela Lucia', 'Mendoza Torres', '10178901', 'isabela.mendoza@gmail.com', '3167890123', 'Cra 2 16-26 Barrio Villa Claudia'),
(20, 'Mateo Alejandro', 'Salazar Diaz', '10189012', 'mateo.salazar@gmail.com', '3178901234', 'Calle 10 24-34 Barrio La Primavera'),
(21, 'Gabriela Sofia', 'Pineda Gomez', '10190123', 'gabriela.pineda@gmail.com', '3189012345', 'Cra 10 13-23 Barrio Villa Fabiola'),
(22, 'Tomas Enrique', 'Aguirre Rodriguez', '10201234', 'tomas.aguirre@gmail.com', '3190123456', 'Calle 6 22-32 Barrio El Buque'),
(23, 'Juliana Paola', 'Quintero Sanchez', '10212345', 'juliana.quintero@gmail.com', '3202345678', 'Cra 11 14-24 Barrio La Alborada'),
(24, 'Simon Esteban', 'Navarro Ramirez', '10223456', 'simon.navarro@gmail.com', '3213456789', 'Calle 5 19-29 Barrio Villa del Sol'),
(25, 'Manuela Andrea', 'Pena Herrera', '10234567', 'manuela.pena@gmail.com', '3224567890', 'Cra 12 20-30 Barrio El Triangulo'),
(26, 'Ivan Dario', 'Torres Castano', '10245678', 'ivan.torres@gmail.com', '3235678901', 'Calle 14 11-21 Barrio La Ceiba'),
(27, 'Luisa Fernanda', 'Romero Vargas', '10256789', 'luisa.romero@gmail.com', '3246789012', 'Cra 13 23-33 Barrio Villa Lorena'),
(28, 'Ricardo Andres', 'Beltran Rios', '10267890', 'ricardo.beltran@gmail.com', '3257890123', 'Calle 16 26-36 Barrio La Esperanza'),
(29, 'Claudia Patricia', 'Naranjo Leon', '10278901', 'claudia.naranjo@gmail.com', '3268901234', 'Cra 14 18-28 Barrio Villa Olimpica'),
(30, 'Diego Armando', 'Lozano Martinez', '10289012', 'diego.lozano@gmail.com', '3279012345', 'Calle 18 27-37 Barrio El Estero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `nombre` varchar(64) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `stock_p` int(11) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `id_categoria`, `nombre`, `codigo`, `descripcion`, `precio`, `stock_p`, `estado`) VALUES
(1, 1, 'Kit Faros Delanteros LED', 1, 'Faros delanteros LED para camionetas 4x4, alta intensidad', 450000, 25, 'Disponible'),
(2, 1, 'Luz Trasera LED Universal', 2, 'Luz trasera LED roja para todo tipo de vehiculos', 185000, 40, 'Disponible'),
(3, 1, 'Kit Luces de Niebla', 3, 'Luces antiniebla amarillas para condiciones climaticas adversas', 320000, 15, 'Disponible'),
(4, 1, 'Bombilla H4 6000K', 4, 'Bombilla H4 LED 6000K blanco frio, 20000 lumenes', 85000, 60, 'Disponible'),
(5, 1, 'Calaveras LED para Moto', 5, 'Calaveras LED delanteras y traseras para motocicletas', 120000, 30, 'Descontinuado'),
(6, 2, 'Filtro de Aceite Original', 6, 'Filtro de aceite para motores 1.6L a 2.0L', 45000, 100, 'Disponible'),
(7, 2, 'Pastillas de Freno Delanteras', 7, 'Juego de pastillas de freno delanteras ceramicas', 180000, 75, 'Disponible'),
(8, 2, 'Bateria 12V 60Ah', 8, 'Bateria de 12 voltios 60 amperios para automoviles', 350000, 20, 'Disponible'),
(9, 2, 'Aceite Motor 5W-30', 9, 'Aceite sintetico 5W-30 1 litro', 55000, 150, 'Disponible'),
(10, 2, 'Kit Correa de Distribucion', 10, 'Kit completo correa de distribucion y tensores', 420000, 12, 'Disponible'),
(11, 2, 'Bujias Iridium', 11, 'Bujias de iridium para mejor combustion', 75000, 80, 'Disponible'),
(12, 2, 'Radiador Aluminio Universal', 12, 'Radiador de aluminio para sistema de refrigeracion', 680000, 8, 'Disponible'),
(13, 2, 'Amortiguadores Delanteros', 13, 'Par de amortiguadores delanteros hidraulicos', 850000, 15, 'Disponible'),
(14, 2, 'Alternador 90A', 14, 'Alternador 90 amperios para vehiculos medianos', 720000, 10, 'Disponible'),
(15, 2, 'Sensor Oxigeno Universal', 15, 'Sensor de oxigeno universal 4 cables', 95000, 45, 'Descontinuado'),
(16, 3, 'Filtro Combustible Diesel', 16, 'Filtro de combustible para tractores diesel', 65000, 35, 'Disponible'),
(17, 3, 'Cadena Transmision Tractor', 17, 'Cadena de transmision para tractores agricolas', 920000, 5, 'Disponible'),
(18, 3, 'Kit Embrague Tractor', 18, 'Kit completo de embrague para tractores medianos', 1850000, 3, 'Agotado'),
(19, 3, 'Cuchilla Rotativa', 19, 'Cuchilla rotativa para cultivadores 24 pulgadas', 450000, 18, 'Disponible'),
(20, 3, 'Rodamiento Rueda Tractor', 20, 'Rodamiento para rueda delantera de tractor', 280000, 25, 'Disponible'),
(21, 3, 'Filtro de Aire Industrial', 21, 'Filtro de aire para motores diesel industriales', 120000, 30, 'Disponible'),
(22, 3, 'Bomba Inyectora Diesel', 22, 'Bomba inyectora para motores diesel agricolas', 2500000, 2, 'Agotado'),
(23, 3, 'Correa Ventilador Industrial', 23, 'Correa de ventilador para motores industriales', 95000, 40, 'Disponible'),
(24, 3, 'Sistema Hidraulico Completo', 24, 'Kit reparacion sistema hidraulico tractores', 3200000, 4, 'Disponible'),
(25, 3, 'Engranaje Diferencial', 25, 'Engranaje diferencial para transmisiones agricolas', 1850000, 6, 'Descontinuado'),
(26, 4, 'Limpiaparabrisas Aero', 26, 'Limpiaparabrisas aerodinamicos 22 pulgadas', 35000, 120, 'Disponible'),
(27, 4, 'Aceite Hidraulico ISO 46', 27, 'Aceite hidraulico ISO 46 5 galones', 280000, 25, 'Disponible'),
(28, 4, 'Grasa Litio Multiproposito', 28, 'Grasa de litio para aplicaciones generales', 25000, 200, 'Disponible'),
(29, 4, 'Scanner Diagnostico OBD2', 29, 'Scanner profesional OBD2 para diagnostico vehicular', 850000, 8, 'Disponible'),
(30, 4, 'Kit Herramientas Mecanico', 30, 'Kit completo 125 piezas para mecanica automotriz', 650000, 12, 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(64) DEFAULT NULL,
  `rut_p` varchar(64) DEFAULT NULL,
  `direccion` varchar(256) DEFAULT NULL,
  `telefono` varchar(16) DEFAULT NULL,
  `correo` varchar(128) DEFAULT NULL,
  `estado` varchar(16) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `rut_p`, `direccion`, `telefono`, `correo`, `estado`) VALUES
(1, 'AutoPartes Colombiana SAS', '901234567-8', 'Carrera 45 # 26-85, Bogot?', '3124567890', 'contacto@autopartescol.com', 'Activo'),
(2, 'Repuestos del Llano Ltda', '812345678-9', 'Calle 40 # 33-20, Villavicencio', '3105678901', 'ventas@repuestosllano.com', 'Activo'),
(3, 'Importadores Motor Plus', '723456789-0', 'Avenida Boyac? # 72-15, Medell?n', '3146789012', 'info@motorplus.com.co', 'Activo'),
(4, 'Distribuidora AgroMecanica', '634567890-1', 'Carrera 60 # 25-40, Cali', '3137890123', 'agromecanica@distribuidora.com', 'Activo'),
(5, 'Bombillas Premium Colombia', '545678901-2', 'Calle 30 # 45-12, Barranquilla', '3158901234', 'bombillas@premiumcol.com', 'Activo'),
(6, 'Frenos y Embragues Andinos', '456789012-3', 'Avenida 68 # 23-45, Bogot?', '3179012345', 'frenosandinos@empresa.com', 'Activo'),
(7, 'Sistemas Electricos AutoStar', '367890123-4', 'Carrera 50 # 35-67, Medell?n', '3180123456', 'sistemas@autostar.com.co', 'Activo'),
(8, 'Filtros Industriales del Norte', '278901234-5', 'Calle 25 # 40-15, Bucaramanga', '3191234567', 'filtrosnorte@industrial.com', 'Activo'),
(9, 'Transmisiones PowerDrive', '189012345-6', 'Avenida Santander # 55-30, Pereira', '3202345678', 'powerdrive@transmisiones.com', 'Activo'),
(10, 'Hidraulica y Neumatica SAS', '090123456-7', 'Carrera 35 # 28-10, Villavicencio', '3213456789', 'hidraulica@neumatica.co', 'Activo'),
(11, 'Lubricantes del Meta Ltda', '901234567-1', 'Calle 20 # 15-25, Villavicencio', '3224567890', 'lubricantes@metaempresa.com', 'Activo'),
(12, 'Herramientas Profesionales ProMec', '812345678-2', 'Avenida Circunvalar # 42-18, Bogot?', '3235678901', 'herramientas@promec.com.co', 'Activo'),
(13, 'Suspension y Direccion Total', '723456789-3', 'Carrera 72 # 30-22, Cali', '3246789012', 'suspensiontotal@servicio.com', 'Activo'),
(14, 'Refrigeracion Automotriz CoolTech', '634567890-4', 'Calle 55 # 18-33, Medell?n', '3257890123', 'cooltech@refrigeracion.com', 'Activo'),
(15, 'Baterias y Electricidad PowerCell', '545678901-5', 'Avenida Murillo # 38-14, Villavicencio', '3268901234', 'baterias@powercell.co', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resena`
--

CREATE TABLE `resena` (
  `id_resena` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `comentario` varchar(256) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `resena`
--

INSERT INTO `resena` (`id_resena`, `id_producto`, `calificacion`, `comentario`, `fecha`) VALUES
(1, 1, 5, 'Excelentes faros, muy buena iluminacion en carretera', '2024-03-15'),
(2, 1, 4, 'Buen producto, facil instalacion', '2024-04-02'),
(3, 1, 5, 'Vale cada peso, calidad premium', '2024-05-10'),
(4, 2, 4, 'Buena luz, duradera', '2024-03-20'),
(5, 2, 3, 'Funciona bien pero podria ser mas brillante', '2024-04-05'),
(6, 2, 5, 'Perfecta para mi camioneta', '2024-05-12'),
(7, 3, 5, 'Excelente en dias lluviosos', '2024-03-25'),
(8, 3, 4, 'Buena calidad, buen precio', '2024-04-08'),
(9, 3, 5, 'Muy recomendado para viajes', '2024-05-15'),
(10, 4, 5, 'Muy brillante, facil de instalar', '2024-03-18'),
(11, 4, 4, 'Buena relacion calidad precio', '2024-04-03'),
(12, 4, 5, 'Iluminacion perfecta para noche', '2024-05-20'),
(13, 5, 4, 'Bonito dise?o, buena calidad', '2024-03-22'),
(14, 5, 5, 'A mi moto le quedaron perfectas', '2024-04-07'),
(15, 5, 3, 'Buenas pero podrian ser mas resistentes', '2024-05-18'),
(16, 6, 5, 'Filtro original, excelente calidad', '2024-03-10'),
(17, 6, 4, 'Buen filtro, precio justo', '2024-04-12'),
(18, 6, 5, 'Siempre compro esta marca', '2024-05-22'),
(19, 7, 5, 'Frenado suave y efectivo', '2024-03-28'),
(20, 7, 4, 'Buenas pastillas, duraderas', '2024-04-15'),
(21, 7, 5, 'Excelente rendimiento', '2024-05-25'),
(22, 8, 4, 'Buena bateria, buen arranque', '2024-03-30'),
(23, 8, 3, 'Funciona bien pero esperaba mas duracion', '2024-04-18'),
(24, 8, 5, 'Perfecta para mi carro', '2024-05-28'),
(25, 9, 5, 'Excelente aceite, motor mas suave', '2024-04-01'),
(26, 9, 5, 'Siempre uso este aceite', '2024-04-20'),
(27, 9, 4, 'Buena calidad, buen precio', '2024-05-30'),
(28, 10, 5, 'Kit completo, buena calidad', '2024-04-05'),
(29, 10, 4, 'Todo incluido, facil instalacion', '2024-04-22'),
(30, 10, 5, 'Excelente para mantenimiento', '2024-06-01'),
(31, 11, 5, 'Mejoro el rendimiento del motor', '2024-04-08'),
(32, 11, 4, 'Buena combustion, ahorro gasolina', '2024-04-25'),
(33, 11, 5, 'Recomendadas 100%', '2024-06-03'),
(34, 12, 4, 'Buen radiador, disipa bien el calor', '2024-04-10'),
(35, 12, 5, 'Soluciono problema de sobrecalentamiento', '2024-04-28'),
(36, 12, 4, 'Calidad aceptable por el precio', '2024-06-05'),
(37, 13, 5, 'Suspension suave y comoda', '2024-04-12'),
(38, 13, 4, 'Buenos amortiguadores, buena durabilidad', '2024-05-02'),
(39, 13, 5, 'Excelente para caminos en mal estado', '2024-06-08'),
(40, 14, 4, 'Funciona correctamente, buena potencia', '2024-04-15'),
(41, 14, 5, 'Soluciono problema de carga', '2024-05-05'),
(42, 14, 4, 'Buen alternador, recomendado', '2024-06-10'),
(43, 15, 5, 'Sensor preciso, facil instalacion', '2024-04-18'),
(44, 15, 4, 'Buen sensor, mejoro rendimiento', '2024-05-08'),
(45, 15, 3, 'Funciona pero podria ser mas sensible', '2024-06-12'),
(46, 16, 5, 'Excelente para mi tractor', '2024-04-20'),
(47, 16, 4, 'Buen filtro, retiene impurezas', '2024-05-10'),
(48, 16, 5, 'Calidad industrial', '2024-06-15'),
(49, 17, 4, 'Buena cadena, resistente', '2024-04-22'),
(50, 17, 5, 'Perfecta para transmision de tractor', '2024-05-12'),
(51, 17, 4, 'Duradera y fuerte', '2024-06-18'),
(52, 18, 5, 'Kit completo, excelente calidad', '2024-04-25'),
(53, 18, 5, 'Soluciono problema de embrague', '2024-05-15'),
(54, 18, 4, 'Buen kit, facil instalacion', '2024-06-20'),
(55, 19, 4, 'Buena cuchilla, corta bien', '2024-04-28'),
(56, 19, 5, 'Excelente para cultivo', '2024-05-18'),
(57, 19, 4, 'Duradera y afilada', '2024-06-22'),
(58, 20, 5, 'Rodamiento de alta calidad', '2024-05-01'),
(59, 20, 4, 'Buen rodamiento, buen precio', '2024-05-20'),
(60, 20, 5, 'Perfecto para mi tractor', '2024-06-25'),
(61, 21, 4, 'Buen filtro para motor diesel', '2024-05-03'),
(62, 21, 5, 'Excelente filtracion', '2024-05-22'),
(63, 21, 4, 'Calidad industrial comprobada', '2024-06-28'),
(64, 22, 5, 'Bomba de alta precision', '2024-05-05'),
(65, 22, 4, 'Buena bomba, mejoro rendimiento', '2024-05-25'),
(66, 22, 5, 'Excelente para motores diesel', '2024-06-30'),
(67, 23, 4, 'Buena correa, resistente', '2024-05-08'),
(68, 23, 5, 'Perfecta para motor industrial', '2024-05-28'),
(69, 23, 4, 'Duradera y flexible', '2024-07-02'),
(70, 24, 5, 'Kit completo, buena calidad', '2024-05-10'),
(71, 24, 4, 'Todo lo necesario para reparacion', '2024-05-30'),
(72, 24, 5, 'Excelente para sistema hidraulico', '2024-07-05'),
(73, 25, 4, 'Buen engranaje, precision aceptable', '2024-05-12'),
(74, 25, 5, 'Excelente para transmision', '2024-06-02'),
(75, 25, 4, 'Calidad industrial', '2024-07-08'),
(76, 26, 5, 'Excelentes, limpian muy bien', '2024-05-15'),
(77, 26, 4, 'Buenos limpiaparabrisas', '2024-06-05'),
(78, 26, 5, 'Silenciosos y efectivos', '2024-07-10'),
(79, 27, 4, 'Buen aceite hidraulico', '2024-05-18'),
(80, 27, 5, 'Excelente para sistemas hidraulicos', '2024-06-08'),
(81, 27, 4, 'Calidad comprobada', '2024-07-12'),
(82, 28, 5, 'Excelente grasa, multiple uso', '2024-05-20'),
(83, 28, 4, 'Buena para aplicaciones generales', '2024-06-10'),
(84, 28, 5, 'Muy util en el taller', '2024-07-15'),
(85, 29, 5, 'Scanner profesional, muy preciso', '2024-05-22'),
(86, 29, 4, 'Buen scanner, facil de usar', '2024-06-12'),
(87, 29, 5, 'Excelente para diagnosticos', '2024-07-18'),
(88, 30, 4, 'Buen kit, herramientas completas', '2024-05-25'),
(89, 30, 5, 'Excelente calidad de herramientas', '2024-06-15'),
(90, 30, 5, 'Perfecto para taller mecanico', '2024-07-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Cliente'),
(3, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(24) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `estado` varchar(16) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_persona`, `id_tipo`, `username`, `password`, `fecha_creacion`, `estado`) VALUES
(1, 1, 1, 'ysolano', 'Yerson@2024!', '2023-03-12', 'Activo'),
(2, 2, 1, 'nvelandia', 'Nikol$2024#', '2023-05-18', 'Activo'),
(3, 3, 1, 'loviedo', 'Lauren!2024$', '2023-07-22', 'Activo'),
(4, 4, 3, 'lgomez', 'Luis@2024#', '2023-09-05', 'Activo'),
(5, 5, 3, 'mrodriguez', 'Maria$2024!', '2023-11-15', 'Activo'),
(6, 6, 2, 'cperez', 'Carlos@2024!', '2024-01-08', 'Activo'),
(7, 7, 2, 'lsanchez', 'Laura$2024#', '2024-02-14', 'Activo'),
(8, 8, 2, 'jramirez', 'Jorge!2024$', '2024-03-21', 'Activo'),
(9, 9, 2, 'smartinez', 'Sofia@2024#', '2024-04-03', 'Activo'),
(10, 10, 2, 'aherrera', 'Andres$2024!', '2024-05-11', 'Activo'),
(11, 11, 2, 'vdiaz', 'Valentina@2024#', '2024-06-19', 'Activo'),
(12, 12, 2, 'cruiz', 'Camilo!2024$', '2024-07-25', 'Activo'),
(13, 13, 2, 'pcastro', 'Paola@2024#', '2024-08-07', 'Activo'),
(14, 14, 2, 'fmorales', 'Felipe$2024!', '2024-09-13', 'Activo'),
(15, 15, 2, 'drios', 'Daniela@2024#', '2024-10-22', 'Activo'),
(16, 16, 2, 'sleon', 'Sebastian!2024$', '2024-11-30', 'Activo'),
(17, 17, 2, 'nvargas', 'Natalia@2024#', '2024-12-05', 'Activo'),
(18, 18, 2, 'ecardenas', 'Esteban$2024!', '2025-01-17', 'Activo'),
(19, 19, 2, 'imendoza', 'Isabela@2024#', '2025-02-23', 'Activo'),
(20, 20, 2, 'msalazar', 'Mateo!2024$', '2025-03-08', 'Activo'),
(21, 21, 2, 'gpineda', 'Gabriela@2024#', '2025-04-14', 'Activo'),
(22, 22, 2, 'taguirre', 'Tomas$2024!', '2025-05-20', 'Activo'),
(23, 23, 2, 'jquintero', 'Juliana@2024#', '2025-06-26', 'Activo'),
(24, 24, 2, 'snavarro', 'Simon!2024$', '2025-07-02', 'Activo'),
(25, 25, 2, 'mpena', 'Manuela@2024#', '2025-08-09', 'Activo'),
(26, 26, 2, 'itorres', 'Ivan$2024!', '2025-09-15', 'Activo'),
(27, 27, 2, 'lromero', 'Luisa@2024#', '2025-10-21', 'Activo'),
(28, 28, 2, 'rbeltran', 'Ricardo!2024$', '2025-11-27', 'Activo'),
(29, 29, 2, 'cnaranjo', 'Claudia@2024#', '2025-12-03', 'Activo'),
(30, 30, 2, 'dlozano', 'Diego$2024!', '2025-12-18', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `tipo_venta` varchar(16) NOT NULL DEFAULT 'Fisica',
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `id_cliente`, `id_usuario`, `id_producto`, `tipo_venta`, `total`) VALUES
(1, 1, NULL, 9, 'Fisica', 1595000),
(2, NULL, 17, 9, 'Virtual', 1155000),
(3, 2, NULL, 9, 'Fisica', 1650000),
(4, 3, NULL, 9, 'Fisica', 770000),
(5, NULL, 18, 9, 'Virtual', 770000),
(6, 4, NULL, 9, 'Fisica', 935000),
(7, 5, NULL, 9, 'Fisica', 715000),
(8, NULL, 19, 9, 'Virtual', 1430000),
(9, 6, NULL, 9, 'Fisica', 880000),
(10, 7, NULL, 9, 'Fisica', 825000),
(11, NULL, 20, 9, 'Virtual', 935000),
(12, 8, NULL, 9, 'Fisica', 660000),
(13, 9, NULL, 6, 'Fisica', 810000),
(14, NULL, 21, 6, 'Virtual', 1170000),
(15, 10, NULL, 6, 'Fisica', 990000),
(16, 11, NULL, 6, 'Fisica', 1035000),
(17, NULL, 22, 6, 'Virtual', 765000),
(18, 12, NULL, 6, 'Fisica', 1305000),
(19, 13, NULL, 6, 'Fisica', 990000),
(20, NULL, 23, 6, 'Virtual', 675000),
(21, 14, NULL, 6, 'Fisica', 900000),
(22, 15, NULL, 6, 'Fisica', 1035000),
(23, NULL, 24, 26, 'Virtual', 875000),
(24, 16, NULL, 26, 'Fisica', 875000),
(25, 1, NULL, 26, 'Fisica', 770000),
(26, NULL, 25, 26, 'Virtual', 805000),
(27, 2, NULL, 26, 'Fisica', 665000),
(28, 3, NULL, 26, 'Fisica', 525000),
(29, NULL, 17, 26, 'Virtual', 1015000),
(30, 4, NULL, 26, 'Fisica', 945000),
(31, 5, NULL, 7, 'Fisica', 1620000),
(32, NULL, 18, 7, 'Virtual', 1620000),
(33, 6, NULL, 7, 'Fisica', 2700000),
(34, 7, NULL, 7, 'Fisica', 1800000),
(35, NULL, 19, 7, 'Virtual', 1800000),
(36, 8, NULL, 7, 'Fisica', 2700000),
(37, 9, NULL, 7, 'Fisica', 1620000),
(38, NULL, 20, 1, 'Virtual', 3600000),
(39, 10, NULL, 1, 'Fisica', 2700000),
(40, 11, NULL, 1, 'Fisica', 6750000),
(41, NULL, 21, 1, 'Virtual', 2250000),
(42, 12, NULL, 1, 'Fisica', 4950000),
(43, 13, NULL, 1, 'Fisica', 6300000),
(44, NULL, 22, 11, 'Virtual', 750000),
(45, 14, NULL, 11, 'Fisica', 375000),
(46, 15, NULL, 11, 'Fisica', 750000),
(47, NULL, 23, 11, 'Virtual', 600000),
(48, 16, NULL, 11, 'Fisica', 450000),
(49, 1, NULL, 2, 'Fisica', 2775000),
(50, NULL, 24, 2, 'Virtual', 925000),
(51, 2, NULL, 2, 'Fisica', 2035000),
(52, 3, NULL, 2, 'Fisica', 2220000),
(53, NULL, 25, 4, 'Virtual', 1020000),
(54, 4, NULL, 4, 'Fisica', 850000),
(55, 5, NULL, 4, 'Fisica', 765000),
(56, NULL, 17, 28, 'Virtual', 575000),
(57, 1, NULL, 28, 'Fisica', 750000),
(58, 2, NULL, 28, 'Fisica', 675000),
(59, 3, NULL, 27, 'Fisica', 1400000),
(60, 4, NULL, 27, 'Fisica', 1120000),
(61, 5, NULL, 27, 'Fisica', 2240000),
(62, 6, NULL, 29, 'Fisica', 3400000),
(63, 7, NULL, 29, 'Fisica', 4250000),
(64, 8, NULL, 29, 'Fisica', 6800000),
(65, 9, NULL, 8, 'Fisica', 2100000),
(66, 10, NULL, 8, 'Fisica', 1750000),
(67, 11, NULL, 8, 'Fisica', 1050000),
(68, 12, NULL, 3, 'Fisica', 1280000),
(69, 13, NULL, 3, 'Fisica', 960000),
(70, 14, NULL, 3, 'Fisica', 2560000),
(71, 15, NULL, 13, 'Fisica', 2550000),
(72, 16, NULL, 13, 'Fisica', 5950000),
(73, 17, NULL, 13, 'Fisica', 3400000),
(74, 18, NULL, 5, 'Fisica', 120000),
(75, 19, NULL, 5, 'Fisica', 360000),
(76, 20, NULL, 10, 'Fisica', 1260000),
(77, 21, NULL, 10, 'Fisica', 1260000),
(78, 1, NULL, 12, 'Fisica', 680000),
(79, 2, NULL, 12, 'Fisica', 1360000),
(80, 3, NULL, 14, 'Fisica', 1440000),
(81, 4, NULL, 14, 'Fisica', 720000),
(82, 5, NULL, 15, 'Fisica', 285000),
(83, 6, NULL, 15, 'Fisica', 285000),
(84, 7, NULL, 16, 'Fisica', 65000),
(85, 8, NULL, 16, 'Fisica', 130000),
(86, 9, NULL, 17, 'Fisica', 1840000),
(87, 10, NULL, 17, 'Fisica', 2760000),
(88, 11, NULL, 18, 'Fisica', 5550000),
(89, 12, NULL, 18, 'Fisica', 1850000),
(90, 13, NULL, 19, 'Fisica', 1350000),
(91, 14, NULL, 19, 'Fisica', 900000),
(92, 15, NULL, 20, 'Fisica', 280000),
(93, 16, NULL, 20, 'Fisica', 560000),
(94, 17, NULL, 21, 'Fisica', 360000),
(95, 18, NULL, 21, 'Fisica', 360000),
(96, 19, NULL, 22, 'Fisica', 7500000),
(97, 20, NULL, 22, 'Fisica', 2500000),
(98, 21, NULL, 23, 'Fisica', 190000),
(99, 22, NULL, 23, 'Fisica', 285000),
(100, 23, NULL, 24, 'Fisica', 9600000),
(101, 24, NULL, 24, 'Fisica', 6400000),
(102, 25, NULL, 25, 'Fisica', 1850000),
(103, 26, NULL, 25, 'Fisica', 5550000),
(104, 27, NULL, 30, 'Fisica', 650000),
(105, 28, NULL, 30, 'Fisica', 650000),
(106, 29, NULL, 26, 'Fisica', 1050000),
(107, 30, NULL, 26, 'Fisica', 805000),
(108, 1, NULL, 26, 'Fisica', 490000),
(109, 2, NULL, 26, 'Fisica', 420000),
(110, 3, NULL, 26, 'Fisica', 385000),
(111, 4, NULL, 26, 'Fisica', 945000),
(112, 5, NULL, 26, 'Fisica', 385000),
(113, 6, NULL, 26, 'Fisica', 1015000),
(114, 7, NULL, 26, 'Fisica', 525000),
(115, 8, NULL, 7, 'Fisica', 1980000),
(116, 9, NULL, 7, 'Fisica', 1260000),
(117, 10, NULL, 7, 'Fisica', 1080000),
(118, 11, NULL, 7, 'Fisica', 1440000),
(119, 12, NULL, 7, 'Fisica', 2520000),
(120, 13, NULL, 7, 'Fisica', 1980000),
(121, 14, NULL, 7, 'Fisica', 1620000),
(122, 15, NULL, 7, 'Fisica', 1440000),
(123, 16, NULL, 11, 'Fisica', 450000),
(124, 17, NULL, 11, 'Fisica', 975000),
(125, 18, NULL, 11, 'Fisica', 675000),
(126, 19, NULL, 11, 'Fisica', 975000),
(127, 20, NULL, 11, 'Fisica', 750000),
(128, 1, NULL, 9, 'Fisica', 1320000),
(129, 2, NULL, 9, 'Fisica', 770000),
(130, 3, NULL, 9, 'Fisica', 1595000),
(131, 4, NULL, 9, 'Fisica', 605000),
(132, 5, NULL, 9, 'Fisica', 1155000),
(133, 6, NULL, 6, 'Fisica', 855000),
(134, 7, NULL, 6, 'Fisica', 1125000),
(135, 8, NULL, 6, 'Fisica', 630000),
(136, 9, NULL, 6, 'Fisica', 1215000),
(137, 10, NULL, 26, 'Fisica', 735000),
(138, 11, NULL, 26, 'Fisica', 595000),
(139, 12, NULL, 26, 'Fisica', 385000),
(140, 13, NULL, 7, 'Fisica', 1260000),
(141, 14, NULL, 7, 'Fisica', 2520000),
(142, 15, NULL, 1, 'Fisica', 4500000),
(143, 16, NULL, 1, 'Fisica', 2700000),
(144, 17, NULL, 11, 'Fisica', 525000),
(145, 18, NULL, 11, 'Fisica', 975000),
(146, 19, NULL, 2, 'Fisica', 2775000),
(147, 20, NULL, 4, 'Fisica', 935000),
(148, 21, NULL, 28, 'Fisica', 300000),
(149, 22, NULL, 27, 'Fisica', 1960000),
(150, 23, NULL, 29, 'Fisica', 3400000),
(151, 24, NULL, 8, 'Fisica', 2800000),
(152, 25, NULL, 3, 'Fisica', 960000),
(153, 26, NULL, 13, 'Fisica', 5950000),
(154, 27, NULL, 5, 'Fisica', 120000),
(155, 28, NULL, 10, 'Fisica', 1260000),
(156, 29, NULL, 12, 'Fisica', 1360000),
(157, 30, NULL, 14, 'Fisica', 1440000),
(158, 1, NULL, 15, 'Fisica', 190000),
(159, 2, NULL, 16, 'Fisica', 65000),
(160, 3, NULL, 17, 'Fisica', 2760000),
(161, 4, NULL, 18, 'Fisica', 1850000),
(162, 5, NULL, 19, 'Fisica', 1350000),
(163, 6, NULL, 9, 'Fisica', 1045000),
(164, 7, NULL, 9, 'Fisica', 1100000),
(165, 8, NULL, 9, 'Fisica', 715000),
(166, 9, NULL, 6, 'Fisica', 720000),
(167, 10, NULL, 6, 'Fisica', 495000),
(168, 11, NULL, 6, 'Fisica', 765000),
(169, 12, NULL, 26, 'Fisica', 735000),
(170, 13, NULL, 26, 'Fisica', 840000),
(171, 14, NULL, 7, 'Fisica', 2700000),
(172, 15, NULL, 7, 'Fisica', 1620000),
(173, 16, NULL, 1, 'Fisica', 4500000),
(174, 17, NULL, 1, 'Fisica', 6750000),
(175, 18, NULL, 11, 'Fisica', 750000),
(176, 19, NULL, 11, 'Fisica', 675000),
(177, 20, NULL, 2, 'Fisica', 2220000),
(178, 21, NULL, 4, 'Fisica', 595000),
(179, 22, NULL, 28, 'Fisica', 725000),
(180, 23, NULL, 27, 'Fisica', 2240000),
(181, 24, NULL, 29, 'Fisica', 3400000),
(182, 25, NULL, 8, 'Fisica', 2800000),
(183, 26, NULL, 3, 'Fisica', 960000),
(184, 27, NULL, 13, 'Fisica', 4250000),
(185, 28, NULL, 5, 'Fisica', 360000),
(186, 29, NULL, 10, 'Fisica', 1260000),
(187, 30, NULL, 12, 'Fisica', 2040000),
(188, 1, NULL, 14, 'Fisica', 2160000),
(189, 2, NULL, 15, 'Fisica', 190000),
(190, 3, NULL, 16, 'Fisica', 130000),
(191, 4, NULL, 17, 'Fisica', 1840000),
(192, 5, NULL, 18, 'Fisica', 5550000),
(193, 6, NULL, 19, 'Fisica', 450000),
(194, 7, NULL, 20, 'Fisica', 840000),
(195, 8, NULL, 21, 'Fisica', 240000),
(196, 9, NULL, 9, 'Fisica', 605000),
(197, 10, NULL, 9, 'Fisica', 770000),
(198, 11, NULL, 6, 'Fisica', 1305000),
(199, 12, NULL, 6, 'Fisica', 1305000),
(200, 13, NULL, 26, 'Fisica', 910000),
(201, 14, NULL, 26, 'Fisica', 455000),
(202, 15, NULL, 7, 'Fisica', 1980000),
(203, 16, NULL, 7, 'Fisica', 1440000),
(204, 17, NULL, 1, 'Fisica', 5400000),
(205, 18, NULL, 1, 'Fisica', 5400000),
(206, 19, NULL, 11, 'Fisica', 750000),
(207, 20, NULL, 2, 'Fisica', 1110000),
(208, 21, NULL, 4, 'Fisica', 680000),
(209, 22, NULL, 28, 'Fisica', 425000),
(210, 23, NULL, 27, 'Fisica', 1680000),
(211, 24, NULL, 29, 'Fisica', 2550000),
(212, 25, NULL, 8, 'Fisica', 1750000),
(213, 26, NULL, 3, 'Fisica', 1280000),
(214, 27, NULL, 13, 'Fisica', 5100000),
(215, 28, NULL, 5, 'Fisica', 240000),
(216, 29, NULL, 10, 'Fisica', 840000),
(217, 30, NULL, 12, 'Fisica', 2040000),
(218, 1, NULL, 14, 'Fisica', 2160000),
(219, 2, NULL, 15, 'Fisica', 95000),
(220, 3, NULL, 16, 'Fisica', 130000),
(221, 4, NULL, 17, 'Fisica', 920000),
(222, 5, NULL, 18, 'Fisica', 3700000),
(223, 6, NULL, 19, 'Fisica', 900000),
(224, 7, NULL, 20, 'Fisica', 840000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `detalle_compra_proveedor`
--
ALTER TABLE `detalle_compra_proveedor`
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `direccion_envio`
--
ALTER TABLE `direccion_envio`
  ADD PRIMARY KEY (`id_direccion`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`id_metodo_pago`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `fk_pedido_metodo_pago` (`id_metodo_pago`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_producto_categoria` (`id_categoria`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `resena`
--
ALTER TABLE `resena`
  ADD PRIMARY KEY (`id_resena`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `fk_usuario_tipo_usuario` (`id_tipo`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `direccion_envio`
--
ALTER TABLE `direccion_envio`
  MODIFY `id_direccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  MODIFY `id_metodo_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `resena`
--
ALTER TABLE `resena`
  MODIFY `id_resena` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `detalle_compra_proveedor`
--
ALTER TABLE `detalle_compra_proveedor`
  ADD CONSTRAINT `detalle_compra_proveedor_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `detalle_compra_proveedor_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`);

--
-- Filtros para la tabla `direccion_envio`
--
ALTER TABLE `direccion_envio`
  ADD CONSTRAINT `direccion_envio_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_metodo_pago` FOREIGN KEY (`id_metodo_pago`) REFERENCES `metodo_pago` (`id_metodo_pago`),
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_producto` (`id_categoria`);

--
-- Filtros para la tabla `resena`
--
ALTER TABLE `resena`
  ADD CONSTRAINT `resena_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_tipo_usuario` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_usuario` (`id_tipo`),
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
