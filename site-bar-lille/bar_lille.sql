-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 07 Août 2017 à 22:16
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bar_lille`
--

-- --------------------------------------------------------

--
-- Structure de la table `gma_bar`
--

CREATE TABLE IF NOT EXISTS `gma_bar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `adresse` varchar(150) DEFAULT NULL,
  `quartier` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bar_quartier` (`quartier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `gma_bar`
--

INSERT INTO `gma_bar` (`id`, `nom`, `numero`, `adresse`, `quartier`) VALUES
(1, 'La Capsule', 25, 'rue des 3 Molettes', 1),
(2, 'La Mangrove', 36, 'rue d''Angleterre', 1),
(3, 'La Pirogue', 16, 'rue Jean-Jacques Rousseau', 1),
(4, 'Le Chopp''ing', 16, 'rue Royale', 1),
(5, 'Le Kremlin', 51, 'rue Jean-Jacques Rousseau', 1),
(6, 'Le Gastama', 109, 'rue Saint-André', 1),
(7, 'Le Carré des Halles', 3, 'rue des Primeurs', 2),
(8, 'Le Latina Café', 42, 'rue Masséna', 2),
(9, 'Le Scotland', 168, 'rue de Solférino', 2),
(10, 'Le Solférino', 156, 'rue de Solférino', 2),
(11, 'La Plage', 122, 'rue de Solférino', 2),
(12, 'Le Tcha-Tcha', 136, 'rue de Solférino', 2),
(13, 'Le Mac Larens', 44, 'rue de Puebla', 2),
(14, 'Le Golden Wave', 7, 'rue des Arts', 3),
(15, 'Le Café Citoyen', 7, 'place du Vieux Marché aux Chevaux', 3),
(16, 'Le Magazine Club', 84, 'rue de Trévise', 4),
(17, 'Uno Bar', 385, 'rue Gambetta', 5),
(18, 'Le Bistro de St-So', 17, 'boulevard Jean Baptiste Lebas', 3),
(19, 'L''Alchimiste', 26, 'boulevard Jean Baptiste Lebas', 3),
(20, 'Le Van House', 110, 'rue Gambetta', 2),
(21, 'Lucky Ducky', 59, 'rue Nicolas Leblanc', 3);

-- --------------------------------------------------------

--
-- Structure de la table `gma_biere`
--

CREATE TABLE IF NOT EXISTS `gma_biere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marque` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `gma_biere`
--

INSERT INTO `gma_biere` (`id`, `marque`) VALUES
(1, 'Leffe'),
(2, 'Filou'),
(3, 'Troll'),
(4, 'Vedett'),
(5, 'Guiness'),
(6, 'Barbar'),
(7, 'Heineken'),
(8, 'Carlsberg'),
(9, 'Hoegarden'),
(10, 'Karmeliet'),
(11, 'Ch''ti'),
(12, 'Goudale'),
(13, 'Rince Cochon'),
(14, 'Desperados'),
(16, 'Paix Dieu'),
(17, 'Anosteke'),
(18, 'Moinette'),
(21, 'Pelforth'),
(22, '1664'),
(23, 'Trois Monts'),
(24, 'Jeanlain'),
(26, 'Jupiler'),
(30, 'Delirium'),
(31, 'Stella');

-- --------------------------------------------------------

--
-- Structure de la table `gma_quartier`
--

CREATE TABLE IF NOT EXISTS `gma_quartier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quartier` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `gma_quartier`
--

INSERT INTO `gma_quartier` (`id`, `quartier`) VALUES
(1, 'Vieux-Lille'),
(2, 'SolféMasséna'),
(3, 'Centre-Ville'),
(4, 'Moulins'),
(5, 'Wazemmes');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `gma_bar`
--
ALTER TABLE `gma_bar`
  ADD CONSTRAINT `fk_bar_quartier` FOREIGN KEY (`quartier`) REFERENCES `gma_quartier` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
