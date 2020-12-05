-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Gru 2020, 15:45
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `hotel`
--

DELIMITER $$
--
-- Procedury
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `DodajRabat` (IN `rabat` DECIMAL(3,2), IN `Wyswietl_informacje` TEXT)  NO SQL
BEGIN

INSERT INTO rabaty (rabat,rabat_info)
VALUES  (rabat,Wyswietl_informacje);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `OpisRabatu` (IN `w` INT(6))  MODIFIES SQL DATA
BEGIN
SELECT * FROM rabaty WHERE  rabat_id=w; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UsunSamochodZparkingu` (IN `idPARKINGU` INT(11))  NO SQL
BEGIN
DELETE FROM parking
WHERE parking_id  = idPARKINGU ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UsunUsluge` (IN `IdUslugi` INT(11))  NO SQL
BEGIN
DELETE 
FROM uslugi_info
WHERE uslugi_info_id  = IdUslugi ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ZmienDaneDokumentuGoscia` (IN `TypDokumentu` VARCHAR(20), IN `NumerDokumentu` VARCHAR(30), IN `IDgoscia` INT(30))  NO SQL
BEGIN  
            UPDATE rodzaj_dokumentu_info  
            SET    
         rodzaj_dokumentu_info_typ = TypDokumentu,  
     rodzaj_dokumentu_info_numer = NumerDokumentu  
                
     WHERE  rodzaj_dokumentu_info_id  = IDgoscia  ;
        END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ZmienDaneGoscia` (IN `ID` INT(11), IN `IMIE` VARCHAR(50), IN `NAZWISKO` VARCHAR(50), IN `PESEL` INT(11), IN `MIASTO` VARCHAR(20), IN `ADRES` VARCHAR(20))  NO SQL
BEGIN  
            UPDATE goscie  
            SET    gosc_imie = IMIE,  
                   gosc_nazwisko = NAZWISKO,  
                   gosc_pesel = PESEL,  
                   gosc_miasto = MIASTO,  
                   gosc_adres = ADRES  
            WHERE  gosc_id  = ID   ;
        END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `goscie`
--

CREATE TABLE `goscie` (
  `gosc_id` int(11) NOT NULL,
  `gosc_imie` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `gosc_nazwisko` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `gosc_rodzaj_dokumentu_id` int(11) NOT NULL,
  `gosc_pesel` int(11) NOT NULL,
  `gosc_miasto` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `gosc_adres` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `goscie`
--

INSERT INTO `goscie` (`gosc_id`, `gosc_imie`, `gosc_nazwisko`, `gosc_rodzaj_dokumentu_id`, `gosc_pesel`, `gosc_miasto`, `gosc_adres`) VALUES
(1, 'Kamil', 'Paszkowski', 1, 2147483647, 'Warszawa', 'Henrykowska 3/12 ,01'),
(2, 'Henryk', 'Bazan ', 2, 2147483647, 'Sanok', 'Lipińskeigo 22A , 38'),
(3, 'Izabela', 'Brzewska', 3, 2147483647, 'Sanok', 'Sienkiewicza 1/5 , 3'),
(4, 'Diana', 'Nowak ', 4, 2147483647, 'Rzeszów', 'Jagielońska 2 35-025'),
(5, 'Robert', 'Beck', 5, 2147483647, 'Leszno', 'Mickiewicza 22A 64-1'),
(6, 'Kinga', 'Sadowska', 6, 2147483647, 'Sanok', 'Lipińskiego 22 38-50'),
(7, 'Kamil', 'Połuszańczyk', 7, 2147483647, 'Krobia', 'Piłsudskiego 63-840'),
(8, 'Jakub', 'Klimowicz', 8, 2147483647, 'Poznań', 'Fabianowo 12/30 60-0'),
(9, 'Piotr', 'Semeniuk', 9, 2147483647, 'Dąbrowa Górnicza', 'Kopalniana 41-310'),
(10, 'Paweł', 'Mazurek', 10, 2147483647, 'Kalisz', 'Opatowska 62-860'),
(11, 'Renata', 'Lewandowska', 11, 2147483647, 'Przeworsk', 'Jana Pawła 13/12 37-'),
(12, 'Bożydar', 'Kamiński ', 12, 2147483647, 'Iwonicz', 'Sienkiewicza 22A 38-'),
(13, 'Robert', 'Król', 13, 2147483647, 'Gliwice', 'Wiejska 1  44-103'),
(14, 'Kamila', 'Wieczorek', 14, 231923772, 'Katowice', 'Miejska 5 40-000'),
(15, 'Julia', 'Jabłońska', 15, 2147483647, 'Kraków', 'Królewska 12/50 30-0'),
(16, 'Antoni', 'Wróbel', 16, 2147483647, 'Warszawa', 'Wiejska 12/10 01-934'),
(17, 'Łukasz', 'Nowakowski', 17, 2147483647, 'Gdańsk', 'Pomorska 22 80-017'),
(18, 'Jarosław', 'Majewski', 18, 2147483647, 'Iwonicz-Zdrój', 'Piwarskiego 66 38-44'),
(19, 'Mariola', 'Olszewska', 19, 2147483647, 'Poznań', 'Węgrzyna 12/1 60-005'),
(20, 'Marcin', 'Stępień', 20, 2147483647, 'Szczecin', 'Stoczniowa 4/44 70-0'),
(21, 'Michał', 'Malinowski', 21, 2147483647, 'Poznań', 'Białostocka 5B  60-0'),
(22, 'Aneta', 'Jaworska', 22, 2147483647, 'Tyczyn', 'Biała Góra 42 35-001'),
(23, 'Natalia', 'Adamczyk', 23, 2147483647, 'Kielce', 'Jana Pawła 55 25-022'),
(24, 'Kinga', 'Dudek', 24, 2147483647, 'Bircza', 'Modlitewna 37-740'),
(25, 'Eryk', 'Nowicki', 25, 1312026984, 'Warszawa', 'Fabianowska 90 01-93'),
(26, 'Joanna', 'Pawlak', 26, 2147483647, 'Łochów', 'Kmitów 19/20 07-130'),
(27, 'Władysław', 'Górski', 27, 2147483647, 'Wrocław', 'Pileckiego 7/35  50-'),
(28, 'Jakub', 'Paszkowski', 28, 2147483647, 'Nur', 'Smolki 10/10 07-322'),
(29, 'Edyta', 'Witkowska', 29, 2147483647, 'Warszawa', 'Grunwaldzka 120 01-9'),
(30, 'Marcelina', 'Walczak', 30, 2147483647, 'Opatów', 'Grunwaldzka 77 27-50');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `parking`
--

CREATE TABLE `parking` (
  `parking_id` int(11) NOT NULL,
  `parking_numer_miejsca` int(11) NOT NULL,
  `parking_marka_pojazdu` varchar(11) COLLATE utf8_polish_ci NOT NULL,
  `parking_numer_rejestracyjny` varchar(9) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `parking`
--

INSERT INTO `parking` (`parking_id`, `parking_numer_miejsca`, `parking_marka_pojazdu`, `parking_numer_rejestracyjny`) VALUES
(1, 1, 'Skoda', 'WA 6642E'),
(2, 2, 'Audi', 'RSA 3240E'),
(3, 3, 'Citroen', 'RSA 43211'),
(4, 5, 'Audi', 'RZ 05206'),
(5, 9, 'BMW', 'PL 61257'),
(6, 7, 'Hyundai', 'ZKO 46959'),
(7, 4, 'Skoda', 'PGS 22757'),
(8, 16, 'Mercedes', 'PO 46959'),
(9, 22, 'Audi', 'SD 46959'),
(10, 17, 'Mercedes', 'PK 46959'),
(11, 21, 'Fiat', 'RKR 46959'),
(12, 18, 'Hyundai', 'SG 46959'),
(13, 12, 'Mercedes', 'SK 46959'),
(14, 20, 'Volkswagen', 'KR 46959'),
(15, 19, 'Volkswagen', 'WW 46959'),
(16, 23, 'Fiat', 'GD 46959'),
(17, 24, 'Fiat', 'RKR 46959'),
(18, 13, 'Mercedes', 'PO 46959'),
(19, 25, 'Saab', 'PO 46959'),
(20, 14, 'Mercedes', 'RZE 46959'),
(21, 10, 'Volkswagen', 'PRZ 46959'),
(22, 8, 'Suzuki', 'WWE 46959'),
(23, 6, 'Mercedes', 'TSA 46959'),
(25, 11, 'Mercedes', 'TOP 46959');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `platnosc`
--

CREATE TABLE `platnosc` (
  `platnosc_id` int(11) NOT NULL,
  `platnosc_rabat_id` int(11) DEFAULT NULL,
  `platnosc_rodzaj_platnosci` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `platnosc_kwota_po_rabacie` decimal(10,2) NOT NULL,
  `platnosc_kwota_przed_rabatem` decimal(10,2) NOT NULL,
  `platnosc_data_realizacji_platnosci` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `platnosc`
--

INSERT INTO `platnosc` (`platnosc_id`, `platnosc_rabat_id`, `platnosc_rodzaj_platnosci`, `platnosc_kwota_po_rabacie`, `platnosc_kwota_przed_rabatem`, `platnosc_data_realizacji_platnosci`) VALUES
(6, 2, 'Gotówka', '1062.50', '1250.00', '2020-10-24'),
(7, NULL, 'Karta płatnicza', '0.00', '1150.00', '2020-10-26'),
(8, NULL, 'Gotówka', '0.00', '2250.00', '2020-10-30'),
(9, NULL, 'Karta płatnicza', '0.00', '320.00', '2020-10-24'),
(10, NULL, 'Gotówka', '0.00', '1225.00', '2020-10-30'),
(11, NULL, 'Gotówka', '0.00', '520.00', '2020-10-24'),
(12, 4, 'Karta płatnicza', '798.00', '840.00', '2020-10-26'),
(13, NULL, 'Karta płatnicza', '0.00', '600.00', '2020-10-24'),
(14, 4, 'Karta płatnicza', '1586.50', '1000.00', '2020-10-26'),
(15, NULL, 'Karta płatnicza', '0.00', '1670.00', '2020-10-29'),
(16, 2, 'Karta płatnicza', '425.00', '500.00', '2020-10-30'),
(17, NULL, 'Gotówka', '0.00', '1240.00', '2020-10-31'),
(18, NULL, 'Karta płatnicza', '0.00', '420.00', '2020-11-01'),
(19, 1, 'Karta płatnicza', '1665.00', '1850.00', '2020-11-05'),
(20, NULL, 'Karta płatnicza', '0.00', '320.00', '2020-11-02'),
(21, NULL, 'Gotówka', '0.00', '2265.00', '2020-11-11'),
(22, 2, 'Karta płatnicza', '357.00', '420.00', '2020-11-04'),
(23, 4, 'Gotówka', '1990.25', '2095.00', '2020-11-11'),
(24, 1, 'Karta płatnicza', '2.00', '2430.00', '2020-11-11'),
(25, NULL, 'Karta płatnicza', '0.00', '865.00', '2020-12-01'),
(26, 3, 'Gotówka', '3860.00', '4825.00', '2020-12-19'),
(27, NULL, 'Gotówka', '0.00', '3425.00', '2020-11-19'),
(28, NULL, 'Gotówka', '0.00', '1870.00', '2020-11-21'),
(29, NULL, 'Gotówka', '0.00', '1850.00', '2020-11-26'),
(30, NULL, 'Karta płatnicza', '0.00', '3950.00', '2020-12-06'),
(31, NULL, 'Gotówka', '0.00', '300.00', '2020-11-14'),
(32, NULL, 'Karta płatnicza', '0.00', '1680.00', '2020-11-22'),
(34, 1, 'Karta płatnicza', '270.00', '300.00', '2020-11-20'),
(35, NULL, 'Karta płatnicza', '0.00', '500.00', '2020-11-20'),
(36, NULL, 'Gotówka', '0.00', '3690.00', '2020-11-30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pokoj`
--

CREATE TABLE `pokoj` (
  `pokoj_id` int(11) NOT NULL,
  `pokoj_numer_id` int(11) NOT NULL,
  `pokoj_pietro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pokoj`
--

INSERT INTO `pokoj` (`pokoj_id`, `pokoj_numer_id`, `pokoj_pietro`) VALUES
(1, 2, 1),
(2, 5, 1),
(3, 1, 1),
(4, 2, 1),
(5, 7, 1),
(6, 6, 1),
(7, 2, 1),
(8, 8, 2),
(9, 4, 2),
(10, 9, 2),
(11, 9, 2),
(12, 3, 2),
(13, 7, 2),
(14, 8, 2),
(15, 5, 3),
(16, 8, 3),
(17, 5, 3),
(18, 9, 3),
(19, 6, 3),
(20, 7, 3),
(21, 10, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pokoj_info`
--

CREATE TABLE `pokoj_info` (
  `pokój_info_id` int(11) NOT NULL,
  `pokój_info_liczba_miejsc` int(11) NOT NULL,
  `pokoj_info_rodzaj` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `pokój_info_cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pokoj_info`
--

INSERT INTO `pokoj_info` (`pokój_info_id`, `pokój_info_liczba_miejsc`, `pokoj_info_rodzaj`, `pokój_info_cena`) VALUES
(1, 1, 'Normalny', 100),
(2, 2, 'Normalny', 160),
(3, 3, 'Normalny', 210),
(4, 4, 'Normalny', 250),
(5, 5, 'Normalny', 300),
(6, 1, 'DELUXE', 150),
(7, 2, 'DELUXE', 210),
(8, 3, 'DELUXE', 260),
(9, 4, 'DELUXE', 310),
(10, 5, 'DELUXE', 410);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rabaty`
--

CREATE TABLE `rabaty` (
  `rabat_id` int(11) NOT NULL,
  `rabat` decimal(4,2) NOT NULL,
  `rabat_info` varchar(1000) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rabaty`
--

INSERT INTO `rabaty` (`rabat_id`, `rabat`, `rabat_info`) VALUES
(1, '0.10', ' 1 -  Karta dużej rodziny'),
(2, '0.15', ' 2 -  Student'),
(3, '0.20', ' 3 -  Pobyt powyżej 30 dni'),
(4, '0.05', ' 4 -  Karta stałego klienta'),
(15, '0.20', 'Dodano nowy rabat'),
(16, '0.10', 'test');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `rezerwacja_id` int(11) NOT NULL,
  `rezerwacja_gosc_id` int(11) NOT NULL,
  `rezerwacja_pokoj_id` int(11) DEFAULT NULL,
  `rezerwacja_uslugi_id` int(11) DEFAULT NULL,
  `rezerwacja_parking_id` int(11) DEFAULT NULL,
  `rezerwacja_data_zameldowania` date NOT NULL,
  `rezerwacja_data_wymeldowania` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rezerwacje`
--

INSERT INTO `rezerwacje` (`rezerwacja_id`, `rezerwacja_gosc_id`, `rezerwacja_pokoj_id`, `rezerwacja_uslugi_id`, `rezerwacja_parking_id`, `rezerwacja_data_zameldowania`, `rezerwacja_data_wymeldowania`) VALUES
(6, 1, 2, 1, 1, '2020-10-20', '2020-10-24'),
(7, 2, 7, 2, 2, '2020-10-20', '2020-10-26'),
(8, 3, 9, NULL, 3, '2020-10-21', '2020-10-30'),
(9, 4, 1, NULL, 4, '2020-10-22', '2020-10-24'),
(10, 5, 6, 3, 5, '2020-10-22', '2020-10-30'),
(11, 6, 14, NULL, 6, '2020-10-22', '2020-10-24'),
(12, 7, 20, NULL, 7, '2020-10-22', '2020-10-26'),
(13, 8, 15, NULL, 8, '2020-10-23', '2020-10-24'),
(14, 9, 1, 4, 9, '2020-10-23', '2020-10-26'),
(15, 10, 21, 5, 10, '2020-10-25', '2020-10-29'),
(16, 11, 3, NULL, NULL, '2020-10-25', '2020-10-30'),
(17, 12, 10, NULL, 11, '2020-10-27', '2020-10-31'),
(18, 13, 13, NULL, 12, '2020-10-30', '2020-11-01'),
(19, 14, 2, 6, 13, '2020-10-30', '2020-11-05'),
(20, 15, 7, NULL, 14, '2020-10-31', '2020-11-02'),
(21, 16, 9, 7, 15, '2020-11-02', '2020-11-11'),
(22, 17, 5, NULL, 16, '2020-11-02', '2020-11-04'),
(23, 18, 16, 8, 17, '2020-11-03', '2020-11-11'),
(24, 19, 17, 9, 18, '2020-11-03', '2020-11-11'),
(25, 20, 12, 10, NULL, '2020-11-05', '2020-12-01'),
(26, 21, 3, 11, 19, '2020-11-05', '2020-12-25'),
(27, 22, 10, 12, 20, '2020-11-08', '2020-11-19'),
(28, 23, 6, 13, NULL, '2020-11-09', '2020-11-21'),
(29, 24, 14, 14, 21, '2020-11-19', '2020-11-26'),
(30, 25, 16, 15, 22, '2020-11-22', '2020-12-06'),
(31, 26, 15, NULL, 23, '2020-11-14', '2020-11-15'),
(32, 27, 20, NULL, NULL, '2020-11-14', '2020-11-22'),
(34, 29, 3, NULL, NULL, '2020-11-17', '2020-11-20'),
(35, 1, 9, NULL, 1, '2020-11-18', '2020-11-20'),
(36, 30, 21, NULL, 25, '2020-11-21', '2020-11-30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaj_dokumentu_info`
--

CREATE TABLE `rodzaj_dokumentu_info` (
  `rodzaj_dokumentu_info_id` int(11) NOT NULL,
  `rodzaj_dokumentu_info_typ` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `rodzaj_dokumentu_info_numer` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rodzaj_dokumentu_info`
--

INSERT INTO `rodzaj_dokumentu_info` (`rodzaj_dokumentu_info_id`, `rodzaj_dokumentu_info_typ`, `rodzaj_dokumentu_info_numer`) VALUES
(1, 'Dowód Tożsamości', 'TGI406593'),
(2, 'Dowód Tożsamości', 'HBP742057'),
(3, 'Dowód Tożsamości', 'JUG649679'),
(4, 'Dowód Tożsamości', 'UXN755854'),
(5, 'Dowód Tożsamości', 'PBU 111333'),
(6, 'Dowód Tożsamości', 'EXU783968'),
(7, 'Paszport', 'ZJH304532'),
(8, 'Dowód Tożsamości', 'YXU728406'),
(9, 'Paszport', 'PMM760989'),
(10, 'Dowód Tożsamości', 'ONR743116'),
(11, 'Dowód Tożsamości', 'GRW863727'),
(12, 'Paszport', 'KYM169073'),
(13, 'Paszport', 'XXK664059'),
(14, 'Dowód Tożsamości', 'JRH404557'),
(15, 'Dowód Tożsamości', 'KMU454694'),
(16, 'Dowód Tożsamości', 'YKI760656'),
(17, 'Paszport', 'XTJ190867'),
(18, 'Dowód Tożsamości', 'HAT282255'),
(19, 'Paszport', 'UEL553763'),
(20, 'Dowód Tożsamości', 'ICN018879'),
(21, 'Dowód Tożsamości', 'KXH019251'),
(22, 'Dowód Tożsamości', 'VJY335520'),
(23, 'Dowód Tożsamości', 'DZG452373'),
(24, 'Dowód Tożsamości', 'QMY421094'),
(25, 'Dowód Tożsamości', 'PZO559748'),
(26, 'Dowód Tożsamości', 'QKU526672'),
(27, 'Dowód Tożsamości', 'NOG211573'),
(28, 'Dowód Tożsamości', 'ETN615688'),
(29, 'Dowód Tożsamości', 'IPK038857'),
(30, 'Dowód Tożsamości', 'RCW799136');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslugi`
--

CREATE TABLE `uslugi` (
  `uslugi_id` int(11) NOT NULL,
  `uslugi_info_id` int(11) NOT NULL,
  `uslugi_data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uslugi`
--

INSERT INTO `uslugi` (`uslugi_id`, `uslugi_info_id`, `uslugi_data`) VALUES
(1, 2, '2020-10-20'),
(2, 1, '2020-10-20'),
(3, 5, '2020-10-22'),
(4, 6, '2020-10-26'),
(5, 1, '2020-10-27'),
(6, 2, '2020-11-03'),
(7, 3, '2020-11-04'),
(8, 4, '2020-11-04'),
(9, 1, '2020-11-07'),
(10, 5, '2020-11-15'),
(11, 5, '2020-11-15'),
(12, 3, '2020-11-18'),
(13, 6, '2020-11-20'),
(14, 1, '2020-11-24'),
(15, 2, '2020-12-01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslugi_info`
--

CREATE TABLE `uslugi_info` (
  `uslugi_info_id` int(11) NOT NULL,
  `uslugi_info_cena` decimal(10,2) NOT NULL,
  `uslugi_info_charakterystyka` varchar(1000) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uslugi_info`
--

INSERT INTO `uslugi_info` (`uslugi_info_id`, `uslugi_info_cena`, `uslugi_info_charakterystyka`) VALUES
(1, '30.00', ' 1 -- Karnet na Silownie'),
(2, '50.00', '2 -- Karnet SPA '),
(3, '15.00', '3 --Zestaw  Śniadan'),
(4, '15.00', '4 -- Zestaw Kolacji'),
(5, '25.00', '5 -- Śniadanie+Kolacja'),
(6, '70.00', '6 --Karnet na siłownie +Karnet SPA');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `goscie`
--
ALTER TABLE `goscie`
  ADD PRIMARY KEY (`gosc_id`),
  ADD KEY `gosc_rodzaj_dokumentu_id` (`gosc_rodzaj_dokumentu_id`);

--
-- Indeksy dla tabeli `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`parking_id`);

--
-- Indeksy dla tabeli `platnosc`
--
ALTER TABLE `platnosc`
  ADD PRIMARY KEY (`platnosc_id`),
  ADD KEY `platnosc_rabat_id` (`platnosc_rabat_id`);

--
-- Indeksy dla tabeli `pokoj`
--
ALTER TABLE `pokoj`
  ADD PRIMARY KEY (`pokoj_id`),
  ADD KEY `pokoj_numer_id` (`pokoj_numer_id`);

--
-- Indeksy dla tabeli `pokoj_info`
--
ALTER TABLE `pokoj_info`
  ADD PRIMARY KEY (`pokój_info_id`);

--
-- Indeksy dla tabeli `rabaty`
--
ALTER TABLE `rabaty`
  ADD PRIMARY KEY (`rabat_id`),
  ADD KEY `rabat` (`rabat`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`rezerwacja_id`),
  ADD KEY `rezerwacja_gosc_id` (`rezerwacja_gosc_id`,`rezerwacja_pokoj_id`,`rezerwacja_uslugi_id`,`rezerwacja_parking_id`),
  ADD KEY `rezerwacja_parking_id` (`rezerwacja_parking_id`),
  ADD KEY `rezerwacja_pokoj_id` (`rezerwacja_pokoj_id`),
  ADD KEY `rezerwacja_uslugi_id` (`rezerwacja_uslugi_id`);

--
-- Indeksy dla tabeli `rodzaj_dokumentu_info`
--
ALTER TABLE `rodzaj_dokumentu_info`
  ADD PRIMARY KEY (`rodzaj_dokumentu_info_id`);

--
-- Indeksy dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`uslugi_id`),
  ADD KEY `uslugi_info_id` (`uslugi_info_id`);

--
-- Indeksy dla tabeli `uslugi_info`
--
ALTER TABLE `uslugi_info`
  ADD PRIMARY KEY (`uslugi_info_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `goscie`
--
ALTER TABLE `goscie`
  MODIFY `gosc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `parking`
--
ALTER TABLE `parking`
  MODIFY `parking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT dla tabeli `platnosc`
--
ALTER TABLE `platnosc`
  MODIFY `platnosc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `pokoj`
--
ALTER TABLE `pokoj`
  MODIFY `pokoj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `pokoj_info`
--
ALTER TABLE `pokoj_info`
  MODIFY `pokój_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `rabaty`
--
ALTER TABLE `rabaty`
  MODIFY `rabat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `rezerwacja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `rodzaj_dokumentu_info`
--
ALTER TABLE `rodzaj_dokumentu_info`
  MODIFY `rodzaj_dokumentu_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `uslugi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `uslugi_info`
--
ALTER TABLE `uslugi_info`
  MODIFY `uslugi_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `goscie`
--
ALTER TABLE `goscie`
  ADD CONSTRAINT `goscie_ibfk_1` FOREIGN KEY (`gosc_rodzaj_dokumentu_id`) REFERENCES `rodzaj_dokumentu_info` (`rodzaj_dokumentu_info_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `platnosc`
--
ALTER TABLE `platnosc`
  ADD CONSTRAINT `platnosc_ibfk_1` FOREIGN KEY (`platnosc_rabat_id`) REFERENCES `rabaty` (`rabat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `platnosc_ibfk_2` FOREIGN KEY (`platnosc_id`) REFERENCES `rezerwacje` (`rezerwacja_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `pokoj`
--
ALTER TABLE `pokoj`
  ADD CONSTRAINT `pokoj_ibfk_1` FOREIGN KEY (`pokoj_numer_id`) REFERENCES `pokoj_info` (`pokój_info_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD CONSTRAINT `rezerwacje_ibfk_1` FOREIGN KEY (`rezerwacja_parking_id`) REFERENCES `parking` (`parking_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rezerwacje_ibfk_2` FOREIGN KEY (`rezerwacja_pokoj_id`) REFERENCES `pokoj` (`pokoj_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rezerwacje_ibfk_3` FOREIGN KEY (`rezerwacja_gosc_id`) REFERENCES `goscie` (`gosc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rezerwacje_ibfk_4` FOREIGN KEY (`rezerwacja_uslugi_id`) REFERENCES `uslugi` (`uslugi_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  ADD CONSTRAINT `uslugi_ibfk_1` FOREIGN KEY (`uslugi_info_id`) REFERENCES `uslugi_info` (`uslugi_info_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
