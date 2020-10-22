-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2019 a las 04:30:48
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nueva`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kolla`
--

CREATE TABLE `kolla` (
  `nombre` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `id` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `kolla`
--

INSERT INTO `kolla` (`nombre`, `descripcion`, `id`, `imagen`) VALUES
('Irish Red', 'La red ale, conocida también como Irish red ale, es un tipo de cerveza ale original de Irlanda. Su ligero color rojo es debido al tostado de la cebada además de la malta. Las cervezas normalmente son bajas en alcohol (3,5 % es lo típico), aunque se elaboran versiones más potentes para su exportación.', 1, 'img/CervezaRoja.jpg'),
('Stout Kolla', 'Stout es el nombre de un estilo de cerveza, tipo ale, muy oscura, originario de las islas británicas. Era el nombre utilizado para la cerveza más fuerte (stout), de 7 % a 8 % de alcohol por volumen, producido por cada cervecería, aunque hoy en día, hay mucha más variedad y pueden ser más dulces o secas, y de 4 % a 8 % de alcohol por volumen', 2, 'img/cervezaNegra.jpg'),
('Trigo kolla', 'La Weißbier (en español, «cerveza blanca») o también Weizenbier (en español «cerveza de trigo») es un tipo de cerveza típica de la región de Baviera, en el sur de Alemania. Se caracteriza sobre todo por ser hecha no sólo con malta de cebada sino con una elevada proporción de malta de trigo, que le da una característica tonalidad blanquecina (aspecto turbio) y un ligero sabor a vainilla.', 3, 'img/CervezaTrigo.jpeg'),
('Dorada Pampeana', 'La Dorada Pampeana es un estilo argentino de cerveza rubia de alta fermentación, bautizado por el reconocido cervecero artesanal, Marcelo Cerdán. Generalmente se usa sólo malta pálida, aunque también se suele incorporar entre un 3-5 % de malta caramelo para darle un tono más dorado.', 4, 'img/CervezaRubia.jpg'),
('Cerveza Ipa', 'Se caracterizan por ser cervezas de alta graduación alcohólica (entre 5º y 7º), amargor y aroma intensos y cierta complejidad en el paladar.', 5, 'img/CervezaIpa.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `kolla`
--
ALTER TABLE `kolla`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `kolla`
--
ALTER TABLE `kolla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
