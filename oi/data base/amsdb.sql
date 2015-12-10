-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2015 at 04:02 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircrafts`
--

CREATE TABLE IF NOT EXISTS `aircrafts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `typeid` (`typeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci COMMENT='table of planes owned by the airline' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `aircrafts`
--

INSERT INTO `aircrafts` (`id`, `typeid`) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 3),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flightid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `class` enum('first','business','economy','') COLLATE utf16_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flightid` (`flightid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci COMMENT='booking details' AUTO_INCREMENT=22 ;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `flightid`, `userid`, `amount`, `class`, `quantity`) VALUES
(14, 1, 1, 5000, 'first', 1),
(16, 1, 1, 50000, 'first', 10),
(17, 1, 1, 5000, 'first', 1),
(18, 3, 1, 500, 'economy', 1),
(19, 3, 1, 500, 'economy', 1),
(20, 1, 1, 5000, 'first', 1),
(21, 5, 12, 200000, 'economy', 2);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE IF NOT EXISTS `flights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aircraftid` int(11) unsigned NOT NULL,
  `startcity` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `endcity` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `firstavl` int(11) NOT NULL DEFAULT '0',
  `bizavl` int(11) NOT NULL DEFAULT '0',
  `econavl` int(11) NOT NULL DEFAULT '0',
  `firstfare` int(11) NOT NULL,
  `bizfare` int(11) NOT NULL,
  `econfare` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aircraftid` (`aircraftid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci COMMENT='table of flights operating' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `aircraftid`, `startcity`, `endcity`, `starttime`, `endtime`, `firstavl`, `bizavl`, `econavl`, `firstfare`, `bizfare`, `econfare`) VALUES
(1, 1, 'Mumbai', 'Kolkata', '2015-04-11 06:20:00', '2015-04-11 09:00:00', 1, 0, 0, 5000, 0, 0),
(2, 1, 'Kolkata', 'Delhi', '2015-04-11 12:00:00', '2015-04-11 15:00:00', 0, 0, 2, 6000, 0, 0),
(3, 3, 'Mumbai', 'Kolkata', '2015-04-11 00:00:00', '2015-04-11 00:00:00', 0, 0, 4, 400, 0, 0),
(5, 5, 'kisumu', 'entebbe', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 10, 100, 300000, 200000, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE IF NOT EXISTS `seats` (
  `seatno` int(11) NOT NULL,
  `flightid` int(11) NOT NULL,
  `class` enum('first','business','economy','') COLLATE utf16_unicode_ci NOT NULL,
  `isbooked` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `firstcap` int(11) NOT NULL,
  `bizcap` int(11) NOT NULL,
  `econcap` int(11) NOT NULL,
  `rateperkm` int(11) NOT NULL,
  `fixedcost` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci COMMENT='aircraft types' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `firstcap`, `bizcap`, `econcap`, `rateperkm`, `fixedcost`) VALUES
(1, 'Boeing 747', 20, 50, 200, 3, 1000),
(3, 'Airbus A320', 5, 10, 100, 2, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `isadmin` int(11) NOT NULL DEFAULT '0',
  `balance` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci COMMENT='users data' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `phone`, `address`, `isadmin`, `balance`) VALUES
(1, 'div@ams.com', 'div', 'divyansh', 'gupta', '546546', 'sfasdad', 1, -28000),
(2, 'riya@ams.com', 'riya', 'riya', 'bubna', '654654654', 'sfdfs', 1, 5000),
(3, 'roy@ams.com', 'roy', 'mayank', 'roy', '6546', '65465', 0, 0),
(4, 'sri@ams.com', 'sri', 'srinidhi', 'moodle', '654', '65465', 0, 0),
(12, 'hello@gmail.com', 'veronica', 'Mugisha', 'michael', '0703749602', 'kitemu', 0, -202000),
(13, 'j@gmail.com', 'jacob', 'elisa', 'lutalo', '0700848432', 'seguku', 0, 0),
(14, 'miko@gmail.com', 'jesus', 'miko', 'mugi', '0701053642', 'kitemu', 0, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD CONSTRAINT `aircrafts_ibfk_1` FOREIGN KEY (`typeid`) REFERENCES `types` (`id`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`flightid`) REFERENCES `flights` (`id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`aircraftid`) REFERENCES `aircrafts` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
