-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Gru 2020, 15:18
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

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `platnosc`
--
ALTER TABLE `platnosc`
  ADD PRIMARY KEY (`platnosc_id`),
  ADD KEY `platnosc_rabat_id` (`platnosc_rabat_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `platnosc`
--
ALTER TABLE `platnosc`
  MODIFY `platnosc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `platnosc`
--
ALTER TABLE `platnosc`
  ADD CONSTRAINT `platnosc_ibfk_1` FOREIGN KEY (`platnosc_rabat_id`) REFERENCES `rabaty` (`rabat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `platnosc_ibfk_2` FOREIGN KEY (`platnosc_id`) REFERENCES `rezerwacje` (`rezerwacja_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
