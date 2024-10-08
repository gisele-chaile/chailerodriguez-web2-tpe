-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2024 a las 13:30:11
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
-- Base de datos: `db_biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `ID_genero` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` varchar(40) NOT NULL,
  `Generos relacinados` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`ID_genero`, `id_libro`, `Nombre`, `Descripcion`, `Generos relacinados`) VALUES
(1, 6, '', '', ''),
(2, 4, '', '', ''),
(3, 8, '', '', ''),
(4, 3, '', '', ''),
(5, 2, '', '', ''),
(6, 9, '', '', ''),
(7, 5, '', '', ''),
(8, 7, '', '', ''),
(9, 1, '', '', ''),
(10, 10, '', '', ''),
(11, 11, 'Fantasia', 'En la literatura fantástica participan f', 'Ciencia ficcion'),
(12, 12, 'Policial', 'El misterio ante el hecho de un crimen e', ''),
(13, 13, 'Romance', '', ''),
(14, 14, 'Ciencia ficcion', 'la ciencia ficción es la recreación libr', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `ID_libro` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Autor` varchar(30) NOT NULL,
  `Reseña` text NOT NULL,
  `Año de publicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`ID_libro`, `Nombre`, `Autor`, `Reseña`, `Año de publicacion`) VALUES
(1, '¿Jugamos?', 'Writer Rain', 'No es conveniente provocar al ', 0),
(2, 'La pesadilla de Ichabod Crane', 'Paulette', 'Cuando el jinete sin cabeza ha', 0),
(3, 'Legado', 'Alexa Ramirez', 'Estados Unidos tiene años desa', 0),
(4, 'El reino de las hadas', 'Yuuki', 'Para Melody Lewis, la palabra ', 0),
(5, 'Llamado del corazón', 'Nathaly Paez', 'Hania es contratada para canta', 0),
(6, 'Harry Potter y la piedra filosofal', 'J. K. Rowling', 'El día de su cumpleaños, Harry', 0),
(7, 'Orgullo y prejuicio', 'Jane Austen', 'El matrimonio Bennet tiene cin', 0),
(8, 'La invención de Morel', 'Adolfo Bioy Casares ', 'La invención de Morel narra la', 0),
(9, 'A sangre fría', 'Truman Capote', 'A sangre fría narra el brutal ', 0),
(10, 'It (eso)', 'Stephen King', 'Cuenta la historia, en un jueg', 0),
(11, 'El señor de los anillos', 'J. R. R. Tolkien', '«Un Anillo para gobernarlos a todos. Un Anillo para encontrarlos, un Anillo para atraerlos a todos y atarlos en las tinieblas (…)».\r\n\r\nEn la celebración de su centésimo décimo primer cumpleaños, Bilbo Bolsón, el hobbit más famoso de la Comarca por ser uno de los pocos que ha trascendido sus fronteras, desaparece sin dejar rastro en medio de la fiesta. Legando a su sobrino Frodo todos sus bienes, Bilbo parte una vez más para acabar de escribir sus memorias.', 1954),
(12, 'Insonmie', 'Stephen King', 'Extrañas visiones pueblan las noches de insomnio de Ralph Roberts: dos enanos con batas blancas, unas tijeras en la mano, extrañas auras de colores... ¿Se está volviendo loco? ¿No es más bien víctima de una voluntad superior que le confiere poderes paranormales?', 1994),
(13, 'Labios romanticos', ' Telmo N. Vaca del Pozo', '', 1927),
(14, 'Impacto marciano', 'Harry BISWANGER', '¿Quién podría imaginar los efectos que generaría el impacto de un asteroide sobre la superficie de otro planeta que no fuera el nuestro? El equilibrio planetario se rompió y, al tiempo, las consecuencias generaron un horrísono panorama en la Tierra', 2021);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`ID_genero`),
  ADD KEY `id_libro` (`id_libro`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`ID_libro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `ID_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `ID_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `genero`
--
ALTER TABLE `genero`
  ADD CONSTRAINT `genero_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`ID_libro`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
