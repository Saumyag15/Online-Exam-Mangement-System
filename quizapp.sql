-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 07:58 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app`
--

CREATE TABLE `tbl_app` (
  `app_id` int(10) UNSIGNED NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_app`
--

INSERT INTO `tbl_app` (`app_id`, `app_name`, `email`, `username`, `password`, `contact`, `added_date`, `updated_date`, `image_name`) VALUES
(1, 'Saumya Gupta Online Exam System', 'saumyag369@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '8115200022', '2021-11-11', '2021-12-10', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam`
--

CREATE TABLE `tbl_exam` (
  `exam_id` int(10) UNSIGNED NOT NULL,
  `exam_type` varchar(150) NOT NULL,
  `time_duration` int(11) NOT NULL,
  `qns_per_set` int(11) NOT NULL,
  `total_english` int(10) UNSIGNED NOT NULL,
  `total_math` int(10) UNSIGNED NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_exam`
--

INSERT INTO `tbl_exam` (`exam_id`, `exam_type`, `time_duration`, `qns_per_set`, `total_english`, `total_math`, `is_active`, `added_date`, `updated_date`) VALUES
(1, 'GMAT', 90, 10, 5, 5, 'yes', '2021-11-11', '2021-12-11'),
(2, 'GRE', 90, 10, 5, 5, 'yes', '2021-11-12', '2021-12-10'),
(3, 'GATE', 90, 2, 1, 1, 'yes', '2021-12-10', '2021-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question`
--

CREATE TABLE `tbl_question` (
  `question_id` int(10) UNSIGNED NOT NULL,
  `question` longtext NOT NULL,
  `first_answer` varchar(255) NOT NULL,
  `second_answer` varchar(255) NOT NULL,
  `third_answer` varchar(255) NOT NULL,
  `fourth_answer` varchar(255) NOT NULL,
  `fifth_answer` varchar(255) NOT NULL,
  `answer` int(11) NOT NULL,
  `reason` longtext NOT NULL,
  `marks` decimal(10,0) NOT NULL,
  `category` varchar(100) NOT NULL,
  `exam` int(11) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_question`
--

INSERT INTO `tbl_question` (`question_id`, `question`, `first_answer`, `second_answer`, `third_answer`, `fourth_answer`, `fifth_answer`, `answer`, `reason`, `marks`, `category`, `exam`, `is_active`, `added_date`, `updated_date`, `image_name`) VALUES
(102, '<p>If 6<em>k</em><sup>2</sup>&nbsp;+&nbsp;<em>k</em>&nbsp;= 2 and&nbsp;<em>k</em>&nbsp;&gt; 0, then&nbsp;<em>k</em>&nbsp;must equal which of the following?</p>\r\n', '1/2', '1', '3/2', '2', '3', 1, '', '5', 'Math', 2, 'yes', '2021-12-10', '0000-00-00', ''),
(103, '<p>In how many different ways can 3 identical green shirts and 3 identical red shirts be distributed among 6 children such that each child receives a shirt?</p>\r\n', '20', '40', '216', '720', '729', 1, '', '5', 'Math', 2, 'yes', '2021-12-10', '0000-00-00', ''),
(104, '<p>Dharik lives in a house on a straight street. For years, there have been 16 houses on his street to the right of his house and 17 houses on his street to the left of his house. Last year, 5 new houses were built on the same street even further to the left of those houses to the left of Dharik&rsquo;s house. If these are the only houses on this street, how many houses are on this street?</p>\r\n', '49', '30', '39', '10', '54', 3, '', '5', 'Math', 2, 'yes', '2021-12-10', '0000-00-00', ''),
(105, '<p>A popular website requires users to create a password consisting of digits only. If no digit may be repeated and each password must be at least 9 digits long, how many passwords are possible?</p>\r\n', '9! + 10!', '2 × 10!', '9! × 10', '19!', '20!', 2, '', '5', 'Math', 2, 'yes', '2021-12-10', '0000-00-00', ''),
(106, '<p>The figure above shows a circle with center&nbsp;C&nbsp;and radius 6. What is the sum of the areas of the two shaded regions?</p>\r\n', '7.5 pi', '6 pi', '4.5 pi', '4 pi', '3 pi', 4, '', '5', 'Math', 2, 'yes', '2021-12-10', '0000-00-00', 'Exam_Question_Saumya_Gupta_52541789fe6b45968c077ad261620484.gif'),
(107, '<p>If u &gt; t, r &gt; q, s &gt; t, and t &gt; r, which of the following must be true?&nbsp;</p>\r\n\r\n<ol>\r\n	<li>u &gt; s</li>\r\n	<li>s &gt; q</li>\r\n	<li>u &gt; r</li>\r\n</ol>\r\n', 'I only ', 'II only ', 'III only ', 'I and II', 'II and III', 5, '', '5', 'Math', 1, 'yes', '2021-12-10', '0000-00-00', ''),
(108, '<p>If a real estate agent received a commission of 6 percent of the selling price of a certain house, what was the selling price of the house?&nbsp;</p>\r\n\r\n<p>(1) The selling price minus the real estate agent&#39;s commission was $84,600.</p>\r\n\r\n<p>(2) The selling price was 250 percent of the original purchase price of $36,000.&nbsp;</p>\r\n', 'Statement (1) ALONE is sufficient, but statement (2) alone is not sufficient. ', 'Statement (2) ALONE is sufficient, but statement (1) alone is not sufficient. ', 'BOTH statements TOGETHER are sufficient, but NEITHER statement ALONE is sufficient.', 'EACH statement ALONE is sufficient', 'Statements (1) and (2) TOGETHER are NOT sufficient.', 4, '', '5', 'Math', 1, 'yes', '2021-12-10', '0000-00-00', ''),
(109, '<p>If x is a positive integer such that (x - 1)(x - 3)(x - 5)....(x - 93) &lt; 0, how many values can x take?</p>\r\n', '47', '23', '46', '21', '22', 2, '', '5', 'Math', 1, 'yes', '2021-12-10', '0000-00-00', ''),
(110, '<p>Working alone, A can complete a task in &lsquo;a&rsquo; days and B in &lsquo;b&rsquo; days. They take turns in doing the task with each working 2 days at a time. If A starts they finish the task in exactly 10 days. If B starts, they take half a day more. How long does it take to complete the task if they both work together?</p>\r\n', '46/9', '50/9', '50/11', '36/7', '210/41', 4, '', '5', 'Math', 1, 'yes', '2021-12-10', '0000-00-00', ''),
(111, '<p>In the figure given below, ABC and CDE are two identical semi-circles of radius 2 units. B and D are the mid points of the arc ABC and CDE respectively. What is the area of the shaded region?</p>\r\n', '4π - 1', '3π - 1', '2π - 4', '½(3π - 1)', '2π - 2', 3, '', '5', 'Math', 1, 'yes', '2021-12-10', '0000-00-00', 'Exam_Question_Saumya_Gupta_20db2b2ddb5172fbddc92f46a0688387.jpg'),
(112, '<p>In order to better differentiate its product from generic brands, the cereal company first hired a marketing firm that specializes in creating campaigns to build brand awareness and&nbsp;then retools its factory to produce a variety of different shapes of cereal.</p>\r\n', 'then retools its factory to produce a variety of different shapes of cereal', 'retools its factory to produce a variety of different shapes of cereal', 'then retooled its factory to produce a variety of different shapes of cereal', 'then will retool its factory to produce a variety of different shapes of cereal', 'then produces a variety of different shapes of cereal through retooling its factory', 3, '<p>The actions of the cereal company are not in parallel form. First the company&nbsp;<em>hired&nbsp;</em>then it&nbsp;<em>retools&nbsp;</em>. Eliminate choice (A). Choice (B) still has the same error. Choice (D) changes the verb form incorrectly to the future tense. Choice (E) rewrites the sentence but retains the error.</p>\r\n', '5', 'English', 1, 'yes', '2021-12-10', '0000-00-00', ''),
(113, '<p>Believed to be one of the first widely read female authors of the Western world,&nbsp;Christine de Pizan&#39;s masterwork&nbsp;<cite>The Book of the City of the Ladies&nbsp;</cite>, was written in 1405 and is a history of the Western world from the woman&#39;s point-of-view.</p>\r\n', 'Believed to be one of the first widely read female authors of the Western world', 'Written by one of the first widely read female authors of the Western world', 'One of the first widely read female authors of the Western world, as some believe', 'Written by what some believe as one of the first widely read female authors of the Western world', 'Believed by some as one of the first works by a widely read female author in the Western world', 2, '<p>As written, this sentence has a misplaced modifier error: the book,&nbsp;<cite>The Book of the City of the Ladies&nbsp;</cite>isn&#39;t believed by anyone to be an author&mdash;&nbsp;<em>Christine de Pizan&nbsp;</em>is. Choices (A) and (C) repeat that error and can be eliminated. Choices (B) and (D) both change the introductory phrase to clearly refer to a written work, but choice (D) uses the incorrect idiom&nbsp;<em>believe as&nbsp;</em>instead of the correct form,&nbsp;<em>believe to be&nbsp;</em>. Choice (E) repeats that idiom error.</p>\r\n', '5', 'English', 1, 'yes', '2021-12-10', '0000-00-00', ''),
(114, '<p>One food writer wrote that reducing the amount of animal products in one&#39;s diet can contribute to better health and well-being. Based on this claim, some people are completely eliminating meat from their diets in order to be healthier.<br />\r\n<br />\r\nThe argument above relies on which of the following assumptions?</p>\r\n', 'Increasing the amount of vegetables and grains in one\'s diet can contribute to better health.', 'There will be no corresponding increase in the amount of dairy products in the diets of those who are eliminating meat.', 'Most food writers believe that some amount of animal products is necessary to a health diet.', 'Not all healthy lifestyles require a vegetarian diet.', 'Many people who do not eat animal products make decisions for health reasons.', 2, '<p>The argument states that some people are eliminating meat from their diets because reducing the amount of animal products in one&#39;s diet can lead to better health. Meat is only one type of animal product, however. The argument assumes that by eliminating meat, the people are reducing the total amount of animal products in their diets. Choice (A) addresses increasing the amount of vegetables and grains, but the argument just deals with animal products. Choice (B) correctly addresses the people who are eliminating meat and states that those people are not increasing their consumption of dairy, which is another instance of using animal products. Thus, these people are actually reducing the amount of animal products in their diets. Choice (C) addresses most food writers, who are irrelevant to this argument. Choice (D) addresses health lifestyles, which are irrelevant to this particular argument. Choice (E) addresses the reasons behind not eating animal products, which is irrelevant to the argument.</p>\r\n', '5', 'English', 1, 'yes', '2021-12-10', '0000-00-00', ''),
(115, '<p>Studies reveal that a daily exercise regimen helps stroke survivors regain dexterity in their extremities. Being given an exercise routine and having a consultation with a doctor about the exercise routine have been shown to be effective mechanisms to get patients to exercise daily.<br />\r\n<br />\r\nFrom the above information, which of the following statements can be reasonably inferred?</p>\r\n', 'A stroke survivor that is given a detailed exercise plan and consults her physician about the plan will regain full dexterity in her extremities.', 'If a stroke survivor is not given an exercise plan and does not consult with a doctor, she will not regain dexterity in her extremities.', 'Stroke survivors who are given an exercise routine and consult with a doctor about that routine will sometimes regain dexterity in their extremities.', 'Being given an exercise routine and having a consultation with a doctor about the routine is the best way to help a stroke survivor regain dexterity in their extremities.', 'Only being given an exercise routine is necessary to regenerate dexterity in the extremities of seniors who have suffered a stroke.', 3, '<p>This is an inference question, so evaluate the passage and then look for an answer choice that&nbsp;<em>can be reasonably inferred&nbsp;</em>from the information. The passage states that a&nbsp;<em>daily exercise regimen helps stroke survivors regain dexterity in their extremities&nbsp;</em>and that survivors who are&nbsp;<em>given an exercise routine&nbsp;</em>and who&nbsp;<em>have a consultation with a doctor&nbsp;</em>about the routine have been shown to be effective at getting&nbsp;<em>patients to exercise daily&nbsp;</em>. So it can be inferred that if a survivor is given a routine and consults with a doctor, they are more likely to exercise daily, which will help them regain dexterity. Choice (A) is an example of extreme language. The phrasing&nbsp;<em>will regain full dexterity&nbsp;</em>is not promised in the information in the passage, as the passage only states that a routine and consultations may help a survivor exercise more. Eliminate (A). Choice (B) is also an example of extreme language. There is no way to discern from the information provided that a strong survivor would not regain dexterity without an exercise routine and a consultation, so eliminate (B). Choice (C) is a reasonable inference to make from the information in the passage so keep (C). Choice (D) also contains the extreme language&nbsp;<em>best way&nbsp;</em>. The information does not compare this method with any other method so eliminate (D). Choice (E) is recycled language and does not address consulting with a doctor so eliminate (E). The correct answer is (C).</p>\r\n', '5', 'English', 1, 'yes', '2021-12-10', '0000-00-00', ''),
(116, '<p><em>Unlike&nbsp;<u>the nests of leaf cutters and most other ants</u>, situated underground or in pieces of wood, raider ants make a portable nest by entwining their long legs to form &quot;curtains&quot; of ants that hang from logs or boulders, providing protection for the queen and the colony larvae and pupae.&nbsp;</em></p>\r\n', 'The nests of leaf cutters and most other ants, ', 'The nests of leaf cutters and most other ants, which are ', 'Leaf cutters and most other ants, whose nests are', 'Leaf cutters and most other ants in having nests ', 'Those of leaf cutters and most other ants with nests', 3, '<p>C makes it clear (with the correct possessive phrase whose nests) that it is the nests of the leaf cutters and most other ants that are underground or in pieces of wood. Answer choice C is the correct answer.</p>\r\n', '5', 'English', 1, 'yes', '2021-12-10', '0000-00-00', ''),
(117, '<p>The passage implies which of the following about the current cost of generating electricity?</p>\r\n', 'It is higher than it would be if better technologies for capturing carbon dioxide were available.', 'It is somewhat less than the cost of electricity transmission and distribution.', 'It constitutes at most half of the delivered price of electricity.', 'It is dwelt on by policymakers to the exclusion of other costs associated with electricity delivery.', 'It is not fully recovered by the prices charged directly to electricity consumers.', 3, '', '5', 'English', 2, 'yes', '2021-12-10', '0000-00-00', ''),
(118, '<p>From the outset, the concept of freedom of the seas from the proprietary claims of nations was challenged by a contrary notion &mdash; that of the _______ of the oceans for reasons of national security and profit.</p>\r\n', 'promotion', 'exploration', 'surveying', 'conservation', 'appropriation', 5, '', '5', 'English', 2, 'yes', '2021-12-10', '0000-00-00', ''),
(119, '<p>Although it does contain some pioneering ideas, one would hardly characterize the work as __________.</p>\r\n', 'orthodox', 'eccentric', 'original', 'trifling', 'conventional', 3, '', '5', 'English', 2, 'yes', '2021-12-10', '0000-00-00', ''),
(120, '<p>The corporation expects only _______ increases in sales next year despite a yearlong effort to revive its retailing business.</p>\r\n', 'dynamic', 'predictable', 'expanding', 'modest', 'volatile', 4, '', '5', 'English', 2, 'yes', '2021-12-10', '0000-00-00', ''),
(121, '<p>The travel writer&rsquo;s ______________ towards others he met on his cross-country trip most likely endeared him only to those readers with a misanthropic bent.</p>\r\n', 'diffidence', 'humility', 'cynicism', 'garrulity', 'obsequiousness', 3, '', '5', 'English', 2, 'yes', '2021-12-10', '2021-12-10', ''),
(122, '<p><strong>2+2</strong></p>\r\n', '5', '4', '3', '1/2', '7', 2, '', '5', 'Math', 3, 'yes', '2021-12-11', '2021-12-11', ''),
(123, '<p><strong>Bolt from the blue</strong></p>\r\n', 'Thundering', 'A complete surprise', 'Inform something bad', 'Blessing', 'No idea', 2, '', '5', 'English', 3, 'yes', '2021-12-11', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `result_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) UNSIGNED NOT NULL,
  `question_id` int(11) UNSIGNED NOT NULL,
  `user_answer` int(11) UNSIGNED NOT NULL,
  `right_answer` int(11) UNSIGNED NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`result_id`, `student_id`, `question_id`, `user_answer`, `right_answer`, `added_date`) VALUES
(69, 1, 113, 2, 2, '2021-12-10'),
(70, 1, 112, 3, 3, '2021-12-10'),
(71, 1, 114, 2, 2, '2021-12-10'),
(72, 1, 115, 3, 3, '2021-12-10'),
(73, 1, 116, 2, 3, '2021-12-10'),
(74, 1, 108, 3, 4, '2021-12-10'),
(75, 1, 107, 5, 5, '2021-12-10'),
(76, 1, 109, 2, 2, '2021-12-10'),
(77, 1, 110, 3, 4, '2021-12-10'),
(78, 1, 111, 3, 3, '2021-12-10'),
(79, 2, 121, 3, 3, '2021-12-10'),
(80, 2, 118, 3, 5, '2021-12-10'),
(81, 2, 117, 2, 3, '2021-12-10'),
(82, 2, 119, 3, 3, '2021-12-10'),
(83, 2, 120, 3, 4, '2021-12-10'),
(84, 2, 105, 3, 2, '2021-12-10'),
(85, 2, 106, 3, 4, '2021-12-10'),
(86, 2, 104, 1, 3, '2021-12-10'),
(87, 2, 102, 2, 1, '2021-12-10'),
(88, 2, 103, 2, 1, '2021-12-10'),
(90, 3, 123, 2, 2, '2021-12-11'),
(91, 2, 118, 3, 5, '2021-12-11'),
(92, 2, 117, 3, 3, '2021-12-11'),
(93, 2, 119, 2, 3, '2021-12-11'),
(94, 2, 120, 3, 4, '2021-12-11'),
(95, 2, 121, 4, 3, '2021-12-11'),
(96, 2, 106, 2, 4, '2021-12-11'),
(97, 2, 105, 1, 2, '2021-12-11'),
(98, 2, 102, 1, 1, '2021-12-11'),
(99, 2, 103, 3, 1, '2021-12-11'),
(100, 2, 104, 3, 3, '2021-12-11'),
(101, 3, 123, 2, 2, '2021-12-11'),
(102, 3, 122, 2, 2, '2021-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result_summary`
--

CREATE TABLE `tbl_result_summary` (
  `summary_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) UNSIGNED NOT NULL,
  `marks` decimal(10,2) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_result_summary`
--

INSERT INTO `tbl_result_summary` (`summary_id`, `student_id`, `marks`, `added_date`) VALUES
(28, 1, '35.00', '2021-12-10'),
(29, 2, '10.00', '2021-12-10'),
(31, 3, '5.00', '2021-12-11'),
(32, 2, '15.00', '2021-12-11'),
(33, 3, '10.00', '2021-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `exam` varchar(50) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `first_name`, `last_name`, `email`, `username`, `password`, `contact`, `gender`, `exam`, `is_active`, `added_date`, `updated_date`) VALUES
(1, 'Saumya', 'Gupta', 'sg5884@srmist.edu.in', 'student', 'student', '8114200025', 'female', '1', 'no', '2021-11-11', '2021-12-11'),
(2, 'Riya', 'Singh', 'rs2467@srmist.edu.in', 'student1', 'student1', '123456798', 'female', '2', 'no', '2021-12-10', '2021-12-11'),
(3, 'Ajay', 'Verma', 'av2494@srmist.edu.in', 'student2', 'student2', '6372817730', 'male', '3', 'no', '2021-12-11', '2021-12-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_app`
--
ALTER TABLE `tbl_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `tbl_exam`
--
ALTER TABLE `tbl_exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `tbl_result_summary`
--
ALTER TABLE `tbl_result_summary`
  ADD PRIMARY KEY (`summary_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_app`
--
ALTER TABLE `tbl_app`
  MODIFY `app_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_exam`
--
ALTER TABLE `tbl_exam`
  MODIFY `exam_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_question`
--
ALTER TABLE `tbl_question`
  MODIFY `question_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `result_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tbl_result_summary`
--
ALTER TABLE `tbl_result_summary`
  MODIFY `summary_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
