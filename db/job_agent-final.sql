-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2016 at 12:03 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

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
  `skill_info` text COLLATE utf8_bin
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `allskill`
--

INSERT INTO `allskill` (`skill_id`, `skill_info`) VALUES
(1, 'Html'),
(2, 'Css'),
(3, 'Java'),
(4, 'C++'),
(5, 'Recrutment');

-- --------------------------------------------------------

--
-- Table structure for table `company_id`
--

CREATE TABLE IF NOT EXISTS `company_id` (
  `com_id` int(11) NOT NULL,
  `com_email` text COLLATE utf8_bin NOT NULL,
  `com_password` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `company_id`
--

INSERT INTO `company_id` (`com_id`, `com_email`, `com_password`) VALUES
(1, 'work@lazada.sg', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(2, 'dfc@de-factors.com.sg ', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(3, 'find_us@jstudio.sg', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(4, 'sales@todaycareer.com.sg', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(5, 'temps01@bgc-group.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(6, 'contact @hudson.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(7, 'recruit@masspower.com.sg', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(8, 'contact_us@dbs.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(9, 'jolene.yee@randstad.com.sg', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(10, 'sg.enqpreschool@mindchamps.org', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257');

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE IF NOT EXISTS `company_info` (
  `com_id` int(11) NOT NULL,
  `com_name` text COLLATE utf8_bin NOT NULL,
  `com_no` text COLLATE utf8_bin,
  `com_photo` text COLLATE utf8_bin,
  `com_web` text COLLATE utf8_bin,
  `com_info` text COLLATE utf8_bin,
  `com_size` text COLLATE utf8_bin,
  `com_u_fname` text COLLATE utf8_bin NOT NULL,
  `com_u_lname` text COLLATE utf8_bin NOT NULL,
  `com_email` text COLLATE utf8_bin,
  `com_tel` text COLLATE utf8_bin,
  `com_address` text COLLATE utf8_bin,
  `com_lati` double DEFAULT NULL,
  `com_longi` double DEFAULT NULL,
  `com_industry` text COLLATE utf8_bin
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`com_id`, `com_name`, `com_no`, `com_photo`, `com_web`, `com_info`, `com_size`, `com_u_fname`, `com_u_lname`, `com_email`, `com_tel`, `com_address`, `com_lati`, `com_longi`, `com_industry`) VALUES
(1, 'Lazada', '201201679C', 'Company1.jpg', 'www.lazada.com/work-at-lazada/', 'Company Description: Launched in 2012, Lazada Group operates Lazada, Southeast Asias’s number one online shopping and selling destination, with presence in Indonesia, Malaysia and Philippines, Singapore, Thailand and Vietnam. Lazada has earned the trust and financial backing of key investors including Tesco, Temasek, J.P Morgan, Verlinvest, Investment AB Kinnevik and Rocket Internet.\r\nLazada group has grown rapidly to include approximately 4000 employers across Southeast asia. The Company has an online footprint of more than four million daily visits to its sites and mobile apps, and the largest Facebook following in Southeast Asia with over 12 million fans.\r\nGiven our tremendous growth, we are searching for dynamic, entrepreneurial, broadminded individuals to be part of our success story. Join our diverse and motivated team to hone your creativity and lead new initiatives within a nurturing, equal opportunity environment.', 'More than 5000 employees', 'test', 'test', 'work@lazada.sg', '+65- 94940281', '8 Shenton Way, AXA Tower, #43-01, Singapore 068811\r\n', 1.275912, 103.847294, 'General & Wholesale Trading'),
(2, 'De-factors', '96C3114', 'Company2.jpg', 'www.defactors.com.sg', 'De-Factors Consultants Pte Ltd is a Singapore Registered Company and approved by Singapore Ministry of Manpower as a Recruitment, Search and Consultancy Firm in early 1996\r\nDe-Factors Consultants Pte Ltd is committed to global outlook in today’s world economy. Services available:\r\n•	Temporary/Part-Time Placement\r\n•	Temporary to Permanent Placement \r\n•	Contract Placement\r\n•	Permanent Placement\r\n•	Foreign Recruitment\r\n•	Executive Search Placement\r\n•	Business Management & Consultancy Services\r\n•	Payroll Services\r\n•	Human Capital Strategy Solutions\r\n•	Outsourcing\r\n•	Employment Pass/ Work Permit Application\r\nThe People: Professionalism, Integrity and Commitment. These are the three main attributes in which De-Factors Consultants Pte Ltd looks into\r\n', '51-200 employees', 'test', 'test', 'dfc@de-factors.com.sg ,engineering@de-factors.com.sg ', '+65- 91237281', '10 International Plaza Anson Road 19-11 Singapore 079903', 1.276014, 103.845435, 'Human Resources Management/Consulting'),
(3, 'JOBSTUDIO PTE LTD', '10C4754', 'Company3.jpg', 'www.jobstudio.com.sg/', 'JOBSTUDIO Pte Ltd (EA License No.:10C4754) is a dynamic professional staffing and search service provider in Singapore. We operate across the private and public sectors, dealing with permanent and contract roles across a wide range of specialized industries and professions. We are dedicated to help both employers and employees to navigate in the ever-changing world of work cultures and demands.\r\n\r\nOur team is focused to bring innovative and strategic solutions to both clients and candidates and we achieve this by maintaining the highest levels of confidentiality, trust and integrity within the core industries.\r\nVisit us online via www.jobstudio.com.sg for an non-obligatory discussion & registration with our friendly Representatives TODAY!\r\n \r\n“Your written and/or verbal response to JOBSTUDIO Pte Ltd advertisements will constitute informed consent to the collection, use and /or disclosure of personal data by JOBSTUDIO Pte Ltd for its business purpose in compliance with the relevant provisions of the Personal Data Protection Act 2012."\r\n', '1000-2000 employees', 'test', 'test', 'find_us@jstudio.sg', '+65- 6920 7281', '5 Anson Rd, 079901', 1.274916, 103.845721, 'Education/Medical Services'),
(4, 'Today''s Career Pte Ltd', '96C3160', 'Company4.jpg', 'www.todaycareer.com.sg', 'Founded in 1996, TODAY’S CAREER PTE. LTD. (EA Licence: 96C3160) is a prominent award winning leader in HR recruitment services with a notable reputation for giving expert, personalised and reliable recruitment services to our clients and candidates. We are a proud member of Singapore Staffing Association. Over the last two decades, TODAY’S CAREER has consistently won numerous accolades for our notable work in the recruitment industry. Winning corporate clients’ voting to be Top 10 HR Vendors 2012 (Recruitment Agencies) by Human Resources Magazines, the Top 10 Luminary Award for Asia Pacific Brand 2015 and the Promising SME 500 2015.\r\nTODAY’S CAREER offers a wide clientele base, ranging from Multinational Companies, Global Organizations, Listed Companies, Local Companies, Small & Medium Enterprises, Government sectors and Civil Services.  All of our staff are highly trained in recruiting qualified, professional and skilled people across a wide range of industries. We consistently perform with the highest levels of integrity to earn the trust of all our business partners to deliver excellent recruitment solutions in Executive Placements for Top management posts and all permanent, temporary & contract positions. Whether you’re new to the workforce or have decided on a career change, TODAY’S CAREER PTE. LTD. can help in matching suitable job for you. Thus, you have unlimited choices of career opportunities.\r\n', '700-800 employees', 'test', 'test', 'sales@todaycareer.com.sg', '+65- 9238978', '10 Anson Road International Plaza #30-13\r\nSingapore 079903', 1.275906, 103.847335, 'Education'),
(5, 'BGC Search – ICE', '12C5983 ', 'Company5.jpg', 'www.b&gsearch.com.sg', 'BGC Search is an international recruitment and search firm that identifies and delivers human capital solutions, a key aspect to every successful company''s growth. We strongly believe that the quest for talent is not transitory, but continuous, and also in fostering enduring relationships built on trust for both employers and job-seekers - key factors in every company. Through established offices in Singapore, Hong Kong, Kuala Lumpur and Jakarta, BGC Search is committed to driving our clients’ successes. Through our people-oriented approach, we initiate and build strong partnerships and serve as a valuable extension to our clients'' businesses.', '1000-2000 employees', 'test', 'test', 'temps01@bgc-group.com', '+65- 6557 0707 ', '10 Collyer Quay, #06-07/08/09/10 Ocean Financial Centre,Singapore 049315', 1.283028, 103.852016, 'Public Sector / Stat Board'),
(6, 'Hudson', '03C4590 ', 'Company6.jpg', 'www.hudson.com ', 'Hudson is a leading provider of permanent recruitment, contract professionals and talent management services worldwide. From single placements to total outsourced solutions, Hudson helps clients achieve greater organisational performance by assessing, recruiting, developing and engaging the best and brightest people for their businesses. The company employs more than 2,000 professionals serving clients and candidates in approximately 20 countries. More information is available at hudson.com.', '10000-20000 employees', 'test', 'test', 'contact @hudson.com', '+65- 6777 0767 ', '20 McCallum St, 069046', 1.279552, 103.847941, 'Banking'),
(7, 'Mass Power Services Pte Ltd', '03C3681 ', 'Company7.jpg', 'www.masspower.com.sg', 'Mass Power Services Pte Ltd, is a recruitment & HR Consultancy Company established since 2003 and is conveniently located at town and hopes to cater to the needs of our clients of the best of our abilities, both in quality and speed. We have a team of trained Recruitment Consultants and Head Hunters to carry out a wide range of recruitment services for both local and international Companies with the following professional services:\r\n•	Permanent/Temporary/ Contract Placement\r\n•	Executive Search\r\n•	Contract Staffing\r\n•	International Recruitment (China, Malaysia, India and Philippines)\r\n•	Payroll / HR Consultant Services\r\n•	Outplacement / Outsourcing\r\n•	On-Line Work Permit Application\r\nOur Purpose: Growing People, Growing Organisations\r\n•	To match aspiring individuals to inspiring organisations\r\n•	To help organisations enhance business success through people solutions\r\nAt Mass Power, we aim to become the ICON in Asia in staffing, recruitment and HR consultancy. We dedicate our expertise and inspiring organisations optimize corporate performance.\r\n', '5000-10000 employees', 'test', 'test', 'recruit@masspower.com.sg', '+65- 9604 0467 ', '1 Sophia Road, #04-04, Peace Centre, 228149', 1.301511, 103.849561, 'Banking'),
(8, 'DBS Bank Ltd', '03C68932 ', 'Company8.jpg', 'www.dbs.com.sg', 'DBS is a leading financial services group in Asia, with over 280 branches across 18 markets. Headquartered and listed in Singapore, DBS has a growing presence in the three key Asian axes of growth: Greater China, Southeast Asia and South Asia. The bank''s capital position, as well as "AA-" and "Aa1" credit ratings, is among the highest in Asia-Pacific. DBS has been recognised for its leadership in the region, having been named “Asia’s Best Bank” by The Banker, a member of the Financial Times group, and “Best Bank in Asia-Pacific” by Global Finance. The bank has also been named “Safest Bank in Asia” by Global Finance for seven consecutive years from 2009 to 2015.', '50000-60000 employees', 'test', 'test', 'contact_us@dbs.com', '+65- 9604 0467 ', '460 Alexandra Road #02-33/34 Alexandra Retail Centre Singapore 119963', 1.273673, 103.801381, 'Banking&Financial Services'),
(9, 'Randstad', '94C3609', 'Company9.jpg', 'www.randstad.com.sg', 'Randstad was founded in 1960 by Dutch entrepreneurs and university students Frits Goldschmeding and Ger Daleboudt, who were both studying economics together at the time. Frits had written a thesis about the phenomenon of temporary work and was passionate about the benefits of additional but temporary staff during peak periods. From our humble beginnings (our first ever advertising flyers were created in Frits Goldschmeding''s dorm room in his student house!) - the company has grown to become the world''s second-largest HR service provider. \r\n\r\nRandstad now operates in 39 countries, representing more that 90 percent of the global HR services market, and worldwide Randstad employs around 28,720 of its own staff, whilst 580,300 people are deployed in other companies every day through Randstad. Locally, Randstad has been operating in Singapore since 1993 - and we celebrated our 20th year of providing recruitment services to Singapore businesses in 2013.\r\n\r\nOur mission:\r\nAt Randstad, our company mission is “Shaping the world of work”.\r\nOur passion is matching the best people with the best companies that will develop their potential; and to match companies with innovative talent who will drive their business growth and revenue . In short, we are dedicated to playing a pivotal role in the “World of Work”.\r\n', '5000-6000 employees', 'test', 'test', 'jolene.yee@randstad.com.sg', '+65- 9866 5860 ', '50 Raffles Pl, #17-02/05 Singapore Land Tower, 048623', 1.284542, 103.851951, 'Banking&Financial Services'),
(10, 'MindChamps PreSchool Pte Limited', 'OC232120', 'Company10.jpg', 'www.mindchamps.org', 'MindChamps, the world''s leading specialist in Mind Development Programs, is the only learning institute that collaborates with Emeritus Professor Allan Snyder FRS, Founder of Centre for the Mind (University of Sydney) and Fellow of the Royal Society, the world’s most prestigious scientific fellowship, whose former fellows include Newton and Einstein.\r\n\r\nIncorporating the ground-breaking findings of Emeritus Professor Snyder, MindChamps'' programs empower Pre-School to Tertiary Level Students with the latest and most practical strategies to achieve their full potential, both academically and throughout their life.\r\n\r\nWith its vision of building a world of champions, MindChamps is dedicated to creating and imparting these cutting-edge programs so as to lift the standard of education and social responsibility of this generation of students for the future of humanity.', '500-1000 employees', 'test', 'test', 'www.mindchamps.org', '+65- 6945 2960 ', '490 Lorong 6 Toa Payoh, #05-1 HDB Hub Biz 3, Lift Lobby 2,Singapore, Las Piñas 310490\r\n', 1.332516, 103.848532, 'Education');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employee_education`
--

INSERT INTO `employee_education` (`edu_id`, `em_id`, `em_academy`, `em_major`, `em_year`, `em_info`) VALUES
(1, 1, 'Dublin University', 'Bachelors in Management and Accounting', '2008', NULL),
(2, 2, 'Curtin University\r\n', 'Bachelors in Business Management', '2010', NULL),
(3, 2, 'UWA', 'Masters in Accountancy', '2013', NULL),
(4, 3, 'MDIS Singapore', 'Diploma', '2003', NULL),
(5, 4, 'University of Queensland', 'Bachelors in Accounting', '1999', NULL),
(6, 4, 'University of Dublin', 'Masters in Management in Accounting', '2001', NULL),
(7, 5, 'University of Dublin', 'Bachelors in Logistics\r\n', '2013', NULL),
(8, 6, 'James Cook University', 'Bachelor’s Degree in Finance ', '2006', NULL),
(9, 6, 'Michigan State University', 'Master’s degree in Banking', '2008', NULL),
(10, 7, 'Nanyang Polytechnic', 'Bachelor’s Degree in Nursing and Medical Care', '2008', NULL),
(11, 8, 'ManagementSingapore Management University', 'Bachelor’s Degree in Business ', '2008', NULL),
(12, 8, 'UniMelb', 'Master’s degree in Management in Accounting ', '2011', NULL),
(13, 9, 'James Cook University', 'Bachelor’s Degree in International Business Management', '1998', NULL),
(14, 10, 'SIM', 'Bachelor’s Degree in Business Management', '2011', NULL),
(15, 10, 'University of Sydney', 'Master’s degree in Financ', '2015', NULL),
(16, 10, 'University of Sydney', 'Master’s degree in Financ', '2014', NULL),
(17, 11, 'University of Monash', 'Bachelor’s Degree in Management', '2007', NULL),
(18, 12, 'University of Colorado', 'Bachelor’s Degree in Marketing and Finance', '2009', NULL),
(19, 12, 'University of Pennsylvania', 'Master’s degree in Banking', '2010', NULL),
(20, 13, 'Singapore Management University', 'Bachelor’s Degree in Finance', '2012', NULL),
(21, 14, 'James Cook University', 'Bachelor’s Degree in Tourism and Hospitality', '2012', NULL),
(22, 15, 'National University of Singapore', 'Bachelor’s Degree in Finance', '2010', NULL),
(23, 16, 'UC Berkley', 'Bachelor’s Degree in Accountancy', '2018', NULL),
(24, 17, 'Rockford', 'Bachelor’s Degree in Logistics from University ', '2005', NULL),
(25, 17, 'MIDS', 'Master’s degree in Logistics ', '2008', NULL),
(26, 18, 'James Cook University', 'Bachelor’s Degree in Hospitality and Tourism Management', '2009', NULL),
(27, 18, 'University of Los Angeles', 'Master’s degree in Management', '2012', NULL),
(28, 19, 'James Cook University', 'Bachelor’s Degree in Finance', '2008', NULL),
(29, 19, 'Michigan State University', 'Master’s degree in Banking', '2011', NULL),
(30, 20, 'University of Perth', 'Bachelor’s Degree in Business Management', '2011', NULL),
(31, 20, 'TMC academy', 'Master’s degree in Marketing', '2012', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employee_experience`
--

INSERT INTO `employee_experience` (`exp_id`, `em_id`, `com_name`, `em_period`, `em_respon`, `em_title`) VALUES
(1, 1, 'B&E consultants', '3 years', 'As treasury dealer worked to ensure that the organization selects adequate short term strategies to place daily cash surpluses on security exchanges', 'Treasury dealer'),
(2, 2, 'Worked at Goldman', '3 years', 'Managed sales and mainly relationships with the customers or clients of the account', 'Accounting Manager'),
(3, 3, 'Manjusri Secondary School', '2 years', 'Taught Basic Mathematics and arts in school during that time', 'Classroom teaching experience'),
(4, 4, 'Goldman Sachs Japan', '6 years', 'Managed the account as well as the relationship with the client holding that account. ', 'Account Manager'),
(5, 4, 'Leading Start-up Company Uzabase', '15 years', 'Assisted to the client’s enquiries and maintain relationships with internal stakeholders', 'Account Manager'),
(6, 5, 'UPS', '2 years', 'handled pick, pack and shipment of goods regularly. I also assisted in the arriving shipments', 'warehouse assistant'),
(7, 6, 'Search', '4 years ', 'Worked with the team closely and evaluated the financial standing and preparing credit proposals of the existing borrows', 'Financial Manager'),
(8, 7, 'Singapore General Hospital', '7 years ', 'Includes taking extensive care of patients including patients of Intensive care. Also supervising and overseeing work of new nurses.', 'Nurse'),
(9, 8, 'startup company Randstat ', '3 years', 'This includes providing assistance in system maintenance of system and able to manage the accounts. Also helps provide support to clients and project teams.', 'administrator'),
(10, 9, 'HSBC', '8 years ', 'This includes monitoring trades and portfolios and financial reporting of trading desk', 'Product Control'),
(11, 10, 'Axis Bank in Sydney Australia', '2 years', 'Communicate with team members and employees in the event of a risk. Undertaking effective risk management strategies so that there is no damage to the company', 'Finance Manager'),
(12, 11, 'TripAdvisor', '3 years', 'Managing the organization and team meetings. Updating databases of company', 'organizational manager'),
(13, 12, 'OCBC', '4 years', 'Managing financial reports and develop strategies for long-term financial goals for profit of company', 'Finance Manager'),
(14, 12, 'POSB', '1 year ', 'Maintaining relationship between clients and customers and ensuring no fallout takes place', 'Relationship Manager'),
(15, 13, 'OCBC', '2 years', 'Managing financial reports and direct investment activities in banks', 'Financial Manager'),
(16, 14, 'Ang mo kio secondary school', '3 years ', 'Teaching Mathematics and written English to students. ', 'Teacher'),
(17, 15, 'Axis Bank', '5 years ', 'Worked by preparing various credit proposals for new borrowers. Also maintain relations with sales department and collection agencies', 'VP of Credit Operations'),
(18, 16, 'Caterpillar', '7 years.', 'Managing accounts of clients and maintaining a good relationship with clients and customers regularly. Work with data in MYOB and maintain the money in accounts', 'Account Manager'),
(19, 17, 'Fedex', '4 years', 'Overseeing import and export of various shipments and packages also other ad hoc jobs when required', 'Warehouse assistant'),
(20, 18, 'Mount Elizabeth Hospital', '3 years', 'Managing the local bank branch. Ensuring customer satisfaction by engaging with them regularly if a problem arises.', 'Nurse'),
(21, 19, 'Today’s Career Pte Ltd', '3 years', 'Hand knowledge over AS91000 which is a quality management system for aerospace industry. Also ensured that products of the company are defect free.', 'General manager'),
(23, 20, 'Oakland School of Architecture', '3 years', 'Organized several career fairs and other events. Worked with my every dayS to deliver maximum efficiency	', 'Student executive');

-- --------------------------------------------------------

--
-- Table structure for table `employee_id`
--

CREATE TABLE IF NOT EXISTS `employee_id` (
  `em_id` int(11) NOT NULL,
  `em_email` text COLLATE utf8_bin NOT NULL,
  `em_password` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employee_id`
--

INSERT INTO `employee_id` (`em_id`, `em_email`, `em_password`) VALUES
(1, 'jeromyla74@hotmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(2, 'johnatha57@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(3, 'daphneho23@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(4, 'dorakang73@hotmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(5, 'garthsee63@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(6, 'kokyipha50@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(7, 'tonyengm50@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(8, 'eleanore56@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(9, 'lowwenlo78@hotmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(10, 'poonchen20@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(11, 'a_ajith@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(12, 'jdorian@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(13, 'f_ran@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(14, 'mohit_a@yahoo.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(15, 'wyle12@hotmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(16, 'gin_0@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(17, 'a_anil12@rediffmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(18, 'reid_e@hotmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(19, 'poonchen20@gmail.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(20, 'abey@aol.com', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257');

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE IF NOT EXISTS `employee_info` (
  `em_id` int(11) NOT NULL,
  `em_pic` text COLLATE utf8_bin,
  `em_birth` bigint(20) NOT NULL DEFAULT '0',
  `em_tel` text COLLATE utf8_bin,
  `em_info` text COLLATE utf8_bin,
  `em_skill` text COLLATE utf8_bin,
  `em_fname` text COLLATE utf8_bin NOT NULL,
  `em_lname` text COLLATE utf8_bin NOT NULL,
  `em_title` text COLLATE utf8_bin,
  `em_industry` text COLLATE utf8_bin,
  `em_location` text COLLATE utf8_bin,
  `em_doc` text COLLATE utf8_bin,
  `em_time` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`em_id`, `em_pic`, `em_birth`, `em_tel`, `em_info`, `em_skill`, `em_fname`, `em_lname`, `em_title`, `em_industry`, `em_location`, `em_doc`, `em_time`) VALUES
(1, 'Candidate1.jpg', 562953600000, '8134-9854', 'I am a Treasury Dealer who has proficiency in treasury products and applications. I have excellent interpersonal and communication skills and am able to work in a highly pressurized and competitive environment', 'Excellent Verbal Communication\r\nKnowledge of treasury’s products & applications\r\nAble to work and adapt to a highly pressured working environment 	     ', 'Jeromy', 'Lai', 'Treasury Dealer', 'Banking', 'Singapore', '1.docx', 1451750400000),
(2, 'Candidate2.jpg', 539625600000, '9705-4054', ' I am an account manager who has worked in multiple MNCs, I am able to assist to market and cross sell cash management solutions and grow the portfolio of different accounts of a client. I am also well versed in maintaining relationships with stakeholders.', 'Excellent interpersonal and communication skills\r\nAble to work in a team\r\nTechnological innovation\r\nKnowledge of accounting tools such as MYOB\r\n', 'Johnathan', 'Kok', 'Account Manager', 'Banking', 'Singapore', '2.docx', 1451750400000),
(3, 'Candidate3.jpg', 20151230151641, '9125-3935', 'I am a Preschool teacher who is passionate in helping children learn. My style of teaching enforces discipline but at the same time nurturing. I can teach numbers, colour, shape and letter recognition to children. 	', 'Excellent communication and classroom managements\r\nKnowledge in cognitive psychology and development \r\n', 'Daphne ', 'Hong', 'Preschool Teacher \r\n', 'Other', 'Singapore', '3.docx', 1451145600000),
(4, 'Candidate4.jpg', 249323400000, '9721-4718', 'I am a senior account with 20+ years of experience in managing accounts and monitoring cash flow. I can manage the full set of accounts which include AP, AR, GST and GL. I also assist in handling other Finance Ad-Hoc work as and when required.', 'Handle Payment, validation and reporting of accounts\r\nExcellent interpersonal, communication and Leadership skills\r\nProficient in preparing annual budget drafts and projections.\r\nFluent in Japanese, Mandarin and English\r\n', 'Dora ', 'Kang', 'Account Manager', 'Banking', 'Singapore', '4.docx', 1450454400000),
(5, 'Candidate5.jpg', 807033600000, '9555-1324', 'My name is Garth Seeoth and I am well experienced in managing warehouses. I am well  versed in number and I am able to pick and pack goods regularly. I am also versatile as I can do any work assigned to me', 'Proficiency in MS Office tools such as Excel, Word, Access, PowerPoint\r\nInspecting and receiving shipments.\r\n', 'Garth', 'Seetoh', 'Warehouse Assisstant', 'Marketing', 'Singapore', '5.docx', 1448812800000),
(6, 'Candidate6.jpg', 452188800000, '9648-0257', 'I have 6 years of overall experience in Managing and analysing Credits in the Banking and Finance industry. I am able to complete ad hoc reviews and monitor and monthly reporting efficiently ', 'Evaluating financial standing of new and existing borrowers\r\nExcellent Interpersonal and Communication Skills\r\nPossess substantial Leadership skills\r\nPreparing Credit proposals for new borrowers as well as existing borrowers\r\n', 'Kok Yip ', 'Hang', 'Credit Analyst', 'Ohter', 'China', '6.docx', 1451145600000),
(7, 'Candidate7.jpg', 604944000000, '9767-9950', 'I am very passionate when it comes to teaching. I am able to provide quality care for my patients due to my extensive work experience. I can also assist in supervising clinical instructors in their teaching courses', 'Able to Coordinate smooth transition of nurses into clinical practice area    \r\nDevelop and implement education and training programmes for nurses\r\nCollaborate with educational institutes to provide quality nursing education\r\nPleasant interpersonal, communication, presentation and Leadership skills\r\n', 'Tony ', 'Eng', 'Nurse Educator', 'Ohter', 'Singapore', '7.docx', 1451750400000),
(8, 'Candidate8.jpg', 475171200000, '9046-6050', 'I have may years of experience in providing effective administrative support to project teams. I have excellent leadership and interpersonal skills and I am versatile to do any other work in a company if required.', 'Communication and Interpersonal Skills Excellent Leadership Skills Managing documentations and update repositories Provide administrative support to project teams Assist in maintenance of the system and management of accounts', 'Eleanore ', 'Saram', 'Administrator', 'Ohter', 'Other', '8.docx', 1450454400000),
(9, 'Candidate9.jpg', 179771400000, '9041-5787', 'I am extremely interested in managing and implementing the P&L reporting and proficient in managing teams as a Leader. I also have excellent communication skills and time management skills', 'Excellent Interpersonal and Communication Skills\r\nExcellent Time Management and Leadership skills\r\nDevelopment, implementation and completion of daily P&L reporting for multiple countries across the group\r\nInvestigation and explaining movements in the daily P&L Aligning / closing the gaps between Dealer P&L estimates\r\n', 'Low Wen', 'Loong', 'Product Control', 'Banking', 'Other', '9.docx', 1451145600000),
(10, 'Candidate10.jpg', 698342400000, '9830-8276', 'My name is Poon Cheng yu and I have been managing operational and market risks for 15 years. My passion is to help train and raise awareness about various risks which happens in different departments', 'Able to identify, monitor and manage all credit, market and operational risks associated in the running of the businesses of the Branch\r\nExcellent Interpersonal and Communication Skills\r\nDesign and implement risk frameworks covering credit, market and operational risks\r\nExcellent substantial Leadership skills\r\n', 'Poon Cheng ', 'Yu', 'Head of Risk Management', 'Banking', 'Singapore', '10.docx', 1448812800000),
(11, 'Candidate11.jpg', 447696000000, '9230-8906', 'I have a general interest in helping people manage Job Fairs and Career Development Workshops. I also am capable to communicating with the staff effectively and efficiently.', 'Strong Interpersonal and Communication Skills\r\nStrong oral and written commination skills\r\nExcellent Organizational skills\r\nProficient in Ms Excel, Ms Word and Ms Access\r\n\\Updating databases.   \r\n', 'Arjun ', 'Ajith', 'Student Executive', 'Other', 'Other', '11.docx', 1451750400000),
(12, 'Candidate12.jpg', 639763200000, '9890-8318', 'I possess a high interest in working in the Banking industry and building a relationship with clients. I am able to communicate with my clients effectively and able to work closely with people without much hassle', 'Building and maintaining relationship and trust with local clients as well as international 	clients\r\nStrong Interpersonal and Communication Skills\r\nIndependent, Excellent Marketing Skills\r\n', 'John ', 'Dorian', 'Relationship Manager', 'Banking', 'Other', '12.docx', 1450454400000),
(13, 'Candidate13.jpg', 776102400000, '9876-8553', 'I have been proficient in Institutional Banking Operations in Technology. I have excellent communication and organizational skills and I am proficient in Excel and PowerPoint. I am able to perform multi-tasking and possess excellent time management skills', 'Good Interpersonal and Communication Skills\r\nOrganizational and leadership skills.\r\nExceptionally sound understanding of banking regulations and practice\r\nExcellent Microsoft Office skills particularly in Excel and PowerPoint\r\n', 'Faritz ', 'Rancung', 'Credit Analyst', 'Banking', 'Singapore', '13.docx', 1451750400000),
(14, 'Candidate14.jpg', 697996800000, '9140-8901', 'Teaching children has always been my passion. I am also proficient Management and Leadership. I am also able to work closely with teachers as well as students who require help  or need my assistance in learning.', 'Excellent communication and classroom management skills\r\nInnovative and Inspiring Learning Methods\r\n', 'Munesh Mohit ', 'Anand', 'PreSchool Principal', 'Other', 'Malaysia', '14.docx', 1451750400000),
(15, 'Candidate15.jpg', 673891200000, '9856-8242', 'I worked as a  VP of Credit Operations in Axis bank. I am able to build a strong service culture in the team so as to be service oriented to both our internal and external customers. I also have Good organizational skills and am able to Ensure that regulatory guidelines and internal policies of any organisation are implemented, adhered and complied', 'Able to work well in a team oriented environment\r\nExcellent Interpersonal and Communication Skills\r\nEffective management skills\r\nPossess substantial Leadership skills\r\nKnowledge of Credit policy and underwriting and Banking Operations policies and procedures\r\nPreparing Credit proposals for new borrowers as well as existing borrowers\r\nExcellent Problem solving skills\r\nProficient in Microsoft office especially Microsoft Power Point and Excel\r\n', 'Evando ', 'Wylie', 'Credit Operations ', 'Banking', 'Malaysia', '15.docx', 1448812800000),
(16, 'Candidate16.jpg', 583862400000, '9860-5616', 'I have mainly worked as an Account Manager in Caterpillar for 12 years. I have maintained a strong relationship with the stakeholders and have overseen credit preparation and renewals of the company. I am also able to perform other duties if they are within my forte. ', 'Excellent Interpersonal and Communication Skills\r\nAble to work in a Multi-Cultural environment\r\nPossess substantial Leadership skills\r\nKnowledge over MYOB, Ms Excel and Ms Access.\r\n', 'Phaksin ', 'Uesrivong', 'Account Manager', 'Banking', 'Singapore', '16.docx', 1450454400000),
(17, 'Candidate17.jpg', 418838400000, '9442-8471', 'I have worked as a Warehouse assistant for over 4 years. I am quite good in inspecting and receiving inbound shipments. I am able to work for long hours and able to perform certain other ad hoc duties as assigned by the warehouse manager. ', 'Knowledge of basic Microsoft Office Programs\r\nExcellent Interpersonal and Communication Skills\r\nAble to work for long hours as well as perform night duty\r\n', 'Akhil ', 'Anil', 'Senior Warehouse Assisstant', 'Other', 'Singapore', '17.docx', 1451750400000),
(18, 'Candidate18.jpg', 537206400000, '9431-6880', 'I have worked as a Nurse in Mount Elizabeth hospital for about 3 years. I strive to continuously improve the caring standards of the hospital and provide certain strategies for the nursing department in order to improve patient care', 'Excellent Leadership skills\r\nExcellent Communication skills\r\nKnowledge over all regulations of Ministry of Health and Singapore Health\r\n', 'Elliot ', 'Reid', 'Private Banking Manager', 'Other', 'Other', '18.docx', 1451145600000),
(19, 'Candidate19.jpg', 569001600000, '9437-3346', 'Working in the Education industry has been a passion of mine. Coordinating, managing departments has always been one of my strongest points. I also make sure that accidents and work related ill cases are kept to the minimum If not removed. ', 'Strong Interpersonal and Communication Skills\r\nStrong organizational and Leadership skills\r\nKnowledge on AS9100 , ISO9001 and OHSAS18001\r\n', 'Carla ', 'Espinoza', 'QA Coordinator', 'Other', 'Other', '19.docx', 1451750400000),
(20, 'Candidate20.jpg', 671904000000, '9350-3277', 'I have worked as a student executive in Oakland School of Architecture and Planning for over 6 years. I am able to manage the alumni efficiently and take the lead in supporting the marketing initiatives. I also take the lead step in organizing almost all events in the company.\r\n', 'Very Good Interpersonal and Communication Skills\r\nExcellent oral and written communication skills\r\nStrong Leadership skills\r\nStrong Organizational and Management skills\r\n', 'Abey ', 'Abraham', 'Student Excecutive', 'Other', 'Other', '20.docx', 1448812800000);

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
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `job_apply`
--

CREATE TABLE IF NOT EXISTS `job_apply` (
  `job_id` int(11) NOT NULL,
  `em_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `job_apply`
--

INSERT INTO `job_apply` (`job_id`, `em_id`) VALUES
(2, 2),
(1, 1),
(3, 1),
(1, 2),
(1, 3),
(3, 6),
(3, 9),
(4, 7),
(4, 2),
(4, 5),
(5, 17),
(5, 20),
(5, 15),
(6, 13),
(6, 4),
(6, 19),
(7, 13),
(8, 13),
(8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `job_filter`
--

CREATE TABLE IF NOT EXISTS `job_filter` (
  `job_id` int(11) NOT NULL,
  `job_cmin` int(11) NOT NULL,
  `job_cmax` int(11) NOT NULL,
  `job_type` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `job_filter`
--

INSERT INTO `job_filter` (`job_id`, `job_cmin`, `job_cmax`, `job_type`) VALUES
(1, 1200, 1800, 'Full time'),
(2, 1600, 2400, 'Full time'),
(3, 4000, 5500, 'Part time'),
(4, 2600, 4000, 'Other'),
(5, 4000, 6000, 'Internship'),
(6, 2000, 3000, 'Part time'),
(7, 2000, 3000, 'Full time'),
(8, 2000, 3000, 'Other'),
(9, 2500, 5000, 'Part time'),
(10, 4500, 6000, 'Internship'),
(11, 4500, 5000, 'Full time'),
(12, 5500, 6000, 'Other'),
(13, 5000, 7000, 'Full time'),
(14, 3000, 4000, 'Full time'),
(15, 8000, 10000, 'Internship'),
(16, 15000, 20000, 'Other'),
(17, 4000, 5000, 'Full time'),
(18, 5000, 6000, 'Part time'),
(19, 5000, 7000, 'Full time'),
(20, 2300, 3000, 'Internship');

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
  `job_industry` text COLLATE utf8_bin NOT NULL,
  `job_time` bigint(20) NOT NULL DEFAULT '1451577600000',
  `job_state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `job_id`
--

INSERT INTO `job_id` (`job_id`, `com_id`, `job_title`, `job_info`, `job_location`, `job_request`, `job_respon`, `job_apply`, `job_industry`, `job_time`, `job_state`) VALUES
(1, 1, 'Warehouse Assistant - Defu Lane', 'Prepares orders by processing requests and supply orders; pulling materials; packing boxes; placing orders in delivery area. Completes deliveries by 	driving truck or van to and from vendors. Maintains truck or van by completing preventive maintenance requirements; arranging for repairs.\r\n', 'Singapore', '•	Knowledge of basic Microsoft Office Programs\r\n•	Ability to work flexible hours when required\r\n•	Minimum 2 years of relevant work experience\r\n•	Knowledge of English Language\r\n', ' Responsible to the Warehouse Manager, you will be responsible for \r\n•	Inspecting and receiving inbound shipments\r\n•	Carrying out daily cycle count\r\n•	Picking and packing\r\n•	Other ad hoc duties as assigned by the Team Leader or Manager.\r\n', '•Send resume hard copy to the main centre in Singapore\r\n•Average Processing time is two weeks\r\n•Approach the main centre for interview after confirmation.\r\n', 'Marketing', 1451750400000, 0),
(2, 1, 'Senior/Warehouse Assistant - Defu Lane', 'Prepares orders by processing requests and supply orders; pulling materials; packing boxes; placing orders in delivery area. Completes deliveries by 	driving truck or van to and from vendors. Maintains truck or van by completing preventive maintenance requirements; arranging for repairs.', 'Singapore', '•	Knowledge of basic Microsoft Office Programs\r\n•	Ability to work flexible hours when required\r\n', 'Responsible to the Warehouse Manager, you will be responsible for \r\n•	Inspecting and receiving inbound shipments\r\n•	Carrying out daily cycle count\r\n•	Picking and packing\r\n', '•	Send resume hard copy to the main centre in Singapore\r\n•	Average Processing time is two weeks\r\n•	Approach the main centre for interview after confirmation.\r\n', 'Other', 1451750400000, 0),
(3, 2, 'Credit Analyst, AVP/Vice President – Well Established Bank\r\n', 'Job Information: determine the likelihood that a borrower will be able to meet financial obligations and pay back a loan, often by reviewing the borrower''s financial history and determining whether market conditions will be conducive to repayment	', 'Malaysia', '•	University Graduate or higher\r\n•	Minimum 10 years’ credit experience with a bank or financial institution.\r\n•	Strong credit risk assessment experience and deep understanding of corporate lending\r\n•	High level of numeracy and strong financial analysis skills.\r\n•	Ability to condense complex issues into a readable format in report writing\r\n•	Hands on PC knowledge, including Excel, Word and PowerPoint\r\n•	Influencing skills both in writing through presenting a persuasive argument and verbally when handling objections.\r\n', '•	Timely assessment of credit applications to meet business requirements with balanced/sound credit decisions\r\n•	Co-operate and support business in the review of challenging transactions\r\n•	Monitor credit quality of portfolio (including any concentration risk) and report any issues on a timely manner.\r\n•	Support the Department’s credit cost management and goals\r\n•	Perform other duties such as portfolio and market reviews as may assigned by Management.\r\n', '•	Send resume in word format to: dfc@de-factors.com.sg”- Credit Analyst. Vice President -Banking\r\n', 'Other', 1451145600000, 0),
(4, 2, 'Credit Analyst, Asst Manager/AVP, Well Established Bank', 'Job Information: determine the likelihood that a borrower will be able to meet financial obligations and pay back a loan, often by reviewing the borrower''s financial history and determining whether market conditions will be conducive to repayment', 'China', '•	Min Bachelor’s Degree in Banking, Finance, Accountancy or related discipline\r\n•	Analytical, Detailed-oriented and team player.\r\n', '•	Evaluate the financial standing of new and existing borrowers.\r\n•	Prepare credit proposals for new borrowers and credit reviews for existing borrowers\r\n•	Accurate spreading of borrowers’ financial information\r\n•	Timely completion of adhoc reviews / monitoring and monthly reporting\r\n•	Ensure compliance with credit policies rules and procedures\r\n', '•	Send resume in word format to: dfc@de-factors.com.sg”- Credit Analyst. Vice President -Banking\r\n', 'Other', 1450454400000, 0),
(5, 3, 'Private Banking Managers', 'They will guide you through the complexities of managing your finances and help you reach your goals. They will meet with you to gain a thorough understanding of your financial requirements from your everyday banking needs to your longer term objectives.', 'Other', '•	Degree / Master in Nursing or equivalent\r\n•	Minimum 1 year of experience in managerial role\r\n•	Keen to take on a leadership role\r\n', '•	continuous upgrading of care standards\r\n•	Take up key leadership role in Nursing department\r\n•	Supervise and ensure nurses deliver a high standard of nursing care\r\n•	Overseas multidisciplinary team\r\n•	Responsible for the compliance of all regulations as indicated by Ministry of Health, Singapore Nursing Board and Agency for Integrated Care\r\n•	Coming up with long and short term plans for the nursing department\r\n', '•	Interested candidates kindly send your resume to: jasper@jobstudio.com.sg\r\n•	Only shortlisted candidates will be notified\r\n', 'Other', 1448812800000, 0),
(6, 3, 'Nurse Educator (Immediate / Urgent)v', 'a nurse who teaches and prepares licensed practical nurses (LPN) and 				registered nurses (RN) for entry into practice positions. They can also teach 			in various patient care settings to provide continuing education to licensed 			nursing staff.\r\n', 'Malaysia', '•	Degree / Master in Nursing\r\n•	Minimum 1 year of experience in education role\r\n•	Keen to take on a leadership role\r\n•	Pleasant interpersonal, communication and presentation skills\r\n', '•	Develop and implement education and training programmes for nurses\r\n•	Providing quality patient care which are in line with hospitals mission\r\n•	Coordinate smooth transition of nurses into clinical practice area\r\n•	Collaborate with educational institutes to provide quality nursing education\r\n•	Providing clinical supervision to learner nurses/trainees at the hospital.\r\n•	Assist in the development, implementation and evaluation of in-service training and continuing education programmes for nursing and ancillary staff.\r\n•	Teaches and prepares licensed practical nurses (LPN) and registered nurses (RN) for entry into practice positions\r\n•	Supervise clinical instructors in conducting classroom teaching according to planned curriculum and integrate theory into clinical practice in accordance with nursing standards.\r\n', '•	Interested candidates kindly send your resume to: jasper@jobstudio.com.sg\r\n•	Only shortlisted candidates will be notified\r\n', 'Other', 1451145600000, 0),
(7, 4, 'QA/QC Coordinator (Engr/Quality Dept/Audit/5Days/ISO’s/Management System) (DKAE 211224)', 'quality assurance professional who is tasked with ensuring that the products produced by a company are materially free of defects and are manufactured in a way that complies with the company''s standards.', 'Singapore', '•	Nitec / Dip in Electrical & Electronics Engineering\r\n•	Minimum 0 - 2 year relevant experience in manufacturing or engineering environment. \r\n•	Knowledge on AS9100 , ISO9001, ISO14001 or OHSAS18001 will be an advantage. \r\n', '•	Co-ordinate filing in line with various standards and certification requirements Eg: AS9100 , ISO9001, ISO14001 or OHSAS18001\r\n•	Establish and maintain document archive system\r\n•	Coordinate with all departments towards problem solving and matters pertaining to management systems\r\n•	Participate in audits\r\n•	Follow-up on customers on non-conformance with regards to the Management System\r\n•	Ensuring that accidents, on non-injury incidents and work-related ill heath cases are reported and investigated with incident reporting and investigation procedures\r\n•	House keep document\r\n', '•	Interested candidates, please state last / expected salaries and notice period and email to: mainsales3@todaycareer.com.sg\r\n', 'Marketing', 1451750400000, 0),
(8, 4, 'Marcom Student Executive (Alumni Affairs/University/West/Tpt provided/5 days) (DKAE 201224)', 'quality assurance professional who is tasked with ensuring that the products produced by a company are materially free of defects and are manufactured in a way that complies with the company''s standards.', 'China', '•	degree or Relevant experience\r\n•	Excellent oral and written communication skills\r\n•	Very good organisational skills \r\n•	Highly-motivated to achieve set objectives\r\n', '•	Supporting marketing initiatives\r\n•	Liaising with Alumni Association chapters and setting up new chapters overseas\r\n•	Ensuring that the students take part in relevant job fairs or career preparation modules\r\n•	Administering the graduate employment surveys\r\n•	Updating the Alumni database\r\n•	Identifying relevant internships and full-time positions for students/graduates\r\n•	Managing the Career Development Workshops, Career Talks and the Career Resources section on the website\r\n•	Managing the student feedback on teaching\r\n•	Representing the school on the university’s Student Life committee\r\n•	Organising the annual Alumni Dinner\r\n', '•	Interested candidates, please state last / expected salaries and notice period and email to: mainsales3@todaycareer.com.sg\r\n', 'Other', 1450454400000, 0),
(9, 5, 'Administrator (Project/One Yr Contract/$2500)', 'The duties will vary depending on your employer. You may implement government protocols that directly impact the public, or you may manage aspects of internal government operations that would ultimately affect public service activities.', 'Malaysia', '•	Diploma, A Levels\r\n•	Minimum of 2 years experience in office administration and management\r\n•	Proficient in Microsoft Office especially in Powerpoint and Excel\r\n•	Able to commit to a one year contract\r\n', '•	Provide administrative support to project teams\r\n•	Manage documentations and update repositories\r\n•	Liaise with related parties such as internal project team and external vendors, companies and agencies\r\n•	Compilation of information and prepare reports as required\r\n•	Assist in maintenance of the system and management of accounts\r\n•	Preparation of presentation materials\r\n•	Other related ad hoc work as assigned\r\n', '•	Interested candidates kindly submit your resume in MS Word format to kate.tan@bgc-group.com. \r\n', 'Other', 1451145600000, 0),
(10, 5, 'Accountant (Compliance & Audit/Reporting/$4500)', 'The primary task of accountants, which extends to all the others, is to prepare and examine financial records. They make sure that records are accurate and that taxes are paid properly and on time. Accountantsand auditors perform overviews of the financial operations of a business in order to help it run efficiently.', 'Other', '•	Degree in Accounting/Finance, ACCA or relevant disciplines\r\n•	At least 4 years experience in Accounting, external or internal audit\r\n•	Experience in managing full set of accounts\r\n•	Proficient in Micorsoft Office especially Excel\r\n•	Prior experience in the FACT accounting software will be advantageous\r\n•	Able to travel - average of once every 3-4 months for 3-4 days\r\n', '•	Manage full set of accounts - AP, AR, GL, GST\r\n•	Collation and preparation of financial reports - quarterly., monthly and annually\r\n•	Handle bank reconciliations\r\n•	Monitor cash flow and make projections to ensure adequate cash \r\n•	Review all information and postings into accouting software to ensure accuracy\r\n•	Liaise with auditors and tax agents during reporting\r\n•	Preparation of annual budget drafts and projections\r\n•	Ensure Corporate Compliance\r\n•	Handle overall claims processes - validation, payment and reporting\r\n•	Review, enhance and participate in any Finance related projects\r\n•	Assist with and travel to overseas branches  \r\n•	Other Finance ad hoc work as required\r\n', '•	Interested candidates, please state last / expected salaries and notice period and email to: mainsales3@todaycareer.com.sg', 'Banking', 1448812800000, 0),
(11, 6, 'AVP - Product Control (Contract)', 'As a product controller, you will work in close contact with the front office and its traders, risk and valuation units, and have exposure to investment banking products (whether vanilla / flow products or more complex structured / exotic products), allowing you to understand why and how a bank trades on a daily basis.', 'Singapore', '•	a Degree with ACCA or CA Certification.\r\n•	You have more than 5 years'' relevant experience within the banking industry. \r\n•	Prior experience in product control for at least 3 years is necessary, and familiarity with derivatives products is advantageous.\r\n•	You are able to deliver high quality output and have strong interpersonal skills, with the ability to communicate & challenge at all levels both written (report and guideline writing) and verbally.\r\n', '•	Development, implementation and completion of daily P&L reporting for multiple countries across the group\r\n•	Investigation and explaining movements in the daily P&L\r\n Aligning / closing the gaps between Dealer P&L estimates and Finance Actual - clearly explaining / resolving the gaps. \r\n•	 Reviewing Daily P&L trends and highlighting gaps / opportunities to Forecast. \r\n•	 Primary contact person for the business and Local Finance teams with regards to issues relating to P&L reporting.\r\n', '•	Please submit your application using the appropriate link below or email your CV in Microsoft Word format to yingling.low@jobs.hudson.com quoting SG107389 Your interest will be treated in the strictest of confidence. \r\n', 'Banking', 1451750400000, 0),
(12, 6, 'Head of Risk Management', 'Risk managers advise organisations on any potential risks to the profitability or existence of the company. They identify and assess threats, put plans in place for if things go wrong and decide how to avoid, reduce or transfer risks.', 'China', '•	Should have a Degree in Finance/Business with CPA or CA Certification. \r\n•	You have more than 12 years'' relevant experience within the banking industry, and has demonstrated knowledge of risk management, with experience setting up and implementing risk frameworks. \r\n•	You possess strong leadership skills with highly effective interpersonal skills in managing teams as well as facing off with key senior stakeholders within the region.\r\n', '•	Head the Risk Management Department\r\n•	Responsible for identifying, monitoring and managing all credit, market and operational risks associated in the running of the businesses of the Branch\r\n•	Design and implement risk frameworks covering credit, market and operational risks\r\n•	Ensuring alignment of Risk Management framework to Group policies\r\n•	Conducting training and help raise risk awareness across various departments in the business\r\n', '•	Please submit your application using the appropriate link below or email your CV in Microsoft Word format to yingling.low@jobs.hudson.com quoting SG107389 Your interest will be treated in the strictest of confidence. \r\n', 'Banking', 1450454400000, 0),
(13, 7, 'Relationship Manager (Corporate Banking) @ CBD)', 'A professional who works to improve a firm''s relationships with both partner firms and customers. Relationship management is generally divided into two fields: customer relationship management (CRM) and business relationship management (BRM).', 'Singapore', '•	Relevant recognized bachelor degree or/and above\r\n•	Recognised relevant tertiary education\r\n•	Minimum 3 years’ relevant experience in Corporate Banking\r\n•	Able to handle work independently, strong team work spirit, excellent marketing & communication skills\r\n', '•	Develop new business account and offer full range of corporate banking services such as Corporate Loans (including syndicated loan and finance), FX Deposit Service and Performance Guarantee.\r\n•	Build and maintain relationship and trust with local clients as well as international clients.\r\n•	Work closely with internal departments and business partners for developing new business in global market.\r\n•	Research new business prospects and pitch the companies for client acquisition.\r\n•	Solicit and review clients'' financial status, provide professional advises.\r\n', '•	Please submit your application using the appropriate link below or email your CV in Microsoft Word format to recruit@masspower.com.sg Your application will go directly to \r\nMass Power Services Pte Ltd\r\n', 'Tourism', 1451750400000, 0),
(14, 7, 'Urgent!! Treasury Dealer (Contract) @ CBD', 'A treasury dealer works under the leadership of a company''s chief investment officer or treasurer. He ensures that the organization selects adequate short-term investment strategies to place (invest) daily cash surpluses on securities exchanges and 	in private placements. A treasury dealer usually holds a bachelor''s degree in a business related field.', 'Singapore', '•	At least a Bachelor''s Degree in Economics/ Banking/ Finance/ Commerce/ Business Management\r\n•	Prefer with 3 years of relevant experience\r\n•	Enthusiasm in participating in capital market, foreign exchange market, derivatives and fixed income investment\r\n•	Knowledge of treasury’s products & applications\r\n•	Strong financial analyzing abilities\r\n•	PC skills and Microsoft Office applications\r\n•	Team player with pleasant personality\r\n', '•	Report to the Treasury Deputy Chief Manageress.\r\n•	To verify details of customers’ FX transactions and input the said transactions into the OCBS system.\r\n•	To assist MM dealer in checking and verifying all currencies’ gap positions.\r\n•	To assist FX dealer in checking and verifying all currencies’ FX exposures.\r\n•	To assist Bond dealer in checking and verifying all currencies’ bonds purchases and sales.\r\n•	To cast and confirm cash flow status of all currencies transactions and reconcile the same with the Settlement dept.\r\n•	To strictly observe the provisions stipulated in Head Office Instruction, related treasury policies and all other Head Office and Singapore Branch policies and procedures (as amended from time to time).\r\n•	To strictly observe the authorization limits as stated (as amended from time to time).\r\n•	Any other duties that may be assigned from time to time.\r\n', '•	Please submit your application using the appropriate link below or email your CV in Microsoft Word format to recruit@masspower.com.sg Your application will go directly to \r\nMass Power Services Pte Ltd\r\n', 'Banking', 1451750400000, 0),
(15, 8, 'VP / AVP, Institutional Banking Operations, Technology & Operations', 'The credit manager position is accountable for the entire credit granting process, including the consistent application of a credit policy, periodic credit reviews of existing customers, and the assessment of the creditworthiness of potential customers, with the goal of optimizing the mix of company sales and bad debt losses.', 'Other', '•	A qualified professional with a university degree or equivalent\r\n•	Minimum 7-8 years of experience\r\n•	Have process orientation and a sound understanding of banking regulations and practice\r\n•	Good Microsoft Office skills particularly in Excel and PowerPoint\r\n•	Excellent communication and organizational skills and can be relied upon to make quick, accurate and precise decisions\r\n•	Ability to multi-task with good analytical and planning skills to effectively manage changing priorities\r\n•	Ability to interface on a professional level at all times with a variety of different personalities at different levels\r\n•	Proven track record in managing, coaching, developing and motivating large teams for high performance\r\n', '•	Budget forecasting and planning including headcount, operating cost management and control\r\n•	Steer strategic initiatives and drive finalization of overall Institutional Banking Operations’ strategy paper\r\n•	Planning, setting & monitoring of objectives for the teams, in line with the overall objectives of Institutional Banking Operations to achieve the desired results\r\n•	Responsible for steering adhoc projects/strategic initiatives such as Design for No Operations, Customer Journeys, STP, Automation etc that are in line with overall Institutional Banking Operations’ objective  \r\n•	Active engagement with key stakeholders such as Regional Product Heads & Operations Heads across locations on Demand Management and Resource Planning\r\n•	Engage technology and project teams for smooth and efficient processing through optimum usage of technology\r\n•	Provide strategic direction to teams in process development / improvements and automation of such activities\r\n•	Plan and review of key operations indicators with Team Managers and processing teams, and provide coaching and guidance on improvement plan\r\n\r\n', '•	Submit CV here or send it to our Main Branch in Singapore\r\n•	Only shortlisted candidates will be notified\r\n', 'Banking', 1448812800000, 0),
(16, 8, 'VP, Credit Operations, Technology & Operations', 'The credit manager position is accountable for the entire credit granting process, including the consistent application of a credit policy, periodic credit reviews of existing customers, and the assessment of the creditworthiness of potential customers, with the goal of optimizing the mix of company sales and bad debt losses.', 'China', '•	Experience in Quality Assurance, Project Management, Credit, Operations\r\n•	At least 10 years’ experience in financial institutions, with Unsecured Lending operations knowledge would be an added advantage\r\n•	Background in Banking, Business Admin, Engineering\r\n•	Effective management skills to coach, guide and motivates staff to achieve specified performance target; \r\n•	Good interpersonal skills to work effectively with Business Units and with other Support Units\r\n•	Good judgement and ability to make good decisions\r\n•	Good communication and presentation skills \r\n•	Good inter-personal skills and able to work well in a team oriented environment is a must\r\n•	Problem solving skills to resolve issues\r\n•	Service orientation – always thinking customer first\r\n•	Knowledge of Process Improvement Toolkit and metrics/measurement\r\n•	Basic knowledge of Credit policy and underwriting and Banking Operations policies and procedures\r\n•	Good understanding of operational risks\r\n•	Meticulous with eye for details\r\n•	Proficient in Microsoft office especially Microsoft Power Point and Excel\r\n', '•	Ensure that the process is robust and work force is proficient to deliver the key objectives of the department\r\n•	Ensure that regulatory guidelines and internal policies of the organisation are implemented, adhered and complied\r\n•	Build a strong service culture in the team so as to be service oriented to both our internal and external customers\r\n•	Develop and coach the staff in Credit Operations processing and raise their competence level to be metric-driven and best-in-class on a sustainable basis\r\n•	Good organizational skills with demonstrated ability in managing Operations/ Centralized Processing and ability to strategize and execute projects or strategy on time and within budget \r\n•	The ability to establish and maintain effective relationship and partnership with key stakeholders \r\n•	Self motivated with the ability to drive performance and delivery\r\n•	Good risk awareness and sound knowledge of operational risk & contingency relating to payment products \r\n•	Strong analytical, systemic and problem solving skills with ability to deep diving into issues & details \r\n•	Ability to challenge status quo and execute changes in an effective manner \r\n', '•	Submit CV here or send it to our Main Branch in Singapore\r\n•	Only shortlisted candidates will be notified\r\n', 'Tourism', 1450454400000, 0),
(17, 9, 'Account Manager / Relationship Manager - Asian Corporates / MNC', 'An account manager (Sales) is a person who works for a company and is responsible for the management of sales, and relationships with particular customers. The account manager does not manage thyge daily running of the account itself. They manage the relationship with the client of the account(s) they are assigned to.', 'Singapore', '•	Possesses a Degree in Accountancy, Business Management, Economics or related\r\n•	Minimum 3 years of related working experience, with working exposure in the banking sector.\r\n•	Excellent interpersonal and communication skills\r\n', '•	To manage and grow the portfolio of accounts assigned, most of which are MNC clients with Regional Treasury Centers and subsidiaries in Singapore.\r\n•	Assist to market and cross sell cash management solutions and other banking products, such as Treasury, Trade Finance, term/structured loans, etc.\r\n•	Increase the wallet size of the acquired and assigned clients by leveraging on the bank''s product offerings.\r\n•	Assist to attend to client''s enquiries when needed.\r\n•	Oversee the credit preparation and renewals.\r\n•	Assist with due diligence / KYC matters and ensuring compliance to internal process and regulatory.\r\n•	Maintaining relationships with internal stakeholders to ensure smooth process flow and delivery to clients.\r\n•	Any other duties / projects assigned.\r\n', '•	To apply online, please click on the appropriate link.\r\n•	Alternatively, please contact Adeline on 6517 1629 or adeline.lim(at)randstad.com.sg\r\n', 'Banking', 1451750400000, 0),
(18, 9, 'Relationship Manager - Corporate Banking\r\n', 'A professional who works to improve a firm''s relationships with both partner firms and customers. Relationship management is generally divided into two fields: customer relationship management (CRM) and business relationship management (BRM).', 'Malaysia', '•	Possesses a Degree in Accountancy, Business Management, Economics or related \r\n•	Minimum 3 years of related working experience, with working exposure as a Relationship Manager in the corporate banking space\r\n•	Excellent interpersonal and communication skills\r\n\r\n', '•	Acquiring new business opportunities and maintaining relationships with assigned clients and sectors \r\n•	Responsible in providing corporate advises and support on the structuring of deals \r\n•	Participate in negotiations and execution activities for bilateral and syndicated loans\r\n•	 Overall credit analysis, monitoring and annual reviews on portfolio management\r\n•	 Ensuring compliance to internal process and regulatory.\r\n•	 Any other duties or projects as needed\r\n', '•	To apply online, please click on the appropriate link.\r\n•	Alternatively, please contact Adeline on 6517 1629 or adeline.lim(at)randstad.com.sg\r\n', 'Banking', 1451145600000, 0),
(19, 10, 'PreSchool Principal', 'A preschool principal creates policies, manages staff and oversees daily operations. The principal is the lead administrator of the school and handles problems with staff and students. They develop the curriculum and ensure the school meets any standards set by law. Other duties include teaching classes as needed, determining spending responsibilities and making admission decisions. Preschool principals work in public and private preschools.\r\n', 'Singapore', '•	Diploma in Early Childhood Education - Teaching & Leadership is a must.\r\n•	Degree in Early Childhood Education will be advantageous.\r\n•	Minimum of 3 years of teaching and management experience in a childcare / preschool\r\n•	Creative and inspiring with loving energy\r\n•	Excellent communication and classroom management skills\r\n', '•	Determine the requirements that must be met regarding licensing, health and safety regulations from the start and local regulatory agencies.\r\n•	Work closely with agencies to meet requirements.\r\n•	Mentor the teachers to facilitate collaborative approaches to learning, teaching and evaluation so as to raise performance standards and competencies.\r\n•	Provide leadership for setting overall goals for the school as a basis for curriculum objectives.\r\n•	Prepare budget and control budget expenditures.\r\n•	Collect tuition fee and manage disbursement of cash for purchases.\r\n•	Keep adequate records of income and expenditures.\r\n•	Prepare monthly reports for the board and senior management.\r\n', '•	Applicants who are interested in this role are invited to apply with their comprehensive resume with full details via "Apply Now" button.\r\n•	We regret that only short-listed candidates will be notified.\r\n', 'Other', 1451750400000, 0),
(20, 10, 'PreSchool Reading & Writing Teachers', ' Preschool teachers help their students learn mainly through play and interactive activities, capitalizing on children''s play to further language and vocabulary development. A preschool teacher might use storytelling and rhyming and acting games to improve social skills or introduce scientific and mathematical concepts.', 'Other', '•	At least a Diploma holder, those without diploma but has at least 1 to 2 years of classroom teaching experience (for 3-7 years old students) in creative language courses, speech and drama classes, etc will be considered.\r\n•	Minimum of 1 years'' classroom teaching experience with learners aged 3 to 7 years old.\r\n•	Creative and inspiring personality with dynamic and energetic lesson delivery skills\r\n•	Excellent communication and classroom management skills\r\n•	Knowledge in educational, development and cognitive psychology\r\n', '•	Provide a variety of materials and resources for children to explore, manipulate and use, both in learning activities and in imaginative play.\r\n•	 Attend to children''s basic needs by feeding them, dressing them, and changing their diapers.\r\n•	Teach basic skills such as color, shape, number and letter recognition, personal hygiene, and social skills.\r\n•	Establish and enforce rules for behavior, and procedures for maintaining order.\r\n•	Read books to entire classes or to small groups.\r\n•	Organize and lead activities designed to promote physical, mental and social development, such as games, arts and crafts, music, storytelling, and field trips.\r\n', '•	Applicants who are interested in this role are invited to apply with their comprehensive resume with full details via "Apply Now" button.\r\n•	We regret that only short-listed candidates will be notified.\r\n', 'Other', 1448812800000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_skill`
--

CREATE TABLE IF NOT EXISTS `job_skill` (
  `job_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `job_skill`
--

INSERT INTO `job_skill` (`job_id`, `skill_id`) VALUES
(1, 1),
(1, 2),
(1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allskill`
--
ALTER TABLE `allskill`
  ADD PRIMARY KEY (`skill_id`);

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
  ADD PRIMARY KEY (`job_id`),
  ADD FULLTEXT KEY `job_title` (`job_title`);
ALTER TABLE `job_id`
  ADD FULLTEXT KEY `job_info` (`job_info`);
ALTER TABLE `job_id`
  ADD FULLTEXT KEY `job_title_2` (`job_title`);
ALTER TABLE `job_id`
  ADD FULLTEXT KEY `job_info_2` (`job_info`);
ALTER TABLE `job_id`
  ADD FULLTEXT KEY `job_title_3` (`job_title`);
ALTER TABLE `job_id`
  ADD FULLTEXT KEY `job_title_4` (`job_title`,`job_info`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allskill`
--
ALTER TABLE `allskill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `company_id`
--
ALTER TABLE `company_id`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `employee_education`
--
ALTER TABLE `employee_education`
  MODIFY `edu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `employee_experience`
--
ALTER TABLE `employee_experience`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `employee_id`
--
ALTER TABLE `employee_id`
  MODIFY `em_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `em_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `job_filter`
--
ALTER TABLE `job_filter`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `job_id`
--
ALTER TABLE `job_id`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
