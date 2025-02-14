-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 13 fév. 2025 à 15:57
-- Version du serveur : 8.4.3
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `photo_albums`
--

-- --------------------------------------------------------

--
-- Structure de la table `add_photos`
--

CREATE TABLE `add_photos` (
  `photo_id` int NOT NULL,
  `photo_name` varchar(50) NOT NULL,
  `photo_desc` varchar(200) DEFAULT NULL,
  `photo_url` varchar(50) NOT NULL,
  `photo_date` date NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `add_photos`
--

INSERT INTO `add_photos` (`photo_id`, `photo_name`, `photo_desc`, `photo_url`, `photo_date`, `user_id`) VALUES
(1, 'Coucher de soleil', 'Magnifique coucher de soleil sur la plage.', 'https://example.com/photos/sunset.jpg', '2024-01-10', 1),
(2, 'Montagne enneigée', 'Sommet enneigé avec ciel bleu.', 'https://example.com/photos/mountain.jpg', '2024-01-15', 2),
(3, 'Forêt d’automne', 'Feuilles rouges et oranges dans une forêt.', 'https://example.com/photos/forest.jpg', '2024-02-05', 3),
(4, 'Chat mignon', 'Un chat endormi sur un canapé.', 'https://example.com/photos/cat.jpg', '2024-02-20', 4),
(5, 'Plage paradisiaque', 'Eau turquoise et sable blanc.', 'https://example.com/photos/beach.jpg', '2024-03-10', 5),
(6, 'Ciel étoilé', 'Voie lactée visible dans le ciel nocturne.', 'https://example.com/photos/stars.jpg', '2024-04-01', 1),
(7, 'Ville de nuit', 'Lumières d’une grande ville vues du ciel.', 'https://example.com/photos/city.jpg', '2024-04-15', 2),
(8, 'Cascade majestueuse', 'Une immense cascade en pleine jungle.', 'https://example.com/photos/waterfall.jpg', '2024-05-05', 3),
(9, 'Café matinal', 'Un café fumant sur une table en bois.', 'https://example.com/photos/coffee.jpg', '2024-06-10', 4),
(10, 'Pont suspendu', 'Un pont en bois dans une forêt tropicale.', 'https://example.com/photos/bridge.jpg', '2024-07-01', 5),
(11, 'Lever du jour', 'Premières lueurs du soleil sur une vallée.', 'https://example.com/photos/sunrise.jpg', '2024-07-15', 1),
(12, 'Arc-en-ciel', 'Un arc-en-ciel après la pluie.', 'https://example.com/photos/rainbow.jpg', '2024-08-05', 2),
(13, 'Voilier sur l’océan', 'Un voilier naviguant au coucher du soleil.', 'https://example.com/photos/sailboat.jpg', '2024-09-10', 3),
(14, 'Portrait en noir et blanc', 'Un visage expressif capturé en monochrome.', 'https://example.com/photos/portrait.jpg', '2024-10-01', 4),
(15, 'Horizon urbain', 'Vue panoramique sur une métropole moderne.', 'https://example.com/photos/skyline.jpg', '2024-11-15', 5),
(16, 'nouvelle photo', 'un exemple', 'nouvelle_photo.png', '2025-01-12', 5);

-- --------------------------------------------------------

--
-- Structure de la table `albums`
--

CREATE TABLE `albums` (
  `album_id` int NOT NULL,
  `album_name` varchar(50) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `albums`
--

INSERT INTO `albums` (`album_id`, `album_name`, `user_id`) VALUES
(1, 'Voyages et paysages', 1),
(2, 'Moments en noir et blanc', 2),
(3, 'Nature sauvage', 3),
(4, 'Portraits expressifs', 4),
(5, 'mon album', 1);

-- --------------------------------------------------------

--
-- Structure de la table `photo_has_albums`
--

CREATE TABLE `photo_has_albums` (
  `album_id` int NOT NULL,
  `photo_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `photo_has_albums`
--

INSERT INTO `photo_has_albums` (`album_id`, `photo_id`) VALUES
(1, 1),
(1, 3),
(3, 3),
(1, 5),
(3, 6),
(1, 7),
(3, 8),
(2, 14);

-- --------------------------------------------------------

--
-- Structure de la table `sharing`
--

CREATE TABLE `sharing` (
  `album_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `sharing`
--

INSERT INTO `sharing` (`album_id`, `user_id`) VALUES
(2, 1),
(1, 2),
(3, 2),
(1, 3),
(4, 3),
(3, 5);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_nom` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `user_nom`, `user_email`, `user_mdp`) VALUES
(1, 'Alice Dupont', 'alice.dupont@email.com', 'MotDePasseAlice123'),
(2, 'Bob Martin', 'bob.martin@email.com', 'MotDePasseBob456'),
(3, 'Charlie Durand', 'charlie.durand@email.com', 'MotDePasseCharlie789'),
(4, 'David Morel', 'david.morel@email.com', 'MotDePasseDavid000'),
(5, 'Emma Lefevre', 'emma.lefevre@email.com', 'MotDePasseEmma321');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `add_photos`
--
ALTER TABLE `add_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `photo_has_albums`
--
ALTER TABLE `photo_has_albums`
  ADD PRIMARY KEY (`album_id`,`photo_id`),
  ADD KEY `photo_id` (`photo_id`);

--
-- Index pour la table `sharing`
--
ALTER TABLE `sharing`
  ADD PRIMARY KEY (`album_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `add_photos`
--
ALTER TABLE `add_photos`
  MODIFY `photo_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `albums`
--
ALTER TABLE `albums`
  MODIFY `album_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `add_photos`
--
ALTER TABLE `add_photos`
  ADD CONSTRAINT `add_photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `photo_has_albums`
--
ALTER TABLE `photo_has_albums`
  ADD CONSTRAINT `photo_has_albums_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  ADD CONSTRAINT `photo_has_albums_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `add_photos` (`photo_id`);

--
-- Contraintes pour la table `sharing`
--
ALTER TABLE `sharing`
  ADD CONSTRAINT `sharing_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  ADD CONSTRAINT `sharing_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
