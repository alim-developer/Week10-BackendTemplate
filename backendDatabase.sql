-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 02, 2016 at 07:48 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `week10day04-task`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`) VALUES
(2, 'Axmed', 'axmed.b@gmail.com', ' Feedback submit button is not working.'),
(3, 'Kamil', 'kamil@mail.ru', ' dd'),
(4, 'Vuqar', 'vu@gmail.com', ' map is error');

-- --------------------------------------------------------

--
-- Table structure for table `navbar`
--

CREATE TABLE `navbar` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `navbar`
--

INSERT INTO `navbar` (`id`, `name`) VALUES
(1, 'HOME'),
(2, 'ARTICLES'),
(3, 'SERVICES'),
(4, 'LOGOS'),
(5, 'TOOLS'),
(6, 'ICONS'),
(7, 'WALLPAPERS'),
(8, 'HELP');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `headContent` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `viewed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `headContent`, `content`, `image`, `data`, `viewed`) VALUES
(23, 'Bu gÃ¼n ÃœmumdÃ¼nya Åžahmat OlimpiadasÄ±na start verilib.\r\n\r\nOxu.Az-Ä±n Apasport.az-a istinadÉ™n mÉ™lumatÄ±na gÃ¶rÉ™, BakÄ±da keÃ§irilÉ™n yarÄ±ÅŸda 180 kiÅŸi, 141 qadÄ±n komandasÄ± bir-birini sÄ±naÄŸa Ã§É™kir.\r\n\r\nAzÉ™rbaycan Olimpiadada ilk dÉ™fÉ™ 6 yÄ±ÄŸma ilÉ™ mÃ¼barizÉ™ aparÄ±r. HÉ™m kiÅŸilÉ™rin, hÉ™m dÉ™ qadÄ±nlarÄ±n yarÄ±ÅŸÄ±nda 3 komandamÄ±z zÉ™kasÄ±nÄ± yoxlayÄ±r.\r\n\r\nKiÅŸilÉ™rdÉ™n ibarÉ™t É™sas komandamÄ±z I turda Zimbabve ilÉ™ qarÅŸÄ±laÅŸÄ±b. GÃ¶zlÉ™nildiyi kimi gÃ¶rÃ¼ÅŸ milimizin 4:0 hesablÄ± qÉ™lÉ™bÉ™si ilÉ™ yekunlaÅŸÄ±b.\r\n\r\nAzÉ™rbaycan-2 isÉ™ MozambiklÉ™ matÃ§da 3 qÉ™lÉ™bÉ™ vÉ™ bir heÃ§-heÃ§É™ ilÉ™ 3.5:0,5 hesablÄ± qalibiyyÉ™tÉ™ sevinib. ÃœÃ§Ã¼ncÃ¼ yÄ±ÄŸmamÄ±z - AzÉ™rbaycan-3 Papua Yeni Qvineyaya ÅŸans vermÉ™yib - 4:0.', 'Bu gÃ¼n ÃœmumdÃ¼nya Åžahmat OlimpiadasÄ±na start verilib.\r\n\r\nOxu.Az-Ä±n Apasport.az-a istinadÉ™n mÉ™lumatÄ±na gÃ¶rÉ™, BakÄ±da keÃ§irilÉ™n yarÄ±ÅŸda 180 kiÅŸi, 141 qadÄ±n komandasÄ± bir-birini sÄ±naÄŸa Ã§É™kir.\r\n\r\nAzÉ™rbaycan Olimpiadada ilk dÉ™fÉ™ 6 yÄ±ÄŸma ilÉ™ mÃ¼barizÉ™ aparÄ±r. HÉ™m kiÅŸilÉ™rin, hÉ™m dÉ™ qadÄ±nlarÄ±n yarÄ±ÅŸÄ±nda 3 komandamÄ±z zÉ™kasÄ±nÄ± yoxlayÄ±r.\r\n\r\nKiÅŸilÉ™rdÉ™n ibarÉ™t É™sas komandamÄ±z I turda Zimbabve ilÉ™ qarÅŸÄ±laÅŸÄ±b. GÃ¶zlÉ™nildiyi kimi gÃ¶rÃ¼ÅŸ milimizin 4:0 hesablÄ± qÉ™lÉ™bÉ™si ilÉ™ yekunlaÅŸÄ±b.\r\n\r\nAzÉ™rbaycan-2 isÉ™ MozambiklÉ™ matÃ§da 3 qÉ™lÉ™bÉ™ vÉ™ bir heÃ§-heÃ§É™ ilÉ™ 3.5:0,5 hesablÄ± qalibiyyÉ™tÉ™ sevinib. ÃœÃ§Ã¼ncÃ¼ yÄ±ÄŸmamÄ±z - AzÉ™rbaycan-3 Papua Yeni Qvineyaya ÅŸans vermÉ™yib - 4:0.\r\n\r\nQadÄ±nlardan ibarÉ™t É™sas komandamÄ±zÄ±n rÉ™qibi isÉ™ Nikaraqua ÅŸahmatÃ§Ä±larÄ± olub. DigÉ™r yÄ±ÄŸmalarÄ±mÄ±z mÃ¼vafiq olaraq, Yaponiya vÉ™ Lesoto ilÉ™ qarÅŸÄ±laÅŸÄ±blar. XanÄ±m zÉ™ka sahiblÉ™rimiz dÉ™ kiÅŸi hÉ™mkarlarÄ± kimi heÃ§ bir rÉ™qiblÉ™rinÉ™ ÅŸans vermÉ™yiblÉ™r. HÉ™r Ã¼Ã§ yÄ±ÄŸmamÄ±z 4:0 hesablÄ± qÉ™lÉ™bÉ™yÉ™ sevinib.', '453637614chess-obshta.jpg', '2016-09-02 17:44:40', 3),
(24, 'DÃ¶vlÉ™t Neft Fondu (SOFAZ) 2016-cÄ± ilin avqustda iyul ayÄ± ilÉ™ mÃ¼qayisÉ™dÉ™ MÉ™rkÉ™zi BankÄ±n (AMB) tÉ™ÅŸkil etdiyi valyuta hÉ™rraclarÄ±nda xarici valyuta satÄ±ÅŸÄ±nÄ± 12,3% artÄ±rÄ±b. Ä°yunda SOFAZ banklara mayda 431,4 milyon dollara qarÅŸÄ± 450 milyon dollar Ã¼mumi mÉ™blÉ™ÄŸdÉ™ xarici valyuta satÄ±b.\r\n\r\nOxu.Az Ä°nterfax-a istinadÉ™n xÉ™bÉ™r verir ki, avqustda SOFAZ banklara iyul ayÄ±nda 450 milyon dollara qarÅŸÄ± 394,5 milyon dollar Ã¼mumi mÉ™blÉ™ÄŸdÉ™ xarici valyuta satÄ±b.\r\n\r\nAvqustda Neft Fondu 9 hÉ™rracda iÅŸtirak edib, orta gÃ¼nlÃ¼k satÄ±ÅŸ hÉ™cmi 43,83 milyon dollar tÉ™ÅŸkil edib. Fond iyulda 8 hÉ™rracda iÅŸtirak edib, orta gÃ¼nlÃ¼k satÄ±ÅŸ hÉ™cmi 56,25 milyon dollar tÉ™ÅŸkil edib.', 'DÃ¶vlÉ™t Neft Fondu (SOFAZ) 2016-cÄ± ilin avqustda iyul ayÄ± ilÉ™ mÃ¼qayisÉ™dÉ™ MÉ™rkÉ™zi BankÄ±n (AMB) tÉ™ÅŸkil etdiyi valyuta hÉ™rraclarÄ±nda xarici valyuta satÄ±ÅŸÄ±nÄ± 12,3% artÄ±rÄ±b. Ä°yunda SOFAZ banklara mayda 431,4 milyon dollara qarÅŸÄ± 450 milyon dollar Ã¼mumi mÉ™blÉ™ÄŸdÉ™ xarici valyuta satÄ±b.\r\n\r\nOxu.Az Ä°nterfax-a istinadÉ™n xÉ™bÉ™r verir ki, avqustda SOFAZ banklara iyul ayÄ±nda 450 milyon dollara qarÅŸÄ± 394,5 milyon dollar Ã¼mumi mÉ™blÉ™ÄŸdÉ™ xarici valyuta satÄ±b.\r\n\r\nAvqustda Neft Fondu 9 hÉ™rracda iÅŸtirak edib, orta gÃ¼nlÃ¼k satÄ±ÅŸ hÉ™cmi 43,83 milyon dollar tÉ™ÅŸkil edib. Fond iyulda 8 hÉ™rracda iÅŸtirak edib, orta gÃ¼nlÃ¼k satÄ±ÅŸ hÉ™cmi 56,25 milyon dollar tÉ™ÅŸkil edib.\r\n\r\nAvqustda, iyul ayÄ±nda olduÄŸu kimi, Neft Fondu valyutanÄ± yalnÄ±z kommersiya banklarÄ±na satÄ±b.\r\nAgentliyin hesablamalarÄ±na É™sasÉ™n, Ã¼mumilikdÉ™ yanvar-avqust aylarÄ±nda SOFAZ 3 milyard 281,4 milyon dollar Ã¼mumi mÉ™blÉ™ÄŸdÉ™ xarici valyuta satÄ±b.\r\n\r\nHazÄ±rda SOFAZ valyuta hÉ™rraclarÄ±nda valyuta satÄ±ÅŸÄ±nÄ±n É™sas mÉ™nbÉ™si qismindÉ™ Ã§Ä±xÄ±ÅŸ edir.', '1637167568us-dollar-currency-forecast-14.jpg', '2016-09-02 17:44:21', 1),
(25, 'NaxÃ§Ä±van Avtomobil Zavodu (NAZ) â€œLifanâ€ avtomobillÉ™rinin yeni modellÉ™rini istehsal edÉ™cÉ™k.\r\n\r\nOxu.Az Trend-É™ istinadÉ™n xÉ™bÉ™r verir ki, bu mÉ™sÉ™lÉ™ bu gÃ¼n BakÄ±da NaxÃ§Ä±van avtomobil zavodunun direktoru Musa Abdullayev vÉ™ â€œLifan Internationalâ€Ä±n baÅŸ direktoru Sun Szeszyun arasÄ±nda aparÄ±lan danÄ±ÅŸÄ±qlarda mÃ¼zakirÉ™ olunub.\r\n\r\nM.Abdullayev bildirib ki, AzÉ™rbaycanda istehsal edilÉ™n modellÉ™r sÄ±rasÄ±na â€œLifan X7â€ tam Ã¶tÃ¼rÃ¼cÃ¼lÃ¼ avtomobili vÉ™ 11 nÉ™fÉ™rlik miniven daxil olacaq. DanÄ±ÅŸÄ±qlar zamanÄ± NAZ-Ä±n hazÄ±r mÉ™hsullarÄ±nÄ±n Ã¼Ã§Ã¼ncÃ¼ Ã¶lkÉ™lÉ™rÉ™ tÉ™darÃ¼k edilmÉ™sinÉ™ dair razÄ±lÄ±q da É™ldÉ™ olunub.\r\n\r\nM.Abdullayevin sÃ¶zlÉ™rinÉ™ gÃ¶rÉ™, tÉ™rÉ™flÉ™r, hÉ™mÃ§inin AzÉ™rbaycanÄ±n bÃ¶lgÉ™lÉ™rindÉ™ diler ÅŸÉ™bÉ™kÉ™sinin aÃ§Ä±lmasÄ±, elÉ™cÉ™ dÉ™ AzÉ™rbaycan bazarÄ±nda satÄ±ÅŸlarÄ±n maliyyÉ™lÉ™ÅŸdirilmÉ™si mÉ™sÉ™lÉ™sindÉ™ Ã‡in banklarÄ±nÄ±n dÉ™stÉ™yi barÉ™dÉ™ fikir mÃ¼badilÉ™si aparÄ±b.', 'NaxÃ§Ä±van Avtomobil Zavodu (NAZ) â€œLifanâ€ avtomobillÉ™rinin yeni modellÉ™rini istehsal edÉ™cÉ™k.\r\n\r\nOxu.Az Trend-É™ istinadÉ™n xÉ™bÉ™r verir ki, bu mÉ™sÉ™lÉ™ bu gÃ¼n BakÄ±da NaxÃ§Ä±van avtomobil zavodunun direktoru Musa Abdullayev vÉ™ â€œLifan Internationalâ€Ä±n baÅŸ direktoru Sun Szeszyun arasÄ±nda aparÄ±lan danÄ±ÅŸÄ±qlarda mÃ¼zakirÉ™ olunub.\r\n\r\nM.Abdullayev bildirib ki, AzÉ™rbaycanda istehsal edilÉ™n modellÉ™r sÄ±rasÄ±na â€œLifan X7â€ tam Ã¶tÃ¼rÃ¼cÃ¼lÃ¼ avtomobili vÉ™ 11 nÉ™fÉ™rlik miniven daxil olacaq. DanÄ±ÅŸÄ±qlar zamanÄ± NAZ-Ä±n hazÄ±r mÉ™hsullarÄ±nÄ±n Ã¼Ã§Ã¼ncÃ¼ Ã¶lkÉ™lÉ™rÉ™ tÉ™darÃ¼k edilmÉ™sinÉ™ dair razÄ±lÄ±q da É™ldÉ™ olunub.\r\n\r\nM.Abdullayevin sÃ¶zlÉ™rinÉ™ gÃ¶rÉ™, tÉ™rÉ™flÉ™r, hÉ™mÃ§inin AzÉ™rbaycanÄ±n bÃ¶lgÉ™lÉ™rindÉ™ diler ÅŸÉ™bÉ™kÉ™sinin aÃ§Ä±lmasÄ±, elÉ™cÉ™ dÉ™ AzÉ™rbaycan bazarÄ±nda satÄ±ÅŸlarÄ±n maliyyÉ™lÉ™ÅŸdirilmÉ™si mÉ™sÉ™lÉ™sindÉ™ Ã‡in banklarÄ±nÄ±n dÉ™stÉ™yi barÉ™dÉ™ fikir mÃ¼badilÉ™si aparÄ±b.\r\n\r\nS.Szeszyun isÉ™ AzÉ™rbaycan bazarÄ±nÄ±n perspektivliyini, onun potensialÄ±nÄ± xÃ¼susi qeyd edib: â€œAzÉ™rbaycan iqtisadiyyatÄ±nÄ±n artÄ±mÄ± aydÄ±n gÃ¶rÃ¼nÃ¼r, bu baxÄ±mdan BakÄ±nÄ±n hansÄ± templÉ™ bÃ¶yÃ¼dÃ¼yÃ¼nÉ™ vÉ™ yaxÅŸÄ±laÅŸdÄ±ÄŸÄ±na baxmaq kifayÉ™t edirâ€.\r\n\r\nâ€œLifanâ€ nÃ¼mayÉ™ndÉ™lÉ™ri azÉ™rbaycanlÄ± hÉ™mkarlarÄ±nÄ±n yÃ¼ksÉ™k peÅŸÉ™karlÄ±ÄŸÄ±nÄ± vurÄŸulayÄ±blar. Ã‡in zavodunun nÃ¼mayÉ™ndÉ™ heyÉ™ti â€œGÉ™ncÉ™ Avtomobil Zavoduâ€ Ä°stehsalat birliyinin MÃ¼ÅŸahidÉ™ ÅžurasÄ±nÄ±n sÉ™dri Xanlar FÉ™tiyev ilÉ™ dÉ™ gÃ¶rÃ¼ÅŸ keÃ§irib.', '2114471960cip.jpg', '2016-09-02 17:40:27', 0),
(26, 'Sankt-Peterburq ÅŸÉ™hÉ™rindÉ™ â€œBMWâ€ avtosalonundan 100 saniyÉ™yÉ™ dÃ¶rd avtomobil oÄŸurlanÄ±b.\r\n\r\nOxu.Az-Ä±n mÉ™lumatÄ±na gÃ¶rÉ™, bu barÉ™dÉ™ â€œDelovoy Peterburqâ€ nÉ™ÅŸri yazÄ±r.\r\n\r\nHadisÉ™ cÃ¼mÉ™ axÅŸamÄ±, sentyabrÄ±n 1-dÉ™, baÅŸ verib. Polis ÅŸÃ¶bÉ™sinÉ™ avtosalonun meneceri ÅŸikayÉ™t É™rizÉ™si ilÉ™ mÃ¼raciÉ™t edib. \r\n\r\nOnun sÃ¶zlÉ™rinÉ™ gÃ¶rÉ™, Ã¼zlÉ™ri baÄŸlÄ± olan dÃ¶rd nÉ™fÉ™r â€œtest driveâ€ Ã¼Ã§Ã¼n nÉ™zÉ™rdÉ™ tutulmuÅŸ X6, X5 vÉ™ beÅŸinci vÉ™ yeddinci seriya BMW markalÄ± avtomobillÉ™rÉ™ yaxÄ±nlaÅŸÄ±blar.\r\n', 'Sankt-Peterburq ÅŸÉ™hÉ™rindÉ™ â€œBMWâ€ avtosalonundan 100 saniyÉ™yÉ™ dÃ¶rd avtomobil oÄŸurlanÄ±b.\r\n\r\nOxu.Az-Ä±n mÉ™lumatÄ±na gÃ¶rÉ™, bu barÉ™dÉ™ â€œDelovoy Peterburqâ€ nÉ™ÅŸri yazÄ±r.\r\n\r\nHadisÉ™ cÃ¼mÉ™ axÅŸamÄ±, sentyabrÄ±n 1-dÉ™, baÅŸ verib. Polis ÅŸÃ¶bÉ™sinÉ™ avtosalonun meneceri ÅŸikayÉ™t É™rizÉ™si ilÉ™ mÃ¼raciÉ™t edib. \r\n\r\nOnun sÃ¶zlÉ™rinÉ™ gÃ¶rÉ™, Ã¼zlÉ™ri baÄŸlÄ± olan dÃ¶rd nÉ™fÉ™r â€œtest driveâ€ Ã¼Ã§Ã¼n nÉ™zÉ™rdÉ™ tutulmuÅŸ X6, X5 vÉ™ beÅŸinci vÉ™ yeddinci seriya BMW markalÄ± avtomobillÉ™rÉ™ yaxÄ±nlaÅŸÄ±blar.\r\n\r\nÃ–z aÃ§arlarÄ± qapÄ±larÄ± aÃ§an soyÄŸunÃ§ular avtomobillÉ™ri salondan Ã§Ä±xararaq namÉ™lum istiqamÉ™tdÉ™ sÃ¼rÃ¼blÉ™r.\r\n\r\nPolis dÉ™rhal É™mÉ™liyyat-axtarÄ±ÅŸ tÉ™dbirlÉ™rinÉ™ baÅŸlasa da, cinayÉ™tkarlarÄ± tutmaq mÃ¼mkÃ¼n olmayÄ±b.\r\n\r\nBildirilir ki, ÅŸirkÉ™tÉ™ 19 milyon rubl dÉ™yÉ™rindÉ™ ziyan dÉ™yib. Faktla baÄŸlÄ± cinayÉ™t iÅŸi aÃ§Ä±lÄ±b. ', '17857879960_5b1bf_38f3c59f_XXL.jpg', '2016-09-02 17:44:54', 5),
(27, 'Rusiya vÉ™ TÃ¼rkiyÉ™ hÃ¶kumÉ™tlÉ™rarasÄ± komissiyanÄ±n nÃ¶vbÉ™ti iclasÄ± Ä°stanbulda dÃ¼nya energetika konqresi Ã§É™rÃ§ivÉ™sindÉ™ keÃ§irilÉ™cÉ™k. \r\n\r\nOxu.Az RÄ°A Novosti-yÉ™ istinadÉ™n xÉ™bÉ™r verir ki, bu barÉ™dÉ™ RusiyanÄ±n energetika naziri Aleksandr Novak bildirib. \r\n\r\nâ€œBu, Ä°stanbulda energetika konkresi Ã§É™rÃ§ivÉ™sindÉ™ olacaq. Ä°clas keÃ§irÉ™cÉ™yik. Bu, oktyabrda olacaqâ€, - deyÉ™ Novak bildirib. \r\n\r\nDÃ¼nya energetika konqresi oktyabrÄ±n 10-da Ä°stanbulda baÅŸlayacaq vÉ™ 13 oktyabrda baÅŸa Ã§atacaq. ', 'Rusiya vÉ™ TÃ¼rkiyÉ™ hÃ¶kumÉ™tlÉ™rarasÄ± komissiyanÄ±n nÃ¶vbÉ™ti iclasÄ± Ä°stanbulda dÃ¼nya energetika konqresi Ã§É™rÃ§ivÉ™sindÉ™ keÃ§irilÉ™cÉ™k. \r\n\r\nOxu.Az RÄ°A Novosti-yÉ™ istinadÉ™n xÉ™bÉ™r verir ki, bu barÉ™dÉ™ RusiyanÄ±n energetika naziri Aleksandr Novak bildirib. \r\n\r\nâ€œBu, Ä°stanbulda energetika konkresi Ã§É™rÃ§ivÉ™sindÉ™ olacaq. Ä°clas keÃ§irÉ™cÉ™yik. Bu, oktyabrda olacaqâ€, - deyÉ™ Novak bildirib. \r\n\r\nDÃ¼nya energetika konqresi oktyabrÄ±n 10-da Ä°stanbulda baÅŸlayacaq vÉ™ 13 oktyabrda baÅŸa Ã§atacaq. ', '25668510RusTurk.jpg', '2016-09-02 17:42:52', 0),
(29, 'AzÉ™rbaycan ÆmanÉ™tlÉ™rin SÄ±ÄŸortalanmasÄ± Fondu (ADÄ°F) bu il lisenziyasÄ± lÉ™ÄŸv edilmiÅŸ 9 kommersiya bankÄ±nÄ±n qorunan É™manÉ™tÃ§ilÉ™rinÉ™ kompensasiya Ã¶dÉ™niÅŸini davam etdirir.\r\n\r\nOxu.Az xÉ™bÉ™r verir ki, fondun mÉ™lumatÄ±na gÃ¶rÉ™, indiyÉ™ qÉ™dÉ™r bu banklarÄ±n É™manÉ™tÃ§ilÉ™rinÉ™ Ã¼mumilikdÉ™ 232,345 mln. manat Ã¶dÉ™nilib.\r\n\r\nBelÉ™ ki, â€œParabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 21,211 mln. manat, â€œZaminbankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 37,168 mln. manat, â€œKredobankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 15,931 mln. manat, â€œDekabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 2,659 mln. manat, â€œAtrabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 9,371 mln. manat, â€œQafqaz Ä°nkiÅŸaf BankÄ±â€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 1,419 min manat, â€œBank of Azerbaijanâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 24,061 mln. manat, â€œGÉ™ncÉ™bankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 896 min manat, â€œTexnikabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri isÉ™ 119,63 mln. manat kompensasiya alÄ±blar.', 'AzÉ™rbaycan ÆmanÉ™tlÉ™rin SÄ±ÄŸortalanmasÄ± Fondu (ADÄ°F) bu il lisenziyasÄ± lÉ™ÄŸv edilmiÅŸ 9 kommersiya bankÄ±nÄ±n qorunan É™manÉ™tÃ§ilÉ™rinÉ™ kompensasiya Ã¶dÉ™niÅŸini davam etdirir.\r\n\r\nOxu.Az xÉ™bÉ™r verir ki, fondun mÉ™lumatÄ±na gÃ¶rÉ™, indiyÉ™ qÉ™dÉ™r bu banklarÄ±n É™manÉ™tÃ§ilÉ™rinÉ™ Ã¼mumilikdÉ™ 232,345 mln. manat Ã¶dÉ™nilib.\r\n\r\nBelÉ™ ki, â€œParabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 21,211 mln. manat, â€œZaminbankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 37,168 mln. manat, â€œKredobankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 15,931 mln. manat, â€œDekabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 2,659 mln. manat, â€œAtrabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 9,371 mln. manat, â€œQafqaz Ä°nkiÅŸaf BankÄ±â€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 1,419 min manat, â€œBank of Azerbaijanâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 24,061 mln. manat, â€œGÉ™ncÉ™bankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 896 min manat, â€œTexnikabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri isÉ™ 119,63 mln. manat kompensasiya alÄ±blar.\r\n\r\nAzÉ™rbaycan ÆmanÉ™tlÉ™rin SÄ±ÄŸortalanmasÄ± Fondu (ADÄ°F) bu il lisenziyasÄ± lÉ™ÄŸv edilmiÅŸ 9 kommersiya bankÄ±nÄ±n qorunan É™manÉ™tÃ§ilÉ™rinÉ™ kompensasiya Ã¶dÉ™niÅŸini davam etdirir.\r\n\r\nOxu.Az xÉ™bÉ™r verir ki, fondun mÉ™lumatÄ±na gÃ¶rÉ™, indiyÉ™ qÉ™dÉ™r bu banklarÄ±n É™manÉ™tÃ§ilÉ™rinÉ™ Ã¼mumilikdÉ™ 232,345 mln. manat Ã¶dÉ™nilib.\r\n\r\nBelÉ™ ki, â€œParabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 21,211 mln. manat, â€œZaminbankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 37,168 mln. manat, â€œKredobankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 15,931 mln. manat, â€œDekabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 2,659 mln. manat, â€œAtrabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 9,371 mln. manat, â€œQafqaz Ä°nkiÅŸaf BankÄ±â€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 1,419 min manat, â€œBank of Azerbaijanâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 24,061 mln. manat, â€œGÉ™ncÉ™bankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri 896 min manat, â€œTexnikabankâ€ ASC-nin qorunan É™manÉ™tÃ§ilÉ™ri isÉ™ 119,63 mln. manat kompensasiya alÄ±blar.', '373271279bankkkk.jpg', '2016-09-02 17:43:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', 'admin'),
('', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
