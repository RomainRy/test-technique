-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 17 août 2024 à 14:21
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `romain-test`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `pseudo`, `email`, `password`) VALUES
(1, 'romain', 'romain', 'roman@gmail.com', 'romain'),
(2, 'azerty', 'azerty', 'azerty@gmail.com', 'azerty'),
(3, 'azertyuiop', 'azertyuiop', 'azertyuiop@gmail.com', '$2y$10$OOb33Jl/Nf8N4nMQOvUilONbKRwKd9uNFNZ/zLFyRfqhzfzUSYBAO'),
(4, 'romain', 'romain', 'roman@gmail.com', '$2y$10$OuxjAy/xHFsQeXxV4DogzO9AeQnCW2D..Uw07MZPUXwq5Y.PCv3X2'),
(5, 'boo', 'boo', 'boo@gmail.com', '$2y$10$T1bIcaG1vdYcF1WwHyNIE.1fLtvj5odz3Lk6gtXQEP6Xkw0MhAERS'),
(6, 'tt', 'azerty', 'tt@gmail.com', '$2y$10$NfLXly9wowJLmdcPXT8JLuPpqZnYBfJROoVicrkXDpfG40Z55sNtC');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
