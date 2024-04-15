-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : lun. 15 avr. 2024 à 20:59
-- Version du serveur : 10.10.2-MariaDB
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hb_pe8_pdo`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `fisrtname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `cours_id` int(11) NOT NULL AUTO_INCREMENT,
  `titre_name` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `descriptif` text NOT NULL,
  PRIMARY KEY (`cours_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`cours_id`, `titre_name`, `video`, `image`, `descriptif`) VALUES
(1, 'HTML', 'https://www.youtube.com/embed/oEAuNzWXRjM?si=shskWpnoU-siBYm3', 'html.svg', 'Comprendre la structure de base : \r\n\r\nFamiliarisez-vous avec les balises HTML, telles que html, head, body, et div. Comprenez comment elles s\'imbriquent et comment elles définissent la structure d\'une page web.\r\n\r\nApprendre les balises courantes : Explorez les balises les plus couramment utilisées, telles que h1 pour les titres, p pour les paragraphes, a pour les liens, et img pour les images. Comprenez leur fonction et comment les utiliser correctement.\r\n\r\nComprendre les attributs : Les balises HTML peuvent avoir des attributs, tels que class, id, src, et href. Apprenez comment utiliser ces attributs pour ajouter des styles, des identifiants uniques et des liens vers d\'autres pages ou ressources.\r\n\r\nUtiliser les formulaires : Familiarisez-vous avec les balises de formulaire HTML, telles que form, input, et button. Comprenez comment collecter les données des utilisateurs et les soumettre à un serveur.\r\n\r\nApprendre les bases du style avec CSS : Bien qu\'HTML soit principalement utilisé pour la structure, il est important de comprendre comment ajouter du style à vos pages avec CSS. Apprenez les sélecteurs, les propriétés et les valeurs CSS de base pour rendre vos pages plus attrayantes.\r\n\r\nPratiquer et expérimenter : La meilleure façon d\'apprendre HTML est de pratiquer en créant des pages web. Commencez par des projets simples et ajoutez progressivement des fonctionnalités plus avancées. Explorez les ressources en ligne et consultez des exemples pour vous inspirer et approfondir vos connaissances.'),
(2, 'ANGULAR', 'https://www.youtube.com/embed/mg3-Owd5dhE?si=ji527WvZwDF0DG-K', 'Angular.svg', 'Pour appréhender le code Angular en tant que débutant, commencez par comprendre les bases de TypeScript, le langage sur lequel Angular est basé.\r\n\r\nEnsuite, familiarisez-vous avec les concepts clés d\'Angular, tels que les composants, les directives, les services, les modules et le routage.\r\n\r\nSuivez des tutoriels et des exemples en ligne pour mettre en pratique vos connaissances et vous familiariser avec la structure d\'une application Angular.\r\n\r\nPratiquez en créant de petites applications et en ajoutant progressivement des fonctionnalités plus avancées pour développer vos compétences.\r\n\r\nExplorez la communauté Angular, lisez la documentation officielle et n\'hésitez pas à expérimenter et à explorer de nouvelles fonctionnalités pour approfondir votre compréhension d\'Angular.'),
(3, 'Css', 'https://www.youtube.com/embed/qTN9bNaBCK8?si=R4GaW6Wyf94BQeZx', 'css.svg', 'Comprendre les sélecteurs : Familiarisez-vous avec les sélecteurs CSS, tels que les sélecteurs d\'élément, de classe, d\'ID et les sélecteurs de descendant. Comprenez comment ils fonctionnent et comment les utiliser pour cibler des éléments spécifiques dans votre page HTML.\r\n\r\nApprendre les propriétés de base : Explorez les propriétés CSS de base, telles que color, font-size, margin, padding, et background-color. Comprenez comment ces propriétés affectent l\'apparence des éléments et comment les utiliser pour styliser votre page.\r\n\r\nUtiliser les boîtes CSS : Comprenez le modèle de boîte de CSS, qui comprend les propriétés width, height, border, margin, et padding. Apprenez comment ces propriétés définissent la taille, les marges et les bordures des éléments.\r\n\r\nMaîtriser le positionnement : Apprenez les différentes techniques de positionnement CSS, telles que position: relative, position: absolute, et position: fixed. Comprenez comment ces propriétés peuvent être utilisées pour contrôler l\'emplacement des éléments dans la mise en page.\r\n\r\nUtiliser les sélecteurs avancés : Explorez les sélecteurs CSS avancés, tels que les sélecteurs de pseudo-classes et de pseudo-éléments. Comprenez comment ils peuvent être utilisés pour cibler des états spécifiques d\'un élément ou ajouter des effets visuels spéciaux.\r\n\r\nPratiquer et expérimenter : La meilleure façon d\'apprendre CSS est de pratiquer en créant des styles pour différentes pages web. Expérimentez avec les différentes propriétés, les combinaisons de sélecteurs et les techniques de positionnement pour obtenir les résultats souhaités. Consultez des ressources en ligne et des exemples pour vous inspirer et approfondir vos connaissances.'),
(4, 'Javascript', 'https://www.youtube.com/embed/5XPlgCU7xAE?si=0Uujg_s5M1wTx_lM', 'javascript.svg', 'Comprendre les bases : Familiarisez-vous avec les fondamentaux de JavaScript, tels que les variables, les types de données, les opérateurs et les fonctions. Comprenez comment ces éléments fonctionnent ensemble pour créer des fonctionnalités interactives dans une page web.\r\n\r\nManipuler le DOM : Apprenez à utiliser JavaScript pour interagir avec le Document Object Model (DOM). Comprenez comment sélectionner des éléments HTML, modifier leur contenu, ajouter des événements et réagir aux interactions de l\'utilisateur.\r\n\r\nGérer les événements : Comprenez comment gérer les événements JavaScript, tels que les clics de souris, les soumissions de formulaire et les mouvements du curseur. Apprenez à associer des fonctions à ces événements pour déclencher des actions spécifiques.\r\n\r\nUtiliser des structures de contrôle : Maîtrisez les structures de contrôle JavaScript, telles que les boucles for, les conditions if-else et les instructions switch. Comprenez comment elles permettent d\'exécuter des blocs de code conditionnellement ou de manière répétée.\r\n\r\nTravailler avec les tableaux et les objets : Apprenez à utiliser les tableaux et les objets JavaScript pour stocker et manipuler des données structurées. Comprenez comment accéder aux éléments, ajouter des propriétés et utiliser les méthodes intégrées pour effectuer des opérations sur ces structures de données.\r\n\r\nPratiquer et expérimenter : La meilleure façon d\'apprendre JavaScript est de pratiquer en créant des fonctionnalités interactives. Expérimentez avec des projets simples, ajoutez des fonctionnalités plus avancées et explorez les ressources en ligne pour approfondir vos connaissances.'),
(5, 'Figma', 'https://www.youtube.com/embed/vaMICSS-x7w?si=tqnaQJiRR_GcEhEc', 'figma.svg', 'Comprendre l\'interface : Familiarisez-vous avec l\'interface de Figma, notamment les panneaux d\'outils, les calques, les propriétés et les options de sélection. Comprenez comment naviguer dans l\'espace de travail et accéder aux fonctionnalités clés.\r\n\r\nCréer des designs : Apprenez à utiliser les outils de dessin de Figma pour créer des formes, des lignes, des textes et d\'autres éléments graphiques. Comprenez comment les manipuler, les styliser et les organiser dans votre design.\r\n\r\nUtiliser les composants : Explorez les fonctionnalités de composants de Figma, qui vous permettent de créer des éléments réutilisables et de maintenir la cohérence dans votre design. Comprenez comment créer, modifier et utiliser des composants dans vos projets.\r\n\r\nCollaborer avec d\'autres : Comprenez comment partager votre design avec d\'autres utilisateurs de Figma et collaborer en temps réel. Apprenez à utiliser les commentaires, les présentations et les fonctionnalités de collaboration pour travailler efficacement avec votre équipe.\r\n\r\nAnimer vos designs : Découvrez les fonctionnalités d\'animation de Figma, telles que les transitions, les animations de mouvement et les animations de micro-interactions. Comprenez comment ajouter des animations à vos designs pour les rendre plus interactifs et dynamiques.\r\n\r\nPratiquer et explorer : La meilleure façon d\'apprendre Figma est de pratiquer en créant des designs réels. Explorez les ressources en ligne, les tutoriels et les exemples pour vous inspirer et approfondir vos connaissances.'),
(6, 'SQL', 'https://www.youtube.com/embed/pKuOAqKpGdw?si=p3ElmQUSrmFPLLfP', 'Sql.svg', 'Comprendre les bases : Familiarisez-vous avec les concepts de base de SQL, tels que les tables, les colonnes, les lignes et les requêtes. Comprenez comment organiser et structurer les données dans une base de données relationnelle.\r\n\r\nApprendre les commandes CRUD : Maîtrisez les commandes CRUD (Create, Read, Update, Delete) de SQL. Apprenez comment créer des tables, insérer des données, les lire, les mettre à jour et les supprimer à l\'aide des commandes SQL appropriées.\r\n\r\nUtiliser les clauses SELECT, WHERE et JOIN : Comprenez comment utiliser les clauses SELECT, WHERE et JOIN pour filtrer les données et récupérer des informations spécifiques à partir de plusieurs tables liées. Apprenez les opérateurs de comparaison et les jointures pour obtenir les résultats désirés.\r\n\r\nGérer les contraintes et les index : Apprenez à utiliser les contraintes SQL, telles que les clés primaires, les clés étrangères et les contraintes d\'intégrité, pour garantir l\'intégrité des données. Comprenez également comment créer des index pour améliorer les performances des requêtes.\r\n\r\nUtiliser les fonctions agrégées : Explorez les fonctions agrégées SQL, telles que SUM, AVG, COUNT, MAX et MIN, pour effectuer des calculs et des agrégations sur les données. Comprenez comment les utiliser dans les requêtes pour obtenir des statistiques et des résumés des données.\r\n\r\nPratiquer et expérimenter : La meilleure façon d\'apprendre SQL est de pratiquer en créant et en exécutant des requêtes sur une base de données réelle. Expérimentez avec des requêtes complexes, utilisez des données réelles et consultez des ressources en ligne pour approfondir vos connaissances.'),
(7, 'symfony', 'https://www.youtube.com/embed/RAFLl0NqjDU?si=v4i_zM2zl6SG4QIH', 'symfony.svg', 'Comprendre l\'architecture MVC : Familiarisez-vous avec l\'architecture Model-View-Controller (MVC) utilisée par Symfony. Comprenez comment les modèles, les vues et les contrôleurs interagissent pour créer des applications web robustes et maintenables.\r\n\r\nInstaller et configurer Symfony : Apprenez à installer et configurer Symfony sur votre environnement de développement. Comprenez comment composer, le gestionnaire de dépendances de PHP, est utilisé pour gérer les bibliothèques et les packages nécessaires à votre projet Symfony.\r\n\r\nCréer des routes et des contrôleurs : Maîtrisez la création de routes et de contrôleurs dans Symfony. Comprenez comment définir des URL et associer des actions spécifiques à ces routes, en utilisant les annotations ou le fichier de configuration.\r\n\r\nUtiliser les entités et les repositories : Explorez le concept d\'entités dans Symfony, qui représentent les objets métier de votre application. Apprenez à créer des entités, à les associer à une base de données et à les manipuler à l\'aide des repositories.\r\n\r\nUtiliser les services et l\'injection de dépendances : Comprenez comment utiliser les services dans Symfony pour regrouper et réutiliser du code. Apprenez à configurer les services, à les injecter dans vos contrôleurs et à les utiliser pour gérer des fonctionnalités spécifiques de votre application.\r\n\r\nPratiquer et expérimenter : La meilleure façon d\'apprendre Symfony est de pratiquer en créant des fonctionnalités réelles. Expérimentez avec la création de routes, la manipulation des entités, la création de formulaires, la gestion des utilisateurs, etc. Consultez la documentation officielle de Symfony et les ressources en ligne pour approfondir vos connaissances.'),
(8, 'Wordpress', 'https://www.youtube.com/embed/wCDaxehVwoY?si=I29zuwRJW7RaAPVe', 'Wordpress.svg', 'Installer et configurer WordPress : Apprenez à installer WordPress sur votre serveur ou à utiliser la version hébergée sur WordPress.com. Comprenez comment configurer les paramètres de base, tels que les informations de connexion à la base de données et les options de permaliens.\r\n\r\nComprendre l\'interface d\'administration : Familiarisez-vous avec l\'interface d\'administration de WordPress. Explorez les différentes sections telles que les articles, les pages, les médias, les extensions et les thèmes. Comprenez comment naviguer et utiliser les différentes fonctionnalités disponibles.\r\n\r\nPersonnaliser votre site avec des thèmes : Découvrez les thèmes WordPress et apprenez à les installer et à les personnaliser. Comprenez comment modifier l\'apparence de votre site en utilisant les options de personnalisation, les widgets et les menus.\r\n\r\nAjouter des fonctionnalités avec des extensions : Explorez les extensions WordPress pour ajouter des fonctionnalités supplémentaires à votre site. Apprenez à installer, configurer et gérer les extensions pour répondre à vos besoins spécifiques, tels que la création de formulaires, l\'optimisation SEO ou l\'intégration des réseaux sociaux.\r\n\r\nCréer et gérer du contenu : Apprenez à créer et gérer du contenu sur votre site WordPress. Comprenez comment créer des articles, des pages, des catégories et des balises. Utilisez l\'éditeur de blocs pour créer des mises en page personnalisées et ajouter du contenu multimédia.\r\n\r\nSécuriser et optimiser votre site : Explorez les meilleures pratiques de sécurité et d\'optimisation pour votre site WordPress. Apprenez à mettre à jour régulièrement WordPress et ses extensions, à utiliser des mots de passe forts, à sauvegarder votre site et à optimiser les performances pour une expérience utilisateur optimale.'),
(9, 'Algorithme', 'https://www.youtube.com/embed/kk6YbA5I-Iw?si=iMsBccxxW7CYy4Ji', 'algorithmique.svg', 'Comment appréhender l\'algorithme?\r\n\r\nComprendre les fondamentaux : Familiarisez-vous avec les concepts de base de l\'algorithme, tels que les variables, les boucles et les conditions. Cela vous aidera à résoudre les problèmes de manière logique et efficace.\r\n\r\nAnalyser le problème : Avant de commencer à coder, prenez le temps de bien comprendre le problème que vous devez résoudre. Identifiez les entrées, les sorties et les étapes nécessaires pour parvenir à la solution.\r\n\r\nDiviser et conquérir : Décomposez le problème en sous-problèmes plus petits et plus gérables. Cela facilitera la résolution et vous permettra de mieux organiser votre code.\r\n\r\nConcevoir une solution : Une fois que vous avez identifié les étapes nécessaires, concevez une solution algorithmique. Utilisez des diagrammes, des pseudocodes ou des flux de travail pour visualiser votre approche avant de commencer à coder.\r\n\r\nImplémenter et tester : Transformez votre solution algorithmique en code. Prenez le temps de tester et de déboguer votre code pour vous assurer qu\'il fonctionne correctement et qu\'il répond aux exigences du problème.\r\n\r\nPratiquer et itérer : La pratique régulière est essentielle pour améliorer vos compétences en algorithmie. En vous confrontant à différents problèmes et en cherchant des solutions optimisées, vous renforcerez votre compréhension et votre capacité à créer des algorithmes efficaces.\r\n\r\nN\'oubliez pas que la maîtrise de l\'algorithme nécessite du temps et de la pratique. Plus vous vous exercerez, plus vous deviendrez à l\'aise dans la résolution de problèmes et dans la création d\'algorithmes performants.'),
(10, 'aaaa', 'htttpp', '20231102_101438 - CopiezBfrr1P53aC6nNJlAe7A5jhFX.jpg', 'salut!');

-- --------------------------------------------------------

--
-- Structure de la table `formulaire`
--

DROP TABLE IF EXISTS `formulaire`;
CREATE TABLE IF NOT EXISTS `formulaire` (
  `form-id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Prénom` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Message` text NOT NULL,
  `Date_de_creation` datetime NOT NULL DEFAULT current_timestamp(),
  `Objet` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`form-id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `users_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `profile_pc` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`users_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`users_id`, `email`, `pass`, `profile_pc`, `active`, `name`) VALUES
(1, 'bobby@bob.com', 'test', NULL, 1, 'Bobby'),
(2, 'johhny@john.com', 'test', NULL, 0, 'John'),
(3, 'carl@gmail.com', 'test', NULL, 1, 'Carl');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
