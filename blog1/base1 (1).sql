-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 29 mai 2019 à 11:35
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `base1`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `titre_article` varchar(255) NOT NULL,
  `contenu_article` longtext NOT NULL,
  `urlImgArticle` varchar(255) DEFAULT NULL,
  `date_article` date NOT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id_article`),
  KEY `article_categorie_FK` (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `titre_article`, `contenu_article`, `urlImgArticle`, `date_article`, `id_categorie`) VALUES
(3, 'les simpson', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus, est quis condimentum dapibus, enim dui interdum lacus, ac congue lacus enim id turpis. Nam sit amet justo pulvinar, varius ex non, viverra risus. In ultricies velit vel orci porta pellentesque. Sed finibus varius est, eu venenatis nisl sagittis sed. Sed neque dui, euismod in fermentum quis, lacinia sed tortor. Ut sed aliquam urna, non tincidunt lectus. Aenean sed semper tellus. Nunc eu diam vel eros sagittis malesuada eget at erat. Duis pretium pellentesque est, maximus sodales leo dignissim id. Donec malesuada at urna lobortis mollis. Nulla vel sem vitae risus fringilla condimentum. Vestibulum vel velit quam. Proin et nisi non quam egestas auctor et at metus. Ut at urna ultricies, venenatis metus sed, tempor odio.\r\n\r\nMauris tellus felis, rutrum et pharetra id, commodo elementum nunc. Integer egestas mauris a nisi maximus, et dignissim orci efficitur. Vestibulum eu urna erat. Morbi at fringilla nulla. Vestibulum suscipit sit amet tortor vitae mattis. Praesent at arcu et felis malesuada egestas vel vel dolor. Maecenas molestie non eros eget bibendum. Mauris hendrerit, erat ut interdum gravida, sapien nunc ornare dolor, eget egestas dolor lectus eget neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', NULL, '2019-05-25', 4),
(4, 'futurama', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus, est quis condimentum dapibus, enim dui interdum lacus, ac congue lacus enim id turpis. Nam sit amet justo pulvinar, varius ex non, viverra risus. In ultricies velit vel orci porta pellentesque. Sed finibus varius est, eu venenatis nisl sagittis sed. Sed neque dui, euismod in fermentum quis, lacinia sed tortor. Ut sed aliquam urna, non tincidunt lectus. Aenean sed semper tellus. Nunc eu diam vel eros sagittis malesuada eget at erat. Duis pretium pellentesque est, maximus sodales leo dignissim id. Donec malesuada at urna lobortis mollis. Nulla vel sem vitae risus fringilla condimentum. Vestibulum vel velit quam. Proin et nisi non quam egestas auctor et at metus. Ut at urna ultricies, venenatis metus sed, tempor odio.\r\n\r\nMauris tellus felis, rutrum et pharetra id, commodo elementum nunc. Integer egestas mauris a nisi maximus, et dignissim orci efficitur. Vestibulum eu urna erat. Morbi at fringilla nulla. Vestibulum suscipit sit amet tortor vitae mattis. Praesent at arcu et felis malesuada egestas vel vel dolor. Maecenas molestie non eros eget bibendum. Mauris hendrerit, erat ut interdum gravida, sapien nunc ornare dolor, eget egestas dolor lectus eget neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', NULL, '2019-05-20', 4),
(5, 'men in black', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus, est quis condimentum dapibus, enim dui interdum lacus, ac congue lacus enim id turpis. Nam sit amet justo pulvinar, varius ex non, viverra risus. In ultricies velit vel orci porta pellentesque. Sed finibus varius est, eu venenatis nisl sagittis sed. Sed neque dui, euismod in fermentum quis, lacinia sed tortor. Ut sed aliquam urna, non tincidunt lectus. Aenean sed semper tellus. Nunc eu diam vel eros sagittis malesuada eget at erat. Duis pretium pellentesque est, maximus sodales leo dignissim id. Donec malesuada at urna lobortis mollis. Nulla vel sem vitae risus fringilla condimentum. Vestibulum vel velit quam. Proin et nisi non quam egestas auctor et at metus. Ut at urna ultricies, venenatis metus sed, tempor odio.\r\n\r\nMauris tellus felis, rutrum et pharetra id, commodo elementum nunc. Integer egestas mauris a nisi maximus, et dignissim orci efficitur. Vestibulum eu urna erat. Morbi at fringilla nulla. Vestibulum suscipit sit amet tortor vitae mattis. Praesent at arcu et felis malesuada egestas vel vel dolor. Maecenas molestie non eros eget bibendum. Mauris hendrerit, erat ut interdum gravida, sapien nunc ornare dolor, eget egestas dolor lectus eget neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', NULL, '2019-05-20', 6),
(6, 'men in black 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus, est quis condimentum dapibus, enim dui interdum lacus, ac congue lacus enim id turpis. Nam sit amet justo pulvinar, varius ex non, viverra risus. In ultricies velit vel orci porta pellentesque. Sed finibus varius est, eu venenatis nisl sagittis sed. Sed neque dui, euismod in fermentum quis, lacinia sed tortor. Ut sed aliquam urna, non tincidunt lectus. Aenean sed semper tellus. Nunc eu diam vel eros sagittis malesuada eget at erat. Duis pretium pellentesque est, maximus sodales leo dignissim id. Donec malesuada at urna lobortis mollis. Nulla vel sem vitae risus fringilla condimentum. Vestibulum vel velit quam. Proin et nisi non quam egestas auctor et at metus. Ut at urna ultricies, venenatis metus sed, tempor odio.\r\n\r\nMauris tellus felis, rutrum et pharetra id, commodo elementum nunc. Integer egestas mauris a nisi maximus, et dignissim orci efficitur. Vestibulum eu urna erat. Morbi at fringilla nulla. Vestibulum suscipit sit amet tortor vitae mattis. Praesent at arcu et felis malesuada egestas vel vel dolor. Maecenas molestie non eros eget bibendum. Mauris hendrerit, erat ut interdum gravida, sapien nunc ornare dolor, eget egestas dolor lectus eget neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', NULL, '2019-05-20', 6),
(7, 'rust', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus, est quis condimentum dapibus, enim dui interdum lacus, ac congue lacus enim id turpis. Nam sit amet justo pulvinar, varius ex non, viverra risus. In ultricies velit vel orci porta pellentesque. Sed finibus varius est, eu venenatis nisl sagittis sed. Sed neque dui, euismod in fermentum quis, lacinia sed tortor. Ut sed aliquam urna, non tincidunt lectus. Aenean sed semper tellus. Nunc eu diam vel eros sagittis malesuada eget at erat. Duis pretium pellentesque est, maximus sodales leo dignissim id. Donec malesuada at urna lobortis mollis. Nulla vel sem vitae risus fringilla condimentum. Vestibulum vel velit quam. Proin et nisi non quam egestas auctor et at metus. Ut at urna ultricies, venenatis metus sed, tempor odio.\r\n\r\nMauris tellus felis, rutrum et pharetra id, commodo elementum nunc. Integer egestas mauris a nisi maximus, et dignissim orci efficitur. Vestibulum eu urna erat. Morbi at fringilla nulla. Vestibulum suscipit sit amet tortor vitae mattis. Praesent at arcu et felis malesuada egestas vel vel dolor. Maecenas molestie non eros eget bibendum. Mauris hendrerit, erat ut interdum gravida, sapien nunc ornare dolor, eget egestas dolor lectus eget neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', NULL, '2019-05-20', 5),
(8, 'overwatch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus, est quis condimentum dapibus, enim dui interdum lacus, ac congue lacus enim id turpis. Nam sit amet justo pulvinar, varius ex non, viverra risus. In ultricies velit vel orci porta pellentesque. Sed finibus varius est, eu venenatis nisl sagittis sed. Sed neque dui, euismod in fermentum quis, lacinia sed tortor. Ut sed aliquam urna, non tincidunt lectus. Aenean sed semper tellus. Nunc eu diam vel eros sagittis malesuada eget at erat. Duis pretium pellentesque est, maximus sodales leo dignissim id. Donec malesuada at urna lobortis mollis. Nulla vel sem vitae risus fringilla condimentum. Vestibulum vel velit quam. Proin et nisi non quam egestas auctor et at metus. Ut at urna ultricies, venenatis metus sed, tempor odio.\r\n\r\nMauris tellus felis, rutrum et pharetra id, commodo elementum nunc. Integer egestas mauris a nisi maximus, et dignissim orci efficitur. Vestibulum eu urna erat. Morbi at fringilla nulla. Vestibulum suscipit sit amet tortor vitae mattis. Praesent at arcu et felis malesuada egestas vel vel dolor. Maecenas molestie non eros eget bibendum. Mauris hendrerit, erat ut interdum gravida, sapien nunc ornare dolor, eget egestas dolor lectus eget neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', NULL, '2019-05-20', 5);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`) VALUES
(4, 'series'),
(5, 'jeux'),
(6, 'films');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email_user` varchar(255) NOT NULL,
  `pwd_user` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email_user` (`email_user`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `email_user`, `pwd_user`) VALUES
(1, 'toto@toto.fr', '$2y$10$wEzYpBbBOABPcWJeTXgCfe2iA0o.hUhDnwE/tMZu/pDGk8SzIiCVW');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_categorie_FK` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
