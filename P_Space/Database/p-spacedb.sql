-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 14 août 2022 à 17:21
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
  `Certificates` text NOT NULL,
  `password` varchar(500) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `projet` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `Date of birth`, `Email`, `Phone`, `Position`, `Certificates`, `password`, `Image`, `projet`) VALUES
(135291, 'STEVENSON Emilia', '1996-12-08', 'emiliastev@mail.com', '243-677-9033', 'Java Devloper', 'Java Programming Masterclass covering Java 11 & Java 17.\r\nJava Programming and Software Engineering Fundamentals: Duke University.\r\nObject Oriented Programming in Java: University of California San Diego.\r\nSpécialisation Object Oriented Java Programming: Data Structures and Beyond.\r\n', '1', 'photos\\img1.jpeg.jpeg', 'PIXIS\r\nRANDOBAR\r\nCIH-SERVICE\r\nANDORA\r\nREMOTRULE\r\nCARDIB'),
(135292, 'HANKS OPRAH', '1995-06-04', 'oprahanks@mail.com', '123-457-3309', 'Data scientiste', 'Spécialisation Data Science: Foundations using R.\r\nSpécialisation Excel Skills for Data Analytics and Visualization.\r\nData Science Graduate Certificate.\r\nPost Graduate Certificate in Data Science & Machine Learning.', '2', 'photos\\img2.jpeg.jpeg', 'PIXIS\r\nRANDOME\r\nDATARANGE\r\nMASTERCOR\r\nIX\r\nWLW'),
(135293, 'MORGAN Ellie', '1994-11-09', 'elliemorgan@mail.com', '208-237-8564', 'Frontend developer', 'Spécialisation Frontend Development using React.\r\nFront End Web Development Graduate Certificate.\r\nCertified Software Development Professional (CSDP).\r\nJavascript Development Certified Professional.\r\nCertified Web Professional - Application Developer (CWP).', '3', 'photos\\img3.jpeg.jpeg', 'RANDOM\r\nIUX\r\nMOZILA-COFFE\r\nSWEETPIE-RESTAURENT\r\nWINDOW_LINK\r\nDOUBLEBOBBLE'),
(135294, 'LAWRAN Wanda', '1993-07-07', 'wandalawran@mail.com', '098-957-3405', 'IT manager', 'Project Initiation.\r\nProject Planning.\r\nProject Execution: Running the Project.\r\nIT management from harvard unniversity.', '4\r\n', 'photos\\img4.jpeg.jpeg', 'PIXIS\r\nPOSTIN\r\nRANDOM\r\nIUX\r\nSLASH\r\nSWEETPIE-RESTANRENT'),
(135295, 'MAHFOD Radwa', '1993-08-17', 'radwamahfod@mail.com', '111-434-0099', 'AI Scientist', 'IEEE Academy on Artificial Intelligence.\r\nIEEE Academy on Smart Grid Distribution Automation.\r\nIEEE Academy on Internet of Things (IoT) Communication Standards.\r\nIEEE Academy on Internet of Things (IoT) for the Computing Platforms.\r\nArtificial Intelligence: Implications for Business Strategy.\r\n', '5', 'photos\\img5.jpeg.jpeg', 'RANDOM\r\nREWERD\r\nAUXD\r\nPURPLE-EYE\r\nBLACKBERRY\r\nHLOAD\r\nF-SOCIETY'),
(135296, 'JOHNSON Martin', '1995-04-29', 'martinjoh@mail.com', '343-097-1221', 'Backend developer', 'Back End Web Development Graduate Certificate.\r\nBack-End Engineer.\r\nComplete Backend Development- Python Roadmap.\r\nDjango 3 - Python Backend Web Development.\r\nNode, SQL, & PostgreSQL - Mastering Backend Web Development.', '6', 'photos\\img6.jpeg.jpeg', 'PIXIS\r\nPURPLLE\r\nMOZILA-COFFE\r\nRANDOM\r\nWXW\r\nCIEL\r\n'),
(135297, 'MURRAY John', '1992-12-23', 'murrayjohn@mail.com', '676-345-4520', 'Data scientist', 'Spécialisation Data Science: Foundations using R.\r\nSpécialisation Excel Skills for Data Analytics and Visualization.\r\nData Science Graduate Certificate.\r\nPost Graduate Certificate in Data Science & Machine Learning.', '7', 'photos\\img7.jpeg.jpeg', 'PIXIS\r\nRANDOME\r\nDATARANGE\r\nMASTERCOR\r\nIX\r\nWLW\r\nDV-STRUCT'),
(135298, 'KIDMAN Kevin', '1989-04-03', 'kevkid@mail.com', '880-565-3211', 'IT manager', 'Project Initiation.\r\nProject Planning.\r\nProject Execution: Running the Project.\r\nIT management from harvard unniversity.', '8', 'photos\\img8.jpeg.jpeg', 'PIXIS\r\nPOSTIN\r\nRANDOM\r\nIUX\r\nSLASH\r\nSWEETPIE-RESTANRENT'),
(135299, 'CAVILL Zack', '1996-11-30', 'zackcavill@mail.com', '010-555-5681', 'AI Scientist', 'Artificial Intelligence.\r\nSmart Grid Distribution Automation.\r\nInternet of Things (IoT) Communication Standards.\r\nInternet of Things (IoT) for the Computing Platforms.', '9', 'photos\\img9.jpeg.jpeg', 'RANDOM\r\nREWERD\r\nAUXD\r\nPURPLE-EYE\r\nBLACKBERRY\r\nHLOAD\r\nF-SOCIETY'),
(135300, 'BROWN Henry', '1993-10-16', 'henrybrown@mail.com', '100-999-5432', 'Application developer', 'Master Android Application Development.\r\nModern Android app using Kotlin, MVVM, Dagger2, RxJava.\r\nAndroid Jetpack masterclass in Kotlin.\r\nDependency Injection in Android with Dagger 2 and Hilt.\r\nAndroid Unit Testing and Test Driven Development.\r\n', '10', 'photos\\img10.jpeg.jpeg', 'RANDOM\r\nREWERD\r\nAUXD\r\nPURPLE-EYE\r\nBLACKBERRY\r\nHLOAD\r\nF-SOCIETY');

-- --------------------------------------------------------

--
-- Structure de la table `skills`
--

CREATE TABLE `skills` (
  `Id_skill` int(50) NOT NULL,
  `Name_skill` varchar(100) NOT NULL,
  `Type_skill` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `skills`
--

INSERT INTO `skills` (`Id_skill`, `Name_skill`, `Type_skill`) VALUES
(1, 'React', 'IT'),
(2, 'AngularJS', 'IT'),
(3, 'HTML5', 'IT'),
(4, 'CSS3', 'IT'),
(5, 'Javascript', 'IT'),
(6, 'Java', 'IT'),
(7, 'Ruy', 'IT'),
(8, 'C', 'IT'),
(9, 'Python', 'IT'),
(10, 'Typescript', 'IT'),
(11, 'React', 'IT'),
(12, 'C++', 'IT'),
(13, 'MySQL', 'IT'),
(14, 'Vuejs', 'IT'),
(15, 'PHP', 'IT');

-- --------------------------------------------------------

--
-- Structure de la table `skills_employee`
--

CREATE TABLE `skills_employee` (
  `ID` int(50) NOT NULL,
  `Id_skill` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `skills_employee`
--

INSERT INTO `skills_employee` (`ID`, `Id_skill`) VALUES
(1, 1),
(1, 2),
(135291, 1),
(135291, 6),
(135291, 8),
(135291, 10),
(135291, 14),
(135292, 1),
(135292, 7),
(135292, 11),
(135292, 13),
(135292, 14),
(135293, 2),
(135293, 3),
(135293, 4),
(135293, 5),
(135293, 5),
(135293, 10),
(135293, 11),
(135293, 14),
(135294, 9),
(135294, 13),
(135295, 2),
(135295, 6),
(135295, 7),
(135295, 8),
(135295, 12),
(135296, 6),
(135296, 9),
(135296, 9),
(135296, 13),
(135296, 15),
(135297, 2),
(135297, 6),
(135297, 7),
(135297, 9),
(135297, 12),
(135297, 13),
(135298, 3),
(135298, 3),
(135298, 4),
(135298, 9),
(135298, 9),
(135298, 14),
(135299, 6),
(135299, 7),
(135299, 8),
(135299, 9),
(135299, 12),
(135299, 12),
(135300, 1),
(135300, 5),
(135300, 6),
(135300, 7),
(135300, 8),
(135300, 9),
(135300, 12),
(135300, 15);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135301;

--
-- AUTO_INCREMENT pour la table `skills`
--
ALTER TABLE `skills`
  MODIFY `Id_skill` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
