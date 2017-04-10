-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Kwi 2017, 03:41
-- Wersja serwera: 10.1.9-MariaDB
-- Wersja PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sitehell`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `article`
--

CREATE TABLE `article` (
  `id` int(10) NOT NULL,
  `nazwa` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tresc` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `article`
--

INSERT INTO `article` (`id`, `nazwa`, `tresc`) VALUES
(8, 'info_PL', '&lt;h5 class="info__title"&gt;          Uzależnienie od zdobyczy technologii&lt;/h5&gt;        &lt;p class="info__text"&gt;uzależnienie od internetu, telefonów komórkowych, środków masowego przekazu stanowi zagrożenie szczególnie dla młodych ludzi, nastolatków, a nawet dzieci. Nikogo już nie szokuje widok trzylatka obsługującego tablet czy pierwszoklasisty z „komórką” w plecaku. Zresztą nie ma co się oszukiwać – współcześnie większość dorosłych ludzi nie potrafi sobie wyobrazić życia bez internetu, laptopa, smartfona itp. Po prostu – takie mamy czasy.        &lt;/p&gt;'),
(11, 'Rightbox_PL', '<div class="boxMenu">            <a id="ch1" class="animated shake" href="#"> Uzależnienie od Sieci</a>            <a id="ch2" class="animated shake" href="#"> Socjomania internetowa</a>            <a id="ch3" class="animated shake" href="#"> Uzależnienie od komputera</a>            <a id="ch4" class="animated shake" href="#"> Erotomania internetowa</a>         </div>'),
(12, 'moreInfo_PL', '&lt;h5&gt;Zdobycze technologiczne&lt;/h5&gt;            &lt;p&gt; Warto jednak zwrócić uwagę, że wszystkie te zdobycze technologii, poza tym, że ułatwiają nam życie, pełnią także dwie ważne funkcje – są źródłem szybkiej i łatwej rozrywki oraz środkiem komunikacji i nawiązywania relacji z innymi ludźmi. &lt;/p&gt;&lt;span class="btn showForm-js"&gt;&lt;span&gt;Czytaj więcej&lt;/span&gt;&lt;/span&gt;'),
(13, 'footer_moreInfo_PL', '&lt;div class="footer__textWrap"&gt;                &lt;p&gt;Więcej informacji&lt;/p&gt;                &lt;p&gt;Pobierz (0.7 MB)&lt;/p&gt;              &lt;/div&gt;              &lt;div class="footer__btn"&gt;&lt;span&gt;&lt;/span&gt;&lt;/div&gt;&lt;img class="footer__textImg" src="https://pastebin.com/i/pastebin_logo_side_outline.png" width="201"&gt;&lt;/a&gt;&lt;/div&gt;'),
(15, 'contact_PL', '          <div class="footer__col">\n            <div class="footer__cloud">\n              <p>Skontaktuj się</p>\n              <p><span>Mariusz Kauczor - &nbsp;</span>609 12 07 07</p><a href="#">aqua18@o2.pl</a>\n              <p><span>Dariusz Chrubasik - &nbsp;</span>605 874 956</p><a href="#">chrubasik.dariusz@interia.pl</a>\n              <div class="footer__questionMark"></div>\n            </div>\n          </div>'),
(16, 'popup_PL', '&lt;h5 class="formSection__title"&gt;Więcej informacji&lt;/h5&gt;        &lt;p class="text"&gt;          Warto zwrócić uwagę na to że wszystkie te zdobycze technologii, poza tym, że ułatwiają nam życie, pełnią także dwie ważne funkcje – są źródłem szybkiej i łatwej rozrywki oraz środkiem komunikacji i nawiązywania relacji z innymi ludźmi. Portale społecznościowe, fora, czaty, blogi – dają przestrzeń na wyrażenie siebie, interakcje z innymi ludźmi, poznawanie nowych znajomych, a wszystko to w bezpiecznych, mniej lub bardziej anonimowych warunkach. Wirtualna rzeczywistość może być szczególnie atrakcyjna dla osób, które nie odnajdują się w tej realnej. Nic więc dziwnego, że tak często korzystanie ze zdobyczy technologii przybiera formę nałogowego zachowania, kompensującego młodym ludziom to, czego nie dostają w domu rodzinnym, w szkole, wśród rówieśników. Stanowi to ogromne zagrożenie dla dalszego ich rozwoju, sukcesywnie zabierając im szansę na nawiązanie prawdziwych, bliskich relacji oraz samorozwoju. Uzależnienia technologiczne stanowią często dramat dla całej rodziny uwikłanej w kłótnie, dyskusje, kontrolowanie i próby pomocy osobie chorej.        &lt;/p&gt;'),
(17, 'ch1_PL', '&lt;h5 class="info__title"&gt;Uzależnienie od sieci&lt;/h5&gt;&lt;p class="info__text"&gt; – polega na pobycie w internecie. Jest ono bardzo podobne do uzależnienia od komputera, lecz polega na przebywaniu w sieci. Osoby takie są cały czas zalogowane do internetu i obserwują, co się tam dzieje. Uzależnienie to łączy w sobie wszystkie inne formy ZUI.&lt;/p&gt;'),
(18, 'ch2_PL', '<h5 class="info__title">Socjomania internetowa</h5>\r\n<p class="info__text">– jest to uzależnienie od internetowych kontaktów społecznych. Osoba nawiązuje nowe kontakty tylko i wyłącznie poprzez sieć, ma zachwiane relacje człowiek-człowiek w kontaktach poza siecią. Ludzie tacy potrafią godzinami „rozmawiać” z innymi użytkownikami internetu, lecz mają trudności przy kontaktach osobistych, następuje też u takich osób zanik komunikacji niewerbalnej, nie potrafią odczytywać informacji nadawanych na tej płaszczyźnie lub odczytują je błędnie.</p>'),
(19, 'ch3_PL', '<h5 class="info__title">Uzależnienie od komputera</h5><p class="info__text">– osoba nie musi w tym wypadku przebywać w internecie, wystarczy, że spędza czas przy komputerze. Nie jest dla niej ważne to, co przy nim robi.</p>'),
(20, 'ch4_PL', '<h5 class="info__title">Erotomania internetowa</h5><p class="info__text">–  It is worth noticing, however, that all of these technological advances, apart from the fact that they make life easier, also have two important functions - they are a source of easily accessible entertainment and means of communication, as well as relationships with other people. Social portals, forums, chats, and blogs - those things give you space to express yourself, interact with other people, meet new friends, and all of it in more or less safe anonymous terms. Virtual reality can be particularly attractive to people who do not find themselves in the real world.</p>'),
(21, 'info_EN', '&lt;h5 class="info__title"&gt;          Technology addictions&lt;/h5&gt;       &lt;p class="info__text"&gt;obsession about access to Internet, smartphones and other mass media is a big threat especially for young people, teenagers and even children. Nobody in today’s world would be shocked if they saw a three-year-old operating on a tablet, or a primary school student with a smartphone in their backpack. Well, there is nothing to brag about anyway - in present times, nearly everybody doesn’t even imagine living with no internet, laptops, smartphones etc. As simple as that - these are the times we live in.      &lt;/p&gt;'),
(22, 'Rightbox_EN', '&lt;div class="boxMenu"&gt;            &lt;a id="ch1" class="animated shake" href="#"&gt; Net addiction&lt;/a&gt;            &lt;a id="ch2" class="animated shake" href="#"&gt; Internet Sociomania&lt;/a&gt;            &lt;a id="ch3" class="animated shake" href="#"&gt; Computer addiction&lt;/a&gt;            &lt;a id="ch4" class="animated shake" href="#"&gt; Internet Erotomania&lt;/a&gt;         &lt;/div&gt;'),
(23, 'moreInfo_EN', '&lt;h5&gt;Addiction to technology gains&lt;/h5&gt;           &lt;p&gt;It is worth noticing, however, that all of these technological advances, apart from the fact that they make life easier, also have two important functions - they are a source of easily accessible entertainment and means of communication, as well as relationships with other people. Social portals, forums, chats, and blogs - those things give you space to express yourself, interact with other people, meet new friends, and all of it in more or less safe anonymous terms. Virtual reality can be particularly attractive to people who do not find themselves in the real world.&lt;/p&gt;&lt;span class="btn showForm-js"&gt;&lt;span&gt;Read more&lt;/span&gt;&lt;/span&gt;'),
(24, 'footer_moreInfo_EN', '&lt;div class="footer__textWrap"&gt;                &lt;p&gt;More information&lt;/p&gt;                &lt;p&gt;Download (0.7 MB)&lt;/p&gt;              &lt;/div&gt;              &lt;div class="footer__btn"&gt;&lt;span&gt;&lt;/span&gt;&lt;/div&gt;&lt;img class="footer__textImg" src="https://pastebin.com/i/pastebin_logo_side_outline.png" width="201"&gt;&lt;/a&gt;&lt;/div&gt;'),
(25, 'contact_EN', '          <div class="footer__col">\n            <div class="footer__cloud">\n              <p>Contact with Us</p>\n              <p><span>Mariusz Kauczor - &nbsp;</span>609 12 07 07</p><a href="#">aqua18@o2.pl</a>\n              <p><span>Dariusz Chrubasik - &nbsp;</span>605 874 956</p><a href="#">chrubasik.dariusz@interia.pl</a>\n              <div class="footer__questionMark"></div>\n            </div>\n          </div>'),
(26, 'popup_EN', '&lt;h5 class="formSection__title"&gt;More information&lt;/h5&gt;        &lt;p class="text"&gt;         Social portals, forums, chats, and blogs - those things give you space to express yourself, interact with other people, meet new friends, and all of it in more or less safe anonymous terms. Virtual reality can be particularly attractive to people who do not find themselves in the real world. It’s no wonder then, that so often the use of technological achievements takes the form of an addictive behaviour that gives young people compensation for what they didn’t have in their family home, at school, or among their contemporaries.&lt;/p&gt;'),
(27, 'ch1_EN', '&lt;h5 class="info__title"&gt;Net addiction&lt;/h5&gt;&lt;p class="info__text"&gt; – is based on staying online. It is very similar to computer addiction, but is based on being online. Affected people are constantly logged in on the network and watching what is going on there. This addiction combines all other forms of ZUI.&lt;/p&gt;'),
(28, 'ch2_EN', '&lt;h5 class="info__title"&gt;Internet Sociomania&lt;/h5&gt;&lt;p class="info__text"&gt;– it''s a dependency on social networking. A person makes new contacts only through the network, he/she hasdisturbed human-man relationships in out-of-network contacts. Such people can talk for hours with other Internet users, but they have difficulties with personal contacts. People like that also expiriance a disappearance of nonverbal communication, the inability to read information on that plane, or misread them.&lt;/p&gt;'),
(29, 'ch3_EN', '&lt;h5 class="info__title"&gt;Computer addiction&lt;/h5&gt;&lt;p class="info__text"&gt;– a person does not need to be online, just spend time at the computer. It is not important for him/her what he/she does with it.&lt;/p&gt;'),
(30, 'ch4_EN', '&lt;h5 class="info__title"&gt;Internet Erotomania&lt;/h5&gt;&lt;p class="info__text"&gt;– mainly consists of watching pornographic videos and pictures or chatting on sex chat. This phenomenon begins to be very dangerous when pornographic material is received by minors or people with emotional problems.&lt;/p&gt;'),
(31, 'header_PL', '<ul class="header__navList">\r\n<li class="header__navItem"><a class="header__navItemLink" href="#landing">Grupy uzależnień</a></li>\r\n<li class="header__navItem"><a class="header__navItemLink" href="#info">Uzależnienie od Technologi</a></li>\r\n<li class="header__navItem"><a class="header__navItemLink" href="#moreInfo">Zdobycze technologiczne</a></li>\r\n<li class="header__navItem"><a class="header__navItemLink" href="#contact">Kontakt</a></li>\r\n</ul>'),
(32, 'header_EN', '<br />\r\n<ul class="header__navList">\r\n<li class="header__navItem"><a class="header__navItemLink" href="#landing">Addiction groups</a></li>\r\n<li class="header__navItem"><a class="header__navItemLink" href="#info">Addiction to Technology</a></li>\r\n<li class="header__navItem"><a class="header__navItemLink" href="#moreInfo">Technological losses</a></li>\r\n<li class="header__navItem"><a class="header__navItemLink" href="#contact">Contact</a></li>\r\n</ul>'),
(33, 'title_PL', '&lt;h1 class="landing__title"&gt;Uzależnienie Technologiczne&lt;/h1&gt;          &lt;div class="line"&gt;&lt;/div&gt;&lt;span class="landing__btn btn showForm-js"&gt;&lt;span&gt;Czytaj więcej&lt;/span&gt;&lt;/span&gt;'),
(34, 'title_EN', '&lt;h1 class="landing__title"&gt;Technological Addiction&lt;/h1&gt;          &lt;div class="line"&gt;&lt;/div&gt;&lt;span class="landing__btn btn showForm-js"&gt;&lt;span&gt;Read more&lt;/span&gt;&lt;/span&gt;');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `options`
--

CREATE TABLE `options` (
  `id` int(10) NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vSitehell` float NOT NULL,
  `Authors` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `options`
--

INSERT INTO `options` (`id`, `Title`, `vSitehell`, `Authors`) VALUES
(1, 'uTech - Powered by Sitehell | Uzależnienie technologiczne', 0.3, 'Mariusz Kauczor & Dariusz Chrubasik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Nick` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `surName` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Users Sitehell';

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `Nick`, `Password`, `Avatar`, `name`, `surName`) VALUES
(6, 'RosheD', '0c16ad1a83591476f5fca95a805d30a3', '5806255.jpg', 'Mariusz', 'Kauczor');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `utility`
--

CREATE TABLE `utility` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tresc` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `kolejnosc` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `utility`
--

INSERT INTO `utility` (`id`, `nazwa`, `tresc`, `kolejnosc`) VALUES
(8, 'Header_PL', '    <header class="header">\n      <div class="header__container container"><a href="#"><img class="header__logo animated lightSpeedIn" src="assets/img/logo.png" width="270"></a>\n        <nav class="header__nav">\n          <ul class="header__navList">\n            <li class="header__navItem"><a class="header__navItemLink" href="#about">Grupy uzależnienia</a></li>\n            <li class="header__navItem"><a class="header__navItemLink" href="#recruitment">Proces rekrutacji</a></li>\n            <li class="header__navItem"><a class="header__navItemLink" href="#curiosities">Co się u nas dzieje?</a></li>\n            <li class="header__navItem"><a class="header__navItemLink" href="#advantages">Dlaczego warto</a></li>\n          </ul>\n        </nav>\n        <div class="header__burger"><span></span><span></span><span></span></div>\n      </div>\n    </header>', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `utility`
--
ALTER TABLE `utility`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `utility`
--
ALTER TABLE `utility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
