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

--
-- Indeksy dla zrzutów tabel
--

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
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `rezerwacja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD CONSTRAINT `rezerwacje_ibfk_1` FOREIGN KEY (`rezerwacja_parking_id`) REFERENCES `parking` (`parking_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rezerwacje_ibfk_2` FOREIGN KEY (`rezerwacja_pokoj_id`) REFERENCES `pokoj` (`pokoj_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rezerwacje_ibfk_3` FOREIGN KEY (`rezerwacja_gosc_id`) REFERENCES `goscie` (`gosc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rezerwacje_ibfk_4` FOREIGN KEY (`rezerwacja_uslugi_id`) REFERENCES `uslugi` (`uslugi_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
