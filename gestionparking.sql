-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 06 fév. 2023 à 08:41
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionparking`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE `abonnement` (
  `id` int(11) NOT NULL,
  `typeAbonnement` varchar(20) DEFAULT NULL,
  `finAbonnement` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(44) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mdp` varchar(36) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `enregistrement`
--

CREATE TABLE `enregistrement` (
  `id` int(11) NOT NULL,
  `nom_client` varchar(40) DEFAULT NULL,
  `prenom_client` varchar(45) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `immat_Engin` varchar(35) DEFAULT NULL,
  `type_Engin` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `prix` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sortie`
--

CREATE TABLE `sortie` (
  `id` int(11) NOT NULL,
  `date_sortie` date DEFAULT NULL,
  `prix_paye` int(11) DEFAULT NULL,
  `immat_Engin` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `prenom` varchar(60) DEFAULT NULL,
  `tel` varchar(40) DEFAULT NULL,
  `mdp` varchar(40) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `adresse` varchar(40) DEFAULT NULL,
  `pseudo` varchar(45) DEFAULT NULL,
  `type_user` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `tel`, `mdp`, `email`, `adresse`, `pseudo`, `type_user`) VALUES
(1, 'bah', 'ibrahima', '669003948', 'azerty', 'azerty@gmail.com', 'Bembeto', 'Admin1', 'Admin'),
(2, 'camara', 'hadja fatoumata', '620094495', 'azerty', 'azertry@gmail.com', 'Sangoya', 'user1', 'User'),
(3, 'tt', 'hb', 'yyy', 'ggg', 'ggg', 'yy', 'yy', 'Admin'),
(4, 'diallo', 'fatoumata kanny', '624959700', 'azerty', 'kanny@gmail.com', 'fofanaya', 'marco', 'User');

-- --------------------------------------------------------

--
-- Structure de la table `vigile`
--

CREATE TABLE `vigile` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(40) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `enregistrement`
--
ALTER TABLE `enregistrement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sortie`
--
ALTER TABLE `sortie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vigile`
--
ALTER TABLE `vigile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonnement`
--
ALTER TABLE `abonnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `enregistrement`
--
ALTER TABLE `enregistrement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sortie`
--
ALTER TABLE `sortie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `vigile`
--
ALTER TABLE `vigile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
