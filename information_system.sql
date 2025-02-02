-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2025 at 11:06 AM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `information_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `family_id` int(11) NOT NULL,
  `family_head_id` int(11) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`family_id`, `family_head_id`, `house_id`) VALUES
(1, 1, 1),
(2, 6, 1),
(3, 11, 2),
(4, 16, 2),
(5, 21, 3),
(6, 26, 3),
(7, 19, 4),
(8, 23, 5),
(9, 26, 5);

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `house_id` int(11) NOT NULL,
  `house_number` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `barangay` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`house_id`, `house_number`, `address`, `barangay`) VALUES
(1, '101', '101 Mango Street', 'Balibago'),
(2, '102', '102 Banana Street', 'Balibago'),
(3, '103', '103 Coconut Avenue', 'Balibago'),
(4, '104', '104 Pineapple Drive', 'Balibago'),
(5, '105', '105 Guava Road', 'Balibago');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `resident_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `family_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`resident_id`, `first_name`, `last_name`, `date_of_birth`, `occupation`, `family_id`) VALUES
(1, 'Carlos', 'Dela Cruz', '1975-08-10', 'Engineer', 1),
(2, 'Maria', 'Dela Cruz', '1978-04-25', 'Teacher', 1),
(3, 'Jorge', 'Mendoza', '1990-08-12', 'Electrician', 2),
(4, 'Bea', 'Mendoza', '1995-06-22', 'Architect', 2),
(5, 'Anna', 'Dela Cruz', '2005-06-15', 'Student', 1),
(6, 'Lola', 'Mendoza', '1950-03-12', 'Retired', 2),
(7, 'Miguel', 'Santos', '1980-11-05', 'Doctor', 3),
(8, 'Carmen', 'Santos', '1982-07-19', 'Nurse', 3),
(9, 'Samantha', 'Castro', '2001-04-17', 'Cashier', 4),
(10, 'Emmanuel', 'Castro', '1978-10-03', 'Fisherman', 4),
(11, 'Paulo', 'Santos', '2008-02-14', 'Student', 3),
(12, 'Sofia', 'Castro', '2013-09-30', 'Student', 4),
(13, 'Rafael', 'Gomez', '1970-01-20', 'Businessman', 5),
(14, 'Elena', 'Gomez', '1972-05-11', 'Housewife', 5),
(15, 'Carlo', 'Ramirez', '1993-11-28', 'Driver', 6),
(16, 'Veronica', 'Ramirez', '1996-07-14', 'Receptionist', 6),
(17, 'Marco', 'Gomez', '1998-08-30', 'Software Developer', 5),
(18, 'Monica', 'Ramirez', '2003-10-21', 'Student', 6),
(19, 'Daniel', 'Reyes', '1985-12-08', 'Chef', 7),
(20, 'Gloria', 'Reyes', '1988-06-20', 'Accountant', 7),
(21, 'Lucas', 'Reyes', '2010-07-13', 'Student', 7),
(22, 'Isabella', 'Torres', '2012-11-25', 'Student', 7),
(23, 'Fernando', 'Lopez', '1979-03-18', 'Mechanic', 8),
(24, 'Luz', 'Lopez', '1981-09-15', 'Seamstress', 8),
(25, 'Eduardo', 'Lopez', '2007-05-29', 'Student', 8),
(26, 'Rosa', 'Cruz', '1955-12-02', 'Retired', 9),
(27, 'Benjamin', 'Cruz', '1969-02-06', 'Farmer', 9),
(28, 'Oliver', 'Cruz', '2000-08-22', 'Security Guard', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`family_id`),
  ADD KEY `house_id` (`house_id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`house_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`resident_id`),
  ADD KEY `family_id` (`family_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `family_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `house_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `resident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `families`
--
ALTER TABLE `families`
  ADD CONSTRAINT `families_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`house_id`);

--
-- Constraints for table `residents`
--
ALTER TABLE `residents`
  ADD CONSTRAINT `residents_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `families` (`family_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
