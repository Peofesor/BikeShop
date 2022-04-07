-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Apr 2022 um 09:38
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

INSERT INTO `anschrift` (`AnschriftID`,`StrasseHausnummer`, `PLZ`, `Ort`, `Anschriftart`) VALUES
(1,'Rottenkolberstrasse 5', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(2,'Äußere Rottach 23', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(3,'Hoffeldweg 2', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(4,'Weiherstraße 4', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(5,'Robert-Koch-Weg 42', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(6,'Hohe Gerst 98', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(7,'Mühlweg 74', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(8,'Wartenseestrasse 63', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(9,'Memminger Strasse 26', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(10,'Kantstrasse 29', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(11,'Rottachstraße 932', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(12,'Schlössleweg 9', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(13,'Madlenerstraße 2', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(14,'Gottesackerweg 1', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(15,'Weidacher Strasse 47', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(16,'Rheinlandstrasse 6', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(17,'Drumlinweg 34', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(18,'Ulrichstrasse 83', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(19,'Am Lindenberg 2', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(20,'Ahornhöhe 2', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(21,'Ostbahnhofstraße', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(22,'Jörgstraße 2', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(23,'Alte Bleiche 53', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(24,'Saarlandstrasse 76', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(25,'Straboweg 192', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(26,'Siedlerweg 5', 87435, 'Kempten', 'Liefer- & Rechnungsadresse'),
(27,'Am Alpenblick 98', 87435, 'Kempten', 'Rechnungsadresse'),
(28,'Kirchenweg 2', 87435, 'Kempten', 'Lieferadresse'),
(29,'Siedlerweg 5', 87435, 'Kempten', 'Liefer- & Rechnungsadresse');

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

INSERT INTO `fahrrad` (`FahrradID`,`Marke`, `Model`, `Rahmennummer`, `Farbe`, `Art`, `StatusID`) VALUES
(1,'Cube', 'ST2', '613XSTQFR94494', 'Rot', 'Kinderrad', 1),
(2,'Bulls', 'Rockville Disc', '16237YYVAOL12164', 'Weiß', 'Rennrad', 1),
(3,'Cube', 'Kato Base 29', '14378SXEMMO59152', 'Gelb', 'Fatbike', 3),
(4,'Ghost', 'Raptor Disc', '8680WMYWRW9758', 'Silber', 'Dirtbike', 1),
(5,'Bergsteiger', 'Aim Pro', '16060XOMTDE9750', 'Schwarz', 'Handbike', 4),
(6,'Hercules', 'Home', '30219OQQCUO4485', 'Grün', 'Hardtrail', 1),
(7,'Cube', 'E-ST 100', '70437BCLRUD46304', 'Schwarz', 'Fully', 3),
(8,'Cube', 'St120', '98466RGDQVN99286', 'Rot', 'E-Bike', 1),
(9,'Bergsteiger', 'Rockville Disc', '79361DSNCRX45745', 'Schwarz', 'Fully', 1),
(10,'Cube', 'Ground Control 1', '45425DRLEME84297', 'Weiß', 'Dirtbike', 1),
(11,'Ghost', 'Kodiak', '33409GHTIZM2817', 'Schwarz', 'Handbike', 1),
(12,'Cube', 'Aim Pro', '15635UHUTMH98150', 'Rot', 'Fully', 4),
(13,'Hercules', 'Revox 2', '93394YPWXEX20182', 'Grün', 'Fully', 1),
(14,'Bergsteiger', 'Aim', '98662VKJUEI26234', 'Rot', 'Rennrad', 1),
(15,'Cube', 'Shimano', '46408WXKMCJ39628', 'Schwarz', 'E-Bike', 4),
(16,'Ghost', 'Aggressor Sport', '14732UZYBDR90018', 'Rot', 'Hardtrail', 4),
(17,'Hercules', 'Rockrider', '85803GGQCAM14837', 'Weiß', 'E-Bike', 1),
(18,'Hercules', 'Grand Canyon', '9581NQUSJO71848', 'Grün', 'Handbike', 1),
(19,'Bulls', 'Larrikin', '73790XJXDZY35323', 'Silber', 'Fully', 4),
(20,'Ghost', 'Kaimarte', '95080FROGEG51911', 'Silber', 'E-Bike', 3),
(21,'Cube', 'Bikestar', '73401YPRIJY82717', 'Schwarz', 'Kinderrad', 4),
(22,'Ghost', 'Pulsar', '77703ZTFSHH11900', 'Rot', 'E-Bike', 1),
(23, 'Cube', 'NS Clash', '68549LSWMXM53005', 'Silber', 'Fatbike', 3),
(24, 'Hercules', 'X Strada', '17656TNXIYU12541', 'Schwarz', 'Dirtbike', 1),
(25, 'Bulls', 'T500', '45409IPLOPT42011', 'Schwarz', 'Hardtrail', 3),
(26, 'Ghost', 'Marlin 4', '49386NXBHRC39151', 'Grün', 'Fully', 1),
(27, 'Hercules', 'Cross Blunt', '60202YJTRIE95977', 'Weiß', 'Fatbike', 4),
(28, 'Ghost', 'Marlin 5 Azure', '35121YNSVYT14686', 'Silber', 'Rennrad', 3);

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
(1, 'Schmid', 'Ella', 'Schmid.Ella@web.de', 'fghfgbsf', 4),
(2, 'Weber', 'Amy', 'Weber.Amy@web.de', 'adfvdafvd', 2),
(3, 'Fischer', 'Finja', 'Fischer.Finja@web.de', 'adfvdfvsdf', 3),
(4, 'Wagner', 'Amelie', 'Wagner.Amelie@web.de', 'dfvsdfvsdfv', 2),
(5, 'Schäfer', 'Luise', 'Schäfer.Luise@web.de', 'dfvsdvfsdvf', 1),
(6, 'Bauer', 'Frieda', 'Bauer.Frieda@web.de', 'hshgzjjfsj', 2),
(7, 'Koch', 'Lukas', 'Koch.Lukas@web.de', 'frgnjz', 1),
(8, 'Richter', 'Konstantin', 'Richter.Konstantin@web.de', 'sfmhzk', 1),
(9, 'Klein', 'David', 'Klein.David@web.de', 'ysdfgmzkya', 2),
(10, 'Wolf', 'Katharina', 'Wolf.Katharina@web.de', 'sfgm ya', 4),
(11, 'Schröder', 'Oskar', 'Schröder.Oskar@web.de', 'sfgrmks', 1),
(12, 'Neumann', 'Julia', 'Neumann.Julia@web.de', 'sgfrmzksf', 1),
(13, 'Schwarz', 'Felix', 'Schwarz.Felix@web.de', 'öpuo', 1),
(14, 'Braun', 'Anna', 'Braun.Anna@web.de', 'aerv', 2),
(15, 'Hofmann', 'Pauline', 'Hofmann.Pauline@web.de', 'i,k zio.', 2),
(16, 'Zimmermann', 'Julian', 'Zimmermann.Julian@web.de', 'aervaerv', 3),
(17, 'Schmitt', 'Henry', 'Schmitt.Henry@web.de', 'zumgui,zg', 4),
(18, 'Hartmann', 'Tim', 'Hartmann.Tim@web.de', 'aservaer', 1),
(19, 'Köhler', 'Karl', 'Köhler.Karl@web.de', 'rastnhsrjsz', 2),
(20, 'Walter', 'Friedrich', 'Walter.Friedrich@web.de', 'dtzndtzns', 2),
(21, 'Schulze', 'Peter', 'Schulze.Peter@web.de', 'sdzmstzmn', 2),
(22, 'Lang', 'Quirin', 'Lang.Quirin@web.de', 'tbaebabt', 1),
(23, 'Weiß', 'Selma', 'Weiß.Selma@web.de', 'wr4hjta', 4),
(24, 'Jung', 'Maya', 'Jung.Maya@web.de', 'aergaerg', 1),
(25, 'Möller', 'Mia', 'Möller.Mia@web.de', 'edrhaer', 4),
(26, 'Hahn', 'Liam', 'Hahn.Liam@web.de', 'ethaerth', 4),
(27, 'Möller', 'Stefan', 'Möller.Stefan@web.de', 'rgervedfrve', 3);

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
  MODIFY `AnschriftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT für Tabelle `fahrrad`
--
ALTER TABLE `fahrrad`
  MODIFY `FahrradID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT für Tabelle `fahrradstatus`
--
ALTER TABLE `fahrradstatus`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `kunde`
--
ALTER TABLE `kunde`
  MODIFY `KundenID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
