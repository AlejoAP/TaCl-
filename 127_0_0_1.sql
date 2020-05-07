-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 07 mai 2020 à 10:29
-- Version du serveur :  5.7.26
-- Version de PHP :  7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `consulting`
--
CREATE DATABASE IF NOT EXISTS `consulting` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `consulting`;
--
-- Base de données :  `gestion`
--
CREATE DATABASE IF NOT EXISTS `gestion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion`;

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `numRue` int(50) NOT NULL,
  `nomRue` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `cp` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `numTel` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Base de données :  `logement`
--
CREATE DATABASE IF NOT EXISTS `logement` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `logement`;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `usu_user` varchar(50) NOT NULL,
  `usu_password` varchar(12) NOT NULL,
  `usu_prenom` varchar(50) NOT NULL,
  `usu_nom` varchar(50) NOT NULL,
  PRIMARY KEY (`usu_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`usu_user`, `usu_password`, `usu_prenom`, `usu_nom`) VALUES
('aroncal@gmail.com', '12345678', 'Edgar', 'Roncal Tafur'),
('egarcia@outlook.com', 'eduardo2019', 'Eduardo', 'Garcia Lopez'),
('mromero@gmail.com', 'melina2019', 'Melina', 'Romero Torres');
--
-- Base de données :  `masuperagence`
--
CREATE DATABASE IF NOT EXISTS `masuperagence` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `masuperagence`;

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190906112742', '2019-09-06 11:35:45'),
('20190907041408', '2019-09-07 04:14:55'),
('20191011132701', '2019-10-11 13:35:59'),
('20191115110150', '2019-11-15 11:07:05'),
('20191118122032', '2019-11-18 12:23:54'),
('20191220123949', '2019-12-20 12:44:17');

-- --------------------------------------------------------

--
-- Structure de la table `option_property`
--

DROP TABLE IF EXISTS `option_property`;
CREATE TABLE IF NOT EXISTS `option_property` (
  `option_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  PRIMARY KEY (`option_id`,`property_id`),
  KEY `IDX_AB856D7AA7C41D6F` (`option_id`),
  KEY `IDX_AB856D7A549213EC` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `surface` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `heat` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `title`, `description`, `surface`, `rooms`, `bedrooms`, `floor`, `price`, `heat`, `city`, `addresse`, `postal_code`, `sold`, `created_at`, `filename`, `updated_at`) VALUES
(13, 'Maison Raymondnec', 'Vous aurez simplement à poser vos bagages car vous disposerez d\'une location totalement meublée et équipée!!!', 45, 2, 1, 15, 76, 0, 'Dupuis-sur-Moreno', '13, impasse Philippe Perez68 415 Raymondnec', '52641', 0, '2019-10-19 06:46:00', '5e749b2d435d7625604847.jpg', '2020-03-20 10:30:04'),
(15, 'Maison Hubertnec', 'Qui laudantium omnis est placeat nobis dolores. Rerum modi iste odit quo ut. Non iste consectetur dolorum nesciunt velit molestiae consectetur est.', 18, 112, 8, 2, 143, 0, 'Georges', '4, place de Coste99 459 Hubertnec', '91156', 0, '2019-10-19 06:46:00', '', NULL),
(17, 'Maison Collin', 'Ea nobis maiores fugit provident tempora in non. In quam eius adipisci voluptas ex incidunt id. Alias aut corporis dolorem.', 2, 170, 4, 3, 51, 1, 'Benard-sur-Marie', '357, rue Blot\n80866 Collin', '03045', 0, '2019-10-19 06:46:49', '', NULL),
(18, 'Maison Descamps-sur-Perret', 'Laborum quia reprehenderit modi ut sit. Placeat autem id tempore voluptatem voluptatem assumenda saepe. Iure voluptatem ullam ut est voluptatem nisi.', 1, 97, 4, 8, 75, 0, 'Robin', '41, chemin de Fouquet\n48 835 Descamps-sur-Perret', '33 886', 0, '2019-10-19 06:46:49', '', NULL),
(19, 'Maison Pruvost', 'Quaerat vel provident nostrum iure et adipisci et. Mollitia consequuntur consequatur natus qui suscipit voluptas. Enim commodi dolor doloremque velit debitis.', 2, 57, 9, 11, 45, 0, 'Hebert', '55, rue de Marechal\n79 831 Pruvost', '76 051', 0, '2019-10-19 06:46:49', '', NULL),
(21, 'Maison Gonzalez-sur-Dufour', 'In cum delectus sed. Saepe et distinctio aut. Aut non magni quasi beatae aliquid minima.', 1, 284, 6, 6, 61, 0, 'DelahayeVille', '35, place de Lombard\n19288 Gonzalez-sur-Dufour', '06 092', 0, '2019-10-19 06:46:49', '', NULL),
(22, 'Maison Fernandez', 'Beatae maiores dolorum amet consequuntur occaecati incidunt. Tempora impedit qui non incidunt. Autem porro debitis ipsam sit quia debitis.', 1, 61, 5, 14, 46, 0, 'Roux-les-Bains', '59, avenue Amélie Ferrand\n91 938 Fernandez', '78039', 0, '2019-10-19 06:46:49', '', NULL),
(23, 'Maison Collet', 'Nihil ratione optio ipsa necessitatibus corporis et. Sed soluta ducimus et quos. Quibusdam saepe aliquam neque aut consequatur.', 1, 153, 8, 2, 81, 1, 'Poirier', '8, chemin de Guilbert\n83725 Collet', '57917', 0, '2019-10-19 06:46:49', '', NULL),
(24, 'Maison Barbier', 'Earum omnis ipsum maiores nisi beatae quis voluptate. Nobis est corrupti dignissimos eum. Rerum totam sequi odio nostrum magnam sapiente iure sed.', 2, 312, 7, 13, 98, 1, 'Pottier-sur-Mer', '6, impasse Franck Poirier\n71 623 Barbier', '87 192', 0, '2019-10-19 06:46:49', '', NULL),
(25, 'natus accusamus eius', 'Quae voluptates odit hic reprehenderit laudantium quisquam. Eius unde consequuntur voluptas consequuntur dolores repellendus ut. Cum ab rerum quisquam autem.', 1, 184, 5, 14, 930450, 0, 'DupreVille', '68, rue Claire Levy\n73 922 Bourdon-sur-Guyot', '08965', 0, '2019-10-19 06:46:49', '', NULL),
(26, 'eaque molestiae asperiores', 'Omnis fugit occaecati odit minima autem et dolorum. Rerum quia autem nulla soluta ut ratione. Sed eius maxime magnam harum.', 2, 248, 9, 9, 538727, 1, 'Bodin-sur-Samson', '87, impasse Lebrun\n28 333 Evrard-sur-Mer', '40 476', 0, '2019-10-19 06:46:49', '', NULL),
(27, 'eveniet laudantium in', 'Aut qui omnis beatae quasi sint iusto. Omnis consequatur aut eum alias vel ipsum sunt. Eos deserunt qui voluptas sint quam itaque laborum.', 1, 225, 8, 6, 124194, 0, 'Hoareau', '5, rue Turpin\n78560 Perez', '32 834', 0, '2019-10-19 06:46:49', '', NULL),
(28, 'debitis eos quis', 'Nihil quaerat et unde voluptas. Labore accusantium qui in voluptates quasi earum necessitatibus. Dolores tempora ipsam quis temporibus qui ea labore.', 1, 132, 2, 0, 397362, 0, 'Juliennec', '7, rue Laurent\n36 615 Pereiradan', '09952', 0, '2019-10-19 06:46:49', '', NULL),
(29, 'sed quos magni', 'Quam culpa deserunt atque maxime nihil. Cupiditate minima mollitia qui odio sit. Modi esse quas iusto vitae.', 30, 276, 1, 3, 626833, 0, 'Ribeiro-les-Bains', 'place Robin10770 FerreiraBourg', '87656', 0, '2019-10-19 06:46:49', '', NULL),
(30, 'et expedita ut', 'Enim voluptas iusto unde vel aut quibusdam reiciendis omnis. Qui quae nobis nihil est quia. Aperiam dolore est illum deserunt voluptate nostrum expedita quia.', 1, 253, 4, 2, 882211, 1, 'Raymond-sur-Mer', '34, rue de Rousset\n56 578 Martineau-sur-Charrier', '35 424', 0, '2019-10-19 06:46:49', '', NULL),
(31, 'dolorem sed dolor', 'Animi rem sit explicabo. Optio omnis temporibus quae aut. Beatae odio totam reprehenderit.', 1, 95, 3, 10, 705183, 1, 'Lemaitredan', 'rue Etienne\n23516 Rocher', '56765', 0, '2019-10-19 06:46:49', '', NULL),
(32, 'vel suscipit aliquam', 'Eum corrupti et quam aut voluptates ut. Sit placeat facere fugiat dicta distinctio. Iste illum quidem est est neque deserunt.', 3, 162, 7, 9, 952778, 1, 'Munoz', '271, boulevard de Leduc\n09 447 Ruizdan', '75174', 0, '2019-10-19 06:46:49', '', NULL),
(33, 'nostrum minus nisi', 'Ea est doloribus ut cumque perspiciatis error eum. Aut dolorem quo modi distinctio iusto rerum. Et asperiores nostrum vel omnis nihil.', 1, 174, 1, 13, 299379, 0, 'GuillouVille', '81, chemin Dominique Salmon\n48041 Vallee-sur-Germain', '90 682', 0, '2019-10-19 06:46:49', '', NULL),
(34, 'provident vitae unde', 'Aut libero voluptas assumenda sed. A ex perferendis quis. Ab officiis exercitationem tempora et aut adipisci asperiores omnis.', 3, 235, 5, 11, 256663, 0, 'WagnerVille', '95, avenue Dufour\n14 424 Launaynec', '63 806', 0, '2019-10-19 06:46:49', '', NULL),
(35, 'iure sunt tenetur', 'Omnis et non ut hic aut magnam iusto. Quidem enim eum optio neque. Amet dolores iusto voluptatem nihil neque nihil optio.', 2, 54, 1, 5, 909483, 1, 'Maillet', '30, rue de Leroux\n00203 Morvan', '89854', 0, '2019-10-19 06:46:49', '', NULL),
(36, 'unde voluptatem soluta', 'Doloremque porro dolore modi mollitia. Delectus eveniet ut dolorem qui. Voluptatibus dolores non voluptatem rem officia beatae repellat.', 2, 22, 7, 0, 153328, 1, 'Sanchez', '15, place Guibert\n17 492 Olivier-sur-Tanguy', '70400', 0, '2019-10-19 06:46:49', '', NULL),
(37, 'qui quae sequi', 'Ducimus quos fugiat repudiandae quibusdam ab quod in. Eveniet non eveniet ipsam laudantium harum minima ut molestias. Autem magni vero similique.', 3, 246, 6, 2, 798530, 1, 'ChauvinVille', '1, chemin de Fontaine\n32 415 Gros', '83370', 0, '2019-10-19 06:46:49', '', NULL),
(38, 'et et illo', 'Eaque necessitatibus et voluptates quos vitae repudiandae. Sit inventore voluptas vel ut numquam non deleniti. Nisi ratione sit odit est ea sunt id.', 2, 126, 3, 6, 706783, 0, 'Legros', '9, rue Yves Philippe\n17596 Dupont', '19 156', 0, '2019-10-19 06:46:49', '', NULL),
(39, 'minima aut dignissimos', 'Earum aut iste fuga rerum. Ut totam sunt sequi voluptatem. Asperiores voluptas ratione doloremque facilis laboriosam quo.', 3, 62, 9, 13, 600776, 1, 'Pons-les-Bains', 'boulevard de Sanchez\n23193 CollinBourg', '56 730', 0, '2019-10-19 06:46:49', '', NULL),
(40, 'laborum repudiandae quibusdam', 'Quia tempora tenetur est ut esse debitis. Sed alias accusamus soluta dolorem minima. Rem et laborum maiores quia ratione voluptates reiciendis autem.', 1, 188, 5, 3, 590451, 0, 'Lebretondan', '9, rue Anne Leroux\n91678 Gerard-sur-Thomas', '65 343', 0, '2019-10-19 06:46:49', '', NULL),
(41, 'eum in modi', 'Facilis id voluptatem porro nostrum aut. Odit et est beatae optio eius ut. Voluptatem laborum sunt impedit nemo.', 3, 209, 7, 4, 869816, 1, 'Brunet-la-Forêt', 'boulevard Mathilde Diaz\n07 949 Huet', '94 624', 0, '2019-10-19 06:46:49', '', NULL),
(42, 'voluptatem maxime ut', 'Atque esse laborum et assumenda. Nam quam eos impedit repellendus. Eveniet modi et eum quis.', 3, 257, 7, 9, 157761, 1, 'Ferreira-sur-Normand', '64, impasse Adèle Etienne\n81 918 Girard', '48 588', 0, '2019-10-19 06:46:49', '', NULL),
(43, 'alias iusto in', 'In distinctio voluptatem voluptatem corporis a quaerat. Iste est sed temporibus nihil occaecati. Exercitationem ullam ab neque cupiditate impedit ipsum.', 1, 263, 4, 1, 655856, 0, 'Laurent', '746, rue Robin\n87488 Mary-sur-Leduc', '42757', 0, '2019-10-19 06:46:49', '', NULL),
(44, 'quam dolore amet', 'Quaerat saepe qui dolorum tempora rerum qui. Eveniet expedita deserunt at quam. Ea quidem minus nulla eum.', 3, 164, 5, 13, 582089, 0, 'Caron', '83, chemin Paul Normand\n50836 AlexandreBourg', '29 324', 0, '2019-10-19 06:46:49', '', NULL),
(45, 'id possimus mollitia', 'Omnis non et provident cupiditate et. Labore aut in voluptatem quis rerum. Id alias pariatur optio eum tempora ut.', 1, 321, 5, 9, 265269, 0, 'LelievreVille', '17, impasse Jean Louis\n45416 Delmas-sur-Le Roux', '98 411', 0, '2019-10-19 06:46:49', '', NULL),
(46, 'sapiente quia quae', 'Dolores temporibus qui quis adipisci totam ipsa ea dolore. Labore reiciendis suscipit magni harum repellat incidunt possimus. Ipsum et omnis laborum repellendus ullam doloribus.', 1, 170, 2, 2, 468733, 0, 'Verdier-les-Bains', '1, boulevard Joubert\n52004 Pineau', '59 880', 0, '2019-10-19 06:46:49', '', NULL),
(47, 'velit labore qui', 'Voluptatibus at iure delectus repellat dolorem. Incidunt non recusandae odio. Et enim et doloribus cum dolore quia facilis.', 2, 172, 1, 1, 121181, 0, 'Durand-la-Forêt', '5, avenue Étienne Martin\n79 042 Gay', '60 685', 0, '2019-10-19 06:46:49', '', NULL),
(48, 'quasi facilis deleniti', 'Mollitia quod cupiditate eum facilis voluptatem dicta et. Qui ratione minima doloribus quis. Voluptatem et corporis ut aut vero.', 3, 89, 4, 12, 932533, 0, 'Le Goff', '6, place Gauthier\n90483 Diasnec', '42569', 0, '2019-10-19 06:46:49', '', NULL),
(49, 'incidunt reiciendis est', 'Ut et officiis inventore velit consectetur rerum. Libero dicta aut dolores consequatur enim deleniti. Quo numquam sit temporibus quo et.', 1, 27, 2, 6, 130539, 1, 'Teixeira', 'impasse Nath Diallo\n27 182 DialloVille', '33388', 0, '2019-10-19 06:46:49', '', NULL),
(50, 'cum eum illum', 'Excepturi nihil id dolorum facere et quis sint. Optio repellendus distinctio eum sunt. Quia animi nemo quis totam velit.', 1, 240, 5, 2, 377559, 0, 'Lamy-la-Forêt', '59, rue Marcelle Lemonnier\n43300 Robin', '03 425', 0, '2019-10-19 06:46:49', '', NULL),
(51, 'voluptatem qui corrupti', 'Nobis molestiae magni nemo voluptatem maiores facere autem ex. Fugit laborum laborum accusamus excepturi. Fuga dolorem et consequatur non.', 1, 283, 6, 1, 526515, 0, 'Hubert-sur-Camus', '301, place Georges Merle\n17 410 Gomesnec', '17108', 0, '2019-10-19 06:46:49', '', NULL),
(52, 'qui quae culpa', 'Consequatur sunt nihil id voluptas hic similique. Ea accusamus iste cumque est. Nostrum ad quod animi voluptas culpa.', 3, 79, 6, 5, 526859, 0, 'Morel', '74, place Ferreira\n55009 Lecoq-les-Bains', '53 736', 0, '2019-10-19 06:46:49', '', NULL),
(53, 'quos non tempora', 'Fugiat non ut aut tempora est. Sequi quaerat laboriosam molestiae adipisci sit. Quibusdam laudantium perferendis animi.', 1, 103, 7, 3, 158200, 1, 'Riviere', '43, place de Buisson\n58803 Da Costa-sur-Mer', '24 007', 0, '2019-10-19 06:46:49', '', NULL),
(54, 'magnam est vero', 'Officiis enim reprehenderit sed illo velit qui. Quis amet debitis temporibus ab sit. Odit laudantium temporibus beatae qui.', 2, 69, 6, 11, 648159, 1, 'Peron', '6, chemin Édouard Delahaye\n78 788 Dijoux', '87677', 0, '2019-10-19 06:46:49', '', NULL),
(55, 'quia est animi', 'Consequatur inventore nihil sed nihil. Quasi corporis cupiditate totam autem. Similique et nobis dolorum voluptates.', 1, 77, 6, 8, 992870, 1, 'GomesBourg', 'chemin Morel\n39421 Coste', '86793', 0, '2019-10-19 06:46:49', '', NULL),
(56, 'pariatur hic consequuntur', 'Tenetur magnam laborum ut qui sed alias eum. Beatae reiciendis aliquid temporibus dolor fugiat dolorum. Laborum fugiat recusandae laboriosam debitis assumenda ratione.', 3, 144, 7, 8, 250234, 1, 'Gomes', '30, rue Anouk Michaud\n66 110 Potier-la-Forêt', '76 822', 0, '2019-10-19 06:46:49', '', NULL),
(57, 'ratione quis cum', 'Qui id minus laborum odio. Optio vel quibusdam commodi consequatur. Non vitae aut et et quo et.', 1, 216, 6, 2, 139128, 0, 'Marionboeuf', '82, chemin de Jacob\n25 469 Bourgeois', '77291', 0, '2019-10-19 06:46:49', '', NULL),
(58, 'animi suscipit nisi', 'Corrupti nobis est nisi reprehenderit nam et rerum. Temporibus porro rerum sed recusandae possimus. Totam ad maiores facere soluta.', 2, 290, 6, 13, 844085, 1, 'LouisBourg', 'impasse Descamps\n00 705 Charles', '07 797', 0, '2019-10-19 06:46:49', '', NULL),
(59, 'nam dolore labore', 'Iusto odio at omnis laboriosam. Sequi sapiente aspernatur impedit ullam quia. Id sed voluptate et ex debitis repellendus.', 1, 314, 8, 12, 726987, 1, 'LacroixBourg', 'avenue Anouk Gregoire\n09490 Renaudboeuf', '77173', 0, '2019-10-19 06:46:49', '', NULL),
(60, 'sit architecto ut', 'Reiciendis ut accusamus consectetur non. Omnis sed cupiditate fuga. Dolor debitis illum totam magni.', 1, 61, 9, 3, 325327, 0, 'Pineau-sur-Prevost', '8, boulevard André Toussaint\n86249 Dias', '38 073', 0, '2019-10-19 06:46:49', '', NULL),
(61, 'sint debitis dignissimos', 'Ut aliquam accusantium neque incidunt quia aut voluptatem. Error numquam tempora repudiandae aspernatur nobis quasi odio. Voluptas eum quam soluta iste.', 3, 281, 3, 6, 767239, 1, 'Guichard', 'rue de Bouvier\n18820 Moreau', '28 116', 0, '2019-10-19 06:46:49', '', NULL),
(62, 'molestias accusantium nisi', 'Maiores aut aut officiis exercitationem. Necessitatibus autem rerum et. Corporis numquam ex exercitationem.', 1, 330, 5, 2, 407224, 0, 'BertrandBourg', '864, place Delmas\n32993 Blot', '23676', 0, '2019-10-19 06:46:49', '', NULL),
(63, 'consequatur voluptas provident', 'Nihil sint illo dolorem magnam amet ipsum illo. Vel vel non quia laborum architecto ea. Necessitatibus non ut nesciunt sunt dolor repellat maxime.', 1, 255, 2, 11, 216051, 1, 'Pasquier', '5, rue Michel Carre\n55 079 Martel', '62 833', 0, '2019-10-19 06:46:49', '', NULL),
(64, 'sint deleniti tempore', 'Voluptates consequatur veniam perferendis recusandae voluptatem quasi. Quam quisquam dolorem fugit odit deleniti quia veritatis. Sed consequuntur perferendis laboriosam molestiae incidunt sit.', 2, 301, 3, 7, 261836, 1, 'Cohen-sur-Lebrun', '5, chemin Corinne Devaux\n48 185 RibeiroVille', '28393', 0, '2019-10-19 06:46:49', '', NULL),
(65, 'fuga nostrum quos', 'Unde velit libero aut sapiente aut magnam. Sint tenetur nisi quae deleniti eum. Omnis non neque autem corporis vel saepe nobis maiores.', 3, 350, 9, 1, 218138, 1, 'Danielboeuf', '66, chemin de Mercier\n05 898 Leger-la-Forêt', '12 786', 0, '2019-10-19 06:46:49', '', NULL),
(66, 'inventore nobis excepturi', 'Mollitia inventore voluptatum culpa esse maiores. Aliquid explicabo voluptatum expedita porro. Quisquam laborum magnam quaerat porro est perferendis similique.', 3, 170, 4, 13, 965772, 0, 'Marechal-sur-Bourgeois', '81, boulevard de Hernandez\n31490 Perrotdan', '15125', 0, '2019-10-19 06:46:49', '', NULL),
(67, 'quidem quos eum', 'Sint consequatur consequatur et. Fugit sed explicabo blanditiis expedita doloremque. Qui ut iusto harum.', 1, 305, 7, 9, 550187, 1, 'Marchal-sur-Lecoq', '63, boulevard Simone Dupont\n48 776 Barbier', '86775', 0, '2019-10-19 06:46:49', '', NULL),
(68, 'nihil voluptas et', 'Quaerat quos sit dolorum explicabo. Et id cupiditate et laudantium adipisci consectetur illo. Cum voluptatem odit dignissimos magnam voluptatum fugit.', 3, 59, 2, 12, 246336, 0, 'Fischer-sur-Lopez', 'boulevard Margaux Boucher\n19 153 Delaunay', '60390', 0, '2019-10-19 06:46:49', '', NULL),
(69, 'repudiandae aliquam sunt', 'Dolore quas sint voluptatem neque pariatur laudantium cum. Temporibus non nisi et placeat ut. Mollitia maiores magnam est harum quo molestiae porro.', 1, 181, 2, 0, 998830, 1, 'Becker', 'boulevard Clerc\n88 375 Faivrenec', '94199', 0, '2019-10-19 06:46:49', '', NULL),
(70, 'voluptas quaerat et', 'Saepe ut dolores voluptatem cupiditate libero ab eos. Nulla explicabo in nam. Nemo consequuntur dicta accusamus ducimus itaque quod velit.', 2, 303, 3, 11, 386512, 0, 'Vidal', '67, avenue de Blot\n99900 Courtois', '94 030', 0, '2019-10-19 06:46:49', '', NULL),
(71, 'cupiditate dolorem vel', 'Illo quidem et sint consequatur non aliquid quos. Harum et dolor sapiente dolore. Voluptas quis voluptatem animi voluptate recusandae.', 3, 320, 3, 12, 549366, 0, 'Lecomte', '814, rue Olivie Pinto\n18 019 TessierBourg', '28579', 0, '2019-10-19 06:46:49', '', NULL),
(72, 'est doloremque vitae', 'Voluptatem est quia totam aut animi accusantium. Sunt sed quia et quibusdam eligendi consectetur animi ab. Blanditiis earum iste voluptate maxime.', 1, 100, 5, 5, 405375, 1, 'Lemaire', 'rue de Henry\n45230 Masse', '57139', 0, '2019-10-19 06:46:49', '', NULL),
(73, 'voluptatem placeat quia', 'Dignissimos dolore dolor cum qui nisi et veritatis. Accusamus in neque nihil iste debitis. Quo autem et sint ut.', 3, 237, 8, 2, 932848, 1, 'Guillaume', 'avenue de Voisin\n36 128 Turpinnec', '07 742', 0, '2019-10-19 06:46:49', '', NULL),
(74, 'consequatur incidunt quasi', 'Soluta esse omnis temporibus sequi. Molestiae est voluptatem distinctio aut. Ducimus vitae omnis officiis sit.', 3, 38, 1, 9, 253121, 1, 'Roux-sur-Mer', '912, avenue de Lebreton\n40554 Pascal', '27 043', 0, '2019-10-19 06:46:49', '', NULL),
(75, 'non aut et', 'Deleniti aut ut inventore esse enim non. Rerum architecto asperiores eum maxime esse est est. Est et sequi dolore cumque aut asperiores.', 1, 258, 5, 9, 323455, 0, 'Henryboeuf', '18, rue Imbert\n06 826 Pages', '83080', 0, '2019-10-19 06:46:49', '', NULL),
(76, 'saepe voluptatem a', 'Libero dolor sunt non doloribus asperiores voluptatem repellendus voluptate. Ducimus dicta quos non architecto repellendus. Aliquid sed nobis veniam eligendi quidem.', 2, 107, 4, 12, 898965, 1, 'Neveu-sur-Chevalier', '91, rue Leroy\n42016 Sauvage-sur-Mer', '73793', 0, '2019-10-19 06:46:49', '', NULL),
(77, 'magnam ut earum', 'Labore est qui nisi reiciendis porro laborum eum. Cupiditate voluptas sit explicabo omnis enim veritatis mollitia. Quia enim dolorum aliquam.', 2, 187, 2, 11, 695504, 0, 'Aubert', '79, rue Moreau\n60 699 Clerc', '88872', 0, '2019-10-19 06:46:49', '', NULL),
(78, 'aut voluptas voluptates', 'Aliquid dolores et et ut. Distinctio modi vero maiores blanditiis nam nobis dignissimos est. Fugit illum blanditiis autem nemo veniam.', 1, 148, 9, 13, 508345, 0, 'SchneiderBourg', '82, impasse Marcel Maury\n17 852 Briand-sur-Mer', '39018', 0, '2019-10-19 06:46:49', '', NULL),
(79, 'consectetur voluptas expedita', 'Aut ut voluptatum non delectus doloribus porro nihil porro. Qui minus qui animi et. Dolorum et modi rerum consectetur ipsam quasi.', 1, 148, 2, 9, 523570, 0, 'FrancoisVille', '6, place de Petit\n24 908 Blin', '97 317', 0, '2019-10-19 06:46:49', '', NULL),
(80, 'esse mollitia odio', 'Exercitationem earum dicta dolorem quibusdam. Voluptatem voluptates laboriosam rem saepe nam. Voluptatem rerum sed excepturi aut.', 1, 288, 6, 11, 636812, 0, 'RenaudBourg', '451, place Rodrigues\n26 169 Schneidernec', '80 297', 0, '2019-10-19 06:46:49', '', NULL),
(81, 'fuga aut ad', 'Eligendi illum officiis hic praesentium ut molestias itaque. Rem magnam similique cum est aut necessitatibus distinctio. Et iste rerum optio dolore voluptates excepturi voluptates repudiandae.', 2, 169, 5, 6, 157446, 0, 'Bousquet', '969, rue de Gregoire\n80248 Schmitt', '89 075', 0, '2019-10-19 06:46:49', '', NULL),
(82, 'eaque voluptatem occaecati', 'Ullam adipisci autem autem consequatur. Nobis aspernatur exercitationem et. Non voluptatibus et doloremque soluta esse quae aut.', 1, 204, 5, 3, 512646, 0, 'Benoit-sur-Mer', '83, chemin Marchand\n99 673 Lebon', '53660', 0, '2019-10-19 06:46:49', '', NULL),
(83, 'nisi dolorem quia', 'Consequatur voluptatibus quaerat dignissimos velit saepe eveniet vel ducimus. Facere tempora occaecati voluptatem. Soluta quibusdam alias animi aut omnis ut aut illum.', 1, 95, 4, 10, 400018, 1, 'Lamy', 'rue Rousset\n59 398 Rey-sur-Foucher', '28 648', 0, '2019-10-19 06:46:49', '', NULL),
(84, 'aspernatur non qui', 'Mollitia qui enim id. Provident magni id et deleniti aut nulla et. Dicta repudiandae voluptas quidem deleniti voluptas.', 3, 82, 8, 3, 940117, 1, 'Rogernec', '857, chemin de Coste\n29212 BertinVille', '36276', 0, '2019-10-19 06:46:49', '', NULL),
(85, 'nulla et accusamus', 'Eius iusto et doloribus alias doloribus neque vel. Natus ut sed voluptas amet non. Atque non nostrum ut facere consequatur et facere.', 3, 160, 7, 15, 470735, 0, 'Lamy-sur-Rey', '73, boulevard Marc Jourdan\n36253 Thomas-sur-Mer', '60148', 0, '2019-10-19 06:46:49', '', NULL),
(86, 'est ea et', 'Laborum dignissimos fugiat eveniet fugit voluptatem aspernatur molestiae. Ea sed quis nihil illum unde id odio. Dolore qui voluptas consequatur culpa fugit voluptatibus.', 1, 140, 1, 13, 315031, 0, 'Lemoine', '7, impasse Antoine Marie\n88 521 Olivier', '14 629', 0, '2019-10-19 06:46:49', '', NULL),
(87, 'ex sed impedit', 'Molestias et mollitia quae. Possimus velit iusto omnis quia quia. Et quidem odit voluptatibus ea.', 1, 176, 5, 6, 541925, 1, 'Blotboeuf', '46, boulevard Dos Santos\n81 622 Renaud', '50110', 0, '2019-10-19 06:46:49', '', NULL),
(88, 'quam cumque accusamus', 'Aperiam assumenda quaerat nihil deleniti et in dolorem ut. Sunt et omnis voluptate velit beatae. Eos aut praesentium distinctio id qui ea.', 3, 53, 5, 13, 804557, 1, 'Petitjean', '2, avenue Alix Guillaume\n84 595 LeleuVille', '27045', 0, '2019-10-19 06:46:49', '', NULL),
(89, 'ut rerum laudantium', 'Officia aut quia voluptas. Sint voluptatem beatae aut quas. Et nemo perferendis illum fuga reiciendis est.', 1, 242, 6, 5, 140234, 0, 'Gosselin', '4, rue Deschamps\n86033 Jacquot-la-Forêt', '21 630', 0, '2019-10-19 06:46:49', '', NULL),
(90, 'natus doloribus dolorum', 'Et culpa culpa molestias sed rerum. Sit quis ipsum enim et et in. Aliquid ab eum omnis est in aliquam.', 2, 163, 6, 5, 590347, 1, 'Monnier', '97, avenue Frédérique Ledoux\n53 473 Roux', '13 845', 0, '2019-10-19 06:46:49', '', NULL),
(91, 'voluptas eveniet autem', 'Dolorum perferendis expedita impedit in. Et omnis magni nesciunt consequatur. Aut modi et quasi quo libero.', 3, 173, 5, 14, 438740, 1, 'Richard', '1, boulevard de Fleury\n72 184 Vidal-la-Forêt', '17885', 0, '2019-10-19 06:46:49', '', NULL),
(92, 'porro distinctio cum', 'In deleniti modi laudantium et quis ut. Ut optio odit hic qui consequatur mollitia. Amet atque accusantium nulla vel non eos.', 3, 344, 7, 11, 551520, 0, 'Leger', '29, impasse Grenier\n08 129 Mary-les-Bains', '72 043', 0, '2019-10-19 06:46:49', '', NULL),
(93, 'illum rerum expedita', 'Provident sed earum iure eaque possimus sit a quaerat. Consequatur quia non alias similique soluta est. Itaque dolorem illo ratione in.', 3, 22, 4, 11, 707383, 1, 'Lemoinedan', 'place de Jacquot\n25751 Lopes-la-Forêt', '57834', 0, '2019-10-19 06:46:49', '', NULL),
(94, 'et alias excepturi', 'Doloremque ut praesentium nobis qui accusantium aut aut. Consequatur itaque error tenetur ut ratione reiciendis rerum. Ratione animi dolorem molestiae vel enim quia.', 2, 140, 1, 15, 548489, 1, 'Roger', '68, chemin de Jacques\n98 045 Ruiz', '96 353', 0, '2019-10-19 06:46:49', '', NULL),
(95, 'earum non commodi', 'Dolores molestias accusamus sapiente repellendus ipsum aut quo. Quas voluptatem blanditiis in animi. Et reiciendis ad natus quaerat totam voluptas enim.', 2, 26, 5, 10, 906047, 1, 'Leroy', '95, place de Salmon\n05 260 Joly', '67 122', 0, '2019-10-19 06:46:49', '', NULL),
(96, 'excepturi aut ab', 'Eum rem enim odit. Et sit dolorem similique harum numquam possimus molestias omnis. Sint earum quas accusamus molestias labore voluptates alias.', 1, 51, 2, 7, 862124, 1, 'Le Goff', '76, rue Deschamps\n54 703 SimonVille', '00 116', 0, '2019-10-19 06:46:49', '', NULL),
(97, 'facere delectus recusandae', 'Rerum rerum occaecati aut ad explicabo rerum. Voluptate velit ut nisi error. Quam est omnis molestiae beatae dicta id autem earum.', 2, 37, 4, 15, 355009, 1, 'Leconte', '61, chemin Christophe Gonzalez\n89959 Gregoire', '46074', 0, '2019-10-19 06:46:49', '', NULL),
(98, 'ratione quam placeat', 'Cumque id officiis similique quo quod debitis. Consectetur quidem itaque porro eligendi non et saepe. Dolores ea porro vel tenetur exercitationem magnam iste.', 1, 69, 3, 3, 687100, 1, 'Moulin-la-Forêt', '74, boulevard Didier\n95144 Royerdan', '54933', 0, '2019-10-19 06:46:49', '', NULL),
(99, 'officiis ipsam aut', 'Quia natus est commodi repellat quis. Perspiciatis mollitia harum est et quis. Architecto consequatur qui ab accusantium.', 1, 341, 3, 6, 385858, 0, 'SanchezVille', 'avenue Adrienne Reynaud\n34651 Mercier-sur-Boutin', '01 911', 0, '2019-10-19 06:46:49', '', NULL),
(100, 'provident qui consectetur', 'Amet repudiandae autem nisi aut. Et voluptas impedit aut ut optio praesentium consequuntur. Quis dolorum ipsum consequuntur corrupti modi.', 1, 178, 9, 11, 774803, 0, 'Le Goff-sur-Chevallier', 'rue Alexandre Barre\n66030 LelievreBourg', '04 548', 0, '2019-10-19 06:46:49', '', NULL),
(101, 'molestiae provident et', 'Quos cumque et exercitationem. Sed sunt labore aut unde reprehenderit repellendus. Totam est quo consequatur.', 2, 56, 4, 9, 592271, 1, 'Georges', 'avenue Leconte\n80 074 Collet-sur-Mer', '28 206', 0, '2019-10-19 06:46:49', '', NULL),
(102, 'est praesentium omnis', 'Ut nisi odio quae magni nulla. Non saepe placeat provident fugit. Dolores nobis in corrupti et voluptate.', 3, 205, 1, 12, 797127, 1, 'Cordier', '45, boulevard Pelletier\n04186 Martydan', '93696', 0, '2019-10-19 06:46:49', '', NULL),
(103, 'explicabo odio incidunt', 'Culpa repellendus ad eveniet rem sint ut magni. Facilis rem fugiat cumque id incidunt aspernatur. Consequatur et tempora explicabo occaecati est.', 1, 238, 9, 0, 302044, 1, 'Didier', 'chemin Guichard\n09318 Leroy', '26 870', 0, '2019-10-19 06:46:49', '', NULL),
(104, 'dolore magnam odit', 'Exercitationem ut omnis consequatur vero et. Optio rerum id id est iste esse. Qui labore minima sit voluptates repellat blanditiis.', 2, 193, 5, 6, 880976, 1, 'Ollivierdan', '55, avenue Moreno\n74 760 Chretien', '99 764', 0, '2019-10-19 06:46:49', '', NULL),
(105, 'explicabo quis id', 'Iure quia perspiciatis enim ullam quo quos. Impedit quia libero consequatur voluptatum doloremque. Sunt nobis corrupti dolorum accusantium sed occaecati quia et.', 3, 152, 6, 14, 998941, 1, 'Samson-sur-Durand', '37, rue de Cohen\n17 728 Maillot', '76 378', 0, '2019-10-19 06:46:49', '', NULL),
(106, 'a fugit qui', 'Temporibus quos nesciunt mollitia illo adipisci consectetur omnis. Tenetur explicabo cupiditate repellendus quibusdam. Modi dolor non et dolorem.', 3, 254, 9, 8, 199681, 0, 'CourtoisVille', '59, place Claire Leclercq\n52 278 Sauvage-sur-Carlier', '93156', 0, '2019-10-19 06:46:49', '', NULL),
(107, 'ducimus reprehenderit natus', 'Provident quia excepturi omnis neque. Aut a est aut dolores ex. Minus doloremque sit quis ut quas.', 1, 226, 6, 5, 348024, 0, 'Foucher', '87, chemin Da Silva\n70 472 Costa-les-Bains', '52081', 0, '2019-10-19 06:46:49', '', NULL),
(108, 'fugit ut dignissimos', 'In consectetur recusandae ipsum quas. Nesciunt optio expedita eos optio asperiores eum fugit aut. Quia enim suscipit non non fugiat accusantium est.', 3, 115, 2, 2, 299848, 0, 'Francois', '14, chemin de Boyer\n35 474 Gauthierboeuf', '89 993', 0, '2019-10-19 06:46:49', '', NULL),
(109, 'amet qui harum', 'Id expedita consectetur qui autem. Consequatur veritatis velit sint rerum quia dolorem consequatur cumque. Vitae mollitia dignissimos provident animi qui et consectetur.', 2, 327, 4, 6, 855020, 0, 'Chartier', '73, rue Riviere\n10704 Fouquetnec', '01982', 0, '2019-10-19 06:46:49', '', NULL),
(110, 'et doloribus nostrum', 'Ipsa nihil rerum reiciendis. Explicabo ratione quia eligendi velit tenetur illum rerum. Vel animi ratione sed natus atque omnis qui nam.', 1, 326, 5, 3, 900146, 1, 'ColletBourg', '64, chemin Dias\n81 093 Michaudnec', '08446', 0, '2019-10-19 06:46:49', '', NULL),
(111, 'et incidunt corporis', 'Maiores quas rerum iste culpa voluptas esse nulla quo. Ipsum illo voluptatibus minus molestiae tenetur non fugit debitis. Non nisi quam perspiciatis ut quas debitis.', 2, 63, 9, 8, 395341, 1, 'BaudryBourg', '90, impasse Corinne Dumont\n53 858 Aubertboeuf', '04 397', 0, '2019-10-19 06:46:49', '', NULL),
(112, 'porro adipisci et', 'Enim architecto ut sed eos minus tenetur. Et tenetur et ea hic dolorem sint aut. Accusantium natus enim voluptate est corporis quasi rerum.', 1, 321, 4, 9, 819038, 0, 'Mace-les-Bains', '8, rue Thierry Maillet\n68 473 Marechalnec', '88268', 0, '2019-10-19 06:46:49', '', NULL),
(113, 'house1', 'super', 50, 4, 2, 1, 500000, 0, 'Barcelona', '3 rue de la castilla', '34000', 0, '2020-03-20 08:39:00', '5e74817b18d9a107104877.jpg', '2020-03-20 08:40:26');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `name`) VALUES
(1, 'Balcon'),
(2, 'Adapté PMR'),
(3, 'Ascenceur');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(3, 'demo', '$2y$12$3I.VfqCvbXLK9Y2C3eH6fubKBMe1fOseVpP2shyoHkS2VjM7G4jTO');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `option_property`
--
ALTER TABLE `option_property`
  ADD CONSTRAINT `FK_AB856D7A549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AB856D7AA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
