-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Gru 2020, 15:22
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

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `rodzaj_dokumentu_info`
--
ALTER TABLE `rodzaj_dokumentu_info`
  ADD PRIMARY KEY (`rodzaj_dokumentu_info_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `rodzaj_dokumentu_info`
--
ALTER TABLE `rodzaj_dokumentu_info`
  MODIFY `rodzaj_dokumentu_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
