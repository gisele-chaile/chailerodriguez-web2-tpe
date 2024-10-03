-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2024 a las 00:58:39
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
  `id_libro` int(11) NOT NULL,
  `Género` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `biblioteca`
--

INSERT INTO `biblioteca` (`ID_biblioteca`, `id_libro`, `Género`) VALUES
(1, 6, 'Fantasía'),
(2, 4, 'Fantasía'),
(3, 8, 'Ciencia ficción'),
(4, 3, 'Ciencia ficción'),
(5, 2, 'Policial'),
(6, 9, 'Policial'),
(7, 5, 'Romance'),
(8, 7, 'Romance'),
(9, 1, 'Terror'),
(10, 10, 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `ID_libro` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Autor` varchar(30) NOT NULL,
  `Reseña` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`ID_libro`, `Nombre`, `Autor`, `Reseña`) VALUES
(1, '¿Jugamos?', 'Writer Rain', 'No es conveniente provocar al mal, aunque éste se presente como un simple juego. Víctor Stelling tuvo que aprender ésto de la peor forma posible cuando accedió a jugar a las escondidas con quien no debía por culpa de una apuesta con su mejor amigo. Se dará cuenta demasiado tarde que nada es lo que parece y tendrá que enfrentarse cara a cara contra un ente demoníaco que lo buscará para matarlo y a sus demás compañeros.'),
(2, 'La pesadilla de Ichabod Crane', 'Paulette', 'Cuando el jinete sin cabeza había encontrado su cabeza y regresado al infierno...todo parecía haber terminado. Pero no fue así...alguien que se quedó en el mundo de los vivos...perteneciendo a ellos...para seguir atormentando a la naciente familia de Ichabod Crane.'),
(3, 'Legado', 'Alexa Ramirez', 'Estados Unidos tiene años desarrollando alguna manera en la cual los humanos puedan obtener habilidades poderosas, incrustándolas en el ADN sin dañar las células o la manera de reproducirse. Construyendo así en tres estados un búnker subterráneo especial para la investigación.\r\n\r\nLa idea de alterar el ADN desde el nacimiento pero después de la fecundación no parecía una idea tan mala. Colocando así seis niños por búnker, los cuales obtendrían \"kinesis\" completamente diferentes. Algunos desarrollando más después de haber obtenido la primera a su corta edad.'),
(4, 'El reino de las hadas', 'Yuuki', 'Para Melody Lewis, la palabra delicada no iba con ella. Su comportamiento le hacía vestirse de modo masculino. Su vida dio vuelta, al encontrarse con un chico herido en un callejón. Sin pensarlo dos veces, lo llevó a su casa, dandole una hospedaje.\r\nLo que ella nunca imaginó que ese chico atractivo, no era alguien normal. Sino un hada. Alguien que le cambiará todas sus teorías de la vida y le hará experimentar nuevas emociones.'),
(5, 'Llamado del corazón', 'Nathaly Paez', 'Hania es contratada para cantar en una boda, sin imaginar que el novio es su ex y padre de su hija, una niña de cinco años a la que él siempre ha negado y se ha rehusado a conocer. Ahora, obligados a convivir en el mismo rancho durante la semana previa al matrimonio, él se enfrenta a una decisión crucial: superar las dudas del pasado y escuchar el llamado de su corazón que late de manera especial cada vez que mira a esa pequeña.'),
(6, 'Harry Potter y la piedra filosofal', 'J. K. Rowling', 'El día de su cumpleaños, Harry Potter descubre que es hijo de dos conocidos hechiceros, de los que ha heredado poderes mágicos. Debe asistir a una famosa escuela de magia y hechicería, donde entabla una amistad con dos jóvenes que se convertirán en sus compañeros de aventura. Durante su primer año en Hogwarts, descubre que un malévolo y poderoso mago llamado Voldemort está en busca de una piedra filosofal que alarga la vida de quien la posee.'),
(7, 'Orgullo y prejuicio', 'Jane Austen', 'El matrimonio Bennet tiene cinco hijas casaderas de entre 15 y 23 años. Conseguir colocarlas con un buen casamiento es la única esperanza que puede albelgar la madre, sabedora de que sus hijas perderán su escasa fortuna cuando fallezcan sus padres. La llegada de un joven y rico hacendado, Charles Bingley; revoluciona la pequeña sociedad de pretendientes. Viene acompañado de Fitzwilliam Darcy que se gana pronto fama de distante y antipático. La presencia de los dos jóvenes será el desencadenante de un torrente de pasiones que alcanzará también a Elizabeth Bennet, centro de toda la historia.'),
(8, 'La invención de Morel', 'Adolfo Bioy Casares ', 'La invención de Morel narra la historia de un fugitivo que llega a una isla aparentemente desierta tras una plaga de enfermedades en la cual acaba encontrando a un grupo de personas que lleva una vida de constante reiteración.'),
(9, 'A sangre fría', 'Truman Capote', 'A sangre fría narra el brutal asesinato de los cuatro miembros de una familia de Kansas. En 1959, un violento crimen sacudió la tranquila vida de Holcomb, Kansas. La sociedad estadounidense de aquellos años quedó conmocionada por un crimen que sugería que cualquiera podía morir asesinado en cualquier momento.\r\n'),
(10, 'It (eso)', 'Stephen King', 'Cuenta la historia, en un juego de correspondencias con el pasado y el presente, de un grupo de siete amigos que son perseguidos por una entidad sobrenatural, al que llaman «Eso», que es capaz de cambiar de forma y se alimenta principalmente del terror que produce en sus víctimas.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`ID_biblioteca`),
  ADD UNIQUE KEY `id_libro` (`id_libro`);

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
  MODIFY `ID_biblioteca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `ID_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD CONSTRAINT `biblioteca_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`ID_libro`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
