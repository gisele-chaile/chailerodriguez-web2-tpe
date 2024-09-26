-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2024 a las 00:10:18
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
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `ID_biblioteca` int(11) NOT NULL,
  `ID_libro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `ID_libro` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Autor` varchar(30) NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `Reseña` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`ID_libro`, `Nombre`, `Autor`, `Genero`, `Reseña`) VALUES
(11, '¿Jugamos?', 'Writer Rain', 'Terror', 'No es conveniente provocar al mal, aunque éste se presente como un simple juego. Víctor Stelling tuvo que aprender ésto de la peor forma posible cuando accedió a jugar a las escondidas con quien no debía por culpa de una apuesta con su mejor amigo. Se dará cuenta demasiado tarde que nada es lo que parece y tendrá que enfrentarse cara a cara contra un ente demoníaco que lo buscará para matarlo y a sus demás compañeros.'),
(12, 'La pesadilla de Ichabod Crane', 'Paulette', 'Policial', 'Cuando el jinete sin cabeza había encontrado su cabeza y regresado al infierno...todo parecía haber terminado. Pero no fue así...alguien que se quedó en el mundo de los vivos...perteneciendo a ellos...para seguir atormentando a la naciente familia de Ichabod Crane.'),
(13, 'Legado', 'Alexa Ramirez', 'Ciencia Ficcion', 'Estados Unidos tiene años desarrollando alguna manera en la cual los humanos puedan obtener habilidades poderosas, incrustándolas en el ADN sin dañar las células o la manera de reproducirse. Construyendo así en tres estados un búnker subterráneo especial para la investigación.\r\n\r\nLa idea de alterar el ADN desde el nacimiento pero después de la fecundación no parecía una idea tan mala. Colocando así seis niños por búnker, los cuales obtendrían \"kinesis\" completamente diferentes. Algunos desarrollando más después de haber obtenido la primera a su corta edad.'),
(14, 'El Reino De Las Hadas', ' Yuuki ', 'Fantasia', 'Para Melody Lewis, la palabra delicada no iba con ella. Su comportamiento le hacía vestirse de modo masculino. Su vida dio vuelta, al encontrarse con un chico herido en un callejón. Sin pensarlo dos veces, lo llevó a su casa, dandole una hospedaje.\r\nLo que ella nunca imaginó que ese chico atractivo, no era alguien normal. Sino un hada. Alguien que le cambiará todas sus teorías de la vida y le hará experimentar nuevas emociones.'),
(15, 'Llamado del Corazón', 'Nathaly Paez ', 'Romance', 'Hania es contratada para cantar en una boda, sin imaginar que el novio es su ex y padre de su hija, una niña de cinco años a la que él siempre ha negado y se ha rehusado a conocer. Ahora, obligados a convivir en el mismo rancho durante la semana previa al matrimonio, él se enfrenta a una decisión crucial: superar las dudas del pasado y escuchar el llamado de su corazón que late de manera especial cada vez que mira a esa pequeña.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`ID_biblioteca`),
  ADD KEY `ID_libro` (`ID_libro`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`ID_libro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `ID_biblioteca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `ID_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD CONSTRAINT `biblioteca_ibfk_1` FOREIGN KEY (`ID_libro`) REFERENCES `libros` (`ID_libro`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
