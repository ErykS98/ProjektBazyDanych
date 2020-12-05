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

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pokoj`
--
ALTER TABLE `pokoj`
  ADD PRIMARY KEY (`pokoj_id`),
  ADD KEY `pokoj_numer_id` (`pokoj_numer_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pokoj`
--
ALTER TABLE `pokoj`
  MODIFY `pokoj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `pokoj`
--
ALTER TABLE `pokoj`
  ADD CONSTRAINT `pokoj_ibfk_1` FOREIGN KEY (`pokoj_numer_id`) REFERENCES `pokoj_info` (`pokój_info_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
