-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 09:30 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id_department` int(11) NOT NULL,
  `Department` varchar(45) NOT NULL,
  `Dep_no` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id_department`, `Department`, `Dep_no`) VALUES
(10, 'Editor', '101'),
(20, 'Research Team', '102'),
(30, 'Producer', '103'),
(40, 'Actors', '104'),
(50, 'props', '105'),
(60, 'Stage Design', '106'),
(70, 'Writers', '107'),
(80, 'Makeup and Hair', '108'),
(90, 'Stylist', '109'),
(100, 'Marketing', '110');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `id_director` int(11) NOT NULL,
  `Director` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`id_director`, `Director`) VALUES
(1, 'William Wyler'),
(2, 'Garry Marshall'),
(3, 'Gene Kelly'),
(4, 'Robert Stevenson'),
(5, 'Peter Farrelly'),
(6, 'Todd Phillips'),
(7, 'Quentin Tarantino'),
(8, 'Paul W.S. Anderson'),
(9, 'Alfred Hitchcock '),
(10, 'M.Night Shyamalan');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `genre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id_genre`, `genre`) VALUES
(1, 'Romance'),
(2, 'Romance'),
(3, 'Musical'),
(4, 'Musical'),
(5, 'Comedy'),
(6, 'Comedy'),
(7, 'Action'),
(8, 'Action'),
(9, ' Horror'),
(10, ' Horror');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id_Movie` int(11) NOT NULL,
  `Tittle` varchar(45) NOT NULL,
  `Year_released` varchar(45) NOT NULL,
  `rate_fk` int(11) NOT NULL,
  `review_fk` int(11) NOT NULL,
  `genre_fk` int(11) NOT NULL,
  `director_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id_Movie`, `Tittle`, `Year_released`, `rate_fk`, `review_fk`, `genre_fk`, `director_fk`) VALUES
(1, 'Roman Holiday', '1953', 1, 1, 1, 1),
(2, 'Pretty Woman', '1990', 2, 2, 2, 2),
(3, 'Singin\' in the Rain', '1952', 3, 3, 3, 3),
(4, 'Mary Poppins', '1964', 4, 4, 4, 4),
(5, 'Dumb and Dumber', '1994', 5, 5, 5, 5),
(6, 'The Hangover', '2009', 6, 6, 6, 6),
(7, 'Kill Bill:Volume 1', '2003', 7, 7, 7, 7),
(8, 'Resident Evil ', '2002', 8, 8, 8, 8),
(9, 'Psycho', '1960', 9, 9, 9, 9),
(10, 'The Sixth Sense', '1999', 10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `idRating` int(11) NOT NULL,
  `Rated` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`idRating`, `Rated`) VALUES
(1, 'PG'),
(2, 'PG-13'),
(3, 'PG'),
(4, 'PG'),
(5, 'PG-13'),
(6, 'R'),
(7, 'R'),
(8, 'R'),
(9, 'R'),
(10, 'PG-13');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Id_Review` int(11) NOT NULL,
  `Review` varchar(45) NOT NULL,
  `Rating` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Id_Review`, `Review`, `Rating`) VALUES
(1, 'IMBD', '8/10'),
(2, 'IMBD', '7/10'),
(3, 'Rotten Tomatoes', '100%'),
(4, 'Rotten Tomatoes', '98%'),
(5, 'IMBD', '7.3/10'),
(6, 'IMBD', '7.7/10'),
(7, 'IMBD', '8.1/10'),
(8, 'IMBD', '6.7/10'),
(9, 'Rotten Tomatoes', '96%'),
(10, 'IMBD', '8.1/10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id_department`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id_director`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id_Movie`),
  ADD KEY `rate_fk` (`rate_fk`),
  ADD KEY `review_fk` (`review_fk`),
  ADD KEY `genre_fk` (`genre_fk`),
  ADD KEY `director_fk` (`director_fk`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`idRating`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Id_Review`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`rate_fk`) REFERENCES `rating` (`idRating`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`genre_fk`) REFERENCES `genre` (`id_genre`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_ibfk_3` FOREIGN KEY (`review_fk`) REFERENCES `review` (`Id_Review`),
  ADD CONSTRAINT `movie_ibfk_4` FOREIGN KEY (`director_fk`) REFERENCES `director` (`id_director`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
