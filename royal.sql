-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 16, 2020 at 11:18 PM
-- Server version: 8.0.22
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royalthrills`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint UNSIGNED NOT NULL,
  `offers_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbr` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_description2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `specification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration_hours` int NOT NULL,
  `start_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_url` text COLLATE utf8_unicode_ci,
  `least_price` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addon_adventures`
--

CREATE TABLE `addon_adventures` (
  `id` bigint UNSIGNED NOT NULL,
  `offers_id` bigint UNSIGNED DEFAULT NULL,
  `adventures_id` bigint UNSIGNED DEFAULT NULL,
  `addons_id` bigint UNSIGNED DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `type` int NOT NULL,
  `max_allowed` int NOT NULL,
  `pnr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pnr_prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addon_operator`
--

CREATE TABLE `addon_operator` (
  `id` bigint UNSIGNED NOT NULL,
  `addons_id` bigint UNSIGNED NOT NULL,
  `operator_id` bigint UNSIGNED NOT NULL,
  `priority` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `detailed_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `display_priority` bigint UNSIGNED NOT NULL,
  `topic` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `short_description`, `detailed_description`, `title_url`, `detail_url`, `user_id`, `display_priority`, `topic`, `created_at`, `updated_at`) VALUES
(1, 'Best trekking poles how to choose the right one', 'Introduction:\r\nAt times, two legs would not be sufficient for the trekkers to maintain solidity on the track. A walking or hiking stick is the traditional method to give you more strength. Trekking poles are typical equipment for many trekkers, walkers, and hikers used to aid walkers with their rhythm and offer stability on rough surfaces. It is because the trekking poles increase the strength and support to the users in all types of environment. They help the users to save energy on steep climbs and also provide balance to the legs. The trekkers are also advised to use the knee brace so that it would protect the knees throughout the trek. \r\nWhen trying to search for perfect trekking poles, you will come across several questions. You will have to choose the apt type of poles that will suit you best. Royal Thrills are here to help you choose the best trekking poles that will suit you:', '1.      The number of poles:\r\nWhether to choose one or two? The choice here will be largely based upon the personal preference of the trekkers. One pole will be suitable for short treks and two poles for long treks to balance your weight over the miles and also for stability. Usually, singles poles will possess broader grips and might embrace the facility to screw off the grip and use the pole as a support for the camera.\r\n2.      The material of the poles:\r\nAfter choosing the number of poles, it is necessary to choose the material of the poles required for you. Usually, the trekking poles will be made up of either carbon or aluminum. These poles will generally range from 18 to 22 ounces per pair and 12 to 16 mm in thickness. Carbon poles will be lighter but they are likely to break and also high-priced. These poles will usually range from 12 to 18 ounces per pair. Aluminum poles are more durable and economical too. If you are taller than 6 feet, you can choose poles that are at least 51 inches tall. \r\n3.      The grip of the poles:\r\nThe grip of the poles plays an important role when it comes to the user’s comfort. Grips are obtainable in different constructions that satisfy a variety of needs. Based on the climatic conditions of the places you are yet to trek, Royal Thrills will provide you the instructions regarding the type of grip of the poles to be used. Following are the most common materials used in grips:\r\n·         Cork grip: Cork grip is a moisture-resistant one. It gets more comfortable with use because the cork molds to the user\'s hand and is indeed antimicrobial so it can resist stink. Cork grip poles are very expensive and heavy.\r\n·         Foam grip: Foam cork is the most comfortable and softest one. These gripped poles will not be ideal for hiking during wet climates. These grips absorb water at a faster rate and might break down faster.\r\n·         Rubber grip: When compared to the above-mentioned grips, rubber gripped poles are not much comfortable. The special facility is that these grips are perfect water-resistant which makes them ideal for winter treks.\r\n  \r\n4.      Tips of the poles:\r\nUsually, most of the poles will be available with a carbide steel tip. You will have the facility to choose the poles with or without rubber tips. Carbide steel tips would tend to skid on hard surfaces and can be noisy too. There are also complaints like they harm the paths. Rubber tips will act great on hard surfaces and don’t seem noisy. They will be ideal for surfaces like slick rock and pavement but they fade on wet exteriors and don’t offer the same kind of grip on wobbly soil. Usually, we recommend you to opt for the rubber-tipped poles for your trek as it tends to withstand hard surfaces very well. The trekkers are advised to make sure that the tip of the poles is protected by tip guards which will be available along with the trekking poles so that the poles will not damage the pathways.\r\n5.      Adjusting the poles:\r\nTrekking poles will contain two locks: Twist locks and Flick locks. Once the poles are adjusted according to the length needed, the lock desired can be chosen.\r\n·         Flick locks: These locks will be suitable if you are yet to use the poles in the winter. Flick lock system will work well in sub-zero temperatures and they are easy to fine-tune with gloves on. The flick lock system will require a screwdriver to adjust.\r\n \r\n·         Twist locks: These locks will suit best in the summer season. They are easy to adjust on the fly if the tension is off since you can normally take them apart and adjust them without using any tools.\r\nHere again, our team will provide you the instructions according to the climatic conditions of the trekking place for using the locks in the poles.\r\n6.      Shock-absorbing poles:\r\nShock-absorbing poles will be great if you have creaky knees or achy joints. These poles have a technology downside which includes a slight loss of power on the ascent and decreased stability while descending. Few higher-end models will have shock-absorbers which have an on or off facility. This facility will add weight to your structure but might not suit a lightweight backpacker.\r\n7.      Folding poles:\r\nSimilar to tent poles are the folding poles. They are provided with a shock cord joining several lightweight shafts. They are generally lightweight and can be folded to a very small size too. These poles are available with flick lock adjustment in fixed height. For most of the users, they are durable enough. Folding poles will suit the thru-hikers, trail hikers, split boarders, and uphill hikers. In most of the cases, these poles are not adjustable enough to use in poles to set up a shelter or tent.\r\n8.      Telescoping poles:\r\nTrekking poles can be adjusted with ease. They have the options with two and three sections from which one can be chosen and used.\r\n·         Two-section poles: These are more durable and will be ideal for the trekkers who are tough on their gear. The downside of the two-section poles possesses heavy trail weight. These poles are the heaviest and tallest when compared to the folding poles.\r\n·         Three-section poles: These poles can be packed and carried easily for the trips and can also be strapped on daypacks. Compared to the two-section poles, these are less durable but these poles are lighter in weight. These poles are tougher than the foldable ones but come with more adjustability.\r\nConclusion:\r\nTrekking poles will make the trek safe and easy. They provide enhanced support for you during the trek and keep you upright for better posture. You can follow the above-mentioned tips to choose the right pole for you and travel along with us to experience a memorable trek.', 'https://res.cloudinary.com/royalthrills/image/upload/v1604423670/samples/people/boy-snow-hoodie.jpg', 'https://res.cloudinary.com/royalthrills/image/upload/v1604423675/samples/cloudinary-group.webp', 14, 1, 1, '2020-12-15 18:56:58', '2020-12-15 18:56:58'),
(2, 'Maintain Body Temperature in all Seasons during Trekking', 'The love for the mountain can never be seasonal. Be it monsoon, winter, autumn or summer, the giants lure you to their majestic beauty and you are bound to find your corner in their laps. However, finding a way to relax and enjoy the ethereal beauty of the mountains and trek through several terrains, your body needs to be adept in withstanding any seasonal condition, primarily summer and winter because that is the ideal time to visit the mountains and trek. \r\nBut before we begin, here’s a fact check. Your body’s temperature is regulated by the control centre called hypothalamus, a small part of the brain that is the boss of several functions including balancing the body fluids and salt concentrations, coordination of the autonomic nervous system that you don’t have to worry about such as breathing, blood pressure, digestive process, and temperature etc., and controlling all those chemicals and hormones that are related to maintaining the temperature of the body. You can easily say that the hypothalamus is the thermostat that is adjusted well to keep you comfortable in the presence of internal and external influences. This combination of the hypothalamus and autonomous nervous system works with your body’s skin, muscles, even blood vessels and sweat glands to keep the temperature within the normal range. \r\nSo, let us bring forth important reminders and tips on how to take care of your body during both the seasons so that you can consume all the beauty of the surrounding and not succumb to any injury.', 'Summer\r\nUsually, trekking is done in the summer for a great experience but the downsides are sweating, fear of dehydration, loss of appetite, sunstroke, heatstroke and even overhydration. Since prevention is far better than cure, here are a few tips to help you deal with the possible problems that may arise during the trek in summer season:\r\nSince you sweat and lose salts, minerals and water from the body, stay hydrated! Carry containers that can be refilled you find a water source. The thumb rule is to consume 3-6 litres of water per person per day of trekking/walking. \r\nDrinking excess water can dilute most of the minerals and salts present in the body leading to hyponatremia-low sodium levels. In such cases, consume salty and sweet snacks such as sweet trail mix or nuts and add electrolytes to your water. One to three tabs a day is enough.\r\nCover your head and skin to avoid sunstroke and take breaks to rest in the shade to avoid the constant contact with the sun’s heat. A good trick is to get the headcover wet to enjoy the cooling effect. \r\nHigh factor sunscreen with good SPF value is your saviour on hot days of trekking. Lather yourself with the cream and avoid getting burnt.\r\nWear cotton shirt/top during the trek that works as an AC for your body. \r\nDue to excessive internal heat, you may get a heat stroke because your body is unable to release the heat inside the body and so, you have to help yourself externally by following all of the abovementioned points. \r\nThe most common symptom that your body shows while trekking in summer is a headache. If your head hurts, pause, find a shaded place, rest, drink water and cool down. Eat sweets or salty snack and drink more water. If the problem persists, then you may need to escape back or take a longer rest but don’t exert your body. \r\n\r\nWinter\r\nWinter is the season to get cosy and hibernate but is also one of the best seasons to step out and into the wilderness of nature. For an unforgettable winter experience, a lot of people prefer trekking in the mountains to experience the snow and cold weather. Since every weather can have repercussions on your body, these tips will help you keep you warm and going:\r\nYour body needs twice the energy during winters so hog! Eat protein and carb-rich snacks to get more energy while you are trekking. The more the body is in movement, the lesser you will feel cold. \r\nHydration is a requirement irrespective of the season. You can carry insulated bottle sleeve to keep the water warm and prevent it from freezing if you are in an extremely cold environment. Besides water, carry warm drinks like hot cocoa, tea or soup for quick sips to keep you warm. \r\nTime the trek when the sun is out and glowing.\r\nChoose uphill sections of the trek that will get your heart pumping and raise your internal body temperature. \r\nLayering your body with suitable attire is your mantra to keep you going on the trek. Wear synthetic layers that wick moisture and are quick to dry. For extreme cold, you can wear a base layer, insulating layer and a shell outside along with gloves, hat, sunglasses, socks and footwear & gaiters. \r\nWear gloves all the time as excessive touching of the snow can lead to burns. Also, cover the head with a beanie or a cap to avoid losing heat. \r\nTrekking is a cherished experience and if your body is in sync, there is no way that you will suffer any problem. Happy Trekking!', 'https://res.cloudinary.com/royalthrills/image/upload/v1604423674/samples/imagecon-group.webp', 'https://res.cloudinary.com/royalthrills/image/upload/v1604423670/samples/people/boy-snow-hoodie.webp', 14, 2, 2, '2020-12-15 18:59:57', '2020-12-15 18:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `blog_reactions`
--

CREATE TABLE `blog_reactions` (
  `id` bigint UNSIGNED NOT NULL,
  `comments_id` bigint UNSIGNED NOT NULL,
  `upvote` int NOT NULL,
  `downvote` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `sortname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phonecode` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Republic Of The Congo', 242),
(50, 'CD', 'Democratic Republic Of The Congo', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pronoun` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `customer_id`, `first_name`, `last_name`, `email`, `gender`, `pronoun`, `dob`, `address_1`, `address_2`, `province`, `phone1`, `phone2`, `country`, `created_at`, `updated_at`) VALUES
(1, 22, NULL, 'Vamsi', 'Avineni', 'avkc@gmail.com', '1', 'Mr.', '1980-08-31', 'Hyderabad', 'Hyderabad', 'India', '6304432084', '000000', '101', '2020-12-15 19:04:49', '2020-12-15 19:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `display_text`
--

CREATE TABLE `display_text` (
  `id` bigint UNSIGNED NOT NULL,
  `text_for` bigint UNSIGNED DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` longtext COLLATE utf8_unicode_ci,
  `long_desc` longtext COLLATE utf8_unicode_ci,
  `display_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_slider`
--

CREATE TABLE `home_slider` (
  `id` bigint UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_priority` int NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_slider`
--

INSERT INTO `home_slider` (`id`, `caption`, `subtitle`, `display_priority`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'OFF TO THE MOUNTAIN', 'IS THE NEW LUXURY', 1, 'https://res.cloudinary.com/royalthrills/image/upload/q_45/v1604426217/home-slider/Banner-01_fmjxom.webp', '2020-12-09 22:25:01', '2020-12-09 22:25:01'),
(2, 'OFF TO THE MOUNTAIN', 'IS THE NEW TESTING', 2, 'https://res.cloudinary.com/royalthrills/image/upload/q_45/v1607199038/home-slider/5d9b1b88ccdcc_t3g3wj.webp', '2020-12-09 22:25:20', '2020-12-09 22:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

CREATE TABLE `itinerary` (
  `id` bigint UNSIGNED NOT NULL,
  `thrills_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `no_of_days` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itinerary_days`
--

CREATE TABLE `itinerary_days` (
  `id` bigint UNSIGNED NOT NULL,
  `itinerary_id` bigint UNSIGNED NOT NULL,
  `thrill_attachment_id` bigint UNSIGNED DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int NOT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `long_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itinerary_days_detail`
--

CREATE TABLE `itinerary_days_detail` (
  `id` bigint UNSIGNED NOT NULL,
  `itinerary_day_id` bigint UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detailed_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `media_type` int NOT NULL,
  `media_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_10_23_225728_create_sessions_table', 1),
(7, '2020_10_27_180723_create_blogs_table', 1),
(8, '2020_11_04_214625_create_roles_table', 1),
(9, '2020_11_04_215359_add_roles_to_users_table', 1),
(10, '2020_11_05_144340_add_fields-to_users_table', 1),
(11, '2020_11_06_221738_add_google_id_column', 1),
(12, '2020_11_11_135645_add_oauth_fields_to_user_table', 1),
(13, '2020_11_18_011220_create_thrill_zones_table', 1),
(14, '2020_11_18_125006_create_thrill_operators_table', 1),
(15, '2020_11_18_182709_create_countries_table', 1),
(16, '2020_11_22_094128_create_offers_table', 2),
(17, '2020_11_22_095611_create_thrills_table', 2),
(18, '2020_11_22_180256_create_offer_types_table', 2),
(19, '2020_11_24_171110_create_thrills_info_table', 3),
(20, '2020_11_28_112016_create_thrill_attachments_table', 3),
(21, '2020_11_28_112142_create_thrill_features_table', 3),
(22, '2020_11_28_143210_create_itinerary_table', 3),
(23, '2020_11_28_143255_create_itinerary_days_table', 3),
(24, '2020_11_28_143311_create_itinerary_days_detail_table', 3),
(25, '2020_11_30_030551_create_customers_table', 3),
(26, '2020_12_04_103406_create_thrill_adventures_table', 4),
(27, '2020_12_04_131356_create_addons_table', 4),
(28, '2020_12_04_131515_create_addon_adventures_table', 4),
(29, '2020_12_04_131532_create_addon_operator_table', 4),
(30, '2020_12_04_141245_create_blogs_table', 4),
(31, '2020_12_04_141313_create_blog_reactions_table', 4),
(32, '2020_12_04_141536_create_stories_table', 4),
(33, '2020_12_05_233113_create_home_slider_table', 5),
(34, '2020_12_05_233201_create_display_text_table', 5),
(35, '2020_12_05_233310_add_instant_savings_amount_to_offers_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valid_from` datetime NOT NULL,
  `valid_to` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount_percent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instant_savings_amount` decimal(8,2) DEFAULT NULL,
  `offer_2nd_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `description`, `code`, `valid_from`, `valid_to`, `type`, `discount_percent`, `caption`, `created_at`, `updated_at`, `instant_savings_amount`, `offer_2nd_title`) VALUES
(2, '50% OFF SECOND GUEST', 'BARBEQUEUE', '2020-12-12 00:00:00', '2020-12-31 23:59:59', '1', '50', 'ROYAL SALE', '2020-12-11 21:17:02', '2020-12-11 21:17:02', '150.00', 'OFF SECOND GUEST');

-- --------------------------------------------------------

--
-- Table structure for table `offer_types`
--

CREATE TABLE `offer_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_types`
--

INSERT INTO `offer_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Main Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(2, 'Monthly Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(3, 'Weekly Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(4, 'Seasonal Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(5, 'Blog Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(6, 'Facebook Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(7, 'Google Ad Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(8, 'Instagram Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(9, 'Twitter Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(10, 'Micro Pages Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(11, 'Referal Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(12, 'Travel Advisor Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(13, 'Travel Agent Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(14, 'Thrill Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00'),
(15, 'LinkedIn Promotion', '2020-11-21 18:30:00', '2020-11-21 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', NULL, NULL),
(2, 'Admin', NULL, NULL),
(3, 'Agents manager', NULL, NULL),
(4, 'Agents executive', NULL, NULL),
(5, 'Thrills manager', NULL, NULL),
(6, 'Experience manager', NULL, NULL),
(7, 'Action guest', NULL, NULL),
(8, 'Customer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `detailed_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `thrill_zones_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `title`, `short_description`, `detailed_description`, `title_url`, `detail_url`, `customer_id`, `thrill_zones_id`, `created_at`, `updated_at`) VALUES
(1, 'Top 5 Best treks in Nepal', 'It would not be called a recently discovered fact that out of the fourteen tallest mountains of the world, Nepal has been home to the eight tallest mountains soaring within its province. \r\nThe terrain of the Nepalese Himalayas offers stunning trekking routes, each with their exquisite features that even rating one particular route to be the best trek in Nepal would be rather unfair. The choice rather depends on factors like choice of difficulty, the budget, the number of days, and particular time of the year that you will be able to spend on the trek. To make this task easy for you, let’s take a look at the top 5 best treks in Nepal based on popularity, price, scenery, and culture.', 'The Everest Base Camp Trek is the ideal option for people who wants to savor the breathtaking close-up views of the World’s highest Mount Everest standing at a height of 8848 meters. The journey starts from and also ends at the Tenzing Hillary Airport, via Lukla and takes a roundabout of two and a half to three weeks to complete. Along with offering spectacular views of the World’s tallest mountain, this experience of trekking in Nepal also provides views of other incredible peaks such as the Kongdi RI Himal and Thamserku peak.\r\nAs you trek down the glorious path of the legendary mountaineers, you will pass through the roaring Dudhkoshi River, serene Imjatse valley, and also get a close view of the Sherpa’s lifestyles who are known for their incredible physical endurance and climbing skills. Also, you will feel blessed accompanied by the Buddhist prayer flags and the Buddhist monasteries spread throughout the trail.\r\nOverview\r\nMaximum Elevation: 5,600 m, Kala Patthar\r\nDays: 17 to 19 days\r\nDifficulty Level: Medium to High\r\nRemoteness Level: Not that remote (Undertaken by the highest number of trekkers each year)\r\nIdeal Season: October to November and March to May\r\n2. Annapurna Circuit Trek\r\nThis is one of the most renowned treks in Nepal. The trail passes through a culturally rich and diverse terrain of the Annapurna region, offering mesmerizing views of Annapurna, Manaslu, Lantang Himal, Dhaulagiri, and Macchupucchre. \r\nThe expedition starts from the Annapurna Sanctuary Gate. In comparison to the other trekking destinations, the Annapurna Circuit Base Camp Trek is demanding as it requires a lot more physical endurance, for it is incredibly steep, offering very less flat topography to climb upon easily.\r\nDespite Annapurna being crowned as the riskiest and difficult mountains to climb upon, it is still one of the best treks in Nepal, offering awe-inspiring natural beauty from jungle to lush valleys to high alpine and arid peaks. When you will reach your destination at ABC Camp and view the radiating peak of Annapurna illuminated by the bright sun rays, all of the tiresomeness and fatigue will make this experience a worthwhile one. \r\nOverview\r\nMaximum Elevation: 5,416 m, Thorong La Pass\r\nDays: 14 days\r\nDifficulty Level: Moderate to Advanced\r\nRemoteness Level: Not remote\r\nIdeal Season: October to November and March to May\r\n3. Manaslu Circuit Trek\r\nThe Manaslu Mountain Trek circles the Manaslu Mountain, the eighth highest peak in Nepal and is considered to be one of the most difficult but also one of the most worthwhile treks in Nepal. Located on the Nepal-Tibet border, the journey towards this peak offers amazing panoramas starting from the epic sceneries of the forests to the views of the clouds touching the rocky landscapes. Trailing down this trek, you will reach the highest elevation at the Larkya Pass accompanied by other challenging mountain passes. The trail is adorned by Tibetan-style villages and diverse cultures of age-old Buddhist monasteries and is secluded, remote with enriched topography. No wonder Manaslu Circuit Trek is considered among the best treks in Nepal.  \r\nRestrictions:\r\nThis trekking journey demands to be accompanied by at least two trekkers, particularly by a Nepali porter or guide. Also, there are restricted areas that require permits to trek upon. \r\nOverview\r\nMaximum Elevation: 5115m at Larkya Pass\r\nDays: 15 days\r\nDifficulty Level: Hard\r\nRemoteness Level: Remote\r\nIdeal Season: October to November and March to May\r\n4. Lang Tang valley Trek\r\nLangtang valley located in the North towards Tibet, should be the perfect destination for trek if you are short on time as the whole journey takes about just 10 days. The Langtang Valley Trek is known for its diverse culture and vegetation beginning from the wonderful forests to alpine pastures and yak fields surrounding a Buddhist monastery, Kyangjin Gompa. You will be rewarded with splendid, unobstructed views of Langtang Ri, the panoramic views of Annapurnas, and also Makalu once you accomplish the Tserko Peak at an elevation of 4,984 m.\r\n5. Upper Mustang Trek\r\nThis trek demands around two weeks to complete. Mustang is known as Nepal’s concealed paradise, which is like hidden behind the Himalayan ranges situated below the Tibetan boundary. The trekking journey starts from Jomsom and enters into the treeless desert zone. While on the trek route, you will be offered with astonishing views of Annapurna, Nilgiri, Dhaulagiri, and the other Himalayas. Huge barley fields, small huts, and houses painted white, Buddhist prayer flags and old Gompas add to the beauty of the place. \r\nConclusion\r\nThese treks have made the country a Mecca for hiking and trekking enthusiasts from around the globe. If you are planning for a trekking expedition, then these are top 5 treks in Nepal are the best options to choose from in this former Himalayan kingdom.', 'https://res.cloudinary.com/royalthrills/image/upload/v1604423676/samples/landscapes/nature-mountains.webp', 'https://res.cloudinary.com/royalthrills/image/upload/v1604423672/samples/landscapes/beach-boat.webp', 1, 1, '2020-12-15 19:08:51', '2020-12-15 19:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `thrills`
--

CREATE TABLE `thrills` (
  `id` bigint UNSIGNED NOT NULL,
  `thrill_zones_id` bigint UNSIGNED NOT NULL,
  `operator_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `offer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `full_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `full_description2` longtext COLLATE utf8_unicode_ci NOT NULL,
  `specification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `least_price` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thrills`
--

INSERT INTO `thrills` (`id`, `thrill_zones_id`, `operator_id`, `name`, `title`, `show_type`, `offer_id`, `abbr`, `short_description`, `full_description`, `full_description2`, `specification`, `price`, `type`, `photo_url`, `least_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Everest Basecamp', 'King of Mountains', '1', '1', '1', 'Be amazed by the daunting summit, soaring up above the mountains of Nepal.', 'Be amazed by the daunting summit, soaring up above the mountains of Nepal. The Everest Base Camp is the adventure for the thrill-seeker in you. With the vast blue sky in the backdrop, snow-clad mountains and greenery in front for as far as your eyes go, you’ll get a glimpse of what heaven may look like. After all, this is one of those places on Earth which would astound you to believe that heaven can be witnessed while alive. \r\n\r\nEscape to an adventure of forests, waterfalls, and snow, the calming silence of the valley, smiling faces of the local residents and that’s when it will hit you- what you’ve been missing all this while is right here, at the Everest Base Camp.', 'This is a dream destination wherein you will pass through quaint villages, steep rocks, and trails of legendary mountaineers Tenzing Norgay and Sir Edmund Hillary. At a height of 5,365 meters, you will feel like standing inside a snow globe and watch in awe, the mesmerizing ascent of Everest. Each day spent on this trek will remind you of the grandiose life that you are living far away from the madding crowd and you will return home with a peaceful mind, heart and soul-enriching memories that will last a lifetime.', 'NULL', '3500.00', '1', 'https://res.cloudinary.com/royalthrills/image/upload/q_40/v1607265883/Everest%20Base%20camp/basecamp1_ulke0t.webp', '3150.00', '2020-12-06 14:49:04', '2020-12-06 14:49:04'),
(2, 3, 3, 'Annapurna Basecamp', 'Grandiose Only For Your Eyes', '1', '1', '2', 'Be enthralled with the grandiose of the world’s tenth highest peak, Annapurna I and explore the massifs at their very best.', 'Be enthralled with the grandiose of the world’s tenth highest peak, Annapurna I and explore the massifs at their very best. Amidst the formidable aura of the gigantic mountains, eye-pleasing flora, exotic fauna, and the ever-changing glacier, you will find the surreal bliss having to exist and breathe the beauty that your eyes witness. Annapurna is the world’s tenth highest peak and you will be enthralled to explore the massifs towering high for as far as your eyes go. From the pristine lakes in Pokhara to the hamlets ornate with prayer flags, you will have stunning canvases to see.', 'Also called as the city of lakes, Pokhara is the unofficial tourist capital of Nepal offering stupendous views, lively settlements and indigenous communities of Nepal. In this trek, you will wander through the small hamlets leading to colourful rhododendron and pine forests, several sections of stone steps, rolling hills and ultimately to the base camp with the view of the domineering Annapurna Mountain. And in between, there will always be the marvel sights of sunsets and sunrises and their golden colours spreading across the skyline. \r\n\r\nAt 4,161 meter, Annapurna Base Camp is a perfect scene straight out of a postcard wherein the massive mountains give way to dense Rhododendron forests, wild terrains, and somewhere in the corner, a beam of sunlight seeping through the cotton candy clouds. Get acquainted with the serenity of the mountains and hear your heartbeat in the silence.  \r\n\r\nEnter into the most-loved melting pot of adventure where the locals will welcome you to their abode like no other. The Annapurna I Trek is a non-strenuous trail that can be explored by the trekkers with average physical fitness.', 'NULL', '3400.00', '1', 'https://res.cloudinary.com/royalthrills/image/upload/q_40/v1607266506/ABC/ABC_qnyy1n.webp', '3350.00', '2020-12-06 14:58:44', '2020-12-06 14:58:44'),
(3, 4, 4, 'Gokyo Valley Trek', 'Breathe In Picturesque Serenity', '1', '1', '3', 'If Gods have heaven above, humans have Gokyo Valley here.', 'If Gods have heaven above, humans have Gokyo Valley here. Encompassing several diverse landscapes and views, Gokya Valley is the charming spot that is loved by both adventure seekers and nature lovers. Lying west of the famous Khumbu region, Gokyo Valley is one of the most picturesque valleys in Nepal.', 'Be spectacled by the extensive pastures forming an unending ground for yaks to graze during summer and pristine turquoise lakes calming the mind, body and soul of travelers. Climb the way up and drop down the steep pass, traverse through the enchanting trails amidst oak and dense rhododendron forest, cross the suspension bridges and witness frozen waterfalls in this valley that leaves people finding those 1000 words to express the ethereal beauty.\r\n\r\nThis stunning trek is a place straight out of heaven that offers a magical view in every season. Surrender to this valley and everything that it has to offer because no one would want to go back home.', 'null', '3300.00', '1', 'https://res.cloudinary.com/royalthrills/image/upload/q_50/v1607268795/Gokyo%20valley/GOKYO_frbzn1.webp', '3250.00', '2020-12-06 15:35:30', '2020-12-06 15:35:30'),
(4, 5, 5, 'Chanderkhani Pass', 'Your Seamless Snowland', '1', '1', '4', 'From plush lands to snow and back again', 'What would one expect from a trek through the high altitude forest of Himachal Pradesh, a chance to experience rustic village lifestyle, trekking through alpine jungle pastures with their pine deodar trees and crossing an ancient pass and descending into the Malana valley whose residence are known for their discreet and isolated traditions', 'Experience the rustic village lifestyle at Rumsu. \r\nChance to see the magnificent Deo Tibba and the Parvati range of Himalayas\r\nCrossing an ancient pass into an ancient village – Malana.', 'null', '3200.00', '1', 'https://res.cloudinary.com/royalthrills/image/upload/q_50/v1607269999/Chanderkhani/chandarkeni_rktee8.webp', '3150.00', '2020-12-06 15:55:35', '2020-12-06 15:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `thrills_info`
--

CREATE TABLE `thrills_info` (
  `id` bigint UNSIGNED NOT NULL,
  `thrills_id` bigint UNSIGNED NOT NULL,
  `thrill_zones_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `detailed_description` text COLLATE utf8_unicode_ci NOT NULL,
  `title_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thrills_info`
--

INSERT INTO `thrills_info` (`id`, `thrills_id`, `thrill_zones_id`, `title`, `short_description`, `detailed_description`, `title_url`, `detail_url`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 'King of Mountains', 'Be amazed by the daunting summit, soaring up above the mountains of Nepal.', 'Null', 'https://res.cloudinary.com/royalthrills/image/upload/v1607265883/Everest%20Base%20camp/basecamp1_ulke0t.jpg', 'https://res.cloudinary.com/royalthrills/image/upload/v1607265883/Everest%20Base%20camp/basecamp1_ulke0t.jpg', '2020-12-10 05:51:18', '2020-12-10 05:51:18'),
(5, 3, 4, 'The Flora and Fauna', 'Hamta trek is an ideal foray into high altitude trekking for the first time Himalayan trekker.', 'Null', 'https://res.cloudinary.com/royalthrills/image/upload/v1607579657/Gokyo%20valley/5d88838906326_lmr4cd.jpg', 'https://res.cloudinary.com/royalthrills/image/upload/v1607579657/Gokyo%20valley/5d88838906326_lmr4cd.jpg', '2020-12-10 05:54:36', '2020-12-10 05:54:36'),
(6, 2, 3, 'GRANDIOSE ONLY FOR YOUR EYES', 'Be enthralled with the Grandiose of the World\'s Tenth Highest peak', 'Null', 'https://res.cloudinary.com/royalthrills/image/upload/v1607269999/Chanderkhani/chandarkeni_rktee8.jpg', 'https://res.cloudinary.com/royalthrills/image/upload/v1607269999/Chanderkhani/chandarkeni_rktee8.jpg', '2020-12-10 05:56:25', '2020-12-10 05:56:25'),
(7, 4, 5, 'FEEL DIVINE HIGH UP IN THE MOUNTAINS', 'Enjoy verdant valleys and majestic mountains.', 'Null', 'https://res.cloudinary.com/royalthrills/image/upload/v1607266506/ABC/ABC_qnyy1n.jpg', 'https://res.cloudinary.com/royalthrills/image/upload/v1607266506/ABC/ABC_qnyy1n.jpg', '2020-12-10 05:58:30', '2020-12-10 05:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `thrill_adventures`
--

CREATE TABLE `thrill_adventures` (
  `id` bigint UNSIGNED NOT NULL,
  `thrill_id` bigint UNSIGNED NOT NULL,
  `offers_id` bigint UNSIGNED DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `type` int NOT NULL,
  `max_allowed` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thrill_attachments`
--

CREATE TABLE `thrill_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `thrills_id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_order` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thrill_attachments`
--

INSERT INTO `thrill_attachments` (`id`, `thrills_id`, `type`, `media_url`, `display_order`, `display_caption`, `created_at`, `updated_at`) VALUES
(2, 1, '1', 'https://res.cloudinary.com/royalthrills/image/upload/v1604423676/samples/landscapes/nature-mountains.jpg', '1', 'Sample 1', '2020-12-10 15:30:56', '2020-12-10 15:30:56'),
(3, 1, '1', 'https://res.cloudinary.com/royalthrills/image/upload/v1607265883/Everest%20Base%20camp/basecamp1_ulke0t.jpg', '2', 'Sample 2', '2020-12-10 15:31:34', '2020-12-10 15:31:34'),
(4, 1, '2', 'https://res.cloudinary.com/royalthrills/video/upload/v1604423679/samples/sea-turtle.mp4', '3', 'Sample 3', '2020-12-10 15:32:22', '2020-12-10 15:32:22'),
(5, 2, '1', 'https://res.cloudinary.com/royalthrills/image/upload/v1607266506/ABC/ABC_qnyy1n.jpg', '1', 'ABC SAMPLE 1', '2020-12-10 15:33:08', '2020-12-10 15:33:08'),
(6, 2, '1', 'https://res.cloudinary.com/royalthrills/image/upload/v1604423666/samples/animals/reindeer.jpg', '2', 'ABC SAMPLE 2', '2020-12-10 15:34:29', '2020-12-10 15:34:29'),
(7, 2, '2', 'https://res.cloudinary.com/royalthrills/video/upload/v1604423679/samples/sea-turtle.mp4', '3', 'ABC SAMPLE 3', '2020-12-10 15:36:20', '2020-12-10 15:36:20'),
(8, 3, '1', 'https://res.cloudinary.com/royalthrills/image/upload/v1607268795/Gokyo%20valley/GOKYO_frbzn1.jpg', '1', 'GV SAMPLE 1', '2020-12-10 15:37:01', '2020-12-10 15:37:01'),
(9, 3, '1', 'https://res.cloudinary.com/royalthrills/image/upload/v1607579657/Gokyo%20valley/5d88838906326_lmr4cd.jpg', '3', 'GV SAMPLE 2', '2020-12-10 15:37:28', '2020-12-10 15:37:28'),
(10, 3, '1', 'https://res.cloudinary.com/royalthrills/image/upload/v1604423660/sample.jpg', '3', 'GV SAMPLE 3', '2020-12-10 15:38:13', '2020-12-10 15:38:13'),
(11, 4, '1', 'https://res.cloudinary.com/royalthrills/image/upload/v1607269999/Chanderkhani/chandarkeni_rktee8.jpg', '1', 'CHT SAMPLE 1', '2020-12-10 15:38:45', '2020-12-10 15:38:45'),
(12, 4, '1', 'https://res.cloudinary.com/royalthrills/image/upload/v1604423678/samples/landscapes/landscape-panorama.jpg', '2', 'CHT SAMPLE 2', '2020-12-10 15:40:04', '2020-12-10 15:40:04'),
(13, 4, '2', 'https://res.cloudinary.com/royalthrills/video/upload/v1604423681/samples/elephants.mp4', '3', 'CHT SAMPLE 3', '2020-12-10 15:40:42', '2020-12-10 15:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `thrill_features`
--

CREATE TABLE `thrill_features` (
  `id` bigint UNSIGNED NOT NULL,
  `thrills_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thrill_features`
--

INSERT INTO `thrill_features` (`id`, `thrills_id`, `title`, `value`, `display_order`, `created_at`, `updated_at`) VALUES
(8, 1, 'Duration', '13', 1, '2020-12-10 05:23:58', '2020-12-10 05:23:58'),
(9, 1, 'Activities', '10 days trek', 2, '2020-12-10 05:24:27', '2020-12-10 05:24:27'),
(10, 1, 'Altitude', '5500 m (18044 feet)', 3, '2020-12-10 05:25:40', '2020-12-10 05:25:40'),
(11, 1, 'Distance', '112 Kms', 4, '2020-12-10 05:29:08', '2020-12-10 05:29:08'),
(12, 1, 'Base Camp', 'Everest Base camp', 5, '2020-12-10 05:29:32', '2020-12-10 05:29:32'),
(13, 2, 'Duration', '13 Days', 1, '2020-12-10 05:34:17', '2020-12-10 05:34:17'),
(14, 2, 'Activities', '10 days trek', 2, '2020-12-10 05:34:37', '2020-12-10 05:34:37'),
(15, 2, 'Altitude', '4130 m (13549 feet)', 3, '2020-12-10 05:35:12', '2020-12-10 05:35:12'),
(16, 2, 'Distance', '88 Kms', 4, '2020-12-10 05:36:16', '2020-12-10 05:36:16'),
(17, 1, 'Base Camp', 'Phokara', 5, '2020-12-10 05:36:30', '2020-12-10 05:36:30'),
(19, 3, 'Activities', '9 days trek', 2, '2020-12-10 05:37:45', '2020-12-10 05:37:45'),
(20, 3, 'Altitude', '5537 m (18166 feet)', 3, '2020-12-10 05:38:37', '2020-12-10 05:38:37'),
(21, 3, 'Base Camp', 'Gokyo Valley', 4, '2020-12-10 05:39:10', '2020-12-10 05:39:10'),
(23, 4, 'Activities', '5 days trek', 2, '2020-12-10 05:41:23', '2020-12-10 05:41:23'),
(24, 3, 'Duration', '12 Days', 1, '2020-12-10 05:42:05', '2020-12-10 05:42:05'),
(25, 4, 'Duration', '7 Days', 1, '2020-12-10 05:42:33', '2020-12-10 05:42:33'),
(26, 4, 'Altitude', '3642 m (11950 feet)', 3, '2020-12-10 05:44:51', '2020-12-10 05:44:51'),
(27, 4, 'Distance', '70 Kms', 4, '2020-12-10 05:45:41', '2020-12-10 05:45:41'),
(28, 4, 'Base Camp', 'Nagruni', 5, '2020-12-10 05:47:24', '2020-12-10 05:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `thrill_operators`
--

CREATE TABLE `thrill_operators` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL,
  `type` int NOT NULL COMMENT '1- OWN ,2 - CURATED ,3- ADDONS',
  `primary_contact_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secondary_contact_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `primary_contact_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secondary_contact_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `primary_contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secondary_contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thrill_zone_id` bigint UNSIGNED DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thrill_operators`
--

INSERT INTO `thrill_operators` (`id`, `name`, `description`, `active_status`, `type`, `primary_contact_name`, `secondary_contact_name`, `primary_contact_phone`, `secondary_contact_phone`, `primary_contact_email`, `secondary_contact_email`, `thrill_zone_id`, `priority`, `created_at`, `updated_at`) VALUES
(1, '14 Peak Adventures', '14 peak adventures, kathmandu', 1, 2, 'Lakpa Sherpa', 'Pemba Sherpa', '+9779869532709', '+9779803908833', 'adventure14peaks@gmail.com', 'pemba8848m@gmail.com', 1, 1, '2020-11-24 18:13:40', '2020-11-24 18:13:40'),
(2, 'AVKC TRAVELS', 'Hampta pass', 1, 2, 'Vamsi Krishna', 'Vamsi', '6304432084', '201596006', 'vamsi@aclientz.com', 'avinenivamsikrishna@gmail.com', 2, 2, '2020-11-27 17:03:52', '2020-11-27 17:03:52'),
(3, 'AVKC TRAVELS', 'Annapurna trek', 1, 2, 'Vamsi Krishna', 'Vamsi', '6304432084', '2015960006', 'vamsi@aclientz.com', 'avinenivamsikrishna@gmail.com', 3, 3, '2020-11-27 17:04:49', '2020-11-27 17:04:49'),
(4, 'AVKC TRAVELS', 'NULL', 1, 2, 'Vamsi Krishna', 'Vamsi', '6304432084', '1989947146', 'vamsi@aclientz.com', 'avinenivamsikrishna@gmail.com', 4, 2, '2020-12-06 15:16:44', '2020-12-06 15:16:44'),
(5, 'AVKC TRAVELS', 'null', 1, 2, 'Vamsi Krishna', 'Vamsi', '6304432084', '7989947146', 'vamsi@aclientz.com', 'avinenivamsikrishna@gmail.com', 5, 2, '2020-12-06 15:37:05', '2020-12-06 15:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `thrill_zones`
--

CREATE TABLE `thrill_zones` (
  `id` bigint UNSIGNED NOT NULL,
  `zone_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zone_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `zone_country` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thrill_zones`
--

INSERT INTO `thrill_zones` (`id`, `zone_code`, `zone_description`, `zone_country`, `created_at`, `updated_at`) VALUES
(1, 'NEP01', 'Everest Base Camp', 153, '2020-11-24 18:10:25', '2020-11-24 18:10:25'),
(2, 'HAP001', 'Hampta pass', 101, '2020-11-27 17:01:30', '2020-11-27 17:01:30'),
(3, 'ANP001', 'Annapurna Trek', 101, '2020-11-27 17:02:03', '2020-11-27 17:02:03'),
(4, 'GOK01', 'Gokyo Valley', 153, '2020-12-06 15:14:42', '2020-12-06 15:14:42'),
(5, 'CHK01', 'Chanderkhani Pass Trek', 101, '2020-12-06 15:36:19', '2020-12-06 15:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `security_question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `security_answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role_id`, `first_name`, `last_name`, `dob`, `country`, `security_question`, `security_answer`, `google_id`, `twitter_id`, `facebook_id`) VALUES
(2, 'Yogesh Periyasamy', 'periyasamy@royalthrills.com', NULL, '$2y$10$ELzeNbIVqB3vUPjvuyoKYeq1XMc0gIWuH2HRucwjtGrWHshuw9syW', NULL, NULL, 'aAkK5ZGpGQgkFt7Vdhlew45DaDM3b0Fxssqk7xq6EMDxaEw8M1IF3NAgZffM', NULL, NULL, '2020-11-21 11:39:22', '2020-11-24 10:36:12', 1, 'Yogesh Periyasamy', 'Yogesh Periyasamy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Prashanth Ranganathan', 'prashanth@royalthrills.com', NULL, '$2y$10$pVmfddr7lNm3nNjS7XeDBOSPdL3M1Duns.2xAPLIwfvG5UZrFQ6aS', NULL, NULL, 'G2sXibcOg2rucF1hEHDzTyho6ZqgtLJDC8M9V61xc3tm4MuCZN0rXsKFtxMH', NULL, NULL, '2020-11-23 20:58:40', '2020-11-25 12:35:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'dylondickson', 'dylondickson5+100@gmail.com', NULL, '$2y$10$pgfpCvWGescbbxa44MJ3yOSIEaFIGxhDyW.Zulmp4J3JzHskoLv1q', NULL, NULL, NULL, NULL, NULL, '2020-11-23 21:25:33', '2020-11-23 21:25:33', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Vamsi', 'vamsi@aclientz.com', NULL, '$2y$10$SdAsmR54cn.sFxMbPHjR.e7hxH1KxjC48KzIP2YPToDohim70USDm', NULL, NULL, NULL, NULL, NULL, '2020-11-23 21:26:04', '2020-11-23 21:26:04', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Vishnuvardhini', 'vishnuvardhini@royalthrills.com', NULL, '$2y$10$P5KRDjv4MHjVLSnUm/IGM.YdgpiPonrSONdbZrB3GJGToh3iVQX1m', NULL, NULL, NULL, NULL, NULL, '2020-11-23 21:27:34', '2020-11-23 21:27:34', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Bala', 'siva@royalthrills.com', NULL, '$2y$10$IxVEj0b0A.OWfwsqHiMvbusYWP15zFUjK3o6qfcT5ccAeY9sklDAG', NULL, NULL, NULL, NULL, NULL, '2020-11-23 21:28:10', '2020-11-23 21:28:10', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Keith Martin', 'laravelexpertise@gmail.com', NULL, '$2y$10$B0vZa6h6e2bYOPfK0X0yBezopiNVaDfom/57plsY0/ftN8Z0w3/tu', NULL, NULL, NULL, NULL, NULL, '2020-11-26 05:56:11', '2020-11-26 05:56:11', NULL, 'Keith', 'Martin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Dylon Dickson', 'dylondickson5@gmail.com', NULL, '$2y$10$cMQjNWjcMTNNQSGG59sAduVTLCSQenM3x5DPXiqMmBjb02UjL.6.G', NULL, NULL, NULL, NULL, NULL, '2020-11-26 05:56:47', '2020-11-26 05:56:47', NULL, 'Dylon', 'Dickson', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Arun', 'dharmaraj@royalthrills.com', NULL, '$2y$10$dii0qdb1HCZCQ9DWCTwVYugjB74IuqaNoALhnk7jgEvOpPYymmdkW', NULL, NULL, NULL, NULL, NULL, '2020-12-01 12:12:49', '2020-12-01 12:12:49', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'vardhini', 'vishnuvardhini+1@royalthrills.com', NULL, '$2y$10$.mI9q.mdD0QeAwllbrm83O/gn5NGRkJu97TGAxcWLCBGDOrMdhfvq', NULL, NULL, NULL, NULL, NULL, '2020-12-06 12:30:50', '2020-12-06 12:30:50', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Yogesh Periyasamy', 'yogeshperiyasamy1@gmail.com', NULL, '$2y$10$x.mG3aAcqk98GosnkI5r3.6FmFEq52XsH3GZGFmPLQfHJib5cMt3O', NULL, NULL, NULL, NULL, NULL, '2020-12-13 11:18:28', '2020-12-13 11:18:28', NULL, 'Yogesh', 'Periyasamy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Vamsi Avineni', 'avkc@gmail.com', NULL, '$2y$10$78LFUx0pXe4NJk8MqlKEp.WXwaR9sJt1VyHHOXKJ8YibXdWQkmTC.', NULL, NULL, NULL, NULL, NULL, '2020-12-15 19:04:49', '2020-12-15 19:04:49', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_adventures`
--
ALTER TABLE `addon_adventures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_operator`
--
ALTER TABLE `addon_operator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_reactions`
--
ALTER TABLE `blog_reactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `display_text`
--
ALTER TABLE `display_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_slider`
--
ALTER TABLE `home_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itinerary_days`
--
ALTER TABLE `itinerary_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itinerary_days_detail`
--
ALTER TABLE `itinerary_days_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_types`
--
ALTER TABLE `offer_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thrills`
--
ALTER TABLE `thrills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thrills_info`
--
ALTER TABLE `thrills_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thrill_adventures`
--
ALTER TABLE `thrill_adventures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thrill_attachments`
--
ALTER TABLE `thrill_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thrill_features`
--
ALTER TABLE `thrill_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thrill_operators`
--
ALTER TABLE `thrill_operators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thrill_operators_thrill_zone_id_foreign` (`thrill_zone_id`);

--
-- Indexes for table `thrill_zones`
--
ALTER TABLE `thrill_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addon_adventures`
--
ALTER TABLE `addon_adventures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addon_operator`
--
ALTER TABLE `addon_operator`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_reactions`
--
ALTER TABLE `blog_reactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `display_text`
--
ALTER TABLE `display_text`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_slider`
--
ALTER TABLE `home_slider`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `itinerary`
--
ALTER TABLE `itinerary`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `itinerary_days`
--
ALTER TABLE `itinerary_days`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `itinerary_days_detail`
--
ALTER TABLE `itinerary_days_detail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offer_types`
--
ALTER TABLE `offer_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thrills`
--
ALTER TABLE `thrills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `thrills_info`
--
ALTER TABLE `thrills_info`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `thrill_adventures`
--
ALTER TABLE `thrill_adventures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thrill_attachments`
--
ALTER TABLE `thrill_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `thrill_features`
--
ALTER TABLE `thrill_features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `thrill_operators`
--
ALTER TABLE `thrill_operators`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `thrill_zones`
--
ALTER TABLE `thrill_zones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `thrill_operators`
--
ALTER TABLE `thrill_operators`
  ADD CONSTRAINT `thrill_operators_thrill_zone_id_foreign` FOREIGN KEY (`thrill_zone_id`) REFERENCES `thrill_zones` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
