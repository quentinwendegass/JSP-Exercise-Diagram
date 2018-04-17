-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.27-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema projekte
--

CREATE DATABASE IF NOT EXISTS projekte;
USE projekte;

--
-- Definition of table `arbeitspakete`
--

DROP TABLE IF EXISTS `arbeitspakete`;
CREATE TABLE `arbeitspakete` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pr_nr` int(10) unsigned NOT NULL,
  `code` varchar(5) collate latin1_general_ci NOT NULL,
  `Bezeichnung` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=588 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `arbeitspakete`
--

/*!40000 ALTER TABLE `arbeitspakete` DISABLE KEYS */;
INSERT INTO `arbeitspakete` (`id`,`pr_nr`,`code`,`Bezeichnung`) VALUES 
 (1,1,'A001','Anforderungsanalyse'),
 (2,1,'A002','Userinterface Prototyp'),
 (3,1,'A003','Datenbank Design'),
 (4,1,'A004','Implementierung '),
 (5,1,'A005','Test'),
 (6,1,'A006','Dokumentation'),
 (7,1,'A007','Installation und Inbetriebnahme'),
 (8,1,'A008','Projektmanagement'),
 (9,2,'B001','Konzepterstellung'),
 (10,2,'B002','Hardware Design'),
 (11,2,'B003','Schaltungsentwurf'),
 (12,2,'B004','Bauteilbeschaffung'),
 (13,2,'B005','Software Evaluierung'),
 (14,2,'B006','Logik Entwicklung'),
 (15,2,'B007','Test Hardware'),
 (16,2,'B008','Test Software'),
 (17,2,'B009','Roboter Montage'),
 (18,2,'B010','Inbetriebnahme'),
 (19,2,'B011','Erstellung Dokumentation'),
 (20,3,'C001','Machbarkeitsstudie'),
 (21,3,'C002','Schaltungsentwurf'),
 (22,3,'C003','Bauteilbeschaffung'),
 (23,3,'C004','Aufbau Teststellung'),
 (24,3,'C005','Leistungsoptimierung'),
 (25,3,'C006','Test'),
 (26,3,'C007','Dokumentation'),
 (27,3,'C008 ','Inbetriebnahme'),
 (28,3,'C009','Projektmanagement'),
 (29,2,'B012','Projektmanagement'),
 (583,6,'ATDB1','Tabellenverknüpfungen und Design'),
 (584,6,'ATDB2','Formulare'),
 (585,6,'ATDB3','Berichte erstellen'),
 (586,6,'ATDB4','Buttonsteuerung'),
 (587,3,'C010','Test Arbeitspaket');
/*!40000 ALTER TABLE `arbeitspakete` ENABLE KEYS */;


--
-- Definition of table `ma_ap_zuord`
--

DROP TABLE IF EXISTS `ma_ap_zuord`;
CREATE TABLE `ma_ap_zuord` (
  `ma_id` int(10) unsigned NOT NULL,
  `ap_id` int(10) unsigned NOT NULL,
  `std` smallint(5) unsigned NOT NULL,
  `datum` date NOT NULL,
  `anmerkung` varchar(200) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `ma_ap_zuord`
--

/*!40000 ALTER TABLE `ma_ap_zuord` DISABLE KEYS */;
INSERT INTO `ma_ap_zuord` (`ma_id`,`ap_id`,`std`,`datum`,`anmerkung`) VALUES 
 (29,1,5,'2014-05-30','\r'),
 (25,1,3,'2014-05-30','\r'),
 (8,1,2,'2014-06-25','\r'),
 (22,1,3,'2014-07-14','\r'),
 (9,1,2,'2014-07-17','\r'),
 (3,1,3,'2014-08-06','\r'),
 (24,1,2,'2014-08-14','\r'),
 (33,1,1,'2014-08-26','\r'),
 (6,1,3,'2014-08-27','\r'),
 (31,1,5,'2014-09-03','\r'),
 (15,1,5,'2014-09-05','\r'),
 (29,1,5,'2014-09-13','\r'),
 (19,1,1,'2014-09-13','\r'),
 (16,1,3,'2014-09-22','\r'),
 (18,2,3,'2014-05-08','\r'),
 (23,2,4,'2014-07-07','\r'),
 (5,2,2,'2014-07-18','\r'),
 (4,2,4,'2014-07-24','\r'),
 (22,2,2,'2014-08-31','\r'),
 (11,2,3,'2014-09-07','\r'),
 (21,2,3,'2014-09-24','\r'),
 (11,3,4,'2014-05-24','\r'),
 (30,3,4,'2014-05-30','\r'),
 (9,3,3,'2014-07-04','\r'),
 (28,3,3,'2014-07-17','\r'),
 (3,3,5,'2014-07-25','\r'),
 (26,3,4,'2014-08-07','\r'),
 (22,3,2,'2014-09-01','\r'),
 (29,4,2,'2014-05-15','\r'),
 (9,4,2,'2014-05-16','\r'),
 (14,4,4,'2014-05-20','\r'),
 (25,4,1,'2014-05-28','\r'),
 (2,4,5,'2014-06-01','\r'),
 (11,4,1,'2014-06-03','\r'),
 (29,4,5,'2014-06-05','\r'),
 (23,4,1,'2014-06-18','\r'),
 (14,4,1,'2014-06-21','\r'),
 (26,4,2,'2014-07-27','\r'),
 (27,4,3,'2014-08-23','\r'),
 (17,4,4,'2014-08-27','\r'),
 (24,4,4,'2014-09-09','\r'),
 (16,5,4,'2014-05-05','\r'),
 (26,5,1,'2014-05-21','\r'),
 (2,5,2,'2014-05-26','\r'),
 (6,5,4,'2014-06-29','\r'),
 (20,5,5,'2014-07-03','\r'),
 (34,5,1,'2014-07-07','\r'),
 (25,5,2,'2014-07-08','\r'),
 (31,5,2,'2014-08-02','\r'),
 (33,5,5,'2014-08-17','\r'),
 (3,5,2,'2014-08-17','\r'),
 (23,5,3,'2014-08-20','\r'),
 (19,5,2,'2014-08-27','\r'),
 (18,5,5,'2014-08-29','\r'),
 (10,5,1,'2014-09-22','\r'),
 (21,5,3,'2014-09-29','\r'),
 (34,6,4,'2014-05-16','\r'),
 (33,6,5,'2014-05-30','\r'),
 (11,6,1,'2014-06-16','\r'),
 (25,6,1,'2014-07-17','\r'),
 (5,6,5,'2014-08-05','\r'),
 (21,6,3,'2014-08-26','\r'),
 (17,6,4,'2014-08-29','\r'),
 (33,6,1,'2014-09-02','\r'),
 (31,6,5,'2014-09-18','\r'),
 (23,7,5,'2014-05-04','\r'),
 (31,7,3,'2014-05-26','\r'),
 (3,7,2,'2014-06-11','\r'),
 (23,7,2,'2014-06-24','\r'),
 (15,7,3,'2014-06-24','\r'),
 (10,7,4,'2014-07-24','\r'),
 (31,7,3,'2014-08-05','\r'),
 (15,7,2,'2014-08-21','\r'),
 (18,7,4,'2014-09-05','\r'),
 (14,7,4,'2014-09-12','\r'),
 (18,7,2,'2014-09-15','\r'),
 (6,7,4,'2014-09-20','\r'),
 (7,8,5,'2014-05-13','\r'),
 (4,6,2,'2014-06-01','\r'),
 (7,8,1,'2014-06-02','\r'),
 (12,10,2,'2014-06-07','\r'),
 (27,19,4,'2014-06-22','\r'),
 (7,8,2,'2014-07-02','\r'),
 (30,4,4,'2014-07-15','\r'),
 (14,4,4,'2014-07-22','\r'),
 (7,8,5,'2014-08-10','\r'),
 (33,23,4,'2014-08-24','\r'),
 (11,23,1,'2014-08-31','\r'),
 (7,8,5,'2014-09-08','\r'),
 (4,13,1,'2014-09-09','\r'),
 (7,8,4,'2014-09-17','\r'),
 (7,8,3,'2014-09-28','\r'),
 (26,9,5,'2014-05-11','\r'),
 (12,9,4,'2014-05-11','\r'),
 (3,9,1,'2014-06-06','\r'),
 (27,9,1,'2014-06-10','\r'),
 (21,9,5,'2014-06-18','\r'),
 (18,9,4,'2014-07-18','\r'),
 (19,9,4,'2014-07-18','\r'),
 (16,9,2,'2014-08-11','\r'),
 (26,9,2,'2014-09-07','\r'),
 (3,9,2,'2014-09-07','\r'),
 (34,10,2,'2014-05-23','\r'),
 (18,10,4,'2014-06-24','\r'),
 (12,10,3,'2014-06-29','\r'),
 (6,10,1,'2014-07-04','\r'),
 (8,10,2,'2014-07-13','\r'),
 (8,10,1,'2014-07-29','\r'),
 (29,10,4,'2014-08-06','\r'),
 (20,10,4,'2014-08-11','\r'),
 (20,10,5,'2014-08-21','\r'),
 (33,10,5,'2014-08-27','\r'),
 (34,10,5,'2014-08-31','\r'),
 (2,10,2,'2014-09-01','\r'),
 (34,10,1,'2014-09-17','\r'),
 (21,11,1,'2014-05-08','\r'),
 (31,11,3,'2014-05-10','\r'),
 (3,11,3,'2014-05-22','\r'),
 (24,11,5,'2014-05-26','\r'),
 (20,11,5,'2014-06-08','\r'),
 (29,11,3,'2014-06-12','\r'),
 (21,11,2,'2014-07-20','\r'),
 (33,11,1,'2014-08-07','\r'),
 (8,11,3,'2014-08-12','\r'),
 (10,11,2,'2014-08-26','\r'),
 (34,11,3,'2014-08-27','\r'),
 (11,12,1,'2014-05-31','\r'),
 (9,12,4,'2014-06-07','\r'),
 (11,12,3,'2014-06-18','\r'),
 (17,12,1,'2014-06-25','\r'),
 (6,12,1,'2014-08-01','\r'),
 (5,12,2,'2014-08-13','\r'),
 (28,12,4,'2014-09-15','\r'),
 (21,12,1,'2014-09-17','\r'),
 (27,13,4,'2014-05-08','\r'),
 (32,13,3,'2014-05-14','\r'),
 (32,13,4,'2014-05-21','\r'),
 (5,13,1,'2014-05-22','\r'),
 (21,13,1,'2014-05-22','\r'),
 (27,13,2,'2014-05-23','\r'),
 (10,13,1,'2014-06-24','\r'),
 (9,13,5,'2014-07-06','\r'),
 (24,13,4,'2014-07-25','\r'),
 (2,13,5,'2014-08-01','\r'),
 (33,13,5,'2014-08-27','\r'),
 (26,13,3,'2014-08-30','\r'),
 (21,13,1,'2014-09-13','\r'),
 (24,14,4,'2014-05-05','\r'),
 (3,14,2,'2014-05-05','\r'),
 (9,14,2,'2014-05-11','\r'),
 (4,14,3,'2014-06-04','\r'),
 (15,14,4,'2014-07-06','\r'),
 (5,14,2,'2014-07-18','\r'),
 (30,14,2,'2014-08-06','\r'),
 (2,14,3,'2014-09-02','\r'),
 (34,14,1,'2014-09-17','\r'),
 (22,15,3,'2014-05-08','\r'),
 (7,15,1,'2014-06-06','\r'),
 (24,15,3,'2014-06-08','\r'),
 (8,15,3,'2014-06-11','\r'),
 (6,15,4,'2014-06-17','\r'),
 (5,15,2,'2014-06-18','\r'),
 (8,15,5,'2014-07-02','\r'),
 (15,15,5,'2014-07-21','\r'),
 (3,15,4,'2014-09-09','\r'),
 (13,15,3,'2014-09-15','\r'),
 (3,15,4,'2014-09-17','\r'),
 (30,15,2,'2014-09-20','\r'),
 (8,16,4,'2014-05-19','\r'),
 (16,16,2,'2014-06-03','\r'),
 (16,16,1,'2014-06-09','\r'),
 (4,16,5,'2014-06-23','\r'),
 (2,16,1,'2014-07-09','\r'),
 (1,16,2,'2014-07-31','\r'),
 (20,16,4,'2014-08-16','\r'),
 (8,16,4,'2014-08-29','\r'),
 (6,16,2,'2014-09-05','\r'),
 (6,16,3,'2014-09-28','\r'),
 (16,17,5,'2014-05-05','\r'),
 (33,17,2,'2014-05-13','\r'),
 (4,17,3,'2014-06-04','\r'),
 (17,17,1,'2014-07-03','\r'),
 (8,17,4,'2014-07-08','\r'),
 (18,17,4,'2014-07-28','\r'),
 (7,17,5,'2014-08-25','\r'),
 (7,17,3,'2014-08-31','\r'),
 (30,17,1,'2014-09-06','\r'),
 (10,17,2,'2014-09-07','\r'),
 (19,18,1,'2014-05-18','\r'),
 (10,18,1,'2014-06-10','\r'),
 (6,18,1,'2014-06-14','\r'),
 (30,18,1,'2014-06-14','\r'),
 (23,18,5,'2014-06-21','\r'),
 (15,18,3,'2014-07-03','\r'),
 (23,18,5,'2014-07-13','\r'),
 (24,18,1,'2014-07-23','\r'),
 (13,18,4,'2014-07-27','\r'),
 (20,18,4,'2014-08-04','\r'),
 (17,18,1,'2014-08-19','\r'),
 (6,18,5,'2014-08-24','\r'),
 (6,18,4,'2014-09-26','\r'),
 (9,18,3,'2014-09-27','\r'),
 (31,19,2,'2014-05-17','\r'),
 (2,19,3,'2014-05-27','\r'),
 (23,19,1,'2014-05-27','\r'),
 (21,19,5,'2014-06-05','\r'),
 (21,19,1,'2014-06-07','\r'),
 (1,19,5,'2014-06-13','\r'),
 (7,19,3,'2014-06-26','\r'),
 (31,19,5,'2014-06-27','\r'),
 (15,19,2,'2014-07-12','\r'),
 (9,19,4,'2014-08-21','\r'),
 (14,19,1,'2014-09-13','\r'),
 (22,19,4,'2014-09-23','\r'),
 (32,19,2,'2014-09-28','\r'),
 (6,20,3,'2014-05-12','\r'),
 (7,20,3,'2014-05-17','\r'),
 (5,20,5,'2014-06-10','\r'),
 (14,20,5,'2014-07-04','\r'),
 (17,20,4,'2014-07-13','\r'),
 (20,20,2,'2014-08-10','\r'),
 (19,20,1,'2014-08-17','\r'),
 (14,20,1,'2014-09-15','\r'),
 (12,20,3,'2014-09-21','\r'),
 (1,20,3,'2014-09-30','\r'),
 (20,21,2,'2014-05-06','\r'),
 (10,21,1,'2014-06-17','\r'),
 (25,21,1,'2014-06-20','\r'),
 (17,21,4,'2014-07-10','\r'),
 (20,21,4,'2014-07-20','\r'),
 (22,21,2,'2014-07-23','\r'),
 (23,21,3,'2014-07-23','\r'),
 (25,21,5,'2014-08-02','\r'),
 (34,21,3,'2014-08-23','\r'),
 (4,21,1,'2014-08-31','\r'),
 (28,21,2,'2014-09-09','\r'),
 (9,21,3,'2014-09-17','\r'),
 (4,22,5,'2014-05-07','\r'),
 (33,22,2,'2014-05-25','\r'),
 (7,22,1,'2014-06-07','\r'),
 (20,22,1,'2014-06-19','\r'),
 (19,22,5,'2014-07-12','\r'),
 (31,22,1,'2014-07-12','\r'),
 (14,22,5,'2014-07-23','\r'),
 (7,22,2,'2014-08-12','\r'),
 (4,22,2,'2014-08-23','\r'),
 (30,22,3,'2014-08-28','\r'),
 (4,22,1,'2014-08-31','\r'),
 (28,22,1,'2014-09-09','\r'),
 (4,22,4,'2014-09-14','\r'),
 (18,22,5,'2014-09-21','\r'),
 (27,23,4,'2014-06-17','\r'),
 (4,23,2,'2014-07-04','\r'),
 (12,23,1,'2014-07-24','\r'),
 (2,23,5,'2014-08-07','\r'),
 (27,23,4,'2014-09-03','\r'),
 (28,23,2,'2014-09-08','\r'),
 (7,24,1,'2014-05-05','\r'),
 (30,24,1,'2014-05-12','\r'),
 (16,24,4,'2014-05-15','\r'),
 (23,24,3,'2014-05-15','\r'),
 (11,24,4,'2014-06-23','\r'),
 (1,24,4,'2014-07-10','\r'),
 (27,24,1,'2014-07-25','\r'),
 (20,24,1,'2014-08-07','\r'),
 (2,24,4,'2014-08-16','\r'),
 (3,24,3,'2014-09-02','\r'),
 (4,25,2,'2014-05-13','\r'),
 (22,25,4,'2014-06-03','\r'),
 (31,25,4,'2014-06-20','\r'),
 (4,25,3,'2014-06-21','\r'),
 (8,25,2,'2014-06-26','\r'),
 (10,25,3,'2014-07-20','\r'),
 (13,25,5,'2014-07-27','\r'),
 (12,25,2,'2014-07-29','\r'),
 (18,26,4,'2014-05-14','\r'),
 (8,26,1,'2014-05-21','\r'),
 (25,26,1,'2014-06-12','\r'),
 (28,26,1,'2014-07-03','\r'),
 (31,26,2,'2014-07-08','\r'),
 (10,26,2,'2014-08-03','\r'),
 (1,26,5,'2014-09-23','\r'),
 (17,27,4,'2014-05-09','\r'),
 (3,27,5,'2014-06-09','\r'),
 (26,27,1,'2014-07-02','\r'),
 (25,27,2,'2014-07-04','\r'),
 (22,27,2,'2014-07-06','\r'),
 (33,27,5,'2014-07-10','\r'),
 (6,27,2,'2014-07-19','\r'),
 (5,27,5,'2014-07-27','\r'),
 (29,27,5,'2014-08-08','\r'),
 (18,27,1,'2014-08-24','\r'),
 (18,27,4,'2014-09-03','\r'),
 (19,27,5,'2014-09-03','\r'),
 (9,27,3,'2014-09-05','\r'),
 (32,27,5,'2014-09-08','\r'),
 (34,27,3,'2014-09-13','\r'),
 (31,27,1,'2014-09-22','\r'),
 (5,27,1,'2014-09-23','\r'),
 (27,28,2,'2014-05-12','\r'),
 (27,28,2,'2014-05-30','\r'),
 (27,28,5,'2014-06-04','\r'),
 (27,28,4,'2014-06-20','\r'),
 (27,28,3,'2014-07-07','\r'),
 (27,28,4,'2014-08-25','\r'),
 (27,28,5,'2014-08-27','\r'),
 (27,28,1,'2014-09-10','\r'),
 (27,28,4,'2014-09-23','\r'),
 (14,29,4,'2014-05-11','\r'),
 (14,29,3,'2014-05-25','\r'),
 (14,29,4,'2014-06-07','\r'),
 (14,29,2,'2014-06-28','\r'),
 (14,29,2,'2014-07-16','\r'),
 (14,29,1,'2014-08-23','\r'),
 (14,29,3,'2014-08-27','\r'),
 (14,29,5,'2014-09-12','\r'),
 (14,29,3,'2014-09-23','\r');
/*!40000 ALTER TABLE `ma_ap_zuord` ENABLE KEYS */;


--
-- Definition of table `mitarbeiter`
--

DROP TABLE IF EXISTS `mitarbeiter`;
CREATE TABLE `mitarbeiter` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nachname` varchar(45) collate latin1_general_ci NOT NULL,
  `vorname` varchar(45) collate latin1_general_ci NOT NULL,
  `geschlecht` varchar(1) collate latin1_general_ci NOT NULL,
  `gebdat` date NOT NULL,
  `strasse` varchar(60) collate latin1_general_ci NOT NULL,
  `plz` varchar(6) collate latin1_general_ci NOT NULL,
  `ort` varchar(30) collate latin1_general_ci NOT NULL,
  `bundesland` varchar(30) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `mitarbeiter`
--

/*!40000 ALTER TABLE `mitarbeiter` DISABLE KEYS */;
INSERT INTO `mitarbeiter` (`id`,`nachname`,`vorname`,`geschlecht`,`gebdat`,`strasse`,`plz`,`ort`,`bundesland`) VALUES 
 (1,'Preslon','Alexander','M','1989-03-11','Werner-Berg-Gasse 20/H2','8811','Scheifling','Steiermark'),
 (2,'Gräfin','Armin','M','1992-10-15','Waldrastweg 2','8820','Neumarkt in Steiermark','Steiermark'),
 (3,'Dürer','Arnold','M','1987-12-31','Untermarkt 17','8822','Mühlen','Steiermark'),
 (4,'Spasshofer','Thomas','M','1992-07-09','St. Peter 9','9020','Klagenfurt - Innere Stadt','Kärnten'),
 (5,'Ernstmüller','Sebastian','M','1987-08-12','St. Lorenzenerstraße 7/1','9020','Klagenfurt - Sankt Peter','Kärnten'),
 (6,'Müller','Benjamin','M','1992-10-29','Siebenbürgengasse 15','9020','Klagenfurt - Sankt Peter','Kärnten'),
 (7,'Pennetick','Christina','W','1992-07-31','Roseneggerstraße 9','9020','Klagenfurt - Innere Stadt','Kärnten'),
 (8,'Muran','Carmen','W','1989-04-30','Paracelsusstraße 19','9020','Klagenfurt - Innere Stadt','Kärnten'),
 (9,'Lastig','Jimmy','M','1992-10-24','Oberhof 43','9020','Klagenfurt - Innere Stadt','Kärnten'),
 (10,'Kramwetter','Christian','M','1992-06-03','Oberallach 10','9062','Moosburg','Kärnten'),
 (11,'Hechel','Christian','M','1992-06-23','Münzweg 3','9062','Moosburg','Kärnten'),
 (12,'Niederwallner','Christian','M','1992-08-13','Mörtschenstraße 38','9064','Pischeldorf','Kärnten'),
 (13,'Samtitsch','Christoph','M','1992-06-16','Meiselhofstraße 12','9072','Ludmannsdorf','Kärnten'),
 (14,'Josonke','Max ','M','1992-11-17','Maria Elend 208','9073','Klagenfurt - Viktring','Kärnten'),
 (15,'Melker','Christopher','M','1992-05-12','Lukowitz 23','9100','Völkermarkt','Kärnten'),
 (16,'Ofenfrouw','Daniel','M','1989-02-13','Lodengasse 18','9125','Kühnsdorf','Kärnten'),
 (17,'Weinöler','Martina','W','1992-06-12','Lassendorf 115','9131','Wölfnitz','Kärnten'),
 (18,'Mori','Monika','W','1992-11-09','Kulm 76','9141','Eberndorf','Kärnten'),
 (19,'Alukim','Erich','M','1989-06-08','Koschatstraße 4','9141','Eberndorf','Kärnten'),
 (20,'Polzen','Gabriel','M','1989-03-07','Koralmblickweg 20','9182','Maria Elend','Kärnten'),
 (21,'Mostflecki','Gerald','M','1992-11-26','Kl. St. Veit 13','9232','Rosegg','Kärnten'),
 (22,'Ollag','Manfred','M','1987-07-04','Kinderdorfstraße 9/1','9330','Althofen','Kärnten'),
 (23,'Viktori','Stefan','M','1992-08-12','Jakobsberg 74','9363','Metnitz','Kärnten'),
 (24,'Paulertl','Martin','M','1989-07-17','Höfling Schwarze Str. 26','9363','Metnitz','Kärnten'),
 (25,'Plischi','Martin','M','1992-09-15','Heinzgasse 12','9371','Brückl','Kärnten'),
 (26,'Flaschnig','Angelika','W','1992-12-31','Gablern 54','9431','Sankt Stefan','Kärnten'),
 (27,'Rothschild','Cleo','W','1989-02-13','Gablern 38','9473','Lavamünd','Kärnten'),
 (28,'Guckenbergen','Peter','M','1987-11-20','Friedrich-Marx-Straße 9','9560','Kallitsch','Kärnten'),
 (29,'Seifert','Patrick','M','1992-11-04','Flatschacherstraße 152','9560','Feldkirchen in Kärnten','Kärnten'),
 (30,'Finanzer','Paul','M','1992-09-14','Berg ob Leifling 40','9754','Steinfeld','Kärnten'),
 (31,'Rezibas','Raphael','M','1986-09-08','August-Jaksch-Straße 13','9800','Spittal an der Drau','Kärnten'),
 (32,'Wennschon','Stefan ','M','1992-11-04','Andreas Asenbauerstraße 9','9800','Spittal an der Drau','Kärnten'),
 (33,'Wiestadt','Wolfgang','M','1992-09-26','Am Steinkogel 9','9852','Trebesing','Kärnten'),
 (34,'Poltsch','Udo','M','1992-11-05','A. Tschabuschniggstraße 35/2/6','9863','Rennweg','Kärnten'),
 (36,'Einig','Ferdinand','m','2009-05-05','Marillenweg 65','1065','Wien','Wien');
/*!40000 ALTER TABLE `mitarbeiter` ENABLE KEYS */;


--
-- Definition of table `projekte`
--

DROP TABLE IF EXISTS `projekte`;
CREATE TABLE `projekte` (
  `nr` int(10) unsigned NOT NULL auto_increment,
  `titel` varchar(200) collate latin1_general_ci NOT NULL,
  `code` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`nr`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `projekte`
--

/*!40000 ALTER TABLE `projekte` DISABLE KEYS */;
INSERT INTO `projekte` (`nr`,`titel`,`code`) VALUES 
 (1,'Design und Entwicklung einer Web-Stundenplanverwaltung','WSTP'),
 (2,'HomeWork Robot - Roboter zur Hausübungsautomatisierung','ROBO'),
 (3,'WLAN Griller - Mikrowellen Accesspoints','WGR'),
 (5,'Projekt ohne Arbeit','POA'),
 (6,'Access TINF DB','ATDB');
/*!40000 ALTER TABLE `projekte` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
