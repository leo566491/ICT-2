-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2015 at 06:41 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_agent`
--

-- --------------------------------------------------------

--
-- Table structure for table `allskill`
--

CREATE TABLE IF NOT EXISTS `allskill` (
  `skill_id` int(11) NOT NULL,
  `skill_info` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `allskill`
--

INSERT INTO `allskill` (`skill_id`, `skill_info`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'Back End Development'),
(4, 'Management'),
(5, 'Presentation'),
(6, 'Photoshop');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cate_id` int(11) NOT NULL,
  `cate_info` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `company_address`
--

CREATE TABLE IF NOT EXISTS `company_address` (
  `add_id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  `com_building` text COLLATE utf8_bin,
  `com_address` text COLLATE utf8_bin,
  `com_x` double DEFAULT NULL,
  `com_y` double DEFAULT NULL,
  `com_tel` text COLLATE utf8_bin,
  `com_time` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `company_category`
--

CREATE TABLE IF NOT EXISTS `company_category` (
  `com_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `company_id`
--

CREATE TABLE IF NOT EXISTS `company_id` (
  `com_id` int(11) NOT NULL,
  `com_email` text COLLATE utf8_bin NOT NULL,
  `com_password` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `company_id`
--

INSERT INTO `company_id` (`com_id`, `com_email`, `com_password`) VALUES
(2, 'com@com', 'com');

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE IF NOT EXISTS `company_info` (
  `com_id` int(11) NOT NULL,
  `com_sname` text COLLATE utf8_bin,
  `com_lname` text COLLATE utf8_bin NOT NULL,
  `com_no` text COLLATE utf8_bin,
  `com_photo` text COLLATE utf8_bin,
  `com_web` text COLLATE utf8_bin,
  `com_info` text COLLATE utf8_bin,
  `com_size` text COLLATE utf8_bin,
  `com_u_fname` text COLLATE utf8_bin NOT NULL,
  `com_u_lname` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`com_id`, `com_sname`, `com_lname`, `com_no`, `com_photo`, `com_web`, `com_info`, `com_size`, `com_u_fname`, `com_u_lname`) VALUES
(2, NULL, 'The Dragon', NULL, NULL, NULL, NULL, NULL, 'Zen', 'Le');

-- --------------------------------------------------------

--
-- Table structure for table `employee_education`
--

CREATE TABLE IF NOT EXISTS `employee_education` (
  `edu_id` int(11) NOT NULL,
  `em_id` int(11) NOT NULL,
  `em_academy` text COLLATE utf8_bin NOT NULL,
  `em_major` text COLLATE utf8_bin NOT NULL,
  `em_year` text COLLATE utf8_bin NOT NULL,
  `em_info` text COLLATE utf8_bin
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employee_education`
--

INSERT INTO `employee_education` (`edu_id`, `em_id`, `em_academy`, `em_major`, `em_year`, `em_info`) VALUES
(9, 3, 'Post graduate training in AK, paediatrics, SOT etc an advantage', 'Post graduate training in AK, paediatrics, SOT etc an advantage', 'Sep 1991 - Dec 2020', 'Post graduate training in AK, paediatrics, SOT etc an advantagePost graduate training in AK, paediatrics, SOT etc an advantage'),
(10, 3, 'Advise patients about recommended courses of treatment', 'Advise patients about recommended courses of treatment', 'Sep 1991 - Dec 2014', 'Advise patients about recommended courses of treatmentAdvise patients about recommended courses of treatment');

-- --------------------------------------------------------

--
-- Table structure for table `employee_experience`
--

CREATE TABLE IF NOT EXISTS `employee_experience` (
  `exp_id` int(11) NOT NULL,
  `em_id` int(11) NOT NULL,
  `com_name` text COLLATE utf8_bin NOT NULL,
  `em_period` text COLLATE utf8_bin NOT NULL,
  `em_respon` text COLLATE utf8_bin NOT NULL,
  `em_title` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employee_experience`
--

INSERT INTO `employee_experience` (`exp_id`, `em_id`, `com_name`, `em_period`, `em_respon`, `em_title`) VALUES
(11, 3, 'Salary provided', 'Sep 1991 - Dec 2015', 'you must be qualified as a solicitor', 'you must be qualified as a solicitor');

-- --------------------------------------------------------

--
-- Table structure for table `employee_id`
--

CREATE TABLE IF NOT EXISTS `employee_id` (
  `em_id` int(11) NOT NULL,
  `em_email` text COLLATE utf8_bin NOT NULL,
  `em_password` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employee_id`
--

INSERT INTO `employee_id` (`em_id`, `em_email`, `em_password`) VALUES
(3, 'per@per', 'per');

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE IF NOT EXISTS `employee_info` (
  `em_id` int(11) NOT NULL,
  `em_pic` text COLLATE utf8_bin,
  `em_birth` bigint(20) DEFAULT NULL,
  `em_tel` text COLLATE utf8_bin,
  `em_info` text COLLATE utf8_bin,
  `em_skill` text COLLATE utf8_bin,
  `em_fname` text COLLATE utf8_bin NOT NULL,
  `em_lname` text COLLATE utf8_bin NOT NULL,
  `em_title` text COLLATE utf8_bin,
  `em_industry` text COLLATE utf8_bin,
  `em_location` text COLLATE utf8_bin,
  `em_doc` text COLLATE utf8_bin
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`em_id`, `em_pic`, `em_birth`, `em_tel`, `em_info`, `em_skill`, `em_fname`, `em_lname`, `em_title`, `em_industry`, `em_location`, `em_doc`) VALUES
(3, '11748592_10153980852000130_212858222_n.jpg', 1049304094, '55554542', 'My name is A prominent and fast growing international law firm is seeking an \r\nexperienced Associate to join its fast growing Funds team in Singapore.<br>\r\n The role will entail a great exposure to private funds, hedge funds and\r\n listed funds.You will be working with a great variety of multinational \r\nclients on high profile matters. You will also be providing high level \r\nregulatory advice with respect to investment funds and advising clients \r\non key issues pertaining to fund formation, fund performance and \r\ninvestment transactions.', 'I have to be considered for this position, you must be qualified as a solicitor\r\n in England &amp; Wales or equivalent common law jurisdiction. You must \r\nalso possess between 5 and 9 years of relevant legal experience, with a \r\nsubstantial amount of experience in funds and financial services. Prior \r\nexperience from an international law firm is highly desirable for this \r\nposition.', 'Anh', 'Tuan', 'Experienced Funds Lawyer', 'Financial', 'Vietnam', 'RMA-1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `employee_skill`
--

CREATE TABLE IF NOT EXISTS `employee_skill` (
  `em_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employee_skill`
--

INSERT INTO `employee_skill` (`em_id`, `skill_id`) VALUES
(2, 1),
(2, 2),
(3, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `job_apply`
--

CREATE TABLE IF NOT EXISTS `job_apply` (
  `job_id` int(11) NOT NULL,
  `em_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `job_filter`
--

CREATE TABLE IF NOT EXISTS `job_filter` (
  `job_id` int(11) NOT NULL,
  `job_cmin` int(11) NOT NULL,
  `job_cmax` int(11) NOT NULL,
  `job_type` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `job_filter`
--

INSERT INTO `job_filter` (`job_id`, `job_cmin`, `job_cmax`, `job_type`) VALUES
(6, 0, 25000, 'Full Time');

-- --------------------------------------------------------

--
-- Table structure for table `job_id`
--

CREATE TABLE IF NOT EXISTS `job_id` (
  `job_id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  `job_title` text COLLATE utf8_bin NOT NULL,
  `job_info` text COLLATE utf8_bin NOT NULL,
  `job_location` text COLLATE utf8_bin NOT NULL,
  `job_request` text COLLATE utf8_bin NOT NULL,
  `job_respon` text COLLATE utf8_bin NOT NULL,
  `job_apply` text COLLATE utf8_bin NOT NULL,
  `job_industry` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `job_id`
--

INSERT INTO `job_id` (`job_id`, `com_id`, `job_title`, `job_info`, `job_location`, `job_request`, `job_respon`, `job_apply`, `job_industry`) VALUES
(6, 0, 'SAP Data Migration Consultant', 'Other important information <span style="font-size: 10pt;">to elevate the FCBCâ??s corporate identity \r\nand branding, including spearheading its internal and external \r\ncommunication needs. Each member of the team leads the development and \r\nimplementation of strategic Corporate Communication initiatives using \r\nvarious forms of media, while ensuring consistency in communication \r\nchannels between the church, its members and the public sphere.</span>', 'Vietnam', 'We require  Apple Genius, you provide insightful advice and friendly, hands-on \r\ntechnical support to Apple customers in need. You quickly diagnose \r\nproduct issues on the spot, explaining situations with patience and \r\nempathy. After determining whether repairs can be done or a replacement \r\nis needed, you offer tech support solutions to quickly get users up and \r\nrunning again. Even if you''re juggling more than one customer, you stay \r\nconscious of their time demands as well as your own. You fulfill Apple''s\r\n service commitment with style, speed, and skill. And you earn the trust\r\n of customers and coworkers alike as you offer guidance, knowledge, and \r\neven tips and training. <br>', '<ul><li>Bachelors/Masterâ??s Degree in IT or Equivalent&nbsp;<br></li><li>Minimum 7 yearsâ?? relevant experience in SAP Data Migration (At least 2-4 implementation)&nbsp;<br></li><li>Experience in SAP Material Master Data Management and Data Migration using LSMW&nbsp;<br></li><li>Experience in Data transformation Procedures, Post data migration data validation procedures&nbsp;<br></li><li>Manage data cleansing projects.&nbsp;<br></li><li>Very good exp in SAP MM modules. Good to have exp in Global projects.&nbsp;<br></li><li>Excellent communication and interpersonal skills. <br></li></ul>', 'Kindly send your application to <ul><li>You have an aptitude for acquiring skills in technical repairs and an eagerness to learn.&nbsp;<br></li><li>You have excellent time management skills and can make decisions quickly.&nbsp;<br></li><li>Youâ??ll need to be flexible with your schedule. Your work hours will be based on business needs. <br></li></ul>', 'Financial');

-- --------------------------------------------------------

--
-- Table structure for table `job_skill`
--

CREATE TABLE IF NOT EXISTS `job_skill` (
  `job_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allskill`
--
ALTER TABLE `allskill`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `company_address`
--
ALTER TABLE `company_address`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `company_id`
--
ALTER TABLE `company_id`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `employee_education`
--
ALTER TABLE `employee_education`
  ADD PRIMARY KEY (`edu_id`);

--
-- Indexes for table `employee_experience`
--
ALTER TABLE `employee_experience`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `employee_id`
--
ALTER TABLE `employee_id`
  ADD PRIMARY KEY (`em_id`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`em_id`);

--
-- Indexes for table `job_filter`
--
ALTER TABLE `job_filter`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `job_id`
--
ALTER TABLE `job_id`
  ADD PRIMARY KEY (`job_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allskill`
--
ALTER TABLE `allskill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `company_address`
--
ALTER TABLE `company_address`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `company_id`
--
ALTER TABLE `company_id`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employee_education`
--
ALTER TABLE `employee_education`
  MODIFY `edu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `employee_experience`
--
ALTER TABLE `employee_experience`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `employee_id`
--
ALTER TABLE `employee_id`
  MODIFY `em_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `em_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `job_filter`
--
ALTER TABLE `job_filter`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `job_id`
--
ALTER TABLE `job_id`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
