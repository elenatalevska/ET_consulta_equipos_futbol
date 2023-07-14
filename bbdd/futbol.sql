-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2023 a las 16:10:19
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `futbol`
--
CREATE DATABASE IF NOT EXISTS `futbol` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `futbol`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

DROP TABLE IF EXISTS `equipo`;
CREATE TABLE `equipo` (
  `equipo_cod` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(50) DEFAULT NULL,
  `fundacion` varchar(20) DEFAULT NULL,
  `presidente` varchar(50) DEFAULT NULL,
  `presupuesto` int(11) DEFAULT NULL,
  `equipacion` varchar(30) DEFAULT NULL,
  `foto_equipo` varchar(50) DEFAULT NULL,
  `foto_escudo` varchar(50) DEFAULT NULL,
  `pagina_web` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`equipo_cod`, `nombre`, `fundacion`, `presidente`, `presupuesto`, `equipacion`, `foto_equipo`, `foto_escudo`, `pagina_web`) VALUES
(1, 'Real Madrid', '1902', 'Florentino Pérez', 225000000, 'Blanco', 'madrid_team.jpg', 'realma.gif', 'http://www.realmadrid.com'),
(2, 'Alavés', '1921', 'Gonzalo Antón', 12000000, 'Azul y Blanca', 'henrylogo.jpg', 'alaves.gif', 'http://www.alaves.com'),
(3, 'Athletic de Bilbao', '1898', 'Javier Uría', 35000000, 'Roja y Blanca', 'bilbao_team.jpg', 'athl.gif', 'http://www.athletic-club.es'),
(4, 'F.C. Barcelona', '1899', 'Joan Gaspart', 162700000, 'Blaugrana', 'barcelona_team.jpg', 'barca.gif', 'http://www.fcbarcelona.com'),
(5, 'Real Betis', '1907', 'Manuel Ruiz de Lopera', 48000000, 'Verde y Blanca', 'betis_team.jpg', 'betis.gif', 'http://www.realbetisbalompie.es'),
(6, 'Club Celta de Vigo', '1923', 'Horacio Gómez', 33000000, 'AlbiCeleste', 'celta_team.jpg', 'celta.gif', 'http://www.celtavigo.net'),
(7, 'Deportivo de la Coruña', '1906', 'Augusto César Lendoiro', 75000000, 'BlanquiAzul', 'depor_team.jpg', 'depor.gif', 'http://www.canaldeportivo.com'),
(8, 'Club Espanyol', '1900', 'Daniel Sánchez Llibre', 26000000, 'Azul y Blanca', 'espanol_team.jpg', 'espanol.gif', 'http://www.rcdespanyol.com'),
(9, 'Atlético de Madrid', '1903', 'Enrique Cerezo', 54000000, 'RojiBlanca', 'atletico_team.jpg', 'atletico.gif', 'http://www.clubatleticodemadrid.com'),
(10, 'Las Palmas', '1949', 'Desconocido', 6000000, 'Amarillo y Azul', 'laspalmas_team.jpg', 'laspalmas.gif', 'http://www.udlaspalmas.es'),
(11, 'Málaga', '1921', 'Serafín Roldán', 24000000, 'Azul y Blanca', 'malaga_team.jpg', 'malaga.gif', 'http://www.malagacf.es'),
(12, 'Mallorca', '1916', 'Mateo Alemany', 36000000, 'Rojo y Negro', 'mallorca_team.jpg', 'mallorca.gif', 'http://www.rcdmallorca.es'),
(13, 'Osasuna', '1920', 'Patxi Izco', 13000000, 'Rojo y Negro', 'osasuna_team.jpg', 'osasu.gif', 'http://www.osasuna.es'),
(14, 'Rayo Vallecano', '1924', 'Teresa Rivero', 12000000, 'Blanco y Rojo', 'rayo_team.jpg', 'rayo.gif', 'http://www.rayovallecano.es'),
(15, 'Real Sociedad', '1909', 'José Luis Astiazarán', 35000000, 'Azul y Blanco', 'sociedad_team.jpg', 'realso.gif', 'http://www.realsociedad.com'),
(16, 'Sevilla', '1905', 'José María del Nido', 24000000, 'Rojo y Blanco', 'sevilla_team.jpg', 'sevilla.gif', 'http://www.sevillafc.es'),
(17, 'Tenerife', '1922', 'Desconocido', 21000000, 'Blanco y Azul', 'tenerife_team.jpg', 'tenerif.gif', 'http://www.cdtenerife.com'),
(18, 'Valencia', '1919', 'Jaime Ortí', 90000000, 'Blanco y Negro', 'valencia_team.jpg', 'valenci.gif', 'http://www.valenciacf.es'),
(19, 'Valladolid', '1928', 'Carlos Suárez', 18000000, 'Morado y Blanco', 'valladolid_team.jpg', 'vallad.gif', 'http://www.realvalladolid.es'),
(20, 'Real Zaragoza', '1932', 'Desconocido', 18000000, 'Blanco y Azul', 'zaragoza_team.jpg', 'zarago.gif', 'http://www.realzaragoza.com'),
(21, 'Villarreal', '1923', 'Fernando Roig', 27000000, 'Amarillo y Azul', 'villareal_team.jpg', 'villareal.gif', 'http://www.villarrealcf.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadio`
--

DROP TABLE IF EXISTS `estadio`;
CREATE TABLE `estadio` (
  `estadio_cod` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `construccion` varchar(20) DEFAULT NULL,
  `aforo` int(11) DEFAULT NULL,
  `foto_estadio` varchar(50) DEFAULT NULL,
  `equipo_cod` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadio`
--

INSERT INTO `estadio` (`estadio_cod`, `nombre`, `direccion`, `construccion`, `aforo`, `foto_estadio`, `equipo_cod`) VALUES
(22, 'MENDIZORROZA', 'P. Cervantes', '1924', 19200, 'alaves_estad.gif', 2),
(23, 'SAN MAMÉS', 'C/Felipe Serrate', '1913', 40000, 'sanmames.gif', 3),
(24, 'CAMP NOU', 'Avd. Arístides Maillol', '1957', 98600, 'campnou.gif', 4),
(25, 'RUIZ DE LOPERA', 'Avd. Heliópolis', '1929', 52500, 'emrlopera.jpg', 5),
(26, 'BALAÍDOS', 'Avd. Balaídos', '1928', 31800, 'celtaestadio.gif', 6),
(27, 'RIAZOR', 'C/ Manuel Murgia', '1944', 35600, 'riazor.gif', 7),
(28, 'OLÍMPICO LLUIS COMPANYS', 'P. Olímpico, 17', '1989', 56000, 'espanyol_est.gif', 8),
(29, 'VICENTE CALDERON', 'P. Virgen del Puerto, 67', '1966', 56163, 'calderon.jpg', 9),
(30, 'INSULAR', 'C/Felipe Serrate', '1949', 22000, 'insular.gif', 10),
(31, 'LA ROSALEDA', 'P. Martiricos', '1941', 25000, 'rosaleda.jpg', 11),
(32, 'SON MOIX', 'Camí dels Reis', '1999', 23142, 'sonmoix.jpg', 12),
(33, 'EL SADAR', 'Ctra. El Sadar', '1967', 19980, 'osasuna_est.gif', 13),
(34, 'TERESA RIVERO', 'C/Payaso Fofó', '1976', 15500, 'rayoestadio.gif', 14),
(35, 'ANOETA', 'P. Anoeta, 1', '1993', 32000, 'anoeta.gif', 15),
(36, 'SÁNCHEZ PIZJUÁN', 'Avd. Eduardo Dato', '1958', 45500, 'pizjuan.jpg', 16),
(37, 'HELIODORO RODRIGUEZ', 'C/Payaso Fofó', '1965', 25000, 'heliodoro.jpg', 17),
(38, 'MESTALLA', 'Avd, de Suecia', '1923', 49092, 'mestalla.gif', 18),
(39, 'NUEVO JOSÉ ZORRILLA', 'Avd. Mundial 82', '1982', 26512, 'zorrilla.gif', 19),
(40, 'LA ROMAREDA', 'C/Gatito Lindo', '1978', 35000, 'romareda.gif', 20),
(41, 'EL MADRIGAL', 'Blasco Ibáñez, 2', '1923', 22000, 'madrigal.jpg', 21),
(42, 'SANTIAGO BERNABEU', 'Concha Espina, 1', '1963', 78500, 'bernabeu.gif', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

DROP TABLE IF EXISTS `jugador`;
CREATE TABLE `jugador` (
  `jugador_cod` varchar(20) NOT NULL DEFAULT '',
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `demarcacion` int(11) DEFAULT NULL,
  `nacionalidad` int(11) DEFAULT NULL,
  `numero_camiseta` int(11) DEFAULT NULL,
  `calidad` int(11) DEFAULT NULL,
  `velocidad` int(11) DEFAULT NULL,
  `vision` int(11) DEFAULT NULL,
  `nombre_jugador` varchar(50) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `equipo_cod` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`jugador_cod`, `nombre`, `apellidos`, `demarcacion`, `nacionalidad`, `numero_camiseta`, `calidad`, `velocidad`, `vision`, `nombre_jugador`, `descripcion`, `equipo_cod`) VALUES
('374', 'Cristian', 'González', 3, 1, 18, 8, 8, 8, '\"KILY\" GONZALEZ', 'Normal', 18),
('257', 'Leonel', 'Fernando Gancedo', 3, 1, 23, 4, 5, 6, '\"PIPA\" GANCEDO', 'Normal', 13),
('71', 'Abelardo', 'Fernández Antuña', 1, 13, 5, 7, 7, 7, 'ABELARDO', 'Buen defensa, gran colocación, está al final de su carrera, jugador lento y duro', 4),
('439', 'Roberto', 'Miguel Acuña', 3, 25, 20, 7, 6, 8, 'ACUÑA', 'Normal', 20),
('174', 'David', 'Aganzo Mendez', 3, 13, 17, 4, 5, 5, 'AGANZO', 'Normal', 8),
('431', 'Xavier', 'Aguado Companys', 1, 13, 6, 4, 4, 4, 'AGUADO', 'Normal', 20),
('377', 'Pablo', 'Aimar', 3, 1, 21, 9, 8, 9, 'AIMAR', 'Normal', 18),
('47', 'Aitor', 'Ocio Carrion', 1, 13, 22, 5, 5, 5, 'AITOR OCIO', 'Este ni siquiera juega, eterno suplente', 3),
('371', 'David', 'Albelda Aliques', 3, 13, 6, 4, 4, 3, 'ALBELDA', 'Normal', 18),
('291', 'Alberto', 'López Fernández', 4, 13, 1, 4, 5, 6, 'ALBERTO', 'Normal', 15),
('196', 'Andrés', 'Alberto Hernández', 3, 13, 14, 5, 5, 5, 'ALBERTO', 'Normal', 10),
('268', 'Angel Luis', 'Alcazar', 1, 13, 6, 5, 4, 4, 'ALCAZAR', 'Normal', 14),
('306', 'Alberto', 'Alejandro', 3, 13, 21, 4, 5, 4, 'ALEJANDRO', 'Normal', 15),
('168', 'Alex', 'Fernández Sánchez', 3, 13, 22, 3, 5, 1, 'ALEX FERNANDEZ', 'Normal', 8),
('340', 'J.A.', 'Suarez Alexis', 1, 13, 3, 5, 5, 4, 'ALEXIS', 'Normal', 17),
('321', 'Alfonso', 'Vera', 3, 34, 21, 2, 2, 2, 'ALFONSO', 'Normal', 16),
('89', 'Alfonso', 'Pérez Muñoz', 2, 13, 20, 9, 9, 9, 'ALFONSO', 'Un gran delantero, está acabado, pero ha sido uno de los mejores en el uno contra uno, letal cerca del área', 4),
('254', 'Alfredo', 'Sánchez Benito', 3, 13, 6, 5, 4, 1, 'ALFREDO', 'Normal', 13),
('57', 'Bittor', 'Alkiza Fernández', 3, 13, 18, 7, 8, 8, 'ALKIZA', 'Al final de su carrera, gran mediocentro, buena visión de juego', 3),
('48', 'Rafael', 'Alkorta Martínez', 1, 13, 4, 7, 8, 6, 'ALKORTA', 'Defensa al final de su carrera, muy veloz y con buena calidad, ya no es lo que era', 3),
('264', 'John', 'Aloisi', 2, 2, 20, 5, 5, 5, 'ALOISI', 'Normal', 13),
('19', 'Alvaro', 'Benito Villar', 3, 13, 22, 4, 4, 4, 'ALVARO', 'Promesa del Real Madrid, ha jugado pocos minutos', 1),
('109', 'Gabriel', 'Amato', 2, 1, 9, 8, 7, 7, 'AMATO', 'Normal', 5),
('147', 'Jose Emilio', 'Amavisca', 3, 13, 11, 6, 5, 5, 'AMAVISCA', 'Normal', 7),
('417', 'Guillermo', 'Amor', 3, 13, 17, 7, 6, 7, 'AMOR', 'Normal', 21),
('69', 'Patrik', 'Andersson', 1, 31, 4, 5, 5, 5, 'ANDERSSON', 'No me acuerdo quien es', 4),
('190', 'Angel', 'López Ruano', 3, 13, 31, 1, 1, 1, 'ANGEL', 'Normal', 10),
('364', 'Jocelyn', 'Angloma', 1, 15, 20, 7, 9, 8, 'ANGLOMA', 'Normal', 18),
('378', 'Miguel Angel', 'Angulo', 2, 13, 10, 7, 8, 8, 'ANGULO', 'Normal', 18),
('348', 'Antonio', 'Hidalgo', 3, 13, 8, 4, 4, 1, 'ANTONIO', 'Normal', 17),
('394', 'Antonio', 'López Alvarez', 1, 13, 15, 3, 2, 1, 'ANTONIO LOPEZ', 'Normal', 19),
('332', 'Antoñito', 'Ramiro', 2, 13, 27, 5, 5, 5, 'ANTOÑITO', 'Normal', 16),
('440', 'Santiago', 'Aragón Martínez', 3, 13, 8, 7, 6, 8, 'ARAGON', 'Normal', 20),
('300', 'Mikel', 'Aramburu Eizaguirre', 3, 13, 11, 4, 4, 6, 'ARAMBURU', 'Normal', 15),
('293', 'Agustín', 'Aranzabal Alkorta', 1, 13, 3, 6, 7, 6, 'ARANZABAL', 'Normal', 15),
('45', 'David', 'Aranzubia Jurado', 4, 13, 25, 5, 6, 6, 'ARANZUBIA', 'Pos no tengo ni idea', 3),
('159', 'Alfredo', 'Argenso Da Silva', 4, 13, 13, 2, 3, 3, 'ARGENSO', 'Normal', 8),
('262', 'Mariano Andrés', 'Armentano', 2, 1, 11, 7, 5, 5, 'ARMENTANO', 'Normal', 13),
('202', 'Francesc', 'Arnau', 4, 13, 25, 1, 1, 1, 'ARNAU', 'Normal', 11),
('410', 'Becerri Rodolfo', 'Martín Arruabarrena', 1, 1, 3, 5, 5, 6, 'ARRUABARRENA', 'Normal', 21),
('284', 'Moisés', 'Arteaga', 3, 13, 25, 7, 7, 6, 'ARTEAGA', 'Normal', 14),
('292', 'Mattias', 'Asper', 4, 31, 13, 5, 5, 5, 'ASPER', 'Normal', 15),
('31', 'Mauricio', 'Astudillo Martín', 3, 1, 18, 5, 4, 6, 'ASTUDILLO', 'Mediocentro con bastante calidad y visión de juego', 2),
('365', 'Roberto', 'Fabián Ayala', 1, 1, 4, 9, 7, 9, 'AYALA', 'Normal', 18),
('274', 'Jorge', 'Azkoitia', 1, 13, 18, 4, 4, 5, 'AZKOITIA', 'Normal', 14),
('411', 'Sergio', 'Martinez Ballesteros', 1, 13, 23, 5, 6, 6, 'BALLESTEROS', 'Normal', 21),
('372', 'Ruben', 'Baraja Vegas', 3, 13, 8, 7, 7, 7, 'BARAJA', 'Normal', 18),
('301', 'José Javier', 'Barkero', 3, 13, 20, 4, 5, 6, 'BARKERO', 'Normal', 15),
('341', 'Federico', 'Basavilbaso', 1, 1, 23, 2, 2, 3, 'BASAVILBASO', 'Normal', 17),
('100', 'David', 'Belenguer', 3, 13, 12, 4, 4, 4, 'BELENGUER', 'Normal', 5),
('175', 'Miguel Angel', 'Benitez Pavón', 2, 13, 10, 6, 8, 6, 'BENITEZ', 'Normal', 8),
('101', 'Benjamin', 'Zarandona', 3, 13, 23, 5, 3, 5, 'BENJAMIN', 'Normal', 5),
('115', 'Magnolo', 'Eduardo Berizzo', 1, 1, 6, 5, 5, 5, 'BERIZZO', 'Normal', 6),
('342', 'David', 'Bermudo', 1, 13, 19, 2, 2, 2, 'BERMUDO', 'Normal', 17),
('412', 'Ignacio', 'Berruet', 1, 13, 4, 5, 6, 5, 'BERRUET', 'Normal', 21),
('241', 'Leonardo', 'Angel Biagini', 2, 1, 8, 6, 8, 5, 'BIAGINI', 'Normal', 12),
('349', 'Manuel', 'Albino', 3, 27, 18, 2, 2, 2, 'BINO', 'Normal', 17),
('384', 'Albano', 'Benjamin Bizarri', 4, 1, 25, 5, 7, 5, 'BIZARRI', 'Normal', 19),
('131', 'Zvonimir', 'Boban', 3, 12, 16, 9, 6, 8, 'BOBAN', 'Normal', 6),
('287', 'Elvir', 'Bolic', 2, 5, 11, 5, 4, 3, 'BOLIC', 'Normal', 14),
('288', 'Jon', 'Pérez Alonso', 2, 13, 21, 5, 4, 2, 'BOLO', 'Normal', 14),
('67', 'Roberto', 'Oscar Bonano', 4, 1, 1, 5, 7, 7, 'BONANO', 'Al final de su carrera, portero al estilo argentino, en el uno contra uno es muy bueno', 4),
('204', 'Francisco', 'Javier López', 1, 13, 3, 4, 5, 3, 'BRAVO', 'Normal', 11),
('116', 'Fernando', 'Gabriel Caceres', 1, 1, 4, 7, 5, 7, 'CACERES', 'Normal', 6),
('418', 'Diego', 'Martinez Cagna', 3, 1, 10, 5, 5, 4, 'CAGNA', 'Normal', 21),
('106', 'José', 'Calado', 3, 27, 5, 4, 4, 4, 'CALADO', 'Normal', 5),
('222', 'Pablo', 'Calandria', 2, 18, 16, 5, 6, 6, 'CALANDRIA', 'Normal', 11),
('419', 'Javier', 'Calleja', 3, 13, 22, 3, 2, 4, 'CALLEJA', 'Normal', 21),
('395', 'José Luis', 'Pérez Caminero', 3, 13, 21, 8, 5, 8, 'CAMINERO', 'Normal', 19),
('220', 'Manuel', 'Canabal', 2, 13, 24, 4, 3, 2, 'CANABAL', 'Normal', 11),
('259', 'David', 'Sánchez Cano', 3, 13, 17, 4, 4, 4, 'CANO', 'Normal', 13),
('102', 'Juan José', 'Cañas', 3, 13, 10, 5, 5, 5, 'CAÑAS', 'Normal', 5),
('361', 'Santiago', 'Cañizares Ruiz', 4, 13, 1, 7, 8, 7, 'CAÑIZARES', 'Normal', 18),
('137', 'Joan', 'Capdevilla Méndez', 1, 13, 15, 1, 1, 1, 'CAPDEVILLA', 'Normal', 7),
('103', 'Jesus', 'Capitan', 3, 13, 14, 3, 3, 3, 'CAPI', 'Normal', 5),
('366', 'Amedeo', 'Carboni', 1, 18, 15, 4, 8, 4, 'CARBONI', 'Normal', 18),
('379', 'John', 'Carew', 2, 23, 7, 6, 8, 7, 'CAREW', 'Normal', 18),
('243', 'Carlos', 'Domínguez Domínguez', 2, 13, 7, 5, 6, 5, 'CARLOS', 'Normal', 12),
('49', 'Carlos', 'García García', 1, 13, 5, 5, 5, 5, 'CARLOS GARCIA', 'Mediocentro con muy buena subida ofensiva al ataque', 3),
('110', 'Gaston', 'Casas', 2, 1, 19, 7, 7, 7, 'CASAS', 'Normal', 5),
('1', 'Iker', 'Casillas Fernández', 4, 13, 1, 9, 8, 9, 'CASILLAS', 'Portero rápido y con excelente agilidad, uno de los mejores del mundo.  Falla por arriba.', 1),
('322', 'Francisco', 'Casquero', 3, 13, 22, 5, 5, 5, 'CASQUERO', 'Normal', 16),
('104', 'Francisco Javier', 'Castaño', 3, 13, 8, 5, 3, 5, 'CASTAÑO', 'Normal', 5),
('133', 'Henrique', 'Da Silva', 2, 6, 24, 5, 8, 5, 'CATANHA', 'Normal', 6),
('113', 'Pablo', 'Cavallero Rodriguez', 4, 1, 1, 5, 2, 5, 'CAVALLERO', 'Normal', 6),
('12', 'Albert', 'Celades López', 3, 13, 20, 6, 5, 6, 'CELADES', 'Mediocentro lento, con poca calidad, pero con visión de juego y recuperador de balones', 1),
('2', 'Cesar', 'Sánchez Domínguez', 4, 13, 25, 7, 7, 6, 'CESAR', 'Segundo portero del Real Madrid, ágil, grandes reflejos, pero juega poco', 1),
('111', 'Cesar', 'De Loma', 2, 13, 11, 2, 2, 2, 'CESAR', 'Normal', 5),
('140', 'Cesar', 'Martín Villar', 1, 13, 5, 5, 5, 5, 'CESAR', 'Normal', 7),
('446', 'Carlos', 'Narciso Chainho', 3, 27, 15, 5, 4, 4, 'CHAINHO', 'Normal', 20),
('343', 'David', 'Charcos', 1, 13, 21, 4, 4, 4, 'CHARCOS', 'Normal', 17),
('396', 'José Manuel', 'Jiménez', 3, 13, 14, 4, 5, 4, 'CHEMA', 'Normal', 19),
('70', 'Philippe', 'Christanval', 1, 15, 17, 6, 5, 5, 'CHRISTANVAL', 'Fichaje penoso del barsa, ninguna calidad, poca colocación y lento, no sé de donde lo han sacado', 4),
('181', 'Zelko', 'Cicovic', 4, 35, 1, 3, 2, 1, 'CICOVIC', 'Normal', 10),
('397', 'Dragan', 'Ciric', 3, 35, 7, 4, 4, 3, 'CIRIC', 'Normal', 19),
('76', 'Philip John', 'William Cocu', 3, 17, 8, 6, 7, 5, 'COCU', 'Mediocentro con clase, sabe colocarse, pero no es redondo, lo siento barsa', 4),
('117', 'Pablo', 'Coira Lojo', 1, 13, 18, 5, 5, 5, 'COIRA', 'Normal', 6),
('27', 'Fabricio', 'Coloccini', 1, 1, 2, 6, 5, 4, 'COLOCCINI', 'Muy buen defensa argentino, colocación, calidad, rapidez y dureza sin pasarse', 2),
('201', 'Pedro', 'Contreras González', 4, 13, 13, 6, 5, 3, 'CONTRERAS', 'Normal', 11),
('269', 'Sergio', 'Corino', 1, 13, 20, 4, 4, 4, 'CORINO', 'Normal', 14),
('270', 'Jesus', 'Diego Cota', 1, 13, 2, 6, 6, 5, 'COTA', 'Normal', 14),
('425', 'Gheorghe', 'Craioveanu', 2, 28, 8, 7, 7, 7, 'CRAIOVEANU', 'Normal', 21),
('99', 'Diego', 'Crosa', 1, 13, 4, 6, 5, 5, 'CROSA', 'Normal', 5),
('248', 'César', 'Cruchaga Lasa', 1, 13, 7, 5, 6, 5, 'CRUCHAGA', 'Normal', 13),
('432', 'Carlos', 'Cuartero Laforga', 1, 13, 4, 5, 5, 5, 'CUARTERO', 'Normal', 20),
('406', 'Cuauhtemoc', 'Blanco Bravo', 2, 21, 11, 5, 2, 5, 'CUAUHTEMOC', 'Normal', 19),
('368', 'Curro', 'Torres Ruiz', 1, 13, 23, 4, 5, 4, 'CURRO TORRES', 'Normal', 18),
('351', 'Dani', 'González', 3, 13, 7, 4, 2, 2, 'DANI', 'Normal', 17),
('85', 'Daniel', 'García Lara', 2, 13, 19, 6, 6, 6, 'DANI', 'Delantero que ha destrozado su carrera', 4),
('221', 'Debray', 'Dario Silva Pereira', 2, 34, 9, 6, 7, 6, 'DARIO SILVA', 'Normal', 11),
('315', 'David', 'Castero', 1, 13, 3, 4, 4, 4, 'DAVID', 'Normal', 16),
('160', 'David', 'Garcia', 4, 13, 19, 2, 2, 2, 'DAVID GARCIA', 'Normal', 8),
('72', 'Frank', 'De Boer', 1, 17, 3, 7, 7, 7, 'DE BOER', 'Central muy rápido y con gran tiro y gol', 4),
('33', 'Sergio', 'De la Cruz Suarez', 3, 13, 27, 4, 4, 5, 'DE LA CRUZ', 'Pos no sé', 2),
('375', 'Gonzalo', 'De los Santos', 3, 34, 22, 8, 7, 8, 'DE LOS SANTOS', 'Normal', 18),
('176', 'Enrique', 'De Lucas Martinez', 2, 13, 14, 7, 6, 8, 'DE LUCAS', 'Normal', 8),
('310', 'Oscar', 'De Paula Gamero', 2, 13, 9, 5, 4, 4, 'DE PAULA', 'Normal', 15),
('302', 'Francisco Javier', 'De Pedro', 3, 13, 10, 8, 8, 9, 'DE PEDRO', 'Normal', 15),
('271', 'Ramón', 'De Quintana Dalmau', 1, 13, 4, 5, 5, 6, 'DE QUINTANA', 'Normal', 14),
('55', 'Asier', 'Del Horno Cosgaya', 1, 13, 19, 4, 4, 4, 'DEL HORNO', 'Promesa del futbol bilbaino, impetuoso', 3),
('223', 'Julio César', 'Dely Valdes', 2, 24, 7, 8, 8, 6, 'DELY VALDES', 'Normal', 11),
('311', 'Demetrdze', 'Siordd', 2, 33, 7, 3, 2, 1, 'DEMETRADZE', 'Normal', 15),
('105', 'Denilson', 'De Oliveira', 3, 6, 16, 8, 8, 8, 'DENILSON', 'Normal', 5),
('34', 'Hermes', 'Aldo Desio', 3, 1, 16, 7, 6, 5, 'DESIO', 'Brasileño estilo duro, cortador del juego', 2),
('156', 'Diego', 'Tristan Herrera', 2, 13, 9, 7, 5, 4, 'DIEGO TRISTAN', 'Normal', 7),
('149', 'Djalma', 'Feitosa Díaz', 3, 6, 8, 10, 7, 10, 'DJALMINHA', 'Normal', 7),
('138', 'Goran', 'Djorovic', 1, 35, 19, 1, 1, 1, 'DJOROVIC', 'Normal', 7),
('367', 'Miroslav', 'Djukic', 1, 35, 5, 8, 6, 7, 'DJUKIC', 'Normal', 18),
('141', 'Donato', 'Gama da Silva', 1, 6, 20, 8, 5, 6, 'DONATO', 'Normal', 7),
('122', 'Doriva', 'Guidoni Junior', 3, 6, 15, 6, 7, 6, 'DORIVA', 'Normal', 6),
('451', 'Goran', 'Drulic', 2, 35, 22, 1, 2, 2, 'DRULIC', 'Normal', 20),
('212', 'Sergio', 'Barbosa Duda', 3, 27, 22, 2, 3, 2, 'DUDA', 'Normal', 11),
('150', 'Aldo', 'Pedro Duscher', 3, 1, 23, 5, 5, 5, 'DUSCHER', 'Normal', 7),
('213', 'Edgar', 'Carvalho', 3, 27, 10, 4, 5, 2, 'EDGAR', 'Normal', 11),
('123', 'Luis', 'Eduardo Schmidt', 2, 6, 19, 7, 8, 6, 'EDÚ', 'Normal', 6),
('191', 'Edu', 'Alonso Alvarz', 3, 13, 21, 2, 1, 3, 'EDU ALONSO', 'Normal', 10),
('28', 'Dan', 'Eggen', 1, 23, 4, 5, 5, 5, 'EGGEN', 'No sé como juega con la bola', 2),
('192', 'Eloy', 'Jimenez', 3, 13, 7, 2, 3, 3, 'ELOY', 'Normal', 10),
('151', 'Emerson', 'Moisés Costa', 3, 6, 14, 2, 3, 2, 'EMERSON', 'Normal', 7),
('235', 'Vicente', 'Engonga Maté', 3, 13, 23, 6, 6, 7, 'ENGONGA', 'Normal', 12),
('420', 'Gerard', 'Revilla Escoda', 3, 13, 7, 3, 2, 1, 'ESCODA', 'Normal', 21),
('437', 'José', 'De Araujo Esquerdinha', 1, 6, 25, 2, 2, 2, 'ESQUERDINHA', 'Normal', 20),
('244', 'Samuel', 'EtoŽo', 2, 8, 9, 7, 8, 7, 'ETOÓ', 'Normal', 12),
('65', 'Joseba', 'Etxeberria Lizardi', 2, 13, 17, 7, 6, 7, 'ETXEBERRIA', 'Muy buen extremo diestro, velocidad y sabe irse en el uno contra uno, abusa mucho del regate y del balón', 3),
('266', 'Imanol', 'Etxeberria', 4, 13, 1, 4, 4, 4, 'ETXEBERRIA', 'Normal', 14),
('398', 'Eusebio', 'Sacristán Mena', 3, 13, 10, 7, 5, 5, 'EUSEBIO', 'Normal', 19),
('64', 'Santiago', 'Ezquerro Martín', 2, 13, 9, 4, 5, 4, 'EZQUERRO', 'Buen delantero, tiene calidad en el uno contra uno, es mejor pasador que goleador', 3),
('369', 'Fabio', 'Aurelio Rodrigues', 1, 6, 3, 3, 3, 3, 'FABIO AURELIO', 'Normal', 18),
('228', 'Faith', 'Akiel', 1, 32, 4, 2, 3, 3, 'FAITH', 'Normal', 12),
('58', 'Felipe', 'Gurendez Aldamondo', 3, 13, 15, 4, 4, 4, 'FELIPE', 'No sé ni quien es', 3),
('399', 'Fernando', 'Fernández Escribano', 3, 13, 24, 7, 5, 6, 'FERNANDO', 'Normal', 19),
('229', 'Fernando', 'Niño Bejarano', 1, 13, 5, 4, 3, 2, 'FERNANDO NIÑO', 'Normal', 12),
('400', 'Fernando', 'Sales de los Cobos', 3, 13, 22, 5, 4, 4, 'FERNANDO SALES', 'Normal', 19),
('206', 'Fernando', 'Sanz Durán', 1, 13, 19, 4, 4, 4, 'FERNANDO SANZ', 'Normal', 11),
('453', 'Fernando', 'Torres', 2, 13, 9, 8, 9, 8, 'FERNANDO TORRES', 'Jugador revelación en 2000, mucha velocidad y calidad', 9),
('441', 'Jordi', 'Ferrón Forné', 3, 13, 18, 6, 6, 5, 'FERRON', 'Normal', 20),
('13', 'Luis', 'Filipe Madeira', 3, 27, 10, 9, 8, 8, 'FIGO', 'Extremo derecho con un regate excelente.  gran jugador uno contra uno y muy buen centrador.  Luchador', 1),
('93', 'Julian', 'Sebastián Filipescu', 1, 28, 21, 5, 5, 5, 'FILIPESCU', 'Normal', 5),
('14', 'Flavio', 'Conceiçao', 3, 6, 16, 3, 3, 3, 'FLAVIO', 'Brasileño con buena calidad, pero no encaja el juego español, duro y buen disparo', 1),
('152', 'Francisco', 'González Pérez', 3, 13, 10, 8, 6, 9, 'FRAN', 'Normal', 7),
('162', 'Fran', 'Figueroa Alonso', 1, 13, 2, 5, 5, 5, 'FRAN', 'Normal', 8),
('323', 'Francisco', 'Lama', 3, 13, 8, 1, 1, 1, 'FRANCISCO', 'Normal', 16),
('324', 'Alfredo', 'Lobeira', 3, 13, 10, 3, 3, 3, 'FREDI', 'Normal', 16),
('303', 'Igor', 'Gabilondo del Campo', 3, 13, 17, 7, 5, 6, 'GABILONDO', 'Normal', 15),
('77', 'Gabriel', 'García de la Torre', 3, 13, 18, 3, 3, 3, 'GABRI', 'Lateral diestro con poca calidad y velocidad, no sé que hace en el barsa', 4),
('423', 'Constantino', 'Galca', 3, 28, 5, 7, 6, 5, 'GALCA', 'Normal', 21),
('333', 'Francisco', 'Gallardo', 2, 13, 7, 5, 4, 4, 'GALLARDO', 'Normal', 16),
('450', 'Luciano', 'Galleti', 2, 1, 24, 1, 1, 1, 'GALLETI', 'Normal', 20),
('413', 'Michelena', 'Jesús Galván', 1, 13, 14, 4, 5, 5, 'GALVAN', 'Normal', 21),
('442', 'Ander', 'Garitano Urquizu', 3, 13, 10, 4, 7, 7, 'GARITANO', 'Normal', 20),
('390', 'Gaspar', 'Gálvez', 1, 13, 4, 4, 5, 5, 'GASPAR', 'Normal', 19),
('90', 'Ronald', 'Gaspersic', 4, 3, 13, 4, 4, 4, 'GASPERSIC', 'Normal', 5),
('35', 'Delfi', 'Geli Roura', 3, 13, 7, 4, 4, 4, 'GELI', 'Lateral derecho con gran fuerza y velocidad. Al final de su carrera', 2),
('82', 'Geovanni', 'Deiberson Mauricio', 3, 6, 22, 1, 2, 2, 'GEOVANNI', 'Este ya no juega, brasileño y con calidad', 4),
('78', 'Gerard', 'López Segú', 3, 13, 14, 7, 5, 7, 'GERARD', 'Gran calidad y visión de juego, pero no encaja en el equipo', 4),
('214', 'Gerardo', 'García', 3, 13, 15, 4, 4, 4, 'GERARDO', 'Normal', 11),
('4', 'Geremi', 'Nitjap Fotso', 1, 8, 15, 3, 3, 3, 'GEREMI', 'Jugador con muy poca técnica, pero fuerte y veloz', 1),
('352', 'German', 'García Yanes', 3, 13, 24, 4, 5, 5, 'GERMAN', 'Normal', 17),
('124', 'Everton', 'Giovanella', 3, 6, 5, 7, 7, 8, 'GIOVANELLA', 'Normal', 6),
('290', 'Glaucio', 'De Jesús Carvalho', 2, 6, 16, 5, 2, 4, 'GLAUCIO', 'Normal', 14),
('60', 'Javier', 'Gonzalez Gómez', 3, 13, 11, 5, 5, 5, 'GONZALEZ', 'Ni idea', 3),
('421', 'Xavier', 'Gracia', 3, 13, 6, 3, 5, 4, 'GRACIA', 'Normal', 21),
('276', 'Patricio', 'Graff', 1, 1, 29, 3, 4, 2, 'GRAFF', 'Normal', 14),
('286', 'Emir', 'Granov', 2, 5, 12, 5, 4, 4, 'GRANOV', 'Normal', 14),
('427', 'Antonio', 'Guayre Betancor', 2, 13, 19, 8, 7, 8, 'GUAYRE', 'Normal', 21),
('59', 'Julen', 'Guerrero López', 3, 13, 8, 6, 5, 6, 'GUERRERO', 'Alma del Bilbao, jugador clave, poco luchador, pero con calidad, al final de su carrera', 3),
('295', 'Zuhaitz', 'Gurrutxaga Loiola', 1, 13, 15, 4, 3, 4, 'GURRUTXAGA', 'Normal', 15),
('125', 'Pablo', 'Gustavo Lopez', 3, 1, 11, 9, 7, 8, 'GUSTAVO LOPEZ', 'Normal', 6),
('15', 'Jose', 'Maria Gutierrez', 3, 13, 14, 7, 6, 6, 'GUTI', 'Mucha calidad, poco trabajo fisico pero con buena visión de juego, eterno suplente', 1),
('402', 'John', 'Harold Lozano', 3, 11, 20, 2, 6, 3, 'HAROLD LOZANO', 'Normal', 19),
('139', 'Hector', 'Berenguer del Pino', 1, 13, 24, 1, 1, 1, 'HECTOR', 'Normal', 7),
('142', 'Helder', 'Rodrigues Cristovao', 1, 27, 22, 4, 4, 4, 'HELDER', 'Normal', 7),
('277', 'Helder', 'Manuel Elias Domingo', 3, 27, 24, 4, 2, 3, 'HELDER', 'Normal', 14),
('273', 'Jean', 'Françoise Hernandez', 1, 13, 17, 5, 6, 5, 'HERNANDEZ', 'Normal', 14),
('5', 'Fernando', 'Ruiz Hierro', 1, 13, 4, 7, 5, 7, 'HIERRO', 'Jugador mayor, al final de su carrera deportiva, pero un defensa mitico', 1),
('356', 'Hugo', 'Morales', 2, 1, 10, 5, 7, 5, 'HUGO MORALES', 'Normal', 17),
('236', 'Ariel Miguel', 'Santiago Ibagaza', 3, 1, 10, 8, 7, 8, 'IBAGAZA', 'Normal', 12),
('250', 'Iban', 'Pérez Pascual', 1, 13, 3, 4, 5, 5, 'IBAN PEREZ', 'Normal', 13),
('36', 'Ibon', 'Begoña Zubiarre', 3, 13, 3, 5, 6, 5, 'IBON BEGOÑA', 'Muy buen jugador y buena calidad, muy buena llegada al área', 2),
('337', 'Ibraihm', 'Jorge Cruz', 4, 13, 25, 1, 1, 1, 'IBRAIHM', 'Normal', 17),
('304', 'Iñigo', 'Idiakez Barkaiztegui', 3, 13, 18, 7, 7, 7, 'IDIAKEZ', 'Normal', 15),
('112', 'Viktor', 'Ikpeba', 2, 22, 25, 2, 7, 4, 'IKPEBA', 'Normal', 5),
('380', 'Adrian', 'Ilie', 2, 28, 11, 8, 6, 7, 'ILIE', 'Normal', 18),
('107', 'Antonio', 'Alvarez Ito', 3, 13, 15, 7, 7, 8, 'ITO', 'Normal', 5),
('41', 'Ivan', 'Alonso', 2, 13, 19, 2, 2, 2, 'IVAN ALONSO', 'Buen delantero, sabe buscar y recuperar el balón', 2),
('6', 'Ivan', 'Campo Ramos', 1, 13, 12, 5, 5, 5, 'IVAN CAMPO', 'Destaca por su rápidez y por su dureza, poca colocación y rapidez', 1),
('167', 'Ivan', 'Diaz Ruiz', 3, 13, 21, 5, 4, 3, 'IVAN DIAZ', 'Normal', 8),
('10', 'Ivan', 'Helguera Bujía', 3, 13, 6, 9, 7, 9, 'IVAN HELGUERA', 'Gran central. Es rápido, con gran colocación y un gran rendimiento físico.  Gran calidad.', 1),
('278', 'Ivan', 'Iglesias Corteguera', 3, 13, 7, 6, 6, 6, 'IVAN IGLESIAS', 'Normal', 14),
('263', 'Ivan', 'Rosado Mojarro', 2, 13, 9, 3, 2, 2, 'IVAN ROSADO', 'Normal', 13),
('207', 'Raúl', 'Iznata Zabala', 1, 13, 6, 4, 4, 4, 'IZNATA', 'Normal', 11),
('184', 'Jaime Ramón', 'Molina Mata', 1, 13, 23, 5, 4, 4, 'JAIME MOLINA', 'Normal', 10),
('448', 'Paulo', 'Roberto', 2, 6, 3, 3, 3, 3, 'JAMELLI', 'Normal', 20),
('312', 'Edgaras', 'Jankauskas', 2, 19, 22, 3, 2, 1, 'JANKAUSKAS', 'Normal', 15),
('344', 'Javi', 'Lopez', 1, 13, 22, 2, 2, 2, 'JAVI LOPEZ', 'Normal', 17),
('316', 'Javi', 'Vicente Navarro', 1, 13, 2, 5, 4, 4, 'JAVI NAVARRO', 'Normal', 16),
('350', 'Javi', 'Venta', 3, 13, 12, 4, 2, 4, 'JAVI VENTA', 'Normal', 17),
('126', 'Jesus', 'A.Mora Nieto', 3, 13, 20, 8, 6, 5, 'JESULI', 'Normal', 6),
('401', 'Jesús', 'Sánchez Japón', 3, 13, 16, 3, 5, 3, 'JESUS', 'Normal', 19),
('108', 'Joaquin', 'Sanchez', 3, 13, 17, 6, 7, 6, 'JOAQUIN', 'Normal', 5),
('385', 'Jon', 'Ander López', 4, 13, 13, 5, 5, 5, 'JON ANDER', 'Normal', 19),
('353', 'Jorge', 'Ocaña Jordi', 3, 13, 11, 2, 3, 5, 'JORDI', 'Normal', 17),
('37', 'Jordi', 'Johan Cruiff', 3, 17, 14, 4, 4, 4, 'JORDI CRUIFF', 'Poca calidad y poco esfuerzo, está jugando por su padre.', 2),
('193', 'Jorge', 'Larena Avellaneda', 3, 13, 27, 5, 2, 3, 'JORGE', 'Normal', 10),
('424', 'Jorge', 'López Montaña', 3, 13, 18, 3, 5, 4, 'JORGE LOPEZ', 'Normal', 21),
('443', 'Jose Ignacio', 'Sáenz Marin', 3, 13, 14, 8, 7, 8, 'JOSE IGNACIO', 'Normal', 20),
('194', 'José', 'Moreno Verdú', 3, 13, 6, 3, 5, 3, 'JOSICO', 'Normal', 10),
('383', 'Juan', 'Ginés Sanchez Moreno', 2, 13, 17, 2, 1, 1, 'JUAN SANCHEZ', 'Normal', 18),
('444', 'Juan', 'Castaño Quirós', 3, 13, 7, 8, 8, 8, 'JUANELE', 'Normal', 20),
('118', 'Juan Francisco', 'García', 1, 13, 14, 7, 7, 7, 'JUANFRAN', 'Normal', 6),
('94', 'Juanito', 'Gutierrez', 1, 13, 27, 5, 5, 5, 'JUANITO', 'Normal', 5),
('429', 'Juan', 'García Inglés', 4, 13, 1, 7, 5, 6, 'JUANMI', 'Normal', 20),
('317', 'Juanmi', 'Gelabert', 1, 13, 12, 4, 5, 5, 'JUANMI', 'Normal', 16),
('339', 'Julio José', 'Iglesias Rauget', 4, 13, 13, 4, 4, 4, 'JULIO IGLESIAS', 'Normal', 17),
('249', 'Francisco Javier', 'Jusué', 1, 13, 5, 4, 4, 4, 'JUSUE', 'Normal', 13),
('7', 'Aitor', 'Karanka de la hoz', 1, 13, 18, 5, 5, 5, 'KARANKA', 'Jugador lento, pero con gran colocación en el campo, buen defensa', 1),
('56', 'David', 'Karanka', 3, 13, 21, 5, 4, 5, 'KARANKA', 'El hermano de karanka del madrid que ahora está en Bilbao, balón', 3),
('29', 'Antonio', 'Karmona Herrera', 1, 13, 5, 4, 4, 4, 'KARMONA', 'Defensa muy duro y al final de su carrera', 2),
('127', 'Valery', 'Karpin', 3, 29, 8, 7, 7, 8, 'KARPIN', 'Normal', 6),
('305', 'Dimitri', 'Khokhlov', 3, 29, 19, 5, 8, 5, 'KHOKHLOV', 'Normal', 15),
('24', 'Enrique', 'Burgos', 4, 13, 25, 2, 2, 5, 'KIKE', 'Portero promesa del futbol español, pero no acaba de encajar', 2),
('86', 'Patrick', 'Kluivert', 2, 17, 9, 10, 8, 9, 'KLUIVERT', 'Enorme calidad, poco gol, pero con enorme visión de juego y regate, uno contra uno es muy bueno', 4),
('438', 'Slobodan', 'Komljenovic', 1, 35, 5, 2, 2, 2, 'KOMLJENOVIC', 'Normal', 20),
('294', 'Bjorn', 'Tore Kvarme', 1, 23, 2, 5, 5, 4, 'KVARME', 'Normal', 15),
('50', 'Jesús María', 'Lacruz Gómez', 1, 13, 12, 4, 5, 4, 'LACRUZ', 'Defensa con poca calidad, pero es muy duro', 3),
('46', 'Iñaki', 'Lafuente Sancha', 4, 13, 1, 4, 2, 2, 'LAFUENTE', 'Es que el bilbao...', 3),
('430', 'César', 'Lainez Sanjuan', 4, 13, 13, 4, 5, 5, 'LAINEZ', 'Normal', 20),
('51', 'Iñigo', 'Larrainzar Santamaria', 1, 13, 2, 4, 6, 1, 'LARRAINZAR', 'Buen lateral, con rapidez, como debe ser', 3),
('208', 'Txomin', 'Larrainzar Santamaría', 1, 13, 21, 6, 6, 6, 'LARRAINZAR', 'Normal', 11),
('217', 'Ivan', 'Leko', 3, 12, 18, 4, 5, 4, 'LEKO', 'Normal', 11),
('255', 'Angel', 'Lekumberri García', 3, 13, 24, 2, 3, 2, 'LEKUMBERRI', 'Normal', 13),
('225', 'Leonardo', 'Franco', 4, 1, 25, 8, 7, 8, 'LEO FRANCO', 'Normal', 12),
('205', 'Carlos Manuel', 'Oliveira Litos', 1, 27, 4, 4, 5, 6, 'LITOS', 'Normal', 11),
('26', 'Carlos', 'Llorens', 1, 13, 20, 2, 2, 5, 'LLORENS', 'Lateral diestro muy duro en su juego, o pasa el jugador o el balón, nunca juntos', 2),
('309', 'Joseba', 'Llorente', 3, 13, 16, 4, 5, 5, 'LLORENTE', 'Normal', 15),
('267', 'Julen', 'Lopetegui Argote', 4, 13, 13, 4, 6, 6, 'LOPETEGUI', 'Normal', 14),
('297', 'Aitor', 'Lopez Rekarte', 1, 13, 14, 5, 6, 4, 'LOPEZ REKARTE', 'Normal', 15),
('408', 'Javier', 'López Vallejo', 4, 13, 1, 4, 5, 5, 'LOPEZ VALLEJO', 'Normal', 21),
('169', 'Alberto', 'Lopo', 3, 13, 4, 4, 5, 2, 'LOPO', 'Normal', 8),
('298', 'Lorenzo', 'Juarros García', 1, 13, 5, 4, 5, 5, 'LOREN', 'Normal', 15),
('325', 'Lorenzo', 'Del Pinto', 3, 13, 19, 4, 4, 4, 'LOREN', 'Normal', 16),
('130', 'Peter', 'Luccin', 3, 15, 22, 4, 4, 4, 'LUCCIN', 'Normal', 6),
('279', 'Luis', 'Cembranos Martínez', 3, 13, 14, 8, 6, 8, 'LUIS CEMBRANOS', 'Normal', 14),
('79', 'Luis Enrique', 'Martínez García', 3, 13, 21, 7, 8, 4, 'LUIS ENRIQUE', 'Se ha convertido en una máquina, regate, visión de juego y muy mala leche', 4),
('404', 'Luis Javier', 'García', 2, 13, 17, 4, 5, 4, 'LUIS GARCIA', 'Normal', 19),
('334', 'Luis', 'Gil Torres', 2, 13, 15, 2, 3, 3, 'LUIS GIL', 'Normal', 16),
('95', 'Luis', 'Fernandez', 1, 13, 2, 6, 5, 5, 'LUIS HERNANDEZ', 'Normal', 5),
('296', 'Luiz', 'Alberto', 1, 6, 6, 4, 6, 5, 'LUIZ ALBERTO', 'Normal', 15),
('245', 'Alberto', 'Luque Martos', 2, 13, 19, 4, 4, 1, 'LUQUE', 'Normal', 12),
('345', 'Federico', 'Lussenhoff', 1, 1, 5, 7, 5, 7, 'LUSSENHOFF', 'Normal', 17),
('43', 'Magno', 'Mocelin', 2, 6, 11, 7, 9, 5, 'MAGNO', 'Muy buen central ofensivo', 2),
('157', 'Roy', 'Makaay', 2, 17, 7, 4, 5, 6, 'MAKAAY', 'Normal', 7),
('16', 'Claude', 'Makelele', 3, 15, 24, 6, 6, 6, 'MAKELELE', 'El pulmón del mediocentro, destructor del juego y con buena colocación, además tiene calidad y visión de juego', 1),
('179', 'Manuel', 'Martinez Manel', 2, 13, 9, 5, 4, 7, 'MANEL', 'Normal', 8),
('347', 'Jose Manuel', 'Menendez', 3, 13, 6, 5, 5, 4, 'MANEL', 'Normal', 17),
('143', 'Manuel Pablo', 'García Díaz', 1, 13, 2, 6, 9, 6, 'MANUEL PABLO', 'Normal', 7),
('363', 'Carlos', 'Marchena', 1, 13, 25, 4, 4, 4, 'MARCHENA', 'Normal', 18),
('388', 'Alberto', 'Marcos Rey', 1, 13, 3, 5, 5, 5, 'MARCOS', 'Normal', 19),
('237', 'Marcos', 'Martín de la Fuente', 3, 13, 18, 5, 6, 5, 'MARCOS', 'Normal', 12),
('445', 'Marcos', 'Vales Illanes', 3, 13, 19, 7, 5, 5, 'MARCOS VALES', 'Normal', 20),
('403', 'Pedro', 'Mario Alvarez', 3, 13, 5, 5, 5, 5, 'MARIO', 'Normal', 19),
('326', 'Mario', 'Gutierrez', 3, 13, 17, 5, 5, 5, 'MARIO', 'Normal', 16),
('357', 'Bruno', 'Marioni', 2, 13, 9, 5, 7, 7, 'MARIONI', 'Normal', 17),
('354', 'Jose Luis', 'Marti', 3, 13, 17, 4, 5, 5, 'MARTI', 'Normal', 17),
('25', 'Martin', 'Horacio Herrera', 4, 1, 1, 4, 4, 8, 'MARTIN HERRERA', 'Defensa experto, al final de su carrera, rápido y duro', 2),
('178', 'Martin Andrés', 'Posse Paz', 2, 1, 11, 7, 6, 5, 'MARTIN POSSE', 'Normal', 8),
('251', 'Jose Manuel', 'Mateo Azcona', 1, 13, 4, 5, 5, 5, 'MATEO', 'Normal', 13),
('132', 'Florian', 'Maurice', 2, 15, 9, 5, 5, 5, 'MAURICE', 'Normal', 6),
('272', 'Mauro', 'García Juncal', 1, 13, 19, 5, 4, 4, 'MAURO', 'Normal', 14),
('153', 'Mauro', 'Da Silva Gómes', 3, 6, 6, 7, 4, 5, 'MAURO SILVA', 'Normal', 7),
('134', 'Benni', 'McCarthy', 2, 30, 17, 4, 4, 4, 'MCARTHY', 'Normal', 6),
('17', 'Steve', 'McManaman', 3, 16, 8, 6, 6, 6, 'MCMANAMAN', 'Jugador debil fisicamente, buenos centros, pero poca resistencia y sangre', 1),
('96', 'Juan', 'Merino', 1, 13, 6, 4, 4, 4, 'MERINO', 'Normal', 5),
('280', 'Miguel Angel', 'Sánchez', 3, 13, 8, 9, 7, 8, 'MICHEL', 'Normal', 14),
('8', 'Miguel Angel', 'Michel Salgado', 1, 13, 2, 2, 2, 2, 'MICHEL SALGADO', 'Excelente lateral, rápido, con calidad y mucha fuerza', 1),
('227', 'Miquel', 'Garro Miki', 4, 13, 13, 4, 5, 4, 'MIKI', 'Normal', 12),
('97', 'Carlos', 'Domingo', 1, 13, 3, 5, 5, 5, 'MINGO', 'Normal', 5),
('3', 'Oscar', 'Miñambres', 1, 13, 26, 6, 6, 5, 'MIÑAMBRES', 'Lateral Derecho, poca calidad, pero es veloz', 1),
('230', 'Miquel', 'Soler Sarasols', 1, 13, 3, 4, 6, 3, 'MIQUEL SOLER', 'Normal', 12),
('381', 'Miguel', 'Ferrer Mista', 2, 13, 24, 4, 5, 4, 'MISTA', 'Normal', 18),
('335', 'Moisés', 'García León', 2, 13, 16, 2, 2, 3, 'MOISES', 'Normal', 16),
('135', 'José Francisco', 'Molina Jiménez', 4, 13, 1, 7, 6, 7, 'MOLINA', 'Normal', 7),
('261', 'Ariel', 'Montenegro', 2, 1, 21, 4, 5, 5, 'MONTENEGRO', 'Normal', 13),
('161', 'Juan Luis', 'Mora Palacios', 4, 13, 1, 7, 6, 5, 'MORA', 'Normal', 8),
('170', 'Angel', 'Morales Cuevas', 3, 13, 8, 6, 7, 5, 'MORALES', 'Normal', 8),
('20', 'Fernando', 'Morientes Sánchez', 2, 13, 9, 7, 5, 6, 'MORIENTES', 'Gran delantero, luchador y con olfato de gol, jugador de área', 1),
('128', 'Alexander', 'Mostovoi', 3, 29, 10, 10, 7, 10, 'MOSTOVOI', 'Normal', 6),
('21', 'Pedro', 'Munitis Alvarez', 2, 13, 23, 2, 2, 2, 'MUNITIS', 'Jugador Tosco y con regate raro.  Poca visión de juego', 1),
('166', 'Catalin', 'Munteanu', 3, 28, 20, 4, 5, 5, 'MUNTEANU', 'Normal', 8),
('215', 'Kizito', 'Musampa', 3, 17, 11, 5, 5, 5, 'MUSAMPA', 'Normal', 11),
('182', 'Nacho', 'Gónzalez', 4, 1, 25, 5, 5, 4, 'NACHO GONZALEZ', 'Normal', 10),
('231', 'Miguel Angel', 'Nadal', 1, 13, 20, 7, 6, 7, 'NADAL', 'Normal', 12),
('163', 'Mario', 'Esteban Navas', 1, 1, 18, 4, 5, 5, 'NAVAS', 'Normal', 8),
('144', 'Nourredime', 'Naybet', 1, 20, 4, 5, 5, 5, 'NAYBET', 'Normal', 7),
('320', 'Zoran', 'Njegus', 1, 35, 5, 1, 1, 1, 'NJEGUS', 'Normal', 16),
('313', 'Antonio', 'Notario', 4, 13, 13, 3, 2, 2, 'NOTARIO', 'Normal', 16),
('238', 'Alvaro', 'Novo Ramírez', 3, 13, 16, 5, 4, 5, 'NOVO', 'Normal', 12),
('136', 'Nuno', 'Herlandes Simoes', 4, 27, 13, 5, 5, 7, 'NUNO', 'Normal', 7),
('232', 'Javier', 'Olaizola Rodríguez', 1, 13, 14, 7, 7, 7, 'OLAIZOLA', 'Normal', 12),
('252', 'Rafael', 'Olarra', 1, 10, 16, 4, 3, 4, 'OLARRA', 'Normal', 13),
('185', 'Tomás', 'Olias Gutiérrez', 1, 13, 2, 2, 3, 1, 'OLIAS', 'Normal', 10),
('327', 'Andrés', 'Nicolas Olivera', 3, 34, 11, 4, 4, 3, 'OLIVERA', 'Normal', 16),
('314', 'Frode', 'Olsen', 4, 23, 1, 5, 4, 4, 'OLSEN', 'Normal', 16),
('52', 'Pablo', 'Orbaiz Lesaca', 1, 13, 16, 5, 5, 5, 'ORBAIZ', 'Ni idea de quien es', 3),
('199', 'Orlando', 'Suarez Azofra', 2, 13, 9, 5, 3, 3, 'ORLANDO', 'Normal', 10),
('171', 'Oscar', 'García Junyent', 3, 13, 6, 7, 5, 6, 'OSCAR', 'Normal', 8),
('53', 'Oscar', 'Vales Vareta', 1, 13, 7, 7, 8, 5, 'OSCAR VALES', 'Me suena su nombre, perono tengo ni idea ahora mismo', 3),
('87', 'Marc', 'Overmars', 2, 17, 11, 8, 9, 8, 'OVERMARS', 'Extremo zurdo muy rápido, buena calidad, pero no es buen pasador, tiene gol', 4),
('38', 'Pablo', 'Gómez', 3, 13, 10, 4, 3, 2, 'PABLO', 'Pos tampoco sé', 2),
('433', 'Pablo Javier', 'Diaz Stalla', 1, 13, 16, 5, 5, 5, 'PABLO', 'Normal', 20),
('318', 'Pablo', 'Alfaro', 1, 13, 24, 4, 4, 4, 'PABLO ALFARO', 'Normal', 16),
('195', 'Pablo', 'Ballesteros Lago', 3, 13, 8, 4, 6, 6, 'PABLO LAGO', 'Normal', 10),
('346', 'Pablo', 'Paz', 1, 1, 4, 5, 2, 2, 'PABLO PAZ', 'Normal', 17),
('281', 'Pablo', 'Sanz Iniesta', 3, 13, 22, 5, 6, 5, 'PABLO SANZ', 'Normal', 14),
('434', 'Francisco', 'Jiménez Martín', 1, 13, 23, 8, 7, 8, 'PACO', 'Normal', 20),
('260', 'César', 'Palacios Chocarro', 3, 13, 8, 4, 4, 4, 'PALACIOS', 'Normal', 13),
('177', 'Juan Francisco', 'Palencia Fernandez', 2, 21, 15, 5, 6, 5, 'PALENCIA', 'Normal', 8),
('426', 'Martín', 'Palermo', 2, 1, 9, 6, 6, 5, 'PALERMO', 'Normal', 21),
('362', 'Andrés', 'Palop Cervera', 4, 13, 13, 7, 7, 7, 'PALOP', 'Normal', 18),
('158', 'Walter', 'Gerardo Pandiani', 2, 34, 17, 3, 2, 3, 'PANDIANI', 'Normal', 7),
('186', 'Francisco', 'Vera Fragoso', 1, 13, 5, 2, 1, 4, 'PAQUI', 'Normal', 10),
('242', 'Veljko', 'Paunovic', 2, 35, 17, 7, 7, 8, 'PAUNOVIC', 'Normal', 12),
('370', 'Mauricio', 'Pellegrino', 1, 1, 2, 6, 2, 5, 'PELLEGRINO', 'Normal', 18),
('389', 'Juan Manuel', 'Peña Montano', 1, 4, 2, 4, 6, 5, 'PEÑA', 'Normal', 19),
('289', 'Roberto', 'Peragón', 2, 13, 10, 4, 4, 2, 'PERAGON', 'Normal', 14),
('452', 'Alen', 'Peternac', 2, 12, 21, 1, 2, 2, 'PETERNAC', 'Normal', 20),
('358', 'Pier', 'Luigi Cherubino', 2, 13, 15, 1, 1, 1, 'PIER', 'Normal', 17),
('299', 'José Antonio', 'Pikabea Larrarte', 1, 13, 12, 5, 3, 4, 'PIKABEA', 'Normal', 15),
('114', 'Jose Manuel', 'Pinto Colorado', 4, 13, 13, 5, 6, 6, 'PINTO', 'Normal', 6),
('328', 'Inti', 'Podesta', 3, 34, 6, 4, 5, 4, 'PODESTA', 'Normal', 16),
('91', 'Tony', 'Prats', 4, 13, 1, 6, 5, 6, 'PRATS', 'Normal', 5),
('319', 'Jose Miguel', 'Prieto', 1, 13, 4, 1, 1, 1, 'PRIETO', 'Normal', 16),
('256', 'Francisco', 'Puñal', 3, 13, 10, 3, 2, 5, 'PUÑAL', 'Normal', 13),
('73', 'Carles', 'Puyol Saforcada', 1, 13, 24, 4, 7, 4, 'PUYOL', 'Promesa del Barsa, lateral muy rápido y con gran calidad, un hombre clave en la defensa del barsa', 4),
('282', 'Jose Maria', 'Quevedo Garcia', 3, 13, 9, 7, 5, 6, 'QUEVEDO', 'Normal', 14),
('414', 'Enrique', 'Carrillo', 1, 13, 15, 4, 4, 4, 'QUIQUE ALVAREZ', 'Normal', 21),
('422', 'Quique', 'Martín Sanchez', 3, 13, 11, 5, 5, 6, 'QUIQUE MARTIN', 'Normal', 21),
('203', 'Rafael', 'González Robles', 4, 13, 1, 4, 4, 4, 'RAFA', 'Normal', 11),
('187', 'Ramón', 'González Expósito', 1, 13, 3, 5, 2, 4, 'RAMON', 'Normal', 10),
('22', 'Raul', 'González Blanco', 2, 13, 7, 8, 6, 9, 'RAUL', 'El alma del equipo, buen regate, visión de juego y luchador de todos los balones.  Mucha calidad', 1),
('435', 'César Miguel', 'Rebosio Compans', 1, 26, 2, 4, 4, 4, 'REBOSO', 'Normal', 20),
('68', 'José Manuel', 'Reina Paéz', 4, 13, 13, 5, 5, 5, 'REINA', 'Promesa del barsa, pero no tiene calidad, está ahí por su papa', 4),
('74', 'Michael', 'Reiziger', 1, 17, 2, 3, 8, 3, 'REIZIGER', 'El eslabón perdido del hombre, muy feo y con gran rápidez, no es duro, pero se coloca muy bien', 4),
('386', 'Ricardo', 'López Felipe', 4, 13, 1, 4, 5, 4, 'RICARDO', 'Normal', 19),
('391', 'Pablo Javier', 'Richetti', 1, 1, 18, 7, 4, 5, 'RICHETTI', 'Normal', 19),
('88', 'Vitor', 'Borba Ferreira', 2, 6, 10, 10, 7, 9, 'RIVALDO', 'Es un crack, calidad a raudales, tiro, regate y visión de juego, pero no es Zizou y está acabado, que pena para el Barsa', 4),
('98', 'David', 'Rivas', 1, 13, 18, 5, 8, 4, 'RIVAS', 'Normal', 5),
('258', 'Gerardo', 'Damian Rivero', 3, 1, 19, 4, 5, 4, 'RIVERO', 'Normal', 13),
('226', 'Carlos', 'Angel Roa', 4, 1, 1, 8, 8, 8, 'ROA', 'Normal', 12),
('9', 'Roberto Carlos', 'da Silva', 1, 6, 3, 8, 9, 7, 'ROBERTO CARLOS', 'Lateral Izquierdo con un gran disparo y una rapidez tremenda. Muy ofensivo', 1),
('54', 'Roberto', 'Rios Patus', 1, 13, 14, 4, 5, 4, 'ROBERTO RIOS', 'Jugador al final de su carrera, mediocentro duro y no falto de clase y colocación. Lento', 3),
('239', 'Julián', 'Robles García', 3, 13, 22, 5, 6, 6, 'ROBLES', 'Normal', 12),
('80', 'Fabio', 'Rochemback', 3, 6, 15, 5, 8, 5, 'ROCHEMBACK', 'Es un asesino en el campo, jugador muy duro y con nada de calidad', 4),
('172', 'Roger', 'García Junyent', 3, 13, 24, 7, 6, 7, 'ROGER', 'Normal', 8),
('209', 'Roberto', 'Rojas González', 1, 13, 2, 4, 4, 2, 'ROJAS', 'Normal', 11),
('219', 'Clever', 'Marcelo Romero', 3, 34, 14, 4, 5, 5, 'ROMERO', 'Normal', 11),
('145', 'Enrique', 'Fernandez Romero', 1, 13, 3, 5, 6, 6, 'ROMERO', 'Normal', 7),
('164', 'Pablo Oscar', 'Rotchen', 1, 1, 3, 4, 4, 5, 'ROTCHEN', 'Normal', 8),
('210', 'Miguel Angel', 'Roteta Lopetegui', 1, 13, 5, 2, 5, 2, 'ROTETA', 'Normal', 11),
('283', 'Eric', 'Roy', 3, 15, 15, 5, 6, 5, 'ROY', 'Normal', 14),
('216', 'Francisco Javier', 'Ruano Bausán', 3, 13, 8, 1, 1, 1, 'RUANO', 'Normal', 11),
('42', 'Rubén', 'Navarro Mendez', 2, 1, 10, 6, 6, 6, 'RUBEN NAVARRO', 'Gran delantero, buena calidad', 2),
('373', 'Javier', 'Pérez Rufete', 3, 13, 19, 7, 7, 7, 'RUFETE', 'Normal', 18),
('265', 'Sabino', 'Sánchez Parra', 2, 13, 18, 5, 5, 5, 'SABINO', 'Normal', 13),
('382', 'Salvador', 'Ballesta', 2, 13, 9, 3, 2, 3, 'SALVA', 'Normal', 18),
('197', 'Vincent', 'Samways', 3, 16, 18, 4, 5, 4, 'SAMWAYS', 'Normal', 10),
('218', 'Carlos', 'Alejandro Sierra', 3, 13, 23, 7, 5, 7, 'SANDRO', 'Normal', 11),
('392', 'José Luis', 'Santamaria Buitrago', 1, 13, 6, 7, 5, 5, 'SANTAMARIA', 'Normal', 19),
('246', 'Richard', 'Sanzol', 4, 13, 1, 5, 3, 5, 'SANZOL', 'Normal', 13),
('188', 'Koldo', 'Sarasua Gamazo', 1, 13, 4, 5, 5, 5, 'SARASUA', 'Normal', 10),
('39', 'Iker', 'Sarriegui', 3, 13, 28, 5, 4, 5, 'SARRIEGUI', 'Ni idea de quien es este.', 2),
('23', 'Savio', 'Bortolini Pimentel', 2, 6, 11, 7, 8, 5, 'SAVIO', 'Zurdo brasileño con buen disparo, pero su principal característica es el regate uno contra uno', 1),
('84', 'Javier', 'Saviola', 2, 1, 7, 8, 8, 8, 'SAVIOLA', 'Jugador muy veloz y letal en el área, muy bueno en el uno contra uno', 4),
('148', 'Lionel', 'Sebastian Scaloni', 3, 1, 12, 4, 4, 4, 'SCALONI', 'Normal', 7),
('183', 'Gabi', 'Schurrer', 1, 1, 24, 4, 5, 5, 'SCHURRER', 'Normal', 10),
('198', 'Marcos', 'Sequeiros', 2, 13, 11, 3, 6, 3, 'SEQUEIROS', 'Normal', 10),
('75', 'Sergi', 'Barjuán Esclusa', 1, 13, 12, 4, 8, 3, 'SERGI', 'Jugador en el final de su carrera, rápido y ofensivo', 4),
('119', 'Sergio', 'Fernández González', 1, 13, 21, 5, 5, 5, 'SERGIO', 'Normal', 6),
('146', 'Sergio', 'González Soriano', 3, 13, 16, 6, 6, 6, 'SERGIO', 'Normal', 7),
('338', 'Sergio', 'Aragoneses', 4, 13, 1, 2, 2, 2, 'SERGIO', 'Normal', 17),
('285', 'Josep', 'Setvalls Morera', 3, 13, 23, 5, 4, 4, 'SETVALLS', 'Normal', 14),
('359', 'Igor', 'Simutenkov', 2, 29, 20, 5, 5, 5, 'SIMUTENKOV', 'Normal', 17),
('233', 'Gustavo', 'Lionel Siviero', 1, 1, 6, 5, 5, 5, 'SIVIERO', 'Normal', 12),
('355', 'Samuel', 'Slovak', 3, 9, 2, 4, 5, 5, 'SLOVAK', 'Normal', 17),
('189', 'Juan Carlos', 'Socorro', 3, 13, 10, 4, 4, 3, 'SOCORRO', 'Normal', 10),
('18', 'Santiago', 'Hernan Solari', 3, 1, 21, 8, 7, 5, 'SOLARI', 'Lateral zurdo muy luchador y con gran calidad. Buen regate, pero le falta visión de juego', 1),
('165', 'Antoni', 'Soldevilla Castellsagué', 1, 13, 5, 4, 5, 4, 'SOLDEVILLA', 'Normal', 8),
('240', 'Francisco', 'Solre Atencia', 3, 13, 15, 4, 3, 3, 'SOLER', 'Normal', 12),
('436', 'Gary', 'Sundgren', 1, 14, 22, 5, 5, 5, 'SUNDGREN', 'Normal', 20),
('329', 'José', 'Américo Taira', 3, 27, 14, 3, 2, 2, 'TAIRA', 'Normal', 16),
('92', 'Washington', 'Tais', 1, 34, 20, 5, 5, 5, 'TAIS', 'Normal', 5),
('180', 'Raúl', 'Tamudo Montero', 2, 13, 23, 7, 8, 7, 'TAMUDO', 'Normal', 8),
('307', 'Tayfun', 'Korkut', 3, 32, 8, 4, 5, 5, 'TAYFUN', 'Normal', 15),
('30', 'Oscar', 'Téllez Gómez', 1, 13, 6, 6, 7, 7, 'TELLEZ', 'Central internacional español, demasiado duro e impetuoso, no se controla', 2),
('387', 'Manuel', 'Tena López', 1, 13, 12, 4, 5, 4, 'TENA', 'Normal', 19),
('200', 'Luis', 'García Tevenet', 2, 13, 17, 5, 5, 5, 'TEVENET', 'Normal', 10),
('61', 'Roberto', 'Martinez', 3, 13, 23, 4, 4, 4, 'TIKO', 'Buena promesa española, tiene un gran disparo y calidad, sabe manejar el balón', 3),
('336', 'Mariano', 'Ramón Toedtli', 2, 1, 18, 4, 1, 1, 'TOEDTLI', 'Normal', 16),
('330', 'Tomás', 'Alberto Hervás', 3, 13, 20, 3, 2, 1, 'TOMAS', 'Normal', 16),
('393', 'Javier', 'Torres Gómez', 1, 13, 8, 4, 4, 4, 'TORRES GOMEZ', 'Normal', 19),
('407', 'Jorge', 'López Marco', 2, 13, 9, 4, 4, 4, 'TOTE', 'Normal', 19),
('81', 'Roberto', 'Trashorras', 3, 13, 27, 1, 1, 1, 'TRASHORRAS', 'Debe ser un error, ni idea de quien es', 4),
('40', 'Jesús', 'Angel Turiel', 3, 13, 21, 1, 1, 1, 'TURIEL', 'Mediapunta con poca calidad', 2),
('405', 'José Oscar', 'Turu Flores', 2, 1, 23, 8, 5, 9, 'TURU FLORES', 'Normal', 19),
('415', 'Unai', 'Vergara Diez-Caballero', 1, 13, 24, 5, 6, 5, 'UNAI', 'Normal', 21),
('409', 'Jesús', 'Unanua', 4, 13, 13, 5, 5, 5, 'UNANUA', 'Normal', 21),
('247', 'Juan Carlos', 'Unzue', 4, 13, 25, 5, 5, 5, 'UNZUE', 'Normal', 13),
('275', 'Urbano', 'Santos Palicio', 1, 13, 5, 5, 6, 5, 'URBANO', 'Normal', 14),
('62', 'Josu', 'Urrutia Tellería', 3, 13, 6, 3, 3, 3, 'URRUTIA', 'Otro más', 3),
('66', 'Ismael', 'Urzaiz Aranda', 2, 13, 20, 7, 4, 7, 'URZAIZ', 'Delantero grande y tosco, uno de los mejores jugadores de espaldas a la porteria con el balón', 3),
('129', 'Rogerio', 'Nunes Vagner', 3, 6, 7, 5, 6, 5, 'VAGNER', 'Normal', 6),
('211', 'Vicente', 'Valcarce Cano', 1, 13, 12, 1, 2, 2, 'VALCARCE', 'Normal', 11),
('154', 'Juan Carlos', 'Valeron Satana', 3, 13, 21, 9, 6, 9, 'VALERON', 'Normal', 7),
('173', 'Antonio', 'Velamazan Tejedor', 3, 13, 7, 7, 7, 6, 'VELAMAZAN', 'Normal', 8),
('120', 'Juan', 'Velasco Damas', 1, 13, 2, 5, 5, 5, 'VELASCO', 'Normal', 6),
('447', 'Martín', 'Vellisca González', 2, 13, 11, 1, 2, 2, 'VELLISCA', 'Normal', 20),
('376', 'Vicente', 'Rodriguez Guillen', 3, 13, 14, 9, 8, 9, 'VICENTE', 'Normal', 18),
('234', 'Vicente', 'Fernández', 3, 13, 21, 6, 6, 3, 'VICENTE', 'Normal', 12),
('155', 'Victor', 'Sanchéz del Amo', 2, 13, 18, 7, 8, 8, 'VICTOR', 'Normal', 7),
('331', 'Victor', 'Salas', 3, 13, 9, 4, 4, 4, 'VICTOR', 'Normal', 16),
('428', 'Victor', 'Fernandez Gutierrez', 2, 13, 21, 5, 8, 5, 'VICTOR', 'Normal', 21),
('44', 'Jurica', 'Vucko', 2, 12, 23, 4, 7, 4, 'VUCKO', 'Quien es este?', 2),
('32', 'Richard', 'Witschge', 3, 17, 22, 8, 7, 7, 'WITSCHGE', 'Holandes al final de su carrera, gran calidad y muy buena visión de juego.', 2),
('308', 'Xabi', 'Alonso', 3, 13, 4, 5, 4, 1, 'XABI ALONSO', 'Normal', 15),
('83', 'Xavier', 'Hernández Creus', 3, 13, 6, 2, 2, 2, 'XAVI', 'Catalán que intenta emular a guardiola, cosa imposible, no maneja mal el balón', 4),
('416', 'Xavi', 'Roca Mateo', 1, 13, 20, 4, 5, 6, 'XAVI ROCA', 'Normal', 21),
('360', 'Francisco', 'Muñoz Xisco', 2, 13, 14, 5, 5, 4, 'XISCO', 'Normal', 17),
('121', 'Yago', 'Alonso-Fueyo Saco', 1, 7, 23, 6, 5, 6, 'YAGO', 'Normal', 6),
('253', 'Jose Manuel', 'Yanguas Calleja', 1, 13, 2, 5, 4, 4, 'YANGUAS', 'Normal', 13),
('63', 'Francisco', 'J.Yeste Navarro', 3, 13, 10, 4, 4, 4, 'YESTE', 'Buen mediapunta, poca calidad en el uno contra uno, pero tiene visión de juego', 3),
('449', 'Jorge', 'González Díaz', 2, 13, 9, 1, 1, 1, 'YORDI', 'Normal', 20),
('224', 'Ariel Silvio', 'Zarate Riga', 2, 1, 20, 7, 8, 7, 'ZARATE', 'Normal', 11),
('11', 'Zinedine', 'Zidane', 3, 15, 5, 10, 8, 10, 'ZIDANE', 'El mejor jugador del mundo.  Tiene clase, regate, visión de juego y calidad.  Es un artista del balón.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

DROP TABLE IF EXISTS `nacionalidad`;
CREATE TABLE `nacionalidad` (
  `nac_cod` varchar(20) NOT NULL DEFAULT '',
  `nacionalidad` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`nac_cod`, `nacionalidad`) VALUES
('1', 'ARGENTINA'),
('2', 'AUSTRALIA'),
('3', 'BELGICA'),
('4', 'BOLIVIA'),
('5', 'BOSNIA'),
('6', 'BRASIL'),
('7', 'COSTA DE MARFIL'),
('8', 'CAMERUN'),
('9', 'REPUBLICA CHECA'),
('10', 'CHILE'),
('11', 'COLOMBIA'),
('12', 'CROACIA'),
('13', 'ESPAÑA'),
('14', 'FINLANDIA'),
('15', 'FRANCIA'),
('16', 'INGLATERRA'),
('17', 'HOLANDA'),
('18', 'ITALIA'),
('19', 'LITUANIA'),
('20', 'MARRUECOS'),
('21', 'MEXICO'),
('22', 'NIGERIA'),
('23', 'NORUEGA'),
('24', 'PANAMA'),
('25', 'PARAGUAY'),
('26', 'PERU'),
('27', 'PORTUGAL'),
('28', 'RUMANIA'),
('29', 'RUSIA'),
('30', 'SUDAFRICA'),
('31', 'SUECIA'),
('32', 'TURQUIA'),
('33', 'UKRANIA'),
('34', 'URUGUAY'),
('35', 'YUGOSLAVIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posicion`
--

DROP TABLE IF EXISTS `posicion`;
CREATE TABLE `posicion` (
  `cod_demarc` varchar(20) NOT NULL DEFAULT '',
  `demarcacion` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `posicion`
--

INSERT INTO `posicion` (`cod_demarc`, `demarcacion`) VALUES
('1', 'DEFENSA'),
('2', 'DELANTERO'),
('3', 'MEDIO'),
('4', 'PORTERO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`equipo_cod`);

--
-- Indices de la tabla `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`estadio_cod`),
  ADD KEY `equipo_cod` (`equipo_cod`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`jugador_cod`),
  ADD KEY `equipo_cod` (`equipo_cod`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`nac_cod`);

--
-- Indices de la tabla `posicion`
--
ALTER TABLE `posicion`
  ADD PRIMARY KEY (`cod_demarc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
