-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Apr 2022 um 08:40
-- Server-Version: 10.4.18-MariaDB
-- PHP-Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `bikeshop`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `anschrift`
--

CREATE TABLE `anschrift` (
  `AnschriftID` int(11) NOT NULL,
  `StrasseHausnummer` varchar(50) DEFAULT NULL,
  `PLZ` int(11) DEFAULT NULL,
  `Ort` varchar(50) DEFAULT NULL,
  `Anschriftart` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fahrrad`
--

CREATE TABLE `fahrrad` (
  `FahrradID` int(11) NOT NULL,
  `Marke` varchar(25) DEFAULT NULL,
  `Model` varchar(25) DEFAULT NULL,
  `Rahmennummer` varchar(50) DEFAULT NULL,
  `Farbe` varchar(25) DEFAULT NULL,
  `Art` varchar(25) DEFAULT NULL,
  `StatusID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fahrradstatus`
--

CREATE TABLE `fahrradstatus` (
  `StatusID` int(11) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Standort` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunde`
--

CREATE TABLE `kunde` (
  `KundenID` int(11) NOT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `Vorname` varchar(25) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Passwort` varchar(50) DEFAULT NULL,
  `ServiceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `kunde`
--

INSERT INTO `kunde` (`KundenID`, `Name`, `Vorname`, `Email`, `Passwort`, `ServiceID`) VALUES
(1, 'Müller', 'Lucy', 'Müller.Lucy@web.de', 'nsfghsfghsfg', NULL),
(2, 'Schmid', 'Ella', 'Schmid.Ella@web.de', 'fghfgbsf', NULL),
(3, 'Weber', 'Amy', 'Weber.Amy@web.de', 'adfvdafvd', NULL),
(4, 'Fischer', 'Finja', 'Fischer.Finja@web.de', 'adfvdfvsdf', NULL),
(5, 'Wagner', 'Amelie', 'Wagner.Amelie@web.de', 'dfvsdfvsdfv', NULL),
(6, 'Schäfer', 'Luise', 'Schäfer.Luise@web.de', 'dfvsdvfsdvf', NULL),
(7, 'Bauer', 'Frieda', 'Bauer.Frieda@web.de', 'hshgzjjfsj', NULL),
(8, 'Koch', 'Lukas', 'Koch.Lukas@web.de', 'frgnjz', NULL),
(9, 'Richter', 'Konstantin', 'Richter.Konstantin@web.de', 'sfmhzk', NULL),
(10, 'Klein', 'David', 'Klein.David@web.de', 'ysdfgmzkya', NULL),
(11, 'Wolf', 'Katharina', 'Wolf.Katharina@web.de', 'sfgm ya', NULL),
(12, 'Schröder', 'Oskar', 'Schröder.Oskar@web.de', 'sfgrmks', NULL),
(13, 'Neumann', 'Julia', 'Neumann.Julia@web.de', 'sgfrmzksf', NULL),
(14, 'Schwarz', 'Felix', 'Schwarz.Felix@web.de', 'öpuo', NULL),
(15, 'Braun', 'Anna', 'Braun.Anna@web.de', 'aerv', NULL),
(16, 'Hofmann', 'Pauline', 'Hofmann.Pauline@web.de', 'i,k zio.', NULL),
(17, 'Zimmermann', 'Julian', 'Zimmermann.Julian@web.de', 'aervaerv', NULL),
(18, 'Schmitt', 'Henry', 'Schmitt.Henry@web.de', 'zumgui,zg', NULL),
(19, 'Hartmann', 'Tim', 'Hartmann.Tim@web.de', 'aservaer', NULL),
(20, 'Köhler', 'Karl', 'Köhler.Karl@web.de', 'rastnhsrjsz', NULL),
(21, 'Walter', 'Friedrich', 'Walter.Friedrich@web.de', 'dtzndtzns', NULL),
(22, 'Schulze', 'Peter', 'Schulze.Peter@web.de', 'sdzmstzmn', NULL),
(23, 'Lang', 'Quirin', 'Lang.Quirin@web.de', 'tbaebabt', NULL),
(24, 'Weiß', 'Selma', 'Weiß.Selma@web.de', 'wr4hjta', NULL),
(25, 'Jung', 'Maya', 'Jung.Maya@web.de', 'aergaerg', NULL),
(26, 'Möller', 'Mia', 'Möller.Mia@web.de', 'edrhaer', NULL),
(27, 'Hahn', 'Liam', 'Hahn.Liam@web.de', 'ethaerth', NULL),
(28, 'Möller', 'Stefan', 'Möller.Stefan@web.de', 'rgervedfrve', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kundeanschrift`
--

CREATE TABLE `kundeanschrift` (
  `KundenID` int(11) NOT NULL,
  `AnschriftID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kundefahrrad`
--

CREATE TABLE `kundefahrrad` (
  `KundenID` int(11) NOT NULL,
  `FahrradID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `servicepaket`
--

CREATE TABLE `servicepaket` (
  `ServiceID` int(11) NOT NULL,
  `Art` varchar(10) DEFAULT NULL,
  `Preis` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `anschrift`
--
ALTER TABLE `anschrift`
  ADD PRIMARY KEY (`AnschriftID`);

--
-- Indizes für die Tabelle `fahrrad`
--
ALTER TABLE `fahrrad`
  ADD PRIMARY KEY (`FahrradID`),
  ADD KEY `StatusID` (`StatusID`);

--
-- Indizes für die Tabelle `fahrradstatus`
--
ALTER TABLE `fahrradstatus`
  ADD PRIMARY KEY (`StatusID`);

--
-- Indizes für die Tabelle `kunde`
--
ALTER TABLE `kunde`
  ADD PRIMARY KEY (`KundenID`),
  ADD KEY `ServiceID` (`ServiceID`);

--
-- Indizes für die Tabelle `kundeanschrift`
--
ALTER TABLE `kundeanschrift`
  ADD PRIMARY KEY (`KundenID`,`AnschriftID`),
  ADD KEY `AnschriftID` (`AnschriftID`);

--
-- Indizes für die Tabelle `kundefahrrad`
--
ALTER TABLE `kundefahrrad`
  ADD PRIMARY KEY (`KundenID`,`FahrradID`),
  ADD KEY `FahrradID` (`FahrradID`);

--
-- Indizes für die Tabelle `servicepaket`
--
ALTER TABLE `servicepaket`
  ADD PRIMARY KEY (`ServiceID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `anschrift`
--
ALTER TABLE `anschrift`
  MODIFY `AnschriftID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `fahrrad`
--
ALTER TABLE `fahrrad`
  MODIFY `FahrradID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `kunde`
--
ALTER TABLE `kunde`
  MODIFY `KundenID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `fahrrad`
--
ALTER TABLE `fahrrad`
  ADD CONSTRAINT `fahrrad_ibfk_1` FOREIGN KEY (`StatusID`) REFERENCES `fahrradstatus` (`StatusID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `kunde`
--
ALTER TABLE `kunde`
  ADD CONSTRAINT `kunde_ibfk_1` FOREIGN KEY (`ServiceID`) REFERENCES `servicepaket` (`ServiceID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `kundeanschrift`
--
ALTER TABLE `kundeanschrift`
  ADD CONSTRAINT `kundeanschrift_ibfk_1` FOREIGN KEY (`KundenID`) REFERENCES `kunde` (`KundenID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `kundeanschrift_ibfk_2` FOREIGN KEY (`AnschriftID`) REFERENCES `anschrift` (`AnschriftID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `kundefahrrad`
--
ALTER TABLE `kundefahrrad`
  ADD CONSTRAINT `kundefahrrad_ibfk_1` FOREIGN KEY (`KundenID`) REFERENCES `kunde` (`KundenID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `kundefahrrad_ibfk_2` FOREIGN KEY (`FahrradID`) REFERENCES `fahrrad` (`FahrradID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
