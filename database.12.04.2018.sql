-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2018 at 02:42 AM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `geoweb_trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL,
  `names` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ge'
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='not used';

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `names`, `lang`) VALUES
(1, 'თბილისი', 'ge'),
(2, 'ბათუმი', 'ge'),
(3, 'ქუთაისი', 'ge'),
(4, 'აბასთუმანი', 'ge'),
(5, 'აბაშა', 'ge'),
(6, 'აგარა', 'ge'),
(7, 'ადიგენი', 'ge'),
(8, 'ამბროლაური', 'ge'),
(9, 'ანაკლია', 'ge'),
(10, 'ანანური', 'ge'),
(11, 'ასპინძა', 'ge'),
(12, 'ახალგორი', 'ge'),
(13, 'ახალდაბა', 'ge'),
(14, 'ახალქალაქი', 'ge'),
(15, 'ახალციხე', 'ge'),
(16, 'ახმეტა', 'ge'),
(17, 'ბაზალეთი', 'ge'),
(18, 'ბაკურიანი', 'ge'),
(19, 'ბაღდათი', 'ge'),
(20, 'ბახმარო', 'ge'),
(21, 'ბოლნისი', 'ge'),
(22, 'ბორჯომი', 'ge'),
(23, 'ბულაჩაური', 'ge'),
(24, 'გაგრა', 'ge'),
(25, 'გალი', 'ge'),
(26, 'გარდაბანი', 'ge'),
(27, 'გონიო', 'ge'),
(28, 'გორი', 'ge'),
(29, 'გრიგოლეთი', 'ge'),
(30, 'გუდაუთა', 'ge'),
(31, 'გუდაური', 'ge'),
(32, 'გულრიფში', 'ge'),
(33, 'გურჯაანი', 'ge'),
(34, 'დედოფლისწყარო', 'ge'),
(35, 'დმანისი', 'ge'),
(36, 'დუშეთი', 'ge'),
(37, 'ვაზისუბანი', 'ge'),
(38, 'ვანი', 'ge'),
(39, 'ზედაზენი', 'ge'),
(40, 'ზესტაფონი', 'ge'),
(41, 'ზუგდიდი', 'ge'),
(42, 'თეთრიწყარო', 'ge'),
(43, 'თელავი', 'ge'),
(44, 'თერჯოლა', 'ge'),
(45, 'თიანეთი', 'ge'),
(46, 'იგოეთი', 'ge'),
(47, 'კარდენახი', 'ge'),
(48, 'კასპი', 'ge'),
(49, 'კვარიათი', 'ge'),
(50, 'კოდორი', 'ge'),
(51, 'ლაგოდეხი', 'ge'),
(52, 'ლანჩხუთი', 'ge'),
(53, 'ლენტეხი', 'ge'),
(54, 'ლიკანი', 'ge'),
(55, 'მანგლისი', 'ge'),
(56, 'მარნეული', 'ge'),
(57, 'მარტვილი', 'ge'),
(58, 'მარტყოფი', 'ge'),
(59, 'მახინჯაური', 'ge'),
(60, 'მესტია', 'ge'),
(61, 'მისაქციელი', 'ge'),
(62, 'მუხრანი', 'ge'),
(63, 'მცხეთა', 'ge'),
(64, 'ნატანები', 'ge'),
(65, 'ნატახტარი', 'ge'),
(66, 'ნინოწმინდა', 'ge'),
(67, 'ნუნისი', 'ge'),
(68, 'ოზურგეთი', 'ge'),
(69, 'ონი', 'ge'),
(70, 'ოჩამჩირე', 'ge'),
(71, 'პანკისი', 'ge'),
(72, 'ჟინვალი', 'ge'),
(73, 'რუსთავი', 'ge'),
(74, 'საგარეჯო', 'ge'),
(75, 'საგურამო', 'ge'),
(76, 'საირმე', 'ge'),
(77, 'სამტრედია', 'ge'),
(78, 'სართიჭალა', 'ge'),
(79, 'სარფი', 'ge'),
(80, 'საჩხერე', 'ge'),
(81, 'სენაკი', 'ge'),
(82, 'სიონი', 'ge'),
(83, 'სიღნაღი', 'ge'),
(84, 'სოხუმი', 'ge'),
(85, 'სურამი', 'ge'),
(86, 'სუფსა', 'ge'),
(87, 'ტყვარჩელი', 'ge'),
(88, 'ტყიბული', 'ge'),
(89, 'ურეკი', 'ge'),
(90, 'ფასანაური', 'ge'),
(91, 'ფოთი', 'ge'),
(92, 'ქარელი', 'ge'),
(93, 'ქედა', 'ge'),
(94, 'ქობულეთი', 'ge'),
(95, 'ქსანი', 'ge'),
(96, 'ყაზბეგი', 'ge'),
(97, 'ყვარელი', 'ge'),
(98, 'შატილი', 'ge'),
(99, 'შეკვეთილი', 'ge'),
(100, 'შიომღვიმე', 'ge'),
(101, 'შუახევი', 'ge'),
(102, 'ჩაქვი', 'ge'),
(103, 'ჩოხატაური', 'ge'),
(104, 'ჩხოროწყუ', 'ge'),
(105, 'ცაგერი', 'ge'),
(106, 'ცემი', 'ge'),
(107, 'ციხისძირი', 'ge'),
(108, 'ცხვარიჭამია', 'ge'),
(109, 'ცხინვალი', 'ge'),
(110, 'წალენჯიხა', 'ge'),
(111, 'წალკა', 'ge'),
(112, 'წაღვერი', 'ge'),
(113, 'წეროვანი', 'ge'),
(114, 'წილკანი', 'ge'),
(115, 'წინანდალი', 'ge'),
(116, 'წიწამური', 'ge'),
(117, 'წნორი', 'ge'),
(118, 'წოდორეთი', 'ge'),
(119, 'წყალტუბო', 'ge'),
(120, 'ჭიათურა', 'ge'),
(121, 'ხარაგაული', 'ge'),
(122, 'ხაშური', 'ge'),
(123, 'ხელვაჩაური', 'ge'),
(124, 'ხობი', 'ge'),
(125, 'ხონი', 'ge'),
(126, 'ხულო', 'ge'),
(127, 'ჯავა', 'ge'),
(128, 'bob', 'ge');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commentId` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `read` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `date`, `ip`, `commentId`, `firstname`, `organization`, `email`, `comment`, `lang`, `read`, `status`) VALUES
(1, 1482608813, '94.240.219.15', 24, 'jhjg', 'hjg', 'hjg', 'hjhjghjghj', 'ge', 1, 1),
(2, 1482774840, '94.240.219.15', 24, 'გიო', 'სტუდია 404', 'info@404.ge', 'gtxovt gadadoT kanoni', 'ge', 1, 1),
(3, 1523468579, '94.240.245.46', 1, 'ყიდვა გაყიდვა', 'nope', '', 'kasdlkasdmasd', 'ge', 1, 1),
(4, 1523468604, '94.240.245.46', 1, 'ყიდვა გაყიდვა', 'nope', 'giorgigvazava87@gmail.com', 'kasdlkasdmasd', 'ge', 1, 1),
(5, 1523468934, '94.240.245.46', 1, 'ყიდვა გაყიდვა', 'nope', 'giorgigvazava87@gmail.com', 'dslksdkl klsamdlads', 'ge', 1, 1),
(6, 1523469033, '94.240.245.46', 1, 'ყიდვა გაყიდვა', 'nope', 'giorgigvazava87@gmail.com', 'klldksa kasmdklamsdjansdknamndasmndajksdahjsdb hjbdsfhjsdhjf b b bh jbsdhjf sdhj bfshjdf', 'ge', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=682 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `idx`, `name`, `lang`) VALUES
(1, 1, 'Afghanistan', 'en'),
(2, 1, 'Афганистан', 'ru'),
(3, 1, 'Afghanistan', 'fr'),
(4, 2, 'Albania', 'en'),
(5, 2, 'Албания', 'ru'),
(6, 2, 'Albanie', 'fr'),
(7, 3, 'Algeria', 'en'),
(8, 3, 'Алжир', 'ru'),
(9, 3, 'Algérie', 'fr'),
(10, 4, 'American Samoa', 'en'),
(11, 4, 'Американское Самоа', 'ru'),
(12, 4, 'Samoa américaines', 'fr'),
(13, 5, 'Andorra', 'en'),
(14, 5, 'Андорра', 'ru'),
(15, 5, 'l''Andorre', 'fr'),
(16, 6, 'Angola', 'en'),
(17, 6, 'Ангола', 'ru'),
(18, 6, 'l''Angola', 'fr'),
(19, 7, 'Anguilla', 'en'),
(20, 7, 'Ангилья', 'ru'),
(21, 7, 'Anguilla', 'fr'),
(22, 8, 'Antarctica', 'en'),
(23, 8, 'Антарктида', 'ru'),
(24, 8, 'Antarctique', 'fr'),
(25, 9, 'Antigua and Barbuda', 'en'),
(26, 9, 'Антигуа и Барбуда', 'ru'),
(27, 9, 'l''Antigua-et-Barbuda', 'fr'),
(28, 10, 'Argentina', 'en'),
(29, 10, 'Аргентина', 'ru'),
(30, 10, 'l''Argentine', 'fr'),
(31, 11, 'Armenia', 'en'),
(32, 11, 'Армения', 'ru'),
(33, 11, 'l''Arménie', 'fr'),
(34, 12, 'Aruba', 'en'),
(35, 12, 'Аруба', 'ru'),
(36, 12, 'Aruba', 'fr'),
(37, 13, 'Australia', 'en'),
(38, 13, 'Австралия', 'ru'),
(39, 13, 'l''Australie', 'fr'),
(40, 14, 'Austria', 'en'),
(41, 14, 'Австрия', 'ru'),
(42, 14, 'l''Autriche', 'fr'),
(43, 15, 'Azerbaijan', 'en'),
(44, 15, 'Азербайджан', 'ru'),
(45, 15, 'l''Azerbaïdjan', 'fr'),
(46, 16, 'Bahamas', 'en'),
(47, 16, 'Багамы', 'ru'),
(48, 16, 'les Bahamas', 'fr'),
(49, 17, 'Bahrain', 'en'),
(50, 17, 'Бахрейн', 'ru'),
(51, 17, 'le Bahreïn', 'fr'),
(52, 18, 'Bangladesh', 'en'),
(53, 18, 'Бангладеш', 'ru'),
(54, 18, 'le Bangladesh', 'fr'),
(55, 19, 'Barbados', 'en'),
(56, 19, 'Барбадос', 'ru'),
(57, 19, 'la Barbade', 'fr'),
(58, 20, 'Belarus', 'en'),
(59, 20, 'Белоруссия', 'ru'),
(60, 20, 'la Biélorussie', 'fr'),
(61, 21, 'Belgium', 'en'),
(62, 21, 'Бельгия', 'ru'),
(63, 21, 'la Belgique', 'fr'),
(64, 22, 'Belize', 'en'),
(65, 22, 'Белиз', 'ru'),
(66, 22, 'le Belize', 'fr'),
(67, 23, 'Benin', 'en'),
(68, 23, 'Бенин', 'ru'),
(69, 23, 'le Bénin', 'fr'),
(70, 24, 'Bermuda', 'en'),
(71, 24, 'Бермуды', 'ru'),
(72, 24, 'Bermudes', 'fr'),
(73, 25, 'Bhutan', 'en'),
(74, 25, 'Бутан', 'ru'),
(75, 25, 'le Bhoutan', 'fr'),
(76, 26, 'Bolivia', 'en'),
(77, 26, 'Боливия', 'ru'),
(78, 26, 'la Bolivie', 'fr'),
(79, 27, 'Bosnia and Herzegovina', 'en'),
(80, 27, 'Босния и Герцеговина', 'ru'),
(81, 27, 'Bosnie Herzégovine', 'fr'),
(82, 28, 'Botswana', 'en'),
(83, 28, 'Ботсвана', 'ru'),
(84, 28, 'le Botswana', 'fr'),
(85, 29, 'Brazil', 'en'),
(86, 29, 'Бразилия', 'ru'),
(87, 29, 'le Brésil', 'fr'),
(88, 30, 'Brunei Darussalam', 'en'),
(89, 30, 'Бруней', 'ru'),
(90, 30, 'Brunei Darussalam', 'fr'),
(91, 31, 'Bulgaria', 'en'),
(92, 31, 'Болгария', 'ru'),
(93, 31, 'la Bulgarie', 'fr'),
(94, 32, 'Burkina Faso', 'en'),
(95, 32, 'Буркина-Фасо', 'ru'),
(96, 32, 'Burkina Faso', 'fr'),
(97, 33, 'Burundi', 'en'),
(98, 33, 'Бурунди', 'ru'),
(99, 33, 'le Burundi', 'fr'),
(100, 34, 'Cambodia', 'en'),
(101, 34, 'Камбоджа', 'ru'),
(102, 34, 'le Cambodge', 'fr'),
(103, 35, 'Cameroon', 'en'),
(104, 35, 'Камерун', 'ru'),
(105, 35, 'le Cameroun', 'fr'),
(106, 36, 'Canada', 'en'),
(107, 36, 'Канада', 'ru'),
(108, 36, 'le Canada', 'fr'),
(109, 37, 'Cape Verde', 'en'),
(110, 37, 'Кабо-Верде', 'ru'),
(111, 37, 'Cap-Vert', 'fr'),
(112, 38, 'Cayman Islands', 'en'),
(113, 38, 'Каймановы Острова', 'ru'),
(114, 38, 'Îles Caïmans', 'fr'),
(115, 39, 'Central African Republic', 'en'),
(116, 39, 'Центрально-Африканская Республика', 'ru'),
(117, 39, 'la République centrafricaine', 'fr'),
(118, 40, 'Chad', 'en'),
(119, 40, 'Чад', 'ru'),
(120, 40, 'le Tchad', 'fr'),
(121, 41, 'Chile', 'en'),
(122, 41, 'Чили', 'ru'),
(123, 41, 'le Chili', 'fr'),
(124, 42, 'China', 'en'),
(125, 42, 'Китай', 'ru'),
(126, 42, 'la Chine', 'fr'),
(127, 43, 'Colombia', 'en'),
(128, 43, 'Колумбия', 'ru'),
(129, 43, 'la Colombie', 'fr'),
(130, 44, 'Comoros', 'en'),
(131, 44, 'Коморские острова', 'ru'),
(132, 44, 'Comores', 'fr'),
(133, 45, 'Democratic Republic of the Congo (Kinshasa)', 'en'),
(134, 45, 'Демократическая Республика Конго', 'ru'),
(135, 45, 'République Démocratique du Congo', 'fr'),
(136, 46, 'Congo, Republic of (Brazzaville)', 'en'),
(137, 46, 'Республика Конго', 'ru'),
(138, 46, 'Congo, République de (Brazzaville)', 'fr'),
(139, 47, 'Cook Islands', 'en'),
(140, 47, 'Острова Кука', 'ru'),
(141, 47, 'les Îles Cook', 'fr'),
(142, 48, 'Costa Rica', 'en'),
(143, 48, 'Коста-Рика', 'ru'),
(144, 48, 'le Costa Rica', 'fr'),
(145, 49, 'Cote d''Ivoire', 'en'),
(146, 49, 'Кот-д''Ивуар', 'ru'),
(147, 49, 'la Côte d''Ivoire', 'fr'),
(148, 50, 'Croatia', 'en'),
(149, 50, 'Хорватия', 'ru'),
(150, 50, 'la Croatie', 'fr'),
(151, 51, 'Cuba', 'en'),
(152, 51, 'Куба', 'ru'),
(153, 51, 'Cuba', 'fr'),
(154, 52, 'Cyprus', 'en'),
(155, 52, 'Кипр', 'ru'),
(156, 52, 'Chypre', 'fr'),
(157, 53, 'Czech Republic', 'en'),
(158, 53, 'Чехия', 'ru'),
(159, 53, 'la République tchèque', 'fr'),
(160, 54, 'Denmark', 'en'),
(161, 54, 'Дания', 'ru'),
(162, 54, 'le Danemark', 'fr'),
(163, 55, 'Djibouti', 'en'),
(164, 55, 'Джибути', 'ru'),
(165, 55, 'le Djibouti', 'fr'),
(166, 56, 'Dominica', 'en'),
(167, 56, 'Доминика', 'ru'),
(168, 56, 'la Dominique', 'fr'),
(169, 57, 'Dominican Republic', 'en'),
(170, 57, 'Доминиканская Республика', 'ru'),
(171, 57, 'la République dominicaine', 'fr'),
(172, 58, 'East Timor Timor-Leste', 'en'),
(173, 58, 'Восточный Тимор', 'ru'),
(174, 58, 'Timor oriental Timor-Leste', 'fr'),
(175, 59, 'Ecuador', 'en'),
(176, 59, 'Эквадор', 'ru'),
(177, 59, 'l''Équateur', 'fr'),
(178, 60, 'Egypt', 'en'),
(179, 60, 'Египет', 'ru'),
(180, 60, 'l''Égypte', 'fr'),
(181, 61, 'El Salvador', 'en'),
(182, 61, 'Эль-Сальвадор', 'ru'),
(183, 61, 'le Salvador', 'fr'),
(184, 62, 'Equatorial Guinea', 'en'),
(185, 62, 'Экваториальная Гвинея', 'ru'),
(186, 62, 'la Guinée équatoriale', 'fr'),
(187, 63, 'Eritrea', 'en'),
(188, 63, 'Эритрея', 'ru'),
(189, 63, 'l''Érythrée', 'fr'),
(190, 64, 'Estonia', 'en'),
(191, 64, 'Эстония', 'ru'),
(192, 64, 'l''Estonie', 'fr'),
(193, 65, 'Ethiopia', 'en'),
(194, 65, 'Эфиопия', 'ru'),
(195, 65, 'l''Éthiopie', 'fr'),
(196, 66, 'Falkland Islands', 'en'),
(197, 66, 'Фолклендские острова', 'ru'),
(198, 66, 'les îles Falkland', 'fr'),
(199, 67, 'Faroe Islands', 'en'),
(200, 67, 'Фарерские острова', 'ru'),
(201, 67, 'Îles Féroé', 'fr'),
(202, 68, 'Fiji', 'en'),
(203, 68, 'Фиджи', 'ru'),
(204, 68, 'les Fidji', 'fr'),
(205, 69, 'Finland', 'en'),
(206, 69, 'Финляндия', 'ru'),
(207, 69, 'la Finlande', 'fr'),
(208, 70, 'France', 'en'),
(209, 70, 'Франция', 'ru'),
(210, 70, 'la France', 'fr'),
(211, 71, 'French Guiana', 'en'),
(212, 71, 'Французская Гвиана', 'ru'),
(213, 71, 'Guinée Française', 'fr'),
(214, 72, 'French Polynesia', 'en'),
(215, 72, 'Французская Полинезия', 'ru'),
(216, 72, 'la Polynésie française', 'fr'),
(217, 73, 'Gabon', 'en'),
(218, 73, 'Габон', 'ru'),
(219, 73, 'le Gabon', 'fr'),
(220, 74, 'Gambia', 'en'),
(221, 74, 'Гамбия', 'ru'),
(222, 74, 'la Gambie', 'fr'),
(223, 75, 'Georgia', 'en'),
(224, 75, 'Грузия', 'ru'),
(225, 75, 'la Géorgie', 'fr'),
(226, 76, 'Germany', 'en'),
(227, 76, 'Германия', 'ru'),
(228, 76, 'l''Allemagne', 'fr'),
(229, 77, 'Ghana', 'en'),
(230, 77, 'Гана', 'ru'),
(231, 77, 'le Ghana', 'fr'),
(232, 78, 'Gibraltar', 'en'),
(233, 78, 'Гибралтар', 'ru'),
(234, 78, 'Gibraltar', 'fr'),
(235, 79, 'Greece', 'en'),
(236, 79, 'Греция', 'ru'),
(237, 79, 'la Grèce', 'fr'),
(238, 80, 'Greenland', 'en'),
(239, 80, 'Гренландия', 'ru'),
(240, 80, 'Groenland', 'fr'),
(241, 81, 'Grenada', 'en'),
(242, 81, 'Гренада', 'ru'),
(243, 81, 'la Grenade', 'fr'),
(244, 82, 'Guadeloupe', 'en'),
(245, 82, 'Гваделупа', 'ru'),
(246, 82, 'Guadeloupe', 'fr'),
(247, 83, 'Guam', 'en'),
(248, 83, 'Гуам', 'ru'),
(249, 83, 'Guam', 'fr'),
(250, 84, 'Guatemala', 'en'),
(251, 84, 'Гватемала', 'ru'),
(252, 84, 'le Guatemala', 'fr'),
(253, 85, 'Guinea', 'en'),
(254, 85, 'Гвинея', 'ru'),
(255, 85, 'la Guinée', 'fr'),
(256, 86, 'Guinea-Bissau', 'en'),
(257, 86, 'Гвинея-Бисау', 'ru'),
(258, 86, 'Guinée-Bissau', 'fr'),
(259, 87, 'Guyana', 'en'),
(260, 87, 'Гайана', 'ru'),
(261, 87, 'la Guyana', 'fr'),
(262, 88, 'Haiti', 'en'),
(263, 88, 'Гаити', 'ru'),
(264, 88, 'Haïti', 'fr'),
(265, 89, 'Honduras', 'en'),
(266, 89, 'Гондурас', 'ru'),
(267, 89, 'le Honduras', 'fr'),
(268, 90, 'Hong Kong', 'en'),
(269, 90, 'Гонконг', 'ru'),
(270, 90, 'Hong Kong', 'fr'),
(271, 91, 'Hungary', 'en'),
(272, 91, 'Венгрия', 'ru'),
(273, 91, 'la Hongrie', 'fr'),
(274, 92, 'Iceland', 'en'),
(275, 92, 'Исландия', 'ru'),
(276, 92, 'l''Islande', 'fr'),
(277, 93, 'India', 'en'),
(278, 93, 'Индия', 'ru'),
(279, 93, 'l''Inde', 'fr'),
(280, 94, 'Indonesia', 'en'),
(281, 94, 'Индонезия', 'ru'),
(282, 94, 'l''Indonésie', 'fr'),
(283, 95, 'Iran', 'en'),
(284, 95, 'Иран', 'ru'),
(285, 95, 'l''Iran', 'fr'),
(286, 96, 'Iraq', 'en'),
(287, 96, 'Ирак', 'ru'),
(288, 96, 'l''Irak', 'fr'),
(289, 97, 'Ireland', 'en'),
(290, 97, 'Ирландия', 'ru'),
(291, 97, 'l''Irlande', 'fr'),
(292, 98, 'Israel', 'en'),
(293, 98, 'Израиль', 'ru'),
(294, 98, 'Israël', 'fr'),
(295, 99, 'Italy', 'en'),
(296, 99, 'Италия', 'ru'),
(297, 99, 'l''Italie', 'fr'),
(298, 100, 'Jamaica', 'en'),
(299, 100, 'Ямайка', 'ru'),
(300, 100, 'la Jamaïque', 'fr'),
(301, 101, 'Japan', 'en'),
(302, 101, 'Япония', 'ru'),
(303, 101, 'le Japon', 'fr'),
(304, 102, 'Jordan', 'en'),
(305, 102, 'Иордания', 'ru'),
(306, 102, 'la Jordanie', 'fr'),
(307, 103, 'Kazakhstan', 'en'),
(308, 103, 'Казахстан', 'ru'),
(309, 103, 'le Kazakhstan', 'fr'),
(310, 104, 'Kenya', 'en'),
(311, 104, 'Кения', 'ru'),
(312, 104, 'le Kenya', 'fr'),
(313, 105, 'Kiribati', 'en'),
(314, 105, 'Кирибати', 'ru'),
(315, 105, 'Kiribati', 'fr'),
(316, 106, 'Korea, (North Korea)', 'en'),
(317, 106, 'Корея, северная', 'ru'),
(318, 106, 'Corée (Corée du Nord)', 'fr'),
(319, 107, 'Korea, (South Korea)', 'en'),
(320, 107, 'Корея, южная', 'ru'),
(321, 107, 'Corée (Corée du Sud)', 'fr'),
(322, 108, 'Kuwait', 'en'),
(323, 108, 'Кувейт', 'ru'),
(324, 108, 'le Koweït', 'fr'),
(325, 109, 'Kyrgyzstan', 'en'),
(326, 109, 'Киргизия', 'ru'),
(327, 109, 'le Kirghizstan', 'fr'),
(328, 110, 'Lao, People''s Democratic Republic', 'en'),
(329, 110, 'Лаос', 'ru'),
(330, 110, 'République démocratique populaire lao', 'fr'),
(331, 111, 'Latvia', 'en'),
(332, 111, 'Латвия', 'ru'),
(333, 111, 'la Lettonie', 'fr'),
(334, 112, 'Lebanon', 'en'),
(335, 112, 'Ливан', 'ru'),
(336, 112, 'le Liban', 'fr'),
(337, 113, 'Lesotho', 'en'),
(338, 113, 'Лесото', 'ru'),
(339, 113, 'le Lesotho', 'fr'),
(340, 114, 'Liberia', 'en'),
(341, 114, 'Либерия', 'ru'),
(342, 114, 'le Libéria', 'fr'),
(343, 115, 'Libya', 'en'),
(344, 115, 'Ливия', 'ru'),
(345, 115, 'la Libye', 'fr'),
(346, 116, 'Liechtenstein', 'en'),
(347, 116, 'Лихтенштейн', 'ru'),
(348, 116, 'le Liechtenstein', 'fr'),
(349, 117, 'Lithuania', 'en'),
(350, 117, 'Литва', 'ru'),
(351, 117, 'la Lituanie', 'fr'),
(352, 118, 'Luxembourg', 'en'),
(353, 118, 'Люксембург', 'ru'),
(354, 118, 'le Luxembourg', 'fr'),
(355, 119, 'Macao', 'en'),
(356, 119, 'Макао', 'ru'),
(357, 119, 'Macao', 'fr'),
(358, 120, 'Macedonia', 'en'),
(359, 120, 'Македония', 'ru'),
(360, 120, 'Macédoine', 'fr'),
(361, 121, 'Madagascar', 'en'),
(362, 121, 'Мадагаскар', 'ru'),
(363, 121, 'Madagascar', 'fr'),
(364, 122, 'Malawi', 'en'),
(365, 122, 'Малави', 'ru'),
(366, 122, 'le Malawi', 'fr'),
(367, 123, 'Malaysia', 'en'),
(368, 123, 'Малайзия', 'ru'),
(369, 123, 'la Malaisie', 'fr'),
(370, 124, 'Maldives', 'en'),
(371, 124, 'Мальдивы', 'ru'),
(372, 124, 'les Maldives', 'fr'),
(373, 125, 'Mali', 'en'),
(374, 125, 'Мали', 'ru'),
(375, 125, 'le Mali', 'fr'),
(376, 126, 'Malta', 'en'),
(377, 126, 'Мальта', 'ru'),
(378, 126, 'Malte', 'fr'),
(379, 127, 'Marshall Islands', 'en'),
(380, 127, 'Маршалловы Острова', 'ru'),
(381, 127, 'les Îles Marshall', 'fr'),
(382, 128, 'Martinique', 'en'),
(383, 128, 'Мартиника', 'ru'),
(384, 128, 'Martinique', 'fr'),
(385, 129, 'Mauritania', 'en'),
(386, 129, 'Мавритания', 'ru'),
(387, 129, 'la Mauritanie', 'fr'),
(388, 130, 'Mauritius', 'en'),
(389, 130, 'Маврикий', 'ru'),
(390, 130, 'Île Maurice', 'fr'),
(391, 131, 'Mexico', 'en'),
(392, 131, 'Мексика', 'ru'),
(393, 131, 'le Mexique', 'fr'),
(394, 132, 'Micronesia, Federal States of', 'en'),
(395, 132, 'Микронезии, Федеративные Штаты', 'ru'),
(396, 132, 'Micronésie, États fédéraux de', 'fr'),
(397, 133, 'Moldova', 'en'),
(398, 133, 'Молдавия', 'ru'),
(399, 133, 'Moldavie', 'fr'),
(400, 134, 'Monaco', 'en'),
(401, 134, 'Монако', 'ru'),
(402, 134, 'Monaco', 'fr'),
(403, 135, 'Mongolia', 'en'),
(404, 135, 'Монголия', 'ru'),
(405, 135, 'la Mongolie', 'fr'),
(406, 136, 'Montenegro', 'en'),
(407, 136, 'Черногория', 'ru'),
(408, 136, 'le Monténégro', 'fr'),
(409, 137, 'Montserrat', 'en'),
(410, 137, 'Монтсерат', 'ru'),
(411, 137, 'Montserrat', 'fr'),
(412, 138, 'Morocco', 'en'),
(413, 138, 'Марокко', 'ru'),
(414, 138, 'le Maroc', 'fr'),
(415, 139, 'Mozambique', 'en'),
(416, 139, 'Мозамбик', 'ru'),
(417, 139, 'le Mozambique', 'fr'),
(418, 140, 'Myanmar, Burma', 'en'),
(419, 140, 'Мьянма', 'ru'),
(420, 140, 'Myanmar, Birmanie', 'fr'),
(421, 141, 'Namibia', 'en'),
(422, 141, 'Намибия', 'ru'),
(423, 141, 'la Namibie', 'fr'),
(424, 142, 'Nauru', 'en'),
(425, 142, 'Науру', 'ru'),
(426, 142, 'la Nauru', 'fr'),
(427, 143, 'Nepal', 'en'),
(428, 143, 'Непал', 'ru'),
(429, 143, 'le Népal', 'fr'),
(430, 144, 'Netherlands', 'en'),
(431, 144, 'Нидерланды', 'ru'),
(432, 144, 'les Pays-Bas', 'fr'),
(433, 145, 'Netherlands Antilles', 'en'),
(434, 145, 'Нидерландские Антильские острова', 'ru'),
(435, 145, 'Antilles néerlandaises', 'fr'),
(436, 146, 'New Caledonia', 'en'),
(437, 146, 'Новая Каледония', 'ru'),
(438, 146, 'Nouvelle Calédonie', 'fr'),
(439, 147, 'New Zealand', 'en'),
(440, 147, 'Новая Зеландия', 'ru'),
(441, 147, 'la Nouvelle-Zélande', 'fr'),
(442, 148, 'Nicaragua', 'en'),
(443, 148, 'Никарагуа', 'ru'),
(444, 148, 'le Nicaragua', 'fr'),
(445, 149, 'Niger', 'en'),
(446, 149, 'Нигер', 'ru'),
(447, 149, 'le Niger', 'fr'),
(448, 150, 'Nigeria', 'en'),
(449, 150, 'Нигерия', 'ru'),
(450, 150, 'le Nigéria', 'fr'),
(451, 151, 'Niue', 'en'),
(452, 151, 'Ниуэ', 'ru'),
(453, 151, 'Niue', 'fr'),
(454, 152, 'Northern Mariana Islands', 'en'),
(455, 152, 'Северные Марианские острова', 'ru'),
(456, 152, 'Îles Mariannes du Nord', 'fr'),
(457, 153, 'Norway', 'en'),
(458, 153, 'Норвегия', 'ru'),
(459, 153, 'la Norvège', 'fr'),
(460, 154, 'Oman', 'en'),
(461, 154, 'Оман', 'ru'),
(462, 154, 'l''Oman', 'fr'),
(463, 155, 'Pakistan', 'en'),
(464, 155, 'Пакистан', 'ru'),
(465, 155, 'le Pakistan', 'fr'),
(466, 156, 'Palau', 'en'),
(467, 156, 'Палау', 'ru'),
(468, 156, 'Palau', 'fr'),
(469, 157, 'Palestinian territory', 'en'),
(470, 157, 'палестинской территории', 'ru'),
(471, 157, 'Territoire Palestinien', 'fr'),
(472, 158, 'Panama', 'en'),
(473, 158, 'Панама', 'ru'),
(474, 158, 'le Panama', 'fr'),
(475, 159, 'Papua New Guinea', 'en'),
(476, 159, 'Папуа — Новая Гвинея', 'ru'),
(477, 159, 'la Papouasie-Nouvelle-Guinée', 'fr'),
(478, 160, 'Paraguay', 'en'),
(479, 160, 'Парагвай', 'ru'),
(480, 160, 'le Paraguay', 'fr'),
(481, 161, 'Peru', 'en'),
(482, 161, 'Перу', 'ru'),
(483, 161, 'le Pérou', 'fr'),
(484, 162, 'Philippines', 'en'),
(485, 162, 'Филиппины', 'ru'),
(486, 162, 'les Philippines', 'fr'),
(487, 163, 'Poland', 'en'),
(488, 163, 'Польша', 'ru'),
(489, 163, 'la Pologne', 'fr'),
(490, 164, 'Portugal', 'en'),
(491, 164, 'Португалия', 'ru'),
(492, 164, 'le Portugal', 'fr'),
(493, 165, 'Puerto Rico', 'en'),
(494, 165, 'Пуэрто-Рико', 'ru'),
(495, 165, 'Porto Rico', 'fr'),
(496, 166, 'Qatar', 'en'),
(497, 166, 'Катар', 'ru'),
(498, 166, 'le Qatar', 'fr'),
(499, 167, 'Reunion Island', 'en'),
(500, 167, 'Реюньон', 'ru'),
(501, 167, 'Ile de la Réunion', 'fr'),
(502, 168, 'Romania', 'en'),
(503, 168, 'Румыния', 'ru'),
(504, 168, 'la Roumanie', 'fr'),
(505, 169, 'Russian Federation', 'en'),
(506, 169, 'Россия', 'ru'),
(507, 169, 'Fédération Russe', 'fr'),
(508, 170, 'Rwanda', 'en'),
(509, 170, 'Руанда', 'ru'),
(510, 170, 'le Rwanda', 'fr'),
(511, 171, 'Saint Kitts and Nevis', 'en'),
(512, 171, 'Сент-Китс и Невис', 'ru'),
(513, 171, 'Saint-Christophe-et-Niévès', 'fr'),
(514, 172, 'Saint Lucia', 'en'),
(515, 172, 'Сент-Люсия', 'ru'),
(516, 172, 'Sainte-Lucie', 'fr'),
(517, 173, 'Saint Vincent and the Grenadines', 'en'),
(518, 173, 'Сент-Винсент и Гренадины', 'ru'),
(519, 173, 'Saint-Vincent-et-les-Grenadines', 'fr'),
(520, 174, 'Samoa', 'en'),
(521, 174, 'Самоа', 'ru'),
(522, 174, 'Samoa', 'fr'),
(523, 175, 'San Marino', 'en'),
(524, 175, 'Сан-Марино', 'ru'),
(525, 175, 'Saint-Marin', 'fr'),
(526, 176, 'Sao Tome and Príncipe', 'en'),
(527, 176, 'Сан-Томе и Принсипи', 'ru'),
(528, 176, 'Sao Tomé et Principe', 'fr'),
(529, 177, 'Saudi Arabia', 'en'),
(530, 177, 'Саудовская Аравия', 'ru'),
(531, 177, 'l''Arabie saoudite', 'fr'),
(532, 178, 'Senegal', 'en'),
(533, 178, 'Сенегал', 'ru'),
(534, 178, 'le Sénégal', 'fr'),
(535, 179, 'Serbia', 'en'),
(536, 179, 'Сербия', 'ru'),
(537, 179, 'la Serbie', 'fr'),
(538, 180, 'Seychelles', 'en'),
(539, 180, 'Сейшельские острова', 'ru'),
(540, 180, 'les Seychelles', 'fr'),
(541, 181, 'Sierra Leone', 'en'),
(542, 181, 'Сьерра-Леоне', 'ru'),
(543, 181, 'la Sierra Leone', 'fr'),
(544, 182, 'Singapore', 'en'),
(545, 182, 'Сингапур', 'ru'),
(546, 182, 'Singapour', 'fr'),
(547, 183, 'Slovakia', 'en'),
(548, 183, 'Словакия', 'ru'),
(549, 183, 'la Slovaquie', 'fr'),
(550, 184, 'Slovenia', 'en'),
(551, 184, 'Словения', 'ru'),
(552, 184, 'la Slovénie', 'fr'),
(553, 185, 'Solomon Islands', 'en'),
(554, 185, 'Соломоновы Острова', 'ru'),
(555, 185, 'Les îles Salomon', 'fr'),
(556, 186, 'Somalia', 'en'),
(557, 186, 'Сомали', 'ru'),
(558, 186, 'la Somalie', 'fr'),
(559, 187, 'South Africa', 'en'),
(560, 187, 'Южно-Африканская Республика (ЮАР)', 'ru'),
(561, 187, 'l''Afrique du Sud', 'fr'),
(562, 188, 'Spain', 'en'),
(563, 188, 'Испания', 'ru'),
(564, 188, 'l''Espagne', 'fr'),
(565, 189, 'Sri Lanka', 'en'),
(566, 189, 'Шри-Ланка', 'ru'),
(567, 189, 'le Sri Lanka', 'fr'),
(568, 190, 'Sudan', 'en'),
(569, 190, 'Судан', 'ru'),
(570, 190, 'le Soudan', 'fr'),
(571, 191, 'Suriname', 'en'),
(572, 191, 'Суринам', 'ru'),
(573, 191, 'Suriname', 'fr'),
(574, 192, 'Swaziland', 'en'),
(575, 192, 'Свазиленд', 'ru'),
(576, 192, 'le Swaziland', 'fr'),
(577, 193, 'Sweden', 'en'),
(578, 193, 'Швеция', 'ru'),
(579, 193, 'la Suède', 'fr'),
(580, 194, 'Switzerland', 'en'),
(581, 194, 'Швейцария', 'ru'),
(582, 194, 'la Suisse', 'fr'),
(583, 195, 'Syria', 'en'),
(584, 195, 'Сирия', 'ru'),
(585, 195, 'la Syrie', 'fr'),
(586, 196, 'Taiwan', 'en'),
(587, 196, 'Тайвань', 'ru'),
(588, 196, 'Taïwan', 'fr'),
(589, 197, 'Tajikistan', 'en'),
(590, 197, 'Таджикистан', 'ru'),
(591, 197, 'le Tadjikistan', 'fr'),
(592, 198, 'Tanzania', 'en'),
(593, 198, 'Танзания', 'ru'),
(594, 198, 'la Tanzanie', 'fr'),
(595, 199, 'Thailand', 'en'),
(596, 199, 'Таиланд', 'ru'),
(597, 199, 'la Thaïlande', 'fr'),
(598, 200, 'Tibet', 'en'),
(599, 200, 'Тибет', 'ru'),
(600, 200, 'Tibet', 'fr'),
(601, 201, 'Timor-Leste (East Timor)', 'en'),
(602, 201, 'Восточный Тимор', 'ru'),
(603, 201, 'Timor-Leste (Timor oriental)', 'fr'),
(604, 202, 'Togo', 'en'),
(605, 202, 'Того', 'ru'),
(606, 202, 'le Togo', 'fr'),
(607, 203, 'Tokelau', 'en'),
(608, 203, 'Токелау', 'ru'),
(609, 203, 'Tokelau', 'fr'),
(610, 204, 'Tonga', 'en'),
(611, 204, 'Тонга', 'ru'),
(612, 204, 'les Tonga', 'fr'),
(613, 205, 'Trinidad and Tobago', 'en'),
(614, 205, 'Тринидад и Тобаго', 'ru'),
(615, 205, 'la Trinité-et-Tobago', 'fr'),
(616, 206, 'Tunisia', 'en'),
(617, 206, 'Тунис', 'ru'),
(618, 206, 'la Tunisie', 'fr'),
(619, 207, 'Turkey', 'en'),
(620, 207, 'Турция', 'ru'),
(621, 207, 'la Turquie', 'fr'),
(622, 208, 'Turkmenistan', 'en'),
(623, 208, 'Туркменистан', 'ru'),
(624, 208, 'le Turkménistan', 'fr'),
(625, 209, 'Tuvalu', 'en'),
(626, 209, 'Тувалу', 'ru'),
(627, 209, 'le Tuvalu', 'fr'),
(628, 210, 'Uganda', 'en'),
(629, 210, 'Уганда', 'ru'),
(630, 210, 'l''Ouganda', 'fr'),
(631, 211, 'Ukraine', 'en'),
(632, 211, 'Украина', 'ru'),
(633, 211, 'l''Ukraine', 'fr'),
(634, 212, 'United Arab Emirates', 'en'),
(635, 212, 'Объединённые Арабские Эмираты (ОАЭ)', 'ru'),
(636, 212, 'les Émirats arabes unis', 'fr'),
(637, 213, 'United Kingdom of Great Britain and Northern Ireland', 'en'),
(638, 213, 'Соединённое Королевство Великобритании и Северной Ирландии', 'ru'),
(639, 213, 'Royaume-Uni de Grande-Bretagne et d''Irlande du Nord', 'fr'),
(640, 214, 'United States', 'en'),
(641, 214, 'Соединённые Штаты Америки', 'ru'),
(642, 214, 'les États-Unis', 'fr'),
(643, 215, 'Uruguay', 'en'),
(644, 215, 'Уругвай', 'ru'),
(645, 215, 'l''Uruguay', 'fr'),
(646, 216, 'Uzbekistan', 'en'),
(647, 216, 'Узбекистан', 'ru'),
(648, 216, 'l''Ouzbékistan', 'fr'),
(649, 217, 'Vanuatu', 'en'),
(650, 217, 'Вануату', 'ru'),
(651, 217, 'le Vanuatu', 'fr'),
(652, 218, 'Vatican City State', 'en'),
(653, 218, 'Ватикан', 'ru'),
(654, 218, 'Etat de la Cité du Vatican', 'fr'),
(655, 219, 'Venezuela', 'en'),
(656, 219, 'Венесуэла', 'ru'),
(657, 219, 'le Venezuela', 'fr'),
(658, 220, 'Vietnam', 'en'),
(659, 220, 'Вьетнам', 'ru'),
(660, 220, 'le Viêt-Nam', 'fr'),
(661, 221, 'Virgin Islands (British)', 'en'),
(662, 221, 'Британские Виргинские острова', 'ru'),
(663, 221, 'Îles Vierges (britanniques)', 'fr'),
(664, 222, 'Virgin Islands (U.S.)', 'en'),
(665, 222, 'Американские Виргинские острова', 'ru'),
(666, 222, 'Îles Vierges (États-Unis)', 'fr'),
(667, 223, 'Wallis and Futuna Islands', 'en'),
(668, 223, 'Острова Уоллис и Футуна', 'ru'),
(669, 223, 'Îles Wallis et Futuna', 'fr'),
(670, 224, 'Western Sahara', 'en'),
(671, 224, 'Западная Сахара', 'ru'),
(672, 224, 'Sahara occidental', 'fr'),
(673, 225, 'Yemen', 'en'),
(674, 225, 'Йемен', 'ru'),
(675, 225, 'le Yémen', 'fr'),
(676, 226, 'Zambia', 'en'),
(677, 226, 'Замбия', 'ru'),
(678, 226, 'la Zambie', 'fr'),
(679, 227, 'Zimbabwe', 'en'),
(680, 227, 'Зимбабве', 'ru'),
(681, 227, 'le Zimbabwe', 'fr');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE IF NOT EXISTS `favourites` (
  `id` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tour_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `user`, `tour_id`) VALUES
(12, 'giorgi.jajvani@laposte.net', 7);

-- --------------------------------------------------------

--
-- Table structure for table `file_system`
--

CREATE TABLE IF NOT EXISTS `file_system` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `random` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'page',
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `file_system`
--

INSERT INTO `file_system` (`id`, `date`, `idx`, `cid`, `random`, `page_id`, `file_path`, `file_size`, `type`, `lang`, `position`) VALUES
(5, 1510737754, 1, 0, 'JX5hmNN4a74ZoKh551I3S61rM', 0, 'filemanager/1.jpg', 253687, 'module', '', 0),
(7, 1510737790, 2, 0, 'JX5hmNN4a74ZoKh551I3S61rM', 0, 'filemanager/20731_292132622250_8253899_n.jpg', 81725, 'module', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `georgia`
--

CREATE TABLE IF NOT EXISTS `georgia` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ge',
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `georgia`
--

INSERT INTO `georgia` (`id`, `idx`, `cid`, `name`, `lang`, `status`) VALUES
(1, 1, 0, 'აფხაზეთი', 'ge', 0),
(2, 1, 0, 'Apkhazeti', 'en', 0),
(3, 1, 0, 'Apkhazeti', 'ru', 0),
(4, 2, 0, 'სამეგრელო ზემო სვანეთი', 'ge', 0),
(5, 2, 0, 'Samegrelo zemo svaneti', 'en', 0),
(6, 2, 0, 'Samegrelo zemo svaneti', 'ru', 0),
(7, 3, 0, 'რაჭა ლეჩხუმი კვემო სვანეთი', 'ge', 0),
(8, 3, 0, 'Racha lechkhumi kvemo svaneti', 'en', 0),
(9, 3, 0, 'Racha lechkhumi kvemo svaneti', 'ru', 0),
(10, 4, 0, 'იმერეთი', 'ge', 0),
(11, 4, 0, 'Imereti', 'en', 0),
(12, 4, 0, 'Imereti', 'ru', 0),
(13, 5, 0, 'გურია', 'ge', 0),
(14, 5, 0, 'Guria', 'en', 0),
(15, 5, 0, 'Guria', 'ru', 0),
(16, 6, 0, 'აჭარა', 'ge', 0),
(17, 6, 0, 'adjara', 'en', 0),
(18, 6, 0, 'adjara', 'ru', 0),
(19, 7, 0, 'შიდა ქართლი', 'ge', 0),
(20, 7, 0, 'Shida qartli', 'en', 0),
(21, 7, 0, 'Shida qartli', 'ru', 0),
(22, 8, 0, 'სამცხე ჯავახეთი', 'ge', 0),
(23, 8, 0, 'Samckhe javahketi', 'en', 0),
(24, 8, 0, 'Samckhe javahketi', 'ru', 0),
(25, 9, 0, 'ქვემო ქართლი', 'ge', 0),
(26, 9, 0, 'kvemo qartli', 'en', 0),
(27, 9, 0, 'kvemo qartli', 'ru', 0),
(206, 69, 11, 'Mleta', 'en', 0),
(205, 69, 11, 'მლეთა', 'ge', 0),
(31, 11, 0, 'მცხეთა მთიანეთი', 'ge', 0),
(32, 11, 0, 'Mtshketa mtianeti', 'en', 0),
(33, 11, 0, 'Mtshketa mtianeti', 'ru', 0),
(34, 12, 0, 'კახეთი', 'ge', 0),
(35, 12, 0, 'kakheti', 'en', 0),
(36, 12, 0, 'kakheti', 'ru', 0),
(37, 13, 1, 'გაგრა', 'ge', 0),
(38, 13, 1, 'Gagra', 'en', 0),
(39, 13, 1, 'Gagra', 'ru', 0),
(40, 14, 1, 'ფსხუ', 'ge', 0),
(41, 14, 1, 'Pskhu', 'en', 0),
(42, 14, 1, 'Pskhu', 'ru', 0),
(43, 15, 1, 'ბიჭვინთა', 'ge', 0),
(44, 15, 1, 'Pitsunda', 'en', 0),
(45, 15, 1, 'Pitsunda', 'ru', 0),
(46, 16, 1, 'გუდაუთა', 'ge', 0),
(47, 16, 1, 'Gudauta', 'en', 0),
(48, 16, 1, 'Gudauta', 'ru', 0),
(49, 17, 1, 'სოხუმი', 'ge', 0),
(50, 17, 1, 'Sukhumi', 'en', 0),
(51, 17, 1, 'Sukhumi', 'ru', 0),
(52, 18, 1, 'ლათა', 'ge', 0),
(53, 18, 1, 'Lata', 'en', 0),
(54, 18, 1, 'Lata', 'ru', 0),
(55, 19, 1, 'ოტაფი', 'ge', 0),
(56, 19, 1, 'Otap', 'en', 0),
(57, 19, 1, 'Otap', 'ru', 0),
(58, 20, 1, 'ომარიშარა', 'ge', 0),
(59, 20, 1, 'Omarishara', 'en', 0),
(60, 20, 1, 'Omarishara', 'ru', 0),
(61, 21, 1, 'ტყვარჩელი', 'ge', 0),
(62, 21, 1, 'Tkvarcheli', 'en', 0),
(63, 21, 1, 'Tkvarcheli', 'ru', 0),
(64, 22, 1, 'ოჩამჩირე', 'ge', 0),
(65, 22, 1, 'Ochamchire', 'en', 0),
(66, 22, 1, 'Ochamchire', 'ru', 0),
(67, 23, 1, 'გალი', 'ge', 0),
(68, 23, 1, 'Gali', 'en', 0),
(69, 23, 1, 'Gali', 'ru', 0),
(70, 24, 2, 'მესტია', 'ge', 0),
(71, 24, 2, 'Mestia', 'en', 0),
(72, 24, 2, 'Mestia', 'ru', 0),
(73, 25, 2, 'ხაიში', 'ge', 0),
(74, 25, 2, 'Khaishi', 'en', 0),
(75, 25, 2, 'Khaishi', 'ru', 0),
(76, 26, 2, 'ჯვარი', 'ge', 0),
(77, 26, 2, 'Jvari', 'en', 0),
(78, 26, 2, 'Jvari', 'ru', 0),
(79, 27, 2, 'წალენჯიხა', 'ge', 0),
(80, 27, 2, 'Tsalenjikha', 'en', 0),
(81, 27, 2, 'Tsalenjikha', 'ru', 0),
(82, 28, 2, 'ზუგდიდი', 'ge', 0),
(83, 28, 2, 'Zugdidi', 'en', 0),
(84, 28, 2, 'Zugdidi', 'ru', 0),
(85, 29, 2, 'ანაკლია', 'ge', 0),
(86, 29, 2, 'Anaklia', 'en', 0),
(87, 29, 2, 'Anaklia', 'ru', 0),
(88, 30, 2, 'ხობი', 'ge', 0),
(89, 30, 2, 'Xobi', 'en', 0),
(90, 30, 2, 'Xobi', 'ru', 0),
(91, 31, 2, 'სენაკი', 'ge', 0),
(92, 31, 2, 'Senaki', 'en', 0),
(93, 31, 2, 'Senaki', 'ru', 0),
(94, 32, 2, 'ფოთი', 'ge', 0),
(95, 32, 2, 'Poti', 'en', 0),
(96, 32, 2, 'Poti', 'ru', 0),
(97, 33, 3, 'ლენტეხი', 'ge', 0),
(98, 33, 3, 'Lentekhi', 'en', 0),
(99, 33, 3, 'Lentekhi', 'ru', 0),
(100, 34, 3, 'ხვანჭკარა', 'ge', 0),
(101, 34, 3, 'Khvanchkara', 'en', 0),
(102, 34, 3, 'Khvanchkara', 'ru', 0),
(103, 35, 3, 'ამბროლაური', 'ge', 0),
(104, 35, 3, 'Ambrolauri', 'en', 0),
(105, 35, 3, 'Ambrolauri', 'ru', 0),
(106, 36, 3, 'კვაისი', 'ge', 0),
(107, 36, 3, 'Kvaisi', 'en', 0),
(108, 36, 3, 'Kvaisi', 'ru', 0),
(109, 37, 4, 'ტყიბული', 'ge', 0),
(110, 37, 4, 'Tkibuli', 'en', 0),
(111, 37, 4, 'Tkibuli', 'ru', 0),
(112, 38, 4, 'წყალტუბო', 'ge', 0),
(113, 38, 4, 'Tskhaltubo', 'en', 0),
(114, 38, 4, 'Tskhaltubo', 'ru', 0),
(115, 39, 4, 'ქუთაისი', 'ge', 0),
(116, 39, 4, 'Kutaisi', 'en', 0),
(117, 39, 4, 'Kutaisi', 'ru', 0),
(118, 40, 4, 'ჭიათურა', 'ge', 0),
(119, 40, 4, 'Chiatura', 'en', 0),
(120, 40, 4, 'Chiatura', 'ru', 0),
(121, 41, 4, 'სამტრედია', 'ge', 0),
(122, 41, 4, 'Samtredia', 'en', 0),
(123, 41, 4, 'Samtredia', 'ru', 0),
(124, 42, 4, 'ზესტაფონი', 'ge', 0),
(125, 42, 4, 'Zestaponi', 'en', 0),
(126, 42, 4, 'Zestaponi', 'ru', 0),
(127, 43, 4, 'ბაღდადი', 'ge', 0),
(128, 43, 4, 'Bagdadi', 'en', 0),
(129, 43, 4, 'Bagdadi', 'ru', 0),
(130, 44, 5, 'ლანჩხუთი', 'ge', 0),
(131, 44, 5, 'Lanchkhuti', 'en', 0),
(132, 44, 5, 'Lanchkhuti', 'ru', 0),
(133, 45, 5, 'ჩოხატაური', 'ge', 0),
(134, 45, 5, 'Chokhatauri', 'en', 0),
(135, 45, 5, 'Chokhatauri', 'ru', 0),
(136, 46, 5, 'ოზურგეთი', 'ge', 0),
(137, 46, 5, 'Ozurgeti', 'en', 0),
(138, 46, 5, 'Ozurgeti', 'ru', 0),
(139, 47, 5, 'ბახმარო', 'ge', 0),
(140, 47, 5, 'Bakhmaro', 'en', 0),
(141, 47, 5, 'Bakhmaro', 'ru', 0),
(142, 48, 6, 'ქობულეთი', 'ge', 0),
(143, 48, 6, 'Kobuleti', 'en', 0),
(144, 48, 6, 'Kobuleti', 'ru', 0),
(145, 49, 6, 'ბათუმი', 'ge', 0),
(146, 49, 6, 'Batumi', 'en', 0),
(147, 49, 6, 'Batumi', 'ru', 0),
(148, 50, 6, 'ქედა', 'ge', 0),
(149, 50, 6, 'Qeda', 'en', 0),
(150, 50, 6, 'Qeda', 'ru', 0),
(151, 51, 6, 'ხულო', 'ge', 0),
(152, 51, 6, 'Khulo', 'en', 0),
(153, 51, 6, 'Khulo', 'ru', 0),
(154, 52, 7, 'ქურთა', 'ge', 0),
(155, 52, 7, 'Kurta', 'en', 0),
(156, 52, 7, 'Kurta', 'ru', 0),
(157, 53, 7, 'ახალგორი', 'ge', 0),
(158, 53, 7, 'Akhalgori', 'en', 0),
(159, 53, 7, 'Akhalgori', 'ru', 0),
(160, 54, 7, 'ცხინვალი', 'ge', 0),
(161, 54, 7, 'Tskhinvali', 'en', 0),
(162, 54, 7, 'Tskhinvali', 'ru', 0),
(163, 55, 7, 'ხაშური', 'ge', 0),
(164, 55, 7, 'Khashuri', 'en', 0),
(165, 55, 7, 'Khashuri', 'ru', 0),
(166, 56, 7, 'გორი', 'ge', 0),
(167, 56, 7, 'Gori', 'en', 0),
(168, 56, 7, 'Gori', 'ru', 0),
(169, 57, 8, 'ბორჯომი', 'ge', 0),
(170, 57, 8, 'Borjomi', 'en', 0),
(171, 57, 8, 'Borjomi', 'ru', 0),
(172, 58, 8, 'ბაკურიანი', 'ge', 0),
(173, 58, 8, 'Bakuriani', 'en', 0),
(174, 58, 8, 'Bakuriani', 'ru', 0),
(175, 59, 8, 'აწყური', 'ge', 0),
(176, 59, 8, 'Atskuri', 'en', 0),
(177, 59, 8, 'Atskuri', 'ru', 0),
(178, 60, 8, 'აბასთუმანი', 'ge', 0),
(179, 60, 8, 'Abastumani', 'en', 0),
(180, 60, 8, 'Abastumani', 'ru', 0),
(181, 61, 8, 'ახალციხე', 'ge', 0),
(182, 61, 8, 'Akhaltsikhe', 'en', 0),
(183, 61, 8, 'Akhaltsikhe', 'ru', 0),
(184, 62, 8, 'ახალქალაქი', 'ge', 0),
(185, 62, 8, 'Akhalkalaki', 'en', 0),
(186, 62, 8, 'Akhalkalaki', 'ru', 0),
(187, 63, 8, 'ნინოწმინდა', 'ge', 0),
(188, 63, 8, 'Ninotsminda', 'en', 0),
(189, 63, 8, 'Ninotsminda', 'ru', 0),
(190, 64, 9, 'ბოლნისი', 'ge', 0),
(191, 64, 9, 'Bolnisi', 'en', 0),
(192, 64, 9, 'Bolnisi', 'ru', 0),
(193, 65, 9, 'მარნეული', 'ge', 0),
(194, 65, 9, 'Marneuli', 'en', 0),
(195, 65, 9, 'Marneuli', 'ru', 0),
(196, 66, 9, 'კაზრეთი', 'ge', 0),
(197, 66, 9, 'Kazreti', 'en', 0),
(198, 66, 9, 'Kazreti', 'ru', 0),
(199, 67, 9, 'რუსთავი', 'ge', 0),
(200, 67, 9, 'Rustavi', 'en', 0),
(201, 67, 9, 'Rustavi', 'ru', 0),
(202, 68, 9, 'თბილისი', 'ge', 0),
(203, 68, 9, 'Tbilisi', 'en', 0),
(204, 68, 9, 'Tbilisi', 'ru', 0),
(207, 69, 11, 'Mleta', 'ru', 0),
(208, 70, 11, 'ფასანაური', 'ge', 0),
(209, 70, 11, 'Pasanauri', 'en', 0),
(210, 70, 11, 'Pasanauri', 'ru', 0),
(211, 71, 11, 'დუშეთი', 'ge', 0),
(212, 71, 11, 'Dusheti', 'en', 0),
(213, 71, 11, 'Dusheti', 'ru', 0),
(214, 72, 11, 'მცხეთა', 'ge', 0),
(215, 72, 11, 'Mtskheta', 'en', 0),
(216, 72, 11, 'Mtskheta', 'ru', 0),
(217, 73, 12, 'არჭილო', 'ge', 0),
(218, 73, 12, 'Archilo', 'en', 0),
(219, 73, 12, 'Archilo', 'ru', 0),
(220, 74, 12, 'ახმეტა', 'ge', 0),
(221, 74, 12, 'Akhmeta', 'en', 0),
(222, 74, 12, 'Akhmeta', 'ru', 0),
(223, 75, 12, 'ყვარელი', 'ge', 0),
(224, 75, 12, 'Kvareli', 'en', 0),
(225, 75, 12, 'Kvareli', 'ru', 0),
(226, 76, 12, 'თელავი', 'ge', 0),
(227, 76, 12, 'Telavi', 'en', 0),
(228, 76, 12, 'Telavi', 'ru', 0),
(229, 77, 12, 'ლაგოდეხი', 'ge', 0),
(230, 77, 12, 'Lagodekhi', 'en', 0),
(231, 77, 12, 'Lagodekhi', 'ru', 0),
(232, 78, 12, 'გურჯაანი', 'ge', 0),
(233, 78, 12, 'Gurjaani', 'en', 0),
(234, 78, 12, 'Gurjaani', 'ru', 0),
(235, 79, 12, 'წნორი', 'ge', 0),
(236, 79, 12, 'Tsnori', 'en', 0),
(237, 79, 12, 'Tsnori', 'ru', 0),
(238, 80, 12, 'დედოფლის წყარო', 'ge', 0),
(239, 80, 12, 'Dedoflis tskaro', 'en', 0),
(240, 80, 12, 'Dedoflis tskaro', 'ru', 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `update_date` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personal_number` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `faddress` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jobTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monthly_income` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jobphone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contactPerson` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contactPersonNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `demended_loan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `demended_month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `recover` text COLLATE utf8_unicode_ci NOT NULL,
  `agree` int(11) NOT NULL,
  `read` int(11) NOT NULL,
  `loan_status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `loan_finished` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `date`, `update_date`, `ip`, `name`, `surname`, `personal_number`, `dob`, `faddress`, `city`, `mobile`, `email`, `jobTitle`, `monthly_income`, `position`, `jobphone`, `contactPerson`, `contactPersonNumber`, `demended_loan`, `demended_month`, `password`, `recover`, `agree`, `read`, `loan_status`, `loan_finished`, `status`) VALUES
(10, 1479655796, 1479765287, '94.240.219.15', 'გიო', 'გვაზავა', '01027034324', '26/07/1987', 'ვარკეთილი 3', '1', '599623555', 'giorgigvazava87@gmail.com', 'შპს სტუდია 404', '1000', 'ვებ დეველოპერი', '2477022', 'ქეთევან გვაზავა', '558530144', '1000', '12', '123', '', 1, 1, '2', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL,
  `title` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `name`, `pic`) VALUES
(2, 'en', 'English', '/public/img/en.jpg'),
(3, 'ge', 'Georgian', '/public/img/ge.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `myaccount_nav`
--

CREATE TABLE IF NOT EXISTS `myaccount_nav` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `myaccount_nav`
--

INSERT INTO `myaccount_nav` (`id`, `title`, `icon`, `slug`, `lang`, `position`) VALUES
(1, 'Purchases', 'fa fa-ticket', 'purchases', 'en', 1),
(2, 'Achats', 'fa fa-ticket', 'purchases', 'fr', 1),
(3, 'Покупки', 'fa fa-ticket', 'purchases', 'ru', 1),
(4, 'Favourites', 'fa fa-heart', 'favourites', 'en', 2),
(5, 'Favoris', 'fa fa-heart', 'favourites', 'fr', 2),
(6, 'Избранные', 'fa fa-heart', 'favourites', 'ru', 2),
(7, 'Profile', 'fa fa-user', 'profile', 'en', 3),
(8, 'Profil', 'fa fa-user', 'profile', 'fr', 3),
(9, 'Профиль', 'fa fa-user', 'profile', 'ru', 3),
(10, 'Change Password', 'fa fa-lock', 'changepassword', 'en', 4),
(11, 'Changer le mot de passe', 'fa fa-lock', 'changepassword', 'fr', 4),
(12, 'Изменить пароль', 'fa fa-lock', 'changepassword', 'ru', 4);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE IF NOT EXISTS `navigation` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `nav_type` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `usefull_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'false',
  `cssclass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'false',
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `idx`, `cid`, `date`, `nav_type`, `type`, `title`, `description`, `text`, `slug`, `usefull_type`, `cssclass`, `redirect`, `lang`, `position`, `visibility`, `status`) VALUES
(49, 2, 1, 1523102602, 0, 'news', 'News', '<p>სიახლეები</p>', '<p>სიახლეები</p>', 'news', 'news', '', '', 'en', 1, 0, 0),
(2, 1, 0, 1504340572, 0, 'plugin', 'Home', '<p>Home Page</p>', '<p>Home Page</p>', 'home', 'false', '', '', 'en', 1, 0, 0),
(3, 1, 0, 1504340572, 0, 'plugin', 'მთავარი', '<p>Главная</p>', '<p>Главная</p>', 'home', 'false', '', '', 'ge', 1, 0, 0),
(78, 16, 14, 1523108335, 0, 'text', 'ვებ გვერდების დამზადება', '<p>ვებ გვერდების დამზადება</p>', '<p>ვებ გვერდების დამზადება</p>', 'consult-develop-website', 'false', '', '', 'ge', 2, 0, 0),
(77, 16, 14, 1523108335, 0, 'text', 'ვებ გვერდების დამზადება', '<p>ვებ გვერდების დამზადება</p>', '<p>ვებ გვერდების დამზადება</p>', 'consult-develop-website', 'false', '', '', 'en', 2, 0, 0),
(76, 15, 14, 1523108053, 0, 'text', 'საბუღალტრო', '<p>საბუღალტრო</p>', '<p>საბუღალტრო</p>', 'consult-account', 'false', '', '', 'ge', 1, 0, 0),
(75, 15, 14, 1523108053, 0, 'text', 'საბუღალტრო', '<p>საბუღალტრო</p>', '<p>საბუღალტრო</p>', 'consult-account', 'false', '', '', 'en', 1, 0, 0),
(99, 27, 10, 1523347012, 0, 'news', 'test siaxleebi', '<p>test</p>', '<p>test</p>', 'test', 'false', '', '', 'en', 4, 0, 1),
(74, 14, 0, 1523108012, 0, 'text', 'კონსალტინგი', '<p>კონსალტინგი</p>', '', 'consulting', 'false', '', '', 'ge', 4, 0, 0),
(73, 14, 0, 1523108012, 0, 'text', 'Consulting', '<p>კონსალტინგი</p>', '', 'consulting', 'false', '', '', 'en', 4, 0, 0),
(72, 13, 10, 1523106616, 0, 'plugin', 'სამომავლო', '<p>სამომავლო</p>', '<p>სამომავლო</p>', 'future', 'false', '', '', 'ge', 3, 0, 1),
(71, 13, 10, 1523106616, 0, 'plugin', 'სამომავლო', '<p>სამომავლო</p>', '<p>სამომავლო</p>', 'future', 'false', '', '', 'en', 3, 0, 1),
(70, 12, 10, 1523106588, 0, 'plugin', 'დასრულებული', '<p>დასრულებული</p>', '<p>დასრულებული</p>', 'finished', 'false', '', '', 'ge', 1, 0, 1),
(69, 12, 10, 1523106588, 0, 'plugin', 'დასრულებული', '<p>დასრულებული</p>', '<p>დასრულებული</p>', 'finished', 'false', '', '', 'en', 1, 0, 1),
(68, 11, 10, 1523106521, 0, 'plugin', 'მიმდინარე', '<p>მიმდინარე</p>', '<p>მიმდინარე</p>', 'ongoing', 'false', '', '', 'ge', 1, 0, 1),
(67, 11, 10, 1523106521, 0, 'plugin', 'მიმდინარე', '<p>მიმდინარე</p>', '<p>მიმდინარე</p>', 'ongoing', 'false', '', '', 'en', 1, 0, 1),
(65, 10, 0, 1523105248, 0, 'text', 'Projects', '<p>პროექტები</p>', '', 'projects', 'false', '', '', 'en', 3, 0, 0),
(66, 10, 0, 1523105248, 0, 'text', 'პროექტები', '<p>პროექტები</p>', '', 'projects', 'false', '', '', 'ge', 3, 0, 0),
(100, 27, 10, 1523347012, 0, 'news', 'test siaxleebi', '<p>test</p>', '<p>test</p>', 'test', 'false', '', '', 'ge', 4, 0, 1),
(64, 9, 7, 1523103994, 0, 'text', 'ბუღალტერია, საგადასახადო', '<p>ბუღალტერია საგადასახადო</p>', '<p>ბუღალტერია საგადასახადო</p>', 'accounting', 'false', '', '', 'ge', 2, 0, 0),
(62, 8, 7, 1523103917, 0, 'text', 'კომპიუტერული პროგრამები', '<p>კომპიუტერული პროგრამები</p>', '<p>კომპიუტერული პროგრამები</p>', 'computer-programms', 'false', '', '', 'ge', 1, 0, 0),
(63, 9, 7, 1523103994, 0, 'text', 'ბუღალტერია საგადასახადო', '<p>ბუღალტერია საგადასახადო</p>', '<p>ბუღალტერია საგადასახადო</p>', 'accounting', 'false', '', '', 'en', 2, 0, 0),
(61, 8, 7, 1523103917, 0, 'text', 'კომპიუტერული პროგრამები', '<p>კომპიუტერული პროგრამები</p>', '<p>კომპიუტერული პროგრამები</p>', 'computer-programms', 'false', '', '', 'en', 1, 0, 0),
(60, 7, 0, 1523103835, 0, 'text', 'ტრენინგები', '<p>ტრენინგები</p>', '', 'trainings', 'false', '', '', 'ge', 2, 0, 0),
(59, 7, 0, 1523103835, 0, 'text', 'Trainings', '<p>Trainings</p>', '', 'trainings', 'false', '', '', 'en', 2, 0, 0),
(58, 6, 1, 1523103492, 0, 'plugin', 'გალერეა', '<p>გალერეა</p>', '<p>გალერეა</p>', 'gallery', 'gallery', '', '', 'ge', 4, 0, 0),
(57, 6, 1, 1523103492, 0, 'plugin', 'Gallery', '<p>Gallery</p>', '<p>Gallery</p>', 'gallery', 'false', '', '', 'en', 4, 0, 0),
(56, 5, 0, 1523103462, 0, 'plugin', 'გალერეა', '<p>გალერეა</p>', '<p>გალერეა</p>', 'gallery', 'false', '', '', 'ge', 2, 0, 1),
(55, 5, 0, 1523103462, 0, 'plugin', 'გალერეა', '<p>გალერეა</p>', '<p>გალერეა</p>', 'gallery', 'false', '', '', 'en', 2, 0, 1),
(54, 4, 1, 1523103395, 0, 'plugin', 'ჩვენი გუნდი', '<p>ჩვენი გუნდი</p>', '<p>ჩვენი გუნდი</p>', 'staff', 'staff', '', '', 'ge', 3, 0, 0),
(109, 32, 0, 1523436077, 1, 'plugin', 'დარეგისტრირდი ტრენინგზე', '<p>დარეგისტრირდი ტრენინგზე</p>', '<p>დარეგისტრირდი ტრენინგზე</p>', 'register', 'false', '', '', 'en', 2, 0, 0),
(53, 4, 1, 1523103395, 0, 'plugin', 'Team', '<p>Team</p>', '<p>Team</p>', 'staff', 'staff', '', '', 'en', 3, 0, 0),
(52, 3, 1, 1523102643, 0, 'text', 'ჩვენ შესახებ', '<p>ჩვენ შესახებ</p>', '<p>პროფკავშირების თავმჯდომარე ირაკლი პეტრიაშვილი ტყიბულის შახტაში მომხდარი უბედური შემთხვევის შემსწავლელი საგამოძიებო კომისიის მუშაობაში პროფკავშირების ჩართვას ითხოვს, - ამის შესახებ პეტრიაშვილმა ტყიბულში ჟურნალისტებს განუცხადა, სადაც ამ წუთებში &bdquo;საქნახშირის&ldquo; დირექტორს ხვდება. მისი თქმით, იმ შემთხვევაში, თუ საგამოძიებო კომისიაში პროფკავშირებს არ ჩართავენ, ყველას ეცოდინება, რომ &bdquo;კვლავ რაღაცის დამალვას ცდილობენ".</p>\n<p>"ყველაფრის განსაზღვრა შესაძლებელი იქნება მას შემდეგ, თუ მთავრობა და შახტის ადმინისტრაცია კომისიაში ჩვენს წარმომადგენელს ჩართავს. ამის გარეშე, <a href="http://404.ge">რომ მათ თვითონ გამოიძიონ და საზოგადოებას</a> და ჩვენ მოგვცენ ინფორმაცია იმაზე, თუ რა მოხდა რეალურად, ბუნებრივია, ამ ინფორმაციის სანდოობა ძალიან დაბალი იქნება საზოგადოებისა და პროფკავშირებისთვის. პროფკავშირებს აქვს გამოცდილება, როგორ ცდილობდნენ ყოველთვის, რომ ჩვენი წარმომადგენელი კომისიაში არ ჩაერთოთ. ვიზიარებთ ტრაგედიას. ეს არის კატასტროფა, რაც ხდება ქვეყანაში შრომის უსაფრთხოების კუთხით. ზოგადად კანონმდებლობას ჯერჯერობით ვმიჯნავთ იმ უბედურებისგან, რაც ტყიბულს და მთლიანად საქართველოს დაატყდა თავს, სანამ რეალობა არ გვეცოდინება, რისგან მოხდა ამ მასის ჩამოწოლა, როგორ წარმოიქმნა ჰაერის ტალღა", - განაცხადა ირაკლი პეტრიაშვილმა.&nbsp;</p>\n<p>&nbsp;</p>\n<ul>\n<li>skadas</li>\n<li>a</li>\n<li>sd asdjkadsasd</li>\n<li>asd</li>\n<li>asdaskjdnakjsdnkasd</li>\n<li>asdkamsk dansjkd naskj dasd as</li>\n<li>askjdna kjsdnaskj a</li>\n</ul>', 'about-us', 'false', '', '', 'ge', 2, 0, 0),
(51, 3, 1, 1523102643, 0, 'text', 'About us', '<p>ჩვენ შესახებ</p>', '<p>ჩვენ შესახებ</p>', 'about-us', 'false', '', '', 'en', 2, 0, 0),
(50, 2, 1, 1523102602, 0, 'news', 'სახლეები', '<p>სიახლეები</p>', '<p>სიახლეები</p>', 'news', 'news', '', '', 'ge', 1, 0, 0),
(79, 17, 0, 1523108415, 0, 'text', 'სტაჟირება', '<p>სტაჟირება</p>', '', 'Internship', 'false', '', '', 'en', 5, 0, 0),
(80, 17, 0, 1523108415, 0, 'text', 'სტაჟირება', '<p>სტაჟირება</p>', '', 'Internship', 'false', '', '', 'ge', 5, 0, 0),
(81, 18, 17, 1523108595, 0, 'text', 'ბუღალტრულ კომპანიაში', '<p>ბუღალტრულ კომპანიაში</p>', '<p>ბუღალტრულ კომპანიაში</p>', 'In-the-accounting-company', 'false', '', '', 'en', 1, 0, 0),
(82, 18, 17, 1523108595, 0, 'text', 'ბუღალტრულ კომპანიაში', '<p>ბუღალტრულ კომპანიაში</p>', '<p>ბუღალტრულ კომპანიაში</p>', 'In-the-accounting-company', 'false', '', '', 'ge', 1, 0, 0),
(83, 19, 0, 1523110201, 0, 'plugin', 'ვაკანსიები', '<p>ვაკანსიები</p>', '<p>ვაკანსიები</p>', 'vacancies', 'false', '', '', 'en', 6, 0, 0),
(84, 19, 0, 1523110201, 0, 'plugin', 'ვაკანსიები', '<p>ვაკანსიები</p>', '<p>ვაკანსიები</p>', 'vacancies', 'vacancies', '', '', 'ge', 6, 0, 0),
(85, 20, 0, 1523110224, 0, 'plugin', 'Contact', '<p>კონტაქტი</p>', '<p>კონტაქტი</p>', 'contact', 'false', '', '', 'en', 7, 0, 0),
(86, 20, 0, 1523110224, 0, 'plugin', 'კონტაქტი', '<p>კონტაქტი</p>', '<p>კონტაქტი</p>', 'contact', 'false', '', '', 'ge', 7, 0, 0),
(87, 21, 8, 1523111910, 0, 'text', 'ვებ პროგრამირება', '<p>ვებ პროგრამირება</p>', '<p>ვებ პროგრამირება</p>', 'web-programming', 'false', '', '', 'en', 1, 0, 1),
(88, 21, 8, 1523111910, 0, 'text', 'ვებ პროგრამირება', '<p>ვებ პროგრამირება</p>', '<p>ვებ პროგრამირება</p>', 'web-programming', 'false', '', '', 'ge', 1, 0, 1),
(89, 22, 8, 1523112394, 0, 'text', 'IT ინჟინერია', '<p>IT ინჟინერია</p>', '<p>IT ინჟინერია</p>', 'internet-technologies', 'false', '', '', 'en', 1, 0, 0),
(90, 22, 8, 1523112394, 0, 'text', 'IT ინჟინერია', '<p>IT ინჟინერია</p>', '<p>IT ინჟინერია</p>', 'internet-technologies', 'false', '', '', 'ge', 1, 0, 0),
(91, 23, 0, 1523118501, 1, 'text', 'test', '<p>test</p>', '<p>test</p>', 'test', 'false', '', '', 'en', 1, 0, 1),
(92, 23, 0, 1523118501, 1, 'text', 'test', '<p>test</p>', '<p>test</p>', 'test', 'false', '', '', 'ge', 1, 0, 1),
(93, 24, 0, 1523118614, 0, 'text', 'test 2', '<p>asdas</p>', '<p>sakldaskld</p>', 'test2', 'false', '', '', 'en', 8, 0, 1),
(94, 24, 0, 1523118614, 0, 'text', 'test 2', '<p>asdas</p>', '<p>sakldaskld</p>', 'test2', 'false', '', '', 'ge', 8, 0, 1),
(95, 25, 0, 1523118640, 1, 'text', 'test 2', '<p>test</p>', '<p>test</p>', 'test-2', 'false', '', '', 'en', 1, 0, 1),
(96, 25, 0, 1523118640, 1, 'text', 'test 2', '<p>test</p>', '<p>test</p>', 'test-2', 'false', '', '', 'ge', 1, 0, 1),
(97, 26, 8, 1523119492, 0, 'text', 'ვებ პროგრამირება', '<p>ვებ პროგრამირება</p>', '<p>ვებ პროგრამირება</p>', 'web-programming', 'false', '', '', 'en', 2, 0, 0),
(98, 26, 8, 1523119492, 0, 'text', 'ვებ პროგრამირება', '<p>ვებ პროგრამირება</p>', '<p>ვებ პროგრამირება</p>', 'web-programming', 'false', '', '', 'ge', 2, 0, 0),
(101, 28, 10, 1523348749, 0, 'news', 'მიმდინარე', '<p>მიმდონარე პროექტები</p>', '<p>მიმდინარე პროექტები</p>', 'ongoing', 'false', '', '', 'en', 1, 0, 0),
(102, 28, 10, 1523348749, 0, 'news', 'მიმდინარე', '<p>მიმდონარე პროექტები</p>', '<p>მიმდინარე პროექტები</p>', 'ongoing', 'ongoing', '', '', 'ge', 1, 0, 0),
(103, 29, 10, 1523348861, 0, 'news', 'დასრულებული', '<p>დასრულებული პროექტები</p>', '<p>დასრულებული პროექტები</p>', 'finished', 'false', '', '', 'en', 2, 0, 0),
(104, 29, 10, 1523348861, 0, 'news', 'დასრულებული', '<p>დასრულებული პროექტები</p>', '<p>დასრულებული პროექტები</p>', 'finished', 'finished', '', '', 'ge', 2, 0, 0),
(105, 30, 10, 1523348910, 0, 'news', 'სამომავლო', '<p>სამომავლო პროექტები</p>', '<p>სამომავლო პროექტები</p>', 'future', 'false', '', '', 'en', 3, 0, 0),
(106, 30, 10, 1523348910, 0, 'news', 'სამომავლო', '<p>სამომავლო პროექტები</p>', '<p>სამომავლო პროექტები</p>', 'future', 'future', '', '', 'ge', 3, 0, 0),
(107, 31, 0, 1523371345, 1, 'plugin', 'ძიება', '<p>ძიება</p>', '<p>ძიება</p>', 'search', 'false', '', '', 'en', 1, 0, 0),
(108, 31, 0, 1523371345, 1, 'plugin', 'ძიება', '<p>ძიება</p>', '<p>ძიება</p>', 'search', 'false', '', '', 'ge', 1, 0, 0),
(110, 32, 0, 1523436077, 1, 'plugin', 'დარეგისტრირდი ტრენინგზე', '<p>დარეგისტრირდი ტრენინგზე</p>', '<p>დარეგისტრირდი ტრენინგზე</p>', 'register', 'false', '', '', 'ge', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `ip`, `email`) VALUES
(1, '94.240.219.60', 'giorgigvazava87@gmail.com'),
(2, '94.240.245.46', 'sample@email.tst');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `os` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `tbc_trans_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tour_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `checkin_checkout` text NOT NULL,
  `tour_services` text CHARACTER SET utf8 NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `children_ages` text CHARACTER SET utf8 NOT NULL,
  `total_price` varchar(255) CHARACTER SET utf8 NOT NULL,
  `return_result_text` text NOT NULL,
  `payment_status` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments_close`
--

CREATE TABLE IF NOT EXISTS `payments_close` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `result` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `parent`, `path`, `type`, `lang`, `status`) VALUES
(1, 1, '/public/filemanager/kakheti.jpg', 'contactdetails', 'en', 0),
(2, 1, '/public/filemanager/kakheti.jpg', 'contactdetails', 'ge', 0),
(5, 6, '/public/filemanager/slider/image1.jpg', 'slider', 'en', 0),
(4, 6, '/public/filemanager/slider/image1.jpg', 'slider', 'ge', 0),
(6, 6, '/public/filemanager/slider/image1.jpg', 'slider', 'ge', 0),
(88, 8, '/public/filemanager/slider/image1.jpg', 'staff', 'ge', 0),
(87, 8, '/public/filemanager/slider/image1.jpg', 'staff', 'en', 0),
(96, 9, '/public/filemanager/partners/logo-partner-01[1].png', 'partners', 'ge', 0),
(95, 9, '/public/filemanager/partners/logo-partner-01[1].png', 'partners', 'en', 0),
(11, 16, '/public/filemanager/slider/slide-2[1].jpg', 'slider', 'en', 0),
(12, 16, '/public/filemanager/slider/slide-2[1].jpg', 'slider', 'ge', 0),
(84, 41, '/public/filemanager/slider/profile.jpg', 'staff', 'ge', 0),
(120, 3, '/public/filemanager/Hydrangeas.jpg', 'text', 'ge', 0),
(119, 3, '/public/filemanager/Hydrangeas.jpg', 'text', 'en', 0),
(39, 34, '/public/filemanager/news/irakli-petriashvili/petriashvili_2018-04-05_h6b5b9jtMt[1].jpg', 'news', 'en', 0),
(40, 34, '/public/filemanager/news/irakli-petriashvili/petriashvili_2018-04-05_h6b5b9jtMt[1].jpg', 'news', 'ge', 0),
(38, 35, '/public/filemanager/kakheti.jpg', 'news', 'ge', 0),
(37, 35, '/public/filemanager/kakheti.jpg', 'news', 'en', 0),
(110, 31, '/public/filemanager/slider/slide-2[1].jpg', 'news', 'ge', 0),
(109, 31, '/public/filemanager/news/irakli-petriashvili/petriashvili_2018-04-05_h6b5b9jtMt[1].jpg', 'news', 'ge', 0),
(107, 31, '/public/filemanager/news/irakli-petriashvili/petriashvili_2018-04-05_h6b5b9jtMt[1].jpg', 'news', 'en', 0),
(108, 31, '/public/filemanager/slider/slide-2[1].jpg', 'news', 'en', 0),
(83, 41, '/public/filemanager/slider/profile.jpg', 'staff', 'en', 0),
(91, 50, '/public/filemanager/gallery/28879150_407704549657010_808531807_o.jpg', 'gallery', 'en', 0),
(92, 50, '/public/filemanager/gallery/28879150_407704549657010_808531807_o.jpg', 'gallery', 'ge', 0),
(97, 53, '/public/filemanager/Desert.jpg', 'test', 'en', 1),
(98, 53, '/public/filemanager/Desert.jpg', 'test', 'ge', 1),
(124, 58, '/public/filemanager/kakheti.jpg', 'ongoing', 'ge', 0),
(123, 58, '/public/filemanager/kakheti.jpg', 'ongoing', 'en', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `coverphoto` text COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `advanture_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkinout` text COLLATE utf8_unicode_ci NOT NULL,
  `arrival` date NOT NULL,
  `departure` date NOT NULL,
  `days_nights` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tourist_points` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dynamic',
  `guests` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `special_offer` int(11) NOT NULL,
  `services` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `showwebsite` int(11) NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `visibility` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_dates`
--

CREATE TABLE IF NOT EXISTS `products_dates` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `checkin` int(11) NOT NULL,
  `checkout` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) NOT NULL,
  `names` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ge'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subservices`
--

CREATE TABLE IF NOT EXISTS `subservices` (
  `id` int(11) NOT NULL,
  `product_idx` int(11) NOT NULL,
  `service_idx` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=977 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subservices`
--

INSERT INTO `subservices` (`id`, `product_idx`, `service_idx`, `title`, `price`, `lang`) VALUES
(976, 2, 169, 'Repas', '0', 'fr'),
(975, 2, 102, 'Transport', '0', 'fr'),
(974, 2, 101, 'Guide', '0', 'fr'),
(933, 11, 169, 'Repas', '0', 'fr'),
(971, 7, 102, 'Transport', '0', 'fr'),
(972, 7, 169, 'Repas', '0', 'fr'),
(973, 2, 100, 'Hébergement', '0', 'fr'),
(969, 7, 100, 'Hébergement', '0', 'fr'),
(932, 11, 102, 'Transport', '0', 'fr'),
(931, 11, 101, 'Guide gratuit', '0', 'fr'),
(930, 11, 100, 'Hotel', '957', 'fr'),
(929, 11, 100, 'Maison d hote', '455', 'fr'),
(956, 10, 169, 'Repas', '0', 'fr'),
(955, 10, 102, 'Transport', '0', 'fr'),
(954, 10, 101, 'Guide', '0', 'fr'),
(953, 10, 100, 'Hôtel', '670', 'fr'),
(952, 10, 100, 'Maison d''hôte', '445', 'fr'),
(970, 7, 101, 'Guide', '0', 'fr');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE IF NOT EXISTS `trainings` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trainingid` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `starttime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `howfind` int(11) NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `read` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usefull`
--

CREATE TABLE IF NOT EXISTS `usefull` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `date_format` date NOT NULL COMMENT 'day / month / year',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `classname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usefull`
--

INSERT INTO `usefull` (`id`, `idx`, `cid`, `date`, `date_format`, `type`, `title`, `description`, `classname`, `url`, `lang`, `visibility`, `status`) VALUES
(1, 1, 0, 1523044800, '2018-04-06', 'contactdetails', 'test', '<p>tesa</p>', 'test', 'te', 'en', 0, 1),
(2, 1, 0, 1523044800, '2018-04-06', 'contactdetails', 'test', '<p>tesa</p>', 'test', 'te', 'ge', 0, 1),
(3, 2, 0, 1523044800, '2018-04-06', 'contactdetails', 'მორე ტესტ', '<p>ტესტ</p>', '', 'empty', 'en', 0, 1),
(4, 2, 0, 1523044800, '2018-04-06', 'contactdetails', 'მორე ტესტ', '<p>ტესტ</p>', '', 'empty', 'ge', 0, 1),
(5, 3, 0, 1523044800, '2018-04-06', 'contactdetails', 'Contact numbers', '<p>2371939; 551196110; 593618212</p>', '', 'empty', 'en', 0, 0),
(6, 3, 0, 1523044800, '2018-04-06', 'contactdetails', 'საკონტაქტო ნომრები', '<p>2371939; 551196110; 593618212</p>', '', 'empty', 'ge', 0, 0),
(7, 4, 0, 1523044800, '2018-04-06', 'contactdetails', 'Address', '<p>Str. Pekini&nbsp;#28, Floor #6</p>', '', 'empty', 'en', 0, 0),
(65, 33, 0, 1523131200, '2018-04-07', 'languagedata', 'usefulllinks', '<p>Usefull Links</p>', '', 'empty', 'en', 0, 0),
(8, 4, 0, 1523044800, '2018-04-06', 'contactdetails', 'მისამართი', '<p>პეკინის #28 მე-6-ე სართული</p>', '', 'empty', 'ge', 0, 0),
(9, 5, 0, 1523044800, '2018-04-06', 'contactdetails', 'Email', '<p><a href="http://trip.404.ge/">ninovipicg@gmail.com</a></p>', '', 'empty', 'en', 0, 0),
(10, 5, 0, 1523044800, '2018-04-06', 'contactdetails', 'ელ-ფოსტა', '<p><a href="http://trip.404.ge/">ninovipicg@gmail.com</a></p>', '', 'empty', 'ge', 0, 0),
(11, 6, 0, 1523044800, '2018-04-06', 'slider', 'photo 1', '<p>photo&nbsp;1</p>', '', 'empty', 'en', 0, 0),
(12, 6, 0, 1523044800, '2018-04-06', 'slider', 'ფოტო 1', '<p>ფოტო 1</p>', '', 'empty', 'ge', 0, 0),
(13, 7, 0, 1523044800, '2018-04-06', 'slogan', 'Slogan', '<p>,,Quality, for your success"</p>', '', 'empty', 'en', 0, 0),
(15, 8, 0, 1523044800, '2018-04-07', 'staff', 'john dou', '<p>კერძო და არასამთავრობო სექტორში ფინანსური მენეჯერის პოზიციაზე მრავალწლიანი მუშაობის შემდგომ, დავითი &ldquo;საერთაშორისო გამჭვირვალობა - საქართველოს&rdquo; 2015 წლის მარტიდან შემოუერთდა. ამჟამად იგი ორგანიზაციის ადმინისტრაციული და ფინანსური მენეჯერია. განათლება მიღებული აქვს ივ.ჯავახიშვილის სახელობის თბილისის სახელმწიფო უნივერსიტეტში.</p>\n<p>&nbsp;</p>\n<h3>ბიოგრაფია</h3>\n<p>კერძო და არასამთავრობო სექტორში ფინანსური მენეჯერის პოზიციაზე მრავალწლიანი მუშაობის შემდგომ, დავითი &ldquo;საერთაშორისო გამჭვირვალობა - საქართველოს&rdquo; 2015 წლის მარტიდან შემოუერთდა. ამჟამად იგი ორგანიზაციის ადმინისტრაციული და ფინანსური მენეჯერია. განათლება მიღებული აქვს ივ.ჯავახიშვილის სახელობის თბილისის სახელმწიფო უნივერსიტეტში.</p>\n<p>&nbsp;</p>\n<h3>კურსები</h3>\n<table style="height: 10px;" width="651">\n<tbody>\n<tr>\n<td style="width: 317px;">კურსის დასახელება</td>\n<td style="width: 318px;">ხანგძლივობა</td>\n</tr>\n<tr>\n<td style="width: 317px;">IT სპეციალისტი</td>\n<td style="width: 318px;">3 თვე</td>\n</tr>\n</tbody>\n</table>', 'IT ინსტრუქტორი', '[twitter=https://twitter.com],[facebook=https://facebook.com],[youtube=https://youtube.com]', 'en', 0, 0),
(14, 7, 0, 1523044800, '2018-04-06', 'slogan', 'სლოგანი', '<p>,,ხარისხი, თქვენი წარმატებისთვის"</p>', '', 'empty', 'ge', 0, 0),
(16, 8, 0, 1523044800, '2018-04-07', 'staff', 'john dou', '<p>კერძო და არასამთავრობო სექტორში ფინანსური მენეჯერის პოზიციაზე მრავალწლიანი მუშაობის შემდგომ, დავითი &ldquo;საერთაშორისო გამჭვირვალობა - საქართველოს&rdquo; 2015 წლის მარტიდან შემოუერთდა. ამჟამად იგი ორგანიზაციის ადმინისტრაციული და ფინანსური მენეჯერია. განათლება მიღებული აქვს ივ.ჯავახიშვილის სახელობის თბილისის სახელმწიფო უნივერსიტეტში.</p>\n<p>&nbsp;</p>\n<h3>ბიოგრაფია</h3>\n<p>კერძო და არასამთავრობო სექტორში ფინანსური მენეჯერის პოზიციაზე მრავალწლიანი მუშაობის შემდგომ, დავითი &ldquo;საერთაშორისო გამჭვირვალობა - საქართველოს&rdquo; 2015 წლის მარტიდან შემოუერთდა. ამჟამად იგი ორგანიზაციის ადმინისტრაციული და ფინანსური მენეჯერია. განათლება მიღებული აქვს ივ.ჯავახიშვილის სახელობის თბილისის სახელმწიფო უნივერსიტეტში.</p>\n<p>&nbsp;</p>\n<h3>კურსები</h3>\n<table style="height: 10px;" width="651">\n<tbody>\n<tr>\n<td style="width: 317px;">კურსის დასახელება</td>\n<td style="width: 318px;">ხანგძლივობა</td>\n</tr>\n<tr>\n<td style="width: 317px;">IT სპეციალისტი</td>\n<td style="width: 318px;">3 თვე</td>\n</tr>\n</tbody>\n</table>', 'IT ინსტრუქტორი', '[twitter=https://twitter.com],[facebook=https://facebook.com],[youtube=https://youtube.com]', 'ge', 0, 0),
(17, 9, 0, 1523044800, '2018-04-07', 'partners', 'Patel Psix', '', '', 'http://gumtree.com', 'en', 0, 0),
(18, 9, 0, 1523044800, '2018-04-07', 'partners', 'Patel Psix', '', '', 'http://gumtree.com', 'ge', 0, 0),
(19, 10, 0, 1523044800, '2018-04-06', 'socialnetworks', 'Twitter', '<p>Twitter</p>', 'fa fa-twitter', 'http://twitter.com', 'en', 0, 0),
(20, 10, 0, 1523044800, '2018-04-06', 'socialnetworks', 'Twitter', '<p>Twitter</p>', 'fa fa-twitter', 'http://twitter.com', 'ge', 0, 0),
(21, 11, 0, 1523044800, '2018-04-06', 'socialnetworks', 'Facebook', '<p>Facebook</p>', 'fa fa-facebook', 'https://facebook.com', 'en', 0, 0),
(22, 11, 0, 1523044800, '2018-04-06', 'socialnetworks', 'Facebook', '<p>Facebook</p>', 'fa fa-facebook', 'https://facebook.com', 'ge', 0, 0),
(23, 12, 0, 1523044800, '2018-04-06', 'socialnetworks', 'Youtube', '<p>youtube</p>', 'fa fa-youtube-play', 'https://youtube.com', 'en', 0, 0),
(24, 12, 0, 1523044800, '2018-04-06', 'socialnetworks', 'Youtube', '<p>youtube</p>', 'fa fa-youtube-play', 'https://youtube.com', 'ge', 0, 0),
(25, 13, 0, 1523044800, '2018-04-06', 'usefulllinks', 'Proffesion development strategy', '', 'blank', 'http://www.mes.gov.ge/content.php?id=1184&lang=geo', 'en', 0, 0),
(27, 14, 0, 1523044800, '2018-04-06', 'languagedata', 'contactus', '<p>Call us</p>', '', 'empty', 'en', 0, 0),
(26, 13, 0, 1523044800, '2018-04-06', 'usefulllinks', 'პროფესიული განათლების სტრატეგია', '', 'blank', 'http://www.mes.gov.ge/content.php?id=1184&lang=geo', 'ge', 0, 0),
(28, 14, 0, 1523044800, '2018-04-06', 'languagedata', 'contactus', '<p>დაგვიკავშირდით</p>', '', 'empty', 'ge', 0, 0),
(29, 15, 0, 1523044800, '2018-04-06', 'languagedata', 'search', '<p>Search</p>', '', 'empty', 'en', 0, 0),
(30, 15, 0, 1523044800, '2018-04-06', 'languagedata', 'search', '<p>ძიება</p>', '', 'empty', 'ge', 0, 0),
(31, 16, 0, 1523044800, '2018-04-06', 'slider', 'ფოტო 2', '<p>ფოტო 2</p>', '', 'empty', 'en', 0, 0),
(32, 16, 0, 1523044800, '2018-04-06', 'slider', 'ფოტო 2', '<p>ფოტო 2</p>', '', 'empty', 'ge', 0, 0),
(33, 17, 0, 1523131200, '2018-04-07', 'languagedata', 'registertraining', '<p>Sign up for training</p>', '', 'empty', 'en', 0, 0),
(35, 18, 0, 1523131200, '2018-04-07', 'languagedata', 'namelname', '<p>Firstname Lastname</p>', '', 'empty', 'en', 0, 0),
(34, 17, 0, 1523131200, '2018-04-07', 'languagedata', 'registertraining', '<p>დარეგისტრირდი ტრენინგზე</p>', '', 'empty', 'ge', 0, 0),
(36, 18, 0, 1523131200, '2018-04-07', 'languagedata', 'namelname', '<p>სახელი გვარი</p>', '', 'empty', 'ge', 0, 0),
(37, 19, 0, 1523131200, '2018-04-07', 'languagedata', 'email', '<p>Email</p>', '', 'empty', 'en', 0, 0),
(38, 19, 0, 1523131200, '2018-04-07', 'languagedata', 'email', '<p>ელ-ფოსტა</p>', '', 'empty', 'ge', 0, 0),
(39, 20, 0, 1523131200, '2018-04-07', 'languagedata', 'contactnumber', '<p>Contact number</p>', '', 'empty', 'en', 0, 0),
(40, 20, 0, 1523131200, '2018-04-07', 'languagedata', 'contactnumber', '<p>საკონტაქტო ნომერი</p>', '', 'empty', 'ge', 0, 0),
(41, 21, 0, 1523131200, '2018-04-07', 'languagedata', 'age', '<p>Age</p>', '', 'empty', 'en', 0, 0),
(42, 21, 0, 1523131200, '2018-04-07', 'languagedata', 'age', '<p>ასაკი</p>', '', 'empty', 'ge', 0, 0),
(43, 22, 0, 1523131200, '2018-04-07', 'languagedata', 'trainingstarttime', '<p>Admission Clock</p>', '', 'empty', 'en', 0, 0),
(45, 23, 0, 1523131200, '2018-04-07', 'languagedata', 'howfindus', '<p>who told you about us?</p>', '', 'empty', 'en', 0, 0),
(44, 22, 0, 1523131200, '2018-04-07', 'languagedata', 'trainingstarttime', '<p>გაკვეთილის დაწყების მისაღები საათი</p>', '', 'empty', 'ge', 0, 0),
(47, 24, 0, 1523131200, '2018-04-07', 'howfindus', 'მეგობრისგან', '', '', 'empty', 'en', 0, 0),
(46, 23, 0, 1523131200, '2018-04-07', 'languagedata', 'howfindus', '<p>საიდან შეიტყვეთ ჩვენს შესახებ?</p>', '', 'empty', 'ge', 0, 0),
(48, 24, 0, 1523131200, '2018-04-07', 'howfindus', 'მეგობრისგან', '', '', 'empty', 'ge', 0, 0),
(49, 25, 0, 1523131200, '2018-04-07', 'howfindus', 'კოლეგისგან', '', '', 'empty', 'en', 0, 0),
(50, 25, 0, 1523131200, '2018-04-07', 'howfindus', 'კოლეგისგან', '', '', 'empty', 'ge', 0, 0),
(51, 26, 0, 1523131200, '2018-04-07', 'howfindus', 'Google', '', '', 'empty', 'en', 0, 0),
(52, 26, 0, 1523131200, '2018-04-07', 'howfindus', 'Google', '', '', 'empty', 'ge', 0, 0),
(53, 27, 0, 1523131200, '2018-04-07', 'howfindus', 'Jobs.ge', '', '', 'empty', 'en', 0, 0),
(54, 27, 0, 1523131200, '2018-04-07', 'howfindus', 'Jobs.ge', '', '', 'empty', 'ge', 0, 0),
(55, 28, 0, 1523131200, '2018-04-07', 'howfindus', 'Hr.ge', '', '', 'empty', 'en', 0, 0),
(56, 28, 0, 1523131200, '2018-04-07', 'howfindus', 'Hr.ge', '', '', 'empty', 'ge', 0, 0),
(57, 29, 0, 1523131200, '2018-04-07', 'languagedata', 'choosetraining', '<p>Choose trainig</p>', '', 'empty', 'en', 0, 0),
(58, 29, 0, 1523131200, '2018-04-07', 'languagedata', 'choosetraining', '<p>აირჩიეთ ტრენინგი</p>', '', 'empty', 'ge', 0, 0),
(59, 30, 0, 1523131200, '2018-04-07', 'languagedata', 'register', '<p>Sign up</p>', '', 'empty', 'en', 0, 0),
(60, 30, 0, 1523131200, '2018-04-07', 'languagedata', 'register', '<p>რეგისტრაცია</p>', '', 'empty', 'ge', 0, 0),
(61, 31, 0, 1523131200, '2018-04-08', 'news', '"This Is Disaster"', '<p>პროფკავშირების თავმჯდომარე ირაკლი პეტრიაშვილი ტყიბულის შახტაში მომხდარი უბედური შემთხვევის შემსწავლელი საგამოძიებო კომისიის მუშაობაში პროფკავშირების ჩართვას ითხოვს, - ამის შესახებ პეტრიაშვილმა ტყიბულში ჟურნალისტებს განუცხადა, სადაც ამ წუთებში &bdquo;საქნახშირის&ldquo; დირექტორს ხვდება. მისი თქმით, იმ შემთხვევაში, თუ საგამოძიებო კომისიაში პროფკავშირებს არ ჩართავენ, ყველას ეცოდინება, რომ &bdquo;კვლავ რაღაცის დამალვას ცდილობენ".</p>\n<p>&nbsp;</p>\n<p>[https://www.youtube.com/watch?v=b4GFV03LrUk]</p>\n<p>&nbsp;</p>\n<p>"ყველაფრის განსაზღვრა შესაძლებელი იქნება მას შემდეგ, თუ მთავრობა და შახტის ადმინისტრაცია კომისიაში ჩვენს წარმომადგენელს ჩართავს. ამის გარეშე, რომ მათ თვითონ გამოიძიონ და საზოგადოებას და ჩვენ მოგვცენ ინფორმაცია იმაზე, თუ რა მოხდა რეალურად, ბუნებრივია, ამ ინფორმაციის სანდოობა ძალიან დაბალი იქნება საზოგადოებისა და პროფკავშირებისთვის. პროფკავშირებს აქვს გამოცდილება, როგორ ცდილობდნენ ყოველთვის, რომ ჩვენი წარმომადგენელი კომისიაში არ ჩაერთოთ. ვიზიარებთ ტრაგედიას. ეს არის კატასტროფა, რაც ხდება ქვეყანაში შრომის უსაფრთხოების კუთხით. ზოგადად კანონმდებლობას ჯერჯერობით ვმიჯნავთ იმ უბედურებისგან, რაც ტყიბულს და მთლიანად საქართველოს დაატყდა თავს, სანამ რეალობა არ გვეცოდინება, რისგან მოხდა ამ მასის ჩამოწოლა, როგორ წარმოიქმნა ჰაერის ტალღა", - განაცხადა ირაკლი პეტრიაშვილმა.&nbsp; ENG</p>', '', 'empty', 'en', 0, 0),
(62, 31, 0, 1523131200, '2018-04-08', 'news', '"ეს არის კატასტროფა, რაც ხდება ქვეყანაში შრომის უსაფრთხოების კუთხით"', '<p>პროფკავშირების თავმჯდომარე ირაკლი პეტრიაშვილი ტყიბულის შახტაში მომხდარი უბედური შემთხვევის შემსწავლელი საგამოძიებო კომისიის მუშაობაში პროფკავშირების ჩართვას ითხოვს, - ამის შესახებ პეტრიაშვილმა ტყიბულში ჟურნალისტებს განუცხადა, სადაც ამ წუთებში &bdquo;საქნახშირის&ldquo; დირექტორს ხვდება. მისი თქმით, იმ შემთხვევაში, თუ საგამოძიებო კომისიაში პროფკავშირებს არ ჩართავენ, ყველას ეცოდინება, რომ &bdquo;კვლავ რაღაცის დამალვას ცდილობენ".</p>\n<p>&nbsp;</p>\n<p>[https://www.youtube.com/watch?v=b4GFV03LrUk]</p>\n<p>&nbsp;</p>\n<p>"ყველაფრის განსაზღვრა შესაძლებელი იქნება მას შემდეგ, თუ მთავრობა და შახტის ადმინისტრაცია კომისიაში ჩვენს წარმომადგენელს ჩართავს. ამის გარეშე, <a href="http://404.ge">რომ მათ თვითონ გამოიძიონ და საზოგადოებას</a> და ჩვენ მოგვცენ ინფორმაცია იმაზე, თუ რა მოხდა რეალურად, ბუნებრივია, ამ ინფორმაციის სანდოობა ძალიან დაბალი იქნება საზოგადოებისა და პროფკავშირებისთვის. პროფკავშირებს აქვს გამოცდილება, როგორ ცდილობდნენ ყოველთვის, რომ ჩვენი წარმომადგენელი კომისიაში არ ჩაერთოთ. ვიზიარებთ ტრაგედიას. ეს არის კატასტროფა, რაც ხდება ქვეყანაში შრომის უსაფრთხოების კუთხით. ზოგადად კანონმდებლობას ჯერჯერობით ვმიჯნავთ იმ უბედურებისგან, რაც ტყიბულს და მთლიანად საქართველოს დაატყდა თავს, სანამ რეალობა არ გვეცოდინება, რისგან მოხდა ამ მასის ჩამოწოლა, როგორ წარმოიქმნა ჰაერის ტალღა", - განაცხადა ირაკლი პეტრიაშვილმა.</p>\n<p>&nbsp;</p>\n<ul>\n<li>skadas</li>\n<li>a</li>\n<li>sd asdjkadsasd</li>\n<li>asd</li>\n<li>asdaskjdnakjsdnkasd</li>\n<li>asdkamsk dansjkd naskj dasd as</li>\n<li>askjdna kjsdnaskj a</li>\n</ul>', '', 'empty', 'ge', 0, 0),
(63, 32, 0, 1523131200, '2018-04-07', 'languagedata', 'trainings', '<p>Trainings</p>', '', 'empty', 'en', 0, 0),
(64, 32, 0, 1523131200, '2018-04-07', 'languagedata', 'trainings', '<p>ტრენინგები</p>', '', 'empty', 'ge', 0, 0),
(66, 33, 0, 1523131200, '2018-04-07', 'languagedata', 'usefulllinks', '<p>სასარგებლო ბმულები</p>', '', 'empty', 'ge', 0, 0),
(67, 34, 0, 1523131200, '2018-04-08', 'news', 'test news', '<p>test news</p>', '', 'empty', 'en', 0, 0),
(68, 34, 0, 1523131200, '2018-04-08', 'news', 'test news', '<p>test <a href="http://test.ge">news</a></p>', '', 'empty', 'ge', 0, 0),
(69, 35, 0, 1526500800, '2018-05-17', 'news', 'more test news', '<p>aslkdmnkasj dnkjasndakjsnd akjsdnaksjdnaskjdnakjsdnaskjndakjsndakjsndkajsndkjasndakjsdnakjsdnkjasdn akjds naskjd n</p>', '', 'empty', 'en', 0, 0),
(70, 35, 0, 1526500800, '2018-05-17', 'news', 'more test news', '<p>aslkdmnkasj dnkjasndakjsnd akjsdnaksjdnaskjdnakjsdnaskjndakjsndakjsndkajsndkjasndakjsdnakjsdnkjasdn akjds naskjd n</p>', '', 'empty', 'ge', 0, 0),
(71, 36, 0, 1523131200, '2018-04-08', 'languagedata', 'archive', '<p>Archive</p>', '', 'empty', 'en', 0, 0),
(72, 36, 0, 1523131200, '2018-04-08', 'languagedata', 'archive', '<p>არქივი</p>', '', 'empty', 'ge', 0, 0),
(73, 37, 0, 1523131200, '2018-04-08', 'languagedata', 'allnews', '<p>All news</p>', '', 'empty', 'en', 0, 0),
(74, 37, 0, 1523131200, '2018-04-08', 'languagedata', 'allnews', '<p>ყველა სიახლე</p>', '', 'empty', 'ge', 0, 0),
(75, 38, 0, 1523131200, '2018-04-08', 'languagedata', 'news', '<p>News</p>', '', 'empty', 'en', 0, 0),
(76, 38, 0, 1523131200, '2018-04-08', 'languagedata', 'news', '<p>სიახლეები</p>', '', 'empty', 'ge', 0, 0),
(77, 39, 0, 1523217600, '2018-04-09', 'languagedata', 'lastnews', '<p>The last news</p>', '', 'empty', 'en', 0, 0),
(78, 39, 0, 1523217600, '2018-04-09', 'languagedata', 'lastnews', '<p>ბოლო სიახლეები</p>', '', 'empty', 'ge', 0, 0),
(79, 40, 0, 1523217600, '2018-04-09', 'languagedata', 'viewprofile', '<p>View profile</p>', '', 'empty', 'en', 0, 0),
(80, 40, 0, 1523217600, '2018-04-09', 'languagedata', 'viewprofile', '<p>პროფილის ნახვა</p>', '', 'empty', 'ge', 0, 0),
(81, 41, 0, 1523217600, '2018-04-09', 'staff', 'ნანა ბურჭულაძე', '<p>ტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტ</p>\n<p>&nbsp;</p>\n<p>ტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტ</p>', 'ბუღალტერი', '[twitter=https://twitter.com],[facebook=https://facebook.com],[youtube=https://youtube.com]', 'en', 0, 0),
(82, 41, 0, 1523217600, '2018-04-09', 'staff', 'ნანა ბურჭულაძე', '<h3>მოკლე ბიოგრაფია</h3>\n<p>კერძო და არასამთავრობო სექტორში ფინანსური მენეჯერის პოზიციაზე მრავალწლიანი მუშაობის შემდგომ, დავითი &ldquo;საერთაშორისო გამჭვირვალობა - საქართველოს&rdquo; 2015 წლის მარტიდან შემოუერთდა. ამჟამად იგი ორგანიზაციის ადმინისტრაციული და ფინანსური მენეჯერია. განათლება მიღებული აქვს ივ.ჯავახიშვილის სახელობის თბილისის სახელმწიფო უნივერსიტეტში.</p>\n<p>&nbsp;</p>\n<p>კერძო და არასამთავრობო სექტორში ფინანსური მენეჯერის პოზიციაზე მრავალწლიანი მუშაობის შემდგომ, დავითი &ldquo;საერთაშორისო გამჭვირვალობა - საქართველოს&rdquo; 2015 წლის მარტიდან შემოუერთდა. ამჟამად იგი ორგანიზაციის ადმინისტრაციული და ფინანსური მენეჯერია. განათლება მიღებული აქვს ივ.ჯავახიშვილის სახელობის თბილისის სახელმწიფო უნივერსიტეტში.</p>', 'ბუღალტერი', '[twitter=https://twitter.com],[facebook=https://facebook.com],[youtube=https://youtube.com]', 'ge', 0, 0),
(83, 42, 0, 1523217600, '2018-04-09', 'languagedata', 'contactinfo', '<p>საკონტაქტო ინფორმაცის</p>', '', 'empty', 'en', 0, 0),
(84, 42, 0, 1523217600, '2018-04-09', 'languagedata', 'contactinfo', '<p>საკონტაქტო ინფორმაცის</p>', '', 'empty', 'ge', 0, 0),
(85, 43, 0, 1523217600, '2018-04-09', 'languagedata', 'more', '<p>More</p>', '', 'empty', 'en', 0, 0),
(86, 43, 0, 1523217600, '2018-04-09', 'languagedata', 'more', '<p>ნახე მეტი</p>', '', 'empty', 'ge', 0, 0),
(87, 44, 0, 1523217600, '2018-04-09', 'vacancies', '3d max', '<p>ასჯკდას ნკჯდ ნასჯკდანსჰდჯ ბასჰდ დლფსგმკდფგმდკლფგმდლკფ გჯკდფგნკჯდფ ნგმ,ნვხმცვნხცმვნმცნვმნცხ,მნცვმ,ცვხვოპხცოპხვცლლკსდკლფსდ სდკფ კსდფკსდფმნ კსდნფკჯსდ ფ</p>', 'Sales agent', 'empty', 'en', 0, 0),
(89, 45, 0, 1523217600, '2018-04-09', 'languagedata', 'allvacancies', '<p>All vacancies</p>', '', 'empty', 'en', 0, 0),
(88, 44, 0, 1523217600, '2018-04-09', 'vacancies', '3დ მაქსის ინსტრუქტორი', '<p>ასჯკდას ნკჯდ ნასჯკდანსჰდჯ ბასჰდ დლფსგმკდფგმდკლფგმდლკფ გჯკდფგნკჯდფ ნგმ,ნვხმცვნხცმვნმცნვმნცხ,მნცვმ,ცვხვოპხცოპხვცლლკსდკლფსდ სდკფ კსდფკსდფმნ კსდნფკჯსდ ფ</p>', 'გაყიდვების აგენტი', 'empty', 'ge', 0, 0),
(90, 45, 0, 1523217600, '2018-04-09', 'languagedata', 'allvacancies', '<p>ყველა ვაკანსია</p>', '', 'empty', 'ge', 0, 0),
(91, 46, 0, 1523217600, '2018-04-09', 'languagedata', 'writeus', '<p>Send us message</p>', '', 'empty', 'en', 0, 0),
(92, 46, 0, 1523217600, '2018-04-09', 'languagedata', 'writeus', '<p>მოგვწერეთ</p>', '', 'empty', 'ge', 0, 0),
(93, 47, 0, 1523217600, '2018-04-09', 'languagedata', 'message', '<p>Message</p>', '', 'empty', 'en', 0, 0),
(94, 47, 0, 1523217600, '2018-04-09', 'languagedata', 'message', '<p>შეტყობინება</p>', '', 'empty', 'ge', 0, 0),
(95, 48, 0, 1523217600, '2018-04-09', 'languagedata', 'send', '<p>Send</p>', '', 'empty', 'en', 0, 0),
(96, 48, 0, 1523217600, '2018-04-09', 'languagedata', 'send', '<p>გაგზავნა</p>', '', 'empty', 'ge', 0, 0),
(97, 49, 0, 1523217600, '2018-04-09', 'contactdetails', 'Map', '<p>41.72493351793423,44.77042922210694</p>', '', 'empty', 'en', 0, 0),
(98, 49, 0, 1523217600, '2018-04-09', 'contactdetails', 'რუკა', '<p>41.72493351793423,44.77042922210694</p>', '', 'empty', 'ge', 0, 0),
(99, 50, 0, 1523217600, '2018-04-09', 'gallery', 'სატესტო ძაან ფოტო', '', '', 'empty', 'en', 0, 0),
(100, 50, 0, 1523217600, '2018-04-09', 'gallery', 'სატესტო ძაან ფოტო', '', '', 'empty', 'ge', 0, 0),
(101, 51, 0, 1523217600, '2018-04-09', 'gallery', 'სატესტო youtube ვიდეო', '', '', 'https://www.youtube.com/watch?v=g9TsbGQ-v3g', 'en', 0, 0),
(102, 51, 0, 1523217600, '2018-04-09', 'gallery', 'სატესტო youtube ვიდეო', '', '', 'https://www.youtube.com/watch?v=g9TsbGQ-v3g', 'ge', 0, 0),
(103, 52, 0, 1523304000, '2018-04-10', 'languagedata', 'gallery', '<p>Gallery</p>', '', 'empty', 'en', 0, 0),
(104, 52, 0, 1523304000, '2018-04-10', 'languagedata', 'gallery', '<p>გალერეა</p>', '', 'empty', 'ge', 0, 0),
(105, 53, 0, 1523304000, '2018-04-10', 'test', 'ტესტ ტესტ', '<p>ჯკდსნჯკადსნსდკჯნ დსსდ სდნ სდსდჰჯდსჯჰდსჯჰსდ</p>', '', 'empty', 'en', 0, 1),
(106, 53, 0, 1523304000, '2018-04-10', 'test', 'ტესტ ტესტ', '<p>ჯკდსნჯკადსნსდკჯნ დსსდ სდნ სდსდჰჯდსჯჰდსჯჰსდ</p>', '', 'empty', 'ge', 0, 1),
(107, 54, 0, 1523304000, '2018-04-10', 'languagedata', 'main', '<p>Main</p>', '', 'empty', 'en', 0, 0),
(108, 54, 0, 1523304000, '2018-04-10', 'languagedata', 'main', '<p>მთავარი</p>', '', 'empty', 'ge', 0, 0),
(109, 55, 0, 1523304000, '2018-04-10', 'languagedata', 'vacancies', '<p>vacancies</p>', '', 'empty', 'en', 0, 0),
(110, 55, 0, 1523304000, '2018-04-10', 'languagedata', 'vacancies', '<p>ვაკანსიები</p>', '', 'empty', 'ge', 0, 0),
(111, 56, 0, 1523304000, '2018-04-10', 'languagedata', 'ourteam', '<p>Our team</p>', '', 'empty', 'en', 0, 0),
(112, 56, 0, 1523304000, '2018-04-10', 'languagedata', 'ourteam', '<p>ჩვენი გუნდი</p>', '', 'empty', 'ge', 0, 0),
(113, 57, 0, 1523304000, '2018-04-10', 'contactdetails', 'test a', '<p>mimdinare</p>', '', 'empty', 'en', 0, 1),
(114, 57, 0, 1523304000, '2018-04-10', 'contactdetails', 'test a', '<p>mimdinare</p>', '', 'empty', 'ge', 0, 1),
(115, 58, 0, 1523304000, '2018-04-10', 'ongoing', 'akjsdasjkd', '<p>kjasndkjandkjasnd hjasbd jhasd jhasbd hasjbd hads</p>', '', 'empty', 'en', 0, 0),
(116, 58, 0, 1523304000, '2018-04-10', 'ongoing', 'სატესტო პროექტი', '<p>kjasndkjandkjasnd hjasbd jhasd jhasbd hasjbd hads</p>', '', 'empty', 'ge', 0, 0),
(117, 59, 0, 1523390400, '2018-04-11', 'languagedata', 'errorallfieldsrequire', '<p>All fields are required !</p>', '', 'empty', 'en', 0, 0),
(118, 59, 0, 1523390400, '2018-04-11', 'languagedata', 'errorallfieldsrequire', '<p>ყველა ველი სავალდებულოა!</p>', '', 'empty', 'ge', 0, 0),
(119, 60, 0, 1523390400, '2018-04-11', 'languagedata', 'erroremail', '<p>Email format error !</p>', '', 'empty', 'en', 0, 0),
(120, 60, 0, 1523390400, '2018-04-11', 'languagedata', 'erroremail', '<p>ელ-ფოსტა არასწორია !</p>', '', 'empty', 'ge', 0, 0),
(121, 61, 0, 1523390400, '2018-04-11', 'languagedata', 'errornull', '<p>Operation done successfully !</p>', '', 'empty', 'en', 0, 0),
(123, 62, 0, 1523390400, '2018-04-11', 'languagedata', 'error', '<p>Error !</p>', '', 'empty', 'en', 0, 0),
(122, 61, 0, 1523390400, '2018-04-11', 'languagedata', 'errornull', '<p>ოპერაცია წარმატებით შესრულდა !</p>', '', 'empty', 'ge', 0, 0),
(124, 62, 0, 1523390400, '2018-04-11', 'languagedata', 'error', '<p>მოხდა შეცდომა !</p>', '', 'empty', 'ge', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usefull_modules`
--

CREATE TABLE IF NOT EXISTS `usefull_modules` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usefull_modules`
--

INSERT INTO `usefull_modules` (`id`, `idx`, `type`, `title`, `lang`, `status`) VALUES
(1, 1, 'contactdetails', 'Contact details', 'en', 1),
(2, 1, 'contactdetails', 'საკონტაქტო ინფორმაცია', 'ge', 1),
(3, 2, 'contactdetails', 'Contact information', 'en', 0),
(4, 2, 'contactdetails', 'საკონტაქტო ინფორმაცია', 'ge', 0),
(7, 4, 'slogan', 'Slogan', 'en', 0),
(5, 3, 'slider', 'Slider', 'en', 0),
(6, 3, 'slider', 'სლაიდერი', 'ge', 0),
(8, 4, 'slogan', 'სლოგანი', 'ge', 0),
(9, 5, 'staff', 'Team', 'en', 0),
(10, 5, 'staff', 'ჩვენი გუნდი', 'ge', 0),
(11, 6, 'partners', 'Partners', 'en', 0),
(12, 6, 'partners', 'პარტნიორები', 'ge', 0),
(13, 7, 'socialnetworks', 'Social networks', 'en', 0),
(14, 7, 'socialnetworks', 'სოციალური ქსელები', 'ge', 0),
(15, 8, 'usefulllinks', 'Usefull links', 'en', 0),
(16, 8, 'usefulllinks', 'სასარგებლო ბმულები', 'ge', 0),
(17, 9, 'languagedata', 'Language data', 'en', 0),
(18, 9, 'languagedata', 'თარგმნა', 'ge', 0),
(19, 10, 'howfindus', 'How find us?', 'en', 0),
(21, 11, 'news', 'News', 'en', 0),
(20, 10, 'howfindus', 'საიდან შეიტყვეთ ჩვენს შესახებ?', 'ge', 0),
(22, 11, 'news', 'სიახლეები', 'ge', 0),
(23, 12, 'vacancies', 'Vacancies', 'en', 0),
(24, 12, 'vacancies', 'ვაკანსიები', 'ge', 0),
(25, 13, 'gallery', 'Gallery', 'en', 0),
(26, 13, 'gallery', 'გალერეა', 'ge', 0),
(27, 14, 'test', 'ტესტ სიახლეები', 'en', 1),
(28, 14, 'test', 'ტესტ სიახლეები', 'ge', 1),
(29, 15, 'ongoing', 'On going projects', 'en', 0),
(30, 15, 'ongoing', 'მიმდინარე პროექტები', 'ge', 0),
(31, 16, 'finished', 'Finished projects', 'en', 0),
(32, 16, 'finished', 'დასრულებული პროექტები', 'ge', 0),
(33, 17, 'future', 'Future projects', 'en', 0),
(34, 17, 'future', 'სამომავლო პროექტები', 'ge', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_website`
--

CREATE TABLE IF NOT EXISTS `users_website` (
  `id` int(11) NOT NULL,
  `register_date` int(11) NOT NULL,
  `register_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trainingid` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `starttime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `howfind` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_website`
--

INSERT INTO `users_website` (`id`, `register_date`, `register_ip`, `trainingid`, `email`, `firstname`, `phone`, `age`, `starttime`, `howfind`, `status`) VALUES
(6, 1504825139, '94.240.219.60', 22, 'lasha@gmail.com', 'lasha', '599623555', '22', 'დილის 12 სთ', 24, 1),
(13, 1523517633, '94.240.245.46', 26, 'giorgigvazava87@gmail.com', 'ყიდვა გაყიდვა', '45', '30', '12:00', 54, 1),
(12, 1523517377, '94.240.245.46', 22, 'giorgigvazava87@gmail.com', 'გიორგი გვაზავა', 'de653be8dbf2b5d72e160b928fd91413c889aa2f', '30', '12:00', 52, 1),
(14, 1523518130, '94.240.245.46', 9, 'giorgigvazava87@gmail.com', 'test test', '5', '30', '12:00', 28, 1),
(15, 1523518201, '94.240.245.46', 9, 'giorgigvazava87@gmail.com', 'vaime', '654565165', '25', '12', 28, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_system`
--
ALTER TABLE `file_system`
  ADD PRIMARY KEY (`id`), ADD FULLTEXT KEY `file_path` (`file_path`);

--
-- Indexes for table `georgia`
--
ALTER TABLE `georgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaccount_nav`
--
ALTER TABLE `myaccount_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`), ADD FULLTEXT KEY `title` (`title`), ADD FULLTEXT KEY `text` (`text`), ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_close`
--
ALTER TABLE `payments_close`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_dates`
--
ALTER TABLE `products_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subservices`
--
ALTER TABLE `subservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usefull`
--
ALTER TABLE `usefull`
  ADD PRIMARY KEY (`id`), ADD FULLTEXT KEY `title` (`title`), ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `usefull_modules`
--
ALTER TABLE `usefull_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_website`
--
ALTER TABLE `users_website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=682;
--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `file_system`
--
ALTER TABLE `file_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `georgia`
--
ALTER TABLE `georgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `myaccount_nav`
--
ALTER TABLE `myaccount_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payments_close`
--
ALTER TABLE `payments_close`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products_dates`
--
ALTER TABLE `products_dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subservices`
--
ALTER TABLE `subservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=977;
--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usefull`
--
ALTER TABLE `usefull`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `usefull_modules`
--
ALTER TABLE `usefull_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_website`
--
ALTER TABLE `users_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
