-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 06. Apr 2022 um 11:15
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
  `FahrradStatusID` int(11) DEFAULT NULL
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
  `ServiceID` int(11) DEFAULT NULL,
  `Passwort` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `ServiceArt` varchar(10) DEFAULT NULL,
  `Preis` double DEFAULT NULL,
  `Laufzeit` date DEFAULT NULL
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
  ADD KEY `FahrradStatusID` (`FahrradStatusID`);

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
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `fahrrad`
--
ALTER TABLE `fahrrad`
  ADD CONSTRAINT `fahrrad_ibfk_1` FOREIGN KEY (`FahrradStatusID`) REFERENCES `fahrradstatus` (`StatusID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `kunde`
--
ALTER TABLE `kunde`
  ADD CONSTRAINT `kunde_ibfk_1` FOREIGN KEY (`ServiceID`) REFERENCES `servicepaket` (`ServiceID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `kundeanschrift`
--
ALTER TABLE `kundeanschrift`
  ADD CONSTRAINT `kundeanschrift_ibfk_1` FOREIGN KEY (`KundenID`) REFERENCES `kunde` (`KundenID`),
  ADD CONSTRAINT `kundeanschrift_ibfk_2` FOREIGN KEY (`AnschriftID`) REFERENCES `anschrift` (`AnschriftID`);

--
-- Constraints der Tabelle `kundefahrrad`
--
ALTER TABLE `kundefahrrad`
  ADD CONSTRAINT `kundefahrrad_ibfk_1` FOREIGN KEY (`KundenID`) REFERENCES `kunde` (`KundenID`),
  ADD CONSTRAINT `kundefahrrad_ibfk_2` FOREIGN KEY (`FahrradID`) REFERENCES `fahrrad` (`FahrradID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
