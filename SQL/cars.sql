-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 08. Jun 2015 um 11:07
-- Server Version: 5.6.20
-- PHP-Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `cars`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joining_process`
--

CREATE TABLE IF NOT EXISTS `joining_process` (
`id` int(10) NOT NULL,
  `spot_welds` float DEFAULT NULL,
  `arc_welding` float DEFAULT NULL,
  `friction_stir_welding` float DEFAULT NULL,
  `laser_welding` float DEFAULT NULL,
  `conventional_brazing` float DEFAULT NULL,
  `laser_brazing` float DEFAULT NULL,
  `adhesive_joining` float DEFAULT NULL,
  `rivets` float DEFAULT NULL,
  `clinch_spots` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lengths`
--

CREATE TABLE IF NOT EXISTS `lengths` (
`id` int(10) NOT NULL,
  `length` int(6) DEFAULT NULL,
  `width` int(6) DEFAULT NULL,
  `height` int(6) DEFAULT NULL,
  `track_front` int(6) DEFAULT NULL,
  `track_rear` int(6) DEFAULT NULL,
  `wheelbase` int(6) DEFAULT NULL,
  `contact_area` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `manufacturer`
--

CREATE TABLE IF NOT EXISTS `manufacturer` (
`id` int(10) NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `material_mix`
--

CREATE TABLE IF NOT EXISTS `material_mix` (
`id` int(10) NOT NULL,
  `low_strength_steel` float DEFAULT NULL,
  `hss` float DEFAULT NULL,
  `ahss` float DEFAULT NULL,
  `stainless_steel` float DEFAULT NULL,
  `uhss` float DEFAULT NULL,
  `aluminium` float DEFAULT NULL,
  `magnesium` float DEFAULT NULL,
  `frp` float DEFAULT NULL,
  `smc` float DEFAULT NULL,
  `thermoplastics` float DEFAULT NULL,
  `elastomers` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `model`
--

CREATE TABLE IF NOT EXISTS `model` (
`id` int(10) NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `model_year` int(4) NOT NULL,
  `segment` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `production`
--

CREATE TABLE IF NOT EXISTS `production` (
`id` int(10) NOT NULL,
  `process` float DEFAULT NULL,
  `re_use_fator` float DEFAULT NULL,
  `mechanisation` float DEFAULT NULL,
  `production_sites` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `no_production_sites` int(3) DEFAULT NULL,
  `intended_production_vol` int(10) DEFAULT NULL,
  `production_lead_time` time(6) DEFAULT NULL,
  `cycle_time` time(6) DEFAULT NULL,
  `degree_material_utilisation` float DEFAULT NULL,
  `no_parts` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stiffness_data`
--

CREATE TABLE IF NOT EXISTS `stiffness_data` (
`id` int(10) NOT NULL,
  `first_trimmed_body` float DEFAULT NULL,
  `second_trimmed_body` float DEFAULT NULL,
  `first_body` float DEFAULT NULL,
  `second_body` float DEFAULT NULL,
  `torsional` float DEFAULT NULL,
  `bend` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `weights`
--

CREATE TABLE IF NOT EXISTS `weights` (
`id` int(10) NOT NULL,
  `biw` int(6) DEFAULT NULL,
  `front_doors` int(6) DEFAULT NULL,
  `rear_doors` int(6) DEFAULT NULL,
  `hood` int(6) DEFAULT NULL,
  `tailgate` int(6) DEFAULT NULL,
  `front_fenders` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `joining_process`
--
ALTER TABLE `joining_process`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lengths`
--
ALTER TABLE `lengths`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_mix`
--
ALTER TABLE `material_mix`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stiffness_data`
--
ALTER TABLE `stiffness_data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weights`
--
ALTER TABLE `weights`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `joining_process`
--
ALTER TABLE `joining_process`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lengths`
--
ALTER TABLE `lengths`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `material_mix`
--
ALTER TABLE `material_mix`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stiffness_data`
--
ALTER TABLE `stiffness_data`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `weights`
--
ALTER TABLE `weights`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
