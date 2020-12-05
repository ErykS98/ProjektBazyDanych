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

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`parking_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `parking`
--
ALTER TABLE `parking`
  MODIFY `parking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
