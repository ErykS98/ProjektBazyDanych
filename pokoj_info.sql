-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Gru 2020, 15:19
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

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pokoj_info`
--
ALTER TABLE `pokoj_info`
  ADD PRIMARY KEY (`pokój_info_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pokoj_info`
--
ALTER TABLE `pokoj_info`
  MODIFY `pokój_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
