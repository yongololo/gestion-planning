-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 18 Novembre 2014 à 22:01
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
  `référence` varchar(10) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL,
  `auteurs` varchar(255) NOT NULL,
  `arrangement` varchar(255) NOT NULL,
  `lien` varchar(100) NOT NULL,
  `ton` varchar(10) NOT NULL,
  `tempo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chants`
--
ALTER TABLE `chants`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `chants`
--
ALTER TABLE `chants`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
