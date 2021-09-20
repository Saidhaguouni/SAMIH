-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 22 sep. 2019 à 19:12
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_absence`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` int(15) NOT NULL,
  `NOM_ADMIN` varchar(150) NOT NULL,
  `PRENOM_ADMIN` varchar(150) NOT NULL,
  `CIN` varchar(150) NOT NULL,
  `LOGIN` varchar(150) NOT NULL,
  `PASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`ID_ADMIN`, `NOM_ADMIN`, `PRENOM_ADMIN`, `CIN`, `LOGIN`, `PASS`) VALUES
(1, 'HG', 'HG', 'SH12343', 'S@email.com', 'said');

-- --------------------------------------------------------

--
-- Structure de la table `conge`
--

CREATE TABLE `conge` (
  `ID_CONGE` int(11) NOT NULL,
  `NOM_EMPLOYE` varchar(150) NOT NULL,
  `NBR_JOURS` int(11) NOT NULL,
  `DESIGNATION` varchar(150) NOT NULL,
  `TYPE` varchar(110) NOT NULL,
  `DATE_DEPART` date NOT NULL,
  `DATE_RETEUR` date NOT NULL,
  `DESCRIPTION` varchar(150) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `DATE_CONGE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `conge`
--

INSERT INTO `conge` (`ID_CONGE`, `NOM_EMPLOYE`, `NBR_JOURS`, `DESIGNATION`, `TYPE`, `DATE_DEPART`, `DATE_RETEUR`, `DESCRIPTION`, `STATUS`, `DATE_CONGE`) VALUES
(108, 'SAID', 2, 'laayoune', 'maladie', '2019-09-01', '2019-09-03', 'sdf', 1, '2019-09-03'),
(114, 'ahmed', 3, 'laayoune', 'maladie', '2019-09-01', '2019-09-04', 'sdf', 1, '2019-09-03'),
(115, 'ahmed', 4, 'laayoune', 'maladie', '2019-09-01', '2019-09-05', 'sdf', 1, '2019-09-03'),
(118, 'ahmed', 3, 'laayoune', 'maladie', '2019-09-21', '2019-09-24', 'sdf', 1, '2019-09-03'),
(119, 'SAID', 5, 'laayoune', 'maladie', '2019-09-01', '2019-09-06', 'sdf', 1, '2019-09-03'),
(120, 'SAID', 2, 'laayoune', 'maladie', '2019-09-19', '2019-09-21', 'sdf', 1, '2019-09-03'),
(121, 'ahmed', 1, 'laayoune', 'maladie', '2019-09-29', '2019-09-30', 'sdf', 1, '2019-09-03');

-- --------------------------------------------------------

--
-- Structure de la table `consultation`
--

CREATE TABLE `consultation` (
  `ID_CONSULTATION` int(11) NOT NULL,
  `MATRICULE` varchar(150) NOT NULL,
  `NOM_EMPLOYE` varchar(150) NOT NULL,
  `CONGE_REST` float NOT NULL,
  `SOLDE` float NOT NULL,
  `CONGE_PRISE` int(11) NOT NULL,
  `SOLDE_FIN` float NOT NULL,
  `DATE_ENTREE` date NOT NULL,
  `DATE_CONGE` date NOT NULL,
  `CR` float NOT NULL,
  `DEBUT_ANNEE` date NOT NULL,
  `SOLD_DEBUT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `consultation`
--

INSERT INTO `consultation` (`ID_CONSULTATION`, `MATRICULE`, `NOM_EMPLOYE`, `CONGE_REST`, `SOLDE`, `CONGE_PRISE`, `SOLDE_FIN`, `DATE_ENTREE`, `DATE_CONGE`, `CR`, `DEBUT_ANNEE`, `SOLD_DEBUT`) VALUES
(34, 'df23', 'SAID', 0, 4, 9, -1, '2019-07-01', '2019-09-03', -1, '2019-09-01', 4),
(39, 'DFS232', 'ahmed', 0, 1, 11, -5, '2019-09-01', '2019-09-03', -5, '2019-09-01', 5);

-- --------------------------------------------------------

--
-- Structure de la table `depot`
--

CREATE TABLE `depot` (
  `ID_DEPOT` int(11) NOT NULL,
  `LEBILLE` varchar(150) NOT NULL,
  `DATE_CREATION` date NOT NULL,
  `UTILISATEUR_CREATION` varchar(150) NOT NULL,
  `DATE_MODIFICATION` date NOT NULL,
  `UTILISATEUR_MODIFICATION` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `depot`
--

INSERT INTO `depot` (`ID_DEPOT`, `LEBILLE`, `DATE_CREATION`, `UTILISATEUR_CREATION`, `DATE_MODIFICATION`, `UTILISATEUR_MODIFICATION`) VALUES
(8, 'AGADIR ', '2019-08-15', 'said haguoni', '2019-08-19', ''),
(9, 'LAAYOUNE ', '2019-08-18', 'said haguoni    ', '2019-09-22', 'HAGUOUNI  ');

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `ID_EMPLOYE` int(11) NOT NULL,
  `MATRICULE` varchar(150) NOT NULL,
  `NOM_EMPLOYE` varchar(150) NOT NULL,
  `FONCTION` varchar(150) NOT NULL,
  `TYPE_CONTRAT` varchar(150) NOT NULL,
  `DEPOT` varchar(150) NOT NULL,
  `SERVICE` varchar(150) NOT NULL,
  `DATE_ENTREE` date NOT NULL,
  `NBR_JOURS` int(11) NOT NULL,
  `DATE_FIN` date NOT NULL,
  `SOLDE_DUBET` int(11) NOT NULL,
  `REPOT_CONGE` varchar(150) NOT NULL,
  `CIN` varchar(150) NOT NULL,
  `PRENOM` varchar(150) NOT NULL,
  `UTILISATEUR_CREATION` varchar(150) NOT NULL,
  `DATE_CREATION` date NOT NULL,
  `UTILISATEUR_MODIFICATION` varchar(150) NOT NULL,
  `DATE_MODIFICATION` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`ID_EMPLOYE`, `MATRICULE`, `NOM_EMPLOYE`, `FONCTION`, `TYPE_CONTRAT`, `DEPOT`, `SERVICE`, `DATE_ENTREE`, `NBR_JOURS`, `DATE_FIN`, `SOLDE_DUBET`, `REPOT_CONGE`, `CIN`, `PRENOM`, `UTILISATEUR_CREATION`, `DATE_CREATION`, `UTILISATEUR_MODIFICATION`, `DATE_MODIFICATION`) VALUES
(21, 'df23 ', 'SH ', 'informaticien', 'CDD', 'AGADIR', 'informatique', '2019-09-01', -17, '2019-09-04', 4, 'X ', 'SH1234', 'SH', 'HAGUOUNI  ', '2019-09-02', 'HAGUOUNI  ', '2019-09-22'),
(26, 'DFS232  ', 'ahmed ', 'informaticien', 'Anapec', 'AGADIR', 'informatique', '2019-09-01', 15, '2019-10-06', 5, 'C  ', 'SH6543', 'ahmed', 'HAGUOUNI  ', '2019-09-03', 'HAGUOUNI  ', '2019-09-22');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE `fonction` (
  `ID_FONCTION` int(11) NOT NULL,
  `NOM_FONCTION` varchar(150) NOT NULL,
  `DATE_CREATION` date NOT NULL,
  `UTILISATEUR_CREATION` varchar(150) NOT NULL,
  `DATE_MODIFICATION` date NOT NULL,
  `UTILISATEUR_MODIFICATION` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`ID_FONCTION`, `NOM_FONCTION`, `DATE_CREATION`, `UTILISATEUR_CREATION`, `DATE_MODIFICATION`, `UTILISATEUR_MODIFICATION`) VALUES
(6, 'informaticien', '2019-08-16', 'said haguoni', '2019-09-22', 'HAGUOUNI  '),
(7, 'chef service', '2019-08-18', 'said haguoni    ', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Structure de la table `gestion_abs`
--

CREATE TABLE `gestion_abs` (
  `CODE_OPERATION` varchar(100) NOT NULL,
  `MATRICULE` varchar(100) NOT NULL,
  `DATE_DUBET` date DEFAULT NULL,
  `DATE_FIN` date DEFAULT NULL,
  `NBR_JOURS` int(11) DEFAULT NULL,
  `DESIGNATION` varchar(100) DEFAULT NULL,
  `TYPE_ABSENCE` varchar(100) DEFAULT NULL,
  `SOUS_TYPE_ABSENCE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `ID_HISTORIQUE` int(11) NOT NULL,
  `EMPLOYE_MATRICULE` varchar(150) NOT NULL,
  `DATE_CONGE` date NOT NULL,
  `TYPE` varchar(150) NOT NULL,
  `NBR_JOURS` int(11) NOT NULL,
  `DATE_DUBET` date NOT NULL,
  `DATE_RETEUR` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`ID_HISTORIQUE`, `EMPLOYE_MATRICULE`, `DATE_CONGE`, `TYPE`, `NBR_JOURS`, `DATE_DUBET`, `DATE_RETEUR`) VALUES
(215, 'df23', '2019-09-04', 'maladie', 2, '2019-09-01', '2019-09-03'),
(216, 'DFS232', '2019-09-04', 'maladie', 3, '2019-09-01', '2019-09-04'),
(217, 'DFS232', '2019-09-04', 'maladie', 4, '2019-09-01', '2019-09-05'),
(218, 'DFS232', '2019-09-04', 'maladie', 3, '2019-09-21', '2019-09-24'),
(219, 'df23', '2019-09-04', 'maladie', 5, '2019-09-01', '2019-09-06'),
(220, 'df23', '2019-09-04', 'maladie', 2, '2019-09-19', '2019-09-21'),
(221, 'DFS232', '2019-09-04', 'maladie', 1, '2019-09-29', '2019-09-30');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `ID_SERVICE` int(11) NOT NULL,
  `TYPE_SERVICE` varchar(150) NOT NULL,
  `DATE_CREATION` date NOT NULL,
  `UTILISATEUR_CREATION` varchar(150) NOT NULL,
  `DATE_MODIFICATION` date NOT NULL,
  `UTILISATEUR_MODIFICATION` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`ID_SERVICE`, `TYPE_SERVICE`, `DATE_CREATION`, `UTILISATEUR_CREATION`, `DATE_MODIFICATION`, `UTILISATEUR_MODIFICATION`) VALUES
(3, 'informatique', '2019-08-16', 'said haguoni', '2019-08-22', 'HAGUOUNI  '),
(4, 'RH', '2019-09-22', 'HAGUOUNI  ', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Structure de la table `type_conge`
--

CREATE TABLE `type_conge` (
  `ID_TYPE` int(11) NOT NULL,
  `TYPE_CONGE` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `UTILISATEUR_CREATION` varchar(150) NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UTILISATEUR_MODIFICATION` varchar(150) NOT NULL,
  `DATE_MODIFICATION` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_conge`
--

INSERT INTO `type_conge` (`ID_TYPE`, `TYPE_CONGE`, `DESCRIPTION`, `UTILISATEUR_CREATION`, `DATE_CREATION`, `UTILISATEUR_MODIFICATION`, `DATE_MODIFICATION`) VALUES
(4, 'maladie', '', 'HAGUOUNI  ', '2019-09-22 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `type_contrat`
--

CREATE TABLE `type_contrat` (
  `ID_CONTRAT` int(11) NOT NULL,
  `TYPE_CONTRAT` varchar(150) NOT NULL,
  `DATE_CREATION` date NOT NULL,
  `UTILISATEUR_CREATION` varchar(150) NOT NULL,
  `DATE_MODIFICATION` date NOT NULL,
  `UTILISATEUR_MODIFICATION` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_contrat`
--

INSERT INTO `type_contrat` (`ID_CONTRAT`, `TYPE_CONTRAT`, `DATE_CREATION`, `UTILISATEUR_CREATION`, `DATE_MODIFICATION`, `UTILISATEUR_MODIFICATION`) VALUES
(3, 'CDD ', '2019-08-09', 'said haguoni', '2019-08-24', 'HAGUOUNI  '),
(7, 'Anapec', '2019-08-18', 'said haguoni    ', '2019-08-24', 'HAGUOUNI  '),
(8, 'CDI ', '2019-08-24', 'HAGUOUNI  ', '2019-09-22', 'HAGUOUNI  ');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID_USER` int(11) NOT NULL,
  `NOM` varchar(80) NOT NULL,
  `PRENOM` varchar(150) NOT NULL,
  `CIN` varchar(150) NOT NULL,
  `LOGIN` varchar(150) NOT NULL,
  `PASS` varchar(100) DEFAULT NULL,
  `DATE_CREATION` date DEFAULT NULL,
  `UTILISATEUR_CREATION` varchar(100) DEFAULT NULL,
  `DATE_MODIFICATION` date DEFAULT NULL,
  `UTILISATEUR_MODIFICATION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID_USER`, `NOM`, `PRENOM`, `CIN`, `LOGIN`, `PASS`, `DATE_CREATION`, `UTILISATEUR_CREATION`, `DATE_MODIFICATION`, `UTILISATEUR_MODIFICATION`) VALUES
(5, 'HAGUOUNI  ', 'SAID  ', 'sh195883', 'said@email.com  ', 'said', '2019-08-18', 'said haguoni    ', '2019-08-18', 'said haguoni    '),
(6, 'ahmed   ', 'ahmed   ', 'sh143453   ', 'a@email.com   ', 'said   ', '2019-08-23', 'HAGUOUNI  ', '2019-08-23', 'HAGUOUNI  ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`),
  ADD UNIQUE KEY `NOM_ADMIN` (`NOM_ADMIN`,`PRENOM_ADMIN`,`CIN`),
  ADD UNIQUE KEY `ID_ADMIN` (`ID_ADMIN`),
  ADD UNIQUE KEY `LOGIN` (`LOGIN`,`PASS`);

--
-- Index pour la table `conge`
--
ALTER TABLE `conge`
  ADD PRIMARY KEY (`ID_CONGE`),
  ADD UNIQUE KEY `ID_CONGE` (`ID_CONGE`),
  ADD UNIQUE KEY `ID_CONGE_2` (`ID_CONGE`),
  ADD UNIQUE KEY `ID_CONGE_3` (`ID_CONGE`);

--
-- Index pour la table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`ID_CONSULTATION`);

--
-- Index pour la table `depot`
--
ALTER TABLE `depot`
  ADD PRIMARY KEY (`ID_DEPOT`),
  ADD UNIQUE KEY `ID_DEPOT` (`ID_DEPOT`),
  ADD UNIQUE KEY `LEBILLE` (`LEBILLE`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`ID_EMPLOYE`),
  ADD UNIQUE KEY `MATRICULE` (`MATRICULE`),
  ADD UNIQUE KEY `CIN` (`CIN`),
  ADD UNIQUE KEY `NOM_EMPLOYE` (`NOM_EMPLOYE`);

--
-- Index pour la table `fonction`
--
ALTER TABLE `fonction`
  ADD PRIMARY KEY (`ID_FONCTION`),
  ADD UNIQUE KEY `ID_FONCTION` (`ID_FONCTION`),
  ADD UNIQUE KEY `NOM_FONCTION` (`NOM_FONCTION`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`ID_HISTORIQUE`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ID_SERVICE`),
  ADD UNIQUE KEY `ID_SERVICE` (`ID_SERVICE`),
  ADD UNIQUE KEY `TYPE_SERVICE` (`TYPE_SERVICE`);

--
-- Index pour la table `type_conge`
--
ALTER TABLE `type_conge`
  ADD PRIMARY KEY (`ID_TYPE`),
  ADD UNIQUE KEY `ID_TYPE` (`ID_TYPE`);

--
-- Index pour la table `type_contrat`
--
ALTER TABLE `type_contrat`
  ADD PRIMARY KEY (`ID_CONTRAT`),
  ADD UNIQUE KEY `ID_CONTRAT` (`ID_CONTRAT`),
  ADD UNIQUE KEY `ID_CONTRAT_2` (`ID_CONTRAT`),
  ADD UNIQUE KEY `TYPE_CONTRAT` (`TYPE_CONTRAT`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID_USER`),
  ADD UNIQUE KEY `id` (`ID_USER`),
  ADD UNIQUE KEY `id_2` (`ID_USER`),
  ADD UNIQUE KEY `LOGIN` (`LOGIN`),
  ADD UNIQUE KEY `NOM` (`NOM`),
  ADD UNIQUE KEY `CIN` (`CIN`),
  ADD UNIQUE KEY `PRENOM` (`PRENOM`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_ADMIN` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `conge`
--
ALTER TABLE `conge`
  MODIFY `ID_CONGE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT pour la table `consultation`
--
ALTER TABLE `consultation`
  MODIFY `ID_CONSULTATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `depot`
--
ALTER TABLE `depot`
  MODIFY `ID_DEPOT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `ID_EMPLOYE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `fonction`
--
ALTER TABLE `fonction`
  MODIFY `ID_FONCTION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `ID_HISTORIQUE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `ID_SERVICE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `type_conge`
--
ALTER TABLE `type_conge`
  MODIFY `ID_TYPE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `type_contrat`
--
ALTER TABLE `type_contrat`
  MODIFY `ID_CONTRAT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
