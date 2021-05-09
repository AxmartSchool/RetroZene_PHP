-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Máj 09. 17:05
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `zene`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lemez`
--

CREATE TABLE `lemez` (
  `id` int(11) NOT NULL,
  `szerzo` varchar(30) NOT NULL,
  `cim` varchar(50) NOT NULL,
  `ar` int(11) NOT NULL,
  `megjelenes` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `lemez`
--

INSERT INTO `lemez` (`id`, `szerzo`, `cim`, `ar`, `megjelenes`) VALUES
(5, 'After Crying', 'Megalázottak és megszomorított', 2600, 'CD'),
(6, 'After Crying', 'Megalázottak és megszomorított', 1300, 'MC'),
(7, 'Beatrice', 'Utálom az egész XX. századot', 2590, 'CD'),
(8, 'Beatrice', 'Vidám magyarok', 2590, 'CD'),
(9, 'Bikini', 'Izzik a tavaszi délután', 2590, 'CD'),
(10, 'Bikini', 'Búcsúkoncert', 2590, 'CD'),
(11, 'Bikini', 'A sötétebbik oldal', 2590, 'CD'),
(12, 'D. Nagy és a Frakció', 'Budapest felett...', 2590, 'CD'),
(13, 'Európa Kiadó', 'Itt kísértünk', 2590, 'CD'),
(14, 'Pokolgép', 'Adj új erőt', 2590, 'CD'),
(15, 'Pál Utcai Fiúk', 'A nagy rohanás', 2590, 'CD'),
(16, 'Halász Judit', 'Vannak még rossz gyerekek', 3420, 'CD'),
(17, 'Halász Judit', 'Vannak még rossz gyerekek', 1540, 'MC'),
(18, 'Republic', 'Én vagyok a világ', 3420, 'CD'),
(19, 'Republic', 'Én vagyok a világ', 1540, 'MC'),
(20, 'Republic', 'Hoppá - Hoppá !!!', 3420, 'CD'),
(21, 'Republic', 'Hoppá - Hoppá !!!', 1540, 'MC'),
(22, 'Lord', 'Az utca kövén', 2590, 'CD'),
(23, 'Moby Dick', 'Körhinta', 2590, 'CD'),
(24, 'Moby Dick', 'Kegyetlen évek', 2590, 'CD'),
(25, 'Lakatos Sándor és ci', 'Lenn a délibábos Hortobágyon', 2500, 'CD'),
(26, 'Lakatos Sándor és ci', 'Lenn a délibábos Hortobágyon', 960, 'MC'),
(27, 'Napoleon Boulevard', 'Napoleon Boulevard', 2740, 'CD'),
(28, 'Napoleon Boulevard', 'Napoleon Boulevard', 1280, 'MC'),
(29, 'EDDA', '13.', 2770, 'CD'),
(30, 'EDDA', '13.', 1290, 'MC'),
(31, 'Zámbó Jimmy', '2. Zámbó Jimmy', 3440, 'CD'),
(32, 'Zámbó Jimmy', '2. Zámbó Jimmy', 1570, 'MC'),
(33, 'Gergely Róbert', '2. Szerelmek', 1290, 'MC'),
(34, 'EDDA', 'Az EDDA két arca (2 CD)', 5830, 'CD'),
(35, 'EDDA', 'Az EDDA két arca (2 MC)', 2770, 'MC'),
(36, 'EDDA', '15. - Elveszett illúziók', 3440, 'CD'),
(37, 'EDDA', '15. - Elveszett illúziók', 1570, 'MC'),
(38, 'Republic', 'Hahó öcsi!!!', 3420, 'CD'),
(39, 'Republic', 'Hahó öcsi!!!', 1540, 'MC'),
(40, 'Akela', 'Fenevad', 1280, 'MC'),
(41, 'Szörényi Levente, Ne', 'Atilla, az Isten kardja - rock', 4960, 'CD'),
(42, 'Szörényi Levente, Ne', 'Atilla, az Isten kardja - rock', 2330, 'MC'),
(43, 'Bonanza Banzai', '1984', 2740, 'CD'),
(44, 'Bonanza Banzai', '1984', 1280, 'MC'),
(45, 'Bonanza Banzai', 'Bonanza Live Banzai 1991', 2740, 'CD'),
(46, 'Bonanza Banzai', 'Bonanza Live Banzai 1991', 1280, 'MC'),
(47, 'Bonanza Banzai', 'A jel', 2740, 'CD'),
(48, 'Bonanza Banzai', 'A jel', 1280, 'MC'),
(49, 'Bonanza Banzai', 'Elmondatott', 2740, 'CD'),
(50, 'Bonanza Banzai', 'Elmondatott', 1280, 'MC'),
(51, 'Bonanza Banzai', 'Induljon a banzáj', 2740, 'CD'),
(52, 'Bonanza Banzai', 'Induljon a banzáj', 1280, 'MC'),
(53, 'Demjén Ferenc', 'Demjén Hat', 3350, 'CD'),
(54, 'Demjén Ferenc', 'Demjén Hat', 1480, 'MC'),
(55, 'Demjén Ferenc', 'A Föld a szeretőm', 3350, 'CD'),
(56, 'Demjén Ferenc', 'A Föld a szeretőm', 1390, 'MC'),
(57, 'Demjén Ferenc', 'A szabadság vándora', 3350, 'CD'),
(58, 'Demjén Ferenc', 'A szabadság vándora', 1390, 'MC'),
(59, 'Demjén Ferenc', 'Fújom a dalt', 2740, 'CD'),
(60, 'Demjén Ferenc', 'Elveszett gyémántok', 3350, 'CD'),
(61, 'Demjén Ferenc', 'Elveszett gyémántok', 1390, 'MC'),
(62, 'Dolly Roll', 'Simogass napsugár - válogatás', 2740, 'CD'),
(63, 'Dolly Roll', 'Simogass napsugár - válogatás', 1280, 'MC'),
(64, 'EDDA', 'Best Of \'80 - \'90', 2740, 'CD'),
(65, 'EDDA', 'Best Of \'80 - \'90', 1280, 'MC'),
(66, 'Gerendás Péter', '908 - Gerendás Péter', 2740, 'CD'),
(67, 'Gerendás Péter', '908 - Gerendás Péter', 1280, 'MC'),
(68, 'Hobo Blues Band', 'Vadászat (2 CD)', 4960, 'CD'),
(69, 'Hobo Blues Band', 'Vadászat (2 MC)', 2330, 'MC'),
(70, 'Hobo Blues Band', 'Férfibánat', 2740, 'CD'),
(71, 'Hobo Blues Band', 'Férfibánat', 1280, 'MC'),
(72, 'Hobo Blues Band', 'Kopaszkutya - filmzene', 2740, 'CD'),
(73, 'Hobo Blues Band', 'Kopaszkutya - filmzene', 1280, 'MC'),
(74, 'Hollós Ilona', 'Legendák II.', 2740, 'CD'),
(75, 'Illés', 'A koncert - Sportcsarnok \'81', 2740, 'CD'),
(76, 'Illés', 'A koncert - Sportcsarnok \'81', 1280, 'MC'),
(77, 'Komár László', 'Viva Las Vegas', 2740, 'CD'),
(78, 'Komár László', 'Viva Las Vegas', 1280, 'MC'),
(79, 'Kispál és a Borz', 'I. Naphoz holddal', 3040, 'CD'),
(80, 'Kispál és a Borz', 'I. Naphoz holddal', 1380, 'MC'),
(81, 'Kispál és a Borz', 'Föld, kaland, ilyesmi', 3040, 'CD'),
(82, 'Kispál és a Borz', 'Föld, kaland, ilyesmi', 1380, 'MC'),
(83, 'Koós János', 'Az én utam', 2590, 'CD'),
(84, 'Koós János', 'Az én utam', 1390, 'MC'),
(85, 'Lagzi Lajcsi', 'Kicsiny falum', 800, 'MC'),
(86, 'Lagzi Lajcsi', 'Utcára nyílik a kocsmaajtó', 800, 'MC'),
(87, 'LGT', 'Búcsúkoncert', 2740, 'CD'),
(88, 'LGT', 'Búcsúkoncert (2 MC)', 2330, 'MC'),
(89, 'LGT', 'LGT összes nagylemeze I-II. (1', 27200, 'CD'),
(90, 'LGT', 'LGT összes kislemeze', 2740, 'CD'),
(91, 'LGT', 'LGT összes kislemeze', 1280, 'MC'),
(92, 'LGT', 'Ellenfél nélkül', 2740, 'CD'),
(93, 'Metró', 'Metró koncert - Budapest Sport', 2740, 'CD'),
(94, 'Metró', 'Metró koncert - Budapest Sport', 1280, 'MC'),
(95, 'Mini együttes', 'Vissza a városba', 2740, 'CD'),
(96, 'Mini együttes', 'Vissza a városba', 1280, 'MC'),
(97, 'Máté Péter', 'Egy darabot a szívemből - válo', 2740, 'CD'),
(98, 'Máté Péter', 'Egy darabot a szívemből - válo', 1280, 'MC'),
(99, 'Máté Péter', 'Elmegyek', 2740, 'CD'),
(100, 'Máté Péter', 'Elmegyek', 1280, 'MC'),
(101, 'Németh Lehel', '1.  Legendák', 2740, 'CD'),
(102, 'Németh Lehel', '1.  Legendák', 1280, 'MC'),
(103, 'Omega', 'Az Omega összes nagylemeze 1-5', 13620, 'CD'),
(104, 'Omega', 'Omega összes kislemeze', 2740, 'CD'),
(105, 'Omega', 'Omega összes kislemeze', 1280, 'MC'),
(106, 'Ossián', 'Kitörés', 1280, 'MC'),
(107, 'Ossián', 'Válogatás 1986 - 1992 + 1 új n', 2740, 'CD'),
(108, 'Ossián', 'Válogatás 1986 - 1992 + 1 új n', 1280, 'MC'),
(109, 'Pa-Dö-Dő', 'Szép az élet és én is szép vag', 3350, 'CD'),
(110, 'Pa-Dö-Dő', 'Szép az élet és én is szép vag', 1530, 'MC'),
(111, 'Piramis', 'Exclusive - kislemezek és ango', 2740, 'CD'),
(112, 'Piramis', 'Exclusive - kislemezek és ango', 1280, 'MC'),
(113, 'Piramis', '1. 1977', 2740, 'CD'),
(114, 'Piramis', '2. 1978', 2740, 'CD'),
(115, 'Piramis', '3. 1979', 2740, 'CD'),
(116, 'Piramis', 'A Piramis összes nagylemeze 1-', 13620, 'CD'),
(117, 'Piramis', 'A nagy buli', 2740, 'CD'),
(118, 'Piramis', 'Erotika', 2740, 'CD'),
(119, 'Poór Péter', 'Best Of', 1390, 'MC'),
(120, 'Rapülők', 'Rapülők', 3440, 'CD'),
(121, 'Rapülők', 'Rapülők', 1570, 'MC'),
(122, 'Republic', 'Indul a mandula', 2740, 'CD'),
(123, 'Republic', 'Indul a mandula', 1280, 'MC'),
(124, 'S. Nagy István', 'Merre jártál tegnap', 2740, 'CD'),
(125, 'S. Nagy István', 'Merre jártál tegnap', 1280, 'MC'),
(126, 'Skorpió', 'A show megy tovább', 2740, 'CD'),
(127, 'Skorpió', 'A show megy tovább', 1280, 'MC'),
(128, 'Soltész Rezső', 'Végre rád találtam', 2740, 'CD'),
(129, 'Soltész Rezső', 'Végre rád találtam', 1280, 'MC'),
(130, 'Szandi', 'I Love You Baby', 2740, 'CD'),
(131, 'Szandi', 'I Love You Baby', 1280, 'MC'),
(132, 'Szandi', 'Aranyos - válogatás', 2740, 'CD'),
(133, 'Müller Péter Sziámi', 'Olyan vagy!!!', 2740, 'CD'),
(134, 'Müller Péter Sziámi', 'Olyan vagy!!!', 1280, 'MC'),
(135, 'Szécsi Pál', 'Violák', 1280, 'MC'),
(136, 'Szécsi Pál', 'Tárd ki ablakod', 2740, 'CD'),
(137, 'Szécsi Pál', 'Tárd ki ablakod', 1280, 'MC'),
(138, 'test', 'testcim', 1111, 'CD');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `lemez`
--
ALTER TABLE `lemez`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `lemez`
--
ALTER TABLE `lemez`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
