-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2022 at 01:03 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19863164_hnews`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Arghya', '1234', 'arghyafebnath100@gmail.com', 1, '2022-01-20 17:51:00', '2022-11-06 06:50:44'),
(2, 'Debu', '1234', 'debu@gmail.com', 1, '2022-11-12 10:39:34', '2022-11-13 07:57:48'),
(3, 'Imran', '1234', 'imran@gmail.com', 1, '2022-11-12 10:39:34', '2022-11-13 07:58:29'),
(4, 'Bibek', '1234', 'Bibek@gmail.com', 1, '2022-11-12 10:40:30', '2022-11-13 07:58:32'),
(5, 'Buddha', '1234', 'Buddha@gmail.com', 1, '2022-11-12 10:41:15', '2022-11-16 06:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(12, 'Sports', 'All sports', '2022-11-06 06:52:18', '0000-00-00 00:00:00', 1),
(13, 'Technology', 'technology', '2022-11-13 05:26:27', '0000-00-00 00:00:00', 1),
(14, 'Political', 'Political', '2022-11-13 05:26:42', '0000-00-00 00:00:00', 1),
(15, 'India', 'India news', '2022-11-13 05:26:56', '0000-00-00 00:00:00', 1),
(16, 'Business', 'business', '2022-11-13 05:27:07', '0000-00-00 00:00:00', 1),
(19, 'Movies', 'about cinema\r\n', '2022-11-16 12:22:24', '2022-11-24 12:10:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(9, '5', 'Arghya', 'argthya@gmail.com', 'Bad Luck For India', '2022-11-13 05:42:53', 1),
(23, '5', 'Arghya', 'arghyafebnath100@gmail.com', 'replace bowlers', '2022-11-16 08:45:44', 1),
(25, '16', 'Imran Mallik', 'mallikimran032@gmail.com', 'not interested', '2022-11-17 04:02:41', 1),
(26, '18', 'Arghya', 'arghyafebnath100@gmail.com', 'I have rtx 3050 ', '2022-11-23 02:53:45', 1),
(27, '21', 'imran', 'debnatharghya100@gmail.com', 'Ami to helicopter a college jai amar aisobe kichui jay asena', '2022-11-23 11:51:27', 1),
(28, '21', 'Chunnu', 'debnatharghya100@gmail.com', 'Bhalo korse', '2022-11-23 11:53:32', 1),
(29, '27', 'Imran Mallik', 'imran@gmail.com', 'nice car ', '2022-11-23 15:02:05', 1),
(30, '27', 'Chandu', 'debnatharghya100@gmail.com', 'Car is nice but out of budget', '2022-11-24 03:01:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Haldia News', '<h2 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; line-height: 1.2; color: rgba(0, 0, 0, 0.753); font-size: 2rem;\"><div class=\"mt-2 mb-2\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; margin-top: 0.5rem !important; margin-bottom: 0.5rem !important;\"><div class=\"pageh1 primary-color\" style=\"margin: 0px 0px 5px; padding: 0px; font-size: 22px; color: rgb(220, 34, 41); position: relative; display: inline-block; font-weight: 800; line-height: 22px;\">About us</div></div><div class=\"static-container\" style=\"margin: 0px; padding: 0px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px;\"><p class=\"contact-title\" style=\"margin-bottom: 1rem; padding: 0px; color: rgb(44, 45, 49);\">We are the students of GIST Haldia. We started the news blog site to keep our viewers updated about different news of different topic.</p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-type: none;\"><li style=\"margin: 0px 0px 30px; padding: 0px 0px 20px; border: 1px solid rgb(230, 230, 230);\"><div class=\"office-location\" style=\"margin: 0px; padding: 8px 20px; color: rgb(44, 45, 49); background-color: rgb(230, 230, 230); font-weight: 700;\">Our Members</div><div class=\"static-address\" style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 10px 0px 0px 20px; font-size: 14px; color: rgb(44, 45, 49); display: block;\">1.Arghya Debnath</span></div><div class=\"static-address\" style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 10px 0px 0px 20px; font-size: 14px; color: rgb(44, 45, 49); display: block;\">2.Bibek Jana</span></div><div class=\"static-address\" style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 10px 0px 0px 20px; font-size: 14px; color: rgb(44, 45, 49); display: block;\">3.Buddhadev Pramanik</span></div><div class=\"static-address\" style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 10px 0px 0px 20px; font-size: 14px; color: rgb(44, 45, 49); display: block;\">4.Debabrata Adak</span></div><div class=\"static-address\" style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 10px 0px 0px 20px; font-size: 14px; color: rgb(44, 45, 49); display: block;\">5.Imran mallik</span></div></li></ul></div></h2>', '2018-06-30 18:01:03', '2022-11-16 08:06:10'),
(2, 'contactus', 'Contact Details', '<h2><div class=\"mt-2 mb-2\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; margin-top: 0.5rem !important; margin-bottom: 0.5rem !important;\"><div class=\"pageh1 primary-color\" style=\"margin: 0px 0px 5px; padding: 0px; font-size: 22px; color: rgb(220, 34, 41); position: relative; display: inline-block; font-weight: 800; line-height: 22px;\">Contact us</div></div><div class=\"static-container\" style=\"margin: 0px; padding: 0px;\"><p class=\"contact-title\" style=\"color: rgb(44, 45, 49); font-size: 16px; margin-bottom: 1rem; padding: 0px;\"><font face=\"Arial Black\">If you need to contact us or want to contribute to haldianews2022@gmail.com</font></p><p class=\"address-title\" style=\"color: rgb(44, 45, 49); font-size: 16px; font-family: Poppins, sans-serif; margin-bottom: 1rem; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">You can mail us at:</span></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-type: none;\"><li style=\"margin: 0px 0px 30px; padding: 0px 0px 20px; border: 1px solid rgb(230, 230, 230);\"><div class=\"office-location\" style=\"color: rgb(44, 45, 49); font-size: 16px; font-family: Poppins, sans-serif; margin: 0px; padding: 8px 20px; background-color: rgb(230, 230, 230); font-weight: 700;\">Haldia Office</div><div class=\"static-address\" style=\"margin: 0px; padding: 0px;\"><span style=\"color: rgb(44, 45, 49); font-size: 14px; margin: 0px; padding: 10px 0px 0px 20px; display: block;\"><font face=\"Helvetica\">HALDIA NEWS PRIVATE LIMITED</font></span><span style=\"color: rgb(44, 45, 49); font-size: 14px; margin: 0px; padding: 10px 0px 0px 20px; display: block;\"><font face=\"Helvetica\">HPL Link Road</font></span><span style=\"color: rgb(44, 45, 49); font-size: 14px; margin: 0px; padding: 10px 0px 0px 20px; display: block;\"><font face=\"Helvetica\">Haldia,721602,West Bengal</font></span><span style=\"color: rgb(44, 45, 49); font-size: 14px; margin: 0px; padding: 10px 0px 0px 20px; display: block;\"><font face=\"Helvetica\">Phone: +918100123000</font></span></div><div class=\"static-address\" style=\"margin: 0px; padding: 0px;\"><span style=\"color: rgb(44, 45, 49); font-size: 14px; margin: 0px; padding: 10px 0px 0px 20px; display: block;\"><font face=\"Helvetica\">Send e-mail to :</font><span style=\"font-family: Arial; color: rgb(80, 84, 88); font-size: 15px;\">haldianews2022@gmail.com</span></span></div></li></ul></div></h2>', '2018-06-30 18:01:36', '2022-11-23 13:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(3, 'TODAYS ISL MATCH|| MOHUN BAGAN VS MUMBAI CITY FC', 12, 2, '<p style=\"margin-top: 10px; margin-bottom: 10px;\"><a target=\"_blank\" href=\"https://sportstar.thehindu.com/newstag/Mumbai_City_FC-1/?utm=bodytag\" style=\"\">Mumbai City FC&nbsp;</a>will be aiming to keep its unbeaten record in the&nbsp;<a target=\"_blank\" href=\"https://sportstar.thehindu.com/newstag/Indian_Super_League/?utm=bodytag\" style=\"\">Indian Super League&nbsp;</a>2022-23 (<a target=\"_blank\" href=\"https://sportstar.thehindu.com/newstag/ISL/?utm=bodytag\" style=\"\">ISL)&nbsp;</a>intact when it faces&nbsp;<a target=\"_blank\" href=\"https://sportstar.thehindu.com/newstag/atk-mohun-bagan/?utm=bodytag\" style=\"\">ATK Mohun Bagan&nbsp;</a>here at the Mumbai Football Arena on Sunday.</p><p style=\"margin-top: 10px; margin-bottom: 10px;\">Both sides are coming into this game after convincing 2-0 wins in their last games. The Islanders defeated Kerala Blasters while the Mariners were triumphant in the Kolkata Derby against arch-rivals East Bengal.</p>', '2022-11-06 06:54:44', '2022-11-17 04:08:56', 1, 'TODAYS-ISL-MATCH||-MOHUN-BAGAN-VS-MUMBAI-CITY-FC', '79d4982c1e213ceafb38a8d415798c7d.jpg'),
(4, 'ISL 2022-23: Sahal stars as Kerala Blasters beats NorthEast United 3-0', 12, 2, '<p style=\"margin-top: 10px; margin-bottom: 10px;\">Mumbai City FC will take the field on Sunday with the psychological advantage of being unbeaten against ATK Mohun Bagan in the league.</p><p style=\"margin-top: 10px; margin-bottom: 10px;\">Head coach Des Buckingham is expected to make no changes to the eleven that started against the Blasters. Alberto Noguera is expected to start from the bench as Greg Stewart takes his place in the midfield, allowing Jorge Diaz to operate upfront.</p><p style=\"margin-top: 10px; margin-bottom: 10px;\">Diaz is expected to be flanked by Lallianzuala Chhangte and Bipin Singh. The duo has started every game for the host so far this season. Defender Mehtab Singh has pocketed three Hero of the Match awards in four games so far and will start alongside Rostyn Griffiths in defence.</p>', '2022-11-06 07:01:30', '2022-11-16 08:02:38', 1, 'ISL-2022-23:-Sahal-stars-as-Kerala-Blasters-beats-NorthEast-United-3-0', 'bf34953f60d73d97e6e7d26a7eacf8e5.jpg'),
(5, 'England crush India to set up T20 World Cup final clash against Pakistan ', 12, 3, '<p style=\"margin-bottom: 3rem; line-height: 1.62; -webkit-font-smoothing: antialiased;\"><b>Alex Hales and Jos Buttler crush India</b></p><p style=\"margin-bottom: 3rem; line-height: 1.62; -webkit-font-smoothing: antialiased;\">The England opening duo put on a stellar show in Adelaide as they went on the charge against the Indian bowlers right from the beginning of their innings. It was Hales, who smashed the Indian bowlers earlier in the innings as Buttler played the second fiddle. But the English skipper joined the party in the second half of the innings, as soon as England got a firm grip on the match.</p>', '2022-11-10 12:58:33', NULL, 1, 'England-crush-India-to-set-up-T20-World-Cup-final-clash-against-Pakistan-', '21b32434a95678dadf7c18f3e2c96331.jpg'),
(11, 'Kantara: Rishab Shetty’s Film To Add More Box Office Numbers To Its Already Blockbuster Run With Its Tulu Version, Here’s When It’ll Be Releasing', 19, 11, '<p style=\"margin-bottom: 26px; line-height: 26px;\">Kantara has been breaking every record possible. Directed and acted by Rishab Shetty has been receiving an immense amount of love and appreciation for the movie. This much-loved Kannada thriller drama has been dubbed into Telugu, Hindi, Tamil, and Malayalam. Now, as per reports, it seems Rishab Shetty’s masterpiece is going to be dubbed in the Tulu version. Scroll below to find out its release date.</p><p style=\"margin-bottom: 26px; line-height: 26px;\">Ever since Kantara was released, the movie became popular just because of word of mouth. It has minted massive box office numbers be it from Hindi, Telugu or Kannada.</p>', '2022-11-16 13:48:25', NULL, 1, 'Kantara:-Rishab-Shetty’s-Film-To-Add-More-Box-Office-Numbers-To-Its-Already-Blockbuster-Run-With-Its-Tulu-Version,-Here’s-When-It’ll-Be-Releasing', '5f5f93347eca4e4093cf47280fdcf25f.jpg'),
(12, 'India showed world how to democratise technology, use it as a weapon against poverty: Prime Minister Narendra Modi', 15, 8, '<p><span style=\"cursor: pointer;\">Prime Minister Narendra Modi informs participants of Bengaluru Tech Summit that during the Covid-19 pandemic, when many countries were struggling without the infrastructure to deliver healthcare to their people, India showed how technology can be harnessed for good causes</span><br></p>', '2022-11-16 13:59:24', NULL, 1, 'India-showed-world-how-to-democratise-technology,-use-it-as-a-weapon-against-poverty:-Prime-Minister-Narendra-Modi', '178980511bd7383ea9315b761367094f.jpg'),
(13, 'Allu Arjun introduces Pushpa The Rule catchphrase at event, says ‘Asalu Thaggedhe Le’.', 19, 11, '<p>Actor&nbsp;<a target=\"_blank\" href=\"https://www.hindustantimes.com/topic/allu-arjun\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word;\">Allu Arjun</a>&nbsp;is all set to commence shooting for Pushpa: The Rule, also known as Pushpa 2, this month. On Sunday, speaking at an event for his brother Allu Sirish’s new film, he finally gave fans an exciting update about Pushpa 2. Arjun went on to introduce the new catchphrase for the second part and said that he hopes that the excitement he has for the movie touches the fans as wel<br></p>', '2022-11-16 14:05:18', '2022-11-16 14:06:36', 1, 'Allu-Arjun-introduces-Pushpa-The-Rule-catchphrase-at-event,-says-‘Asalu-Thaggedhe-Le’.', 'e3c4180397ed256dff57505b4dc0e84d.jpg'),
(14, 'PM meets Xi, Biden in Bali; talks with 8 leaders today', 15, 8, '<p style=\"font-family: Faustina, serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 28px; letter-spacing: 0.05px;\">Prime Minister Narendra Modi held talks with U.S. President Joseph Biden and exchanged words with Chinese President Xi Jinping on the sidelines of the G-20 summit in Bali on Tuesday.</p><div class=\"\" id=\"articlediv1\" style=\"font-family: Merriweather, serif; color: rgb(33, 37, 41); font-size: 16px;\"></div><p style=\"font-family: Faustina, serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 28px; letter-spacing: 0.05px;\">On Wednesday, Mr. Modi is expected to hold more structured, bilateral meetings with at least eight of the 16 leaders present in Bali for the annual meeting of the world’s most advanced economies, including his first such interaction with the U.K.’s Prime Minister Rishi Sunak and Italy’s Giorgia Meloni.</p>', '2022-11-16 15:11:12', '2022-11-16 15:18:54', 1, 'PM-meets-Xi,-Biden-in-Bali;-talks-with-8-leaders-today', '5003291433af48c1deef3758305a5fca.jpg'),
(15, 'Veteran Telugu actor Krishna passes away', 19, 11, '<p style=\"font-family: Faustina, serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 28px; letter-spacing: 0.05px;\"><a href=\"https://www.thehindu.com/news/national/telangana/superstar-krishna-continues-to-be-critical-after-cardiac-arrest/article66136609.ece\" target=\"_self\" style=\"cursor: pointer; letter-spacing: 0.05px; background-color: rgb(255, 255, 255); color: rgb(176, 0, 32) !important; text-decoration-line: underline !important;\">He was being treated at Continental Hospitals in Hyderabad, reportedly following a cardiac arrest</a><span style=\"letter-spacing: 0.05px;\">. He was 79 and is survived by a son and actor Mahesh Babu, and daughters Padmavati, Manjula, and Priyadarshini. Krishna’s passing comes barely weeks after the demise of his first wife Indira Devi on September 28, 2022. His second wife Vijaya Nirmala passed away in 2019. His eldest son Ramesh Babu too is no more.</span></p><p style=\"font-family: Faustina, serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 28px; letter-spacing: 0.05px;\"><span style=\"letter-spacing: 0.05px;\">Condolences have been pouring in from film personalities across the country, political dignitaries, and millions of fans. Telangana Chief Minister K. Chandrasekhar Rao condoled the death while TPCC president, A. Revanth Reddy hailed him as a hero who brought dynamism into Telugu films introducing Hollywood kind portrayals.</span><span style=\"letter-spacing: 0.05px;\"><br></span><br></p>', '2022-11-16 15:33:57', NULL, 1, 'Veteran-Telugu-actor-Krishna-passes-away', 'cb74e92a5afe25149e39302188318aa6.jpg'),
(16, 'India deploys new docks, upgrades speedboats for Pangong Tso patrol', 15, 8, '<div class=\"article-picture top-pic \" style=\"\"><h3 style=\"margin-top: 25px; margin-bottom: 25px; line-height: 28px;\">Early 2021, the Army had signed two contracts for the landing craft and speed boats which were delivered in the second half of 2021.<br>At the end of December, under a ₹65 crore contract for 12 specialised patrol craft with Goa Shipyard Limited (GSL). The second contract for 17 troop-carrying, flat-bottom fibre glass landing docks was signed with a private manufacturer also in Goa. The landing craft are capable of carrying 35 troops or one jeep and 12 personnel, while the speed boats can reach speeds of 35 knots, officials said.</h3><p class=\"caption\" style=\"color: rgb(0, 0, 0); font-family: &quot;Merriweather Sans&quot;, sans-serif; font-size: 14px; margin-top: 10px; margin-bottom: 15px; line-height: 20px; letter-spacing: -0.2px;\"><br></p></div>', '2022-11-17 04:00:37', '2022-11-17 04:02:05', 1, 'India-deploys-new-docks,-upgrades-speedboats-for-Pangong-Tso-patrol', '8dbd34eb50c5db8aea1399244b120a8c.jpg'),
(17, 'Apple TV 4K (2022) review: Gaming is the secret weapon', 13, 6, '<p class=\"no_first_intro_para\" style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">Over the past few years, I thought of getting an Apple TV for my room on multiple occasions. In fact, I almost bought an Apple TV from Best Buy in New York some time back but changed my mind at the last minute. I live in the Apple ecosystem but the Apple TV never really drew my interest. But this time, the Apple Arcade subscription service has made me a believer in the tiny little streaming box. I started using the new Apple TV a few days back, and quickly it has become my favourite device to game on.</p><p><ev-engagement group-name=\"contentLogin\" style=\"\"></ev-engagement><ev-engagement group-name=\"myNotification\" style=\"\"></ev-engagement></p><div class=\"ev-meter-content\" style=\"margin: 0px; padding: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline;\"><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">Here are my thoughts on Apple TV 4K and who should and who shouldn’t invest in a streaming box that can download apps and stream services as well as play games.</p></div>', '2022-11-17 04:19:09', '2022-11-17 04:19:38', 1, 'Apple-TV-4K-(2022)-review:-Gaming-is-the-secret-weapon', 'e8c337c23584f0c707a2af2c322bc689.jpg'),
(18, 'NVIDIA announces multi-year collaboration with Microsoft to build “massive” AI computer ', 13, 6, '<p style=\"font-family: Faustina, serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 28px; letter-spacing: 0.05px;\">The U.S.-based chip designer and computing firm will be providing tens of thousands of GPUs, Quantum-2 InfiniBand, and its full stack of AI software to Azure. Microsoft and global enterprises will use the platform for rapid and cost-effective AI development and deployment, the company shared in a blog.</p><p style=\"font-family: Faustina, serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 28px; letter-spacing: 0.05px;\">The collaboration will see Microsoft Azure’s advanced supercomputing infrastructure combined with NVIDIA GPUs, networking, AI workflows, and software development kits.</p>', '2022-11-17 08:20:58', NULL, 1, 'NVIDIA-announces-multi-year-collaboration-with-Microsoft-to-build-“massive”-AI-computer-', 'e3bbd72340da1ffb4222dbc5768673d3jpeg'),
(20, 'TVS Motor plans to ramp up EV capacity to 25,000 units by March', 16, 13, '<p style=\"font-family: Faustina, serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 28px; letter-spacing: 0.05px;\">TVS Motor Company has drawn up plans to ramp up its electric vehicle (EV) capacity to meet its target of 25,000 units by March 2023.</p><div class=\"\" id=\"articlediv1\" style=\"font-family: Merriweather, serif; color: rgb(33, 37, 41); font-size: 16px;\"></div><p style=\"font-family: Faustina, serif; margin-top: 25px; margin-bottom: 25px; font-size: 19px; line-height: 28px; letter-spacing: 0.05px;\">Sales of e-scooter iQube (electric scooter) are doing well, with October wholesales at about 8,000 units, director and CEO K.N. Radhakrishnan said in an earnings call.</p>', '2022-11-18 04:29:09', '2022-11-19 05:39:52', 0, 'TVS-Motor-plans-to-ramp-up-EV-capacity-to-25,000-units-by-March', '393d8e2b016fdd38aad47f9adb54a9c7.jpg'),
(21, 'Railways to fence tracks to avoid cattle hits', 15, 8, '<p class=\"no_first_intro_para\" style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">The Railways has decided to construct fencing on the lines of NHAI crash barriers on the national highways, at key points on the route of Ahmedabad-Mumbai Vande Bharat Express which courted controversies after&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline;\"><a href=\"https://indianexpress.com/article/india/as-cattle-hits-rise-railways-toys-with-idea-of-fencing-along-tracks-8272700/\" class=\"\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline-style: initial; outline-width: 0px;\">hitting cattle multiple times</a>&nbsp;</span>and running over a person.</p><p><ev-engagement group-name=\"contentLogin\" style=\"\"></ev-engagement><ev-engagement group-name=\"myNotification\" style=\"\"></ev-engagement></p><div class=\"ev-meter-content\" style=\"margin: 0px; padding: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline;\"><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">Similarly, oil-coated bamboos will be used to make cattle barriers along the tracks in the Ghaziabad-Kanpur section in UP, which sees the largest number of cattle run over by trains.</p><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">The Railways has written to the Western Railway to construct the fencing at encroachment-prone areas along the 400-km Vande Bharat route.</p></div>', '2022-11-22 12:52:58', '2022-11-23 02:56:41', 1, 'Railways-to-fence-tracks-to-avoid-cattle-hits', '7a2689e485c3fc45314896ae72253a41.jpg'),
(22, 'Gujarat Assembly elections | BJP fights complacency, works hard to bring voters to the polling booth', 14, 14, '<p style=\"margin-top: 25px; margin-bottom: 25px; line-height: 28px;\"><a href=\"https://www.thehindu.com/elections/gujarat-assembly/gujarat-assembly-polls-1621-candidates-in-the-fray/article66169444.ece\" target=\"_self\" style=\"cursor: pointer;\">This round of polls in Gujarat&nbsp;</a>elicits various responses, none as strong as the&nbsp;<a href=\"https://www.thehindu.com/elections/gujarat-assembly/gujarat-assembly-polls-pm-modi-takes-dig-at-rahul-gandhi-says-those-dethroned-taking-out-yatra-to-get-back-to-power/article66164395.ece\" target=\"_self\" style=\"cursor: pointer;\">supposed inevitability of a BJP win</a>, the only people not so sanguine about result day, however, are party old timers, who are intent on whipping the vote out come polling day.&nbsp;</p><div class=\"\" id=\"articlediv1\" style=\"\"></div><p style=\"margin-top: 25px; margin-bottom: 25px; line-height: 28px;\">At his election office in the Sabarmati Assembly constituency in Ahmedabad, Harshad Patel, a long time election agent for Union Home Minister Amit Shah, and<a href=\"https://www.thehindu.com/elections/gujarat-assembly/gujarat-assembly-polls-son-rise-in-20-seats-as-bjp-congress-field-dynasts/article66163577.ece\" target=\"_self\" style=\"cursor: pointer;\">&nbsp;finally a candidate himself</a>&nbsp;for the seat, says that while he has no doubt the BJP will win, he has set a target for himself, of ensuring 75% voting on polling day. “Our&nbsp;<font face=\"Merriweather, serif\"><span style=\"font-size: 19px; letter-spacing: 0.05px;\">karyakartas</span></font>&nbsp;get their best out in a state of struggle, this election is not like the last time around and therefore we need to set proper tasks on getting the vote out,” said Mr. Patel.&nbsp;</p>', '2022-11-23 12:55:26', NULL, 1, 'Gujarat-Assembly-elections-|-BJP-fights-complacency,-works-hard-to-bring-voters-to-the-polling-booth', 'aa84e03dc6943b464d172b3a6032bc1a.jpg'),
(23, 'J&K High Court summons three senior advocates for misconduct', 14, 7, '<p style=\"margin-top: 25px; margin-bottom: 25px; line-height: 28px;\">Three senior advocates of the Kashmir valley, who held official positions in the Kashmir High Court Bar Association (KHCBA) in the past, have been asked to present themselves before the&nbsp;Disciplinary Committee of the Jammu &amp; Kashmir and Ladakh High Court.</p><div class=\"\" id=\"articlediv1\" style=\"\"></div><p style=\"margin-top: 25px; margin-bottom: 25px; line-height: 28px;\">“You are hereby summoned to appear before this Committee on December 17, 2022 at 10:30 a.m. at the High Court J&amp;K and Ladakh at Srinagar in the complaint before the Disciplinary Committee,” the summon, issued on Tuesday, reads.</p>', '2022-11-23 13:03:31', NULL, 1, 'J&K-High-Court-summons-three-senior-advocates-for-misconduct', 'c6e0b6cfeeb9067f7ea2a6da9d21df43.jpg'),
(24, '‘Ram-Ram japna, paraya leader apna’, slams KCR daughter, as raids on TRS leaders, kin continue', 14, 7, '<div style=\"margin: 0px; padding: 0px;\"><p class=\"no_first_intro_para\" style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">There is consternation in the Telangana Rashtra Samithi (TRS) camp, with the Income Tax department and Enforcement Directorate beginning raids on relatives of Telangana ministers on Wednesday. A massive IT raid was on till evening at the Hyderabad offices, residences and properties linked with state Labour and Employment Minister C Malla Reddy, his two sons and son-in-law, on allegations of tax evasion.</p><ev-engagement group-name=\"contentLogin\" style=\"\"></ev-engagement><ev-engagement group-name=\"myNotification\" style=\"\"></ev-engagement><div class=\"ev-meter-content\" style=\"margin: 0px; padding: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline;\"><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">Simultaneously, the ED is conducting a probe against the brother of the Minister for Backward Classes Welfare and Civil Supplies, Gangula Kamalakar. The ED is also investigating a brother of Animal Husbandry Minister Talasani Srinivas Yadav. Party sources said they expect several ministers and MLAs who own construction firms or are into real estate, education or liquor businesses, to be raided by central agencies at any time.</p></div></div>', '2022-11-23 13:12:53', NULL, 1, '‘Ram-Ram-japna,-paraya-leader-apna’,-slams-KCR-daughter,-as-raids-on-TRS-leaders,-kin-continue', '81d0f6bc896ca5f84df6f6f89e81eaac.jpg'),
(25, 'Bihar gets investment proposals worth Rs 63,000 crore, almost half in ethanol sector', 16, 13, '<p class=\"no_first_intro_para\" style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">The cumulative worth of proposals for setting up ethanol units before the Bihar State Investment Promotion Board (SIPB) is almost half of the total proposed investment amount, according to the industries department data.</p><p><ev-engagement group-name=\"contentLogin\" style=\"\"></ev-engagement><ev-engagement group-name=\"myNotification\" style=\"\"></ev-engagement></p><div class=\"ev-meter-content\" style=\"margin: 0px; padding: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline;\"><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">While investment proposals worth Rs 63,008 crore were received till November 10, proposals worth Rs 30,747 crore were for setting up 164 ethanol units.</p><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">The first ethanol unit in the state started functioning in&nbsp;<a href=\"https://indianexpress.com/elections/purnia-lok-sabha-election-results/\" class=\"\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline-style: initial; outline-width: 0px;\">Purnia</a>&nbsp;this April. The Rs 105-crore plant by Eastern India Biofuels Pvt Ltd was the first one developed since the Centre gave a go-ahead to Bihar’s ethanol production and promotion policy.</p></div>', '2022-11-23 13:14:43', NULL, 1, 'Bihar-gets-investment-proposals-worth-Rs-63,000-crore,-almost-half-in-ethanol-sector', '832e615586bdb9cc0e55401ae53032e6.jpg'),
(26, 'Inox Green shares make tepid market debut; fall nearly 8%', 16, 13, '<p class=\"no_first_intro_para\" style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">Shares of&nbsp;<a href=\"https://indianexpress.com/article/business/market/inox-green-ipo-share-allotment-today-status-how-to-check-online-8274256/\" target=\"_blank\" rel=\"noopener\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline-style: initial; outline-width: 0px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline;\">Inox Green Energy Services</span></a>, a subsidiary of Inox Wind, made a tepid market debut on Wednesday, listing with a discount of nearly 8 per cent against the issue price of Rs 65.</p><p><ev-engagement group-name=\"contentLogin\" style=\"\"></ev-engagement><ev-engagement group-name=\"myNotification\" style=\"\"></ev-engagement></p><div class=\"ev-meter-content\" style=\"margin: 0px; padding: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline;\"><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">The stock listed at Rs 60.50, a fall of 6.92 per cent from the issue price on the BSE. It further declined 8.92 per cent to Rs 59.20.</p><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">On the NSE, the shares of the firm made its debut at Rs 60, a discount of 7.69 per cent.</p></div>', '2022-11-23 13:17:30', NULL, 1, 'Inox-Green-shares-make-tepid-market-debut;-fall-nearly-8%', 'a21b362f02a261abf1884fa16d537870.jpg'),
(27, 'India-bound 2023 Kia Seltos facelift unveiled – Now in pictures', 13, 15, '<p data-t=\"{&quot;n&quot;:&quot;blueLinks&quot;}\" style=\"margin-bottom: 16px; color: rgb(245, 245, 245); font-family: Roboto, Arial, Sans-sarif; font-size: 17px; background-color: rgb(36, 36, 36);\"><a href=\"https://www.carwale.com/kia-cars/\" title=\"Kia\" target=\"_blank\" data-t=\"{&quot;n&quot;:&quot;destination&quot;,&quot;t&quot;:13,&quot;b&quot;:1,&quot;c.t&quot;:7}\" tabindex=\"0\" hasenterkeydown=\"1\" style=\"color: rgb(48, 145, 220);\">Kia</a>&nbsp;unveiled the&nbsp;<a href=\"https://www.carwale.com/kia-cars/seltos/\" title=\"Kia Seltos\" target=\"_blank\" data-t=\"{&quot;n&quot;:&quot;destination&quot;,&quot;t&quot;:13,&quot;b&quot;:1,&quot;c.t&quot;:7}\" tabindex=\"0\" hasenterkeydown=\"1\" style=\"color: rgb(48, 145, 220);\">new Seltos</a>&nbsp;at the 2022 Los Angeles Auto Show. The upcoming new model will be available in both front-wheel drive and all-wheel drive configurations. The new Kia Seltos is expected to be first introduced in the international market sometime in the first half of 2023, followed by India-debut at a later date. Let’s take a closer look at what’s new in the 2023&nbsp;<a href=\"https://www.carwale.com/kia-cars/seltos/\" title=\"Kia Seltos\" target=\"_blank\" data-t=\"{&quot;n&quot;:&quot;destination&quot;,&quot;t&quot;:13,&quot;b&quot;:1,&quot;c.t&quot;:7}\" tabindex=\"0\" hasenterkeydown=\"1\" style=\"color: rgb(48, 145, 220);\">Kia Seltos</a>.&nbsp;</p><p data-t=\"{&quot;n&quot;:&quot;blueLinks&quot;}\" style=\"margin-bottom: 16px; color: rgb(245, 245, 245); font-family: Roboto, Arial, Sans-sarif; font-size: 17px; background-color: rgb(36, 36, 36);\">The fascia is highlighted by a larger tiger nose grille and full-projection LED headlamps. Further, the Star Map signature lighting across the front grille gives it a distinctive character.&nbsp;</p><p data-t=\"{&quot;n&quot;:&quot;blueLinks&quot;}\" style=\"margin-bottom: 16px; color: rgb(245, 245, 245); font-family: Roboto, Arial, Sans-sarif; font-size: 17px; background-color: rgb(36, 36, 36);\">The SUV gets vertically stacked fog lights integrated with DRLs for a modern look, while the redesigned bumper gives it an aggressive stance.</p><p data-t=\"{&quot;n&quot;:&quot;blueLinks&quot;}\" style=\"margin-bottom: 16px; color: rgb(245, 245, 245); font-family: Roboto, Arial, Sans-sarif; font-size: 17px; background-color: rgb(36, 36, 36);\">The side profile is highlighted by bold-wheel arches and new alloy wheels.&nbsp;</p><p data-t=\"{&quot;n&quot;:&quot;blueLinks&quot;}\" style=\"margin-bottom: 16px; color: rgb(245, 245, 245); font-family: Roboto, Arial, Sans-sarif; font-size: 17px; background-color: rgb(36, 36, 36);\">The rear profile features redesigned LED taillights that are connected by a LED strip that runs across the boot lid.&nbsp;</p><p data-t=\"{&quot;n&quot;:&quot;blueLinks&quot;}\" style=\"margin-bottom: 16px; color: rgb(245, 245, 245); font-family: Roboto, Arial, Sans-sarif; font-size: 17px; background-color: rgb(36, 36, 36);\">Post its debut, the new Kia Seltos will offer a first-in-segment panoramic display that combines a 10.25-inch instrument cluster and a 10.25-inch centre display.&nbsp;</p><p data-t=\"{&quot;n&quot;:&quot;blueLinks&quot;}\" style=\"margin-bottom: 16px; color: rgb(245, 245, 245); font-family: Roboto, Arial, Sans-sarif; font-size: 17px; background-color: rgb(36, 36, 36);\">The SUV also gets a 4.2-inch instrument cluster with a digital gauge.&nbsp;</p>', '2022-11-23 14:59:34', '2022-11-24 03:04:04', 1, 'India-bound-2023-Kia-Seltos-facelift-unveiled-–-Now-in-pictures', 'f526270e4c2e60c14f9955d4a37a70ad.jpg'),
(28, 'Watch: Priyanka joins Rahul Gandhi in Madhya Pradesh for Bharat Jodo Yatra', 14, 7, '<p class=\"no_first_intro_para\" style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">Congress leader Rahul Gandhi was joined by Priyanka Gandhi Thursday for the Madhya Pradesh leg of the Bharat Jodo Yatra. Priyanka’s husband Robert Vadra is expected to join the yatra as well.</p><p><ev-engagement group-name=\"contentLogin\" style=\"\"></ev-engagement><ev-engagement group-name=\"myNotification\" style=\"\"></ev-engagement></p><div class=\"ev-meter-content\" style=\"margin: 0px; padding: 0px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline;\"><p style=\"padding: 0px 0px 20px; border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; line-height: 28px;\">Priyanka, who is the general secretary of the Uttar Pradesh Congress, arrived in Indore on Wednesday, as per reports. She joined Rahul early on Thursday, clad in a white salwar kameez with a brown puffer coat.</p></div>', '2022-11-24 03:20:04', '2022-11-24 05:47:13', 1, 'Watch:-Priyanka-joins-Rahul-Gandhi-in-Madhya-Pradesh-for-Bharat-Jodo-Yatra', '2338946e377747fb9eec42250c57113cjpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 9, 'Menu', 'Website dynamic menus', '2022-01-22 04:57:13', '2022-11-06 06:51:33', 0),
(2, 12, 'Football', 'football', '2022-11-06 06:52:53', '0000-00-00 00:00:00', 1),
(3, 12, 'Cricket', 'cricket', '2022-11-10 12:56:41', '2022-11-13 05:38:51', 1),
(5, 13, 'Mobiles', 'mobiles', '2022-11-13 05:39:37', '0000-00-00 00:00:00', 1),
(6, 13, 'Computer', 'pc', '2022-11-13 05:39:49', '0000-00-00 00:00:00', 1),
(7, 14, 'Political Parties', 'parties', '2022-11-13 05:40:22', '0000-00-00 00:00:00', 1),
(8, 15, 'Union territory', 'ut', '2022-11-13 05:40:38', '0000-00-00 00:00:00', 1),
(9, 12, 'Kabaddi', 'g', '2022-11-16 07:57:39', '0000-00-00 00:00:00', 1),
(10, 19, 'Bollywood', 'bollywood movies', '2022-11-16 12:22:50', '0000-00-00 00:00:00', 1),
(11, 19, 'South-Indian Movies', 'south indian movies', '2022-11-16 12:24:24', '2022-11-16 12:24:51', 1),
(12, 13, 'Tv', 'tv news', '2022-11-17 04:20:15', '0000-00-00 00:00:00', 1),
(13, 16, 'Industry', 'industry', '2022-11-18 04:27:15', '0000-00-00 00:00:00', 1),
(14, 14, 'Political parties', 'dsccd', '2022-11-23 12:53:07', '0000-00-00 00:00:00', 1),
(15, 13, 'Cars', 'Cars update', '2022-11-24 03:03:09', '0000-00-00 00:00:00', 1),
(16, 13, 'Cars', 'Cars update', '2022-11-24 03:03:12', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
