-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-06-2025 a las 22:50:47
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
-- Base de datos: `moviesDB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `protagonist` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `box_office` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `title`, `protagonist`, `year`, `genre`, `box_office`) VALUES
(1, 'The Empire Strikes Back', 'Mark Hamill', 1980, 'Ciencia ficción', 538375067),
(2, 'Raiders of the Lost Ark', 'Harrison Ford', 1981, 'Aventura', 474171806),
(3, 'E.T. the Extra‑Terrestrial', 'Henry Thomas', 1982, 'Ciencia ficción', 792942069),
(4, 'Return of the Jedi', 'Mark Hamill', 1983, 'Ciencia ficción', 374200000),
(5, 'Beverly Hills Cop', 'Eddie Murphy', 1984, 'Comedia/Policíaco', 234760478),
(6, 'Back to the Future', 'Michael J. Fox', 1985, 'Ciencia ficción/Aventura', 381109762),
(7, 'Top Gun', 'Tom Cruise', 1986, 'Acción', 357463748),
(8, 'Three Men and a Baby', 'Ted Danson', 1987, 'Comedia', 167780960),
(9, 'Rain Man', 'Dustin Hoffman', 1988, 'Drama', 172825435),
(10, 'Batman', 'Michael Keaton', 1989, 'Superhéroes', 411348924),
(11, 'Home Alone', 'Macaulay Culkin', 1990, 'Comedia familiar', 285761243),
(12, 'Beauty and the Beast', 'Paige O’Hara', 1991, 'Animación musical', 204843345),
(13, 'Aladdin', 'Scott Weinger', 1992, 'Animación musical', 217350219),
(14, 'Jurassic Park', 'Sam Neill', 1993, 'Ciencia ficción/Aventura', 357067947),
(15, 'The Lion King', 'Matthew Broderick', 1994, 'Animación musical', 329694499),
(16, 'Toy Story', 'Tom Hanks', 1995, 'Animación/comedia', 191796233),
(17, 'Independence Day', 'Will Smith', 1996, 'Ciencia ficción/Acción', 306169268),
(18, 'Titanic', 'Leonardo DiCaprio', 1997, 'Drama romántico', 2201647264),
(19, 'Armageddon', 'Bruce Willis', 1998, 'Ciencia ficción/Acción', 553709788),
(20, 'Star Wars: Episode I – The Phantom Menace', 'Liam Neeson', 1999, 'Ciencia ficción', 1027082707),
(21, 'Mission: Impossible 2', 'Tom Cruise', 2000, 'Acción', NULL),
(22, 'Harry Potter and the Philosopher’s Stone', 'Daniel Radcliffe', 2001, 'Fantasía', NULL),
(23, 'The Lord of the Rings: The Two Towers', 'Elijah Wood', 2002, 'Fantasía/Aventura', NULL),
(24, 'The Lord of the Rings: The Return of the King', 'Elijah Wood', 2003, 'Fantasía/Aventura', 1142630912),
(25, 'Shrek 2', 'Mike Myers (voz)', 2004, 'Animación/Comedia', NULL),
(26, 'Harry Potter and the Goblet of Fire', 'Daniel Radcliffe', 2005, 'Fantasía', NULL),
(27, 'Pirates of the Caribbean: Dead Man’s Chest', 'Johnny Depp', 2006, 'Aventura', NULL),
(28, 'Pirates of the Caribbean: At World’s End', 'Johnny Depp', 2007, 'Aventura', NULL),
(29, 'The Dark Knight', 'Christian Bale', 2008, 'Superhéroes', 1005973645),
(30, 'Avatar', 'Sam Worthington', 2009, 'Ciencia ficción', 2847246203),
(31, 'Toy Story 3', 'Tom Hanks', 2010, 'Animación', 1066970811),
(32, 'Harry Potter and the Deathly Hallows – Part 2', 'Daniel Radcliffe', 2011, 'Fantasía', 1342321665),
(33, 'The Avengers', 'Robert Downey Jr.', 2012, 'Superhéroes', 1518815515),
(34, 'Frozen', 'Idina Menzel (voz)', 2013, 'Animación musical', 1281835246),
(35, 'Transformers: Age of Extinction', 'Mark Wahlberg', 2014, 'Acción/Sci‑Fi', 1040540720),
(36, 'Star Wars: The Force Awakens', 'Daisy Ridley', 2015, 'Ciencia ficción', 2068455677),
(37, 'Captain America: Civil War', 'Chris Evans', 2016, 'Superhéroes', 1153337496),
(38, 'Frozen II', 'Idina Menzel (voz)', 2017, 'Animación musical', 1450026933),
(39, 'Avengers: Infinity War', 'Robert Downey Jr.', 2018, 'Superhéroes', 2048359754),
(40, 'Avengers: Endgame', 'Robert Downey Jr.', 2019, 'Superhéroes', 2797501328),
(41, 'Demon Slayer: Mugen Train', 'Natsuki Hanae (voz)', 2020, 'Animación', NULL),
(42, 'Spider-Man: No Way Home', 'Tom Holland', 2021, 'Superhéroes', 1922598800),
(43, 'Avatar: The Way of Water', 'Sam Worthington', 2022, 'Ciencia ficción', 2320250281),
(44, 'Barbie', 'Margot Robbie', 2023, 'Comedia/Fantasía', 1447038421),
(45, 'Inside Out 2', 'Amy Poehler (voz)', 2024, 'Animación', 1698863816);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
