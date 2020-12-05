-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Gru 2020, 15:20
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

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `rabaty`
--
ALTER TABLE `rabaty`
  ADD PRIMARY KEY (`rabat_id`),
  ADD KEY `rabat` (`rabat`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `rabaty`
--
ALTER TABLE `rabaty`
  MODIFY `rabat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
