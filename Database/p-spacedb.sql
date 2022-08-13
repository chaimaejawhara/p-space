-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 13 août 2022 à 23:08
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `p-spacedb`
--

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

CREATE TABLE `employee` (
  `ID` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date of birth` date NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Certificates` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `Date of birth`, `Email`, `Phone`, `Position`, `Certificates`, `password`) VALUES
(1, 'Aboud', '2002-12-08', 'ab@ab.ab', '0630691655', 'Full Stack Devloper', 'advanced angular certificate', '');

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `Id_project` int(50) NOT NULL,
  `Name_project` varchar(50) NOT NULL,
  `Date_of_start` date NOT NULL,
  `Date_of_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projectemployee`
--

CREATE TABLE `projectemployee` (
  `ID` int(50) NOT NULL,
  `Id_project` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `skills`
--

CREATE TABLE `skills` (
  `Id_skill` int(50) NOT NULL,
  `Name_skill` varchar(100) NOT NULL,
  `Type_skill` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `skills_employee`
--

CREATE TABLE `skills_employee` (
  `ID` int(50) NOT NULL,
  `Id_skill` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Id_project`);

--
-- Index pour la table `projectemployee`
--
ALTER TABLE `projectemployee`
  ADD KEY `Id_project_fk` (`Id_project`),
  ADD KEY `ID_p_fk` (`ID`,`Id_project`);

--
-- Index pour la table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`Id_skill`);

--
-- Index pour la table `skills_employee`
--
ALTER TABLE `skills_employee`
  ADD KEY `Id_s_fk` (`ID`,`Id_skill`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `Id_project` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `skills`
--
ALTER TABLE `skills`
  MODIFY `Id_skill` int(50) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `projectemployee`
--
ALTER TABLE `projectemployee`
  ADD CONSTRAINT `projectemployee_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `employee` (`ID`),
  ADD CONSTRAINT `projectemployee_ibfk_2` FOREIGN KEY (`Id_project`) REFERENCES `project` (`Id_project`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
