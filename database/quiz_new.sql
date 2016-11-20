-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2016 at 04:51 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `id` int(11) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(1, 1, 'What is your name?\r\n', 'a ', 'b', 'c', 'd', 2),
(2, 2, '1+1?', '2', '35', '454', '56', 1),
(3, 3, 'What is your name?', '1', '2', '3', '4', 2),
(4, 3, 'what is your age?', '5', '656', '56', '5', 2),
(5, 4, 'wwhta iusapfb', 'klsdh', 'dfjgh', 'dfjgh', 'sfdgh', 1),
(6, 5, 'dfh', 'sdglh', 'dflgh', 'dflkjgh', 'fdh', 2),
(7, 5, 'd,gjh', 'jdfskghdsk', 'dfskjgh', 'skjdgh', 'djfkfsgh', 3),
(8, 6, 'fakshf', 'kjhfkhg', 'khkjh', 'kjh', 'khkj', 2),
(9, 6, 'fakshf', 'kjhfkhg', 'khkjh', 'kjh', 'khkj', 2),
(10, 6, 'sdfdsb', 'kjh', 'kjhk', 'jh', 'kjhk', 3),
(11, 6, 'dsfsdmfbn', 'jb', 'jh', 'kjh', 'kj', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('raj', 8, '0000-00-00', 3),
('raj', 9, '0000-00-00', 3),
('raj', 8, '0000-00-00', 1),
('ashish', 10, '0000-00-00', 3),
('ashish', 9, '0000-00-00', 2),
('ashish', 10, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('ankur', 11, '0000-00-00', 0),
('delushaan', 8, '0000-00-00', 1),
('delushaan', 11, '0000-00-00', 0),
('', 13, '0000-00-00', 0),
('delushaan', 13, '0000-00-00', 0),
('delushaan', 13, '0000-00-00', 0),
('delushaan', 13, '0000-00-00', 0),
('delushaan', 13, '0000-00-00', 0),
('abcd', 13, '0000-00-00', 0),
('ibjas', 12, '0000-00-00', 0),
('basura', 9, '0000-00-00', 0),
('basura', 14, '0000-00-00', 0),
('humirah', 8, '0000-00-00', 1),
('humirah', 15, '0000-00-00', 0),
('delushaan', 15, '0000-00-00', 0),
('delushaan', 12, '0000-00-00', 0),
('delushaan', 15, '0000-00-00', 0),
('delushaan', 15, '0000-00-00', 0),
('delushaan', 15, '0000-00-00', 0),
('sasika', 8, '0000-00-00', 0),
('sasika', 16, '0000-00-00', 1),
('delushaan', 16, '0000-00-00', 1),
('delushaan', 16, '0000-00-00', 1),
('delushaan', 15, '0000-00-00', 0),
('delushaan', 17, '0000-00-00', 1),
('nuwan', 17, '0000-00-00', 1),
('delushaan', 17, '0000-00-00', 1),
('delushaan', 18, '0000-00-00', 1),
('chamrith', 18, '0000-00-00', 0),
('chamrith', 19, '0000-00-00', 1),
('delushaan', 19, '0000-00-00', 0),
('delushaan', 1, '0000-00-00', 1),
('kanishka', 2, '0000-00-00', 1),
('delushaan', 1, '0000-00-00', 0),
('asd', 1, '0000-00-00', 1),
('acd', 2, '0000-00-00', 0),
('acd', 3, '0000-00-00', 1),
('acd', 3, '0000-00-00', 2),
('acd', 4, '0000-00-00', 1),
('dlna', 3, '0000-00-00', 1),
('dlna', 5, '0000-00-00', 1),
('abc', 3, '0000-00-00', 0),
('abc', 5, '0000-00-00', 0),
('abc', 6, '0000-00-00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'English'),
(2, 'maths'),
(3, 'Commerce'),
(4, 'abc'),
(5, 'IT'),
(6, 'Bio');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(1, 1, 'First level exam', '5'),
(2, 2, 'first level exam maths', '5'),
(3, 3, 'First exam', '5'),
(4, 4, 'exam ', '2'),
(5, 5, '01 exam', '2'),
(6, 6, 'first lesson', '20');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(15, 'delushaan', '0778114143d', 'Mohan Delushaan', 'No 110 rosita housing scheme kotagala', 'Kotagala', 778114143, 'mdelushaan@gmail.com'),
(16, 'kanishka', '1234', 'fdkj', 'kldadfsjg', 'dflkj', 0, 'kanishka@gmail.com'),
(17, 'asd', '123', 'dsflkj', 'ssldfgkj', 'lfkj', 0, 'dflgj@gmail.coj'),
(18, 'acd', 'acd', 'fgdf', 'dsg', 'dfbd', 0, 'fd@gmail.co,'),
(19, 'dlna', '123', 'dffh', 'dfgj', 'fdklgj', 0, 'dlna@gmail.com'),
(20, 'abc', 'abc', 'dlkf', 'kjd', 'klj', 0, 'k@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('6ia4o4f8r0em9ap9tip6c50a04', 13, 'What is your Name?', 'delushaan', 'delushaanbilla', 'delushaandeli', 'delushaanlasdfj', 0, 2),
('6ia4o4f8r0em9ap9tip6c50a04', 13, 'how old are u?\r\n', 'dlfgk', 'sdlkg', 'lfdgk', 'dflgk', 0, 2),
('fkol8a3lqlrihdh95iasd00601', 4, 'wwhta iusapfb', 'klsdh', 'dfjgh', 'dfjgh', 'sfdgh', 1, 1),
('qi7falbtghmn4kmifqgbppkrj1', 6, 'fakshf', 'kjhfkhg', 'khkjh', 'kjh', 'khkj', 2, 2),
('qi7falbtghmn4kmifqgbppkrj1', 6, 'fakshf', 'kjhfkhg', 'khkjh', 'kjh', 'khkj', 2, 3),
('qi7falbtghmn4kmifqgbppkrj1', 6, 'sdfdsb', 'kjh', 'kjhk', 'jh', 'kjhk', 3, 3),
('qi7falbtghmn4kmifqgbppkrj1', 6, 'dsfsdmfbn', 'jb', 'jh', 'kjh', 'kj', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_admin`
--
ALTER TABLE `mst_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
  MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
