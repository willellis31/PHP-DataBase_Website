-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2017 at 04:04 AM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `a1_marvel`
--

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE IF NOT EXISTS `characters` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `image` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `powers` text NOT NULL,
  `description` text NOT NULL,
  `affiliations` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`ID`, `image`, `name`, `powers`, `description`, `affiliations`) VALUES
(1, 'img/thor.jpg', 'Thor', 'As the son of Odin and Gaea, Thor''s strength, endurance and resistance to injury are greater than the vast majority of his superhuman race. \r\nHis flesh and bones are several times denser than a human''s.As Lord of Asgard, Thor possessed the Odinforce, which enabled him to tap into the near-infinite resources of cosmic and mystical energies, enhancing all of his abilities. ', 'As the Norse God of thunder and lightning, Thor wields one of the greatest weapons ever made, the enchanted hammer Mjolnir.\r\nThor is trained in the arts of war, being a superbly skilled warrior, highly proficient in hand-to-hand combat, swordsmanship and hammer throwing.', 'Gods of Asgard, Avengers; formerly Queen’s Vengeance, Godpack, Thor Corps'),
(2, 'http://vignette3.wikia.nocookie.net/marveldatabase/images/6/64/Incredible_Hulk_Vol_2_75_Textless.jpg/revision/latest/scale-to-width-down/122?cb=20050830175533', 'Hulk/Bruce Banner', 'The Hulk possesses an incredible level of superhuman physical ability. His capacity for physical strength is potentially limitless due to the fact that the Hulk''s strength increases proportionally with his level of great emotional stress, anger in particular.\r\n', 'Caught in a gamma bomb explosion while trying to save the life of a teenager, Dr. Bruce Banner was transformed into the incredibly powerful creature called the Hulk.\r\nThe Hulk uses his superhumanly strong leg muscles to leap great distances. The Hulk has been known to cover hundreds of miles in a single bound and once leaped almost into orbit around the Earth. The Hulk can also use his superhumanly leg muscles to run at super speeds, although his legs have limitless strength he does not have limitless speed and once he reaches a certain speed his legs become too strong and destroy the ground giving him no friction to run on, therefore he jumps to travel. The Hulk can slam his hands together creating a shock wave, this shock wave can deafen people, send objects flying and extinguish fires.', 'Avengers, Defenders, Fantastic Four, Pantheon, Horsemen of Apocalypse, Warbound'),
(3, 'img/spiderman.png', 'Spiderman/Peter Parker', 'Peter can cling to most surfaces, has superhuman strength (able to lift 10 tons optimally) and is roughly 15 times more agile than a regular human. The combination of his acrobatic leaps and web-slinging enables him to travel rapidly from place to place. \r\nHis spider-sense provides an early warning detection system linked with his superhuman kinesthetics, enabling him the ability to evade most any injury.', 'Created after being bitten by an experimental spider, Peter Parker became Spiderman. Peter is an accomplished scientist, inventor and photographer.', 'Avengers, formerly the Secret Defenders, "New Fantastic Four", the Outlaws'),
(4, 'img/deadpool.jpg', 'Deadpool/Wade Wilson', 'Deadpool possesses a superhuman healing factor derived from that of the mutant Wolverine that allows him to regenerate damaged or destroyed areas of his cellular structure at a rate far greater than that of an ordinary human. As such, he can regrow severed limbs or vital organs.\r\nHis natural strength, agility and reflexes have been enhanced to levels that are beyond the natural limits of the human body. Deadpool''s agility and reaction time are superior to those of even the finest human athlete.', 'Created by deconstructing his genetic mapping in an attempt to cure his terminal cancer. Deadpool is an extraordinary hand-to-hand combatant and is skilled in multiple unarmed combat techniques. He is a master of assassination techniques, is an excellent marksman, and is highly skilled with bladed weapons (frequently carrying two swords strapped to his back). He is fluent in Japanese, German, Spanish, amongst other languages.', 'X-Men, X-Force, Agency X; formerly Six Pack, One World Church, DP Inc., Weapon X, Heroes for Hire, Secret Defenders, Frightful Four, Team Deadpool'),
(5, 'img/wolverine.jpg', 'Wolverine/Logan', 'Possesses the ability to regenerate damaged or destroyed areas of his cellular structure at a rate far greater than that of an ordinary human. \r\nWolverine’s healing factor provides him with an extended lifespan by slowing the effects of the aging process. \r\nWolverine also possesses superhumanly acute senses, making him capable of seeing things at a maximum distance greater than a normal human’s. His hearing is enhanced in a similar manner, and he is able to recognize people and objects by scent, even if that person or object is hidden.\r\nWolverine’s skeleton includes six retractable one-foot long bone claws, three in each arm, that are housed beneath the skin and muscle of his forearms.', 'Born with super-human senses and the power to heal from almost any wound, Wolverine was captured by a secret Canadian organization and given an unbreakable casing over his skeleton and claws in the form of the metal compound adamantium.\r\nWolverine is an exceptional hand-to-hand combatant, having mastered virtually every fighting style on Earth. He is also a trained expert in multiple types of weapons, vehicles, computer systems, explosives, and assassination techniques.', 'X-Men, Avengers, Horsemen of Apocalypse, Fantastic Four, Secret Defenders, Clan Yashida, Department H, Alpha Flight, Department K, Team X, Team Weapon X, Devil''s Brigade, Canadian Army'),
(6, 'img/thanos.jpg', 'Thanos', 'Thanos possesses the superhuman physiology of all Eternals, granting him superhuman strength, endurance, reflexes, and agility. His skin in nearly invulnerable, particulary against heat, cold, electricity, radiation, toxins, aging, and disease, and he can survive indefinitely without food or water even before his "curse" from Death left him immortal, unable to die. His mind is also invulnerable to most forms of psychic attack, and can project a psionic blast of energy as well as blasts of plasma/cosmic energy from his eyes and hands.', 'The Mad Titan Thanos, a melancholy, brooding individual, consumed with the concept of death, sought out personal power and increased strength, endowing himself with cybernetic implants until he became more powerful than any of his brethren.\r\nHe is a master strategist, adept in sciences far beyond Earth technology and some mystical knowledge. ', 'Eternals'),
(7, 'img/doc_oct.jpg', 'Doctor Octopus', 'After the explosion that grafted the tentacled harness to Dr. Octavius, he was misdiagnosed with brain damage. In actuality, his brain was creating new neuro-pathways so that he could possess the superhuman ability to telepathically control his tentacles at will.', 'Doctor Octopus is the world''s leading authority on nuclear radiation and its effects on human physiology. He is also a brilliant engineer and inventor.', 'Thunderbolts Army, Sinister Six, Masters of Evil'),
(8, 'img/dormammu.jpg', 'Dormammu', 'Dormammu possesses more raw power than even the most skilled sorcerer, although he is frequently undone by his own impatience; his power can reach even greater levels via worship by others. Among his many abilities are matter transmutation, interdimensional teleportation, size and shape alteration, element control, telepathy, creation of artificial beings, and empowerment of others.', 'Composed of pure mystical energy, Dormammu can call upon the mystic energies of the entire Dark Dimension, as well as his own innate power, and he commands its vast resources while its ruler; however, his abilities are somewhat limited when physically present in another universe, unless he can directly tap its energy via symbiosis or rebirth. Like that of various other entities, Dormammu’s innate power can be partially invoked by the spells of individual sorcerers, like Doctor Strange ', 'Lords of the Splinter Realms, Lords of the Netherworlds'),
(9, 'img/Galactus.jpg', 'Galactus', 'Galactus possesses cosmic power beyond most forms of measurement (The Power Cosmic). He can levitate; restructure molecules; convert matter into energy and vice-versa; project energy with enormous concussive force; teleport himself, others, and objects across space, dimensions, and time; erect virtually impenetrable fields; restore others from any injury, even total disintegration; and endow or enhance powers within others.\r\n', 'Galactus is the sole survivor of a universe that existed prior to the current universe. \r\nTo sustain his immense power, Galactus requires energies derived from a biosphere, a planet able to sustain living beings, though life does not actually have to be present. \r\nGalactus has scientific knowledge beyond human understanding.', 'Served by a series of heralds; occasional member of Cosmic Tribuna'),
(10, 'img/cable.jpg', 'Cable/Nathan Summers', 'Cable possesses vast psychic power, most often manifested in the forms of telepathy and telekinesis. His telepathy has proven great enough in power and scope as to allow him to read thoughts across vast distances, and even interface with multiple minds, simultaneously.\r\nCable has also demonstrated the ability to project bolts or blasts of mental energy that are capable of easily killing or rendering unconscious another Human being.', 'Cable is a highly accomplished warrior and battle strategist, highly adept in many forms of hand-to-hand combat and in the use of a variety of weaponry', 'X-Force; formerly X-Men, Secret Avengers, Underground, The Twelve, New Mutants, Six Pack, Clan Chosen, Clan Askani');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
