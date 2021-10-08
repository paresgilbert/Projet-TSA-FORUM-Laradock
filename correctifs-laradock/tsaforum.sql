-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 19 sep. 2021 à 09:01
-- Version du serveur :  8.0.21
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bloglaravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comment_id` bigint UNSIGNED DEFAULT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_comment_id_foreign` (`comment_id`),
  KEY `comments_post_id_foreign` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `visible`, `created_at`, `updated_at`, `comment_id`, `post_id`) VALUES
(1, 'Finalement c\'est très intéressant ton article .', 1, 1, '2021-09-01 15:45:50', '2021-09-01 15:45:50', NULL, 1),
(2, 'Pourrais-tu faire un autre article sur le même sujet? Ce serait plus complet !', 1, 1, '2021-09-01 15:45:50', '2021-09-01 15:45:50', 1, 1),
(5, 'ceci est commentaire', 1, 1, '2021-09-16 11:27:59', '2021-09-16 11:27:59', NULL, 1),
(6, 'ceci est un commentaire du commentaire 5', 1, 1, '2021-09-01 14:14:29', '2021-09-01 14:14:29', 5, 1),
(7, 'j\'ajoute un commentaire et l\'envoie', 1, 1, '2021-09-16 12:34:51', '2021-09-16 12:34:51', NULL, 1),
(8, 'j\'ajoute un second commentaire et l\'envoie', 1, 1, '2021-09-16 12:35:53', '2021-09-16 12:35:53', NULL, 1),
(9, 'j\'ajoute un second commentaire et l\'envoie', 1, 1, '2021-09-16 12:38:34', '2021-09-16 12:38:34', NULL, 1),
(10, 'j\'en ajoute un encore', 1, 1, '2021-09-16 12:45:38', '2021-09-16 12:45:38', NULL, 1),
(11, 'le dernier commentaire', 1, 1, '2021-09-16 12:59:45', '2021-09-16 12:59:45', NULL, 1),
(12, 'bonjour Flore viens-tu à la plage  ?', 1, 1, '2021-09-16 13:05:12', '2021-09-16 13:05:12', NULL, 1),
(13, 'bonjour Flore viens-tu à la plage  ?\nok j\'arrive', 1, 1, '2021-09-16 13:06:05', '2021-09-16 13:06:05', 10, 1),
(14, 'bonjour Flore viens-tu à la plage  ?\nok j\'arrive', 1, 1, '2021-09-16 13:11:02', '2021-09-16 13:11:02', 10, 1),
(15, 'commentaire à\" j\'en ajoute un encore\"', 1, 1, '2021-09-17 07:56:09', '2021-09-17 07:56:09', 10, 1),
(16, 'commentaire à\" j\'en ajoute un encore\"', 1, 1, '2021-09-17 07:56:19', '2021-09-17 07:56:19', 10, 1),
(17, 'oui en réponse à bonjour Flore viens-tu à la plage ?', 1, 1, '2021-09-17 11:49:40', '2021-09-17 11:49:40', 12, 1),
(18, 'un commentaire qui dégage', 1, 1, '2021-09-17 11:53:13', '2021-09-17 11:53:13', NULL, 1),
(19, 'encore un', 1, 1, '2021-09-17 12:04:43', '2021-09-17 12:04:43', NULL, 1),
(20, 'encore', 1, 1, '2021-09-17 12:06:39', '2021-09-17 12:06:39', NULL, 1),
(21, 'encore', 1, 1, '2021-09-17 12:16:24', '2021-09-17 12:16:24', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2021_08_25_094249_create_posts_table', 1),
(12, '2021_08_31_063001_create_comments_table', 1),
(13, '2021_08_31_065649_create_tags_table', 1),
(14, '2021_08_31_074729_create_post_has_tags_table', 1),
(15, '2021_08_31_074729_create_post_tag_table', 2),
(16, '2021_09_01_152808_add_slug_intro_content_user_id_active_draft_posts_table', 2),
(17, '2021_09_01_155829_add_foreign_key_user__posts_table', 3),
(18, '2021_09_01_163317_delete_post_tag_table', 4),
(19, '2021_09_01_163837_create_post_tag2_table', 5),
(20, '2021_09_02_141158_add_comment_id_to_comments_table', 6),
(21, '2021_09_02_153306_add_post_id_to_comments_table', 7),
(22, '2016_06_01_000001_create_oauth_auth_codes_table', 8),
(23, '2016_06_01_000002_create_oauth_access_tokens_table', 8),
(24, '2016_06_01_000003_create_oauth_refresh_tokens_table', 8),
(25, '2016_06_01_000004_create_oauth_clients_table', 8),
(26, '2016_06_01_000005_create_oauth_personal_access_clients_table', 8);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'pwvcbnFqElT9q3ZhWcQBnoek26q2TJkRrLmkfFXW', NULL, 'http://localhost', 1, 0, 0, '2021-09-06 14:22:47', '2021-09-06 14:22:47'),
(2, NULL, 'Laravel Password Grant Client', 'm19bVIJfvyDB6McDroibnZKeGlsFcp8obSBVbcDO', 'users', 'http://localhost', 0, 1, 0, '2021-09-06 14:22:47', '2021-09-06 14:22:47');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-09-06 14:22:47', '2021-09-06 14:22:47');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `draft` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `created_at`, `updated_at`, `slug`, `intro`, `content`, `user_id`, `active`, `draft`) VALUES
(1, 'Vive le vinaigre blanc !', '2021-08-12 09:03:17', '2021-08-12 09:03:17', 'vive-le-vinaigre-blanc', 'POUR NOS PRODUITS d’entretien, les recettes de grand-mère se multiplient sur Internet.\r\nEt jusque dans les rayons des supermarchés, on trouve des ingrédients d’antan avec la promesse d’assainir nos maisons.', '\r\nMais vinaigre blanc et bicarbonate de soude sont-ils réellement moins polluants que leurs équivalents industriels ? Une équipe de chercheurs de l’Agence de l’environnement et de la maîtrise de l’énergie (Ademe), de l’Institut national de l’environnement industriel et des risques (Ineris) et du Centre scientifique et technique du bâtiment (CSTB) ont nettoyé, balayé, astiqué pendant deux ans et demi une maison expérimentale pour s’en assurer.\r\nRésultat, les décoctions maison polluent moins. Elles émettent moins de composés rganiques volatils (COV), ces minuscules poussières qu’on inhale sans s’en rendre compte. \r\nSelon les tests, les nettoyants pour vitres du commerce spécial grandes surfaces vitrées laisse cinq fois plus de COV dans l\'air que ses équivalents artisanaux !\r\nOn y trouve de l\'acétaldéhyde, probablement produit par la dégradation des flacons en plastique, classé cancérigène possible, du formaldéhyde, un puissant conservateur, cancérigène avéré.                        ', 1, 1, 0),
(2, 'Salon Vivatech  Le rendez-vous de l\'innovation s\'installe à Paris, les 16, 17 et 18 mai', '2021-08-19 09:07:01', '2021-08-19 09:07:01', 'salon-vivatech ', 'Salon Vivatech  Le rendez-vous de l\'innovation s\'installe à Paris, les 16, 17 et 18 mai', '\r\nUN ARBRE SOLAIRE CONNECTÉ\r\nAvec ses 4,5 m de haut et ses 10 m2 d’occupation au sol, cet arbre un peu spécial sera visible de loin ! Grâce aux panneaux solaires en guise de feuilles, cette nouvelle génération de mobilier urbain produit et fournit de l’énergie. \r\nSolar TRee Europ, l’entreprise à son origine, décrit cet « e Tree », comme une plate-forme de services.On s’y arrête notamment pour recharger son smartphone grâce à des ports USB, profiter d’une connexion en wi-fi ou glaner des informations sur la ville. On peut même recharger son vélo électrique. Nevers (Nièvre) est la première ville française à avoir « planté »deux e Tree. Une quinzaine au total ont jusque-là pris racine dans le monde.\r\nEn plus de cette innovation en faveur des villes durables, de nombreuses autres sont à découvrir dans le «Green Tech Park », zone dédiée aux technologies vertes avec des solutions en faveur du recyclage de l’eau et des déchets, de l’agriculture urbaine. Plus largement, la « tech for good », dédiée à la santé, à l’environnement ou au bien-être, est le fil rouge du salon cette année.              ', 1, 1, 0),
(3, 'Comment pouvons-nous réduire l\'impact environnemental de notre mode ?', '2021-08-05 09:10:33', '2021-08-04 09:10:33', 'comment-pouvons-nous-reduire-l-impact-environnemental-de-notre-mode', '1. acheter moins\r\n[img]http://sustainablog/files/20/01-Patagonia-Don\'t+buy+this+jacket.jpg[/img]\r\nMême le vêtement le plus vert utilise des ressources pour sa production et son transport jusqu\'à votre domicile, ce qui a un impact sur l\'environnement.\r\n\r\nU', '\r\n\r\n\r\n[b]2. Nous avons tendance à penser qu\'acheter de nouveaux vêtements nous rendra heureux.[/b] Peut-être devrions-nous reconsidérer certains fondements de notre mode de vie. La veste la plus écologique est celle qui se trouve déjà dans votre placard... \r\n\r\n- Lisa Williams, chef de produit en Patagonie\r\n\r\n\r\n\r\n[b]2.  Acheter des vêtements de marques durables[/b]\r\n[img]http://sustainablog/files/20/02-Reformation+Jeans.jpg[/img]\r\n\r\nDe plus en plus de marques de mode prennent en compte l\'impact environnemental et social de leur production.\r\n\r\nVous pouvez trouver nos marques durables préférées dans la section Les marques que nous aimons.\r\n\r\nNous ne vous mentirons pas : l\'offre est encore limitée et il est plus facile et moins cher de se rendre au centre commercial le plus proche pour remplir sa garde-robe. Mais plus nous exigerons des vêtements durables, plus il y en aura, tout comme les aliments biologiques étaient difficiles à trouver il y a 15 ans. Aujourd\'hui, ils sont disponibles dans la plupart des supermarchés.\r\n\r\nEn termes de prix, oui, vous paierez plus pour des vêtements durables que dans un magasin de fast fashion (H&M, Zara, Primark...), mais nous savons ce qui se cache derrière ces prix très bas...\r\n\r\nNéanmoins, les marques durables ne coûteront pas nécessairement plus cher que les vêtements de marque, pour lesquels nous payons parfois des prix élevés pour l\'image, mais rarement pour la qualité ou la durabilité.\r\n\r\n\r\n[b]3.     Acheter une meilleure qualité[/b]\r\n[img]http://sustainablog/files//20/03-How+to+recognize+if+a+piece+of+cloth+is+of+good+quality.png[/img]\r\n\r\n\r\nLes vêtements étant devenus si bon marché, nous ne nous soucions plus autant de la qualité. Nous achetons simplement de nouveaux vêtements lorsque ceux que nous avons perdent leur forme ou leur attrait.\r\n\r\nEn outre, nous avons tous fait l\'expérience d\'acheter des vêtements ou des chaussures coûteux et d\'être déçus lorsque deux mois plus tard, ils ont déjà l\'air vieux ou troués.\r\n\r\nSi nous cessons d\'acheter des produits de mauvaise qualité, cela poussera les marques à améliorer la qualité de leurs vêtements. Cela nous permettra également de conserver nos vêtements plus longtemps, ce qui est bon pour notre portefeuille et pour l\'environnement.\r\nRÉFLÉCHISSEZ À DEUX FOIS AVANT DE JETER VOS VÊTEMENTS\r\n\r\n\r\n[b]4.     Réfléchissez à deux fois avant de jeter vos vêtements[/b]\r\n[img]http://sustainablog/files/20/04-THINK+TWICE+BEFORE+THROWING+OUT+YOUR+CLOTHES.jpg[/img]\r\n\r\nNe jetez pas vos vêtements dans les poubelles normales ! La plupart d\'entre eux sont en fibres synthétiques non biodégradables et s\'empilent dans la décharge. Il existe d\'autres options :\r\n\r\n-Essayer de les réparer. Parfois, avec un peu d\'imagination, vous pouvez réparer ou même redessiner un vêtement déchiré.\r\n\r\n- Faites don de vos vêtements à vos amis, à votre famille, à vos voisins ou à des œuvres de bienfaisance.\r\n\r\n- Certains magasins de vêtements reprennent les vêtements usagés de leur propre marque ou même d\'autres marques.\r\n\r\n- Mettez-les dans la poubelle de recyclage des textiles. Les textiles peuvent être recyclés pour fabriquer de nouveaux vêtements.\r\n\r\n\r\n[url=http:/www.vinted.com]www.vinted.com[/url]\r\n\r\n\r\n[b]5. Acheter des vêtements d\'occasion, les échanger et les louer[/b]\r\n\r\n[img]http://sustainablog/files/20/05-Vinted.jpeg[/img]\r\nAu lieu d\'acheter de nouveaux vêtements, examinez d\'autres options :\r\n\r\n- Magasin de seconde main : Ce n\'est pas un concept nouveau ! Vous pouvez trouver des magasins de seconde main partout dans le monde. De nombreux sites web et applications proposent également toutes sortes d\'options de seconde main, allant des vêtements les moins chers aux vêtements de marque.\r\n\r\n- Échange de vêtements : ce type d\'initiatives se développe partout dans le monde. Les participants apportent des vêtements qui ne sont plus portés et les échangent contre des vêtements qu\'ils utiliseront. C\'est une façon économique et écologique de remplir sa garde-robe. Vous pouvez également l\'organiser entre vos amis.  \r\n\r\nEn savoir plus sur \"Comment organiser un échange de vêtements\".\r\n\r\n- Louer des vêtements : La location de vêtements est également une industrie en pleine croissance. C\'est une excellente option, surtout pour les vêtements que vous ne porterez pas pendant longtemps ou souvent (vêtements de bébé ou de grossesse, robes de fête...). Certaines entreprises proposent également une redevance mensuelle, ce qui permet aux clients de renouveler constamment leur garde-robe.\r\n\r\nL\'organisation de vêtements de seconde main, d\'échange et de location se fait généralement au niveau local. Découvrez ce qui est disponible dans votre quartier.\r\n\r\n\r\n[b]6.   Surveillez votre lavage[/b]\r\n[img]http://sustainablog/files/20/06-7+tips+to+reduce+our+laundry+impact.png[/img]\r\n\r\nLe lavage de nos vêtements a un impact environnemental important. Un ménage moyen fait près de 400 brassées de linge chaque année, ce qui consomme environ 60 000 litres d\'eau. Il faut également beaucoup d\'énergie pour chauffer l\'eau de lavage et faire fonctionner le cycle de séchage. Voici donc quelques conseils pour réduire cet impact.\r\n\r\nPlus de conseils sur #WhatsInMyWash. \r\n                 ', 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_post_id_foreign` (`post_id`),
  KEY `post_tag_tag_id_foreign` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-09-09 16:48:38', '2021-09-08 16:48:38'),
(2, 1, 2, '2021-09-14 16:48:38', '2021-09-21 16:48:38'),
(3, 2, 2, '2021-09-09 16:49:33', '2021-09-16 16:49:33'),
(4, 3, 3, '2021-09-23 16:52:37', '2021-09-22 16:52:37');

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Vinaigre blanc', 'vinaigre-blanc', 1, '2021-08-11 16:58:32', '2021-08-17 16:58:32'),
(2, 'energie solaire', 'energie-solaire', 1, '2021-08-18 16:58:32', '2021-08-19 16:58:32'),
(3, 'vêtement', 'vetement', 1, '2021-09-23 16:50:54', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gilbert', 'pares.gilbert@orange.fr', '2021-08-19 08:58:36', '$2y$10$xQIfWZoiB0D4w5wKrmM6feLIlESliaUAbdLe7lNwMsWrY4rdCjmEi', NULL, '2021-08-26 08:58:36', '2021-08-26 08:58:36'),
(2, 'Gil', 'pares.gilbert@free.fr', NULL, '$2y$10$xQIfWZoiB0D4w5wKrmM6feLIlESliaUAbdLe7lNwMsWrY4rdCjmEi', NULL, '2021-08-31 13:34:08', '2021-08-31 13:34:08');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
