-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2020 a las 04:31:40
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Id_Clientes` int(11) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Direccion` varchar(20) NOT NULL,
  `Cedula` int(11) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Id_Clientes`, `Nombres`, `Apellidos`, `Email`, `Direccion`, `Cedula`, `Telefono`, `Fecha`) VALUES
(5, 'jose', 'campuzano', 'jose@gmail.com', 'galo plaza', 123456789, 987654321, '2020-09-15 04:43:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `Nombres` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `Nombres`, `Email`, `Telefono`, `Mensaje`) VALUES
(1, 'jose', 'luis@gmaiL.com', 123456789, 'hola'),
(2, 'jose', 'luis@gmail.com', 123456789, 'excelente servicio'),
(3, 'kevin', 'KEVIN@GMAIL.COM', 987654321, 'HOLA A TODOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `ID` int(11) NOT NULL,
  `IDFactura` int(11) NOT NULL,
  `IDProducto` int(11) NOT NULL,
  `PrecioUnitario` decimal(20,2) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Descargado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`ID`, `IDFactura`, `IDProducto`, `PrecioUnitario`, `Cantidad`, `Descargado`) VALUES
(1, 5, 1, '2.00', 1, 0),
(2, 5, 2, '1.50', 1, 0),
(3, 6, 1, '2.00', 1, 0),
(4, 6, 2, '1.50', 1, 0),
(5, 7, 1, '2.00', 1, 0),
(6, 7, 2, '1.50', 1, 0),
(7, 8, 1, '2.00', 1, 0),
(8, 8, 2, '1.50', 1, 0),
(9, 9, 1, '2.00', 1, 0),
(10, 9, 2, '1.50', 1, 0),
(11, 10, 1, '2.00', 1, 0),
(12, 10, 2, '1.50', 1, 0),
(13, 11, 1, '2.00', 1, 0),
(14, 11, 2, '1.50', 1, 0),
(15, 12, 1, '2.00', 1, 0),
(16, 12, 2, '1.50', 1, 0),
(17, 13, 1, '2.00', 1, 0),
(18, 13, 2, '1.50', 1, 0),
(19, 14, 1, '2.00', 1, 0),
(20, 14, 2, '1.50', 1, 0),
(21, 15, 1, '2.00', 1, 0),
(22, 15, 2, '1.50', 1, 0),
(23, 16, 1, '2.00', 1, 0),
(24, 16, 2, '1.50', 1, 0),
(26, 17, 2, '1.50', 1, 0),
(27, 18, 1, '2.00', 1, 0),
(28, 18, 2, '1.50', 1, 0),
(29, 19, 1, '2.00', 1, 0),
(30, 19, 2, '1.50', 1, 0),
(31, 20, 1, '2.00', 1, 0),
(32, 20, 2, '1.50', 1, 0),
(33, 21, 1, '2.00', 1, 0),
(34, 21, 2, '1.50', 1, 0),
(35, 22, 1, '2.00', 1, 0),
(36, 22, 2, '1.50', 1, 0),
(37, 23, 1, '2.00', 1, 0),
(38, 23, 2, '1.50', 1, 0),
(39, 24, 1, '2.00', 1, 0),
(40, 24, 2, '1.50', 1, 0),
(41, 25, 1, '2.00', 1, 0),
(42, 25, 2, '1.50', 1, 0),
(43, 26, 1, '2.00', 1, 0),
(44, 26, 2, '1.50', 1, 0),
(45, 27, 1, '2.00', 1, 0),
(46, 27, 2, '1.50', 1, 0),
(47, 28, 1, '2.00', 1, 0),
(48, 28, 2, '1.50', 1, 0),
(49, 29, 1, '2.00', 1, 0),
(50, 29, 2, '1.50', 1, 0),
(51, 30, 1, '2.00', 1, 0),
(52, 30, 2, '1.50', 1, 0),
(53, 31, 1, '2.00', 1, 0),
(54, 31, 2, '1.50', 1, 0),
(55, 32, 1, '2.00', 1, 0),
(56, 32, 2, '1.50', 1, 0),
(57, 33, 1, '2.00', 1, 0),
(58, 33, 2, '1.50', 1, 0),
(59, 34, 1, '2.00', 1, 0),
(60, 34, 2, '1.50', 1, 0),
(61, 35, 1, '2.00', 1, 0),
(62, 35, 2, '1.50', 1, 0),
(63, 36, 1, '2.00', 1, 0),
(64, 36, 2, '1.50', 1, 0),
(65, 37, 1, '2.00', 1, 0),
(66, 37, 2, '1.50', 1, 0),
(67, 38, 1, '2.00', 1, 0),
(68, 39, 1, '2.00', 1, 0),
(69, 39, 2, '1.50', 1, 0),
(70, 40, 1, '2.00', 1, 0),
(71, 40, 2, '1.50', 1, 0),
(72, 41, 1, '2.00', 1, 0),
(73, 41, 2, '1.50', 1, 0),
(74, 42, 1, '2.00', 1, 0),
(75, 42, 2, '1.50', 1, 0),
(76, 43, 1, '2.00', 1, 0),
(77, 43, 2, '1.50', 1, 0),
(78, 44, 1, '2.00', 1, 0),
(79, 44, 2, '1.50', 1, 0),
(80, 45, 1, '2.00', 1, 0),
(81, 45, 2, '1.50', 1, 0),
(82, 46, 1, '2.00', 1, 0),
(83, 46, 2, '1.50', 1, 0),
(84, 47, 1, '2.00', 1, 0),
(85, 47, 2, '1.50', 1, 0),
(86, 48, 1, '2.00', 1, 0),
(87, 48, 2, '1.50', 1, 0),
(88, 49, 1, '2.00', 1, 0),
(89, 49, 2, '1.50', 1, 0),
(90, 50, 1, '2.00', 1, 0),
(91, 50, 2, '1.50', 1, 0),
(92, 51, 1, '2.00', 1, 0),
(93, 51, 2, '1.50', 1, 0),
(94, 52, 1, '2.00', 1, 0),
(95, 52, 2, '1.50', 1, 0),
(96, 53, 1, '2.00', 1, 0),
(97, 53, 2, '1.50', 1, 0),
(98, 54, 1, '2.00', 1, 0),
(99, 54, 2, '1.50', 1, 0),
(100, 55, 1, '2.00', 1, 0),
(101, 55, 2, '1.50', 1, 0),
(102, 56, 1, '2.00', 1, 0),
(103, 56, 2, '1.50', 1, 0),
(104, 57, 1, '2.00', 1, 0),
(105, 57, 2, '1.50', 1, 0),
(106, 58, 1, '2.00', 1, 0),
(107, 58, 2, '1.50', 1, 0),
(108, 59, 1, '2.00', 1, 0),
(109, 59, 2, '1.50', 1, 0),
(110, 60, 1, '2.00', 1, 0),
(111, 60, 2, '1.50', 1, 0),
(112, 61, 1, '2.00', 1, 0),
(113, 61, 2, '1.50', 1, 0),
(114, 62, 1, '2.00', 1, 0),
(115, 62, 2, '1.50', 1, 0),
(116, 63, 1, '2.00', 1, 0),
(117, 63, 2, '1.50', 1, 0),
(118, 64, 1, '2.00', 1, 0),
(119, 64, 2, '1.50', 1, 0),
(120, 65, 1, '2.00', 1, 0),
(121, 65, 2, '1.50', 1, 0),
(122, 66, 1, '2.00', 1, 0),
(123, 66, 2, '1.50', 1, 0),
(124, 67, 1, '2.00', 1, 0),
(125, 67, 2, '1.50', 1, 0),
(126, 68, 1, '2.00', 1, 0),
(127, 68, 2, '1.50', 1, 0),
(128, 69, 1, '2.00', 1, 0),
(129, 69, 2, '1.50', 1, 0),
(130, 70, 1, '2.00', 1, 0),
(131, 70, 2, '1.50', 1, 0),
(132, 71, 1, '2.00', 1, 0),
(133, 72, 1, '2.00', 1, 0),
(134, 73, 1, '2.00', 1, 0),
(135, 73, 2, '1.50', 1, 0),
(136, 74, 1, '2.00', 1, 0),
(137, 74, 2, '1.50', 1, 0),
(138, 75, 1, '2.00', 1, 0),
(139, 75, 2, '1.50', 1, 0),
(140, 76, 1, '2.00', 1, 0),
(141, 76, 2, '1.50', 1, 0),
(142, 77, 1, '2.00', 1, 0),
(143, 78, 2, '1.50', 1, 0),
(144, 79, 2, '1.50', 1, 0),
(145, 80, 2, '1.50', 1, 0),
(146, 81, 2, '1.50', 1, 0),
(147, 82, 1, '2.00', 1, 0),
(148, 82, 2, '1.50', 1, 0),
(149, 83, 2, '1.50', 1, 0),
(150, 83, 1, '2.00', 1, 0),
(151, 84, 1, '2.00', 1, 0),
(152, 85, 2, '1.50', 1, 0),
(153, 85, 1, '2.00', 1, 0),
(154, 86, 1, '2.00', 1, 0),
(155, 87, 1, '2.00', 1, 0),
(156, 88, 1, '2.00', 1, 0),
(157, 89, 2, '1.50', 1, 0),
(158, 89, 1, '2.00', 1, 0),
(159, 90, 1, '2.00', 1, 0),
(160, 91, 2, '1.50', 1, 0),
(161, 91, 1, '2.00', 1, 0),
(162, 92, 2, '1.50', 1, 0),
(163, 92, 1, '2.00', 1, 0),
(164, 93, 2, '1.50', 1, 0),
(165, 93, 1, '2.00', 1, 0),
(166, 94, 2, '1.50', 1, 0),
(167, 94, 1, '2.00', 1, 0),
(168, 95, 2, '1.50', 1, 0),
(169, 95, 1, '2.00', 1, 0),
(170, 96, 2, '1.50', 1, 0),
(171, 96, 1, '2.00', 1, 0),
(172, 97, 2, '1.50', 1, 0),
(173, 97, 1, '2.00', 1, 0),
(174, 98, 1, '2.00', 1, 0),
(175, 98, 2, '1.50', 1, 0),
(176, 99, 1, '2.00', 1, 0),
(177, 99, 2, '1.50', 1, 0),
(178, 100, 1, '2.00', 1, 0),
(179, 100, 2, '1.50', 1, 0),
(180, 101, 1, '2.00', 1, 0),
(181, 101, 2, '1.50', 1, 0),
(182, 102, 1, '2.00', 1, 0),
(183, 102, 2, '1.50', 1, 0),
(184, 103, 1, '2.00', 1, 0),
(185, 104, 1, '2.00', 1, 0),
(186, 105, 1, '2.00', 1, 0),
(187, 105, 2, '1.50', 1, 0),
(188, 105, 3, '2.50', 1, 0),
(189, 105, 4, '3.00', 1, 0),
(190, 106, 1, '2.00', 1, 0),
(191, 106, 2, '1.50', 1, 0),
(192, 106, 3, '2.50', 1, 0),
(193, 106, 4, '3.00', 1, 0),
(194, 107, 1, '2.00', 1, 0),
(195, 107, 2, '1.50', 1, 0),
(196, 107, 3, '2.50', 1, 0),
(197, 107, 4, '3.00', 1, 0),
(198, 108, 1, '2.00', 1, 0),
(199, 108, 2, '1.50', 1, 0),
(200, 108, 3, '2.50', 1, 0),
(201, 108, 4, '3.00', 1, 0),
(202, 109, 1, '2.00', 1, 0),
(203, 109, 2, '1.50', 1, 0),
(204, 109, 3, '2.50', 1, 0),
(205, 109, 4, '3.00', 1, 0),
(206, 110, 1, '2.00', 1, 0),
(207, 110, 2, '1.50', 1, 0),
(208, 110, 3, '2.50', 1, 0),
(209, 110, 4, '3.00', 1, 0),
(210, 111, 1, '2.00', 1, 0),
(211, 111, 2, '1.50', 1, 0),
(212, 111, 3, '2.50', 1, 0),
(213, 111, 4, '3.00', 1, 0),
(214, 112, 1, '2.00', 1, 0),
(215, 112, 2, '1.50', 1, 0),
(216, 112, 3, '2.50', 1, 0),
(217, 112, 4, '3.00', 1, 0),
(218, 113, 1, '2.00', 1, 0),
(219, 113, 2, '1.50', 1, 0),
(220, 113, 3, '2.50', 1, 0),
(221, 113, 4, '3.00', 1, 0),
(222, 114, 1, '2.00', 1, 0),
(223, 114, 2, '1.50', 1, 0),
(224, 114, 3, '2.50', 1, 0),
(225, 114, 4, '3.00', 1, 0),
(226, 115, 1, '2.00', 1, 0),
(227, 115, 2, '1.50', 1, 0),
(228, 115, 3, '2.50', 1, 0),
(229, 115, 4, '3.00', 1, 0),
(230, 116, 1, '2.00', 1, 0),
(231, 116, 2, '1.50', 1, 0),
(232, 116, 3, '2.50', 1, 0),
(233, 116, 4, '3.00', 1, 0),
(234, 117, 1, '2.00', 1, 0),
(235, 117, 2, '1.50', 1, 0),
(236, 117, 3, '2.50', 1, 0),
(237, 117, 4, '3.00', 1, 0),
(238, 118, 1, '2.00', 1, 0),
(239, 118, 2, '1.50', 1, 0),
(240, 118, 3, '2.50', 1, 0),
(241, 118, 4, '3.00', 1, 0),
(242, 119, 2, '1.50', 1, 0),
(243, 120, 2, '1.50', 1, 0),
(244, 121, 1, '2.00', 1, 0),
(245, 122, 1, '2.00', 1, 0),
(246, 123, 1, '2.00', 1, 0),
(247, 124, 1, '2.00', 1, 0),
(248, 125, 1, '2.00', 1, 0),
(249, 126, 1, '2.00', 1, 0),
(250, 127, 1, '2.00', 1, 0),
(251, 132, 1, '2.00', 1, 0),
(252, 133, 1, '2.00', 1, 0),
(253, 134, 1, '2.00', 1, 0),
(254, 135, 1, '2.00', 1, 0),
(255, 136, 1, '2.00', 1, 0),
(256, 137, 1, '2.00', 1, 0),
(257, 138, 1, '2.00', 1, 0),
(258, 138, 2, '1.50', 1, 0),
(259, 138, 3, '2.50', 1, 0),
(260, 138, 4, '3.00', 1, 0),
(261, 139, 1, '2.00', 1, 0),
(262, 139, 2, '1.50', 1, 0),
(263, 139, 3, '2.50', 1, 0),
(264, 139, 4, '3.00', 1, 0),
(265, 140, 2, '1.50', 1, 0),
(266, 140, 1, '2.00', 1, 0),
(267, 141, 2, '1.50', 1, 0),
(268, 141, 1, '2.00', 1, 0),
(269, 142, 2, '1.50', 1, 0),
(270, 142, 1, '2.00', 1, 0),
(271, 142, 3, '2.50', 1, 0),
(272, 142, 4, '3.00', 1, 0),
(273, 143, 2, '1.50', 1, 0),
(274, 143, 1, '2.00', 1, 0),
(275, 143, 3, '2.50', 1, 0),
(276, 143, 4, '3.00', 1, 0),
(277, 144, 2, '1.50', 1, 0),
(278, 144, 1, '2.00', 1, 0),
(279, 144, 3, '2.50', 1, 0),
(280, 144, 4, '3.00', 1, 0),
(281, 145, 2, '1.50', 1, 0),
(282, 145, 3, '2.50', 1, 0),
(283, 145, 4, '3.00', 1, 0),
(284, 145, 1, '2.00', 1, 0),
(285, 146, 2, '1.50', 1, 0),
(286, 146, 3, '2.50', 1, 0),
(287, 146, 4, '3.00', 1, 0),
(288, 146, 1, '2.00', 1, 0),
(289, 147, 2, '1.50', 1, 0),
(290, 147, 3, '2.50', 1, 0),
(291, 147, 4, '3.00', 1, 0),
(292, 147, 1, '2.00', 1, 0),
(293, 148, 1, '2.00', 1, 0),
(294, 148, 2, '1.50', 1, 0),
(295, 148, 3, '2.50', 1, 0),
(296, 148, 4, '3.00', 1, 0),
(297, 149, 1, '2.00', 1, 0),
(298, 149, 2, '1.50', 1, 0),
(299, 149, 3, '2.50', 1, 0),
(300, 149, 4, '3.00', 1, 0),
(301, 150, 1, '2.00', 1, 0),
(302, 150, 2, '1.50', 1, 0),
(303, 150, 3, '2.50', 1, 0),
(304, 150, 4, '3.00', 1, 0),
(305, 151, 1, '2.00', 1, 0),
(306, 151, 2, '1.50', 1, 0),
(307, 151, 3, '2.50', 1, 0),
(308, 151, 4, '3.00', 1, 0),
(309, 152, 2, '1.50', 1, 0),
(310, 152, 1, '2.00', 1, 0),
(311, 152, 3, '2.50', 1, 0),
(312, 152, 4, '3.00', 1, 0),
(313, 153, 2, '1.50', 1, 0),
(314, 153, 1, '2.00', 1, 0),
(315, 153, 3, '2.50', 1, 0),
(316, 153, 4, '3.00', 1, 0),
(317, 154, 1, '2.00', 1, 0),
(318, 154, 4, '3.00', 1, 0),
(319, 155, 1, '2.00', 1, 0),
(320, 155, 4, '3.00', 1, 0),
(321, 156, 1, '2.00', 1, 0),
(322, 156, 4, '3.00', 1, 0),
(323, 157, 1, '2.00', 1, 0),
(324, 157, 3, '2.50', 1, 0),
(325, 157, 4, '3.00', 1, 0),
(326, 157, 2, '1.50', 1, 0),
(327, 158, 1, '2.00', 1, 0),
(328, 159, 2, '1.50', 1, 0),
(329, 159, 3, '2.50', 1, 0),
(330, 159, 1, '2.00', 1, 0),
(331, 160, 2, '1.50', 1, 0),
(332, 160, 3, '2.50', 1, 0),
(333, 160, 1, '2.00', 1, 0),
(334, 161, 2, '1.50', 1, 0),
(335, 161, 3, '2.50', 1, 0),
(336, 161, 1, '2.00', 1, 0),
(337, 162, 2, '1.50', 1, 0),
(338, 162, 3, '2.50', 1, 0),
(339, 162, 1, '2.00', 1, 0),
(340, 163, 1, '2.00', 1, 0),
(341, 163, 2, '1.50', 1, 0),
(342, 163, 3, '2.50', 1, 0),
(343, 163, 4, '3.00', 1, 0),
(344, 164, 1, '2.00', 1, 0),
(345, 165, 1, '2.00', 1, 0),
(346, 165, 3, '2.50', 1, 0),
(347, 165, 2, '1.50', 1, 0),
(348, 166, 1, '2.00', 1, 0),
(349, 166, 3, '2.50', 1, 0),
(350, 166, 2, '1.50', 1, 0),
(351, 167, 1, '2.00', 1, 0),
(352, 168, 1, '2.00', 1, 0),
(353, 168, 2, '1.50', 1, 0),
(354, 168, 3, '2.50', 1, 0),
(355, 169, 1, '2.00', 1, 0),
(356, 169, 2, '1.50', 1, 0),
(357, 169, 3, '2.50', 1, 0),
(358, 170, 1, '2.00', 1, 0),
(359, 170, 2, '1.50', 1, 0),
(360, 170, 3, '2.50', 1, 0),
(361, 171, 1, '2.00', 1, 0),
(362, 172, 4, '3.00', 1, 0),
(363, 172, 1, '2.00', 1, 0),
(364, 172, 2, '1.50', 1, 0),
(365, 172, 3, '2.50', 1, 0),
(366, 173, 4, '3.00', 1, 0),
(367, 173, 1, '2.00', 1, 0),
(368, 173, 2, '1.50', 1, 0),
(369, 173, 3, '2.50', 1, 0),
(370, 174, 4, '3.00', 1, 0),
(371, 174, 1, '2.00', 1, 0),
(372, 174, 2, '1.50', 1, 0),
(373, 174, 3, '2.50', 1, 0),
(374, 175, 4, '3.00', 1, 0),
(375, 175, 1, '2.00', 1, 0),
(376, 175, 2, '1.50', 1, 0),
(377, 175, 3, '2.50', 1, 0),
(378, 176, 4, '3.00', 1, 0),
(379, 176, 1, '2.00', 1, 0),
(380, 176, 2, '1.50', 1, 0),
(381, 176, 3, '2.50', 1, 0),
(382, 177, 4, '3.00', 1, 0),
(383, 177, 1, '2.00', 1, 0),
(384, 177, 2, '1.50', 1, 0),
(385, 177, 3, '2.50', 1, 0),
(386, 178, 4, '3.00', 1, 0),
(387, 178, 1, '2.00', 1, 0),
(388, 178, 2, '1.50', 1, 0),
(389, 178, 3, '2.50', 1, 0),
(390, 179, 1, '2.00', 1, 0),
(391, 179, 3, '2.50', 1, 0),
(392, 180, 1, '2.00', 1, 0),
(393, 180, 4, '3.00', 1, 0),
(394, 181, 1, '2.00', 1, 0),
(395, 181, 2, '1.50', 1, 0),
(396, 181, 3, '2.50', 1, 0),
(397, 181, 4, '3.00', 1, 0),
(398, 182, 1, '2.00', 1, 0),
(399, 183, 1, '0.00', 1, 0),
(400, 184, 1, '0.00', 1, 0),
(401, 185, 2, '1.50', 1, 0),
(402, 186, 1, '0.00', 1, 0),
(403, 187, 1, '0.00', 1, 0),
(404, 188, 1, '0.00', 1, 0),
(405, 189, 1, '0.00', 1, 0),
(406, 190, 1, '0.00', 1, 0),
(407, 191, 1, '0.00', 1, 0),
(408, 191, 3, '2.50', 1, 0),
(409, 192, 1, '0.00', 1, 0),
(410, 192, 3, '2.50', 1, 0),
(411, 193, 1, '0.00', 1, 0),
(412, 193, 3, '2.50', 1, 0),
(413, 194, 1, '0.00', 1, 0),
(414, 194, 3, '2.50', 1, 0),
(415, 195, 1, '0.00', 1, 0),
(416, 195, 3, '2.50', 1, 0),
(417, 196, 1, '0.00', 1, 0),
(418, 196, 3, '2.50', 1, 0),
(419, 197, 1, '0.00', 1, 0),
(420, 197, 3, '2.50', 1, 0),
(421, 198, 1, '0.00', 1, 0),
(422, 198, 3, '2.50', 1, 0),
(423, 199, 1, '0.00', 1, 0),
(424, 199, 3, '2.50', 1, 0),
(425, 201, 2, '1.50', 1, 0),
(426, 202, 2, '1.50', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `Id_Empleados` int(11) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Contraseña` varchar(20) NOT NULL,
  `Sexo` varchar(9) NOT NULL,
  `Año_Nacimiento` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Fecha_Registro` date NOT NULL,
  `Direccion` varchar(20) NOT NULL,
  `Cedula` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`Id_Empleados`, `Nombres`, `Apellidos`, `Email`, `Contraseña`, `Sexo`, `Año_Nacimiento`, `Fecha_Registro`, `Direccion`, `Cedula`, `Telefono`) VALUES
(7, 'jose', 'campuzano', 'jose@gmail.com', '1234', 'Masculino', '2020-09-15 10:53:12', '0000-00-00', '', 0, 0),
(8, 'luis', 'Moreira', 'luis@gmail.com', '2222', 'Masculino', '2020-09-16 01:54:54', '0000-00-00', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(300) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Email` varchar(5000) NOT NULL,
  `Total` decimal(60,0) NOT NULL,
  `Status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Email`, `Total`, `Status`) VALUES
(1, '12345678910', '', '2020-08-04 20:28:50', 'josecampu28@mail.com', '500', 'pendiente'),
(2, '12345678910', '', '2020-08-04 20:28:50', 'josecampu28@mail.com', '500', 'pendiente'),
(3, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 21:42:02', 'luis@gmail.com', '4', 'pendiente'),
(4, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:07:48', 'jose@gmail.com', '4', 'pendiente'),
(5, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:09:37', 'luis@gmail.com', '4', 'pendiente'),
(6, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:17:21', 'luis@gmail.com', '4', 'pendiente'),
(7, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:19:11', 'luis@gmail.com', '4', 'pendiente'),
(8, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:29:48', 'luis@gmail.com', '4', 'pendiente'),
(9, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:31:24', 'luis@gmail.com', '4', 'pendiente'),
(10, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:31:53', 'luis@gmail.com', '4', 'pendiente'),
(11, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:32:05', 'luis@gmail.com', '4', 'pendiente'),
(12, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:36:24', 'luis@gmail.com', '4', 'pendiente'),
(13, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:40:35', 'luis@gmail.com', '4', 'pendiente'),
(14, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:42:11', 'luis@gmail.com', '4', 'pendiente'),
(15, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:43:18', 'luis@gmail.com', '4', 'pendiente'),
(16, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:48:59', 'luis@gmail.com', '4', 'pendiente'),
(17, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:56:39', 'luis@gmail.com', '4', 'pendiente'),
(18, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 22:57:51', 'luis@gmail.com', '4', 'pendiente'),
(19, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:00:07', 'luis@gmail.com', '4', 'pendiente'),
(20, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:03:49', 'luis@gmail.com', '4', 'pendiente'),
(21, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:10:34', 'luis@gmail.com', '4', 'pendiente'),
(22, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:12:49', 'luis@gmail.com', '4', 'pendiente'),
(23, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:13:07', 'luis@gmail.com', '4', 'pendiente'),
(24, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:13:34', 'luis@gmail.com', '4', 'pendiente'),
(25, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:13:57', 'luis@gmail.com', '4', 'pendiente'),
(26, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:14:42', 'luis@gmail.com', '4', 'pendiente'),
(27, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:19:01', 'luis@gmail.com', '4', 'pendiente'),
(28, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:20:49', 'luis@gmail.com', '4', 'pendiente'),
(29, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:27:24', 'luis@gmail.com', '4', 'pendiente'),
(30, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:27:52', 'luis@gmail.com', '4', 'pendiente'),
(31, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:28:07', 'luis@gmail.com', '4', 'pendiente'),
(32, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:31:13', 'luis@gmail.com', '4', 'pendiente'),
(33, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:33:41', 'luis@gmail.com', '4', 'pendiente'),
(34, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:34:24', 'luis@gmail.com', '4', 'pendiente'),
(35, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:34:41', 'luis@gmail.com', '4', 'pendiente'),
(36, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:47:08', 'luis@gmail.com', '4', 'pendiente'),
(37, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:48:39', 'luis@gmail.com', '4', 'pendiente'),
(38, '3h03c6o4qd05cst4tevorgti1i', '', '2020-08-04 23:48:47', 'jose@gmail.com', '2', 'pendiente'),
(39, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:50:11', 'luis@gmail.com', '4', 'pendiente'),
(40, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:50:59', 'luis@gmail.com', '4', 'pendiente'),
(41, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:51:16', 'luis@gmail.com', '4', 'pendiente'),
(42, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:55:08', 'luis@gmail.com', '4', 'pendiente'),
(43, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:55:47', 'luis@gmail.com', '4', 'pendiente'),
(44, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-04 23:58:49', 'luis@gmail.com', '4', 'pendiente'),
(45, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:02:51', 'luis@gmail.com', '4', 'pendiente'),
(46, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:03:56', 'luis@gmail.com', '4', 'pendiente'),
(47, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:05:36', 'luis@gmail.com', '4', 'pendiente'),
(48, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:07:05', 'luis@gmail.com', '4', 'pendiente'),
(49, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:07:50', 'luis@gmail.com', '4', 'pendiente'),
(50, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:08:33', 'luis@gmail.com', '4', 'pendiente'),
(51, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:09:10', 'luis@gmail.com', '4', 'pendiente'),
(52, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:10:42', 'luis@gmail.com', '4', 'pendiente'),
(53, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:11:13', 'luis@gmail.com', '4', 'pendiente'),
(54, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:13:12', 'luis@gmail.com', '4', 'pendiente'),
(55, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:16:07', 'luis@gmail.com', '4', 'pendiente'),
(56, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:16:33', 'luis@gmail.com', '4', 'pendiente'),
(57, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:17:10', 'luis@gmail.com', '4', 'pendiente'),
(58, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:17:21', 'luis@gmail.com', '4', 'pendiente'),
(59, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:17:42', 'luis@gmail.com', '4', 'pendiente'),
(60, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:18:05', 'luis@gmail.com', '4', 'pendiente'),
(61, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:18:49', 'luis@gmail.com', '4', 'pendiente'),
(62, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:19:18', 'luis@gmail.com', '4', 'pendiente'),
(63, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:19:36', 'luis@gmail.com', '4', 'pendiente'),
(64, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:19:59', 'luis@gmail.com', '4', 'pendiente'),
(65, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:20:45', 'luis@gmail.com', '4', 'pendiente'),
(66, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:32:54', 'luis@gmail.com', '4', 'pendiente'),
(67, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:33:57', 'luis@gmail.com', '4', 'pendiente'),
(68, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 00:36:37', 'luis@gmail.com', '4', 'pendiente'),
(69, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 01:23:31', 'luis@gmail.com', '4', 'pendiente'),
(70, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 01:23:58', 'luis@gmail.com', '4', 'pendiente'),
(71, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 02:24:11', 'luis@gmail.com', '2', 'pendiente'),
(72, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 02:25:24', 'luis@gmail.com', '2', 'pendiente'),
(73, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 02:32:10', 'luis@gmail.com', '4', 'pendiente'),
(74, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 02:33:10', 'luis@gmail.com', '4', 'pendiente'),
(75, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 02:33:25', 'luis@gmail.com', '4', 'pendiente'),
(76, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 02:33:39', 'luis@gmail.com', '4', 'pendiente'),
(77, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 02:46:14', 'luis@gmail.com', '2', 'pendiente'),
(78, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 02:53:51', 'luis@gmail.com', '2', 'pendiente'),
(79, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 02:56:17', 'luis@gmail.com', '2', 'pendiente'),
(80, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 03:04:23', 'luis@gmail.com', '2', 'pendiente'),
(81, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 03:36:08', 'luis@gmail.com', '2', 'pendiente'),
(82, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 03:44:09', 'jose@gmail.com', '4', 'pendiente'),
(83, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 03:58:07', 'luis@gmail.com', '4', 'pendiente'),
(84, 'mntucs31v80ais68pkejuq6vnu', '', '2020-08-05 08:08:09', 'luis@hotmail.com', '2', 'pendiente'),
(85, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 15:45:24', 'luis@gmail.com', '4', 'pendiente'),
(86, 'rgjh4fnts6msk5alle88ct30ba', '', '2020-08-05 15:54:54', 'luis@hotmail.com', '2', 'pendiente'),
(87, 'rgjh4fnts6msk5alle88ct30ba', '', '2020-08-05 16:17:01', 'luis@hotmail.com', '2', 'pendiente'),
(88, 'rgjh4fnts6msk5alle88ct30ba', '', '2020-08-05 16:20:17', 'luis@hotmail.com', '2', 'pendiente'),
(89, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 16:23:49', 'luis@gmail.com', '4', 'pendiente'),
(90, 'si74es8m8ggm7c13s758esq4fi', '', '2020-08-05 16:28:57', 'daitoncampuzano@gmail.com', '2', 'pendiente'),
(91, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 16:43:13', 'luis@gmail.com', '4', 'pendiente'),
(92, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 16:45:33', 'luis@gmail.com', '4', 'pendiente'),
(93, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 16:53:47', 'luis@gmail.com', '4', 'pendiente'),
(94, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 16:54:19', 'luis@gmail.com', '4', 'pendiente'),
(95, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 17:02:03', 'luis@gmail.com', '4', 'pendiente'),
(96, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 17:03:44', 'luis@gmail.com', '4', 'pendiente'),
(97, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 17:24:51', 'luis@gmail.com', '4', 'pendiente'),
(98, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 17:25:26', 'luis@gmail.com', '4', 'pendiente'),
(99, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 18:27:29', 'luis@gmail.com', '4', 'pendiente'),
(100, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 18:32:45', 'luis@gmail.com', '4', 'pendiente'),
(101, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 18:35:11', 'luis@gmail.com', '4', 'pendiente'),
(102, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 18:51:34', 'luis@gmail.com', '4', 'pendiente'),
(103, 'si74es8m8ggm7c13s758esq4fi', '', '2020-08-05 18:55:16', 'daitoncampuzano@gmail.com', '2', 'pendiente'),
(104, 'tl39csvb86ok4quunj2op0kvoc', '', '2020-08-05 19:09:02', 'sb-t1qnp2849608@business.example.com', '2', 'pendiente'),
(105, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:05:35', 'luis@gmail.com', '9', 'pendiente'),
(106, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:11:19', 'luis@gmail.com', '9', 'pendiente'),
(107, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:11:54', 'luis@gmail.com', '9', 'pendiente'),
(108, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:12:41', 'luis@gmail.com', '9', 'pendiente'),
(109, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:12:52', 'luis@gmail.com', '9', 'pendiente'),
(110, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:14:39', 'luis@gmail.com', '9', 'pendiente'),
(111, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:15:36', 'luis@gmail.com', '9', 'pendiente'),
(112, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:15:52', 'luis@gmail.com', '9', 'pendiente'),
(113, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:16:25', 'luis@gmail.com', '9', 'pendiente'),
(114, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:17:23', 'luis@gmail.com', '9', 'pendiente'),
(115, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:30:00', 'luis@gmail.com', '9', 'pendiente'),
(116, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:31:43', 'luis@gmail.com', '9', 'pendiente'),
(117, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:46:14', 'luis@gmail.com', '9', 'pendiente'),
(118, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:46:31', 'luis@gmail.com', '9', 'pendiente'),
(119, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 20:52:59', 'luis@gmail.com', '2', 'pendiente'),
(120, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 21:23:13', 'luis@gmail.com', '2', 'pendiente'),
(121, 'uthl6vjn9cuodqmmigksji358l', '', '2020-08-05 22:36:01', 'palacs10@gmail.com', '2', 'pendiente'),
(122, 'uthl6vjn9cuodqmmigksji358l', '', '2020-08-05 22:36:40', 'palacs10@gmail.com', '2', 'pendiente'),
(123, 'uthl6vjn9cuodqmmigksji358l', '', '2020-08-05 22:56:13', 'palacs10@gmail.com', '2', 'pendiente'),
(124, 'uthl6vjn9cuodqmmigksji358l', '', '2020-08-05 23:01:30', 'palacs10@gmail.com', '2', 'pendiente'),
(125, 'uthl6vjn9cuodqmmigksji358l', '', '2020-08-05 23:05:51', 'palacs10@gmail.com', '2', 'pendiente'),
(126, 'uthl6vjn9cuodqmmigksji358l', '', '2020-08-05 23:07:03', 'palacs10@gmail.com', '2', 'pendiente'),
(127, 'uthl6vjn9cuodqmmigksji358l', '', '2020-08-05 23:07:52', 'luis@hotmail.com', '2', 'pendiente'),
(128, 'ubugdppolr865l7kff13u3rl5g', '', '2020-08-05 23:34:31', 'luis@hotmail.com', '0', 'pendiente'),
(129, 'ubugdppolr865l7kff13u3rl5g', '', '2020-08-05 23:35:01', 'luis@hotmail.com', '0', 'pendiente'),
(130, 'ubugdppolr865l7kff13u3rl5g', '', '2020-08-05 23:35:44', 'luis@hotmail.com', '0', 'pendiente'),
(131, 'ubugdppolr865l7kff13u3rl5g', '', '2020-08-05 23:37:45', 'luis@hotmail.com', '0', 'pendiente'),
(132, 'ubugdppolr865l7kff13u3rl5g', '', '2020-08-05 23:40:32', 'luis@hotmail.com', '2', 'pendiente'),
(133, 'ubugdppolr865l7kff13u3rl5g', '', '2020-08-05 23:41:05', 'luis@hotmail.com', '2', 'pendiente'),
(134, 'ubugdppolr865l7kff13u3rl5g', '', '2020-08-05 23:41:31', 'luis@hotmail.com', '2', 'pendiente'),
(135, 'ubugdppolr865l7kff13u3rl5g', '', '2020-08-05 23:42:11', 'luis@hotmail.com', '2', 'pendiente'),
(136, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-05 23:42:43', 'luis@gmail.com', '2', 'pendiente'),
(137, 'ubugdppolr865l7kff13u3rl5g', '', '2020-08-05 23:59:38', 'luis@hotmail.com', '2', 'pendiente'),
(138, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-06 00:11:51', 'luis@gmail.com', '9', 'pendiente'),
(139, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-06 00:12:15', 'luis@gmail.com', '9', 'pendiente'),
(140, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-06 00:14:49', 'luis@gmail.com', '4', 'pendiente'),
(141, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-06 00:20:36', 'luis@gmail.com', '4', 'pendiente'),
(142, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-06 00:28:43', 'luis@gmail.com', '9', 'pendiente'),
(143, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-06 00:55:27', 'luis@gmail.com', '9', 'pendiente'),
(144, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-07 11:06:05', 'luis@gmail.com', '9', 'pendiente'),
(145, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-07 11:14:29', 'luis@gmail.com', '9', 'pendiente'),
(146, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-07 11:14:53', 'luis@gmail.com', '9', 'pendiente'),
(147, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-07 11:17:34', 'luis@gmail.com', '9', 'pendiente'),
(148, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-07 13:57:43', 'luis@gmail.com', '9', 'pendiente'),
(149, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-07 13:59:34', 'luis@gmail.com', '9', 'pendiente'),
(150, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-07 14:00:21', 'luis@gmail.com', '9', 'pendiente'),
(151, 'bnngbnk3a6lp1c2akiirnmkdtm', '', '2020-08-07 14:01:01', 'luis@gmail.com', '9', 'pendiente'),
(152, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 14:43:26', 'luis@gmail.com', '9', 'pendiente'),
(153, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:13:14', 'luis@gmail.com', '9', 'pendiente'),
(154, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:20:51', 'luis@gmail.com', '5', 'pendiente'),
(155, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:21:47', 'luis@gmail.com', '5', 'pendiente'),
(156, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:22:34', 'luis@gmail.com', '5', 'pendiente'),
(157, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:27:41', 'luis@gmail.com', '9', 'pendiente'),
(158, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:31:45', 'luis@gmail.com', '2', 'pendiente'),
(159, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:38:07', 'luis@gmail.com', '6', 'pendiente'),
(160, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:42:12', 'luis@gmail.com', '6', 'pendiente'),
(161, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:42:24', 'luis@gmail.com', '6', 'pendiente'),
(162, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:42:38', 'luis@gmail.com', '6', 'pendiente'),
(163, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:43:49', 'luis@gmail.com', '9', 'pendiente'),
(164, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 15:45:13', 'luis@gmail.com', '2', 'pendiente'),
(165, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 17:31:09', 'luis@gmail.com', '6', 'pendiente'),
(166, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 17:34:03', 'luis@gmail.com', '6', 'pendiente'),
(167, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 19:28:19', 'luis@gmail.com', '2', 'pendiente'),
(168, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 21:28:49', 'luis@gmail.com', '6', 'pendiente'),
(169, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 21:30:04', 'luis@gmail.com', '6', 'pendiente'),
(170, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 21:30:29', 'luis@gmail.com', '6', 'pendiente'),
(171, 'ovbd9cfsfbbo3udii0191ecm1d', '', '2020-08-07 22:06:24', 'luis@gmail.com', '2', 'pendiente'),
(172, '7uclvrvji8p8j77ta4565bu7id', '', '2020-08-10 23:31:36', 'luis@gmail.com', '9', 'pendiente'),
(173, '7uclvrvji8p8j77ta4565bu7id', '', '2020-08-10 23:32:51', 'luis@gmail.com', '9', 'pendiente'),
(174, '7uclvrvji8p8j77ta4565bu7id', '', '2020-08-10 23:33:10', 'luis@gmail.com', '9', 'pendiente'),
(175, '7uclvrvji8p8j77ta4565bu7id', '', '2020-08-10 23:35:06', 'luis@gmail.com', '9', 'pendiente'),
(176, '7uclvrvji8p8j77ta4565bu7id', '', '2020-08-10 23:35:54', 'luis@gmail.com', '9', 'pendiente'),
(177, '7uclvrvji8p8j77ta4565bu7id', '', '2020-08-10 23:36:24', 'luis@gmail.com', '9', 'pendiente'),
(178, '7uclvrvji8p8j77ta4565bu7id', '', '2020-08-10 23:36:54', 'luis@gmail.com', '9', 'pendiente'),
(179, 'vkuvit63dphk31ibu2o4df85ab', '', '2020-08-12 15:29:59', 'luis@hotmail.com', '5', 'pendiente'),
(180, 'epun86upsu84omgd06pr09icef', '', '2020-08-17 13:57:09', 'luis@gmail.com', '5', 'pendiente'),
(181, '3t7j9bd8ras0lu1n9spn3r7sns', '', '2020-08-19 08:19:12', 'luis@gmaiL.com', '9', 'pendiente'),
(182, 'g59r9na1d7ife7182l0np4pqe4', '', '2020-08-21 08:59:51', 'josecampu28@gmail.com', '2', 'pendiente'),
(183, '3t7j9bd8ras0lu1n9spn3r7sns', '', '2020-08-24 10:28:27', 'luis@gmail.com', '0', 'pendiente'),
(184, 'gcuh26mf099p0j59dl0ua3i1t2', '', '2020-09-05 23:22:37', 'luis@hotmail.com', '0', 'pendiente'),
(185, 'a32c19u2r30bvhuir8qs093h8v', '', '2020-09-08 19:27:12', 'juanicolas23@gmail.com', '2', 'pendiente'),
(186, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-09 14:49:18', 'jose@gmail.com', '0', 'pendiente'),
(187, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-14 22:38:28', 'luis@gmail.com', '0', 'pendiente'),
(188, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 00:14:04', 'luis@gmail.com', '0', 'pendiente'),
(189, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:11:46', 'luis@gmail.com', '0', 'pendiente'),
(190, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:16:30', 'luis@gmail.com', '0', 'pendiente'),
(191, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:25:10', 'luis@gmail.com', '3', 'pendiente'),
(192, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:26:19', 'luis@gmail.com', '3', 'pendiente'),
(193, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:27:02', 'luis@gmail.com', '3', 'pendiente'),
(194, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:27:41', 'luis@gmail.com', '3', 'pendiente'),
(195, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:28:23', 'luis@gmail.com', '3', 'pendiente'),
(196, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:28:46', 'luis@gmail.com', '3', 'pendiente'),
(197, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:29:42', 'luis@gmail.com', '3', 'pendiente'),
(198, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:30:15', 'luis@gmail.com', '3', 'pendiente'),
(199, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:30:53', 'luis@gmail.com', '3', 'pendiente'),
(200, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:31:53', 'luis@gmail.com', '0', 'pendiente'),
(201, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:32:06', 'luis@gmail.com', '2', 'pendiente'),
(202, '1eui1o9t5sfqmf5s76ffeceho4', '', '2020-09-15 14:32:19', 'luis@gmail.com', '2', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Cantidad` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`, `Cantidad`) VALUES
(1, 'Simples', '1.00', 'Ingredientes:\r\n\r\n- Carne picada de cerdo\r\n- Carne picada de ternera o vacuno\r\n- Cebolla\r\n- Ajo\r\n- Perejil\r\n- Sal\r\n- Pimienta molida\r\n- Huevo', 'IMAGENES/Imagen1.jpg', 0),
(2, 'Dobles', '1.50', 'tortillas de trigo o de maíz\r\n350g de carne picada de ternera o de pollo\r\n4 dientes de ajo\r\n500g de tomates\r\nsal y pimienta\r\naceite', 'https://tse2.mm.bing.net/th?id=OIP.3TIe6ich0Ija18nmFcDc-QHaE8&pid=Api&P=0&w=242&h=162', 0),
(3, 'Triples', '2.50', 'Esta hamburguesa de carne de chorizo con crujientes pajitas de cebolla es la hamburguesa perfecta de boca grande. Cubierto con salsa de barbacoa, jalapeños confitados y queso americano.', 'https://tse4.mm.bing.net/th?id=OIP.J86O-8rE6Ikwc8FYf2vzSAHaFP&pid=Api&P=0&w=277&h=197', 0),
(4, 'Especial', '3.00', 'hamburguesas, panes para hamburguesas, queso mantecoso o mozzarella, Morrón en aceite, lechuga, mayonesa, queso rallado, tomat', 'https://tse4.mm.bing.net/th?id=OIP.3jONhJfsmJYahbdD0blXngHaE8&pid=Api&P=0&w=233&h=156', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `userid` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contraseña` varchar(50) NOT NULL,
  `access` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`userid`, `Email`, `Contraseña`, `access`) VALUES
(1, 'josecampu28@gmail.com', 'admin', 'Admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_Clientes`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDFactura` (`IDFactura`),
  ADD KEY `IDProducto` (`IDProducto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`Id_Empleados`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_Clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `Id_Empleados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
