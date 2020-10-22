-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2020 a las 22:43:35
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

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
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(256) NOT NULL,
  `Img` varchar(256) NOT NULL,
  `Stock` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`Id`, `Nombre`, `Img`, `Stock`) VALUES
(1, 'Barril 50 lts ', 'img/insumos/Barril.jpg', 5),
(2, 'Conector G', 'img/insumos/ConectorG.jpg', 5),
(3, 'Lupulo ', 'img/insumos/lupulo.jpg', 5),
(4, 'Malta Chocolate', 'img/insumos/MaltaChocolate.jpg', 5),
(5, 'Malta Munich', 'img/insumos/MaltaMunich.jpg', 5),
(6, 'Equipo ollas', 'img/insumos/ollas.jpg', 4),
(7, 'Fermentador 50 lts', 'img/insumos/tachoFermentador.jpg', 5),
(8, 'Barril 30 lts', 'img/insumos/Barril30.jpg', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kolla`
--

CREATE TABLE `kolla` (
  `nombre` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `id` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `Ingredientes` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `kolla`
--

INSERT INTO `kolla` (`nombre`, `descripcion`, `id`, `imagen`, `Ingredientes`) VALUES
('Irish Red', 'La red ale, conocida también como Irish red ale, es un tipo de cerveza ale original de Irlanda. Su ligero color rojo es debido al tostado de la cebada además de la malta. Las cervezas normalmente son bajas en alcohol (3,5 % es lo típico), aunque se elaboran versiones más potentes para su exportación.', 1, 'img/CervezaRoja.jpg', '85%/Malta Base/5%/Avena/5%/Malta Caramelo/4%/Malta Cara Ambar/1%/Cebada tostada'),
('Stout Kolla', 'Stout es el nombre de un estilo de cerveza, tipo ale, muy oscura, originario de las islas británicas. Era el nombre utilizado para la cerveza más fuerte (stout), de 7 % a 8 % de alcohol por volumen, producido por cada cervecería, aunque hoy en día, hay mucha más variedad y pueden ser más dulces o secas, y de 4 % a 8 % de alcohol por volumen', 2, 'img/cervezaNegra.jpg', '85% Malta Base/5%/lúpulo Centennial/5%/Malta Caramelo/4%/Malta/Cara Ambar/1%\r\n'),
('Trigo kolla', 'La Weißbier  o también Weizenbier  es un tipo de cerveza típica de la región de Baviera, en el sur de Alemania. Se caracteriza sobre todo por ser hecha no sólo con malta de cebada sino con una elevada proporción de malta de trigo, que le da una característica tonalidad blanquecina (aspecto turbio) y un ligero sabor a vainilla.', 3, 'img/CervezaTrigo.jpeg', '80%/Malta Pilsen/5%/Malta de Trigo/4%/Irish Moss/4%/Lúpulo Cascade/7%/Levadura de Trigo'),
('Dorada Pampeana', 'La Dorada Pampeana es un estilo argentino de cerveza rubia de alta fermentación, bautizado por el reconocido cervecero artesanal, Marcelo Cerdán. Generalmente se usa sólo malta pálida, aunque también se suele incorporar entre un 3-5 % de malta caramelo para darle un tono más dorado.', 4, 'img/CervezaRubia.jpg', '80%/Malta Pilsen/10%/Biscuit/15%/Trigo malteado/5%/Malta Caramelo '),
('Cerveza Ipa', 'Se caracterizan por ser cervezas de alta graduación alcohólica (entre 5º y 7º), amargor y aroma intensos y cierta complejidad en el paladar.', 5, 'img/CervezaIpa.jpg', '80%/Malta Pilsen/10%/Biscuit/15%/Trigo malteado/5%/Malta Cara Ambar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE `testimonios` (
  `Id` int(255) NOT NULL,
  `Mensaje` varchar(256) NOT NULL,
  `Email` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`Id`, `Mensaje`, `Email`) VALUES
(1, 'Muy buena la cerveza , probamos la roja y nos parecio esquisita ', 'admin@admin'),
(12, 'muy buena la cerveza  , tuvimos la oportunidad de probarla en un evento . \nMuy buena onda de los chicos', 'manuel@gmail.com'),
(13, 'muy buena la cerveza , super recomendable', 'perez@gmail.com'),
(14, 'muy rica todo la verdad un gusto', 'lopezignacio0091@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Nombre` varchar(256) NOT NULL,
  `Apellido` varchar(256) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Id` int(11) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `Es_Admin` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Nombre`, `Apellido`, `Email`, `Id`, `Password`, `Es_Admin`) VALUES
('John', 'Doe', 'john@example.com', 1, 'pepito', b'0'),
('Admin', 'Admin', 'admin@admin', 5, 'admin', b'1'),
('Juan', 'Lopez', 'lopezignacio0091@gmail.com', 26, '123', b'0'),
('felipe', 'lopez', 'feli@gmail.com', 28, '123', b'0'),
('manuel', 'torres', 'manuel@gmail.com', 29, '123', b'0'),
('Rodolfo', 'perez', 'perez@gmail.com', 30, '123', b'0'),
('juan', 'Lopez', 'lopezignacio0091@gmail.com', 31, '1234', b'0'),
('juan', 'Lopez', 'lopezignacio0091@gmail.com', 32, '1234', b'0'),
('julian', 'lopez', 'jufelo@gmail.com', 33, '1234', b'0'),
('julian', 'lopez', 'jufelo@gmail.com', 34, '1234', b'0'),
('julian', 'lopez', 'jufelo@gmail.com', 35, '1234', b'0'),
('julian', 'lopez', 'jufelo@gmail.com', 36, '123', b'0'),
('raul', 'perez', 'raul@gmail.com', 37, '123', b'0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `kolla`
--
ALTER TABLE `kolla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `insumos`
--
ALTER TABLE `insumos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `kolla`
--
ALTER TABLE `kolla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
