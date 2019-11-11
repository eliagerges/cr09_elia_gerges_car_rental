-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 02:00 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_elia_gerges_carrental`
--
CREATE DATABASE IF NOT EXISTS `cr09_elia_gerges_carrental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr09_elia_gerges_carrental`;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `car_colour` varchar(55) DEFAULT NULL,
  `car_brand` varchar(55) DEFAULT NULL,
  `car_insurance_nr` int(11) DEFAULT NULL,
  `car_descrption` text DEFAULT NULL,
  `year_of_producing` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `car_colour`, `car_brand`, `car_insurance_nr`, `car_descrption`, `year_of_producing`) VALUES
(1, 'Black', 'BMW', 148629, NULL, '2017-05-08 00:00:00'),
(2, 'Red', 'Alfa Romeo', 854665, NULL, '2018-09-15 00:00:00'),
(3, 'Green', 'Audi', 6816910, NULL, '2018-03-15 00:00:00'),
(4, 'Blue', 'BMW', 548915, NULL, '2017-02-01 00:00:00'),
(5, 'Blue', 'Audi', 2828523, NULL, '2019-11-06 00:00:00'),
(6, 'White', 'Honda', 4548415, NULL, '2019-07-23 00:00:00'),
(7, 'Green', 'BMW', 578462, NULL, '2018-07-16 00:00:00'),
(8, 'Brown', 'Alfa Romeo', 444815, NULL, '2018-09-19 00:00:00'),
(9, 'White', 'BMW', 245896, NULL, '2019-06-21 00:00:00'),
(10, 'Blue', 'Honda', 482268, NULL, '2016-04-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `car_sold`
--

DROP TABLE IF EXISTS `car_sold`;
CREATE TABLE `car_sold` (
  `car_out_id` int(11) NOT NULL,
  `car_sold` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_sold`
--

INSERT INTO `car_sold` (`car_out_id`, `car_sold`) VALUES
(1, 1),
(2, 1),
(4, 6),
(5, 7),
(3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `surname` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `phon_number` varchar(55) DEFAULT NULL,
  `gender` varchar(55) DEFAULT NULL,
  `title` varchar(55) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `e_card` int(11) DEFAULT NULL,
  `pass_number` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `surname`, `email`, `phon_number`, `gender`, `title`, `date_of_birth`, `e_card`, `pass_number`, `address_id`) VALUES
(1, 'Elia', 'Gerges', 'noelgarjava@gmail.com', '06645874582', 'm', 'MA', '1981-10-24 00:00:00', 5489, 2545, 1),
(2, 'Jo', 'Mardien', 'jo.mardine@gmail.com', '1254495262', 'm', 'BA', '2000-11-21 00:00:00', 2145, 5157, 2),
(3, 'Nekiollte', 'Nuze', 'nekioltte.nuze@hotmail.com', '64526659', 'F', 'MA', '1988-01-21 00:00:00', 2678, 1477, 3),
(4, 'Cristian', 'Cernavca', 'cc231291@gmail.com', '66985485', 'm', 'MA', '1999-02-10 00:00:00', 5477, 65494, 4),
(5, 'Marieta', 'Mozart', 'marieta.mozart@gmail.com', '66547824785', 'F', 'BA', '1984-11-06 00:00:00', 4586, 6998, 5);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
CREATE TABLE `customer_address` (
  `address_id` int(11) NOT NULL,
  `city` varchar(55) DEFAULT NULL,
  `street` varchar(55) DEFAULT NULL,
  `ZIP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`address_id`, `city`, `street`, `ZIP`) VALUES
(1, 'Vienna', 'Grillgasse 4/18', 1110),
(2, 'Vienna', 'Herrengasse', 1115),
(3, 'Vienna', 'davidgasse', 1110),
(4, 'Vienna', 'Grillgasse 5/9', 1110),
(5, 'Vienna', 'Gasometer 8', 1110);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `e_department_id` int(10) NOT NULL,
  `department_name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`e_department_id`, `department_name`) VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'PR'),
(4, 'HR'),
(5, 'Accounting'),
(6, 'legal depatment');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `First_name` varchar(55) DEFAULT NULL,
  `surname` varchar(55) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `gender` varchar(55) DEFAULT NULL,
  `age` varchar(55) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `e_card` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `fk_employee_position_id` int(11) DEFAULT NULL,
  `fk_e_address_id` int(11) DEFAULT NULL,
  `fk_e_warning_id` int(11) DEFAULT NULL,
  `fk_e_vacation_id` int(11) DEFAULT NULL,
  `fk_e_department_id` int(11) DEFAULT NULL,
  `fk_e_education_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `First_name`, `surname`, `phone_number`, `gender`, `age`, `start`, `e_card`, `salary`, `fk_employee_position_id`, `fk_e_address_id`, `fk_e_warning_id`, `fk_e_vacation_id`, `fk_e_department_id`, `fk_e_education_id`) VALUES
(1, 'Majd', 'Majdien', 66654545, 'm', '25', '2000-01-02 00:00:00', 5555, 2400, 6, 1, NULL, 1, 5, 4),
(2, 'Maria', 'Mariain', 66958582, 'F', '45', '2000-02-02 00:00:00', 2252, 2800, 2, 2, NULL, 2, 4, 3),
(3, 'Kamal', 'Nur', 6698685, 'm', '30', '2000-02-02 00:00:00', 4585, 2800, 5, 3, 1, 3, 3, 2),
(4, 'Majda', 'Gerges', 6987452, 'F', '35', '2000-02-02 00:00:00', 2521, 2800, 4, 4, NULL, 4, 2, 2),
(5, 'Monika', 'Kim', 67485214, 'F', '39', '2000-02-02 00:00:00', 8885, 2800, 1, 5, NULL, 5, 1, 1),
(6, 'Christ', 'Cernavca', 676398265, 'm', '27', '2000-02-02 00:00:00', 6485, 2800, 3, 3, NULL, 6, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `employee_address`
--

DROP TABLE IF EXISTS `employee_address`;
CREATE TABLE `employee_address` (
  `e_address_id` int(11) NOT NULL,
  `city` varchar(55) DEFAULT NULL,
  `street` varchar(55) DEFAULT NULL,
  `ZIP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_address`
--

INSERT INTO `employee_address` (`e_address_id`, `city`, `street`, `ZIP`) VALUES
(1, 'Vienna', 'Grillgasse', 1110),
(2, 'Vienna', 'Gasometer 9', 1110),
(3, 'Vienna', 'stephanplatz', 1010),
(4, 'Vienna', 'Reomanplatz', 1100),
(5, 'Vienna', 'Gasometer ', 1110);

-- --------------------------------------------------------

--
-- Table structure for table `employee_education`
--

DROP TABLE IF EXISTS `employee_education`;
CREATE TABLE `employee_education` (
  `e_education_id` int(10) NOT NULL,
  `education_name` varchar(55) DEFAULT NULL,
  `education_title` varchar(55) DEFAULT NULL,
  `university_type` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_education`
--

INSERT INTO `employee_education` (`e_education_id`, `education_name`, `education_title`, `university_type`) VALUES
(1, 'sales', 'BA', 'FH'),
(2, 'marketing', 'BA', 'WU'),
(3, 'Law', 'BA', 'WU'),
(4, 'economic', 'BA', 'WU');

-- --------------------------------------------------------

--
-- Table structure for table `employee_position`
--

DROP TABLE IF EXISTS `employee_position`;
CREATE TABLE `employee_position` (
  `employee_position_id` int(11) NOT NULL,
  `current_position` varchar(55) DEFAULT NULL,
  `since` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_position`
--

INSERT INTO `employee_position` (`employee_position_id`, `current_position`, `since`) VALUES
(1, 'sales manager', '2010-11-13 00:00:00'),
(2, 'HR manager', '2008-11-14 00:00:00'),
(3, 'Legal department manager', '2012-11-13 00:00:00'),
(4, 'Marketing manager', '2008-11-14 00:00:00'),
(5, 'PR manager', '2012-02-14 00:00:00'),
(6, 'accounting manager', '2014-01-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee_vacation`
--

DROP TABLE IF EXISTS `employee_vacation`;
CREATE TABLE `employee_vacation` (
  `e_vacation_id` int(10) NOT NULL,
  `e_vacation_per_year` int(11) DEFAULT NULL,
  `e_vacation_took` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_vacation`
--

INSERT INTO `employee_vacation` (`e_vacation_id`, `e_vacation_per_year`, `e_vacation_took`) VALUES
(1, 25, 5),
(2, 25, 20),
(3, 25, 7),
(4, 25, 9),
(5, 25, 4),
(6, 25, 22);

-- --------------------------------------------------------

--
-- Table structure for table `employee_warning`
--

DROP TABLE IF EXISTS `employee_warning`;
CREATE TABLE `employee_warning` (
  `e_warning_id` int(10) NOT NULL,
  `warning_number` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_warning`
--

INSERT INTO `employee_warning` (`e_warning_id`, `warning_number`, `reason`, `note`) VALUES
(1, 1, 'always late', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `payment_method` text DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `note`) VALUES
(1, 'Credit Card', NULL),
(2, 'Debt Card', NULL),
(3, 'Cash', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `price_per_hour` int(11) DEFAULT NULL,
  `start_renting` datetime DEFAULT NULL,
  `end_renting` datetime DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `fk_payment_method_id` int(11) DEFAULT NULL,
  `fk_employee` int(11) DEFAULT NULL,
  `fk_car_sold` int(11) DEFAULT NULL,
  `fk_customer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `price_per_hour`, `start_renting`, `end_renting`, `Duration`, `fk_payment_method_id`, `fk_employee`, `fk_car_sold`, `fk_customer`) VALUES
(1, 100, '2019-11-01 00:00:00', '2019-11-02 00:00:00', 24, 1, 1, 1, 1),
(2, 80, '2019-11-04 00:00:00', '2019-11-06 00:00:00', 48, 1, 1, 2, 2),
(3, 80, '2019-11-05 00:00:00', '2019-11-07 00:00:00', 72, 3, 3, 3, 3),
(4, 100, '2019-11-01 00:00:00', '2019-11-03 00:00:00', 72, 1, 4, 4, 4),
(5, 100, '2019-10-30 00:00:00', '2019-11-01 00:00:00', 48, 1, 5, 5, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `car_sold`
--
ALTER TABLE `car_sold`
  ADD PRIMARY KEY (`car_out_id`),
  ADD KEY `car_sold` (`car_sold`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`e_department_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `fk_employee_position_id` (`fk_employee_position_id`),
  ADD KEY `fk_e_address_id` (`fk_e_address_id`),
  ADD KEY `fk_e_warning_id` (`fk_e_warning_id`),
  ADD KEY `fk_e_vacation_id` (`fk_e_vacation_id`),
  ADD KEY `fk_e_department_id` (`fk_e_department_id`),
  ADD KEY `fk_e_education_id` (`fk_e_education_id`);

--
-- Indexes for table `employee_address`
--
ALTER TABLE `employee_address`
  ADD PRIMARY KEY (`e_address_id`);

--
-- Indexes for table `employee_education`
--
ALTER TABLE `employee_education`
  ADD PRIMARY KEY (`e_education_id`);

--
-- Indexes for table `employee_position`
--
ALTER TABLE `employee_position`
  ADD PRIMARY KEY (`employee_position_id`);

--
-- Indexes for table `employee_vacation`
--
ALTER TABLE `employee_vacation`
  ADD PRIMARY KEY (`e_vacation_id`);

--
-- Indexes for table `employee_warning`
--
ALTER TABLE `employee_warning`
  ADD PRIMARY KEY (`e_warning_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `fk_payment_method_id` (`fk_payment_method_id`),
  ADD KEY `fk_employee` (`fk_employee`),
  ADD KEY `fk_car_sold` (`fk_car_sold`),
  ADD KEY `fk_customer` (`fk_customer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `car_sold`
--
ALTER TABLE `car_sold`
  MODIFY `car_out_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `e_department_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_address`
--
ALTER TABLE `employee_address`
  MODIFY `e_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_education`
--
ALTER TABLE `employee_education`
  MODIFY `e_education_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_position`
--
ALTER TABLE `employee_position`
  MODIFY `employee_position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_vacation`
--
ALTER TABLE `employee_vacation`
  MODIFY `e_vacation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_warning`
--
ALTER TABLE `employee_warning`
  MODIFY `e_warning_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_sold`
--
ALTER TABLE `car_sold`
  ADD CONSTRAINT `car_sold_ibfk_1` FOREIGN KEY (`car_sold`) REFERENCES `car` (`car_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `customer_address` (`address_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`fk_employee_position_id`) REFERENCES `employee_position` (`employee_position_id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`fk_e_address_id`) REFERENCES `employee_address` (`e_address_id`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`fk_e_warning_id`) REFERENCES `employee_warning` (`e_warning_id`),
  ADD CONSTRAINT `employee_ibfk_4` FOREIGN KEY (`fk_e_vacation_id`) REFERENCES `employee_vacation` (`e_vacation_id`),
  ADD CONSTRAINT `employee_ibfk_5` FOREIGN KEY (`fk_e_department_id`) REFERENCES `department` (`e_department_id`),
  ADD CONSTRAINT `employee_ibfk_6` FOREIGN KEY (`fk_e_education_id`) REFERENCES `employee_education` (`e_education_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`fk_payment_method_id`) REFERENCES `payment_method` (`payment_method_id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`fk_employee`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`fk_car_sold`) REFERENCES `car_sold` (`car_out_id`),
  ADD CONSTRAINT `sales_ibfk_4` FOREIGN KEY (`fk_customer`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
