-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 14, 2018 at 03:50 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.1.14-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Ages`
--

CREATE TABLE `Ages` (
  `id` int(11) NOT NULL,
  `age` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ages`
--

INSERT INTO `Ages` (`id`, `age`, `createdAt`, `updatedAt`) VALUES
(1, 'Teens', '2018-04-17 00:00:00', '2018-04-17 00:00:00'),
(2, '20\'s', '2018-04-17 00:00:00', '2018-04-17 00:00:00'),
(3, '30\'s', '2018-04-17 00:00:00', '2018-04-17 00:00:00'),
(4, '40\'s', '2018-04-17 00:00:00', '2018-04-17 00:00:00'),
(5, '50\'s', '2018-04-17 00:00:00', '2018-04-17 00:00:00'),
(6, '60\'s', '2018-04-17 00:00:00', '2018-04-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Answers`
--

CREATE TABLE `Answers` (
  `id` int(11) NOT NULL,
  `answer` text,
  `questionid` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Answers`
--

INSERT INTO `Answers` (`id`, `answer`, `questionid`, `createdAt`, `updatedAt`) VALUES
(1, '[{"mainAnswer":"I’m skinny. I have always been skinny but I am looking to build more muscle tone and look amazing in a bikini!","subAnswer":[{"mainAnswer":"I am looking for a bikini body, abs, with toned arms and legs.","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- the tools needed for a bikini body"}]},{"mainAnswer":"I want to look fit and athletic, with a focus on building my booty over the next few months","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that is customized and has the booty builder program build into it"}]}]},{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]},{"mainAnswer":"I want to learn a healthy lifestyle that is sustainable and gradually lose weight over the next few months","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition"}]}]},{"mainAnswer":"I have a lot of fat to lose--over 25 pounds to really get closer to my fitness goals","subAnswer":[{"mainAnswer":"I am looking to lose weight for medical/personal purposes and need to be healthier for my future health","subAnswer":[{"mainAnswer":"VIP Program - 6 month program"},{"mainAnswer":"Queen Elite Program - 12 week program with encouragement to do a longer program"}]},{"mainAnswer":"I am looking to learn a healthier lifestyle over time, and know that I’ll need to commit to several months of a lifestyle change to see the results I want"}]}]', 1, '2018-04-17 00:00:00', '2018-04-17 00:00:00'),
(2, '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition"}]},{"mainAnswer":"Gain muscle","subAnswer":[{"mainAnswer":"Mass gainer program"}]}]', 2, '2018-04-17 00:00:00', '2018-04-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Genders`
--

CREATE TABLE `Genders` (
  `id` int(11) NOT NULL,
  `gender` enum('Man','Woman') DEFAULT NULL,
  `image` varchar(200) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genders`
--

INSERT INTO `Genders` (`id`, `gender`, `image`, `createdAt`, `updatedAt`) VALUES
(1, 'Man', 'gym-boy.png', '2018-04-27 00:00:00', '2018-04-27 00:00:00'),
(2, 'Woman', 'gym-girl.png', '2018-04-27 00:00:00', '2018-04-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Plans`
--

CREATE TABLE `Plans` (
  `id` int(11) NOT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Plans`
--

INSERT INTO `Plans` (`id`, `plan`, `createdAt`, `updatedAt`) VALUES
(1, 'Plan A', '2018-04-20 00:00:00', '2018-04-20 00:00:00'),
(2, 'Plan B', '2018-04-20 00:00:00', '2018-04-20 00:00:00'),
(3, 'Plan C', '2018-04-20 00:00:00', '2018-04-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Questions`
--

CREATE TABLE `Questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `genderid` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Questions`
--

INSERT INTO `Questions` (`id`, `question`, `genderid`, `createdAt`, `updatedAt`) VALUES
(1, 'What is your main goal?', 2, '2018-04-17 00:00:00', '2018-04-17 00:00:00'),
(2, 'What is your main goal?', 1, '2018-04-17 00:00:00', '2018-04-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20180417055750-create-gender.js'),
('20180417061221-create-age.js'),
('20180417061442-create-question.js'),
('20180417061530-create-answer.js'),
('20180418072140-create-user.js'),
('20180420114641-create-plan.js');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `phone`, `email`, `gender`, `plan`, `age`, `question`, `answer`, `createdAt`, `updatedAt`) VALUES
(1, '', '', '', 'Male', NULL, '1', 'What is your goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 10:37:59', '2018-05-04 10:37:59'),
(2, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-04 10:38:25', '2018-05-04 10:38:25'),
(3, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have a lot of fat to lose--over 25 pounds to really get closer to my fitness goals","subAnswer":[{"mainAnswer":"I am looking to learn a healthier lifestyle over time, and know that I’ll need to commit to several months of a lifestyle change to see the results I want","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 10:39:16', '2018-05-04 10:39:16'),
(4, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I’m skinny. I have always been skinny but I am looking to build more muscle tone and look amazing in a bikini!","subAnswer":[{"mainAnswer":"I am looking for a bikini body, abs, with toned arms and legs.","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- the tools needed for a bikini body"}]}]}]', '2018-05-04 10:41:11', '2018-05-04 10:41:11'),
(5, '', '', '', 'Male', NULL, '1', 'What is your goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 10:45:25', '2018-05-04 10:45:25'),
(6, '', '', '', 'Male', NULL, '1', 'What is your goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 10:46:14', '2018-05-04 10:46:14'),
(7, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I’m skinny. I have always been skinny but I am looking to build more muscle tone and look amazing in a bikini!","subAnswer":[{"mainAnswer":"I am looking for a bikini body, abs, with toned arms and legs.","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- the tools needed for a bikini body"}]}]}]', '2018-05-04 10:46:45', '2018-05-04 10:46:45'),
(8, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have a lot of fat to lose--over 25 pounds to really get closer to my fitness goals","subAnswer":[{"mainAnswer":"I am looking to learn a healthier lifestyle over time, and know that I’ll need to commit to several months of a lifestyle change to see the results I want","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 10:47:30', '2018-05-04 10:47:30'),
(9, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-04 10:53:27', '2018-05-04 10:53:27'),
(10, '', '', '', 'Male', NULL, '1', 'What is your goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 10:55:01', '2018-05-04 10:55:01'),
(11, '', '', '', 'Male', NULL, '1', 'What is your goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 11:00:15', '2018-05-04 11:00:15'),
(12, '', '', '', 'Male', NULL, '1', 'What is your goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 11:10:36', '2018-05-04 11:10:36'),
(13, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-04 11:10:54', '2018-05-04 11:10:54'),
(14, '', '', '', 'Male', NULL, '1', 'What is your goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 11:12:07', '2018-05-04 11:12:07'),
(15, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have a lot of fat to lose--over 25 pounds to really get closer to my fitness goals","subAnswer":[{"mainAnswer":"I am looking to learn a healthier lifestyle over time, and know that I’ll need to commit to several months of a lifestyle change to see the results I want","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 11:12:15', '2018-05-04 11:12:15'),
(16, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I want to learn a healthy lifestyle that is sustainable and gradually lose weight over the next few months","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition"}]}]}]', '2018-05-04 11:12:25', '2018-05-04 11:12:25'),
(17, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-04 11:14:50', '2018-05-04 11:14:50'),
(18, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have a lot of fat to lose--over 25 pounds to really get closer to my fitness goals","subAnswer":[{"mainAnswer":"I am looking to lose weight for medical/personal purposes and need to be healthier for my future health","subAnswer":[{"mainAnswer":"VIP Program - 6 month program"}]}]}]', '2018-05-04 11:29:07', '2018-05-04 11:29:07'),
(19, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 11:33:16', '2018-05-04 11:33:16'),
(20, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 11:34:50', '2018-05-04 11:34:50'),
(21, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I want to learn a healthy lifestyle that is sustainable and gradually lose weight over the next few months","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition"}]}]}]', '2018-05-04 11:35:19', '2018-05-04 11:35:19'),
(22, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I’m skinny. I have always been skinny but I am looking to build more muscle tone and look amazing in a bikini!","subAnswer":[{"mainAnswer":"I am looking for a bikini body, abs, with toned arms and legs.","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- the tools needed for a bikini body"}]}]}]', '2018-05-04 11:35:54', '2018-05-04 11:35:54'),
(23, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I’m skinny. I have always been skinny but I am looking to build more muscle tone and look amazing in a bikini!","subAnswer":[{"mainAnswer":"I want to look fit and athletic, with a focus on building my booty over the next few months","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that is customized and has the booty builder program build into it"}]}]}]', '2018-05-04 11:38:04', '2018-05-04 11:38:04'),
(24, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-04 11:39:27', '2018-05-04 11:39:27'),
(25, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I want to learn a healthy lifestyle that is sustainable and gradually lose weight over the next few months","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition"}]}]}]', '2018-05-04 11:39:47', '2018-05-04 11:39:47'),
(26, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have a lot of fat to lose--over 25 pounds to really get closer to my fitness goals","subAnswer":[{"mainAnswer":"I am looking to lose weight for medical/personal purposes and need to be healthier for my future health","subAnswer":[{"mainAnswer":"VIP Program - 6 month program"}]}]}]', '2018-05-04 11:40:35', '2018-05-04 11:40:35'),
(27, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have a lot of fat to lose--over 25 pounds to really get closer to my fitness goals","subAnswer":[{"mainAnswer":"I am looking to learn a healthier lifestyle over time, and know that I’ll need to commit to several months of a lifestyle change to see the results I want","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-04 11:41:26', '2018-05-04 11:41:26'),
(28, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-07 13:51:31', '2018-05-07 13:51:31'),
(29, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I want to learn a healthy lifestyle that is sustainable and gradually lose weight over the next few months","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition"}]}]}]', '2018-05-07 13:53:53', '2018-05-07 13:53:53'),
(30, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 08:42:42', '2018-05-09 08:42:42'),
(31, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have a lot of fat to lose--over 25 pounds to really get closer to my fitness goals","subAnswer":[{"mainAnswer":"I am looking to learn a healthier lifestyle over time, and know that I’ll need to commit to several months of a lifestyle change to see the results I want","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:06:42', '2018-05-09 10:06:42'),
(32, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I want to learn a healthy lifestyle that is sustainable and gradually lose weight over the next few months","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition"}]}]}]', '2018-05-09 10:06:58', '2018-05-09 10:06:58'),
(33, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-09 10:10:24', '2018-05-09 10:10:24'),
(34, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-09 10:11:44', '2018-05-09 10:11:44'),
(35, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I’m skinny. I have always been skinny but I am looking to build more muscle tone and look amazing in a bikini!","subAnswer":[{"mainAnswer":"I am looking for a bikini body, abs, with toned arms and legs.","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- the tools needed for a bikini body"}]}]}]', '2018-05-09 10:12:04', '2018-05-09 10:12:04'),
(36, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I’m skinny. I have always been skinny but I am looking to build more muscle tone and look amazing in a bikini!","subAnswer":[{"mainAnswer":"I want to look fit and athletic, with a focus on building my booty over the next few months","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that is customized and has the booty builder program build into it"}]}]}]', '2018-05-09 10:12:19', '2018-05-09 10:12:19'),
(37, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-09 10:12:33', '2018-05-09 10:12:33'),
(38, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:15:43', '2018-05-09 10:15:43'),
(39, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:18:31', '2018-05-09 10:18:31'),
(40, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-09 10:18:46', '2018-05-09 10:18:46'),
(41, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:19:53', '2018-05-09 10:19:53'),
(42, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:20:22', '2018-05-09 10:20:22'),
(43, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:22:27', '2018-05-09 10:22:27'),
(44, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:23:29', '2018-05-09 10:23:29'),
(45, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:27:36', '2018-05-09 10:27:36'),
(46, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have a lot of fat to lose--over 25 pounds to really get closer to my fitness goals","subAnswer":[{"mainAnswer":"I am looking to learn a healthier lifestyle over time, and know that I’ll need to commit to several months of a lifestyle change to see the results I want","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:29:29', '2018-05-09 10:29:29'),
(47, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have a lot of fat to lose--over 25 pounds to really get closer to my fitness goals","subAnswer":[{"mainAnswer":"I am looking to lose weight for medical/personal purposes and need to be healthier for my future health","subAnswer":[{"mainAnswer":"Queen Elite Program - 12 week program with encouragement to do a longer program"}]}]}]', '2018-05-09 10:29:54', '2018-05-09 10:29:54'),
(48, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:31:38', '2018-05-09 10:31:38'),
(49, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:33:06', '2018-05-09 10:33:06'),
(50, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-09 10:33:20', '2018-05-09 10:33:20'),
(51, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:33:56', '2018-05-09 10:33:56'),
(52, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:35:32', '2018-05-09 10:35:32'),
(53, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-09 10:35:43', '2018-05-09 10:35:43'),
(54, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:39:38', '2018-05-09 10:39:38'),
(55, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-09 10:40:03', '2018-05-09 10:40:03'),
(56, '', '', '', 'Female', NULL, '4', 'What is your main goal?', '[{"mainAnswer":"I have a lot of fat to lose--over 25 pounds to really get closer to my fitness goals","subAnswer":[{"mainAnswer":"I am looking to learn a healthier lifestyle over time, and know that I’ll need to commit to several months of a lifestyle change to see the results I want","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:40:44', '2018-05-09 10:40:44'),
(57, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:42:24', '2018-05-09 10:42:24'),
(58, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I want to learn a healthy lifestyle that is sustainable and gradually lose weight over the next few months","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition"}]}]}]', '2018-05-09 10:42:36', '2018-05-09 10:42:36'),
(59, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-09 10:44:35', '2018-05-09 10:44:35'),
(60, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-09 10:44:46', '2018-05-09 10:44:46'),
(61, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:45:45', '2018-05-09 10:45:45'),
(62, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:50:12', '2018-05-09 10:50:12'),
(63, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-09 10:59:05', '2018-05-09 10:59:05'),
(64, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 10:59:31', '2018-05-09 10:59:31'),
(65, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-09 11:07:15', '2018-05-09 11:07:15'),
(66, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-09 11:07:30', '2018-05-09 11:07:30'),
(67, '', '', '', 'Female', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I am looking to get ready for a vacation/trip/wedding and want to be completely ready for it","subAnswer":[{"mainAnswer":"Queen Lifestyle Program -- 6 week program to see results quickly over a several week period"}]}]}]', '2018-05-10 05:11:37', '2018-05-10 05:11:37'),
(68, '', '', '', 'Male', NULL, '1', 'What is your main goal?', '[{"mainAnswer":"Lose weight","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition","subAnswer":[{"mainAnswer":""}]}]}]', '2018-05-10 05:12:19', '2018-05-10 05:12:19'),
(69, '', '', '', 'Female', NULL, '2', 'What is your main goal?', '[{"mainAnswer":"I have stubborn fat around my stomach/thighs that I haven’t been able to lose! I have about 5-25 pounds to lose to get to my target goal","subAnswer":[{"mainAnswer":"I want to learn a healthy lifestyle that is sustainable and gradually lose weight over the next few months","subAnswer":[{"mainAnswer":"Queen Elite Program -- 12 week program that will help them gradually lose weight over the next few months, as well as help them understand the different elements in their health including: sleep, hormones, nutrition"}]}]}]', '2018-05-10 05:13:53', '2018-05-10 05:13:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Ages`
--
ALTER TABLE `Ages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Answers`
--
ALTER TABLE `Answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Genders`
--
ALTER TABLE `Genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Plans`
--
ALTER TABLE `Plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Questions`
--
ALTER TABLE `Questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Ages`
--
ALTER TABLE `Ages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Answers`
--
ALTER TABLE `Answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Genders`
--
ALTER TABLE `Genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Plans`
--
ALTER TABLE `Plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Questions`
--
ALTER TABLE `Questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
