-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 04:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classroom_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `session_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `statuss` enum('Present','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `lecture_id`, `student_id`, `session_date`, `created_at`, `updated_at`, `deleted_at`, `statuss`) VALUES
(1, 1, 1, '2023-05-01', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL, 'Present'),
(2, 1, 2, '2023-05-01', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL, 'Absent'),
(3, 2, 3, '2023-05-02', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL, 'Present'),
(4, 2, 4, '2023-05-02', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL, 'Present'),
(5, 3, 4, '2023-05-03', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL, 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `statuss` enum('Ongoing','Completed') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `price`, `statuss`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'WEB', 'Description for Course 1', 100.00, 'Ongoing', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(2, 'Mobile', 'Description for Course 2', 150.00, 'Completed', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(3, 'UIUX', 'Description for Course 3', 200.00, 'Ongoing', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(4, 'Security', 'Description for Course 4', 120.00, 'Ongoing', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(5, 'DevOps', 'Description for Course 5', 180.00, 'Completed', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `numSessions` int(11) DEFAULT NULL,
  `statuss` enum('Ongoing','Completed') NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `name`, `description`, `numSessions`, `statuss`, `course_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Spring Boot', 'Description for Lecture 1', 10, 'Ongoing', 1, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(2, 'HTML', 'Description for Lecture 2', 8, 'Completed', 2, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(3, 'Java', 'Description for Lecture 3', 12, 'Ongoing', 3, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(4, 'C++', 'Description for Lecture 4', 9, 'Ongoing', 4, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(5, '.NET', 'Description for Lecture 5', 6, 'Completed', 5, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `score_id` int(11) NOT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `session_date` date DEFAULT NULL,
  `score` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`score_id`, `lecture_id`, `student_id`, `session_date`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2023-05-01', 8.5, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(2, 1, 2, '2023-05-01', 7, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(3, 2, 3, '2023-05-02', 9, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(4, 2, 4, '2023-05-02', 8, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(5, 3, 4, '2023-05-03', 9.5, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `passwordd` varchar(255) NOT NULL,
  `statuss` enum('Studying','On Hold') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `dateOfBirth`, `gender`, `email`, `phoneNumber`, `username`, `passwordd`, `statuss`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nguyễn Ngọc D', '1994-01-01', 'Male', 'student1@example.com', '111111111', 'student1', 'password1', 'Studying', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(2, 'Trịnh Tuyết C', '1996-02-02', 'Female', 'student2@example.com', '222222222', 'student2', 'password2', 'On Hold', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(3, 'Lương Nhật M', '1993-03-03', 'Male', 'student3@example.com', '333333333', 'student3', 'password3', 'Studying', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(4, 'Lê Thị A', '1997-04-04', 'Female', 'student4@example.com', '444444444', 'student4', 'password4', 'Studying', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(5, 'Bùi Quang S', '1992-05-05', 'Male', 'student5@example.com', '555555555', 'student5', 'password5', 'On Hold', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_lecture`
--

CREATE TABLE `student_lecture` (
  `student_id` int(11) NOT NULL,
  `lecture_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_lecture`
--

INSERT INTO `student_lecture` (`student_id`, `lecture_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(1, 2, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(2, 3, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(2, 4, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(3, 4, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `passwordd` varchar(255) NOT NULL,
  `statuss` enum('Teaching','On Leave') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `dateOfBirth`, `gender`, `email`, `phoneNumber`, `username`, `passwordd`, `statuss`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ngô Văn A', '1990-01-01', 'Male', 'teacher1@example.com', '123456789', 'teacher1', 'password1', 'Teaching', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(2, 'Đình Thị B', '1992-02-02', 'Female', 'teacher2@example.com', '987654321', 'teacher2', 'password2', 'On Leave', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(3, 'Phạm Văn X', '1995-03-03', 'Male', 'teacher3@example.com', '111222333', 'teacher3', 'password3', 'Teaching', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(4, 'Lê Thị C', '1988-04-04', 'Female', 'teacher4@example.com', '444555666', 'teacher4', 'password4', 'Teaching', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(5, 'Bùi Đức V', '1985-05-05', 'Male', 'teacher5@example.com', '777888999', 'teacher5', 'password5', 'On Leave', '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_lecture`
--

CREATE TABLE `teacher_lecture` (
  `teacher_id` int(11) NOT NULL,
  `lecture_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_lecture`
--

INSERT INTO `teacher_lecture` (`teacher_id`, `lecture_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(1, 2, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(2, 3, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(2, 4, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL),
(3, 4, '2023-06-20 14:30:22', '2023-06-20 14:30:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `lecture_id` (`lecture_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `lecture_id` (`lecture_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_phoneNumber` (`phoneNumber`);

--
-- Indexes for table `student_lecture`
--
ALTER TABLE `student_lecture`
  ADD PRIMARY KEY (`student_id`,`lecture_id`),
  ADD KEY `lecture_id` (`lecture_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_phoneNumber` (`phoneNumber`);

--
-- Indexes for table `teacher_lecture`
--
ALTER TABLE `teacher_lecture`
  ADD PRIMARY KEY (`teacher_id`,`lecture_id`),
  ADD KEY `lecture_id` (`lecture_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `lectures_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`),
  ADD CONSTRAINT `score_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `student_lecture`
--
ALTER TABLE `student_lecture`
  ADD CONSTRAINT `student_lecture_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_lecture_ibfk_2` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`);

--
-- Constraints for table `teacher_lecture`
--
ALTER TABLE `teacher_lecture`
  ADD CONSTRAINT `teacher_lecture_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`),
  ADD CONSTRAINT `teacher_lecture_ibfk_2` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
