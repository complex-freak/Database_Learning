-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 08:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Birthday` date NOT NULL,
  `FavoriteDish` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `Email`, `Address`, `City`, `Phone`, `Birthday`, `FavoriteDish`) VALUES
(1, 'Crypto', 'Zilla', 'zilla.crypto@gmail.com', '123 Njombe', 'Dar es Salaam', '+255 784 953 866', '2002-08-15', 4),
(2, 'Daudi', 'Magembe', 'magembedo@yahoo.com', '123 makongolosi', 'Dar Es salaam', '+255 784 953 866', '2004-03-20', 9),
(3, 'Grace', 'Mae', 'gracema@gmail.com', '124 Uyole', 'Mbeya', '+255 784 953 866', '2004-11-10', 20),
(4, 'Juma', 'Edwin', 'jumaedu@gmail.com', '124 Mbalizi', 'Mbeya', '+255 784 953 866', '2004-06-15', 1),
(5, 'Mark', 'Zug', 'mamrzug@gmail.com', '128 Isyesye', 'Mbeya', '+255 784 953 866', '2000-01-03', 15),
(6, 'shuku', 'rani', 'shuku@gmail.com', '136 Mbalari', 'Mbeya', '+255 784 953 866', '2003-02-20', 2),
(7, 'Kinji', 'Kitile', 'kingkinji@yahoo.com', '123 Iringa', 'Iringa', '+255 784 953 866', '1871-12-10', 3),
(8, 'Rowan', 'Nolo', 'rowwannolo@x.com', '1338 Road', 'New York City', '+255 784 953 866', '1992-06-08', 18),
(9, 'Arnold', 'Mwasha', 'anroldmwasha@yahoo.com', '456 Mbozi', 'Mbozi', '+255 715 112233', '2009-04-13', 17),
(10, 'Ali', 'said', 'alisadid@email.com', '218 Mbezi', 'Dar Es salaam', '+255 715 112233', '2006-10-05', 5),
(11, 'Madam', 'Maratwe', 'maratwe@yahoo.com', '198 Uswahilini', 'Mtwara', '+255 715 112233', '1978-02-12', 6),
(12, 'Berlie', 'Alan', 'belishalllan.com', '629 Andromeda', 'Andromeda', '+255 715 112233', '2081-07-24', 7),
(13, 'Eli', 'Eliud', 'eliahadi@gmail.com', '24 Mbozi', 'Njombe', '+255 715 112233', '2000-11-29', 19),
(14, 'zakayo', 'Mfupi', 'zakayoshort@gmail.com', '378 Songs', 'Songea', '+255 715 112233', '2004-11-27', 1),
(15, 'Rosalia', 'Mwidege', 'rosamwidege@gmail.com', '272 princeton', 'Los Angeles', '+255 715 112233', '2007-09-10', 12),
(16, 'Osca', 'mengere', 'oscamengere.com', '383 bagamoyo', 'Kibaha', '+255 715 112233', '1995-05-25', 13),
(17, 'Enya', 'Nolo', 'enyanolo@gmail.com', '284 Rock City', 'Mwanza', '+255 715 112233', '2004-07-07', 16),
(18, 'Rich', 'Ally ', 'allyrich@sanaa.com', '234 Soweto', 'Mbeya', '+255 715 112233', '2001-02-01', 11),
(19, 'Beatrice', 'Lufingo', 'lufingobeat@gmail.com', '365 Mwambene', 'Mbeya', '+255 715 112233', '1977-06-15', 8),
(20, 'Ellen', 'Maguzu', 'ellenmaguzu@gmail.com', '654 Nanenane', 'Dodoma', '+255 715 112233', '2024-05-13', 2),
(21, 'Ableli', 'simwaba', 'abelisims@gmail.com', '128 majengo', 'Mbeya', '+255 715 112233', '2006-10-05', 5);

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `DishID` int(11) NOT NULL,
  `Quality` varchar(20) NOT NULL,
  `DishDescription` varchar(100) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`DishID`, `Quality`, `DishDescription`, `CustomerID`) VALUES
(1, 'High', 'Ugali Nyama', 1),
(2, 'Medium', 'Pilau Kavu', 2),
(3, 'Low', 'Ugali Mchicha', 3),
(4, 'High', 'Ugali Chinese', 4),
(5, 'Medium', 'Cheeseburger ', 5),
(6, 'Low', 'Burger', 6),
(7, 'High', 'Cocktail', 7),
(8, 'Medium', 'Vitumbua', 8),
(9, 'Low', 'Chai Mandazi', 9),
(10, 'High', 'Biriani', 10),
(11, 'Medium', 'Ndizi Nyama', 11),
(12, 'Low', 'Biryani', 12),
(13, 'High', 'Maharage Ya Nazi', 13),
(14, 'Medium', 'Mchuzi Wa Samaki', 14),
(15, 'Low', 'Wali Na Kuku', 15),
(16, 'High', 'Supu Ya Ndizi', 16),
(17, 'Medium', 'Kisamvu', 17),
(18, 'Low', 'Mandazi', 18),
(19, 'High', 'Nyama Ya Nguruwe', 19),
(20, 'Medium', 'Kitumbua', 20);

-- --------------------------------------------------------

--
-- Table structure for table `dishesorders`
--

CREATE TABLE `dishesorders` (
  `DishesOrdersID` int(11) NOT NULL,
  `DishID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dishesorders`
--

INSERT INTO `dishesorders` (`DishesOrdersID`, `DishID`, `OrderID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `OrderDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `OrderDate`) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-01-02'),
(3, 3, '2024-01-03'),
(4, 4, '2024-01-04'),
(5, 5, '2024-01-05'),
(6, 6, '2024-01-06'),
(7, 7, '2024-01-07'),
(8, 8, '2024-01-08'),
(9, 9, '2024-01-09'),
(10, 10, '2024-01-10'),
(11, 11, '2024-01-11'),
(12, 12, '2024-01-12'),
(13, 13, '2024-01-13'),
(14, 14, '2024-01-14'),
(15, 15, '2024-01-15'),
(16, 16, '2024-01-16'),
(17, 17, '2024-01-17'),
(18, 18, '2024-01-18'),
(19, 19, '2024-01-19'),
(20, 20, '2024-01-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `FavoriteDish` (`FavoriteDish`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`DishID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `dishesorders`
--
ALTER TABLE `dishesorders`
  ADD PRIMARY KEY (`DishesOrdersID`),
  ADD KEY `DishID` (`DishID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `DishID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dishesorders`
--
ALTER TABLE `dishesorders`
  MODIFY `DishesOrdersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`FavoriteDish`) REFERENCES `dishes` (`DishID`);

--
-- Constraints for table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);

--
-- Constraints for table `dishesorders`
--
ALTER TABLE `dishesorders`
  ADD CONSTRAINT `dishesorders_ibfk_1` FOREIGN KEY (`DishID`) REFERENCES `dishes` (`DishID`),
  ADD CONSTRAINT `dishesorders_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
