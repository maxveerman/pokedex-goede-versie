-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 24 mrt 2017 om 11:37
-- Serverversie: 10.1.10-MariaDB
-- PHP-versie: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokedex`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `badges`
--

CREATE TABLE `badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `badges`
--

INSERT INTO `badges` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Boulder Badge', '2016-05-14 12:22:23', '2016-05-14 12:22:23');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_03_22_132007_create_pokemons_table', 1),
('2016_03_23_131628_add_description_to_pokemons_table', 2),
('2016_03_24_093004_add_caught_to_pokemons', 3),
('2016_03_24_094312_create_routes_table', 4),
('2016_03_24_133125_add_route_to_pokemons', 5),
('2016_03_24_134406_Types', 6),
('2016_03_26_160827_add_types_to_pokemons', 7),
('2016_05_14_121958_create_badges_table', 8),
('2016_05_20_191047_create_rss_feeds', 9),
('2016_05_23_183246_add_slides_to_rss', 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pokemons`
--

CREATE TABLE `pokemons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type1` int(11) NOT NULL,
  `type2` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `caught` int(1) NOT NULL,
  `route` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `pokemons`
--

INSERT INTO `pokemons` (`id`, `name`, `type1`, `type2`, `description`, `caught`, `route`, `created_at`, `updated_at`) VALUES
(1, 'Bulbasaur', 5, 8, 'Bulbasaur is a small, quadruped Pokémon that has green to bluish-green skin with darker green patches. It has red eyes with white pupils and pointed, ear-like structures on top of its head. Its snout is short and blunt, and it has a wide mouth. A pair of small, pointed teeth are visible in the upper jaw when its mouth is open. Each of its thick legs ends with three sharp claws. On its back is a green plant bulb, which is grown from a seed planted there at birth. The bulb provides it with energy through photosynthesis as well as from the nutrient-rich seeds contained within.\r\n\r\nAs mentioned in the anime, starter Pokémon are raised by Breeders to be distributed to new Trainers. Having been domesticated from birth, Bulbasaur is regarded as both a rare and well-behaved Pokémon. It is known to be extremely loyal, even after long-term abandonment. Bulbasaur has also shown itself to be an excellent caretaker, even having a special technique called the "Bulba-by." To perform this technique, Bulbasaur uses its vines to pick up a young Pokémon and soothingly rocks the young one in the air.\r\n\r\nIt is found in grasslands and forests throughout the Kanto region. However, due to Bulbasaur''s status as starter Pokémon, it is hard to come by in the wild and generally found under the ownership of a Trainer. It has been observed that a Bulbasaur''s bulb will flash blue when it is ready to evolve. If it does not want to evolve, it struggles to resist the transformation. Many Bulbasaur gather every year in a hidden garden in Kanto to become Ivysaur in a ceremony led by a Venusaur. ', 1, 7, '2016-05-08 13:34:48', '2016-05-17 06:19:32'),
(2, 'Ivysaur', 8, 5, 'Ivysaur is a quadruped Pokémon similar to a dinosaur. It has blue-green skin with darker patches. On top of its head are pointed ears with black inside, and it has narrow red to purple eyes. It has a short, rounded snout with a wide mouth. Two pointed teeth protrude from its upper jaw. Each of its feet have three claws on them. The bulb on its back has bloomed into a large pink bud. A short brown trunk surrounded by leafy green fronds supports the bud. The weight of the plant prevents Ivysaur from standing on its hind legs and forces its legs to grow sturdy. When its flower is ready to bloom, it gives off a distinct, strong sweet-smelling aroma and starts swelling. Ivysaur will also start spending more time in sunlight in preparation for its upcoming evolution. Exposure to sunlight adds to the strength of both Ivysaur and its plant. Ivysaur''s natural habitat is plains. However, it is rare, as many are in captivity.', 0, 0, '2016-05-08 13:51:58', '2016-05-11 10:21:22'),
(3, 'Venasaur', 5, 8, 'Venusaur is a squat, quadruped Pokémon with bumpy, bluish green skin. It has small, circular red eyes, a short, blunt snout, and a wide mouth with two pointed teeth in the upper jaw and four in the lower jaw. On top of its head are small, pointed ears with reddish pink insides. It has three clawed toes on each foot. The bud on its back has bloomed in a large pink, white-spotted flower. The flower is supported by a thick, brown trunk surrounded by green fronds. A female Venusaur will have a seed in the center of its flower.\r\n\r\nAs Mega Venusaur, the flower on its back grows larger and two smaller pink flowers bloom, one on its forehead and one on its rear. The weight of the flower causes its legs to become sturdier in order to support it.[1] Additional leaves with woody stems, which are supported by vines, are grown around the flower. Mega Venusaur also develops dark markings on its forehead below the new flower.\r\n\r\nVenusaur uses its flower to catch the sun''s rays to convert them into energy, which causes the flower to take on colors that are more vibrant. The flower releases a soothing scent that attracts Pokémon. This scent becomes stronger after a rainy day. In the anime, Venusaur has demonstrated the ability to manipulate nature and lead evolution ceremonies for Bulbasaur and Ivysaur. This Pokémon is rarely found in the wild, but has been known to inhabit grasslands. ', 0, 0, '2016-05-08 14:12:49', '2016-05-12 10:13:33'),
(4, 'Charmander', 2, 0, 'Charmander is a bipedal, reptilian Pokémon with a primarily orange body. Its underside from the chest down and soles are cream-colored. It has two small fangs visible in its upper and lower jaws and blue eyes. Its arms and legs are short with four fingers and three clawed toes. A fire burns at the tip of this Pokémon’s slender tail, and has blazed there since Charmander’s birth. The flame can be used as an indication of Charmander''s health and mood, burning brightly when the Pokémon is strong, weakly when it is exhausted, wavering when it is happy, and blazing when it is enraged. It is said that Charmander dies if its flame goes out. However, if the Pokémon is healthy, the flame will continue to burn if gets a bit wet and is said to steam in the rain.\r\n\r\nCharmander can be found in hot, mountainous areas. However, it is found far more often in the ownership of Trainers. As shown in Pokémon Snap, Charmander exhibits pack behavior, calling others of its species if it finds food. ', 0, 0, '2016-05-10 13:54:00', '2016-05-11 10:21:20'),
(5, 'Charmeleon', 2, 0, 'Charmeleon is a bipedal, reptilian creature. It has crimson scales and a cream underside. There is a horn-like protrusion on the back of its head, and it has narrow green eyes and a long snout. It has relatively long arms with three sharp claws. Its short legs have feet with three claws and cream-colored soles. The tip of its long, powerful tail has a flame burning on it. The temperature rises to unbearable levels if Charmeleon swings its tail.\r\n\r\nCharmeleon has a vicious nature and will constantly seek out opponents. Strong opponents excite this Pokémon, causing it to spout bluish-white flames that torch its surroundings. However, it will relax once it has won. It is rare in the wild, but it can be found in mountainous areas. ', 0, 0, '2016-05-10 14:07:44', '2016-05-12 10:13:35'),
(6, 'Charizard', 2, 10, 'Charizard is a draconic, bipedal Pokémon. It is primarily orange with a cream underside from the chest to the tip of its tail, which burns with a sizable flame. Charizard has a long neck, small blue eyes, raised nostrils, and two blunt horns protruding from the back of its rectangular head. There are two fangs visible in the upper jaw when its mouth is closed. Two large wings with teal undersides sprout from its back, and a horn-like appendage juts out from the third joint of each wing. Charizard''s arms are short and skinny compared to its robust belly, and each limb has three white claws. It has stocky legs and cream-colored soles under its feet.\r\n\r\nAs Mega Charizard X, its body and legs appear more physically fit, though its arms remain thin. Its skin turns black with a sky blue underside extending from the lower jaw to the tip of the tail. Two spikes with blue tips curve upward from the front and back of each shoulder, while the tips of its horns sharpen, turn blue, and curve slightly upward. Its brow and claws are larger, its snout is shorter, and its eyes are now red with white pupils. It has two small, fin-like spikes under each horn and two more down its lower neck. The lower trims of its wings are divided into large, rounded points and each third joint is adorned with a claw-like spike. Mega Charizard X breathes blue flames out the sides of its mouth, and the flame on its tail now burns blue with increased heat.[1]\r\n\r\nWhen Mega Evolved as Mega Charizard Y, this Pokémon becomes more sleek and expansive in appearance, but retains its normal coloration. However, it now has white pupils. It has three pointed horns on the back of its head, the middle of which is longer. Its shorter snout has larger fangs and a ridge on the nose. Its neck is shorter and its hands are much smaller, but its torso and legs are longer. Small wings develop on its wrists, while the ones on its back become larger and now have ragged edges. The back of its tail has a large thorn at the base and three smaller ones near the tip, which now burns with a longer flame. Mega Charizard Y is said to have incredible flying prowess, being able to reach incredible heights.[1]\r\n\r\nThis Pokémon flies in search of powerful opponents to battle, and its fire will burn hotter as it gains experience. Its fiery breath is capable of melting boulders, massive glaciers, and has been known to accidentally cause forest fires. Charizard typically inhabit mountains and valleys. The anime has shown that only a weak Charizard would show off its power, and that a group of Charizard resides in the Charicific Valley in Johto. ', 0, 0, '2016-05-10 14:08:26', '2016-05-12 10:13:36'),
(7, 'Squirtle', 3, 0, 'Squirtle is a small Pokémon that resembles a light blue turtle. While it typically walks on its two short legs, it has been shown to run on all fours in Super Smash Bros. Brawl. It has large brown eyes and a slightly hooked upper lip. Each of its hands and feet have three pointed digits. The end of its long tail curls inward. Its body is encased by a tough shell that forms and hardens after birth. This shell is brown on the top, pale yellow on the bottom, and has a thick white ridge between the two halves.\r\n\r\nSquirtle''s shell is a useful tool. It can withdraw into the shell for protection or for sleeping, and its grooved, rounded shape helps to reduce water resistance when this Pokémon swims. Squirtle can spray foamy water from its mouth with great accuracy. Squirtle is scarce in the wild, although it can be found around small ponds and lakes. The anime has shown that it can be found living on secluded islands with other members of its evolutionary line. ', 0, 0, '2016-05-10 14:11:40', '2017-03-24 09:36:12'),
(8, 'Wartortle', 3, 0, 'Wartortle is a bipedal, indigo-blue Pokémon similar to a turtle. It has brown eyes, a dark blue streak on each cheek, and two sharp teeth protruding from its upper jaw. It has three clawed fingers and pointed toes. Bluish white fur covers its long ears and tail. A brown shell with a pale yellow underside encases its body. A thick, white rim separates the upper and lower halves of the shell. As Wartortle grows old, its tail fur will darken, and it may have algae growing on its shell. The shell may also carry scars from past battles.\r\n\r\nTo maintain balance while swimming at high speeds, Wartortle moves its furry ears and tail. It can use the fur to store air for extended underwater diving. Its tail is a popular symbol of longevity, making it popular with the elderly. It hides in water when hunting and emerges to surprise its prey. The anime has shown that Wartortle can be found living in colonies on islands, but its preferred habitat seems to be freshwater ponds and lakes. ', 0, 0, '2016-05-10 14:20:23', '2016-05-12 10:13:39'),
(9, 'Blastoise', 3, 0, 'Blastoise is a large, bipedal tortoise-like Pokémon. Its body is dark blue and is mostly hidden by its tough, brown shell. This shell has a pale yellow underside and a white ridge encircling its arms and separating the upper and lower halves. Two powerful water cannons reside in the top sides of its shell. These cannons can be extended or withdrawn and can be used to assist in high-speed charges. Blastoise''s head has triangular ears that are black on the inside, small brown eyes, and a cream-colored lower jaw. Its arms are thick and striated with three claws on each hand. Its feet have three claws on the front and one on the back. It has a stubby tail.\r\n\r\nAs Mega Blastoise, it develops two smaller shells over its arms, each with their own water cannon. The two cannons on its back are replaced by a single, central water cannon of greater size. This cannon extends forward over Mega Blastoise''s head and is said to have a blast range of over 6 miles.[1] Small ridges develop over its, now red, eyes and extend to its ears. The ears angle slightly backward and there is a small point on its chin.\r\n\r\nThe powerful cannons on this Pokémon''s back are capable of producing water blasts that can pierce steel and concrete. Blastoise deliberately makes itself heavy to withstand these powerful blasts, and it will crush its opponents with its bulk. The anime has shown that Blastoise can take the role of a leader in large groups of Squirtle and Wartortle. Its preferred habitat seems to be freshwater ponds and lakes. ', 0, 0, '2016-05-10 14:22:36', '2016-05-12 10:13:41'),
(10, 'Caterpie', 12, 0, 'Caterpie is a Pokémon that resembles a green caterpillar. There yellow ring-shaped markings down the sides of its body, which resemble its large yellow eyes. Its most notable characteristic is the bright red antenna (osmeterium) on its head, which releases a stench to repel predators. This structure and the large eye-shaped markings help to startle predators. Its feet are tipped with suction cups, permitting this Pokémon to scale most surfaces with minimal effort.\r\n\r\nCaterpie will shed its skin many times before finally cocooning itself in thick silk. It can also spit this silk in order to entangle foes as seen in the anime. Its primary diet is vegetation, and its voracious appetite causes it to eat leaves larger than itself. According to Pokémon Adventures, its favorite food is the Vermilion flower. Caterpie lives in forests. ', 1, 4, '2016-05-10 14:23:08', '2016-05-14 12:37:24'),
(11, 'Metapod', 12, 0, 'Metapod resembles a chrysalis. Its soft body is protected by a hard outer shell while it undergoes metamorphosis. While this shell is said to be as hard as steel, a sudden, powerful impact could cause its tender body to pop out, leaving it completely exposed. Metapod generally remains motionless, preparing its soft innards for evolution inside its hard shell. If an enemy discovers Metapod, it is unable to do anything other than harden its outer shell. Metapod lives in forests. ', 1, 9, '2016-05-12 09:51:23', '2016-05-14 12:37:29'),
(12, 'Butterfree', 12, 10, 'Butterfree resembles a vaguely anthropomorphic butterfly with a purple body. Unlike true insects, it only has two body segments and four light blue legs. The upper pair of legs resemble small, three-fingered hands, while the lower pair resemble long, digit-less feet. Butterfree has two black antennae, a light blue snout with two fangs underneath, and large, red compound eyes. Its two pairs of veined wings are white with black accents. The oval scales of a female Butterfree''s lower wings are black, but white in males.\r\n\r\nButterfree''s wings are covered with poisonous powders that fall off continuously as it flies. This powder repels water, enabling it to gather honey even in the rain. Butterfree will roam up to six miles from its nest in search of honey, which it carries with the hairs of its legs. It also consumes sap from trees pierced by Heracross, as seen in the anime. Butterfree is found in forests, but has also been observed flying near the ocean as part of its migratory breeding pattern. ', 0, 0, '2016-05-13 17:25:46', '2016-05-13 17:30:36'),
(13, 'Weedle', 12, 8, 'Weedle is a small larva Pokémon with a segmented body ranging in color from yellow to reddish-brown. Combined with its red nose and feet, Weedle''s bright coloration wards off its enemies. Weedle has a conical, two-inch venomous stinger on its head and a barbed one on its tail, but its other body parts are spherical.\r\n\r\nWeedle can retaliate against attackers and those who step on it with its strong toxin. It can distinguish its favorite kinds of leaves using its acute sense of smell. As a young Bug Pokémon, its daily appetite for leaves matches its weight. Weedle can be found in forests and usually hides in grass, bushes, and under the leaves it eats. ', 1, 4, '2016-05-14 07:57:17', '2016-05-14 12:37:56'),
(14, 'Kakuna', 12, 8, 'Kakuna is a yellow, cocoon Pokémon. Kakuna has a dome-shaped head and black, triangular eyes. It has two scythe-like arms in the middle of its body. When it comes close to evolving, its body gives off heat that makes it warm to the touch. Kakuna remains virtually immobile and waits for evolution often hanging from tree branches by long strands of silk. When attacked, however, it can extend its poison barbs. Kakuna nests in forests and misty wooded areas. Occasionally, it will also nest at the mouths of tunnels and caves as seen in Pokémon Snap. ', 1, 2, '2016-05-14 07:59:42', '2016-05-14 12:37:44'),
(15, 'Pikachu', 4, 12, 'X', 0, NULL, '2016-05-17 06:20:37', '2016-05-17 06:20:37');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `routes`
--

CREATE TABLE `routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `routes`
--

INSERT INTO `routes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Route 1', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(2, 'Route 2', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(3, 'Route 3', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(4, 'Route 4', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(5, 'Route 5', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(6, 'Route 6', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(7, 'Route 7', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(8, 'Route 8', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(9, 'Route 9', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(10, 'Route 10', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(11, 'Route 11', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(12, 'Route 12', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(13, 'Route 13', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(14, 'Route 14', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(15, 'Route 15', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(16, 'Route 16', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(17, 'Route 17', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(18, 'Route 18', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(19, 'Route 19', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(20, 'Route 20', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(21, 'Route 21', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(22, 'Route 22', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(23, 'Route 23', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(24, 'Route 24', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(25, 'Route 25', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(26, 'Route 26', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(27, 'Route 27', '2016-03-24 09:15:05', '2016-03-24 09:15:05'),
(28, 'Route 28', '2016-03-24 09:15:05', '2016-03-24 09:15:05');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rss`
--

CREATE TABLE `rss` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slides` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `rss`
--

INSERT INTO `rss` (`id`, `name`, `slides`, `created_at`, `updated_at`) VALUES
(1, 'http://www.nu.nl/rss', 'd', '2016-05-20 17:25:38', '2016-06-05 15:18:14');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Normal', '2016-03-24 13:35:39', '2016-03-24 13:35:39'),
(2, 'Fire', '2016-03-24 13:35:52', '2016-03-24 13:35:52'),
(3, 'Water', '2016-03-24 13:35:55', '2016-03-24 13:35:55'),
(4, 'Electric', '2016-03-24 13:36:01', '2016-03-24 13:36:01'),
(5, 'Grass', '2016-03-24 13:36:07', '2016-03-24 13:36:07'),
(6, 'Ice', '2016-03-24 13:36:09', '2016-03-24 13:36:09'),
(7, 'Fighting', '2016-03-24 13:36:15', '2016-03-24 13:36:15'),
(8, 'Poison', '2016-03-24 13:36:20', '2016-03-24 13:36:20'),
(9, 'Ground', '2016-03-24 13:36:22', '2016-03-24 13:36:22'),
(10, 'Flying', '2016-03-24 13:36:27', '2016-03-24 13:36:27'),
(11, 'Psychic', '2016-03-24 13:36:30', '2016-03-24 13:36:30'),
(12, 'Bug', '2016-03-24 13:36:35', '2016-03-24 13:36:35'),
(13, 'Rock', '2016-03-24 13:36:56', '2016-03-24 13:36:56'),
(14, 'Ghost', '2016-03-24 13:37:01', '2016-03-24 13:37:01'),
(15, 'Dragon', '2016-05-13 17:19:05', '2016-05-13 17:19:05');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Max Veerman', 'maxieveerman@gmail.com', '$2y$10$VqgU9eajnw6O5k.eD4DQmuc.7vzPj8.rYY61FB/X6edbA7/kccli2', 'VKN9uxYafwWSRSUQxC7FHVt8DPQwfGJTFohw8XLA19ENEGsfh65N8EiSlMUb', '2016-03-23 08:55:17', '2016-06-05 15:18:17'),
(2, 'Edwin', 'test@email.nl', '$2y$10$21Te34Xf3d6LkrJbbiZM1.G4eEYduHrOOkGRCYJNv2eABGsqNBODC', 'rrdJ5ZMi6Y5ovIa91mZnvw9CIuRafVhPzSSVg9cR9VDpluPs640McN7jDA5G', '2016-05-17 06:09:22', '2016-05-17 06:17:22'),
(3, 'Maeco', 'marco@gmail.nl', '$2y$10$XAwDMeK1vgoazMMBcp81xuTwpn16qhTqbYMMGmD7vL06sIeleGQx6', NULL, '2016-05-17 06:17:50', '2016-05-17 06:17:50'),
(4, 'Maxie', 'maxie@gmail.com', '$2y$10$2XBzcUBYTWNOX20TP20PGOYuC04mD8c1XZC9Q.Nw/KBzDzDNA7dUS', NULL, '2017-03-23 10:46:11', '2017-03-23 10:46:11'),
(5, 'MSML', 'msml@hotmail.com', '$2y$10$phAE9PhS5G5QwCXND8QhleI2M56Ij50wRkqJE53cVczZW7xYvGCx.', NULL, '2017-03-24 09:35:33', '2017-03-24 09:35:33');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexen voor tabel `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `rss`
--
ALTER TABLE `rss`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_name_unique` (`name`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `pokemons`
--
ALTER TABLE `pokemons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT voor een tabel `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT voor een tabel `rss`
--
ALTER TABLE `rss`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
