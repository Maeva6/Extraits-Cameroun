-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 02 oct. 2025 à 02:23
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `extraits`
--

-- --------------------------------------------------------

--
-- Structure de la table `accessoires`
--

CREATE TABLE `accessoires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomAccessoire` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `guideUtilisation` varchar(255) NOT NULL,
  `guideProduits` varchar(255) NOT NULL,
  `prixAccessoire` varchar(255) NOT NULL,
  `capacite` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image2Url` varchar(255) DEFAULT NULL,
  `image3Url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accessoires`
--

INSERT INTO `accessoires` (`id`, `nomAccessoire`, `slug`, `description`, `guideUtilisation`, `guideProduits`, `prixAccessoire`, `capacite`, `imageUrl`, `categorie`, `available`, `created_at`, `updated_at`, `image2Url`, `image3Url`) VALUES
(1, 'Vaporisateur', 'mpolkjh', 'sdfghjkl cvgbhjn', 'hjk', 'hhjkl', '15000', '200ml', 'https://i.imgur.com/0rYkVce.jpeg', 'diffuseur', 1, '2025-08-18 11:32:41', '2025-08-18 11:32:41', 'https://i.imgur.com/N5htUDH.jpeg', NULL),
(2, 'Vap01', 'Vap01', 'apparail permettant de vaporiser du parfum', 'ouvrer ', 'bruits', '25000', '250ml', 'https://i.imgur.com/vPXzphk.jpeg', 'diffuseur', 1, '2025-08-22 13:37:39', '2025-08-22 13:37:39', 'https://i.imgur.com/vPXzphk.jpeg', 'https://i.imgur.com/vPXzphk.jpeg'),
(3, 'Diffuseur Aromathérapique', 'diffuseur-aromatherapique', '', '', '', '25000', NULL, '', '', 1, '2025-09-13 11:06:41', '2025-09-13 11:06:41', NULL, NULL),
(4, 'Diffuseur intelligent AE100', 'Diffuseur intelligent AE100', '', '', '', '40000', NULL, '', '', 1, '2025-09-13 11:06:41', '2025-09-13 11:06:41', NULL, NULL),
(5, 'Bruleurs fondant métallique', 'Bruleurs fondant métallique', '', '', '', '8000', NULL, '', '', 1, '2025-09-13 11:10:05', '2025-09-13 11:10:05', NULL, NULL),
(6, 'Bruleurs fondant métallique chaise Or', 'Bruleurs fondant métallique chaise Or', '', '', '', '8000', NULL, '', '', 1, '2025-09-13 11:10:05', '2025-09-13 11:10:05', NULL, NULL),
(7, 'Bruleurs fondant métallique chaise Noir', 'Bruleurs fondant métallique chaise Noir', '', '', '', '8000', NULL, '', '', 1, '2025-09-13 11:10:05', '2025-09-13 11:10:05', NULL, NULL),
(8, 'Bruleurs fondant métallique crystal Or', 'Bruleurs fondant métallique crystal Or', '', '', '', '8000', NULL, '', '', 1, '2025-09-13 11:10:05', '2025-09-13 11:10:05', NULL, NULL),
(9, 'Bruleurs fondant métallique crystal Noir', 'Bruleurs fondant métallique crystal Noir', '', '', '', '8000', NULL, '', '', 1, '2025-09-13 11:10:05', '2025-09-13 11:10:05', NULL, NULL),
(10, 'Bruleurs fondant métallique diamant Or', 'Bruleurs fondant métallique diamant Or', '', '', '', '8000', NULL, '', '', 1, '2025-09-13 11:10:05', '2025-09-13 11:10:05', NULL, NULL),
(11, 'Bruleurs fondant métallique diamant Noir', 'Bruleurs fondant métallique diamant Noir', '', '', '', '8000', NULL, '', '', 1, '2025-09-13 11:14:19', '2025-09-13 11:14:19', NULL, NULL),
(12, 'Bruleurs fondant céramique PM', 'Bruleurs fondant céramique PM', '', '', '', '3000', NULL, '', '', 1, '2025-09-13 11:14:19', '2025-09-13 11:14:19', NULL, NULL),
(13, 'Bruleurs fondant céramique GM', 'Bruleurs fondant céramique GM', '', '', '', '6500', NULL, '', '', 1, '2025-09-13 11:14:19', '2025-09-13 11:14:19', NULL, NULL),
(14, 'Encensoir batônnets bois', 'Encensoir batônnets bois', '', '', '', '1000', NULL, '', '', 1, '2025-09-13 11:14:19', '2025-09-13 11:14:19', NULL, NULL),
(15, 'Encensoir céramique waterfall', 'Encensoir céramique waterfall', '', '', '', '5000', NULL, '', '', 1, '2025-09-13 11:14:19', '2025-09-13 11:14:19', NULL, NULL),
(16, 'Coffret diffuseur voiture', 'Coffret diffuseur voiture', '', '', '', '20000', NULL, '', '', 1, '2025-09-13 11:14:19', '2025-09-13 11:14:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_gaps60@gmail.com|127.0.0.1', 'i:2;', 1757759437),
('laravel_cache_gaps60@gmail.com|127.0.0.1:timer', 'i:1757759437;', 1757759437),
('laravel_cache_napani@gmail.com|127.0.0.1', 'i:1;', 1751404876),
('laravel_cache_napani@gmail.com|127.0.0.1:timer', 'i:1751404876;', 1751404876),
('laravel_cache_toto@gmail.com|127.0.0.1', 'i:2;', 1753128216),
('laravel_cache_toto@gmail.com|127.0.0.1:timer', 'i:1753128216;', 1753128216);

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Huile de parfum ', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(2, 'Mini bougie personalisée', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(3, 'Brume parfumée', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(4, 'Eau de parfum', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(5, 'Extrait de parfum', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(6, 'Diffuseur à roseaux', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(7, 'Huiles essentielles', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(8, 'Spray d\'ambiance / pour linge', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(9, 'Parfum pour voiture', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(10, 'Brume Corporelle', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(11, 'Barres de cire parfumée', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(12, 'Fondants de cire parfumée', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(13, 'Désodorisants en perles parfumées', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(14, 'Gel HydroAlcoolique', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(15, 'Diffuseurs à roseaux', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(16, 'Porte-encens', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(17, 'Billes désodorisantes', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(18, 'Baume à lèvres ', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(19, 'Savon liquide mains', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(20, 'Crème de mains et corps', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(21, 'Lait pour le corps', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(22, 'Savons parfumés saponifiés à froid', '2025-06-30 13:30:02', '2025-06-30 13:30:02'),
(23, 'Brume d\'intérieure et textile', '2025-09-13 10:35:56', '2025-09-13 10:35:56'),
(24, 'Poudre parfumante', '2025-09-13 10:35:56', '2025-09-13 10:35:56'),
(25, 'Bougies parfumées', '2025-09-13 10:36:59', '2025-09-13 10:36:59'),
(26, 'Fondants de cire', '2025-09-13 10:36:59', '2025-09-13 10:36:59'),
(27, 'Perles odorantes', '2025-09-13 10:36:59', '2025-09-13 10:36:59'),
(28, 'Bougie chauffe plat ', '2025-09-13 10:36:59', '2025-09-13 10:36:59'),
(29, 'Cones d\'Encens', '2025-09-13 10:36:59', '2025-09-13 10:36:59'),
(30, 'Bougie d\'anniversaire', '2025-09-13 10:36:59', '2025-09-13 10:36:59'),
(31, 'déodorant naturel', '2025-09-13 10:41:42', '2025-09-13 10:41:42'),
(32, 'Bougies', '2025-09-13 10:56:37', '2025-09-13 10:56:37'),
(33, 'Bougie chandelle décorative', '2025-09-13 10:57:33', '2025-09-13 10:57:37'),
(34, 'Bâtonnets d\'Encens ', '2025-09-13 11:00:21', '2025-09-13 11:00:21'),
(35, 'Recharge parfum diffuseur intelligent', '2025-09-13 11:01:55', '2025-09-13 11:01:55'),
(36, 'Recharge parfum diffuseur de voiture', '2025-09-13 11:01:55', '2025-09-13 11:01:55'),
(37, 'Scented Wax Bars', '2025-09-13 11:03:29', '2025-09-13 11:03:29'),
(38, 'Déodorant', '2025-09-15 13:04:45', '2025-09-15 13:04:45');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `idCommande` bigint(20) UNSIGNED NOT NULL,
  `idClient` bigint(20) UNSIGNED NOT NULL,
  `nom_client` varchar(255) DEFAULT NULL,
  `prenom_client` varchar(255) DEFAULT NULL,
  `telephone_client` varchar(255) DEFAULT NULL,
  `dateCommande` datetime NOT NULL DEFAULT current_timestamp(),
  `statutCommande` enum('en_attente','payée','expédiée','livrée','annulée') NOT NULL DEFAULT 'en_attente',
  `modePaiement` varchar(255) DEFAULT NULL,
  `montantTotal` decimal(10,2) NOT NULL,
  `adresseLivraison` text NOT NULL,
  `commentaire` text DEFAULT NULL,
  `origineCommande` enum('en_ligne','boutique') NOT NULL DEFAULT 'en_ligne',
  `idEmploye` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`idCommande`, `idClient`, `nom_client`, `prenom_client`, `telephone_client`, `dateCommande`, `statutCommande`, `modePaiement`, `montantTotal`, `adresseLivraison`, `commentaire`, `origineCommande`, `idEmploye`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, NULL, NULL, '2025-06-30 23:55:21', 'payée', 'mobile_money', 7350.00, 'Douala, Yassa, Tél: 237681465182, Nom: Maëva Towa', 'Commande via checkout', 'en_ligne', NULL, '2025-06-30 20:55:21', '2025-06-30 20:55:21'),
(2, 3, NULL, NULL, NULL, '2025-07-01 11:32:05', 'en_attente', 'mobile_money', 1500000.00, 'Douala, Yassa, Tél: 237681465182, Nom: Maëva Towa', 'Commande via checkout', 'en_ligne', NULL, '2025-07-01 08:32:05', '2025-07-01 08:32:05'),
(3, 3, NULL, NULL, NULL, '2025-07-01 11:44:20', 'en_attente', 'mobile_money', 350000.00, 'Douala, Yassa, Tél: 237681465182, Nom: Maëva Towa', 'Commande via checkout', 'en_ligne', NULL, '2025-07-01 08:44:20', '2025-07-01 08:44:20'),
(4, 3, NULL, NULL, NULL, '2025-07-01 11:49:52', 'en_attente', 'mobile_money', 1500000.00, 'Douala, Yassa, Tél: 237681465182, Nom: Maëva Towa', 'Commande via checkout', 'en_ligne', NULL, '2025-07-01 08:49:52', '2025-07-01 08:49:52'),
(5, 1, NULL, NULL, NULL, '2025-07-01 15:55:24', 'en_attente', 'espèces', 14000.00, 'Founr, buil, Tél: Non fourni, Nom: MAWAMBA TOWA Maeva MAWAMBA TOWA Maeva', 'Commande via checkout', 'en_ligne', NULL, '2025-07-01 12:55:24', '2025-07-01 12:55:24'),
(6, 7, NULL, NULL, NULL, '2025-07-02 02:24:31', 'en_attente', 'espèces', 1500.00, 'Yaoundé, Essos, Tél: Non fourni, Nom: junior junior', 'Commande via checkout', 'en_ligne', NULL, '2025-07-01 23:24:31', '2025-07-01 23:24:31'),
(7, 7, NULL, NULL, NULL, '2025-07-02 02:24:35', 'en_attente', 'espèces', 1500.00, 'Yaoundé, Essos, Tél: Non fourni, Nom: junior junior', 'Commande via checkout', 'en_ligne', NULL, '2025-07-01 23:24:35', '2025-07-01 23:24:35'),
(8, 7, NULL, NULL, NULL, '2025-07-02 02:24:53', 'payée', 'espèces', 15000.00, 'Yaoundé, Essos, Tél: Non fourni, Nom: junior junior', 'Commande via checkout', 'en_ligne', NULL, '2025-07-01 23:24:53', '2025-07-01 23:24:53'),
(9, 7, NULL, NULL, NULL, '2025-07-07 06:18:30', 'payée', 'carte', 7000.00, 'Douala, Yassa, Tél: Non fourni, Nom: junior junior', 'Commande via checkout', 'en_ligne', NULL, '2025-07-07 03:18:30', '2025-07-07 03:18:30'),
(10, 7, NULL, NULL, NULL, '2025-07-07 06:27:55', 'payée', 'espèces', 7000.00, 'Yaounde, Ngoa, Tél: Non fourni, Nom: junior junior', 'Commande via checkout', 'en_ligne', NULL, '2025-07-07 03:27:55', '2025-07-07 03:27:55'),
(11, 1, NULL, NULL, NULL, '2025-09-11 16:43:19', 'en_attente', 'mobile_money', 500500.00, 'Douala, Yassa, Tél: 681465182, Nom: MAWAMBA GABI', 'Commande via checkout', 'en_ligne', NULL, '2025-09-11 14:43:19', '2025-09-11 14:43:19'),
(12, 1, NULL, NULL, NULL, '2025-09-11 16:52:48', 'en_attente', 'mobile_money', 2000.00, 'Douala, Yassa, Tél: 681465182, Nom: MAWAMBA GABI', 'Commande via checkout', 'en_ligne', NULL, '2025-09-11 14:52:48', '2025-09-11 14:52:48'),
(13, 17, NULL, NULL, NULL, '2025-09-13 11:30:31', 'en_attente', 'mobile_money', 15000.00, 'Douala, Yassa, Tél: 698562312, Nom: MAWAMBA GABI', 'Commande via checkout', 'en_ligne', NULL, '2025-09-13 09:30:31', '2025-09-13 09:30:31'),
(14, 1, NULL, NULL, NULL, '2025-09-26 14:57:21', 'en_attente', 'mobile_money', 15000.00, 'Douala, Yassa, Tél: 692616200, Nom: GABRIELLA TOWA TOWA', 'Commande via checkout', 'en_ligne', NULL, '2025-09-26 12:57:21', '2025-09-26 12:57:21');

-- --------------------------------------------------------

--
-- Structure de la table `commande_accessoire`
--

CREATE TABLE `commande_accessoire` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commande_id` bigint(20) UNSIGNED NOT NULL,
  `accessoire_id` bigint(20) UNSIGNED NOT NULL,
  `quantite` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande_produit`
--

CREATE TABLE `commande_produit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commande_id` bigint(20) UNSIGNED NOT NULL,
  `produit_id` bigint(20) UNSIGNED NOT NULL,
  `quantite` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande_produit`
--

INSERT INTO `commande_produit` (`id`, `commande_id`, `produit_id`, `quantite`, `created_at`, `updated_at`) VALUES
(1, 5, 11, 1, '2025-07-01 12:55:24', '2025-07-01 12:55:24'),
(2, 5, 11, 1, '2025-07-01 12:55:24', '2025-07-01 12:55:24'),
(3, 6, 12, 1, '2025-07-01 23:24:31', '2025-07-01 23:24:31'),
(4, 6, 14, 1, '2025-07-01 23:24:31', '2025-07-01 23:24:31'),
(5, 7, 12, 1, '2025-07-01 23:24:35', '2025-07-01 23:24:35'),
(6, 7, 14, 1, '2025-07-01 23:24:35', '2025-07-01 23:24:35'),
(7, 8, 12, 1, '2025-07-01 23:24:53', '2025-07-01 23:24:53'),
(8, 8, 14, 1, '2025-07-01 23:24:53', '2025-07-01 23:24:53'),
(9, 9, 11, 1, '2025-07-07 03:18:30', '2025-07-07 03:18:30'),
(10, 10, 11, 1, '2025-07-07 03:27:55', '2025-07-07 03:27:55');

-- --------------------------------------------------------

--
-- Structure de la table `commande_service`
--

CREATE TABLE `commande_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commande_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `quantite` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `produit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `accessoire_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `produit_id`, `accessoire_id`, `service_id`, `created_at`, `updated_at`) VALUES
(1, 1, 15, NULL, NULL, '2025-08-06 15:59:14', '2025-08-06 15:59:14'),
(2, 1, 12, NULL, NULL, '2025-08-06 16:17:13', '2025-08-06 16:17:13'),
(3, 1, 14, NULL, NULL, '2025-08-06 16:22:07', '2025-08-06 16:22:07'),
(4, 1, 16, NULL, NULL, '2025-08-07 20:02:35', '2025-08-07 20:02:35'),
(5, 1, 33, NULL, NULL, '2025-08-07 20:02:40', '2025-08-07 20:02:40'),
(50, 1, NULL, NULL, 1, '2025-09-11 13:53:01', '2025-09-11 13:53:01'),
(51, 1, NULL, 2, NULL, '2025-09-11 13:53:11', '2025-09-11 13:53:11'),
(52, 17, NULL, 1, NULL, '2025-09-13 09:30:15', '2025-09-13 09:30:15');

-- --------------------------------------------------------

--
-- Structure de la table `formules`
--

CREATE TABLE `formules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produit_id` bigint(20) UNSIGNED NOT NULL,
  `nom_formule` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `createur` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formule_ingredient`
--

CREATE TABLE `formule_ingredient` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `formule_id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_id` bigint(20) UNSIGNED NOT NULL,
  `quantite` decimal(10,3) UNSIGNED NOT NULL,
  `unite` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

CREATE TABLE `fournisseurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_fournisseur` varchar(255) NOT NULL,
  `contact_tel` varchar(255) DEFAULT NULL,
  `adresse_mail` varchar(255) DEFAULT NULL,
  `adresse_boutique` text DEFAULT NULL,
  `categorie_produit` enum('Alimentaire','Boissons','Épicerie','Produits frais','Matériel','Équipement','Services','Autres') DEFAULT NULL,
  `site_web` varchar(255) DEFAULT NULL,
  `note` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`id`, `nom_fournisseur`, `contact_tel`, `adresse_mail`, `adresse_boutique`, `categorie_produit`, `site_web`, `note`, `created_at`, `updated_at`) VALUES
(1, 'GABRIELLA TOWA', '+23699605479', 'gaps6860@gmail.com', 'Cameroun\nDouala', 'Produits frais', NULL, 4, '2025-06-30 21:03:03', '2025-06-30 21:03:03'),
(2, 'Gabi', '+23699605479', 'gaps6860@gmail.com', 'Cameroun\nDouala', 'Épicerie', NULL, 5, '2025-06-30 22:24:17', '2025-06-30 22:24:17'),
(3, 'Amazon', '600000000', 'amazon@gmail.com', 'USA', 'Boissons', 'https://www.amazon.com/', 3, '2025-07-07 04:09:28', '2025-07-07 04:09:28'),
(4, 'gaby', '600000000', 'admin@gmail.com', '/', 'Alimentaire', 'https://mattmealhub.com/', 3, '2025-07-07 10:32:15', '2025-07-07 10:32:15'),
(5, 'Sam store\r\n', '699605479', 'gaps6860@gmail.com', 'Cameroun\nDouala', 'Produits frais', NULL, 4, '2025-06-30 20:03:03', '2025-06-30 20:03:03'),
(6, 'Gabi', '699605479', 'gaps6860@gmail.com', 'Cameroun\nDouala', 'Épicerie', NULL, 5, '2025-06-30 21:24:17', '2025-06-30 21:24:17');

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomIngredient` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `fournisseur` varchar(255) DEFAULT NULL,
  `stockActuel` int(11) NOT NULL,
  `prix` decimal(8,2) NOT NULL,
  `seuilAlerte` int(11) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `etat_physique` enum('liquide','solide','gazeux') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `nomIngredient`, `description`, `fournisseur`, `stockActuel`, `prix`, `seuilAlerte`, `categorie`, `photo`, `etat_physique`, `created_at`, `updated_at`) VALUES
(1, 'Vanille Bourbon', NULL, NULL, 154, 500.00, 50, 'Gourmand', 'https://i.imgur.com/mpiJ8gA.jpeg', 'liquide', NULL, '2025-07-01 07:02:23'),
(2, 'Bois de Santal', NULL, NULL, 300, 500.00, 50, 'Boisé', 'https://i.imgur.com/tAa2ROi.jpeg', 'solide', NULL, '2025-07-01 06:07:19'),
(3, 'Fleur d’oranger', NULL, NULL, 40, 500.00, 50, 'Floral', 'https://i.imgur.com/YW02gKN.jpeg', 'liquide', NULL, '2025-07-01 07:57:25'),
(4, 'Ambre gris', NULL, NULL, 210, 500.00, 50, 'Oriental', 'https://i.imgur.com/PpJHzTY.jpeg', 'solide', NULL, '2025-07-01 07:52:30'),
(5, 'Lavande', NULL, NULL, 35, 500.00, 50, 'Aromatique', 'https://i.imgur.com/xnR3iuP.jpeg', 'solide', NULL, '2025-07-01 07:54:34'),
(6, 'Thé vert', NULL, NULL, 10, 500.00, 50, 'Végétal', 'https://i.imgur.com/v7Das6x.jpeg', 'solide', NULL, '2025-07-01 07:47:01'),
(7, 'Cires d\'abeilles', NULL, NULL, 12, 500.00, 50, 'animal', 'https://i.imgur.com/mIC9CDR.jpeg', 'liquide', NULL, '2025-07-01 20:26:19'),
(8, 'Agrumes', NULL, NULL, 104, 500.00, 50, 'Hespéridé', 'https://i.imgur.com/xU8K0hH.jpeg', 'liquide', NULL, '2025-07-01 20:26:43'),
(9, 'Patchouli', NULL, NULL, 0, 500.00, 50, 'Terreux', 'https://i.imgur.com/qtbI3PI.jpeg', 'solide', NULL, NULL),
(10, 'Cire de soja', NULL, NULL, 0, 500.00, 50, 'végétal', 'https://i.imgur.com/PK1tBj3.jpeg', 'solide', NULL, NULL),
(11, 'Rose', NULL, NULL, 68, 1000.00, 10, 'solide', 'https://i.imgur.com/s7UwBbT.jpeg', 'solide', '2025-07-24 13:26:10', '2025-07-24 13:26:10'),
(12, 'Jasmin', NULL, NULL, 65, 1000.00, 10, 'solide', 'https://i.imgur.com/s7UwBbT.jpeg', 'solide', '2025-07-24 13:26:10', '2025-07-24 13:26:10'),
(13, 'Iris', NULL, NULL, 55, 1000.00, 10, 'floral', 'https://i.imgur.com/jp09Msj.jpeg', '', '2025-07-24 13:36:51', '2025-07-24 13:36:51'),
(14, 'Cassis', NULL, NULL, 57, 1000.00, 10, 'grumeleux', 'https://i.imgur.com/HdcVrfb.jpeg', 'solide', '2025-07-24 13:36:51', '2025-07-24 13:36:51'),
(15, 'Cèdre', NULL, NULL, 36, 1000.00, 10, 'feuilles', 'https://i.imgur.com/RQHUeeV.jpeg', 'solide', '2025-07-24 13:40:17', '2025-07-24 13:40:17'),
(16, 'Clou de girofle', NULL, NULL, 32, 1000.00, 10, 'épices', 'https://i.imgur.com/n3LXOzE.png', '', '2025-07-24 13:51:59', '2025-07-24 13:51:59'),
(17, 'Ylang Ylang', NULL, NULL, 35, 1000.00, 10, 'fleur', 'https://i.imgur.com/ToJDQgR.jpeg', '', '2025-07-24 13:51:59', '2025-07-24 13:51:59');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_18_113756_create_notifications_table', 1),
(5, '2025_06_19_073844_create_ingredients_table', 1),
(6, '2025_06_19_094544_create_orders_table', 1),
(7, '2025_06_19_112942_create_fournisseurs_table', 1),
(8, '2025_06_19_130113_create_commandes_table', 1),
(9, '2025_06_20_033319_create_categorie_table', 1),
(10, '2025_06_20_115143_create_reapprovisionnements_table', 1),
(11, '2025_06_21_081511_create_produit_table', 1),
(12, '2025_06_23_012926_create_formules_table', 1),
(13, '2025_06_23_013012_create_formule_ingredient_table', 1),
(14, '2025_06_23_022531_create_productions_table', 1),
(15, '2025_06_23_083232_create_produit_ingredient_table', 1),
(16, '2025_06_26_144505_add_infos_client_to_commandes_table', 1),
(17, '2025_06_26_210736_create_commande_produit_table', 1),
(18, '2025_06_26_212439_add_role_to_users_table', 1),
(19, '2025_06_30_094849_create_favorites_table', 1),
(20, '2025_07_02_001458_add_permissions_to_users_table', 1),
(21, '2025_07_06_023741_create_paniers_table', 1),
(22, '2025_07_29_141639_add_ingredient_principal_id_to_produit_table', 2),
(23, '2025_08_16_140959_create_accessoires_table', 3),
(24, '2025_08_18_123241_add_images_to_accessoires_table', 4),
(25, '2025_08_21_134734_add_accessoire_id_to_paniers_table', 5),
(26, '2025_08_22_134636_make_produit_id_nullable_in_paniers_table', 6),
(27, '2025_08_23_063735_add_categorie_id_to_services_table', 7),
(28, '2025_08_25_000000_add_service_id_to_paniers_table', 8),
(29, '2025_08_30_125750_update_favorites_table', 9),
(30, '2025_09_11_152238_create_commande_service_table', 10),
(31, '2025_09_11_152915_create_commande_accessoire_table', 11),
(32, '2025_09_11_153028_create_commande_service_table', 12);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `total_price` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paniers`
--

CREATE TABLE `paniers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `produit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `accessoire_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantite` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `paniers`
--

INSERT INTO `paniers` (`id`, `user_id`, `produit_id`, `accessoire_id`, `service_id`, `quantite`, `created_at`, `updated_at`) VALUES
(40, 17, NULL, 1, NULL, 1, '2025-09-13 09:30:13', '2025-09-13 09:30:13');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `productions`
--

CREATE TABLE `productions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `formule_id` bigint(20) UNSIGNED NOT NULL,
  `produit_id` bigint(20) UNSIGNED NOT NULL,
  `quantite_produite` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `production_ingredient`
--

CREATE TABLE `production_ingredient` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `production_id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_id` bigint(20) UNSIGNED NOT NULL,
  `quantite_utilisee` decimal(10,3) UNSIGNED NOT NULL,
  `unite` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `nomProduit` varchar(100) NOT NULL,
  `sexeCible` enum('Homme','Femme','Unisexe') NOT NULL,
  `familleOlfactive` varchar(50) NOT NULL,
  `quantiteProduit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantiteAlerte` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `contenanceProduit` varchar(20) NOT NULL,
  `senteur` varchar(50) DEFAULT NULL,
  `prixProduit` decimal(10,2) UNSIGNED NOT NULL,
  `descriptionProduit` text DEFAULT NULL,
  `modeUtilisation` text DEFAULT NULL,
  `particularite` text DEFAULT NULL,
  `personnalite` varchar(100) DEFAULT NULL,
  `imagePrincipale` varchar(255) DEFAULT NULL,
  `estDisponible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ingredient_principal_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `categorie_id`, `nomProduit`, `sexeCible`, `familleOlfactive`, `quantiteProduit`, `quantiteAlerte`, `contenanceProduit`, `senteur`, `prixProduit`, `descriptionProduit`, `modeUtilisation`, `particularite`, `personnalite`, `imagePrincipale`, `estDisponible`, `created_at`, `updated_at`, `ingredient_principal_id`) VALUES
(11, 5, 'Black Orchid', 'Femme', 'Floral', 23, 5, '120ml', 'Corporelle', 15000.00, 'Nos parfums sont inspires de vos  marques préferées, des senteurs quasi identiques, une teneur en parfum largement au dessus des parfums du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité : Teneur en parfum plus élevée que dans les Eau De Parfum du commerce Tiennent plus de 24h sur la peau et sur les vêtements Packaging Premium Fabrication Artisanale Camerounaise.', 'Romantique', 'https://i.imgur.com/4q3h9JN.jpeg', 1, '2025-06-30 13:30:06', '2025-07-01 13:55:24', NULL),
(12, 4, 'L\'eau par Kenza', 'Femme', 'Boisé', 41, 10, '12ml', 'Corporelle', 5550.00, 'Nos Eaux De Parfum sont inspirés de vos  marques préférées, des senteurs quasi identiques, une teneur en parfum largement au dessus des eaux de parfum du commerce a un prix très accessible.', 'Utilisation: Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les EDP du commerce .Tiennent  plus de 8h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', 'Joyeuse et pétillante', 'https://i.imgur.com/Ix0zOol.jpeg', 1, '2025-06-30 13:30:06', '2025-07-02 00:24:53', 1),
(13, 5, 'Nina red', 'Femme', 'Frais', 32, 8, '120ml', 'Corporelle', 15000.00, 'Nos parfums sont inspirés de vos  marques préferées, des senteurs quasi identiques, une teneur en parfum largement au dessus des parfums du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité : Teneur en parfum plus élevée que dans les Eau De Parfum du commerce Tiennent plus de 24h sur la peau et sur les vêtements Packaging Premium Fabrication Artisanale Camerounaise.', 'Active et dynamique', 'https://i.imgur.com/aBMWVfV.jpeg', 1, '2025-06-30 13:30:06', '2025-06-30 13:30:06', NULL),
(14, 4, 'One million', 'Unisexe', 'Oriental', 15, 5, '12ml', 'Corporelle', 5550.00, 'Nos Eaux De Parfum sont inspirés de vos  marques préférées, des senteurs quasi identiques, une teneur en parfum largement au dessus des eaux de parfum du commerce a un prix très accessible.', 'Utilisation: Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les EDP du commerce .Tiennent  plus de 8h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', 'Apaisant', 'https://i.imgur.com/jiz0Ih3.jpeg', 1, '2025-06-30 13:30:06', '2025-07-02 00:24:53', 1),
(15, 6, 'Lavender  bouquet', 'Femme', 'Chypré', 12, 3, '120ml', 'Ambiance', 15000.00, ' La délicatesse des senteurs des diffuseurs d’ambiance EXTRAITS n’est pas leur seul avantage. Avec leur look simple et épuré, ils sont tout aussi agréables à sentir qu’à regarder ! Les longues tiges de rotin reposent sur un socle en verre, surmonté d’une bague argentée. Véritable élément de déco de luxe, vous pouvez le placer où bon vous semble. Sur une table, une commode ou même une table de nuit, l’odeur qu’il diffuse se répartit de manière égale dans tous les coins de la pièce. Les diffuseurs d’ambiance EXTRAITS se fondent discrètement dans la décoration de vos espaces de vie, et diffusent une odeur agréable et constante. Aucun entretien nécessaire, il vous suffit de retirer l’opercule de protection et de plonger les tiges de rotin dans le liquide parfumé. Grâce à la capillarité, ils s’imprègnent alors petit à petit de l’odeur que vous avez choisie. Il ne vous reste plus qu’à fermer les yeux, et à laisser cette douce fragrance vous enivrer !', 'Placer les tiges dans le liquide parfumé et laisser diffuser l\'odeur. En Interieur ( Sejour, SDB, Bureau, Chambres etc…)', 'Particularité :Les Fragrances utilisees dans nos produits sont répondent tous aux recommandations IFRA (International Fragrance Association) , VOC (Composé organique volatil) Free - Cruelty Free Sans Alcools Format Recharge disponible sur commande Fabrication Artisanale Camerounaise.', 'Sensuelle', 'https://i.imgur.com/YyvEELQ.jpeg', 1, '2025-06-30 13:30:06', '2025-06-30 13:30:06', NULL),
(16, 6, 'Vanille Lemon', 'Unisexe', 'Ambiance', 20, 5, '120ml', 'Ambiance', 15000.00, 'La délicatesse des senteurs des diffuseurs d’ambiance EXTRAITS n’est pas leur seul avantage...', 'Placer les tiges dans le liquide parfumé et laisser diffuser l\'odeur. En Interieur ( Sejour, SDB, Bureau, Chambres etc…)', 'Les Fragrances utilisées... Fabrication Artisanale Camerounaise', NULL, 'https://i.imgur.com/4riXP2u.jpeg', 1, '2025-07-01 10:26:15', '2025-07-01 10:26:15', 9),
(17, 6, 'Twilight', 'Unisexe', 'Ambiance', 20, 5, '120ml', 'Ambiance', 15000.00, 'La délicatesse des senteurs des diffuseurs d’ambiance EXTRAITS n’est pas leur seul avantage. Avec leur look simple et épuré, ils sont tout aussi agréables à sentir qu’à regarder ! Les longues tiges de rotin reposent sur un socle en verre, surmonté d’une bague argentée. Véritable élément de déco de luxe, vous pouvez le placer où bon vous semble. Sur une table, une commode ou même une table de nuit, l’odeur qu’il diffuse se répartit de manière égale dans tous les coins de la pièce. Les diffuseurs d’ambiance EXTRAITS se fondent discrètement dans la décoration de vos espaces de vie, et diffusent une odeur agréable et constante. Aucun entretien nécessaire, il vous suffit de retirer l’opercule de protection et de plonger les tiges de rotin dans le liquide parfumé. Grâce à la capillarité, ils s’imprègnent alors petit à petit de l’odeur que vous avez choisie. Il ne vous reste plus qu’à fermer les yeux, et à laisser cette douce fragrance vous enivrer !', 'Placer les tiges dans le liquide parfumé et laisser diffuser l\'odeur. En Interieur ( Sejour, SDB, Bureau, Chambres etc…)', 'Particularité :Les Fragrances utilisees dans nos produits sont répondent tous aux recommandations IFRA (International Fragrance Association) , VOC (Composé organique volatil) Free - Cruelty Free Sans Alcools Format Recharge disponible sur commande Fabrication Artisanale Camerounaise.', 'Sensuelle et mystérieuse', 'https://i.imgur.com/TbstkG0.jpeg', 1, '2025-07-01 10:26:15', '2025-07-01 10:26:15', NULL),
(18, 3, 'Fruits Rouges', 'Unisexe', 'Ambiance', 15, 5, '35ml', 'Ambiance', 6500.00, NULL, NULL, NULL, 'Intense et envoutant', 'https://i.imgur.com/Aes9NpI.jpeg', 1, '2025-07-01 10:26:15', '2025-07-01 10:26:15', NULL),
(19, 7, 'Tea Tree', 'Unisexe', 'Ambiance', 30, 5, '12ml', 'Ambiance', 3500.00, 'Les Huiles Essentielles EXTRAITS sont pures et 100% naturelles. Rigoureusement sélectionnées et contrôlées, elles sont issues de plantes sauvages, de cultures biologiques ou écologiques. Elles sont extraites par distillation. Nous disposons d’une vingtaines de reference : Citronelle, Arbre a the, Orange, Lemon, Rose, Bois de Santal, Patchouli, Menthe Poivrée, Lavande, Eucalyptus, Cannelle, Clous de Girofle, Pamplemousse, Lemongrass, Rosemary, Sweet Orange, Vanille, Ylang Ylang, Ravintsara', 'En cosmetique en application sur la peau prealablement diluee au dixieme dans une huile vegetale. En Aromatherapie Dans nos diffseurs Ultrasonic ou en inhalation. Sur nos bruleurs avec un peu d\'eau en subtitut aux fondants', 'Toutes nos huiles essentielles sont extraites par distillation. Pures à 100%', NULL, 'https://i.imgur.com/SVOE0mI.jpeg', 1, '2025-07-01 10:26:15', '2025-07-01 10:26:15', 1),
(20, 7, 'Patchouli', 'Unisexe', 'Ambiance', 30, 5, '12ml', 'Ambiance', 3500.00, 'Les Huiles Essentielles EXTRAITS sont pures et 100% naturelles. Rigoureusement sélectionnées et contrôlées, elles sont issues de plantes sauvages, de cultures biologiques ou écologiques. Elles sont extraites par distillation. Nous disposons d’une vingtaines de reference : Citronelle, Arbre a the, Orange, Lemon, Rose, Bois de Santal, Patchouli, Menthe Poivrée, Lavande, Eucalyptus, Cannelle, Clous de Girofle, Pamplemousse, Lemongrass, Rosemary, Sweet Orange, Vanille, Ylang Ylang, Ravintsara', 'En cosmetique en application sur la peau prealablement diluee au dixieme dans une huile vegetale. En Aromatherapie Dans nos diffseurs Ultrasonic ou en inhalation. Sur nos bruleurs avec un peu d\'eau en subtitut aux fondants', 'Toutes nos huiles essentielles sont extraites par distillation. Pures à 100%', NULL, 'https://i.imgur.com/nu0pQl2.jpeg', 1, '2025-07-01 10:26:15', '2025-07-01 10:26:15', NULL),
(21, 9, 'Car perfume', 'Unisexe', 'Ambiance', 25, 5, '8ml', 'Ambiance', 2500.00, 'La délicatesse des senteurs des parfums de voiture EXTRAITS n’est pas leur seul avantage. Avec leur look chic et épuré, ils sont tout aussi agréables à sentir qu’à regarder ! Le bois de diffusion recouvert d’une couche métallique colorée bouchonne le réservoir de parfum en verre. Véritable élément de déco de luxe pour votre véhicule, vous pouvez soit l’accrocher sur le rétroviseur avant ou l’épingler sur les bouches d’aération de climatisation. L’odeur qu’il diffuse se répartit de manière égale dans tout l’habitacle. Pour activer le parfum, il vous suffit de retirer l’opercule de protection, replacer le bouchon et d’agiter rapidement le flacon sans le retourner. Grâce à la capillarité du bouchon, il s’imprègne alors petit à petit de l’odeur que vous avez choisie. Il ne vous reste plus qu’à fermer les yeux, et à laisser cette douce fragrance vous enivrer !', 'Diffusion dans un véhicule', 'Les Fragrances utilisees dans nos produits sont répondent tous aux recommandations IFRA (International Fragrance Association) , VOC (Composé organique volatil) Free. Sans Alcools. Fabrication Artisanale Camerounaise', NULL, 'https://i.imgur.com/8pJ1gnY.jpeg', 1, '2025-07-01 10:26:15', '2025-07-01 10:26:15', NULL),
(22, 9, 'Car Diffuseur', 'Unisexe', 'Ambiance', 15, 5, 'coffret', 'Ambiance', 20000.00, 'La délicatesse des senteurs des parfums de voiture EXTRAITS n’est pas leur seul avantage. Avec leur look chic et épuré, ils sont tout aussi agréables à sentir qu’à regarder ! Le bois de diffusion recouvert d’une couche métallique colorée bouchonne le réservoir de parfum en verre. Véritable élément de déco de luxe pour votre véhicule, vous pouvez soit l’accrocher sur le rétroviseur avant ou l’épingler sur les bouches d’aération de climatisation. L’odeur qu’il diffuse se répartit de manière égale dans tout l’habitacle. Pour activer le parfum, il vous suffit de retirer l’opercule de protection, replacer le bouchon et d’agiter rapidement le flacon sans le retourner. Grâce à la capillarité du bouchon, il s’imprègne alors petit à petit de l’odeur que vous avez choisie. Il ne vous reste plus qu’à fermer les yeux, et à laisser cette douce fragrance vous enivrer !', 'Retirer l\'opercule de protection, replacer le bouchon et agiter rapidement le flacon sans le retourner. Accrocher sur le rétroviseur ou épingler sur les bouches d\'aération.', 'Les Fragrances utilisees dans nos produits sont répondent tous aux recommandations IFRA (International Fragrance Association) , VOC (Composé organique volatil) Free. Sans Alcools. Fabrication Artisanale Camerounaise', NULL, 'https://i.imgur.com/nJlAYj0.jpeg', 1, '2025-07-01 10:26:15', '2025-07-01 10:26:15', NULL),
(23, 4, 'Golden dust', 'Unisexe', 'Chaud et sensuel', 57, 10, '12ml', 'Corporelle', 5550.00, 'Nos Eaux De Parfum sont inspirés de vos  marques préférées, des senteurs quasi identiques, une teneur en parfum largement au dessus des eaux de parfum du commerce a un prix très accessible.', 'Utilisation: Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les EDP du commerce .Tiennent  plus de 8h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', NULL, 'https://i.imgur.com/BRyWZic.jpeg', 1, '2025-07-22 10:39:20', '2025-07-22 10:39:20', NULL),
(24, 3, 'Lemon vanille', 'Unisexe', '', 136, 10, '35ml', 'Ambiance', 6500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/BZDxhAq.jpeg', 1, '2025-07-22 10:39:20', '2025-07-22 10:39:20', NULL),
(25, 3, 'Lavender bouquet', 'Unisexe', 'bois légers', 63, 3, '35ml', 'Ambiance', 6500.00, NULL, 'mlk', 'ghj', 'Polyvalent et équilibré', 'https://i.imgur.com/lodJd7a.jpeg', 1, '2025-07-22 10:04:08', '2025-07-22 10:04:08', NULL),
(26, 6, 'Fruits rouges', 'Unisexe', 'Bois ambrés', 25, 10, '120ml', 'Ambiance', 15000.00, 'La délicatesse des senteurs des diffuseurs d’ambiance EXTRAITS n’est pas leur seul avantage. Avec leur look simple et épuré, ils sont tout aussi agréables à sentir qu’à regarder ! Les longues tiges de rotin reposent sur un socle en verre, surmonté d’une bague argentée. Véritable élément de déco de luxe, vous pouvez le placer où bon vous semble. Sur une table, une commode ou même une table de nuit, l’odeur qu’il diffuse se répartit de manière égale dans tous les coins de la pièce. Les diffuseurs d’ambiance EXTRAITS se fondent discrètement dans la décoration de vos espaces de vie, et diffusent une odeur agréable et constante. Aucun entretien nécessaire, il vous suffit de retirer l’opercule de protection et de plonger les tiges de rotin dans le liquide parfumé. Grâce à la capillarité, ils s’imprègnent alors petit à petit de l’odeur que vous avez choisie. Il ne vous reste plus qu’à fermer les yeux, et à laisser cette douce fragrance vous enivrer !', 'Utilisation : Placer les tiges dans le liquide parfumé et laisser diffuser l\'odeur. En Interieur ( Sejour, SDB, Bureau, Chambres etc…).', 'Particularité :Les Fragrances utilisees dans nos produits sont répondent tous aux recommandations IFRA (International Fragrance Association) , VOC (Composé organique volatil) Free - Cruelty Free Sans Alcools Format Recharge disponible sur commande Fabrication Artisanale Camerounaise.', 'Audacieux et distinctif', 'https://i.imgur.com/7zsDJks.jpeg', 1, '2025-07-22 10:09:45', '2025-07-22 10:09:45', NULL),
(27, 7, 'Clove', 'Unisexe', 'épices douces', 34, 9, '12ml', 'Ambiance', 3500.00, 'Les Huiles Essentielles EXTRAITS sont pures et 100% naturelles. Rigoureusement sélectionnées et contrôlées, elles sont issues de plantes sauvages, de cultures biologiques ou écologiques. Elles sont extraites par distillation. Nous disposons d’une vingtaines de reference : Citronelle, Arbre a the, Orange, Lemon, Rose, Bois de Santal, Patchouli, Menthe Poivrée, Lavande, Eucalyptus, Cannelle, Clous de Girofle, Pamplemousse, Lemongrass, Rosemary, Sweet Orange, Vanille, Ylang Ylang, Ravintsara.', 'Utilisation : En cosmétique en application sur la peau préalablement diluée au dixième dans une huile végétale. En Aromathérapie Dans nos diffuseurs Ultrasoniques ou en inhalation. Sur nos bruleurs avec un peu d\'eau en substitut aux fondants.', 'Toutes nos huiles essentielles sont extraites par distillation. Pures a 100%.', 'Intense et envoûtant', 'https://i.imgur.com/sRLIIEX.jpeg', 1, '2025-07-22 10:21:30', '2025-07-22 10:21:30', 16),
(28, 6, 'Very vanilla', 'Unisexe', 'épices douces', 34, 10, '120ml', 'Ambiance', 15000.00, 'La délicatesse des senteurs des diffuseurs d’ambiance EXTRAITS n’est pas leur seul avantage. Avec leur look simple et épuré, ils sont tout aussi agréables à sentir qu’à regarder ! Les longues tiges de rotin reposent sur un socle en verre, surmonté d’une bague argentée. Véritable élément de déco de luxe, vous pouvez le placer où bon vous semble. Sur une table, une commode ou même une table de nuit, l’odeur qu’il diffuse se répartit de manière égale dans tous les coins de la pièce. Les diffuseurs d’ambiance EXTRAITS se fondent discrètement dans la décoration de vos espaces de vie, et diffusent une odeur agréable et constante. Aucun entretien nécessaire, il vous suffit de retirer l’opercule de protection et de plonger les tiges de rotin dans le liquide parfumé. Grâce à la capillarité, ils s’imprègnent alors petit à petit de l’odeur que vous avez choisie. Il ne vous reste plus qu’à fermer les yeux, et à laisser cette douce fragrance vous enivrer !', 'Utilisation : Placer les tiges dans le liquide parfumé et laisser diffuser l\'odeur. En Interieur ( Sejour, SDB, Bureau, Chambres etc…).', 'Particularité :Les Fragrances utilisees dans nos produits sont répondent tous aux recommandations IFRA (International Fragrance Association) , VOC (Composé organique volatil) Free - Cruelty Free Sans Alcools Format Recharge disponible sur commande Fabrication Artisanale Camerounaise.', 'Audacieux et distinctif', 'https://i.imgur.com/6pfGY2e.jpeg', 1, '2025-07-22 10:27:47', '2025-07-22 10:27:47', NULL),
(29, 5, 'Tobacco Vanilla', 'Homme', 'cuir profond', 57, 8, '120ml', 'Corporelle', 15000.00, 'Nos parfums sont inspires de vos  marques préferées, des senteurs quasi identiques, une teneur en parfum largement au dessus des parfums du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité : Teneur en parfum plus élevée que dans les Eau De Parfum du commerce; Tiennent plus de 24h sur la peau et sur les vêtements ;Packaging Premium Fabrication Artisanale Camerounaise.', 'Mystérieux et intense', 'https://i.imgur.com/fVasoSi.jpeg', 1, '2025-07-22 10:32:22', '2025-07-22 10:32:22', 1),
(30, 5, 'Chance eau tendre', 'Homme', 'vanille douce', 31, 8, '120ml', 'Corporelle', 15000.00, 'Nos parfums sont inspires de vos  marques préférées, des senteurs quasi identiques, une teneur en parfum largement au dessus des parfums du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité : Teneur en parfum plus élevée que dans les Eau De Parfum du commerce; Tiennent plus de 24h sur la peau et sur les vêtements ;Packaging Premium Fabrication Artisanale Camerounaise.', 'Léger et frais', 'https://i.imgur.com/SEOKOAe.jpeg', 1, '2025-07-22 10:35:35', '2025-07-22 10:35:35', 1),
(31, 5, 'Pink chiffon BBW', 'Homme', 'lavande noble', 27, 8, '120ml', 'Corporelle', 15000.00, 'Nos parfums sont inspires de vos  marques préférées, des senteurs quasi identiques, une teneur en parfum largement au dessus des parfums du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité : Teneur en parfum plus élevée que dans les Eau De Parfum du commerce; Tiennent plus de 24h sur la peau et sur les vêtements ;Packaging Premium Fabrication Artisanale Camerounaise.', 'Élégant et sophistiqué', 'https://i.imgur.com/HwgyhCJ.jpeg', 1, '2025-07-22 10:43:01', '2025-07-22 10:43:01', NULL),
(32, 4, 'Sekushi Nat', 'Unisexe', 'bois légers', 32, 8, '12ml', 'Corporelle', 5550.00, 'Nos Eaux De Parfum sont inspirés de vos  marques préférées, des senteurs quasi identiques, une teneur en parfum largement au dessus des eaux de parfum du commerce a un prix très accessible.', 'Utilisation: Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les EDP du commerce .Tiennent  plus de 8h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', 'Polyvalent et équilibré', 'https://i.imgur.com/G7VMMms.jpeg', 1, '2025-07-22 10:52:59', '2025-07-22 10:52:59', NULL),
(33, 4, 'Terre d\'Hermes', 'Homme', 'épices fraîches', 68, 10, '12ml', 'Corporelle', 5550.00, 'Nos Eaux De Parfum sont inspirés de vos  marques préférées, des senteurs quasi identiques, une teneur en parfum largement au dessus des eaux de parfum du commerce a un prix très accessible.', 'Utilisation: Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les EDP du commerce .Tiennent  plus de 8h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', 'Libre et aventurier', 'https://i.imgur.com/sRGcaUJ.jpeg', 1, '2025-07-23 11:56:31', '2025-07-23 11:56:31', 9),
(34, 4, 'Invictus', 'Homme', 'cuir', 68, 10, '12ml', 'Corporelle', 5550.00, 'Nos Eaux De Parfum sont inspirés de vos  marques préférées, des senteurs quasi identiques, une teneur en parfum largement au dessus des eaux de parfum du commerce a un prix très accessible.', 'Utilisation: Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les EDP du commerce .Tiennent  plus de 8h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', 'Sûr de lui et charismatique ', 'https://i.imgur.com/G7VMMms.jpeg', 1, '2025-07-23 11:59:37', '2025-07-23 11:59:37', 9),
(35, 4, 'Issey Miyake', 'Femme', 'Chypre', 76, 10, '12ml', 'Corporelle', 5550.00, 'Nos Eaux De Parfum sont inspirés de vos  marques préférées, des senteurs quasi identiques, une teneur en parfum largement au dessus des eaux de parfum du commerce a un prix très accessible.', 'Utilisation: Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les EDP du commerce .Tiennent  plus de 8h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', 'Élégante et sophistiquée', 'https://i.imgur.com/7jVBCPr.jpeg', 1, '2025-07-23 12:26:45', '2025-07-23 12:26:45', NULL),
(36, 4, 'Bad boy carolina herrera', 'Homme', 'accords fruités cuirés', 94, 10, '12ml', 'Corporelle', 5550.00, 'Nos Eaux De Parfum sont inspirés de vos  marques préférées, des senteurs quasi identiques, une teneur en parfum largement au dessus des eaux de parfum du commerce a un prix très accessible.', 'Utilisation: Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les EDP du commerce .Tiennent  plus de 8h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', 'Urbain et moderne', 'https://i.imgur.com/mcAyI4D.jpeg', 1, '2025-07-23 15:33:16', '2025-07-23 15:33:16', NULL),
(37, 4, 'La nuit de l\'Homme', 'Homme', 'Aromatiques', 98, 10, '12ml', 'Corporelle', 5550.00, 'Nos Eaux De Parfum sont inspirés de vos  marques préférées, des senteurs quasi identiques, une teneur en parfum largement au dessus des eaux de parfum du commerce a un prix très accessible.', 'Utilisation: Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les EDP du commerce .Tiennent  plus de 8h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', 'Libre et aventurier', 'https://i.imgur.com/DsjTCUD.jpeg', 1, '2025-07-23 15:35:54', '2025-07-23 15:35:54', NULL),
(38, 10, 'Sensual Amber', 'Unisexe', 'Bois ambrés', 93, 10, '35ml', 'Corporelle', 6500.00, 'Nos Brumes  sont inspires de vos  marques préférées (Victoria Secret & BBW), des senteurs quasi identiques, une teneur en parfum largement au dessus des  brumes du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les brumes du commerce Fabrication Artisanale Camerounaise.', 'Audacieux et distinctif', 'https://i.imgur.com/uGykVto.jpeg', 1, '2025-07-23 15:42:31', '2025-07-23 15:42:31', NULL),
(45, 10, 'Vanilla lace', 'Unisexe', 'Floral', 100, 10, '35ml', 'Corporelle', 6500.00, 'Nos Brumes  sont inspires de vos  marques préférées (Victoria Secret & BBW), des senteurs quasi identiques, une teneur en parfum largement au dessus des  brumes du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les brumes du commerce Fabrication Artisanale Camerounaise.', NULL, 'https://i.imgur.com/laqVRGF.jpeg', 1, '2025-07-24 14:54:29', '2025-07-24 14:54:29', NULL),
(48, 10, 'Warm vanilla sugar', 'Unisexe', 'Dorée', 100, 10, '35ml', 'Corporelle', 6500.00, 'Nos Brumes  sont inspires de vos  marques préférées (Victoria Secret & BBW), des senteurs quasi identiques, une teneur en parfum largement au dessus des  brumes du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les brumes du commerce Fabrication Artisanale Camerounaise.', NULL, 'https://i.imgur.com/5oYLMkH.jpeg', 1, '2025-07-24 16:01:24', '2025-07-24 16:01:24', NULL),
(49, 10, 'Love spell', 'Unisexe', 'cremeux', 350, 10, '35ml', 'Corporelle', 6500.00, 'Nos Brumes  sont inspires de vos  marques préférées (Victoria Secret & BBW), des senteurs quasi identiques, une teneur en parfum largement au dessus des  brumes du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les brumes du commerce Fabrication Artisanale Camerounaise.', NULL, 'https://i.imgur.com/h2d5Pby.jpeg', 1, '2025-07-24 16:01:24', '2025-07-24 16:01:24', NULL),
(50, 10, 'Japanese Cherry Blossom', 'Unisexe', 'huileux', 100, 10, '35ml', 'Corporelle', 6500.00, 'Nos Brumes  sont inspires de vos  marques préférées (Victoria Secret & BBW), des senteurs quasi identiques, une teneur en parfum largement au dessus des  brumes du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les brumes du commerce Fabrication Artisanale Camerounaise.', NULL, 'https://i.imgur.com/Jb6eV93.jpeg', 1, '2025-07-24 16:01:24', '2025-07-24 16:01:24', NULL),
(53, 10, 'Amber romance', 'Unisexe', 'fruitée', 100, 10, '35ml', 'Corporelle', 6500.00, 'Nos Brumes  sont inspires de vos  marques préférées (Victoria Secret & BBW), des senteurs quasi identiques, une teneur en parfum largement au dessus des  brumes du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les brumes du commerce Fabrication Artisanale Camerounaise.', NULL, 'https://i.imgur.com/kDmpaB1.jpeg', 1, '2025-07-24 16:01:24', '2025-07-24 16:01:24', NULL),
(55, 10, 'Love spell', 'Unisexe', 'cremeux', 350, 10, '35ml', 'Corporelle', 6500.00, 'Nos Brumes  sont inspires de vos  marques préférées (Victoria Secret & BBW), des senteurs quasi identiques, une teneur en parfum largement au dessus des  brumes du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les brumes du commerce Fabrication Artisanale Camerounaise.', NULL, 'https://i.imgur.com/h2d5Pby.jpeg', 1, '2025-07-24 16:01:24', '2025-07-24 16:01:24', NULL),
(56, 10, 'Japanese Cherry Blossom', 'Unisexe', 'huileux', 100, 10, '35ml', 'Corporelle', 6500.00, 'Nos Brumes  sont inspires de vos  marques préférées (Victoria Secret & BBW), des senteurs quasi identiques, une teneur en parfum largement au dessus des  brumes du commerce a un prix très accessible.', 'Utilisation : Spray sur le corps.', 'Particularité :Teneur en parfum plus élevée que dans les brumes du commerce Fabrication Artisanale Camerounaise.', NULL, 'https://i.imgur.com/Jb6eV93.jpeg', 1, '2025-07-24 16:01:24', '2025-07-24 16:01:24', NULL),
(57, 1, 'Basil', 'Unisexe', 'Chaud et sensuel', 100, 10, '10ml', 'Corporelle', 3000.00, 'Concentre d\'huile de parfum non dilues et sans alcool. Nos Essences sont inspires de vos  marques préférées.', 'Utilisation : Elles s\'utilisent directement sur la peau ou dilue dans un lait de corps.', 'Particularité :Sans Alcool  - Child/Baby Friendly Tiennent au minimum 24h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', NULL, 'https://i.imgur.com/jtRTZGZ.jpeg', 1, '2025-07-24 16:15:37', '2025-07-24 16:15:37', NULL),
(58, 1, 'Géranium', 'Unisexe', 'Oriental boisé', 100, 10, '10ml', 'Corporelle', 3000.00, 'Concentre d\'huile de parfum non dilues et sans alcool. Nos Essences sont inspires de vos  marques préférées.', 'Utilisation : Elles s\'utilisent directement sur la peau ou dilue dans un lait de corps.', 'Particularité :Sans Alcool  - Child/Baby Friendly Tiennent au minimum 24h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', NULL, 'https://i.imgur.com/SSvQxIO.jpeg', 1, '2025-07-24 16:15:37', '2025-07-24 16:15:37', NULL),
(59, 1, 'Ylang ylang', 'Unisexe', 'fruitée', 100, 10, '10ml', 'Corporelle', 3000.00, 'Concentre d\'huile de parfum non dilues et sans alcool. Nos Essences sont inspires de vos  marques préférées.', 'Utilisation : Elles s\'utilisent directement sur la peau ou dilue dans un lait de corps.', 'Particularité :Sans Alcool  - Child/Baby Friendly Tiennent au minimum 24h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', NULL, 'https://i.imgur.com/zWhs3cB.jpeg', 1, '2025-07-24 16:15:37', '2025-07-24 16:15:37', NULL),
(60, 1, 'Spearmint', 'Unisexe', 'Dorée', 100, 10, '10ml', 'Corporelle', 3000.00, 'Concentre d\'huile de parfum non dilues et sans alcool. Nos Essences sont inspires de vos  marques préférées.', 'Utilisation : Elles s\'utilisent directement sur la peau ou dilue dans un lait de corps.', 'Particularité :Sans Alcool  - Child/Baby Friendly Tiennent au minimum 24h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', NULL, 'https://i.imgur.com/5a4jdD0.jpeg', 1, '2025-07-24 16:15:37', '2025-07-24 16:15:37', NULL),
(61, 1, 'Cedarwood', 'Unisexe', 'boisé', 100, 10, '10ml', 'Corporelle', 3000.00, 'Concentre d\'huile de parfum non dilues et sans alcool. Nos Essences sont inspires de vos  marques préférées.', 'Utilisation : Elles s\'utilisent directement sur la peau ou dilue dans un lait de corps.', 'Particularité :Sans Alcool  - Child/Baby Friendly Tiennent au minimum 24h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', NULL, 'https://i.imgur.com/DFRt0U6.jpeg', 1, '2025-07-24 16:15:37', '2025-07-24 16:15:37', NULL),
(62, 1, 'Ravintsara', 'Unisexe', 'fruité', 100, 10, '10ml', 'Corporelle', 3000.00, 'Concentre d\'huile de parfum non dilues et sans alcool. Nos Essences sont inspires de vos  marques préférées.', 'Utilisation : Elles s\'utilisent directement sur la peau ou dilue dans un lait de corps.', 'Particularité :Sans Alcool  - Child/Baby Friendly Tiennent au minimum 24h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', NULL, 'https://i.imgur.com/wVcFcMA.jpeg', 1, '2025-07-24 16:15:37', '2025-07-24 16:15:37', NULL),
(63, 1, 'Lemongrass', 'Unisexe', 'mielleux', 100, 10, '10ml', 'Corporelle', 3000.00, 'Concentre d\'huile de parfum non dilues et sans alcool. Nos Essences sont inspires de vos  marques préférées.', 'Utilisation : Elles s\'utilisent directement sur la peau ou dilue dans un lait de corps', 'Particularité :Sans Alcool  - Child/Baby Friendly Tiennent au minimum 24h sur la peau et bcp plus sur les vêtements Fabrication Artisanale Camerounaise Format Rechargeable.', NULL, 'https://i.imgur.com/oRTbKef.jpeg', 1, '2025-07-24 16:26:20', '2025-07-24 16:26:20', NULL),
(64, 19, 'Vanilla lace', 'Unisexe', 'Floral', 100, 10, '250ml', 'Corporelle', 1500.00, 'Nos Savons Liquides Parfumés pour mains sont inspires de vos  marques préférées des senteurs quasi identiques, une teneur en parfum largement au dessus des savons liquides du commerce a un prix très accessible.', 'Utilisation : Appliquer sur les mains mouillées, frotter et rincer à l\'eau claire.', 'Particularité:SAF (savon saponifié à froid): Processus qui permet de conserver proprietes de chaque ingredients pendant le production et de creer de la gylcerine naturelle qui est hydratante pour la peau. A base d\'huiles vegetales traitantes et hydratantes et de base alcaline. Sans Colorants, Sans conservateurs, Zero Phtalates, Zero Paraben. Baby and Pregnant women Friendly.', NULL, 'https://i.imgur.com/seFa5HK.jpeg', 1, '2025-07-24 16:38:43', '2025-07-24 16:38:43', NULL),
(65, 19, 'Warm vanilla sugar', 'Unisexe', 'Fruité', 100, 10, '250ml', 'Corporelle', 1500.00, 'Nos Savons Liquides Parfumés pour mains sont inspires de vos  marques préférées des senteurs quasi identiques, une teneur en parfum largement au dessus des savons liquides du commerce a un prix très accessible.', 'Utilisation : Appliquer sur les mains mouillées, frotter et rincer à l\'eau claire.', 'Particularité:SAF (savon saponifié à froid): Processus qui permet de conserver proprietes de chaque ingredients pendant le production et de creer de la gylcerine naturelle qui est hydratante pour la peau. A base d\'huiles vegetales traitantes et hydratantes et de base alcaline. Sans Colorants, Sans conservateurs, Zero Phtalates, Zero Paraben. Baby and Pregnant women Friendly', NULL, 'https://i.imgur.com/d5EVyno.jpeg', 1, '2025-07-24 16:38:43', '2025-07-24 16:38:43', NULL),
(66, 19, 'Coconut passion noir', 'Unisexe', 'fruitée', 100, 10, '250ml', 'Corporelle', 1500.00, 'Nos Savons Liquides Parfumés pour mains sont inspires de vos  marques préférées des senteurs quasi identiques, une teneur en parfum largement au dessus des savons liquides du commerce a un prix très accessible.', 'Utilisation : Appliquer sur les mains mouillées, frotter et rincer à l\'eau claire.', 'Particularité:SAF (savon saponifié à froid): Processus qui permet de conserver proprietes de chaque ingredients pendant le production et de creer de la gylcerine naturelle qui est hydratante pour la peau. A base d\'huiles vegetales traitantes et hydratantes et de base alcaline. Sans Colorants, Sans conservateurs, Zero Phtalates, Zero Paraben. Baby and Pregnant women Friendly', NULL, 'https://i.imgur.com/zttwqFM.jpeg', 1, '2025-07-24 16:38:43', '2025-07-24 16:38:43', NULL),
(67, 19, 'Amber Romance', 'Unisexe', 'Dorée', 100, 10, '250ml', 'Corporelle', 1500.00, 'Nos Savons Liquides Parfumés pour mains sont inspires de vos  marques préférées des senteurs quasi identiques, une teneur en parfum largement au dessus des savons liquides du commerce a un prix très accessible.', 'Utilisation : Appliquer sur les mains mouillées, frotter et rincer à l\'eau claire.', 'Particularité : SAF (savon saponifié à froid): Processus qui permet de conserver proprietes de chaque ingredients pendant le production et de creer de la gylcerine naturelle qui est hydratante pour la peau. A base d\'huiles vegetales traitantes et hydratantes et de base alcaline. Sans Colorants, Sans conservateurs, Zero Phtalates, Zero Paraben. Baby and Pregnant women Friendly', NULL, 'https://i.imgur.com/S9efAzV.jpeg', 1, '2025-07-24 16:38:43', '2025-07-24 16:38:43', NULL),
(68, 19, 'Sensual Amber', 'Unisexe', 'fruité', 100, 10, '250ml', 'Corporelle', 1500.00, 'Nos Savons Liquides Parfumés pour mains sont inspires de vos  marques préférées des senteurs quasi identiques, une teneur en parfum largement au dessus des savons liquides du commerce a un prix très accessible.', 'Utilisation : Appliquer sur les mains mouillées, frotter et rincer à l\'eau claire.', 'Particularité :SAF (savon saponifié à froid): Processus qui permet de conserver proprietes de chaque ingredients pendant le production et de creer de la gylcerine naturelle qui est hydratante pour la peau. A base d\'huiles vegetales traitantes et hydratantes et de base alcaline. Sans Colorants, Sans conservateurs, Zero Phtalates, Zero Paraben. Baby and Pregnant women Friendly', NULL, 'https://i.imgur.com/id9dtBo.jpeg', 1, '2025-07-24 16:38:43', '2025-07-24 16:38:43', NULL),
(69, 19, 'Japanese cherry blossom', 'Unisexe', 'dorée', 100, 10, '250ml', 'Corporelle', 1500.00, 'Nos Savons Liquides Parfumés pour mains sont inspires de vos  marques préférées des senteurs quasi identiques, une teneur en parfum largement au dessus des savons liquides du commerce a un prix très accessible.', 'Utilisation : Appliquer sur les mains mouillées, frotter et rincer à l\'eau claire.', 'Particularité:SAF (savon saponifié à froid): Processus qui permet de conserver proprietes de chaque ingredients pendant le production et de creer de la gylcerine naturelle qui est hydratante pour la peau. A base d\'huiles vegetales traitantes et hydratantes et de base alcaline. Sans Colorants, Sans conservateurs, Zero Phtalates, Zero Paraben. Baby and Pregnant women Friendly', NULL, 'https://i.imgur.com/bhvyZRa.jpeg', 1, '2025-07-24 16:38:43', '2025-07-24 16:38:43', NULL),
(70, 19, 'Vanilla', 'Unisexe', 'fruité', 100, 10, '250ml', 'Corporelle', 1500.00, 'Nos Savons Liquides Parfumés pour mains sont inspires de vos  marques préférées des senteurs quasi identiques, une teneur en parfum largement au dessus des savons liquides du commerce a un prix très accessible.', 'Utilisation : Appliquer sur les mains mouillées, frotter et rincer à l\'eau claire.', 'Particularité :SAF (savon saponifié à froid): Processus qui permet de conserver proprietes de chaque ingredients pendant le production et de creer de la gylcerine naturelle qui est hydratante pour la peau. A base d\'huiles vegetales traitantes et hydratantes et de base alcaline. Sans Colorants, Sans conservateurs, Zero Phtalates, Zero Paraben. Baby and Pregnant women Friendly', NULL, 'https://i.imgur.com/NMnekdf.jpeg', 1, '2025-06-11 19:38:50', NULL, NULL),
(71, 11, 'BEESWAX Lip Balm', 'Unisexe', 'Floral', 15, 10, '5g', 'Cosmétiques', 1000.00, 'Fait a base de cire d\'abeille et d\'huiles vegetales bio, les baumes à lèvres EXTRAITS apportent douceur et confort pour vos lèvres. Le fini mat et la texture riche soulagent les lèvres et leur rendent leur souplesse, tout en assurant un aspect lisse et doux.Les abeilles prennent soin de vos lèvres avec ce baume hydratant à la cire d\'abeille. Un sourire frais et naturel dans un tube retractable dans la poche ou le sac, pour hydrater vos lèvres à tout moment de la journée !', 'Utilisation : Appliquer sur les lèvres aussi souvent que nécessaire. Ne pas avaler.', 'Sans Parfums ajoutes; A base d\'ingrédients 100% Naturels parmi lesquels la cire d\'abeille réparatrice/protectrice et les beurres Hydratants. Sans Colorants, Sans conservateurs, Zéro Phtalates, Zero Paraben. Baby and Pregnant women Friendly. Soulage les irritations', NULL, 'https://i.imgur.com/dwsPUxE.jpeg', 1, '2025-07-24 16:53:16', '2025-07-24 16:53:16', NULL),
(72, 11, 'BEESWAX Lip Balm', 'Unisexe', 'Fruité', 100, 10, '5g', 'Cosmétique', 1000.00, 'Fait a base de cire d\'abeille et d\'huiles végétales bio, les baumes à lèvres EXTRAITS apportent douceur et confort pour vos lèvres. Le fini mat et la texture riche soulagent les lèvres et leur rendent leur souplesse, tout en assurant un aspect lisse et doux. Les abeilles prennent soin de vos lèvres avec ce baume hydratant à la cire d\'abeille. Un sourire frais et naturel dans un tube rétractable dans la poche ou le sac, pour hydrater vos lèvres à tout moment de la journée !', 'Utilisation : Appliquer sur les lèvres aussi souvent que nécessaire. Ne pas avaler.', 'Sans Parfums ajoutes; A base d\'ingrédients 100% Naturels parmi lesquels la cire d\'abeille réparatrice/protectrice et les beurres Hydratants. Sans Colorants, Sans conservateurs, Zéro Phtalates, Zero Paraben. Baby and Pregnant women Friendly. Soulage les irritations', NULL, 'https://i.imgur.com/dwsPUxE.jpeg', 1, '2025-07-24 16:53:16', '2025-07-24 16:53:16', NULL),
(73, 11, 'BEESWAX Lip Balm', 'Unisexe', 'fruitée', 30, 10, '5g', 'Cosmétique', 1000.00, 'Fait a base de cire d\'abeille et d\'huiles végétales bio, les baumes à lèvres EXTRAITS apportent douceur et confort pour vos lèvres. Le fini mat et la texture riche soulagent les lèvres et leur rendent leur souplesse, tout en assurant un aspect lisse et doux. Les abeilles prennent soin de vos lèvres avec ce baume hydratant à la cire d\'abeille. Un sourire frais et naturel dans un tube rétractable dans la poche ou le sac, pour hydrater vos lèvres à tout moment de la journée !', 'Utilisation : Appliquer sur les lèvres aussi souvent que nécessaire. Ne pas avaler.', 'Sans Parfums ajoutes; A base d\'ingrédients 100% Naturels parmi lesquels la cire d\'abeille réparatrice/protectrice et les beurres Hydratants. Sans Colorants, Sans conservateurs, Zéro Phtalates, Zero Paraben. Baby and Pregnant women Friendly. Soulage les irritations', NULL, 'https://i.imgur.com/dwsPUxE.jpeg', 1, '2025-07-24 16:53:16', '2025-07-24 16:53:16', NULL),
(74, 19, 'Vanilla lace', 'Unisexe', 'Chaud et sensuel', 38, 10, '250ml', 'Cosmétiques', 1500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/id9dtBo.jpeg', 1, '2025-08-08 18:57:20', '2025-08-08 18:57:20', NULL),
(75, 19, 'Warm vanilla sugar', 'Unisexe', 'Floral', 38, 10, '250ml', 'Cosmétiques', 1500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/d5EVyno.jpeg', 1, '2025-08-08 18:57:20', '2025-08-08 18:57:20', 3),
(76, 19, 'Coconut passion noir', 'Unisexe', 'Oriental boisé', 83, 10, '250ml', 'Cosmétiques', 1500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/zttwqFM.jpeg', 1, '2025-08-09 11:44:14', '2025-08-09 11:44:14', 15),
(77, 19, 'Amber Romance', 'Unisexe', 'Floral', 38, 10, '250ml', 'Cosmétiques', 1500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/S9efAzV.jpeg', 1, '2025-08-08 18:57:20', '2025-08-08 18:57:20', NULL),
(78, 19, 'Sensual Amber', 'Unisexe', 'Oriental boisé', 96, 10, '250ml', 'Cosmétiques', 1500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/id9dtBo.jpeg', 1, '2025-08-09 11:44:14', '2025-08-09 11:44:14', NULL),
(79, 19, 'Japanese cherry blossom', 'Unisexe', 'Floral', 37, 10, '250ml', 'Cosmétiques', 1500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/bhvyZRa.jpeg', 1, '2025-08-08 18:57:20', '2025-08-08 18:57:20', 7),
(80, 19, 'Vanilla', 'Unisexe', 'Oriental boisé', 98, 10, '250ml', 'Cosmétiques', 1500.00, NULL, NULL, NULL, NULL, NULL, 1, '2025-08-09 11:44:14', '2025-08-09 11:44:14', 3),
(81, 20, 'Tea Tree', 'Unisexe', 'Floral', 78, 10, '250ml', 'Cosmétiques', 1500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/SVOE0mI.jpeg', 1, '2025-08-08 18:57:20', '2025-08-08 18:57:20', 8),
(82, 20, 'Clove', 'Unisexe', 'Oriental boisé', 69, 10, '250ml', 'Cosmétiques', 1500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/sRLIIEX.jpeg', 1, '2025-08-09 11:44:14', '2025-08-09 11:44:14', 14),
(83, 20, 'Patchouli', 'Unisexe', 'Floral', 58, 10, '50ml', 'Cosmétiques', 3500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/nu0pQl2.jpeg', 1, '2025-08-08 18:57:20', '2025-08-08 18:57:20', 17),
(84, 21, 'Fruits Rouges', 'Unisexe', 'Oriental boisé', 89, 10, '250ml', 'Cosmétiques', 6500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/Aes9NpI.jpeg', 1, '2025-08-09 11:44:14', '2025-08-09 11:44:14', 12),
(85, 21, 'Lemon Vanille', 'Unisexe', 'Chaud et sensuel', 78, 10, '250ml', 'Cosmétiques', 6500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/BZDxhAq.jpeg', 1, '2025-08-09 13:27:01', '2025-08-09 13:27:16', 6),
(86, 21, 'Lavender Bouquet', 'Unisexe', 'Boisé et sec', 85, 10, '250ml', 'Cosmétiques', 6500.00, NULL, NULL, NULL, NULL, 'https://i.imgur.com/lodJd7a.jpeg', 1, '2025-07-23 19:43:30', '2025-08-09 13:41:09', 1),
(87, 5, 'fbgkj', '', 'lknfhfgn', 25, 10, '120 ml', 'Corporelle', 0.00, 'ùmlkjbvn,op vksjhj', 'kjhbfviuhg kfbui lnjgsdf', ';dhufi ; mon papa est akke', 'kjgvnn', 'sdfghujklm', 1, NULL, '2025-08-19 19:45:23', 1),
(88, 37, '12 scented Wax melts', 'Unisexe', 'Floral', 100, 10, 'Coffret de 12', 'Ambiance', 8000.00, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-15 07:31:45', '2025-09-15 07:31:45', 10),
(89, 37, '6 Scents Wax mets', 'Unisexe', 'floral', 100, 10, 'Coffret de 6', 'Ambiance', 3500.00, NULL, NULL, NULL, NULL, NULL, 1, '2025-09-15 08:01:04', '2025-09-15 08:01:04', 7),
(90, 23, 'Vanille Lemon Brume textile', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 6500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(91, 23, 'Fruits Rouge ', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 6500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(92, 23, 'Vanille ', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 6500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(93, 23, 'Lavender Bouquet', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 6500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(94, 23, 'Very Vanilla ', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 6500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(95, 24, 'Vanille Lemon ', 'Unisexe', 'boisé', 100, 10, '', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(96, 24, 'Fruits Rouge ', 'Unisexe', 'boisé', 100, 10, '', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(97, 24, 'Vanille ', 'Unisexe', 'boisé', 100, 10, '', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(98, 24, 'Lavender Bouquet ', 'Unisexe', 'boisé', 100, 10, '', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(99, 24, 'Very Vanilla ', 'Unisexe', 'boisé', 100, 10, '', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(100, 25, 'Vanille Lemon Bougie soja ', 'Unisexe', 'boisé', 100, 10, '200g', 'Ambiance ', 8000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(101, 25, 'Fruits Rouge  Bougie soja ', 'Unisexe', 'boisé', 100, 10, '200g', 'Ambiance ', 8000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(102, 25, 'Twilight Bougie soja ', 'Unisexe', 'boisé', 100, 10, '200g', 'Ambiance ', 8000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(103, 25, 'Vanille Bougie soja ', 'Unisexe', 'boisé', 100, 10, '200g', 'Ambiance ', 8000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(104, 25, 'Lavender Bouquet Bougie soja ', 'Unisexe', 'boisé', 100, 10, '200g', 'Ambiance ', 8000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(105, 25, 'Citronella Bougie soja ', 'Unisexe', 'boisé', 100, 10, '200g', 'Ambiance ', 8000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(106, 25, 'Coffee Lake Bougie soja ', 'Unisexe', 'boisé', 100, 10, '200g', 'Ambiance ', 8000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(107, 25, 'Lemon Bougie soja ', 'Unisexe', 'boisé', 100, 10, '200g', 'Ambiance ', 8000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(108, 25, 'Very vanille Bougie soja ', 'Unisexe', 'boisé', 100, 10, '200g', 'Ambiance ', 8000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(109, 25, 'White tea bougie soja ', 'Unisexe', 'boisé', 100, 10, '200g', 'Ambiance ', 8000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(110, 25, 'Jasmine bougie soja ', 'Unisexe', 'boisé', 100, 10, '200g', 'Ambiance ', 8000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(111, 37, 'Scented Wax Bars Vanille Lemon', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(112, 37, 'Scented Wax Bars Fruits Rouge', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(113, 37, 'Scented Wax Bars Lavender Bouquet', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(114, 37, 'Scented Wax Bars Citronella', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(115, 27, 'Perle aromatique Fresh Jasmine ', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(116, 27, 'Perle aromatique Citronella', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(117, 27, 'Perle aromatique Vanille', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(118, 27, 'Perle aromatique Agrume Mix', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(119, 27, 'Perle aromatique Cologne', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(120, 27, 'Perle aromatique Lavender Bouquet', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(121, 27, 'Perle aromatique Vanilla Oud', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(122, 27, 'Perle aromatique Twilight', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(123, 27, 'Perle aromatique Water Melon', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(124, 27, 'Perle aromatique Banana Cake', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(125, 27, 'Perle aromatique Fruits Rouge', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(126, 27, 'Perle aromatique Vanille Lemon', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(127, 27, 'Perle aromatique Coffee lake', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(128, 28, ' Bougie Chauffe plat Citronelle', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(129, 28, ' Bougie Chauffe plat non parfume', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(130, 29, 'Citronella Cones encens', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 3000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(131, 29, 'Coffee Lake Cones encens', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 3000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(132, 29, 'Fruits Rouge Cones encens', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 3000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(133, 29, 'Jasmine Cones encens', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 3000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(134, 29, 'Lavender Bouquet Cones encens', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 3000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(135, 29, 'Musk Cone Encens', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 3000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(136, 29, 'Oud Cones encens', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 3000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL);
INSERT INTO `produit` (`id`, `categorie_id`, `nomProduit`, `sexeCible`, `familleOlfactive`, `quantiteProduit`, `quantiteAlerte`, `contenanceProduit`, `senteur`, `prixProduit`, `descriptionProduit`, `modeUtilisation`, `particularite`, `personnalite`, `imagePrincipale`, `estDisponible`, `created_at`, `updated_at`, `ingredient_principal_id`) VALUES
(137, 29, 'Vanilla Oud Cones Encens', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 3000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(138, 29, 'Vanille Lemon Cones encens', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 3000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(139, 29, 'Verbana Cones encens', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 3000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(140, 29, 'Very Vanilla Cones encens', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 3000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(141, 36, 'Capuccino  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(142, 36, 'Citronella  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(143, 36, 'Cologne  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(144, 36, 'Frangipanier ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(145, 36, 'Fresh Jasmin  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(146, 36, 'Fruits Rouge  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(147, 36, 'Harmony  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(148, 36, 'Heaven  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(149, 36, 'Hilton ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(150, 36, 'Lavender Bouquet  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(151, 36, 'Lemon  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(152, 36, 'New Fashion  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(153, 36, 'Oud  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(154, 36, 'Oud Vanilla  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(155, 36, 'Pure Lavender  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(156, 36, 'The Vanilla  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(157, 36, 'Vanille Lemon  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(158, 36, 'Verbana  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(159, 36, 'Westin  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(160, 36, 'White Tea  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(161, 36, 'Twilight ', 'Unisexe', 'boisé', 100, 10, '35ml', 'Ambiance ', 5000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(162, 35, 'The Vanilla  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(163, 35, 'New Fashion  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(164, 35, 'Verbana  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(165, 35, 'Hilton ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(166, 35, 'Cologne  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(167, 35, 'Pure Lavender  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(168, 35, 'Citronella  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(169, 35, 'Oud Vanilla  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(170, 35, 'White Tea  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(171, 35, 'Heaven  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(172, 35, 'Fresh Jasmin  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(173, 35, 'Harmony  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(174, 35, 'Frangipanier ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(175, 35, 'Vanille Lemon  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(176, 35, 'Capuccino  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(177, 35, 'Lemon  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(178, 35, 'Fruits Rouge  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(179, 35, 'Lavender Bouquet  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(180, 35, 'Westin  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(181, 35, 'Oud  ', 'Unisexe', 'boisé', 100, 10, '100ml', 'Ambiance ', 20000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(182, 34, 'Battonets d\'encens Citronella', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(183, 34, 'Battonets d\'encens Fruits Rouges', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(184, 34, 'Battonets d\'encens Jasmin', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(185, 34, 'Battonets d\'encens Lavender Bouquet', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(186, 34, 'Battonets d\'encens Musk', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(187, 34, 'Battonets d\'encens Oud', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(188, 34, 'Battonets d\'encens Twilight', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(189, 34, 'Battonets d\'encens Vanilla Oud', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(190, 34, 'Battonets d\'encens Vanille Lemon', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(191, 34, 'Battonets d\'encens Verbana', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(192, 34, 'Battonets d\'encens Very Vanilla', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(193, 34, 'Battonets d\'encens Coffee Lake', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(194, 5, 'The Vanilla  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(195, 5, 'New Fashion  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(196, 5, 'Verbana  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(197, 5, 'Hilton ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(198, 5, 'Cologne  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(199, 5, 'Pure Lavender  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(200, 5, 'Citronella  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(201, 5, 'Oud Vanilla  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(202, 5, 'White Tea  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(203, 5, 'Heaven  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(204, 5, 'Fresh Jasmin  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(205, 5, 'Harmony  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(206, 5, 'Frangipanier ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(207, 5, 'Vanille Lemon  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(208, 5, 'Capuccino  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(209, 5, 'Lemon  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(210, 5, 'Fruits Rouge  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(211, 5, 'Lavender Bouquet  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(212, 5, 'Westin  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(213, 5, 'Oud  ', 'Unisexe', 'boisé', 100, 10, '250ml', 'corporelle', 25000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(214, 32, 'Bougies Chandelles Lisse', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 1000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(215, 32, 'Bougies Chandelles Decoratives', 'Unisexe', 'boisé', 100, 10, 'Bougie', 'Ambiance ', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(216, 30, 'Numero 1', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 600.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(217, 30, 'Numero 2', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 600.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(218, 30, 'Numero 3', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 600.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(219, 30, 'Numero 4', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 600.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(220, 30, 'Numero 5', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 600.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(221, 30, 'Numero 6', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 600.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(222, 30, 'Numero 7', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 600.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(223, 30, 'Numero 8', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 600.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(224, 30, 'Numero 9', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 600.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(225, 30, 'Numero 0', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 600.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(226, 17, 'Billes desodorisantes Vanille Lemon', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 2500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(227, 17, 'Billes desodorisantes Lavender Bouquet', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 2500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(228, 17, 'Billes desodorisantes Fruits Rouges', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 2500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(229, 17, 'Billes desodorisantes Vanille', 'Unisexe', 'boisé', 100, 10, '', 'Ambiance ', 2500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(230, 1, 'Amarige ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(231, 1, 'Angel Thierry Mugler ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(232, 1, 'Aqua Di Gio ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(233, 1, 'Armani Code ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(234, 1, 'Bad Boy Carolina Herrera ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(235, 1, 'Barracat Rouge ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(236, 1, 'Black Orchid ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(237, 1, 'Bleu de Channel ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(238, 1, 'Chance Chanel ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(239, 1, 'Chance Eau Tendre ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(240, 1, 'Channel No5 ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(241, 1, 'Coco Mademoiselle ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(242, 1, 'Coco Mademoiselle ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(243, 1, 'Cologne ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(244, 1, 'Diesel Fuel for Life   ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(245, 1, 'Dior Addict ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(246, 1, 'Dior Poison Girl ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(247, 1, 'Dune EP12ml', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(248, 1, 'Eau Rose Diptyque ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(249, 1, 'Egyptian Musk ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(250, 1, 'Fahrenheit ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(251, 1, 'Flower by Kenzo ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(252, 1, 'Flower by Kenzo   ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(253, 1, 'Golden Dust ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(254, 1, 'Grey Vetiver ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(255, 1, 'Halfeti Leather Penhaligon\'s ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(256, 1, 'Hot Couture   ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(257, 1, 'Hypnose ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(258, 1, 'Inspiration lacoste ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(259, 1, 'Invictus ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(260, 1, 'Issey Miyake  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(261, 1, 'J\'adore Dior ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(262, 1, 'La Nuit de l\'homme ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(263, 1, 'La vie est belle ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(264, 1, 'Lady Million ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(265, 1, 'L\'Eau Par Kenzo ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(266, 1, 'Miss Dior ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(267, 1, 'Nina Red ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(268, 1, 'One Million ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(269, 1, 'Opium ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(270, 1, 'Orange Blossom ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(271, 1, 'Parisienne   ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(272, 1, 'Pink Chiffon ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(273, 1, 'Pink Sugar Aquolina ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(274, 1, 'Pleasure Estee Lauder ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(275, 1, 'Porche black ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(276, 1, 'Sekushi No 7 ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(277, 1, 'Shalimar ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(278, 1, 'Sugar Baby ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(279, 1, 'Taj Sunset ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(280, 1, 'Terre  d\'hermes ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(281, 1, 'Tobacco Vanilla ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(282, 1, 'Victoria Secret  ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(283, 1, 'Week-end ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(284, 1, 'White Patchouli ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(285, 1, 'Miracle ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(286, 1, 'Cool water ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(287, 1, 'SI ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(288, 1, 'Red door ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(289, 1, 'Tom ford ', 'Unisexe', 'boisé', 100, 10, '35ml', 'corporelle', 10000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(290, 1, 'Happy ', 'Unisexe', 'boisé', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(291, 1, 'Amarige ', 'Unisexe', 'boisé', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(292, 1, 'Angel Thierry Mugler ', 'Unisexe', 'boisé', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(293, 1, 'Aqua Di Gio ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(294, 1, 'Armani Code ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(295, 1, 'Bad Boy Carolina Herrera ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(296, 1, 'Barracat Rouge ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(297, 1, 'Black Orchid ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(298, 1, 'Bleu de Channel ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(299, 1, 'Chance Chanel ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(300, 1, 'Chance Eau Tendre ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(301, 1, 'Channel No5 ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(302, 1, 'Coco Mademoiselle ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(303, 1, 'Coco Mademoiselle ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(304, 1, 'Cologne ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(305, 1, 'Diesel Fuel for Life   ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(306, 1, 'Dior Addict ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(307, 1, 'Dior Poison Girl ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(308, 1, 'Dune EP12ml', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(309, 1, 'Eau Rose Diptyque ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(310, 1, 'Egyptian Musk ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(311, 1, 'Fahrenheit ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(312, 1, 'Flower by Kenzo ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(313, 1, 'Flower by Kenzo   ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(314, 1, 'Golden Dust ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(315, 1, 'Grey Vetiver ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(316, 1, 'Halfeti Leather Penhaligon\'s ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(317, 1, 'Hot Couture   ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(318, 1, 'Hypnose ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(319, 1, 'Inspiration lacoste ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(320, 1, 'Invictus ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(321, 1, 'Issey Miyake  ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(322, 1, 'J\'adore Dior ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(323, 1, 'La Nuit de l\'homme ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(324, 1, 'La vie est belle ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(325, 1, 'Lady Million ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(326, 1, 'L\'Eau Par Kenzo ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(327, 1, 'Miss Dior ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(328, 1, 'Nina Red ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(329, 1, 'One Million ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(330, 1, 'Opium ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(331, 1, 'Orange Blossom ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(332, 1, 'Parisienne   ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(333, 1, 'Pink Chiffon ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(334, 1, 'Pink Sugar Aquolina ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(335, 1, 'Pleasure Estee Lauder ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(336, 1, 'Porche black ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(337, 1, 'Sekushi No 7 ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(338, 1, 'Shalimar ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(339, 1, 'Sugar Baby ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(340, 1, 'Taj Sunset ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(341, 1, 'Terre  d\'hermes ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(342, 1, 'Tobacco Vanilla ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(343, 1, 'Victoria Secret  ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(344, 1, 'Week-end ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(345, 1, 'White Patchouli ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(346, 1, 'Miracle ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(347, 1, 'Cool water ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(348, 1, 'SI ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(349, 1, 'Red door ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(350, 1, 'Tom ford ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(351, 1, 'Happy ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 4000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(352, 4, 'Amarige ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(353, 4, 'Angel Thierry Mugler ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(354, 4, 'Aqua Di Gio ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(355, 4, 'Armani Code ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(356, 4, 'Bad Boy Carolina Herrera ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(357, 4, 'Barracat Rouge ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(358, 4, 'Black Orchid ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(359, 4, 'Bleu de Channel ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(360, 4, 'Chance Chanel ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(361, 4, 'Chance Eau Tendre ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(362, 4, 'Channel No5 ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(363, 4, 'Coco Mademoiselle ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(364, 4, 'Coco Mademoiselle ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(365, 4, 'Cologne ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(366, 4, 'Diesel Fuel for Life   ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(367, 4, 'Dior Addict ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(368, 4, 'Dior Poison Girl ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(369, 4, 'Dune EP12ml', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(370, 4, 'Eau Rose Diptyque ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(371, 4, 'Egyptian Musk ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(372, 4, 'Fahrenheit ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(373, 4, 'Flower by Kenzo ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(374, 4, 'Flower by Kenzo   ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(375, 4, 'Golden Dust ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(376, 4, 'Grey Vetiver ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(377, 4, 'Halfeti Leather Penhaligon\'s ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(378, 4, 'Hot Couture   ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(379, 4, 'Hypnose ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(380, 4, 'Inspiration lacoste ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(381, 4, 'Invictus ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(382, 4, 'Issey Miyake  ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(383, 4, 'J\'adore Dior ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(384, 4, 'La Nuit de l\'homme ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(385, 4, 'La vie est belle EP35ml', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(386, 4, 'Lady Million ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(387, 4, 'L\'Eau Par Kenzo ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(388, 4, 'Miss Dior ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(389, 4, 'Nina Red ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(390, 4, 'One Million ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(391, 4, 'Opium ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(392, 4, 'Orange Blossom ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(393, 4, 'Parisienne   ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(394, 4, 'Pink Chiffon ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(395, 4, 'Pink Sugar Aquolina ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(396, 4, 'Pleasure Estee Lauder ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(397, 4, 'Porche black ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(398, 4, 'Sekushi No 7 ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(399, 4, 'Shalimar ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(400, 4, 'Sugar Baby ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(401, 4, 'Taj Sunset ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(402, 4, 'Terre  d\'hermes ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(403, 4, 'Tobacco Vanilla ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(404, 4, 'Victoria Secret  ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(405, 4, 'Week-end ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(406, 4, 'White Patchouli ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(407, 4, 'Red door ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(408, 4, 'Happy ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(409, 4, 'Tom ford ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(410, 4, 'Cool water ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(411, 4, 'SI ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(412, 4, 'Amor amor ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(413, 4, 'Miracle ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 5500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(414, 4, 'Amarige ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(415, 4, 'Angel Thierry Mugler ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(416, 4, 'Aqua Di Gio ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(417, 4, 'Armani Code ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(418, 4, 'Bad Boy Carolina Herrera ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(419, 4, 'Barracat Rouge ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(420, 4, 'Black Orchid ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(421, 4, 'Bleu de Channel ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(422, 4, 'Chance Chanel ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(423, 4, 'Channel No5 ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(424, 4, 'Coco Mademoiselle ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(425, 4, 'Cologne ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(426, 4, 'Diesel Fuel for Life   ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(427, 4, 'Dior Poison Girl ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(428, 4, 'Dune EP12ml', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(429, 4, 'Eau Rose Diptyque ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(430, 4, 'Egyptian Musk ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(431, 4, 'Fahrenheit ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(432, 4, 'Flower by Kenzo ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(433, 4, 'Flower by Kenzo   ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(434, 4, 'Grey Vetiver ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(435, 4, 'Halfeti Leather Penhaligon\'s ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(436, 4, 'Hot Couture   ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(437, 4, 'Hypnose ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(438, 4, 'Inspiration lacoste ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(439, 4, 'La vie est belle ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(440, 4, 'Lady Million ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(441, 4, 'Miss Dior ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(442, 4, 'Nina Red ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(443, 4, 'One Million ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(444, 4, 'Opium ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(445, 4, 'Orange Blossom ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(446, 4, 'Parisienne ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(447, 4, 'Pink Chiffon ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(448, 4, 'Pink Sugar Aquolina ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(449, 4, 'Pleasure Estee Lauder ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(450, 4, 'Porche black ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(451, 4, 'Shalimar ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(452, 4, 'Sugar Baby ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(453, 4, 'Taj Sunset ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(454, 4, 'Victoria Secret ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(455, 4, 'Week-end ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(456, 4, 'White Patchouli ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(457, 4, 'Happy ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(458, 4, 'Red door ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(459, 4, 'SI ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(460, 4, 'Tom ford ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(461, 4, 'Cool water ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(462, 4, 'Miracle ', 'Unisexe', 'floral', 100, 10, '12ml', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(463, 10, 'Brume corporelle Cologne ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 7500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(464, 10, 'Brume corporelle Endless love', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 7500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(465, 10, 'Brume corporelle Lucious Kisses', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 7500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(466, 10, 'Brume corporelle Pure Seduction', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 7500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(467, 20, 'Lait Hydratant Mains et Corps ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(468, 20, 'Lait Hydratant Mains et Corps ', 'Unisexe', 'floral', 100, 10, '250ml', 'corporelle', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(469, 7, 'Rosemary ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(470, 7, 'Cedarwood ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(471, 7, 'Geranium ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(472, 7, 'Peppermint ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(473, 7, 'Cypress ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(474, 7, 'Grapefruit ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(475, 7, 'Ravintsara ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(476, 7, 'Bergamot ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(477, 7, 'Basil ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(478, 7, 'Lemongrass ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL);
INSERT INTO `produit` (`id`, `categorie_id`, `nomProduit`, `sexeCible`, `familleOlfactive`, `quantiteProduit`, `quantiteAlerte`, `contenanceProduit`, `senteur`, `prixProduit`, `descriptionProduit`, `modeUtilisation`, `particularite`, `personnalite`, `imagePrincipale`, `estDisponible`, `created_at`, `updated_at`, `ingredient_principal_id`) VALUES
(479, 7, 'Lavender ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(480, 7, 'Spearmint ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(481, 7, 'Cinnamon ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(482, 7, 'Ylang Ylang ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(483, 7, 'Lemon ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(484, 7, 'Eucalyptus ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(485, 7, 'Sweet orange ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(486, 7, 'Citronella ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(487, 7, 'Rose ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(488, 7, 'Vanilla ', 'Unisexe', 'floral', 100, 10, '10ml', 'ambiance', 3500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(489, 14, 'Gel HydroAlcolique ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(490, 19, 'Savon Liquide Mains ', 'Unisexe', 'floral', 100, 10, '35ml', 'corporelle', 500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(491, 19, 'SL250 Love Spell ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(492, 19, 'SL250 Vanilla Lace', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(493, 19, 'SL250 Warm Vanilla Sugar', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(494, 19, 'SL250 Coconut Passion', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(495, 19, 'SL250 Japanese Cherry Blossom', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(496, 19, 'SL250 Sensual Amber ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(497, 19, 'SL250 Amber Romance ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(498, 19, 'SL250 Cologne ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(499, 19, 'SL250 Vanille Lemon', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(500, 19, 'SL250 Fruits Rouge', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(501, 19, 'SL250 Very Vanille', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(502, 19, 'SL250 Lavender Bouquet', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(503, 19, 'SL250 Lemon', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(504, 19, 'SL250 Coffee Lake', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(505, 19, 'SL250 Pure lavender', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(506, 5, 'Amarige   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(507, 5, 'Angel Thierry Mugler   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 1500.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(508, 5, 'Aqua Di Gio   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(509, 5, 'Armani Code ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(510, 5, 'Bad Boy Carolina Herrera   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(511, 5, 'Barracat Rouge ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(512, 5, 'Black Orchid   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(513, 5, 'Bleu de Channel   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(514, 5, 'Chance Chanel   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(515, 5, 'Channel No5   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(516, 5, 'Coco Mademoiselle ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(517, 5, 'Coco Mademoiselle   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(518, 5, 'Cologne ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(519, 5, 'Diesel Fuel for Life   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(520, 5, 'Dior Addict   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(521, 5, 'Dior Poison Girl ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(522, 5, 'Dune   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(523, 5, 'Eau Rose Diptyque   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(524, 5, 'Egyptian Musk   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(525, 5, 'Fahrenheit   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(526, 5, 'Flower by Kenzo ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(527, 5, 'Flower by Kenzo   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(528, 5, 'Golden Dust   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(529, 5, 'Grey Vetiver ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(530, 5, 'Halfeti Leather Penhaligon\'s   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(531, 5, 'Hot Couture   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(532, 5, 'Hypnose   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(533, 5, 'Inspiration lacoste ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(534, 5, 'Invictus   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(535, 5, 'Issey Miyake   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(536, 5, 'J\'adore Dior   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(537, 5, 'La Nuit de l\'homme   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(538, 5, 'La vie est belle   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(539, 5, 'Lady Million   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(540, 5, 'L\'Eau Par Kenzo   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(541, 5, 'Miss Dior   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(542, 5, 'Opium   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(543, 5, 'Orange Blossom ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(544, 5, 'Parisienne   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(545, 5, 'Pink Sugar Aquolina   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(546, 5, 'Pleasure Estee Lauder   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(547, 5, 'Porche black   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(548, 5, 'Sekushi No 7   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(549, 5, 'Shalimar   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(550, 5, 'Sugar Baby ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(551, 5, 'Taj Sunset   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(552, 5, 'Victoria Secret ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(553, 5, 'Week-end   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(554, 5, 'White Patchouli   ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(555, 5, 'Noir de tomford ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(556, 5, 'Cool water ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(557, 5, 'Red door ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(558, 5, 'SI ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(559, 5, 'Amor amor ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(560, 5, 'Happy ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(561, 5, 'Miracle ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(562, 5, 'Grean tea ', 'Unisexe', 'floral', 100, 10, '50ml', 'corporelle', 15000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL),
(563, 38, 'Deodorant Naturel', 'Unisexe', 'floral', 100, 10, '', 'corporelle', 2000.00, '', '', '', '', '', 1, '2025-09-13 11:03:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `produit_ingredient`
--

CREATE TABLE `produit_ingredient` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produit_id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit_ingredient`
--

INSERT INTO `produit_ingredient` (`id`, `produit_id`, `ingredient_id`, `created_at`, `updated_at`) VALUES
(1, 25, 1, NULL, NULL),
(2, 25, 6, NULL, NULL),
(3, 25, 10, NULL, NULL),
(4, 26, 5, NULL, NULL),
(5, 26, 6, NULL, NULL),
(6, 26, 7, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(7, 27, 8, NULL, NULL),
(8, 27, 9, NULL, NULL),
(9, 27, 2, NULL, NULL),
(10, 28, 7, NULL, NULL),
(11, 28, 10, NULL, NULL),
(12, 28, 3, NULL, NULL),
(13, 29, 5, NULL, NULL),
(14, 29, 7, NULL, NULL),
(15, 29, 2, NULL, NULL),
(16, 30, 2, NULL, NULL),
(17, 30, 5, NULL, NULL),
(18, 30, 7, NULL, NULL),
(19, 31, 1, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(20, 31, 9, NULL, NULL),
(21, 31, 8, NULL, NULL),
(22, 32, 1, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(23, 32, 7, NULL, NULL),
(24, 32, 4, NULL, NULL),
(25, 33, 4, NULL, NULL),
(26, 33, 7, NULL, NULL),
(27, 33, 10, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(28, 34, 3, NULL, NULL),
(29, 34, 10, NULL, NULL),
(30, 34, 1, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(31, 35, 9, NULL, NULL),
(32, 35, 6, NULL, NULL),
(33, 35, 3, NULL, NULL),
(34, 36, 5, NULL, NULL),
(35, 36, 6, NULL, NULL),
(36, 36, 2, NULL, NULL),
(37, 37, 4, NULL, NULL),
(38, 37, 3, NULL, NULL),
(39, 37, 1, NULL, NULL),
(40, 38, 10, NULL, NULL),
(41, 38, 9, NULL, NULL),
(42, 38, 8, NULL, NULL),
(43, 11, 16, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(44, 11, 1, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(45, 11, 15, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(46, 12, 9, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(47, 12, 16, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(48, 12, 4, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(49, 13, 17, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(50, 13, 2, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(51, 13, 9, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(52, 14, 11, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(53, 14, 2, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(54, 14, 7, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(55, 15, 9, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(56, 15, 14, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(57, 15, 15, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(58, 16, 1, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(59, 16, 4, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(60, 16, 7, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(61, 17, 7, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(62, 17, 2, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(63, 17, 6, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(64, 18, 14, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(65, 18, 2, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(66, 18, 9, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(67, 19, 2, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(68, 19, 4, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(69, 19, 14, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(70, 20, 11, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(71, 20, 1, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(72, 20, 7, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(73, 21, 10, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(74, 21, 5, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(75, 21, 9, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(76, 22, 8, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(77, 22, 11, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(78, 22, 15, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(79, 23, 15, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(80, 23, 16, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(81, 23, 14, '2025-07-24 13:41:54', '2025-07-24 13:41:54'),
(82, 24, 2, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(83, 24, 14, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(84, 24, 15, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(85, 25, 3, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(86, 25, 16, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(87, 25, 12, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(88, 26, 13, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(89, 26, 9, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(90, 27, 6, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(91, 27, 5, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(92, 27, 10, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(93, 28, 16, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(94, 28, 11, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(95, 28, 6, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(96, 29, 14, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(97, 29, 1, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(98, 29, 17, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(99, 30, 15, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(100, 30, 13, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(101, 30, 8, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(102, 31, 6, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(103, 31, 15, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(104, 32, 14, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(105, 32, 11, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(106, 33, 3, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(107, 33, 17, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(108, 34, 6, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(109, 34, 12, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(110, 35, 14, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(111, 35, 7, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(112, 35, 1, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(113, 36, 4, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(114, 36, 15, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(115, 36, 16, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(116, 37, 13, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(117, 37, 6, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(118, 37, 17, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(119, 38, 7, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(120, 38, 4, '2025-07-24 13:41:55', '2025-07-24 13:41:55'),
(121, 38, 2, '2025-07-24 13:41:55', '2025-07-24 13:41:55');

-- --------------------------------------------------------

--
-- Structure de la table `reapprovisionnements`
--

CREATE TABLE `reapprovisionnements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_id` bigint(20) UNSIGNED NOT NULL,
  `quantite_ajoutee` int(11) NOT NULL,
  `date_reapprovisionnement` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reapprovisionnements`
--

INSERT INTO `reapprovisionnements` (`id`, `ingredient_id`, `quantite_ajoutee`, `date_reapprovisionnement`, `created_at`, `updated_at`) VALUES
(1, 3, 20, '2025-07-01 00:00:00', '2025-07-01 07:57:25', '2025-07-01 07:57:25'),
(2, 7, 500, '2025-07-01 00:00:00', '2025-07-01 20:26:19', '2025-07-01 20:26:19'),
(3, 8, 600, '2025-07-01 00:00:00', '2025-07-01 20:26:43', '2025-07-01 20:26:43');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categorie_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `nom`, `slug`, `description`, `prix`, `image`, `disponible`, `created_at`, `updated_at`, `categorie_id`) VALUES
(1, 'Mini bougies personalisé', 'mini bougies personalisé', 'bougies personalisés selon vos goûts et préférences', 2000.00, 'https://i.imgur.com/NEiZNAz.jpeg', 1, '2025-08-23 06:51:30', '2025-08-23 06:51:30', 2),
(2, 'Cadeaux personalisés', 'Cadeaux personalises', 'Mini bougies personnalisées', 2000.00, NULL, 1, '2025-09-13 11:26:43', '2025-09-13 11:26:43', NULL),
(3, 'Cadeaux personalisés', 'Cadeaux personalises', 'Baume à lèvres personalisés', 1000.00, NULL, 1, '2025-09-13 11:29:35', '2025-09-13 11:29:35', NULL),
(4, 'Cadeaux personalisés', 'Cadeaux personalises', 'Set crème de main et gel hydroalcoolique', 1000.00, NULL, 1, '2025-09-13 11:29:35', '2025-09-13 11:29:35', NULL),
(5, 'Cadeaux personalisés', 'Cadeaux personalises', 'Eau de parfum', 2000.00, NULL, 1, '2025-09-13 11:31:16', '2025-09-13 11:31:16', NULL),
(6, 'Cadeaux personalisés', 'Cadeaux personalises', 'Bar parfumée personnalisée', 1500.00, NULL, 1, '2025-09-13 11:31:16', '2025-09-13 11:31:16', NULL),
(7, 'Ateliers/Formation bougie groupe interne', 'Ateliers-Formation-bougie-groupe-interne', '', 15000.00, NULL, 1, '2025-09-13 11:31:16', '2025-09-13 11:31:16', NULL),
(8, 'Ateliers/Formation bougie groupe externe(10 pers)', 'Ateliers/Formation bougie groupe externe(10 pers)', '', 200000.00, NULL, 1, '2025-09-13 11:31:16', '2025-09-13 11:31:16', NULL),
(9, 'Abonnement AFRILAND', 'Abonnement AFRILAND', '', 100000.00, NULL, 1, '2025-09-13 11:31:16', '2025-09-13 11:31:16', NULL),
(10, 'Abonnement MAHAZA YASSA', 'Abonnement MAHAZA YASSA', '', 100000.00, NULL, 1, '2025-09-13 11:31:16', '2025-09-13 11:31:16', NULL),
(11, 'Abonnement MAQUENA', 'Abonnement MAQUENA', '', 20000.00, NULL, 1, '2025-09-13 11:37:15', '2025-09-13 11:37:15', NULL),
(12, 'Abonnement mensuel 01 appareil', 'Abonnement mensuel 01 appareil', '', 20000.00, NULL, 1, '2025-09-13 11:37:15', '2025-09-13 11:37:15', NULL),
(13, 'Abonnement DIRECTION DU PATRIMOINE SGC', 'Abonnement DIRECTION DU PATRIMOINE SGC', '', 106000.00, NULL, 1, '2025-09-13 11:37:15', '2025-09-13 11:37:15', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('lbEZAw0TvxmtVlj34SopCFomCaLmhYwlql4gsS6t', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMjR2eTBpdFRtb2YwTFlaZ2JEU0dkZzhFaDFnc2lDaHBEbDdkTmxSNCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1759080200),
('LEpak4nQjGeaBMJps4AxaZGPjSTfnH7fM4EEy8xz', 1, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1 Edg/140.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSk90RnhSNlRFaG9ubkN4SExySEFMM056RWFWV1l3cGxEV2d3RzU2eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91c2VyLWRhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1758897293),
('r3bZuc6J52smvsptXiX4cAGNmz7WypGhKXjldh7b', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnhoanV6TFU4RXB0anZCMFJuV3RiOUJmaUJWTm1QSHlBTXRRejB3TSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fX0=', 1759000698);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('superadmin','employe','client') NOT NULL DEFAULT 'client',
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `permissions`) VALUES
(1, 'MAWAMBA TOWA Maeva', 'maeva.mawamba@2028.ucac-icam.com', NULL, '$2y$12$DPPUUrzIbTrN0QNnfnfws.2XnqqMhEl7tMNN54AzbOX2aRlalNcYW', NULL, '2025-06-30 10:05:41', '2025-06-30 10:05:41', 'client', NULL),
(2, 'Mawamba Maëva', 'admin@example.com', NULL, '$2y$12$MdJFgRRMiMhVbe4BhpDh5.OzuErazjChORZdWj62LgKa22g0BN3E.', NULL, '2025-06-30 10:07:12', '2025-06-30 10:07:12', 'superadmin', '[\"commandes\",\"dashboard\",\"ingredients\",\"produits\",\"production-lab\",\"fournisseurs\",\"formules\",\"reaprovisionnement\",\"ventes\",\"employes\",\"clients\",\"historiques\",\"rapport\",\"acces-utilisateur\"]'),
(3, 'Mawamba Maëva', 'gaps@gmail.com', NULL, '$2y$12$CNxNNsuotD2sAmjf/vPMpeYWcgn7tyg.n63TbqQeNQWqnywzJBPeW', NULL, '2025-06-30 12:43:02', '2025-06-30 12:43:02', 'client', NULL),
(4, 'Napani Gaby', 'napany@gmail.com', NULL, '$2y$12$95PxtSmSQOO2/DqwVvxzNu1MQ.RHIrjeIXZMroOC9gZgNvF0xLa6S', NULL, '2025-07-01 20:54:50', '2025-07-01 20:54:50', 'client', NULL),
(5, 'Gabi', 'gabi@gmail.com', NULL, '$2y$12$2jJohgZRHd.yUn4nZElfne.4NR3DsgU1Z7cgcHB2WKSdNoCAEH9NW', NULL, '2025-07-01 20:58:30', '2025-07-01 20:58:30', 'client', NULL),
(6, 'Maeva Tchinda', 'maeva@gmail.com', NULL, '$2y$12$QThbJrdk8a9zQsGqnZeDXeG7JBdUl.O/d50yCh3cm.G9fygMFdSbm', NULL, '2025-07-01 21:20:24', '2025-08-19 16:03:33', 'employe', '[\"commandes\",\"Commandes\",\"dashboard\",\"produits\"]'),
(7, 'junior', 'junior@gmail.com', NULL, '$2y$12$alMkxVefjigdT2siRtemU.iu8ebqCzMopDEiS7vFDnlaQIVxc0cdW', NULL, '2025-07-01 21:41:32', '2025-07-01 21:41:32', 'client', NULL),
(8, 'Biloa Kamdem', 'biloa@gmail.com', NULL, '$2y$12$U8370FpmOqkl196/x8clUuwPJt4G2.2jw97Z.4yNxrwP6EE98SwgG', NULL, '2025-07-02 06:12:06', '2025-07-02 06:12:06', 'employe', NULL),
(9, 'HelloJenkins-Job', 'Hello@gmail.com', NULL, '$2y$12$Dgr2sjQ1zGBVbDIT0sJs2.2rQjCp0w4PKR4/WNAKVbVjOyOhECQSe', NULL, '2025-07-02 06:42:06', '2025-07-02 06:42:06', 'client', NULL),
(10, 'le louch', 'lelouch@gmail.com', NULL, '$2y$12$kX6kEgEK8H/6ekWDrQyU2e3hwK4OvKpyNqVzrSMkQZeRGtxtzh1Yi', NULL, '2025-07-02 06:49:11', '2025-07-02 06:49:11', 'client', NULL),
(11, 'light yagami', 'light@gmail.com', NULL, '$2y$12$nlz.Rob33hjQZVYN3DUSo.0D2vCqQ2et5AsiF0sEW4kuG3z.wXZO.', NULL, '2025-07-02 06:57:06', '2025-07-02 06:57:06', 'client', NULL),
(13, 'lebrise', 'lebrise@gmail.com', NULL, '$2y$12$8U/mEYuIzxMbDg37eCLyk.7sPApWYqAlOiahlbKCmOzx2Utofn00y', NULL, '2025-07-02 07:02:01', '2025-07-02 07:02:01', 'client', NULL),
(14, 'Loiska', 'loisca@gmail.com', NULL, '$2y$12$b6qs1I5F3tpnhYcMSVhoLur0vamKUTHShLKRxJf/yG7.1jtf5qWAy', NULL, '2025-07-02 07:04:35', '2025-07-02 07:04:35', 'client', NULL),
(15, 'Hibrahim Moussa', 'moussa@gmail.com', NULL, '$2y$12$ReDvEMynFKK8KU8gwAR0p.Jhd0ckMHCLOvIQc5RFqSorQjmOFLWAK', NULL, '2025-07-02 07:09:58', '2025-07-02 07:09:58', 'client', NULL),
(16, 'Alassa', 'Allassa@gmail.com', NULL, '$2y$12$ITEzyPDJPbSlF4eQF0mb0.WeKiekcC/v.O0zLJuW7PIqCKA9zDHn6', NULL, '2025-07-02 07:10:37', '2025-07-02 07:10:37', 'client', NULL),
(17, 'Junior Loic', 'loic@gmail.com', NULL, '$2y$12$iV.1bCS7faKd2sjjOa9JuOZRkca/1673rN7lezzrriozYLFc47.Mq', 'wRFu1qDrbihtamklwpiUaLvBgYWXmeOW4XUldrz9zhldgRAuQOSCGcMAKnxg', '2025-07-02 07:12:23', '2025-07-02 07:12:23', 'client', NULL),
(18, 'Junior Loic', 'juniorloic@gmail.com', NULL, '$2y$12$RA0aGoiT0iQCdStF5rQ9h.CcqSqIyRJSKYs2qUpMD91tdgKxNSuRa', NULL, '2025-08-19 15:06:28', '2025-08-19 15:50:50', 'employe', '[\"dashboard\"]'),
(19, 'Berthy', 'berthy@gmail.com', NULL, '$2y$12$FXv9GQ1Zc29W5RE.AKeNEeg/nl7NHxckW3U5UlBQFresx2sCWB0lC', NULL, '2025-08-19 18:29:20', '2025-08-19 18:29:20', 'client', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accessoires`
--
ALTER TABLE `accessoires`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accessoires_slug_unique` (`slug`);

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorie_name_unique` (`name`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`idCommande`),
  ADD KEY `commandes_idclient_foreign` (`idClient`),
  ADD KEY `commandes_idemploye_foreign` (`idEmploye`);

--
-- Index pour la table `commande_accessoire`
--
ALTER TABLE `commande_accessoire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commande_accessoire_commande_id_foreign` (`commande_id`),
  ADD KEY `commande_accessoire_accessoire_id_foreign` (`accessoire_id`);

--
-- Index pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commande_produit_commande_id_foreign` (`commande_id`),
  ADD KEY `commande_produit_produit_id_foreign` (`produit_id`);

--
-- Index pour la table `commande_service`
--
ALTER TABLE `commande_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commande_service_commande_id_foreign` (`commande_id`),
  ADD KEY `commande_service_service_id_foreign` (`service_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_produit_id_foreign` (`produit_id`),
  ADD KEY `favorites_accessoire_id_foreign` (`accessoire_id`),
  ADD KEY `favorites_service_id_foreign` (`service_id`);

--
-- Index pour la table `formules`
--
ALTER TABLE `formules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `formules_nom_formule_index` (`nom_formule`),
  ADD KEY `formules_produit_id_index` (`produit_id`);

--
-- Index pour la table `formule_ingredient`
--
ALTER TABLE `formule_ingredient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `formule_ingredient_formule_id_ingredient_id_unique` (`formule_id`,`ingredient_id`),
  ADD KEY `formule_ingredient_ingredient_id_index` (`ingredient_id`);

--
-- Index pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Index pour la table `paniers`
--
ALTER TABLE `paniers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paniers_user_id_foreign` (`user_id`),
  ADD KEY `paniers_produit_id_foreign` (`produit_id`),
  ADD KEY `paniers_service_id_foreign` (`service_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productions_produit_id_foreign` (`produit_id`),
  ADD KEY `productions_formule_id_produit_id_index` (`formule_id`,`produit_id`);

--
-- Index pour la table `production_ingredient`
--
ALTER TABLE `production_ingredient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `production_ingredient_ingredient_id_foreign` (`ingredient_id`),
  ADD KEY `production_ingredient_production_id_ingredient_id_index` (`production_id`,`ingredient_id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produit_nomproduit_index` (`nomProduit`),
  ADD KEY `produit_categorie_id_index` (`categorie_id`),
  ADD KEY `produit_sexecible_index` (`sexeCible`),
  ADD KEY `produit_ingredient_principal_id_foreign` (`ingredient_principal_id`);

--
-- Index pour la table `produit_ingredient`
--
ALTER TABLE `produit_ingredient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produit_ingredient_produit_id_foreign` (`produit_id`),
  ADD KEY `produit_ingredient_ingredient_id_foreign` (`ingredient_id`);

--
-- Index pour la table `reapprovisionnements`
--
ALTER TABLE `reapprovisionnements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reapprovisionnements_ingredient_id_foreign` (`ingredient_id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_categorie_id_foreign` (`categorie_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accessoires`
--
ALTER TABLE `accessoires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `idCommande` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `commande_accessoire`
--
ALTER TABLE `commande_accessoire`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `commande_service`
--
ALTER TABLE `commande_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `formules`
--
ALTER TABLE `formules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `formule_ingredient`
--
ALTER TABLE `formule_ingredient`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paniers`
--
ALTER TABLE `paniers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `production_ingredient`
--
ALTER TABLE `production_ingredient`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=564;

--
-- AUTO_INCREMENT pour la table `produit_ingredient`
--
ALTER TABLE `produit_ingredient`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT pour la table `reapprovisionnements`
--
ALTER TABLE `reapprovisionnements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_idclient_foreign` FOREIGN KEY (`idClient`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commandes_idemploye_foreign` FOREIGN KEY (`idEmploye`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `commande_accessoire`
--
ALTER TABLE `commande_accessoire`
  ADD CONSTRAINT `commande_accessoire_accessoire_id_foreign` FOREIGN KEY (`accessoire_id`) REFERENCES `accessoires` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commande_accessoire_commande_id_foreign` FOREIGN KEY (`commande_id`) REFERENCES `commandes` (`idCommande`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD CONSTRAINT `commande_produit_commande_id_foreign` FOREIGN KEY (`commande_id`) REFERENCES `commandes` (`idCommande`) ON DELETE CASCADE,
  ADD CONSTRAINT `commande_produit_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commande_service`
--
ALTER TABLE `commande_service`
  ADD CONSTRAINT `commande_service_commande_id_foreign` FOREIGN KEY (`commande_id`) REFERENCES `commandes` (`idCommande`) ON DELETE CASCADE,
  ADD CONSTRAINT `commande_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_accessoire_id_foreign` FOREIGN KEY (`accessoire_id`) REFERENCES `accessoires` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `formules`
--
ALTER TABLE `formules`
  ADD CONSTRAINT `formules_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `formule_ingredient`
--
ALTER TABLE `formule_ingredient`
  ADD CONSTRAINT `formule_ingredient_formule_id_foreign` FOREIGN KEY (`formule_id`) REFERENCES `formules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `formule_ingredient_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `paniers`
--
ALTER TABLE `paniers`
  ADD CONSTRAINT `paniers_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `paniers_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `paniers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `productions`
--
ALTER TABLE `productions`
  ADD CONSTRAINT `productions_formule_id_foreign` FOREIGN KEY (`formule_id`) REFERENCES `formules` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `productions_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `production_ingredient`
--
ALTER TABLE `production_ingredient`
  ADD CONSTRAINT `production_ingredient_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`),
  ADD CONSTRAINT `production_ingredient_production_id_foreign` FOREIGN KEY (`production_id`) REFERENCES `productions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `produit_ingredient_principal_id_foreign` FOREIGN KEY (`ingredient_principal_id`) REFERENCES `ingredients` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `produit_ingredient`
--
ALTER TABLE `produit_ingredient`
  ADD CONSTRAINT `produit_ingredient_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `produit_ingredient_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reapprovisionnements`
--
ALTER TABLE `reapprovisionnements`
  ADD CONSTRAINT `reapprovisionnements_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
