-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 29 Novembre 2014 à 20:19
-- Version du serveur :  5.6.20
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `musique`
--

-- --------------------------------------------------------

--
-- Structure de la table `chants`
--

CREATE TABLE IF NOT EXISTS `chants` (
`id` int(11) NOT NULL,
  `reference` varchar(10) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL,
  `auteurs` varchar(255) NOT NULL,
  `arrangement` varchar(255) NOT NULL,
  `lien` varchar(100) NOT NULL,
  `ton` varchar(10) NOT NULL,
  `tempo` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=188 ;

--
-- Contenu de la table `chants`
--

INSERT INTO `chants` (`id`, `reference`, `titre`, `original`, `auteurs`, `arrangement`, `lien`, `ton`, `tempo`, `status`) VALUES
(2, 'ABR-001v02', 'Abrite moi', 'Still', 'Reuben MORGAN', '', '', 'F', '', 'actif'),
(3, 'ACC-001v01', 'Acclamons du nord', 'South To The North', 'Martin Smith', 'Stéphane QUERY', '', 'G ', '', 'actif'),
(4, 'ACE-001v01', 'A celui qui est assis', 'To Him who sits on the throne', 'Debbye GRAAFSMA', 'JosuĂŠ ADELE', '', 'C', '', 'actif'),
(5, 'AJA-001v02', 'A Jamais', 'Forever', 'Chris TOMLIN', '', '', 'G => A ', '122', 'actif'),
(6, 'ALA-001v01', 'A l''Agneau de Dieu', '', 'Elisabeth BOURBOUZE', '', '', 'Dm', '', 'actif'),
(7, 'ALA-002v01', 'A la croix je me prosterne', 'At the cross', 'D. ZSCHECH & R.MORGAN', 'Mighty to save', '', 'E ', '70', 'actif'),
(8, 'ALA-003v01', 'A l''Agneau sur son trĂ´ne', '', 'G. Elvey / R. Sailens', 'JosuĂŠ ADELE', '', 'C ', '107', 'actif'),
(9, 'ALL-001v01', 'AllĂŠluia, ton amour est lĂ ', 'Hallelujah', 'B. BROWN & B. DOERKSEN', '', '', 'G ', '105', 'actif'),
(10, 'ALL-001v02', 'AllĂŠluia, ton amour est lĂ ', 'Hallelujah', 'B. BROWN & B. DOERKSEN', 'JosuĂŠ ADELE', '', 'G ', '105', 'actif'),
(11, 'ALL-002v01', 'AllĂŠluia', 'Agnus Dei', 'M.W. SMITH', '', '', 'A ', '72', 'actif'),
(12, 'ALL-005v01', 'Allons acclamer', 'Come, let us sing', 'Chris BOWATER', 'Guillaume REYNAUD', '', 'Em ', '110', 'actif'),
(13, 'ALL-006v01', 'AllĂŠluia', 'Hallelujah', 'Marty Sampson & Jonas Myrin', 'Hillsong - For All You''ve Done', '', 'C ', '95', 'actif'),
(14, 'ALL-007v01', 'AllĂŠluia', '-', 'Dan LUITEN - JĂŠrĂŠmie POULET', 'Seul ta grace', '', 'D ', '85', 'actif'),
(15, 'AMI-001v01', 'Ami de Dieu', 'Friend of God', 'M GUNGOR & I. HOUGHTON', 'Israel & New Breed', '', 'C ', '125', 'actif'),
(16, 'ATT-002v01', 'AttachĂŠ Ă  la croix pour moi', '', 'F.A. GRAVES', '', '', 'E ', '66', 'actif'),
(17, 'AUD-001v01', 'Au dessus de tout', 'Above all', 'Lenny LEBLANC / Paul BALOCHE', 'Lenny LEBLANC-Paul BALOCHE', '', 'A', '', 'actif'),
(18, 'AUP-001v01', 'AuprĂ¨s de Dieu', '-', 'Charly & Isabelle SIOUNATH', 'C pour Toi', '', 'A ', '68', 'actif'),
(19, 'AUT-001v01', 'Autour de moi', 'All around', 'C. Coffield; I. Houghton; A. Lindsey', '', '', 'Eb ', '126', 'actif'),
(20, 'AUX-001v02', 'Aux quatre coins du monde', 'To the ends of the earth', 'J.HOUSTON & M. SAMPSON', 'United', '', 'G ', '76', 'actif'),
(21, 'AVE-001v01', 'Avec Dieu', 'Through our God', 'Dale GARRAT', 'Master Music', '', 'C#m', '', 'actif'),
(22, 'BEN-001v02', 'BĂŠni soit ton nom', 'Blessed be your name', 'Matt REDMAN', 'arrangĂŠ par Anthony Evans', '', 'F#m ', '108', 'actif'),
(23, 'BEN-002v01', 'BĂŠni soit le nom du Seigneur', 'Blessed be the name of the Lord', 'Clinton UTTERBACH', 'JosuĂŠ ADELE', '', 'F => G ', '138', 'actif'),
(24, 'BEN-002v02', 'BĂŠni soit le nom du Seigneur', 'Blessed be the name of the Lord', 'Clinton UTTERBACH', 'StĂŠphane QUERY', '', 'A', '', 'actif'),
(25, 'BEN-003v01', 'BĂŠni soit le Roc', '', 'Daniel GARDNER', '', '', 'F ', '165', 'actif'),
(26, 'BIE-001v01', 'Bienvenue dans la famille du Seigneur', '-', 'JĂŠrĂŠmy MATTINA', 'JĂŠrĂŠmy MATTINA', '', 'C ', '132', 'actif'),
(27, 'BIE-002v01', 'Bienvenue frĂ¨res et soeurs', '-', 'JosuĂŠ ADELE', 'JosuĂŠ ADELE', '', 'F ', '125', 'actif'),
(28, 'CEL-001v01', 'CĂŠlĂŠbrez', '-', 'JosĂŠ ROVILLON', 'AĂŻnesis', '', 'E ', '104', 'actif'),
(29, 'CES-001v01', 'C''est ton amour', '-', 'Paul ETTORI & Thierry NOEL', 'DIXIT', '', 'Em', '', 'actif'),
(30, 'CES-002v01', 'C''est si bon', '-', 'Paul WILBUR', 'Maggie BLANCHARD', '', 'Bm ', '120', 'actif'),
(31, 'CHA-001v01', 'Chantons car Dieu est lĂ ', 'Sing Out', 'Paul BALOCHE / Ed KERR', 'Sing Out! - Ron Kenoly', '', 'A ', '', 'actif'),
(32, 'CHA-001v02', 'Chantons car Dieu est lĂ ', 'Sing Out', 'Paul BALOCHE / Ed KERR', 'Open the Eyes of my Heart - P. Baloche', '', 'A ', '', 'actif'),
(33, 'COM-001v04', 'Combien Dieu est grand', 'How great is our God', 'Chris TOMLIN', '', '', 'G ', '98', 'actif'),
(34, 'CON-001v01', 'Conduis-moi', '-', 'Dan LUITEN', '', '', 'D', '', 'actif'),
(35, 'CRI-001v02', 'Cris de joie', 'Shout of joy', 'Paul BALOCHE', 'Paul BALOCHE', '', 'D ', '100', 'actif'),
(36, 'DAN-001v01', 'Dans mon Ă˘me un beau soleil brille', '', 'G. ISELY / G. JAULNES', 'Sebastien Demrey / Jimmy Lahaie', '', 'G ', '96', 'actif'),
(37, 'DIE-001v02', 'Dieu Tu es bon', 'Lord you are good', 'Israel HOUGHTON', '', '', 'E ', '126', 'actif'),
(38, 'DIE-001v03', 'Dieu Tu es bon', 'Lord you are good', 'Israel HOUGHTON', 'Lincoln  Brewster', '', 'C ', '126', 'actif'),
(39, 'DIE-001v04', 'Dieu Tu es bon', 'Lord you are good', 'Israel HOUGHTON', 'Lincoln  Brewster (partition)', '', 'E ', '126', 'actif'),
(40, 'DIE-001v05', 'Dieu Tu es bon', 'Lord you are good', 'Israel HOUGHTON', 'Version lente du refrain', '', 'C ', '126', 'actif'),
(41, 'DIE-003v02', 'Dieu de miracles', 'Miracle Maker', 'Martin SMITH', 'The Mission Bell', '', 'Cm ', '78', 'actif'),
(42, 'DIE-004v02', 'Dieu tu es grand et digne', '', 'S. Mc EWAN', 'Guillaume REYNAUD', '', 'A ', '77', 'actif'),
(43, 'DIE-004v03', 'Dieu tu es grand et digne', '', 'S. Mc EWAN', 'JosuĂŠ ADELE', '', 'A ', '77', 'actif'),
(44, 'DIE-005v01', 'Dieu tout puissant', 'How great Thou art', 'Stuart K HINE', 'Paul Baloche', '', 'Bb ', '108', 'actif'),
(45, 'DIE-007v01', 'Dieu est bon en tout temps', 'God is good all the time', 'Don MOEN', '', '', 'E', '', 'actif'),
(46, 'DIE-008v01', 'Dieu d''ĂŠternitĂŠ', 'Everlasting God', 'Brown Brenton, Ken Riley', '', '', 'Bb ', '110', 'actif'),
(47, 'DIE-008v02', 'Dieu d''ĂŠternitĂŠ', 'Everlasting God', 'Brown Brenton, Ken Riley', '', '', 'Bb ', '110', 'actif'),
(48, 'DIE-009v01', 'Dieu est grand', 'God is great', 'Marty SAMPSON', 'Shout to the Lord - Hillsong', '', 'A ', '155', 'actif'),
(49, 'DIE-010v01', 'Dieu est si merveilleux', 'Awesome is the Lord', 'Chris Tomlin', '', '', 'G ', '130', 'actif'),
(50, 'ECO-001v01', 'Ecoutez le chant des anges', 'Hark! The Herald Angels Sing', 'Carrie UNDERWOOD', 'A Very Special Christmas 7', '', 'Eb ', '102', 'actif'),
(51, 'ECO-002v01', 'Ecoute mon cri', '', 'Corinne LAFITTE', 'Pour l''amour de Sion', 'https://www.youtube.com/watch?v=NB_MzRzz6sU', 'Dm ', '65', 'actif'),
(52, 'ELE-001v01', 'ElevĂŠ', 'Lift Him up', 'Billy FUNK', 'Lift Him up', '', 'F ', '88', 'actif'),
(53, 'ELE-002v02', 'ElĂ¨ve-toi', 'Arise', 'Paul BALOCHE', '', '', 'E ', '114', 'actif'),
(54, 'ENT-002v01', 'Entre tes mains', '', 'X.S. WEEDEN', 'JosuĂŠ ADELE', '', 'E ', '87', 'actif'),
(55, 'ENT-003v01', 'Entrons dans ce lieu', 'Come into this house', 'Gary OLIVER', '', '', 'Em ', '98', 'actif'),
(56, 'ENT-003v02', 'Entrons dans ce lieu', 'Come into this house', 'Gary OLIVER', 'Version partition', '', 'Em ', '98', 'actif'),
(57, 'ENT-005v01', 'Entends mon coeur', 'Listen to our hearts', 'Geoff MOORE', 'Face Ă  face', '', 'Am ', '98', 'actif'),
(58, 'ESP-001v01', 'Esprit de SaintetĂŠ', '', 'FraternitĂŠ des jeunes', 'Marc AMBROGIO', '', 'Gm', '', 'actif'),
(59, 'FAI-001v02', 'Faisons monter', '', 'RaphaĂŤl FERNANDEZ', 'PAJE 2008', '', 'Em ', '100', 'actif'),
(60, 'GRA-001v01', 'GrĂ˘ce Infinie', 'Amazing grace', 'John NEWTON', 'M.W. SMITH - J. ADELE', '', 'D ', '66', 'actif'),
(61, 'GRA-001v02', 'GrĂ˘ce Infinie', 'Amazing grace', 'John NEWTON', 'M.W. SMITH - J. ADELE', '', 'D ', '66', 'actif'),
(62, 'HOS-001v02', 'Hosanna', 'Hosanna', 'Paul BALOCHE', 'The Writer''s Collection', '', 'G ', '114', 'actif'),
(63, 'HOS-002v01', 'Hosanna', 'Hosanna', 'Luc DUMONT', '', '', 'E ', '148', 'actif'),
(64, 'HOS-003V01', 'Hosanna', 'Hosanna', 'Hillsong', '', '', 'C#m ', '77', 'actif'),
(65, 'ILE-001v01', 'Il est exaltĂŠ', 'He is exalted', 'Twila PARIS', '', '', 'G ', '', 'actif'),
(66, 'ILM-001v01', 'Il m''aime', '-', 'Judith SCHNEGG', 'Jurassic Praise', '', 'G ', '126', 'actif'),
(67, 'ILV-001v01', 'Il vit Ă  jamais', '', 'T. COTTREL / S.C. SMITH / D. MOFFIT', '', '', 'Bb-C ', '96', 'actif'),
(68, 'ILV-001v02', 'Il vit Ă  jamais', '', 'T. COTTREL / S.C. SMITH / D. MOFFIT', '', '', 'Bb-C ', '96', 'actif'),
(69, 'ILY-001v01', 'Il y a de la joie', '-', 'Nicolas TERNISIEN', '', '', 'A ', '112', 'actif'),
(70, 'INF-001v01', 'Infiniment grand', '-', 'SĂŠbastien CORN', '', '', 'C ', '76', 'actif'),
(71, 'INF-001v02', 'Infiniment grand', '-', 'SĂŠbastien CORN', '', '', 'A ', '76', 'actif'),
(72, 'JAM-001v01', 'Jamais tu ne m''abandonnes', 'You never let go', 'Matt REDMAN', '', '', 'B ', '80', 'actif'),
(73, 'JAM-001v02', 'Jamais tu ne m''abandonnes', 'You never let go', 'Matt REDMAN', '', '', 'B ', '80', 'actif'),
(74, 'JEC-001v01', 'Je chanterai gloire', '', 'JTM', 'JTM', '', 'Em', '', 'actif'),
(75, 'JEL-001v02', 'Je loue ton nom Eternel', 'Lord I lift your name on high', 'Rick FOUNDS', 'JosuĂŠ ADELE', '', 'F ', '104', 'actif'),
(76, 'JEL-005v02', 'Je louerai ton saint nom', '', 'Luc DUMONT', '', '', 'E ', '66', 'actif'),
(77, 'JEN-001v01', 'J''entre dans tes portes', '-', 'Mady RAMOS', 'Guillaume REYNAUD', '', 'E', '', 'actif'),
(78, 'JER-001v01', 'Je reviens au coeur', 'When the music fades', 'Matt REDMAN', 'Paje Connexion', '', 'Eb ', '75', 'actif'),
(79, 'JER-001v02', 'Je reviens au coeur', 'When the music fades', 'Matt REDMAN', 'Paje Connexion', '', 'Eb ', '75', 'actif'),
(80, 'JES-001v01', 'JĂŠsus Tu es lĂ ', '', 'Philippe DECOUROUX', '', '', 'D', '', 'actif'),
(81, 'JES-006v02', 'JĂŠsus nous te couronnons', '', 'Paul KYLE', '', '', 'G ', '75', 'actif'),
(82, 'JES-007v02', 'Je suis le chemin', '', 'JosuĂŠ ADELE', 'JosuĂŠ ADELE', '', 'F ', '100', 'actif'),
(83, 'JES-009v01', 'JĂŠsus est Seigneur', '', 'R. PINK', 'PAJE 2010', '', 'F#m ', '145', 'actif'),
(84, 'JES-009v02', 'JĂŠsus est Seigneur', '', 'R. PINK', 'PAJE 2010', '', 'F#m ', '145', 'actif'),
(85, 'JES-010v01', 'JĂŠsus nous cĂŠlĂŠbrons', '', 'J. GIBSON', 'JosuĂŠ ADELE', '', 'G ', '155', 'actif'),
(86, 'JES-011v01', 'JĂŠsus, câest le plus beau nom', '', 'Naida Hearn', 'Guillaume REYNAUD', '', 'F ', '50', 'actif'),
(87, 'JES-012v01', 'Je suis libre', 'I am free', 'Jon Egan', '', '', 'D', '', 'actif'),
(88, 'JES-013v01', 'JĂŠsus je tâaime', '', 'Micael FOLLAIN', '', '', 'E ', '120', 'actif'),
(89, 'JES-014v01', 'JĂŠsus le chemin', 'One way', 'J. DOUGLASS / J. HOUSTON', '', '', 'B ', '140', 'actif'),
(90, 'JES-015v01', 'Je sais qui je suis', 'I know who I am', 'I. HOUGHTON', '', '', 'F ', '140', 'actif'),
(91, 'JES-017v01', 'Je sais qu''un jour', '', 'Inconnu', 'HĂŠritage - Demrey', '', 'E ', '78', 'actif'),
(92, 'JET-001v02', 'Je te donne Tout', '', 'Luc DUMONT', '', '', 'D', '', 'actif'),
(93, 'JET-004v01', 'Je te suivrai', '-', 'Stephane QUERY', '', '', 'C', '', 'actif'),
(94, 'JEV-001v01', 'Je veux vivre', '', 'Pascal ROGER', 'PAJE 2007', '', 'G', '', 'actif'),
(95, 'JEV-001v02', 'Je veux vivre', '', 'Pascal ROGER', 'PAJE 2007', '', 'G', '', 'actif'),
(96, 'JEV-003v01', 'Je viens dans ta maison', '-', 'AndrĂŠ et Lynne-Marie FAVREAU', '', '', 'D ', '114', 'actif'),
(97, 'JEV-004v01', 'Je vais de l''avant', '', 'Sandra CLARK', '-', '', 'E ', '100', 'actif'),
(98, 'JEV-005v01', 'Je vis ta libertĂŠ', '-', 'C. CHRISTENSEN / T. OSTRINI', 'Exo - Eclat 1', '', 'C ', '77', 'actif'),
(99, 'JEV-006v01', 'Je veux proclamer', '-', 'Se?bastien CORN / Ste?phane HOAREAU', 'Impact - Sola Gratia', '', 'Bm ', '94', 'actif'),
(100, 'JEV-006v02', 'Je veux proclamer', '-', 'Se?bastien CORN / Ste?phane HOAREAU', 'Impact - Sola Gratia', '', 'Bm ', '94', 'actif'),
(101, 'LAI-001v01', 'Laissons le faire', '', 'Pascal FERRARO', 'JosuĂŠ ADELE', '', 'F ', '68', 'actif'),
(102, 'LAI-002v01', 'Laissons entrer', '', 'Dan LUITEN', 'Jean MicaĂŤl Pottier', '', 'G ', '130', 'actif'),
(103, 'LAT-001v02', 'La Terre entiĂ¨re', 'All the earth', 'Paul BALOCHE', '', '', 'E ', '130', 'actif'),
(104, 'LES-001v01', 'Les bontĂŠs du Seigneur', '-', 'Nicolas TERNISIEN', '', '', 'A ', '174', 'actif'),
(105, 'LES-001v02', 'Les bontĂŠs du Seigneur', '-', 'Nicolas TERNISIEN', '', '', 'F ', '174', 'actif'),
(106, 'LES-001v04', 'Les bontĂŠs du Seigneur', '-', 'Nicolas TERNISIEN', 'Le mĂŞme que v02 mais en G', '', 'G ', '174', 'actif'),
(107, 'LET-001v04', 'L''Eternel est bon', 'For the Lord is good', 'Billy FUNK', 'Ron KENOLY - Sing Out!', '', 'E ', '107', 'actif'),
(108, 'LOU-001v02', 'Louez l''Eternel', '-', 'Luc DUMONT', '', '', 'Bm ', '116', 'actif'),
(109, 'MAF-001v02', 'Ma force c''est toi', '-', 'Daniel PIALAT', 'Daniel PIALAT', '', 'A', '', 'actif'),
(110, 'MAJ-001v01', 'MajestĂŠ', 'Majesty (Here I am)', 'Martin SMITH', '', '', 'Gm-Bb ', '71', 'actif'),
(111, 'MAJ-001v02', 'MajestĂŠ', 'Majesty (Here I am)', 'Martin SMITH', '', '', 'Gm-Bb ', '71', 'actif'),
(112, 'MAJ-002v01', 'MajestĂŠ', '-', 'Dan LUITEN', '', '', 'A', '', 'actif'),
(113, 'MAJ-003v01', 'MajestĂŠ', 'Majesty', 'Jack HAYFORD', 'Majesty - Ron KENOLY', '', 'A ', '72', 'actif'),
(114, 'MAJ-003v02', 'MajestĂŠ', 'Majesty', 'Jack HAYFORD', 'IDEM - FlĂťte + Violons', '', 'A ', '72', 'actif'),
(115, 'MER-001v01', 'Merci pour ta Parole', '', 'Mady RAMOS', 'JosuĂŠ ADELE', '', 'Bb ', '93', 'actif'),
(116, 'MER-002v01', 'Merci pour la croix', '', 'Graham KENDRICK', 'Guillaume', '', 'Bb ', '66', 'actif'),
(117, 'MER-003v01', 'Merveilleux', 'Beautiful', 'Samuel Lane', 'Vineyard Songs', '', 'E ', '112', 'actif'),
(118, 'MER-003v02', 'Merveilleux', 'Beautiful', 'Samuel Lane', 'Vineyard Songs', '', 'A ', '112', 'actif'),
(119, 'MER-004v01', 'Merci d''un coeur reconnaissant', 'Give Thanks', 'Henry SMITH', 'Don MOEN', '', 'E ', '84', 'actif'),
(120, 'MEV-001v03', 'Me voici prosternĂŠ', 'I will come and bow down', 'Martin J. NYSTROM', 'Ron KENOLY - Sing Out!', '', 'C ', '72', 'actif'),
(121, 'MIN-001v01', 'Minuit chrĂŠtien', '', 'P. CAPPEAU / A. ADAM', 'C. TOMLIN - Glory in the highest...', '', 'Bb ', '54', 'actif'),
(122, 'MON-001v01', 'Mon dĂŠsir', 'My desir', 'Kirk FRANKLIN', '', '', 'Dm ', '100', 'actif'),
(123, 'MON-001v01', 'Mon rĂŠdempteur vit', 'My redeemer lives', '', '', '', 'E ', '130', 'actif'),
(124, 'MON-002v01', 'Mon sauveur vit', '', 'Jon Egan / Glenn Packiam', '', '', '', '', 'actif'),
(125, 'NIP-001v01', 'Ni par puissance', 'Not by power', 'J. Chisum / G. Sadler', '', '', 'Bm ', '105', 'actif'),
(126, 'NOT-001v02', 'Notre PĂ¨re', '', 'Exo', 'Exo 3 / NÂ°1', '', 'D ', '97', 'actif'),
(127, 'NOU-003v01', 'Nous venons dans ta prĂŠsence', 'You''re the father of creation', 'Robert EASTWOOD', '', '', 'E ', '76', 'actif'),
(128, 'NOU-004v01', 'Nous te couronnons', '', 'Marcos WITT', 'JosuĂŠ ADELE', '', 'G ', '100', 'actif'),
(129, 'NOU-006v01', 'Nous voulons voir', '', 'Doug HORLEY', 'JosuĂŠ ADELE', '', 'G ', '155', 'actif'),
(130, 'NOU-007v01', 'Nous l''acclamerons', 'South to the north', 'Martin SMITH', '', '', 'G ', '60', 'actif'),
(131, 'NOU-008v01', 'Nous te donnons nos coeurs', '', 'Nicolas TERNISIEN', '', '', 'G ', '88', 'actif'),
(132, 'NOU-009v01', 'Nous venons dans ta maison', '', 'Bruce BALLINGER', 'Guillaume', '', 'G ', '78', 'actif'),
(133, 'ODI-001v01', 'Ă Dieu', 'Our God', 'C. TOMLIN, M. REDMAN...', '', '', 'Em ', '105', 'actif'),
(134, 'OHH-001v02', 'Oh happy day', 'Oh happy day', 'Edwin HAWKINS', 'Version Sister Acts', '', 'Db', '', 'actif'),
(135, 'OUI-001v01', 'Oui je te cĂŠlĂ¨bre - Dieu tu es bon', 'Here I am to worship', 'Tim HUGUES', 'IsraĂŤl HOUGHTON - Tim HUGUES', '', 'E', '', 'actif'),
(136, 'OUI-001v02', 'Oui je te cĂŠlĂ¨bre - Dieu tu es bon', 'Here I am to worship', 'Tim HUGUES', 'IDEM - Sur deux pages', '', 'E ', '56', 'actif'),
(137, 'OUI-002v01', 'Oui je le vois', 'I see the Lord', 'J. CHISUM / D. MOEN', 'Ron Kenoly - God is able', '', 'A ', '', 'actif'),
(138, 'OUV-001v02', 'Ouvre les yeux de mon coeur', 'Open the eyes of my heart', 'Paul BALOCHE', '-', '', 'E ', '110', 'actif'),
(139, 'PAR-002v01', 'Pardonne-nous', '-', 'C. CHRISTENSEN / T. OSTRINI', 'Exo3', '', 'Dm ', '109', 'actif'),
(140, 'PAR-003v02', 'Parce qu''il vit', 'Because he lives', 'William J. GAITHER', '', '', 'G ', '120', 'actif'),
(141, 'PAR-004v01', 'Parfum du ciel', '-', 'Peggy POLITO DUCOURET', 'Parfum du ciel', '', 'D ', '', 'actif'),
(142, 'PAR-005v01', 'Parcourant les monts et les mers', '', 'Martin SMITH', 'AĂŻnĂŠsis', '', 'F ', '', 'actif'),
(143, 'PEN-001v01', 'PentecĂ´te', '-', 'JĂŠrĂŠmy MATTINA', 'JĂŠrĂŠmy MATTINA', '', 'G ', '', 'actif'),
(144, 'PLU-001v01', 'Plus de toi', '', 'Dan Luiten', 'Dan Luiten (CD Plus de toi)', '', 'B ', '70', 'actif'),
(145, 'POU-002v01', 'Pour tout ce que tu es', '', 'Maria MUNNIZZI', '', '', 'E ', '60', 'actif'),
(146, 'QUA-002v03', 'Quand l''Esprit du Seigneur', '', '', 'Thierry NOEL', '', 'Em ', '110', 'actif'),
(147, 'QUE-001v01', 'Que ta lumiĂ¨re brille', '', 'B. SMILEY...', '', '', 'A ', '150', 'actif'),
(148, 'QUE-002v02', 'Quel ami fidĂ¨le et tendre', '', 'BONNARD E. / J. SCRIVEN', '', '', 'F ', '63', 'actif'),
(149, 'QUE-003v01', 'Que tous soient un', '', 'Elvire Dieny', '', '', 'Ab ', '85', 'actif'),
(150, 'QUI-001v01', 'Qui est comme Dieu', '', 'Lynn DESHAZO', 'AĂŻnesis', '', 'Am ', '100', 'actif'),
(151, 'RAN-001v01', 'Ranime la passion', '', 'Paul BALOCHE', '', '', 'E ', '128', 'actif'),
(152, 'REG-002v01', 'RĂ¨gne sur nos coeurs', '', 'JĂŠrĂŠmy MATTINA', 'JĂŠrĂŠmy MATTINA', '', 'A', '', 'actif'),
(153, 'RIE-001v01', 'Rien n''est impossible Ă  Dieu', '', 'Danie et MoĂŻse HURTREL', 'album "Mon Dieu" - JosuĂŠ ADELE', '', 'Bb ', '116', 'actif'),
(154, 'ROI-001v01', 'Roi de majestĂŠ', '', 'Marty Sampson', '', '', 'A ', '126', 'actif'),
(155, 'ROI-002v02', 'Roi des cieux', '', 'Dan Luiten', '', '', 'C ', '140', 'actif'),
(156, 'SAU-001v02', 'Sauve avec puissance', 'Mighty to save', 'Reuben MORGAN', 'Hillsong', '', 'E ', '75', 'actif'),
(157, 'SEI-002v01', 'Seigneur nous voici', '', 'Mady RAMOS', 'JosuĂŠ ADELE', '', 'F ', '110', 'actif'),
(158, 'SEI-004v02', 'Seigneur viens dans ce lieu', '', 'Mike HOHNHOLZ', 'Pascal ROGER, PAJE 2008', '', 'F->G ', '68', 'actif'),
(159, 'SEI-005v02', 'Seigneur, tu es lĂ ', '', 'The Kry', '', '', 'G', '', 'actif'),
(160, 'SEI-006v01', 'Seigneur attire mon coeur Ă  toi', '', 'C.H.MORRIS', 'Impact', '', 'Bm', '', 'actif'),
(161, 'SEI-007v01', 'Seigneur Ă  quel autre', '', 'Inconnu', 'Dan Luiten (CD Plus de toi)', '', 'E - G', '', 'actif'),
(162, 'SER-001v01', 'Sers-Toi de moi', 'Use me', 'D.JONES & R.KENOLY', '', '', 'F ', '110', 'actif'),
(163, 'SIJ-001v03', 'Si je suis lĂ ', '-', 'Pascal ROGER', 'PAJE 2008', '', 'C ', '114', 'actif'),
(164, 'SIM-001v01', 'Si merveilleux', '', 'Dave BILLINGTON', 'Mark ALTROGGE', '', 'Eb', '', 'actif'),
(165, 'SOI-001v01', 'Sois ĂŠlevĂŠ', '', 'M. MORTORANO', 'JosuĂŠ ADELE', '', 'F ', '80', 'actif'),
(166, 'TAB-001v02', 'Ta bontĂŠ', '-', 'Dan LUITEN', 'Plus de Toi', '', 'A ', '84', 'actif'),
(167, 'TON-002v01', 'Ton Nom est grand', '-', 'Nicolas TERNISIEN', '', '', 'D ', '98', 'actif'),
(168, 'TON-003v01', 'Ton Nom', 'Your name', 'Paul BALOCHE', '', '', 'Bb ', '75', 'actif'),
(169, 'TON-003v02', 'Ton Nom', 'Your name', 'Paul BALOCHE', '', '', 'Ab ', '75', 'actif'),
(170, 'TON-004v01', 'Ton Nom est si merveilleux', '', 'P. SMITH / M et D. TUNNEY', '', '', 'F ', '165', 'actif'),
(171, 'TON-005v01', 'Ton amour Seigneur', '', 'J.H. HARTNAGEL', '', '', 'Em ', '138', 'actif'),
(172, 'TOU-001v02', 'Tous unis Seigneur', '-', 'Pascal ROGER', 'PAJE 2008', '', 'Gm ', '105', 'actif'),
(173, 'TOU-002v01', 'Toute ma vie', '', 'Anonyme', '', '', 'Bb', '', 'actif'),
(174, 'TOU-003v01', 'Toujours', 'Again I Say Rejoice', 'I. HOUGHTON / A. LINDSEY', '', '', 'E', '', 'actif'),
(175, 'TOU-004v01', 'Tout ce que je fais', '', 'David RUIS', '', '', 'G', '', 'actif'),
(176, 'TOU-005v01', 'Toute ma vie', '', 'Jocelyn DUVAL / Luc DUMONT', '', '', 'E ', '66', 'actif'),
(177, 'TUE-001v01', 'Tu es Dieu', '-', 'C. CHRISTENSEN / T. OSTRINI', '', '', 'C ', '76', 'actif'),
(178, 'TUE-003v01', 'Tu es digne', '-', 'Daniel PIALAT', 'Daniel PIALAT', '', 'C ', '70', 'actif'),
(179, 'TUE-004v01', 'Tu es puissant', '', 'Graig MUSSEAU', '', '', 'Am ', '98', 'actif'),
(180, 'TUE-005v01', 'Tu es Dieu', '-', 'Dan LUITEN', '', '', 'E ', '170', 'actif'),
(181, 'UNE-001v01', 'Une chose', '', 'David DURHAM', '', '', 'D ', '60', 'actif'),
(182, 'UNE-002v01', 'Un enfant est nĂŠ', '-', 'MarylĂ¨ne ROFFIDAL', 'JosuĂŠ ADELE', '', 'Bb ', '70', 'actif'),
(183, 'UNI-001v01', 'Unis-nous', '-', 'JĂŠrĂŠmy MATTINA', 'JĂŠrĂŠmy MATTINA', '', 'F ', '66', 'actif'),
(184, 'VEN-001v02', 'Venez le cĂŠlĂŠbrer', '', 'P. MORGAN', 'JosuĂŠ ADELE', '', 'G ', '155', 'actif'),
(185, 'VIE-001v01', 'Viens me transformer', '', 'Marie-HĂŠlĂ¨ne CHARRETTE', 'JosuĂŠ ADELE', '', 'G ', '69', 'actif'),
(186, 'VOI-001v01', 'Vois ce que Dieu a fait', '', 'M.D. HANBY', '', '', 'G ', '136', 'actif'),
(187, 'VOI-002v01', 'Voici NoĂŤl', 'StilÂ­le Nacht', 'J. MOHR / J.F. YOUNG', 'PraiseCharts', '', 'G ', '90', 'actif');

-- --------------------------------------------------------

--
-- Structure de la table `instruments`
--

CREATE TABLE IF NOT EXISTS `instruments` (
`id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `famille` varchar(30) NOT NULL,
  `exclusif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table des instruments de musique' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `musiciens`
--

CREATE TABLE IF NOT EXISTS `musiciens` (
`id` int(11) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `e-mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table des musiciens' AUTO_INCREMENT=1 ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chants`
--
ALTER TABLE `chants`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `instruments`
--
ALTER TABLE `instruments`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `musiciens`
--
ALTER TABLE `musiciens`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `chants`
--
ALTER TABLE `chants`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT pour la table `instruments`
--
ALTER TABLE `instruments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `musiciens`
--
ALTER TABLE `musiciens`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
