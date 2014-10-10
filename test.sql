-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2014 at 06:50 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created`, `modified`) VALUES
(2, 'daihan', '$2a$10$JUTWR.tO6CMrWreIdNtPJ.1aJtxhv2MEqwYjlvE3ncbpn.oeC3LJG', '2014-10-03 06:35:38', '2014-10-03 06:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `mysql_testing`
--

CREATE TABLE IF NOT EXISTS `mysql_testing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_names` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `mysql_testing`
--

INSERT INTO `mysql_testing` (`id`, `db_names`) VALUES
(1, 'SQL Server'),
(2, 'MySQL'),
(3, 'SQL Server'),
(4, 'MongoDB'),
(5, 'SQL Server'),
(6, 'MySQL'),
(7, 'Oracle'),
(8, 'PostGreSQL'),
(9, 'MongoDB'),
(10, 'SQL Server'),
(11, 'SQL Server'),
(12, 'MongoDB'),
(13, 'MySQL'),
(14, 'Oracle'),
(15, 'MongoDB'),
(16, 'PostGreSQL');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
