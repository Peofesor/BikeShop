-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Mai 2022 um 12:01
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

--
-- Daten für Tabelle `anschrift`
--

INSERT INTO `anschrift` (`AnschriftID`, `StrasseHausnummer`, `PLZ`, `Ort`, `Anschriftart`) VALUES
(1, 'Rottenkolberstrasse 5', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(2, 'Äußere Rottach 23', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(3, 'Hoffeldweg 2', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(4, 'Weiherstraße 4', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(5, 'Siedlerweg 5', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(6, 'Am Alpenblick 98', 87435, 'Kempten', 'Rechnungsadresse'),
(7, 'Kirchenweg 2', 87435, 'Kempten', 'Lieferadresse');

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

--
-- Daten für Tabelle `fahrrad`
--

INSERT INTO `fahrrad` (`FahrradID`, `Marke`, `Model`, `Rahmennummer`, `Farbe`, `Art`, `StatusID`) VALUES
(1, 'Cube', 'ST2', '613XSTQFR94494', 'Rot', 'Kinderrad', 1),
(2, 'Bulls', 'Rockville Disc', '16237YYVAOL12164', 'Weiß', 'Rennrad', 1),
(3, 'Bulls', 'MegaBike', '4123SAFF123FGDS', 'Grün', 'Rennrad', 1),
(4, 'Cube', 'Kato Base 29', '14378SXEMMO59152', 'Gelb', 'Fatbike', 3),
(5, 'Ghost', 'Marlin 4', '49386NXBHRC39151', 'Grün', 'Fully', 1),
(6, 'Ghost', 'Marlin 5 Azure', '35121YNSVYT14686', 'Silber', 'Rennrad', 3),
(7, 'Hercules', 'Cross Blunt', '60202YJTRIE95977', 'Weiß', 'Fatbike', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fahrradstatus`
--

CREATE TABLE `fahrradstatus` (
  `StatusID` int(11) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Standort` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `fahrradstatus`
--

INSERT INTO `fahrradstatus` (`StatusID`, `Status`, `Standort`) VALUES
(1, 'Kunde', 'Kunde'),
(2, 'Werkstatt', 'Werkstatt'),
(3, 'Abholbereit', 'Lager'),
(4, 'Service', 'Werkstatt');

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
(1, 'Mueller', 'Lucy', 'Mueller.Lucy@web.de', 'nsfghsfghsfg', 1),
(2, 'Schmid', 'Ella', 'Schmid.Ella@web.de', 'fghfgbsf', 4),
(3, 'Weber', 'Amy', 'Weber.Amy@web.de', 'adfvdafvd', 2),
(4, 'Fischer', 'Finja', 'Fischer.Finja@web.de', 'adfvdfvsdf', 3),
(5, 'Miller', 'Mia', 'Miller.Mia@web.de', 'edrhaer', 4),
(6, 'Miller', 'Stefan', 'Miller.Stefan@web.de', 'rgervedfrve', 3),
(7, 'Hahn', 'Liam', 'Hahn.Liam@web.de', 'ethaerth', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kundeanschrift`
--

CREATE TABLE `kundeanschrift` (
  `KundenID` int(11) NOT NULL,
  `AnschriftID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `kundeanschrift`
--

INSERT INTO `kundeanschrift` (`KundenID`, `AnschriftID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 5),
(7, 6),
(7, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kundefahrrad`
--

CREATE TABLE `kundefahrrad` (
  `KundenID` int(11) NOT NULL,
  `FahrradID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `kundefahrrad`
--

INSERT INTO `kundefahrrad` (`KundenID`, `FahrradID`) VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 4),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

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
-- Daten für Tabelle `servicepaket`
--

INSERT INTO `servicepaket` (`ServiceID`, `Art`, `Preis`) VALUES
(1, 'Kein Abo', 0),
(2, 'Bronze', 10),
(3, 'Silber', 30),
(4, 'Gold', 50);

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
  MODIFY `AnschriftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `fahrrad`
--
ALTER TABLE `fahrrad`
  MODIFY `FahrradID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `fahrradstatus`
--
ALTER TABLE `fahrradstatus`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `kunde`
--
ALTER TABLE `kunde`
  MODIFY `KundenID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `servicepaket`
--
ALTER TABLE `servicepaket`
  MODIFY `ServiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
