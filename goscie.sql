-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Gru 2020, 15:17
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
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `goscie`
--
ALTER TABLE `goscie`
  MODIFY `gosc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `goscie`
--
ALTER TABLE `goscie`
  ADD CONSTRAINT `goscie_ibfk_1` FOREIGN KEY (`gosc_rodzaj_dokumentu_id`) REFERENCES `rodzaj_dokumentu_info` (`rodzaj_dokumentu_info_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
