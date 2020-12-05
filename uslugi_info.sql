-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Gru 2020, 15:23
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
-- Indeksy dla tabeli `uslugi_info`
--
ALTER TABLE `uslugi_info`
  ADD PRIMARY KEY (`uslugi_info_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `uslugi_info`
--
ALTER TABLE `uslugi_info`
  MODIFY `uslugi_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
