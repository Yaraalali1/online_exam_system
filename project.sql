-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`


 Table structure for table `admin`
--	

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


	Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES

(2, 'admin@admin.com', 'admin');



Table structure for table `answer`
--	

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
Dumping data for table `answer`
--

	INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722');



Table structure for table `feedback`
--	

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


Dumping data for table `feedback` 
--	

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES

							       ('55846be776610', 'testing', 'dilara@gmail.com', 'testing', 'testing stART', '2018-12-20', '21:13:15pm'),


							       ('5589858b6c43b', 'nik', 'asli1@gmail.com', 'good', 'good site', '2005-11-20', '15:30:59pm'),

							       ('55846be776610', 'elif', 'elif@gmail.com', 'tests', 'we need more tests', '2018-12-08', '05:13:15pm');

Table structure for table `history`
--   CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


Dumping data for table `history`
--

      INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
              						     ('nik1@gmail.com', '558921841f1ec', 1 , 2 , 1 , 1 , '2015-06-23 09:31:26'),

							     ('admin@gmail.com', '5589741f9ed52', -2 , 5 ,1 , 4 , '2018-12-19 23:25:25'),

							     ('elif@gmail.com', '5589222f16b93', 1 , 2 , 1 , 1 , '2018-12-23 14:11:13'),

							     ('yara@gmail.com', '558922ec03021', 1 , 2 ,1 ,1, '2019-01-03 21:06:14'),

							     ('asli10@gmail.com', '5589741f9ed52', -2,5,1,4, '2019-01-03 21:06:58'),

							     ('ahmet@gmail.com', '5589222f16b93', -2,5,1,4, '2019-01-03 21:08:59');



Table structure for table `options`
--  

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


Dumping data for table `options`
--

     INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES

				                              ('55892169bf6a7', 'usermod', '55892169d2efc'),
('55892169bf6a7', 'useradd', '55892169d2f05'),

							      ('55892169bf6a7', 'useralter', '55892169d2f09'),
('55892169bf6a7', 'groupmod', '55892169d2f0c'),

							      ('5589216a3646e', '751', '5589216a48713'),
('5589216a3646e', '752', '5589216a4871a'),

						  	      ('5589216a3646e', '754', '5589216a4871f'),
('5589216a3646e', '755', '5589216a48722'),

							      ('558922117fcef', 'echo', '5589221195248'),
('558922117fcef', 'print', '558922119525a'),

							      ('558922117fcef', 'printf', '5589221195265'),
('558922117fcef', 'cout', '5589221195270'),

							      ('55892211e44d5', 'int a', '55892211f1f97'),
('55892211e44d5', '$a', '55892211f1fa7'),

							      ('55892211e44d5', 'long int a', '55892211f1fb4'),
('55892211e44d5', 'int a$', '55892211f1fbd'),

							      ('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),

							      ('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),

							      ('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df');




Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


Dumping data for table `questions`
--   

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES

							('558920ff906b8', '55892169bf6a7', 'what is command for changing user information??', 4, 1),

							('558920ff906b8', '5589216a3646e', 'what is permission for view only for other??', 4, 2),

							('558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),

							('558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),

							('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),

							('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),

							('558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),

							('558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),

							('55897338a6659', '558973f4389ac', 'On Linux, initrd is a file', 4, 1),

							('55897338a6659', '558973f4c46f2', 'Which is loaded into memory when system is booted?', 4, 2),

							('55897338a6659', '558973f51600d', ' The process of starting up a computer is known as', 4, 3),

							('55897338a6659', '558973f55d269', ' Bootstrapping is also known as', 4, 4),

 

Table structure for table `quiz`
--    

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


 Dumping data for table `quiz`
--      

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
							('558920ff906b8', 'Linux : File Managment', 2, 1, 2, 5, '', 'linux', '2015-06-23 09:03:59'),

							('558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2015-06-23 09:06:12'),

							('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2015-06-23 09:09:03'),

							('558922ec03021', 'Networking', 2, 1, 2, 5, '', 'networking', '2015-06-23 09:12:12'),

							('55897338a6659', 'Linux:startup', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:54:48'),

							('5589741f9ed52', 'Linux :vi Editor', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:58:39');



Table structure for table `rank`
--  

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8
 Dumping data for table `rank`
--

    INSERT INTO `rank` (`email`, `score`, `time`) VALUES

							('ahmet@gmail.com', -2, '2019-01-03 21:08:59'),

							('asli@gmail.com', -2, '2019-01-03 21:06:58'),

							('yara@gmail.com', 1, '2019-01-03 21:06:14'),

							('elif@gmail.com', 1, '2018-12-23 14:11:13');




Table structure for table `user`
-- 

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-
 Dumping data for table `user`
--

   INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES

							('Aslı', 'F', Toros university', 'asli@gmail.com', 5551234567, 'e10adc3949ba59abbe56e057f20f883e'),

							('Yara', 'F', 'Toros Universitesi', 'yara@gmail.com.com', 5551234567, 'e10adc3949ba59abbe56e057f20f883e'),

							('Ahmet', 'M', 'Toros Universitesi', 'ahmet@gmail.com', 5551234567, 'e10adc3949ba59abbe56e057f20f883e'),

							('Elif', 'F', 'Toros Universitesi', 'elif@.gmail.com', 5551234567, 'e10adc3949ba59abbe56e057f20f883e');

  Indexes for dumped tables

  Indexes for table `admin`
--        
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);


  Indexes for table `user`
--         
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);




AUTO_INCREMENT for dumped tables
 AUTO_INCREMENT for table `admin`
--  
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
