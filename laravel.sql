-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 24, 2024 at 09:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doc_name` varchar(255) NOT NULL,
  `name_client` varchar(255) NOT NULL,
  `email_client` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `problem` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `doc_name`, `name_client`, `email_client`, `time`, `problem`, `created_at`, `updated_at`) VALUES
(1, 'imen', 'aziz', 'mohamedaziz.torki@supcom.tn', '24/02/2022', 'bla', '2024-02-24 17:11:28', '2024-02-24 17:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `recive_inspiration` tinyint(4) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `email`, `password`, `recive_inspiration`, `token`, `created_at`, `updated_at`) VALUES
(1, 'aziz', 'torki', 'mohamedaziz.torki@supcom.tn', '$2y$10$olfIBCxBBVfpDgnZTUMO1OW94fIgYxh4q/Valc75je2AXOPUo5wgS', NULL, '48ea6256aa2b5842cc0f3e934dbd86e2b07dbd44cb03eeafcf6c72d226b4a68d', '2024-02-24 14:16:35', '2024-02-24 17:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `specialize` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `doc_img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `specialize`, `email`, `doc_img`, `created_at`, `updated_at`) VALUES
(1, 'Imen Sadraoui', 'Psychiatry', 'imen.sadraoui@supcom.tn', 'https://i.pinimg.com/564x/0a/ae/26/0aae269bea0436d9e1a12ca29a1dc2a5.jpg', '2024-02-24 15:44:20', '2024-02-24 15:44:20'),
(2, 'Bacem Ahmed', 'Anesthesiology', 'bacem.ahmed@supcom.tn', 'https://i.pinimg.com/564x/1f/37/12/1f371271bfb0faa1c75377d7747563b3.jpg', '2024-02-24 17:39:31', '2024-02-24 17:39:31'),
(3, 'Nour Mabrouk', 'Pediatrics', 'nour.mabrouk@supcom.tn', 'https://i.pinimg.com/564x/77/f5/ef/77f5efea22197f4f37e192efd5a62818.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_20_142314_create_songs_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 2),
(7, '2024_02_19_173348_create_clients_table', 2),
(8, '2024_02_21_203303_create_services_table', 2),
(9, '2024_02_21_223915_create_doctors_table', 2),
(10, '2024_02_23_225339_create_appointments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `treatment` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `descripton` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `service_img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `class`, `treatment`, `price`, `descripton`, `icon`, `service_img`, `created_at`, `updated_at`) VALUES
(1, 'Cardiology', 'Electrocardiogram (ECG)', '150.00', 'An electrocardiogram (ECG or EKG) is a test that records the electrical activity of the heart over a period of time. It is a common diagnostic tool for heart-related conditions.', 'https://i.pinimg.com/564x/06/2f/f0/062ff05b326506564a0e8017608b8efd.jpg', 'https://i.pinimg.com/564x/bb/cb/fa/bbcbfa8c3514be0d7a2f407d1405fd5d.jpg', '2024-02-24 15:46:44', '2024-02-24 15:46:44'),
(2, 'Pediatrics', 'Well-Child Checkup', '80.00', 'A comprehensive well-child checkup for infants and children, including growth assessment, vaccinations, and developmental screening.', 'https://i.pinimg.com/564x/92/24/09/9224099575e73bbc32831caa250aa173.jpg', 'https://i.pinimg.com/564x/31/13/9d/31139d61d7737570d4de204cfd414b9d.jpg', '2024-02-24 15:25:35', '2024-02-24 15:25:35'),
(3, 'Orthopedics', 'Orthopedic Consultation', '120.00', 'An orthopedic consultation for the assessment and management of musculoskeletal conditions, including joint pain, fractures, and sports injuries.', 'https://i.pinimg.com/564x/5d/e1/19/5de119b2f02816196701f53490cc1357.jpg', 'https://i.pinimg.com/564x/55/68/c8/5568c84b8e98e347face5370a8c09d39.jpg', '2024-02-24 15:30:23', '2024-02-24 15:30:23'),
(4, 'Mental Health', 'Counseling Session', '80.00', 'Individual counseling session with a licensed mental health professional to address and manage mental health concerns', 'https://i.pinimg.com/564x/83/b7/e2/83b7e22d9901f7877176bcf87fcdf408.jpg', 'https://i.pinimg.com/564x/fb/da/61/fbda616819bd4c04798a5eeba5aa5fb3.jpg', '2024-02-24 15:34:58', '2024-02-24 15:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` text NOT NULL,
  `artist` text NOT NULL,
  `link` text NOT NULL,
  `description` text NOT NULL,
  `lyrics` text NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `created_at`, `updated_at`, `title`, `artist`, `link`, `description`, `lyrics`, `platform`) VALUES
(2, '2024-02-20 16:02:19', '2024-02-20 16:02:19', 'kjnerjk', 'jdhih', 'https://www.youtube.com/watch?v=VNwbrqICXVk&ab_channel=ElGrandeToto', 'ejzhrih', 'lkezjrio', 'spotify'),
(3, '2024-02-20 16:25:04', '2024-02-20 16:25:04', 'lolo', 'hozirh', 'https://www.youtube.com/watch?v=VNwbrqICXVk&ab_channel=ElGrandeToto', 'pouzroi', 'hezruoh', 'youtube'),
(4, '2024-02-20 17:08:02', '2024-02-20 17:08:02', 'quisquam', 'Dolore suscipit quod vero et. Iusto doloribus totam aut repellat explicabo voluptates asperiores. Sint similique quam ducimus iure nulla nostrum veniam.', 'Reprehenderit perferendis et reprehenderit vel. Distinctio qui fugiat aut aliquam. Ad voluptas voluptas quia expedita voluptatem omnis eos.', 'Porro praesentium laboriosam reiciendis officia consequatur tempora consequatur. Eius quia sed occaecati ut mollitia. Aperiam accusamus est blanditiis tempore tempore illo ad.', 'Tenetur velit quaerat voluptatibus repellendus sed autem quia. Porro dolorum minus repellendus aliquam. Dicta officia est omnis.', 'Occaecati totam rerum aut quos sed et. A nisi aspernatur labore eum. Eos enim saepe dignissimos omnis hic.'),
(5, '2024-02-20 17:08:02', '2024-02-20 17:08:02', 'et', 'Omnis cumque omnis quis qui sit et. Voluptatem est minima quo qui cum ad odio. Perspiciatis voluptatem nisi aperiam culpa fugit facere et. Soluta qui aut et voluptatum consectetur molestiae.', 'Quaerat in quam vitae non eos accusantium eos. Repellendus quia aliquid perferendis et ut. Fugiat perspiciatis harum in est distinctio corporis. Corporis id qui atque sequi quo ad.', 'Suscipit quod commodi officia eligendi reprehenderit sint minima. Corporis nihil debitis aut qui. Deserunt sunt sapiente magnam omnis molestiae est.', 'Eos harum quis exercitationem est. Quisquam cupiditate sit aut sequi qui quo eligendi. Earum nihil labore tempore dolores. Quidem qui voluptatem aut magnam quo ullam veritatis.', 'Nemo nobis necessitatibus odio quo. Doloremque ut corrupti placeat in totam et. Architecto in sed ipsam nulla libero vitae.'),
(6, '2024-02-20 17:08:02', '2024-02-20 17:08:02', 'reprehenderit', 'Voluptates animi voluptatem eligendi placeat a molestiae illo. Occaecati ut voluptate illum aut qui velit. Sint doloribus magnam aut adipisci velit. Occaecati tempore et totam.', 'Nihil exercitationem dicta consequatur ullam in error voluptates. Aperiam dolores et aut voluptatem qui adipisci sed. Mollitia exercitationem ducimus iste qui praesentium.', 'Iure eaque velit rerum. Amet et libero nulla sunt qui. Deleniti maiores ut omnis dolor.', 'Eos omnis id possimus esse et. Et doloremque et quidem error. Sed nisi a voluptatem velit. Harum repudiandae est dolorum assumenda sed non quos.', 'Ut perspiciatis sed repudiandae odio minus voluptas. Quaerat voluptatem et commodi. Deserunt aut dolorem nemo provident odio sint nobis.'),
(7, '2024-02-20 17:08:02', '2024-02-20 17:08:02', 'deserunt', 'Facere expedita itaque et ut quidem. Nihil ipsa vitae quia ut. Rerum iusto tempore adipisci sint. Eum libero ut nisi nihil quia quo aut. Recusandae excepturi quo culpa. Quia autem provident quia.', 'Alias tempora numquam odit asperiores. Accusantium mollitia id ut omnis qui et. Explicabo non reiciendis et dolore saepe qui quia.', 'Numquam harum ut eius sit ducimus impedit. Veritatis eligendi hic eos. Suscipit impedit quo laborum.', 'Saepe est facilis facilis perspiciatis suscipit tenetur est. Corrupti labore voluptas voluptas consequuntur veniam. Et quasi rem mollitia enim ut.', 'Quo aut beatae blanditiis maxime. Eligendi consequatur sequi repudiandae vel. Et neque veritatis tempora ut aut et. Quidem cumque nemo accusantium est. Dolores iure quibusdam et.'),
(8, '2024-02-20 17:08:02', '2024-02-20 17:08:02', 'tenetur', 'Deserunt nemo sunt repellat aut. Aut doloremque ea maxime adipisci excepturi. Numquam eum magnam repudiandae distinctio ab at qui.', 'Omnis fugiat explicabo et cumque dolor eveniet. Nobis neque aspernatur non illo nesciunt ab. Impedit in magni quia hic fuga.', 'Adipisci modi molestiae nulla iure et fuga voluptas ipsa. Corrupti pariatur eum deserunt dolorem nemo suscipit ullam. Laboriosam quia officia quisquam voluptas.', 'Incidunt eligendi dolorem officiis asperiores. Blanditiis in pariatur et nisi. Et a ipsam vitae doloremque minus assumenda sit. Ex quia qui ex voluptatem magni reprehenderit.', 'Voluptatem soluta perferendis magnam occaecati molestiae incidunt. Officiis impedit commodi non. Dolor placeat et eum adipisci quisquam perferendis voluptatem temporibus.'),
(9, '2024-02-20 17:08:02', '2024-02-20 17:08:02', 'similique', 'Consequatur minima molestiae sint commodi accusamus ullam nihil. Fugiat quo iste minima quos similique. Excepturi impedit officiis nostrum similique.', 'Natus non sit adipisci enim quaerat. Cum recusandae debitis et quis rerum sit voluptatem molestiae. Architecto cumque sunt dolorem molestiae consectetur. Veritatis non asperiores non totam in.', 'Et numquam qui qui atque voluptate quisquam aut. Nihil qui est numquam qui voluptas enim. Fugit ut voluptatum quidem et quos. Est dolorem aut et quasi incidunt corporis dolores.', 'Consequatur fuga eligendi et nisi omnis rerum laborum aut. Officiis voluptas sit quis quod vero. Voluptate qui dolorem asperiores rerum.', 'Ut necessitatibus eaque animi id saepe numquam ipsum. Hic maxime sit est non. Aspernatur sapiente eos nihil dolor labore aliquid et harum.'),
(10, '2024-02-20 17:08:02', '2024-02-20 17:08:02', 'et', 'Iusto totam quisquam consequuntur labore sint. Voluptatum ut in accusantium nisi. Earum dolorum aut est suscipit qui at sed.', 'Autem sit commodi tempore. Dolorem possimus et nesciunt quia explicabo unde consequuntur. Aut possimus dolorum officiis voluptatibus ratione.', 'Optio occaecati exercitationem rem rerum id. Consequatur commodi officia autem saepe. Quo quidem aliquam saepe neque. Est laboriosam totam optio maxime autem et cum.', 'Accusamus ab et aspernatur et recusandae qui. Ut fugit recusandae reprehenderit. Sint harum veritatis voluptatibus nam. Officiis corrupti a voluptate magni.', 'Nam rerum necessitatibus saepe. In et rem dicta qui tempore. Sapiente dolorem quis animi ducimus. Porro voluptate modi sed rerum laboriosam qui.'),
(11, '2024-02-20 17:08:02', '2024-02-20 17:08:02', 'impedit', 'Est tempore sequi rem dolores deleniti. Consequatur necessitatibus nisi consequuntur commodi recusandae quis qui vitae. Impedit architecto omnis molestiae et voluptatem.', 'Eligendi officiis nam nobis voluptatibus eligendi neque officia ea. Rerum odio dicta labore ea eos itaque. Assumenda voluptas et earum impedit.', 'Sit animi sit expedita animi iste omnis animi minima. Excepturi ut dolor quia fuga delectus. Itaque nihil perspiciatis optio maxime.', 'Iste esse illo mollitia voluptas similique. Magnam natus facere voluptatum repudiandae possimus nemo harum.', 'Voluptates odio sed eligendi voluptatem velit esse quae vel. Pariatur blanditiis fugit consequatur aliquam. Sit temporibus dolores tempore aut reiciendis perspiciatis.'),
(12, '2024-02-20 17:08:02', '2024-02-20 17:08:02', 'odit', 'Sint dolor nobis ipsa id voluptatem. Unde impedit ullam ut repudiandae delectus dolorem eos molestias. Vero et error quaerat sunt.', 'Repudiandae ut est sequi ipsum atque. Nulla voluptates est consequatur dolorem quia cum. Consequatur molestias ducimus dolore inventore error autem nihil.', 'Omnis ut aut odio aliquam occaecati. Quis ea in expedita libero. Aut at ratione veritatis.', 'Provident voluptas voluptate sequi consectetur qui. Vitae nisi est architecto laborum dolorem. Corporis facere accusamus animi suscipit autem autem.', 'Facere doloremque harum aut ea. Adipisci explicabo ad veritatis iste. Maxime minus nesciunt facere aspernatur eaque consequatur. Optio nisi nobis facilis temporibus omnis.'),
(13, '2024-02-20 17:08:02', '2024-02-20 17:08:02', 'non', 'Ex facere porro perspiciatis occaecati recusandae exercitationem quidem. Quia saepe illo quo deleniti voluptatem consectetur. Est eveniet similique odit optio quas.', 'Dolorum eius earum consequatur voluptatum veniam. Odio eos voluptatibus non eum. Nemo quas qui dolor voluptatem ut molestiae esse.', 'Nam commodi ullam eos necessitatibus culpa sapiente. Maxime laborum aliquam consequatur et blanditiis. Ut quae ipsum eum alias aut tempora pariatur.', 'Nostrum quo repellat totam exercitationem ut. Iusto quis consectetur ut voluptas omnis fugiat nostrum. Blanditiis sed atque esse quibusdam. Praesentium quo molestiae quam voluptates non harum.', 'Eum sed non alias enim rerum vel. Exercitationem eligendi est optio et non molestiae laborum. Fugiat voluptatibus rerum ut et magni. Et eos minima quasi cumque.'),
(14, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'blanditiis', 'Vel nostrum aut ut. Dolore iste maiores ex. Rem qui omnis doloribus accusantium veniam. Perspiciatis doloribus numquam facere itaque nam dolorem.', 'Distinctio qui qui eum. Earum porro et nesciunt optio iusto minus magni. Ipsam vero magni exercitationem occaecati laborum magnam. Illum at qui placeat expedita nostrum ex quidem velit.', 'Eum sit omnis quia non voluptatem distinctio consectetur. Aut veritatis at ut nihil enim. Et voluptas sit architecto velit doloremque.', 'Rem error adipisci consequatur aut velit voluptatem. Non harum veritatis dolor dolorem. Nobis aut et modi quia sit voluptas quos. Ut laborum voluptas praesentium laudantium maiores occaecati enim.', 'Facere quo aut in similique necessitatibus atque. Eius modi provident blanditiis quis voluptatibus. Facilis enim sed voluptatem architecto. Et optio voluptatum corrupti repudiandae.'),
(15, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'optio', 'Ut ipsa iusto accusamus eius explicabo in nulla. Quia qui quam voluptates repellat deserunt nisi totam ut. Voluptas amet hic ut voluptatem non magni odit.', 'Ducimus suscipit ipsam eum magni consectetur. Reiciendis quo earum qui incidunt non. Quia non omnis harum doloribus. Vel tempore cupiditate doloremque voluptatibus voluptas alias.', 'Inventore culpa voluptatem et sapiente eos in. Nisi nihil nemo culpa doloremque magnam aut occaecati. Autem ipsum sequi commodi non odit. Et pariatur quidem iusto aut molestias.', 'Vel qui eos animi in dolor. Et hic dolore temporibus voluptate sint alias rem. Facere quia earum sed minus.', 'Sit dolor consequuntur voluptatem placeat voluptatem. Rerum placeat impedit quis et debitis officiis aut. Dicta quis esse vel voluptate repellat. Placeat qui at nam totam.'),
(16, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'accusantium', 'A omnis aspernatur eum delectus eius molestias. Sunt molestias consequatur dolore quae ex. Et vitae sint excepturi ut fugit quo. Ab soluta dolor dolor rerum ab impedit.', 'Et voluptatem autem odio voluptas ipsa quia dolor non. Nemo beatae dolorum dolor est. Nostrum sunt dolorem sunt reprehenderit nulla qui rerum. Optio aut inventore sed et inventore corporis.', 'Cupiditate dolor quasi nemo aut ut quis. Deleniti quia rerum ipsam in ipsa beatae. Occaecati consectetur ut nemo qui sint aut illo. Et esse eos eum consequatur. Est vel sit ut quis laboriosam autem.', 'Aspernatur tenetur saepe in. Rerum nihil quis perferendis. Voluptates iure nulla vero fuga enim rerum. Nostrum odit eligendi suscipit quos laborum. Eaque qui architecto molestiae ducimus.', 'Libero commodi ipsam odit minima sed sapiente accusamus optio. Non est qui expedita praesentium velit. Nihil dolore qui voluptatem quo distinctio fugit laborum.'),
(17, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'cupiditate', 'Voluptas necessitatibus aut provident ea consequuntur. Minus hic voluptatem pariatur nihil dignissimos rem maiores architecto. Animi eligendi non et tempora.', 'Dolor est et officia esse. Exercitationem dolore aliquid et accusamus autem doloremque et quos. Laudantium explicabo ex architecto facilis quae nam.', 'Ut dolorem voluptatem neque culpa. Est nisi deserunt amet quos. Voluptatem velit inventore praesentium eaque. Et amet mollitia rem in illo consectetur ex.', 'Distinctio nam repellendus eaque ad et quaerat quia. Sequi dicta repudiandae laborum cupiditate optio soluta. Voluptates quasi eius dolorum non earum quos numquam. Occaecati est ut inventore aut.', 'Soluta sint et nisi earum enim. Molestiae aut quia non sunt. Eos labore possimus vero ad est consequuntur nisi qui. Qui ut sunt recusandae ipsum commodi nemo est.'),
(18, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'eum', 'Eos sit consequatur nam doloremque quam modi. Quam ab tempora adipisci cum omnis odit ipsum. Labore voluptas ut dicta laborum unde quod repellendus. Ut magnam enim provident voluptatum totam ipsa.', 'Minus corporis minima aut alias aut vitae. Magnam sunt beatae earum. Fuga rerum sunt voluptatem quo. Dignissimos incidunt voluptate minus quos. Dolores quis provident voluptate.', 'Nam error consequatur illo. In accusamus fugit eaque illo rerum officia id qui. Ipsam quod velit nulla repellendus. Provident ipsum dolorem quis.', 'Totam amet dolores voluptate deleniti officiis quo. Voluptatem nulla culpa omnis aliquam. Consectetur sit cumque autem repellat et ea veniam sed.', 'In minus quam sed optio. Labore aut quidem exercitationem. Eligendi accusamus earum deleniti dolor voluptas. Numquam est sint voluptas eaque aut quae nostrum.'),
(19, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'voluptatem', 'Nobis commodi est sapiente aut tempore. Temporibus tempore ut repellat et. Non alias cumque veritatis. Quisquam accusamus fugiat atque sunt.', 'Officia est labore neque. Sapiente placeat quod dolores neque non voluptatibus ut. Itaque facilis incidunt aliquid animi ea non maiores. Voluptatem voluptatum culpa possimus quos.', 'Et quo illum repellendus aperiam ut consequatur laborum. Ab non quod quasi corrupti dolor. Iure ipsam beatae dolor. Quo praesentium ut dolorem.', 'Debitis eos odio est vel et eius est qui. Illum quia eos culpa atque mollitia eveniet. Consequatur a quo laboriosam earum iure neque velit. Inventore voluptate quod ad.', 'Voluptas earum iusto omnis perferendis. Pariatur qui ea quia nostrum et. Commodi quasi assumenda perferendis officia. Et tenetur sunt sit veniam distinctio ad.'),
(20, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'accusantium', 'Sit natus praesentium nihil accusantium at non officiis. Nulla ratione minima eveniet odio esse. Omnis laboriosam quo reiciendis quia vero id vitae illum. Et mollitia vel aliquid incidunt.', 'Qui ut nihil cumque sunt. Est pariatur blanditiis accusantium deserunt sit ullam similique eum.', 'Cupiditate earum eius molestias. Eveniet ducimus in quo voluptates ab accusantium.', 'Voluptas dolor quasi est rem. Itaque temporibus consequatur non corporis. Distinctio et atque aliquam sint quas sed.', 'Sint ea iure magnam. Eius numquam ut voluptatem. Quos minima tempora porro vel dolor libero a porro. Saepe numquam nihil error. Voluptates laborum repudiandae maiores ut et earum ipsum.'),
(21, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'vel', 'Alias praesentium iste minus quibusdam et rerum qui modi. Voluptates et nesciunt eligendi nesciunt exercitationem. Eos ducimus aut sint voluptatum esse maiores.', 'Autem rerum incidunt esse debitis earum praesentium cumque. Inventore ut iste illo suscipit ea aut quidem. Debitis soluta laborum inventore nostrum. Asperiores nihil consequatur et quia.', 'Est reiciendis dolor ut inventore. Repudiandae ab impedit qui a commodi nemo ratione quo. Dolore qui odio consequatur ipsa. Eius doloremque quia nostrum rerum.', 'Repellat maxime aut voluptate id rerum quia. Aut voluptas repellendus exercitationem. Ut porro sit ullam aut occaecati. Aut inventore expedita ex saepe ut.', 'Iure temporibus et eos in. Voluptatibus et atque ut in explicabo amet at aut. Rerum dolor illo sit occaecati nisi consequuntur eos. Quia modi est voluptatem nam.'),
(22, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'nam', 'Impedit ut autem et molestias maiores et. Cupiditate voluptate totam et. Officia nostrum neque magnam placeat ea quia laborum voluptas.', 'Libero tempore ipsa est a temporibus ea totam maiores. Repellat voluptatem et quia ab. Omnis rerum itaque velit recusandae est deserunt eos. Harum deserunt temporibus quod error.', 'Earum eius repellendus recusandae eius similique fugiat est. Expedita quo temporibus voluptatem. Facilis ratione aut in culpa deleniti voluptatum qui possimus.', 'Minus error aut error et tempore cum voluptas quia. Dolor ducimus eum voluptatem aut officia officiis nam. Deleniti architecto soluta dolores ratione et facere ea. Sed est qui et vitae.', 'Ut repellendus vero repellendus eos neque. Qui ab ad sit dignissimos. Rem dicta facilis a optio ut fugit deserunt. Ut minus molestiae vel.'),
(23, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'exercitationem', 'Quod impedit quia sequi adipisci autem similique commodi. Distinctio est a et. Dignissimos blanditiis quisquam dolore et officia et.', 'Itaque quia expedita sequi beatae a quae. Autem magnam repellendus consequatur quam quas ullam. Ut et reiciendis corrupti ad voluptas. Facere et ea optio nisi suscipit.', 'Minima incidunt qui consequatur minus consequatur sequi quidem culpa. Ab dolorem esse delectus qui. Aut debitis et illum sapiente quis aut.', 'Error quaerat nihil est aut laborum quis recusandae. Aut est quo nobis est qui quis. Quos expedita illum id molestiae.', 'Qui et sit tempore sed eaque. Blanditiis ab dolorem quibusdam fuga. Eum sed nihil consectetur magni.'),
(24, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'iusto', 'Nulla distinctio nobis ipsam. Eaque accusantium est sit totam est officia. Accusamus tenetur sed quibusdam rerum distinctio. Rerum nemo voluptatum error necessitatibus earum inventore.', 'Illo non sit hic fugit laudantium nostrum. Aut illo velit quia et. Officiis ut culpa veritatis et. Veritatis quia officiis quos consequatur harum ut qui.', 'Odit ea error et consequatur. Quibusdam nobis ipsum vel ex et. Minima saepe eum tenetur rem. Est voluptate iure explicabo ea sint est reiciendis.', 'Ab velit optio eos minus autem rerum dignissimos. Qui explicabo voluptatem aut dignissimos magni aut sed. Itaque rerum nesciunt ullam et.', 'Exercitationem nisi voluptas suscipit quo rerum aut laborum. Sapiente reprehenderit accusantium inventore labore maiores soluta eligendi. Ipsum nesciunt aut pariatur iusto voluptatem iusto ut.'),
(25, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'est', 'Qui quisquam ullam itaque quo et voluptatem. Qui est distinctio non facilis. Molestiae dolor voluptatem sapiente eaque dolores.', 'Voluptas non dolorum voluptates voluptates quae aut. In ea nostrum est ut cum quam eveniet. Corrupti perspiciatis labore ratione molestias quam eligendi.', 'Aspernatur doloribus deleniti aut. Similique officia ipsam delectus temporibus est autem ut. Quam officia autem omnis dolores vitae voluptatibus. Vel doloribus voluptatum nobis est.', 'Expedita est eveniet tempore dolor saepe temporibus ipsa neque. Dolorem esse ipsum et sit quia ut voluptatem. Et sit in perspiciatis praesentium repellat et non culpa.', 'Consectetur voluptas amet enim quo quisquam ab sint at. Similique labore qui quis facere repellendus. Aspernatur consequatur et recusandae aut et veniam ratione.'),
(26, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'dolorem', 'Possimus sunt cum sed eum. Occaecati ut ullam illo aperiam sint. Dolores qui animi pariatur dolorem temporibus dolorum fuga nemo. Iste molestias sapiente aperiam dolore maiores quasi.', 'Ad quis quidem corporis quo. Optio sit numquam dolores aut. Quae eaque quos eveniet molestiae modi quisquam. Tenetur nulla consectetur molestias nemo voluptas ab.', 'Blanditiis sed magni deserunt. Provident dicta similique aut dolores rerum est ut. Maiores quasi dignissimos ut et qui accusantium et.', 'Dicta quam sit eum illum omnis commodi. Et aliquam recusandae est corrupti suscipit quaerat vel et. Aut nihil deserunt fugiat nam nam. Quis perferendis ut voluptatem vel aut.', 'Tenetur neque vero et asperiores cupiditate. Dolor quae repellat est blanditiis voluptatem. Vitae illum ex ut dolor sint. Nulla incidunt quasi cupiditate delectus a tenetur placeat consequuntur.'),
(27, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'doloribus', 'At omnis quis tenetur repellendus. Sit est omnis architecto in distinctio et explicabo. Occaecati ut vero voluptas doloribus. Reprehenderit in et nesciunt ullam sapiente dolor.', 'Eos molestias in sint tenetur. Modi id veritatis nihil enim cum animi ab. Et laboriosam et saepe tempora velit omnis corrupti aut. Pariatur id aut autem sunt eligendi aspernatur.', 'Est magni aut sed fugiat. Pariatur quod ducimus delectus ipsum. Hic debitis deleniti esse totam suscipit pariatur consequatur.', 'Eum repudiandae deleniti quia tempora sapiente est incidunt. Consequatur et rerum accusamus. Culpa dicta ut rerum nisi. In laudantium sit quas.', 'Nihil voluptas quidem eaque temporibus libero. Non qui quia commodi. Natus doloremque corrupti odit nostrum. Sed minus non ad.'),
(28, '2024-02-20 17:08:03', '2024-02-20 17:08:03', 'repellat', 'Doloremque optio velit blanditiis. Reprehenderit amet exercitationem consectetur saepe fugit est dolores. Rerum minus consequatur quo fugiat repudiandae. Mollitia consectetur repellat non.', 'Qui expedita dolor ex magnam quia. Optio velit ipsam et autem impedit dolorum. Quam minima eum voluptas esse recusandae et dolorem eligendi. Aut aliquid architecto magni ut.', 'Facere quam voluptatibus ipsum quae provident quia. Voluptatem alias ab est modi blanditiis quas ut. Qui autem perferendis magnam non dolor.', 'Sed et neque est labore sint facere consequatur. Quidem iusto nihil et delectus ea nihil quas. Mollitia aut alias voluptas laboriosam sed. A officia dolor dolores quasi et est unde.', 'Sint odio assumenda et sed cumque sint. Ea ut dolore voluptas debitis nam et aut placeat. Voluptates ducimus quas eius.'),
(29, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'ea', 'Natus adipisci enim assumenda id eligendi. Repellat nulla iure veritatis.', 'Alias nihil magnam qui nisi cumque occaecati. Consequuntur numquam nulla culpa corporis. Enim sapiente eligendi sint vel unde quisquam non.', 'Tempore nostrum cum consequatur saepe aut nesciunt. Ducimus modi commodi ut eum.', 'Sed similique reiciendis quidem illo cupiditate ut. Porro consequatur dolore voluptatem est accusantium ut corporis fugit. Sunt eos beatae ut. Saepe distinctio nam qui.', 'Est eos quaerat non quia dolores omnis. Maxime tenetur quasi recusandae eos tempora. Doloribus vel aut quod non tempora maxime ut aliquam. Qui iure atque ipsa.'),
(30, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'at', 'Earum consectetur qui corporis consectetur ut dolores. Nihil incidunt qui voluptatem unde voluptatem occaecati reiciendis. Quia quod molestiae aut possimus reiciendis.', 'Dolore dolore ut consequatur facilis excepturi consequatur vero esse. Et aperiam et reprehenderit assumenda dolorem non. Amet dolor molestiae ipsum et. Possimus ad aut sed consequatur quibusdam.', 'Nemo ad et eos ratione quis velit. Nobis esse et fugit assumenda. Praesentium ex magnam nisi fugit aliquid et officia debitis. Ipsum quia autem eos.', 'Iusto et dicta debitis temporibus soluta et. Omnis sint culpa occaecati aspernatur tenetur dolorem. Ex ipsam eaque excepturi. Facere unde ab qui esse qui quasi beatae est.', 'Praesentium non voluptatem esse ea nesciunt velit occaecati. Nam quam voluptates et labore sint aut. Quas exercitationem eos quia qui sunt.'),
(31, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'sint', 'Qui distinctio incidunt ex doloribus saepe. Et accusamus et molestiae explicabo. Dolor consectetur quia saepe nesciunt eveniet quis culpa. Incidunt ut dolor mollitia recusandae error fugit.', 'Inventore libero perferendis dolorem quia porro. Architecto tempora minus recusandae hic. Non officia unde quia eum itaque.', 'Aut molestias optio nobis et. Sint dolorem quaerat quae. Dicta accusantium consequatur iste harum.', 'Sit autem mollitia voluptatem quis ipsa nam. Eum assumenda corrupti laborum est dolores. Atque autem culpa amet iste quia earum.', 'Et et necessitatibus esse voluptatem iure. Non fuga unde dolorem. Eveniet incidunt et quam omnis. Animi temporibus voluptatem sint veniam placeat.'),
(32, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'non', 'Est qui veritatis eius porro. Odit inventore eos et dolorem veniam expedita qui est.', 'Sit voluptas corporis asperiores natus ut et. Harum possimus voluptatem consequuntur ut id qui. Nam molestiae perferendis veritatis repudiandae quia.', 'Iure dolore corrupti omnis. Quisquam asperiores et provident architecto dolor facilis. Ea accusamus iusto molestiae laborum ut deserunt. Voluptatem quasi dolorem ut non et possimus.', 'Qui maiores tempora dicta et culpa voluptas. Praesentium et nam voluptas ad optio. Minus est et quae omnis distinctio ut dolor ipsam.', 'Nostrum neque voluptas aspernatur sunt. Ex eum et et. Error eius nesciunt sit et. Doloribus laboriosam ab ea aliquid quis porro.'),
(33, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'et', 'Quia et fugit iste quis impedit. Quo magni esse non eveniet eum incidunt. Mollitia vel qui magni amet.', 'Omnis modi mollitia quia et odio. Minus doloribus fugit soluta sed. Ut commodi ullam autem et voluptates a.', 'Explicabo ea dolor animi ut. Omnis quo alias nobis ipsum sed enim. Qui magnam temporibus ut deserunt sint. Voluptatem aut sit voluptas consequuntur non.', 'Explicabo maxime sed vel sed harum laudantium molestiae architecto. In deleniti sed mollitia et dolores.', 'Asperiores cupiditate aut ea rerum dolorem. Similique accusantium qui ut hic. Id ipsum in consequatur nemo mollitia totam. Beatae nemo natus qui nostrum sint quidem corporis.'),
(34, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'eius', 'Quo porro asperiores sint nisi et autem. Doloribus facere exercitationem et rerum. Et quos quibusdam sequi ut enim odit inventore.', 'Quia quo aspernatur voluptatum ducimus iusto. Sed cumque odio voluptate voluptatibus consequatur ut.', 'Qui inventore sint omnis. Autem voluptatum beatae et et. Accusantium perferendis accusantium earum et voluptatum molestiae.', 'Praesentium quia iste quibusdam mollitia dolores. Ut aperiam repudiandae fugiat et dolor expedita porro. Aut mollitia aut quo distinctio nisi quidem. Quo et ut sit velit ducimus placeat.', 'Eligendi nesciunt fugit commodi perferendis beatae. Voluptatum delectus eos voluptas. Consequatur sunt minima consequatur id aut excepturi. Necessitatibus deleniti repudiandae est sit.'),
(35, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'omnis', 'Hic incidunt est error occaecati neque. Voluptatum modi neque enim officia qui ex omnis. Aut id non qui sit. Asperiores sint nemo quibusdam sunt quia.', 'Consequatur odit labore commodi culpa eveniet hic sit quia. Omnis fuga cumque eos. Consequatur voluptate modi omnis illo. Quisquam corporis id laboriosam et molestiae.', 'Sequi et eum magnam ut. Sapiente ut dolorem aut vel. Aut non laudantium iste voluptatem veritatis fugit quo.', 'Laudantium provident inventore corrupti voluptas ducimus aliquid rerum. Officia et at aut libero et ut. Ipsum quidem quo numquam. Eius quo vel quis neque ut.', 'Molestias dolorem quibusdam quaerat. Aperiam sint doloremque et voluptate. Ab eum voluptas impedit nisi.'),
(36, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'et', 'Sunt architecto quo ut. Et nulla aspernatur pariatur et id. Recusandae facere voluptas nemo asperiores consectetur magni. Odio perspiciatis qui iste non dolore.', 'Suscipit labore doloremque molestias perferendis. Ullam id unde nesciunt voluptas nihil illo qui. Itaque ut sint recusandae.', 'Ratione minima dolores qui hic quasi. Assumenda velit rerum ea quia unde. Explicabo ut et voluptas eveniet laboriosam. Temporibus veniam accusantium placeat expedita molestiae.', 'Sunt impedit velit soluta non perferendis. Odit sit temporibus illum dignissimos.', 'Ad et et ullam nisi. Similique sit doloribus commodi ipsa. Ea temporibus aut dolorem earum ipsam. Eveniet nostrum ullam omnis occaecati eum consectetur.'),
(37, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'ea', 'Quo blanditiis nihil quos. Omnis numquam et sapiente voluptatum ab necessitatibus. Natus delectus et placeat aut. Quibusdam et consequatur ullam tenetur officia.', 'Et quaerat quo nemo delectus velit. Nostrum aut nobis vitae molestiae non. Quis dolor et voluptatem incidunt.', 'Sequi dignissimos eveniet ex est dignissimos consequatur. Quia nihil et qui possimus qui. Ea sit vero amet assumenda sed. Corrupti fugit pariatur rerum veniam dicta aperiam non. Aut quia eos enim.', 'Occaecati ducimus vel enim sed. Veritatis voluptate velit delectus et. Placeat aperiam amet est odio dolor iure delectus. Quas autem mollitia mollitia ipsa reiciendis et et.', 'Maiores explicabo commodi aut numquam dicta. Non deleniti quas occaecati sit maiores eligendi. Eum nisi ut est dolore explicabo quo.'),
(38, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'eligendi', 'Dolor rerum sint quis repudiandae a rerum. Dolor hic debitis quos quia doloribus rerum. Velit libero minus asperiores deleniti repellat illo.', 'Ut quas rerum aperiam sint quidem iste. Et maxime quos et ad quod. Provident repellat tempore rerum. Aliquid assumenda molestias ducimus in itaque. Optio sit mollitia consequatur earum earum.', 'Qui et deleniti quam praesentium. Ea eum atque voluptates animi. Cupiditate vero eius vero distinctio. Tempora blanditiis placeat et non sit. Libero ullam dignissimos nihil id et.', 'Quis accusamus voluptas vel cupiditate laudantium quos. A iste incidunt aut amet deserunt quas neque. Modi nisi voluptatem sint tempore.', 'Sunt illum inventore enim doloribus voluptatum possimus officia tempore. Non enim ad minima porro iure vero qui. Voluptatem ex magnam necessitatibus id. Voluptate earum id debitis.'),
(39, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'aliquid', 'Et aperiam enim aliquam. Et ut vel voluptas voluptatem ut delectus. Officiis dolorum sint et eos. Aliquid quo provident quae perspiciatis et asperiores vitae.', 'Sed eos aut itaque iste error. Possimus quaerat aut sapiente voluptatibus dolorem consequatur quas. Debitis officia ut aut soluta dolorem doloribus unde.', 'Omnis tenetur recusandae nihil soluta debitis. Eaque eum pariatur molestiae eos sed sit. Eligendi ea velit ipsum est dolor est labore.', 'Iste dolorum possimus corrupti fugiat animi iste in laboriosam. Eius suscipit quas dignissimos temporibus. Earum ut voluptates dolorum ipsum ea est molestiae.', 'Eum voluptas rem hic explicabo. Ut inventore quae blanditiis sunt vel. Laborum sed autem placeat.'),
(40, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'eaque', 'Harum earum nesciunt placeat est a. Et corrupti id error enim ut debitis dolor temporibus. Nemo modi delectus iste occaecati aut architecto saepe.', 'Vitae non repudiandae velit accusamus dignissimos autem voluptatibus doloremque. Sunt quam voluptatem voluptatibus pariatur sit. Accusamus amet nihil sed quaerat accusamus dolores autem qui.', 'Dignissimos molestiae id quis qui voluptates. Eum sapiente reiciendis dicta recusandae.', 'Maiores earum eveniet libero repellat quas nesciunt quibusdam est. Culpa iure quia facere nemo voluptas. Facere debitis possimus quae beatae eum officia ut dolorum.', 'Sed id occaecati ut laborum natus voluptatum. Non qui sit natus sunt culpa. Reprehenderit repellendus quo consequatur inventore suscipit. Id deserunt minus consequatur voluptas quae iure repellat.'),
(41, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'voluptas', 'Harum iure optio eum nihil. In dolorem velit earum dolore qui magni quam blanditiis. Voluptas rerum harum omnis illum est quis. Expedita nesciunt et at voluptate pariatur sit facere.', 'Quia aspernatur aut nihil quasi est eveniet. Sint et harum dolore eum molestiae et. Aut quo repellendus pariatur et consequuntur quibusdam. Voluptates aut corrupti corporis et.', 'Delectus quis odio fuga fugit perferendis nihil. Est aut corrupti aut quos dolor et optio. Et maxime culpa unde. Nesciunt assumenda asperiores et provident optio in.', 'Eos ut nulla est natus repellat magnam nihil. Eveniet aut fugiat iste voluptatem ipsam. Id placeat in at molestias labore consequuntur. Debitis nisi dolor natus corporis nobis.', 'Esse aut et aut aut magnam. Dolor dicta ut vitae. Ut ut iusto labore. Qui voluptas molestias maxime voluptatem fuga.'),
(42, '2024-02-20 17:08:04', '2024-02-20 17:08:04', 'veritatis', 'Id eveniet et unde expedita enim culpa sunt. Dolores accusantium corporis modi repellendus eum culpa illum qui. Sunt ab et rerum mollitia.', 'Soluta exercitationem sit laborum quas omnis. Blanditiis a voluptatem culpa dolor voluptate est voluptatum. Rerum amet rem beatae distinctio fugit. Assumenda inventore ducimus consectetur illo.', 'Dolores molestiae aliquid illum sit quas. Quisquam autem fugit hic qui. Et et blanditiis explicabo molestiae magnam vero dolor doloribus. Dolores sequi amet veritatis magnam facilis.', 'Et quaerat vero quia et dolores. Qui suscipit sit illo qui dolores quibusdam labore veniam. Est aut repudiandae minus rem id ut deserunt.', 'Voluptatem non quos sit dignissimos. Qui quia quo commodi. Possimus quibusdam quae rerum.'),
(43, '2024-02-20 17:08:05', '2024-02-20 17:08:05', 'dolor', 'Nostrum illo veniam rerum repudiandae dolorum ut doloribus. Eveniet nulla delectus aut ut. Aperiam architecto nihil sit dolores quidem eum ut. Iste vel cum reiciendis dolor explicabo eum itaque.', 'Laudantium et repellat vitae autem dolorem. Expedita recusandae amet laudantium incidunt rem consequatur fuga. Suscipit nobis deleniti ducimus laudantium. Sed voluptatem autem illo id.', 'Consequatur temporibus ut autem et optio est perferendis. Eum ab velit tempore dolor. Quaerat nostrum ipsa quam enim autem sint quia. Dolore sed ratione quia consequuntur sit a tenetur.', 'Rerum et fugit quasi praesentium autem qui. Ducimus cupiditate ut architecto quia aut est et qui. Voluptates velit odit cumque enim sunt ea.', 'Qui dolor illo optio vel. Consequuntur dolor exercitationem sed eos. Enim repudiandae voluptate reprehenderit dolor sed accusantium architecto. Porro voluptas sint autem ut.'),
(44, '2024-02-20 17:08:05', '2024-02-20 17:08:05', 'et', 'Magni autem labore nesciunt assumenda nostrum id. Iusto asperiores eum deleniti tempore explicabo aut. Quas et quibusdam nihil error explicabo in. Nesciunt ipsam veniam repellendus veritatis.', 'Ut omnis ab nulla enim recusandae quasi. Laboriosam ea corporis eligendi pariatur qui est architecto minus. Harum voluptas atque odit et ratione omnis dolor.', 'Asperiores magni aut explicabo nihil. Repellat sit delectus optio aliquid a suscipit. A nostrum aut veritatis quos et voluptate est exercitationem. Alias sit vel quis et ut non voluptatem.', 'Dolorum voluptate voluptas occaecati. Voluptatem atque repellendus odit voluptates maxime ea sunt. Esse quod ducimus numquam et.', 'Veniam dignissimos voluptatem quibusdam. Facilis aut sit voluptatum veniam. Quibusdam et et nisi ratione impedit optio.'),
(45, '2024-02-20 17:08:05', '2024-02-20 17:08:05', 'consequatur', 'Et voluptas molestiae nisi officiis. Dignissimos veniam ab consectetur velit veniam.', 'Sint beatae vitae et quasi maxime dignissimos. Repudiandae sunt dolor ipsam facere. Et et vero iure dolor dignissimos temporibus.', 'A nulla est suscipit voluptatem nemo tenetur molestiae. Facilis voluptatem dolores quia quo temporibus. Cupiditate qui ut fugiat.', 'Possimus aut tempora est soluta saepe. Rerum labore nostrum laboriosam id amet. Id iusto ad a enim at eaque. Officiis incidunt aut tenetur est. Tempore omnis tempora voluptatem.', 'Molestiae sunt error minus nulla tempore. Fuga dolor omnis quis est. Beatae temporibus ab id ipsum aut eveniet aut voluptatem.'),
(46, '2024-02-20 17:08:05', '2024-02-20 17:08:05', 'voluptates', 'Illum amet non voluptas non quae. Eum aut placeat assumenda quia excepturi at. Delectus quibusdam fugit repudiandae.', 'Magni numquam mollitia neque aut. Et aut fugiat nostrum autem esse quae. Sit animi et doloremque veniam ullam et et cupiditate.', 'Adipisci numquam et non sint. Veritatis sint aut qui nulla fuga. Harum dolor vitae at corrupti dolores quae. Nobis temporibus et explicabo amet est aut ducimus modi.', 'Quam sunt aut placeat quibusdam et exercitationem sed. Perferendis expedita est quos magni officiis animi. In provident et reiciendis sed accusamus hic qui. Amet occaecati placeat aut fuga.', 'Sunt ipsa eos voluptas voluptatem consequuntur quo est. Fugiat provident accusantium dolorem eius ipsam. Eos non ut et velit excepturi.'),
(47, '2024-02-20 17:08:05', '2024-02-20 17:08:05', 'laboriosam', 'Sed dolorem illum pariatur quia reiciendis velit nihil. Blanditiis laborum quo explicabo sint veritatis quasi. Exercitationem eum occaecati rerum odit aut pariatur. Quia ad consectetur id nihil eum.', 'Ut quis vero assumenda inventore nemo dolores cupiditate. Sunt aut ex saepe ut voluptas. Omnis commodi soluta adipisci sit. Vel cumque dolorem fugit itaque est ut.', 'Aliquam ut quidem beatae consequuntur. Ad suscipit quia illum molestiae voluptatem consequatur. Velit voluptas odit aut repellat voluptatem sit.', 'Voluptatibus voluptatem asperiores maiores voluptas dicta voluptate qui tempora. Nostrum similique qui quia. Ut sed vero qui facere.', 'Suscipit qui illum et non. Sint suscipit voluptates atque qui nobis quis non. Dolores et error praesentium quo voluptates mollitia molestias.'),
(48, '2024-02-20 17:08:05', '2024-02-20 17:08:05', 'quasi', 'Voluptas dolorum necessitatibus saepe animi sequi qui laudantium. Quas reprehenderit sunt labore est similique est vero.', 'Omnis omnis ea totam ad quis provident qui. Inventore facere sed qui aut. Amet hic deserunt amet.', 'Optio et error consequuntur autem. Aut praesentium ullam perferendis molestiae vero. Minima est placeat ipsam vitae voluptatem eius quibusdam.', 'Praesentium assumenda hic dolorum. Quisquam suscipit voluptatem beatae expedita. Rerum tempore tempore voluptates aut officiis voluptatem. Ullam itaque ex id aliquam fugiat amet nobis.', 'Nemo possimus iure nihil saepe laboriosam et. Earum consequatur nemo natus atque tempore quam hic. Nostrum voluptatum omnis iure doloribus qui est.'),
(49, '2024-02-20 17:08:05', '2024-02-20 17:08:05', 'temporibus', 'Maiores molestiae nisi at nisi corrupti tempore quis. Exercitationem blanditiis enim deleniti quia molestiae ratione. Reiciendis qui consectetur et labore. Magni consectetur quasi culpa voluptate.', 'Voluptatum nulla qui corporis dolorem aliquam. Eius veniam suscipit delectus dolores numquam quia.', 'Vitae iure natus repellendus quaerat enim molestias totam. Sunt voluptate et molestias enim illo libero optio. Velit enim sed et qui. Ullam praesentium et porro.', 'Error dolores provident saepe velit commodi eveniet consequuntur et. Odio excepturi minima a dolores reprehenderit vel sed. Excepturi eum sed non quis nostrum qui.', 'Ea dolorem repellendus molestias repellendus perspiciatis est est doloremque. Rem in exercitationem velit nemo. Consequatur esse eum harum odit aut incidunt officia omnis.'),
(50, '2024-02-20 17:08:05', '2024-02-20 17:08:05', 'eos', 'Autem ratione voluptatem voluptatem magnam adipisci cum hic qui. Natus tempore aut ut ut doloribus quo incidunt. Eius ut quo rerum nam voluptas repellendus.', 'Temporibus omnis fugit et adipisci et et dolorem. Dolores earum fuga ad et. Qui omnis labore perferendis molestiae recusandae enim. Esse corrupti et iste omnis nostrum.', 'Vel similique perspiciatis recusandae omnis molestiae vero. Exercitationem exercitationem voluptatem facere temporibus. Alias at amet enim delectus.', 'Odit minus sed cumque natus qui dolores explicabo. Ullam commodi repellat molestiae quis. Aut quo non assumenda.', 'Odit sapiente facere voluptatem consequatur. Aut ex voluptatem dolor nihil rerum consequatur. Nihil laboriosam cum in quas.'),
(51, '2024-02-20 17:08:05', '2024-02-20 17:08:05', 'est', 'Rerum et adipisci iure. Magnam suscipit mollitia est porro aperiam qui repellat modi. Sed et vel ut nisi iure ipsa eos.', 'Ullam voluptatum quae unde mollitia nesciunt minima rerum. Occaecati eum aut ab ipsum maxime. Sunt odit quis nam. Accusantium fuga quia non et.', 'Veritatis consequatur quae quasi aut illo sit. Quisquam amet perspiciatis quos porro inventore. Temporibus quia placeat repudiandae odit corporis impedit.', 'Facere rerum unde omnis est nostrum nostrum quod dolore. Qui veniam consequatur vel voluptatem fuga repellat. Commodi in impedit eveniet aliquam sequi modi natus.', 'Incidunt dolorum aliquam in est incidunt. Dolores repellat temporibus animi qui possimus. Quos excepturi placeat distinctio animi voluptas et. Placeat ducimus facere provident vel laudantium.'),
(52, '2024-02-20 17:08:05', '2024-02-20 17:08:05', 'velit', 'Sit doloribus expedita nemo ducimus autem. Ut autem iusto consequatur odio sed esse. Quod eveniet minima id fuga est. Suscipit rerum doloribus et deserunt voluptatum.', 'Cupiditate voluptas unde consequatur. Ad dolorem accusantium aliquid sed ea.', 'Sapiente voluptatem omnis qui suscipit voluptatem nihil. Quidem laborum tenetur aut eos. Quasi aliquid et tenetur veniam laborum nostrum quos. Assumenda animi molestiae vel ad.', 'Ut aut dolore aspernatur asperiores expedita amet. Nihil velit qui doloremque iure quam fugiat et. Unde aut earum corporis culpa et. Voluptas temporibus unde excepturi quas et vel beatae autem.', 'Totam minima temporibus sit eligendi. Velit minus amet saepe minima natus quia tenetur. Soluta nihil sit maiores natus ad sit mollitia qui. Maiores qui libero labore voluptatem.'),
(53, '2024-02-20 17:08:05', '2024-02-20 17:08:05', 'ut', 'Atque exercitationem at dolor ut. Minima velit occaecati iste quos ab. Perferendis harum quo et possimus beatae.', 'Ipsa excepturi ea sit veniam maiores culpa. Deleniti dolor omnis impedit similique.', 'Alias eligendi eos perspiciatis ratione sit qui. Possimus et harum quo similique quam. Dolores id numquam est pariatur quis et. Odit ex hic sit molestiae officiis.', 'Ipsa voluptatibus porro aliquam nisi quidem porro. Ab qui mollitia et aut perspiciatis maxime. Id nemo rerum perferendis consequatur nesciunt sit. Quis voluptatem voluptate ab aspernatur.', 'Est reprehenderit dolor enim. Et et quae sunt nisi doloribus. Quas ducimus numquam et ea reiciendis consequatur voluptatem. Ab exercitationem aut aliquam sed.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sheila Ortiz', 'brenna37@example.net', '2024-02-24 14:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N6JOND1hR0', '2024-02-24 14:10:03', '2024-02-24 14:10:03'),
(2, 'Green Mertz', 'alessandro.kertzmann@example.com', '2024-02-24 14:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eZAVEjAl3B', '2024-02-24 14:10:03', '2024-02-24 14:10:03'),
(3, 'Thomas Block Sr.', 'moen.esther@example.net', '2024-02-24 14:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g5pzPggS4H', '2024-02-24 14:10:04', '2024-02-24 14:10:04'),
(4, 'Alvah Wilderman DDS', 'mbuckridge@example.org', '2024-02-24 14:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HZ8pWJAMQ5', '2024-02-24 14:10:04', '2024-02-24 14:10:04'),
(5, 'Mr. Deron Williamson', 'elisha44@example.org', '2024-02-24 14:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uT1eChju2w', '2024-02-24 14:10:04', '2024-02-24 14:10:04'),
(6, 'Ted Dach', 'araceli.hoeger@example.org', '2024-02-24 14:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VIjLLohzRq', '2024-02-24 14:10:04', '2024-02-24 14:10:04'),
(7, 'Dr. Francesco Reinger', 'marilyne14@example.com', '2024-02-24 14:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MMJT9x2vn2', '2024-02-24 14:10:04', '2024-02-24 14:10:04'),
(8, 'Bo Lesch', 'kamron53@example.org', '2024-02-24 14:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HCPMPuCD56', '2024-02-24 14:10:04', '2024-02-24 14:10:04'),
(9, 'Dennis Jerde', 'edmund.hauck@example.org', '2024-02-24 14:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SNi1eFbLLd', '2024-02-24 14:10:04', '2024-02-24 14:10:04'),
(10, 'Johnpaul Morar', 'ford.franecki@example.com', '2024-02-24 14:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B8rCngGzEN', '2024-02-24 14:10:04', '2024-02-24 14:10:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
