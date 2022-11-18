-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 12:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organ_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigndoctor`
--

CREATE TABLE `assigndoctor` (
  `assign_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `request_id` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `user_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigndoctor`
--

INSERT INTO `assigndoctor` (`assign_id`, `doctor_id`, `type`, `request_id`, `status`, `user_id`) VALUES
(24, 13, '', '11', 'pending', 0),
(25, 12, '', '11', 'pending', 0),
(26, 14, '', '11', 'pending', 0),
(27, 15, '', '12', 'pending', 0),
(28, 15, '', '12', 'pending', 0),
(29, 15, '', '12', 'pending', 0);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add assigndoctor', 7, 'add_assigndoctor'),
(26, 'Can change assigndoctor', 7, 'change_assigndoctor'),
(27, 'Can delete assigndoctor', 7, 'delete_assigndoctor'),
(28, 'Can view assigndoctor', 7, 'view_assigndoctor'),
(29, 'Can add doctor', 8, 'add_doctor'),
(30, 'Can change doctor', 8, 'change_doctor'),
(31, 'Can delete doctor', 8, 'delete_doctor'),
(32, 'Can view doctor', 8, 'view_doctor'),
(33, 'Can add hospital', 9, 'add_hospital'),
(34, 'Can change hospital', 9, 'change_hospital'),
(35, 'Can delete hospital', 9, 'delete_hospital'),
(36, 'Can view hospital', 9, 'view_hospital'),
(37, 'Can add login', 10, 'add_login'),
(38, 'Can change login', 10, 'change_login'),
(39, 'Can delete login', 10, 'delete_login'),
(40, 'Can view login', 10, 'view_login'),
(41, 'Can add organcollection', 11, 'add_organcollection'),
(42, 'Can change organcollection', 11, 'change_organcollection'),
(43, 'Can delete organcollection', 11, 'delete_organcollection'),
(44, 'Can view organcollection', 11, 'view_organcollection'),
(45, 'Can add organdonation', 12, 'add_organdonation'),
(46, 'Can change organdonation', 12, 'change_organdonation'),
(47, 'Can delete organdonation', 12, 'delete_organdonation'),
(48, 'Can view organdonation', 12, 'view_organdonation'),
(49, 'Can add organrequest', 13, 'add_organrequest'),
(50, 'Can change organrequest', 13, 'change_organrequest'),
(51, 'Can delete organrequest', 13, 'delete_organrequest'),
(52, 'Can view organrequest', 13, 'view_organrequest'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'assigndoctor', 'assigndoctor'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'doctor', 'doctor'),
(9, 'hospital', 'hospital'),
(10, 'login', 'login'),
(11, 'organcollection', 'organcollection'),
(12, 'organdonation', 'organdonation'),
(13, 'organrequest', 'organrequest'),
(6, 'sessions', 'session'),
(14, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-12 05:46:56.436146'),
(2, 'auth', '0001_initial', '2022-10-12 05:46:57.222014'),
(3, 'admin', '0001_initial', '2022-10-12 05:46:57.390597'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-12 05:46:57.406320'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-12 05:46:57.422942'),
(6, 'assigndoctor', '0001_initial', '2022-10-12 05:46:57.467872'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-10-12 05:46:57.548396'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-10-12 05:46:57.666500'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-10-12 05:46:57.705126'),
(10, 'auth', '0004_alter_user_username_opts', '2022-10-12 05:46:57.731952'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-10-12 05:46:57.829681'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-10-12 05:46:57.834528'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-10-12 05:46:57.857181'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-10-12 05:46:57.896328'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-10-12 05:46:57.934267'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-10-12 05:46:57.980833'),
(17, 'auth', '0011_update_proxy_permissions', '2022-10-12 05:46:58.005695'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-10-12 05:46:58.046526'),
(19, 'doctor', '0001_initial', '2022-10-12 05:46:58.096680'),
(20, 'hospital', '0001_initial', '2022-10-12 05:46:58.146980'),
(21, 'login', '0001_initial', '2022-10-12 05:46:58.214368'),
(22, 'organcollection', '0001_initial', '2022-10-12 05:46:58.254542'),
(23, 'organdonation', '0001_initial', '2022-10-12 05:46:58.316102'),
(24, 'organrequest', '0001_initial', '2022-10-12 05:46:58.381674'),
(25, 'sessions', '0001_initial', '2022-10-12 05:46:58.436783'),
(26, 'user', '0001_initial', '2022-10-12 05:46:58.494486'),
(27, 'assigndoctor', '0002_alter_assigndoctor_options', '2022-11-12 07:02:04.095206'),
(28, 'doctor', '0002_alter_doctor_options', '2022-11-12 07:02:04.125750'),
(29, 'hospital', '0002_alter_hospital_options', '2022-11-12 07:02:04.132047'),
(30, 'organdonation', '0002_alter_organdonation_options', '2022-11-12 07:02:04.139895');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('vijcfmei141cq21m2ynim4y7rvx104w6', 'eyJ1X2lkIjoxNX0:1ouB7f:OUzoZIUQK_50el4gGcLzvZ0MPo1bg2bG5wLn0jz0kCM', '2022-11-27 11:25:59.128309');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `hospital_id` varchar(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(20) NOT NULL,
  `specialisation` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`hospital_id`, `doctor_id`, `doctor_name`, `specialisation`, `password`) VALUES
('2', 7, 'rahul', 'nuerology', ''),
('3', 8, 'gry', 'nuerology', ''),
('3', 9, ' nbh', 'htyui', ''),
('3', 10, 'ashiq', 'cardiology', '12345'),
('1', 11, 'mumthaz', 'cardiology', 'mumthaz'),
('3', 12, 'manoharan', 'nuerology', '12345'),
('1', 13, 'ashik', 'nuerology', '12345'),
('3', 14, 'peter', 'dermatologist', 'peter123'),
('1', 15, 'ayrin', 'nuerology', 'ayrin');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `hospital_name`, `location`, `latitude`, `longitude`) VALUES
(1, 'abc', 'jku', 'jkjl', 'kljk'),
(2, 'abc', 'jku', 'jkjl', 'kljk'),
(3, 'yu', 'iu', 'oi', 'kop0'),
(4, 'yu', 'iu', 'oi', 'kop0'),
(5, 'abc', 'jku', 'oi', 'kop0');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `type`, `uid`) VALUES
(3, 'admin ', 'admin', 'admin', 0),
(10, 'peter', 'peter', 'user', 12),
(11, 'ayrin', 'ayrin', 'doctor', 15),
(12, 'mumthaz', 'mumthaz', 'user', 13);

-- --------------------------------------------------------

--
-- Table structure for table `organcollection`
--

CREATE TABLE `organcollection` (
  `collection_id` int(11) NOT NULL,
  `donation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organcollection`
--

INSERT INTO `organcollection` (`collection_id`, `donation_id`, `user_id`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `organdonation`
--

CREATE TABLE `organdonation` (
  `donation_id` int(5) NOT NULL,
  `organ_name` varchar(20) NOT NULL,
  `blood_group` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `donor_name` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organdonation`
--

INSERT INTO `organdonation` (`donation_id`, `organ_name`, `blood_group`, `user_id`, `date`, `donor_name`, `status`, `age`) VALUES
(10, 'brain', 'a-', 1, '2022-11-10', 'peter', 'pending', 34),
(11, 'kidney', 'a', 1, '2022-11-23', 'peter', 'pending', 34),
(12, 'liver', 'jyuu', 1, '2022-11-16', 'peter', 'pending', 22),
(13, 'kidney', 'a', 12, '2022-11-30', 'peter', 'pending', 12),
(14, 'yu687', 'kjhiu', 13, '2022-11-30', 'mumthaz', 'pending', 22);

-- --------------------------------------------------------

--
-- Table structure for table `organrequest`
--

CREATE TABLE `organrequest` (
  `request_id` int(11) NOT NULL,
  `organ _name` varchar(20) NOT NULL,
  `blood_group` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organrequest`
--

INSERT INTO `organrequest` (`request_id`, `organ _name`, `blood_group`, `status`, `user_id`, `age`) VALUES
(21, 'kidney', 'a-', 'approve', 12, 34),
(22, 'eyes', 'a-', 'approve', 12, 34),
(23, 'brain', 'a-', 'pending', 13, 22),
(24, 'abc', 'jyuu', 'pending', 12, 23),
(25, 'qaz', 'jyuu', 'approve', 12, 34);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `phone`, `email`, `address`, `password`, `age`, `gender`) VALUES
(1, 'ew3et', '+919061892004', 'jaseelapp2492@gmail.', 'Jaseela pp', '123457', 12, ''),
(2, 'feryt', '+918590629449', 'nabeelaazeezp.p@gmai', 'Jaseela pp', 'jdhsfdskj', 34, ''),
(3, 'nabeela', '+918590629449', 'nabeelaazeezp.p@gmai', 'pp', 'billa', 22, ''),
(4, 'fidha', '+919061892004', 'jaseelapp2492@gmail.', 'Jaseela pp', '12345', 23, ''),
(5, 'sam', '+919061892004', 'jaseelapp2492@gmail.', 'Jaseela pp', 'sdfghjk', 12, ''),
(6, 'nabeela', '+919061892004', 'jaseelapp2492@gmail.', 'Jaseela pp', 'as', 34, 'femal'),
(7, 'asdew', '+918590629449', 'nabeelaazeezp.p@gmai', 'Jaseela pp', 'bnm,', 12, 'female'),
(8, 'aaa', '+919061892004', 'jaseelapp2492@gmail.', 'Jaseela pp', 'aaa', 12, 'male'),
(9, 'nabeela', '123456', 'nabeelaazeezp.p@gmai', 'Jaseela pp', '12345', 22, 'female'),
(10, 'manohar', '+918590629449', 'nabeelaazeezp.p@gmai', 'Jaseela pp', '12345', 56, 'male'),
(11, 'farsana', '+918590629449', 'nabeelaazeezp.p@gmai', 'Jaseela pp', '12345', 34, 'female'),
(12, 'peter', '+918590629449', 'nabeelaazeezp.p@gmai', 'Jaseela pp', 'peter', 34, 'male'),
(13, 'mumthaz', '+918590629449', 'nabeelaazeezp.p@gmai', 'Jaseela pp', 'mumthaz', 22, 'female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigndoctor`
--
ALTER TABLE `assigndoctor`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `organcollection`
--
ALTER TABLE `organcollection`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `organdonation`
--
ALTER TABLE `organdonation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `organrequest`
--
ALTER TABLE `organrequest`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigndoctor`
--
ALTER TABLE `assigndoctor`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `organcollection`
--
ALTER TABLE `organcollection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `organdonation`
--
ALTER TABLE `organdonation`
  MODIFY `donation_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `organrequest`
--
ALTER TABLE `organrequest`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
