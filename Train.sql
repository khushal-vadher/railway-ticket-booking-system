-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 04:06 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btb`
--

-- --------------------------------------------------------

--
-- Table structure for table `acount_contactus`
--

CREATE TABLE `acount_contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `timeStamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acount_contactus`
--

INSERT INTO `acount_contactus` (`id`, `name`, `email`, `subject`, `message`, `timeStamp`) VALUES
(1, 'khushal', 'khushalvadher229@gmail.com', 'hi', 'fggdfgfgfggfdggdf', '2022-04-07 20:19:51.479910');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add ticket detail', 7, 'add_ticketdetail'),
(26, 'Can change ticket detail', 7, 'change_ticketdetail'),
(27, 'Can delete ticket detail', 7, 'delete_ticketdetail'),
(28, 'Can view ticket detail', 7, 'view_ticketdetail'),
(29, 'Can add train details', 8, 'add_traindetails'),
(30, 'Can change train details', 8, 'change_traindetails'),
(31, 'Can delete train details', 8, 'delete_traindetails'),
(32, 'Can view train details', 8, 'view_traindetails'),
(33, 'Can add contact us', 9, 'add_contactus'),
(34, 'Can change contact us', 9, 'change_contactus'),
(35, 'Can delete contact us', 9, 'delete_contactus'),
(36, 'Can view contact us', 9, 'view_contactus');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$yyNBv7XMyeWWJIMaAntwah$XTkL+91dUOS/MW8/HYze4cZwur4MsS3kUVlV3e1/c7o=', NULL, 1, 'khushalvadher', '', '', 'khushalvadher229@gmail.com', 1, 1, '2022-04-07 17:26:42.520097'),
(2, 'pbkdf2_sha256$320000$AYovWFOKlMpdPY39cHSqNW$3b/5UKswiJTGrGksYygsfEoU5HFWN6APk5oVyCOQO1s=', NULL, 1, 'khushal_1510', '', '', 'khushal123@gmail.com', 1, 1, '2022-04-07 17:32:58.999837'),
(3, 'pbkdf2_sha256$320000$2zLQQ6fvcMcrkilvICvr0j$hlXwx1Z0e/YquFmWgb8anPKLblLB0tFnepYwUNdPgSA=', NULL, 1, 'hra', '', '', 'hra@gmail.com', 1, 1, '2022-04-07 18:02:28.157382'),
(4, 'pbkdf2_sha256$320000$onvDJaSx0QhLORpSACb9tM$4bKgIrq5fCd2AXHJNQTe/N4t7xPL5/y2FLzhSzLfXO4=', '2022-04-08 02:02:51.768529', 0, 'jay', '', '', 'jay12@gmail.com', 0, 1, '2022-04-07 18:11:54.927930'),
(5, 'pbkdf2_sha256$320000$9Wrr3NLcyloUNBXYWD0tju$+ZD8EVukdUdrlKgG/XwvuOCo3On/vTFRiR20yUt8tfQ=', '2022-04-08 02:03:57.968197', 1, 'kdv', '', '', 'kdv12@gmail.com', 1, 1, '2022-04-07 18:13:04.867064');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bookticket_ticketdetail`
--

CREATE TABLE `bookticket_ticketdetail` (
  `ticketID` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `trainID` int(11) NOT NULL,
  `journeyDate` date NOT NULL,
  `totalFare` int(11) NOT NULL,
  `seatNo` varchar(2) NOT NULL,
  `passName` varchar(50) NOT NULL,
  `passAge` int(11) NOT NULL,
  `PassGender` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookticket_ticketdetail`
--

INSERT INTO `bookticket_ticketdetail` (`ticketID`, `userName`, `trainID`, `journeyDate`, `totalFare`, `seatNo`, `passName`, `passAge`, `PassGender`) VALUES
(1, 'kdv', 1, '2022-04-08', 100, 'B', 'khushal', 19, 'male'),
(2, 'jay', 8, '2022-04-09', 100, 'y', 'khushal', 10, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `bookticket_traindetails`
--

CREATE TABLE `bookticket_traindetails` (
  `trainID` int(11) NOT NULL,
  `arrival` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `rent` int(11) NOT NULL,
  `distance` int(11) NOT NULL,
  `bookedSeat` varchar(100) NOT NULL,
  `time1` time(6) NOT NULL,
  `time2` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookticket_traindetails`
--

INSERT INTO `bookticket_traindetails` (`trainID`, `arrival`, `destination`, `rent`, `distance`, `bookedSeat`, `time1`, `time2`) VALUES
(1, 'Jamnagar', 'Rajkot', 100, 100, 'AB', '13:12:50.000000', '23:12:50.000000'),
(2, 'Rajkot', 'Surat', 500, 500, 'A', '18:20:11.000000', '18:20:12.000000'),
(3, 'Rajkot', 'Nadiad', 200, 350, 'A', '18:20:46.000000', '18:20:46.000000'),
(4, 'Nadiad', 'Rajkot', 250, 350, 'A', '18:21:14.000000', '18:21:15.000000'),
(5, 'Nadiad', 'Baroda', 70, 75, 'A', '18:22:03.000000', '18:22:04.000000'),
(6, 'Rajkot', 'Ahmedabad', 500, 200, 'A', '18:23:20.000000', '18:23:20.000000'),
(7, 'Rajkot', 'Vankaner', 50, 25, 'A', '18:24:08.000000', '18:24:10.000000'),
(8, 'Jamnagar', 'Rajkot', 100, 50, 'ABoJy', '16:47:20.000000', '16:47:23.000000'),
(9, 'Jamnagar', 'Surat', 700, 450, 'dD', '02:05:09.000000', '12:00:00.000000');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-04-08 02:05:32.806840', '9', 'Jamnagar --> Surat', 1, '[{\"added\": {}}]', 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'acount', 'contactus'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'bookTicket', 'ticketdetail'),
(8, 'bookTicket', 'traindetails'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'acount', '0001_initial', '2022-04-07 17:14:48.222841'),
(2, 'acount', '0002_contactus_timestamp', '2022-04-07 17:14:48.405973'),
(3, 'contenttypes', '0001_initial', '2022-04-07 17:14:49.330198'),
(4, 'auth', '0001_initial', '2022-04-07 17:14:59.339682'),
(5, 'admin', '0001_initial', '2022-04-07 17:15:01.793366'),
(6, 'admin', '0002_logentry_remove_auto_add', '2022-04-07 17:15:01.896549'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-07 17:15:01.964050'),
(8, 'contenttypes', '0002_remove_content_type_name', '2022-04-07 17:15:02.775591'),
(9, 'auth', '0002_alter_permission_name_max_length', '2022-04-07 17:15:03.281987'),
(10, 'auth', '0003_alter_user_email_max_length', '2022-04-07 17:15:03.763146'),
(11, 'auth', '0004_alter_user_username_opts', '2022-04-07 17:15:03.936284'),
(12, 'auth', '0005_alter_user_last_login_null', '2022-04-07 17:15:04.605304'),
(13, 'auth', '0006_require_contenttypes_0002', '2022-04-07 17:15:04.661852'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2022-04-07 17:15:04.714364'),
(15, 'auth', '0008_alter_user_username_max_length', '2022-04-07 17:15:04.838265'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2022-04-07 17:15:04.990716'),
(17, 'auth', '0010_alter_group_name_max_length', '2022-04-07 17:15:05.159419'),
(18, 'auth', '0011_update_proxy_permissions', '2022-04-07 17:15:05.228572'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2022-04-07 17:15:05.344270'),
(20, 'bookTicket', '0001_initial', '2022-04-07 17:15:07.020446'),
(21, 'sessions', '0001_initial', '2022-04-07 17:15:07.697349');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4d6eaima671j3mvu5raaf3c2e3vb4egq', '.eJxVjEEOwiAQRe_C2hArTAGX7j0DmWEYqRpISrsy3l2bdKHb_977LxVxXUpce57jxOqsrDr8boTpkesG-I711nRqdZkn0puid9r1tXF-Xnb376BgL9_aZBEWGCiI4WA8DDbkERxYn5yzCUZGAMnJkhFP3ls6IqMhfxIgIfX-APaNOLQ:1ncZIG:vk9VMB1KuGUWtQfo18n2RKo-d93OF__EmD2jxzM4ttE', '2022-04-21 21:03:52.590670'),
('wbc5mfh1wxwwmjvl3n4occwfuh54annu', '.eJxVjDEOwjAMRe-SGUUodZqYkZ0zRI5jkwJqpaadEHenlTrA-t77_20SrUtNa5M5DcVcjDenX5aJnzLuojxovE-Wp3GZh2z3xB622dtU5HU92r-DSq1ua5UC5AGUJKJH4IKBo4uSAR0hdjmfvWqvFKBn6CBsQJXIOWSWYj5fBmI5Dw:1ncdyg:Sm91u_eqIoQhEVvAF-oTgKdiVHP24wAk6LCFXRLovsI', '2022-04-22 02:03:58.094267');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acount_contactus`
--
ALTER TABLE `acount_contactus`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `bookticket_ticketdetail`
--
ALTER TABLE `bookticket_ticketdetail`
  ADD PRIMARY KEY (`ticketID`);

--
-- Indexes for table `bookticket_traindetails`
--
ALTER TABLE `bookticket_traindetails`
  ADD PRIMARY KEY (`trainID`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acount_contactus`
--
ALTER TABLE `acount_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookticket_ticketdetail`
--
ALTER TABLE `bookticket_ticketdetail`
  MODIFY `ticketID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookticket_traindetails`
--
ALTER TABLE `bookticket_traindetails`
  MODIFY `trainID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
