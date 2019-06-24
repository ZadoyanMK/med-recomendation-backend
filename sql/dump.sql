-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.26 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table med.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table med.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table med.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.auth_permission: ~64 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT IGNORE INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
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
	(25, 'Can add country', 7, 'add_country'),
	(26, 'Can change country', 7, 'change_country'),
	(27, 'Can delete country', 7, 'delete_country'),
	(28, 'Can view country', 7, 'view_country'),
	(29, 'Can add equipment', 8, 'add_equipment'),
	(30, 'Can change equipment', 8, 'change_equipment'),
	(31, 'Can delete equipment', 8, 'delete_equipment'),
	(32, 'Can view equipment', 8, 'view_equipment'),
	(33, 'Can add group', 9, 'add_group'),
	(34, 'Can change group', 9, 'change_group'),
	(35, 'Can delete group', 9, 'delete_group'),
	(36, 'Can view group', 9, 'view_group'),
	(37, 'Can add market', 10, 'add_market'),
	(38, 'Can change market', 10, 'change_market'),
	(39, 'Can delete market', 10, 'delete_market'),
	(40, 'Can view market', 10, 'view_market'),
	(41, 'Can add type', 11, 'add_type'),
	(42, 'Can change type', 11, 'change_type'),
	(43, 'Can delete type', 11, 'delete_type'),
	(44, 'Can view type', 11, 'view_type'),
	(45, 'Can add sub group', 12, 'add_subgroup'),
	(46, 'Can change sub group', 12, 'change_subgroup'),
	(47, 'Can delete sub group', 12, 'delete_subgroup'),
	(48, 'Can view sub group', 12, 'view_subgroup'),
	(49, 'Can add manufacturer', 13, 'add_manufacturer'),
	(50, 'Can change manufacturer', 13, 'change_manufacturer'),
	(51, 'Can delete manufacturer', 13, 'delete_manufacturer'),
	(52, 'Can view manufacturer', 13, 'view_manufacturer'),
	(53, 'Can add equipment market connection', 14, 'add_equipmentmarketconnection'),
	(54, 'Can change equipment market connection', 14, 'change_equipmentmarketconnection'),
	(55, 'Can delete equipment market connection', 14, 'delete_equipmentmarketconnection'),
	(56, 'Can view equipment market connection', 14, 'view_equipmentmarketconnection'),
	(57, 'Can add auth token', 15, 'add_authtoken'),
	(58, 'Can change auth token', 15, 'change_authtoken'),
	(59, 'Can delete auth token', 15, 'delete_authtoken'),
	(60, 'Can view auth token', 15, 'view_authtoken'),
	(61, 'Can add featured equipment', 16, 'add_featuredequipment'),
	(62, 'Can change featured equipment', 16, 'change_featuredequipment'),
	(63, 'Can delete featured equipment', 16, 'delete_featuredequipment'),
	(64, 'Can view featured equipment', 16, 'view_featuredequipment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table med.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.auth_user: ~1 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT IGNORE INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$150000$YENT9OszM5UN$dpUJhLWYzLITKMlLQvkP3+QlFyY3hhAbXMMoyDD+JMs=', '2019-05-13 17:53:53.776286', 1, 'admin', '', '', '', 1, 1, '2019-05-13 17:53:48.308949');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table med.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table med.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table med.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.django_admin_log: ~58 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT IGNORE INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2019-05-13 18:00:42.091079', '1', 'Англия', 1, '[{"added": {}}]', 7, 1),
	(2, '2019-05-13 18:01:48.386679', '1', 'Gamma', 1, '[{"added": {}}]', 13, 1),
	(3, '2019-05-13 18:02:13.792236', '1', 'Автоматичні тонометри', 1, '[{"added": {}}]', 11, 1),
	(4, '2019-05-13 18:02:41.353332', '1', 'Тонометри', 1, '[{"added": {}}]', 9, 1),
	(5, '2019-05-13 18:02:48.717067', '1', 'Автоматичні тонометри', 1, '[{"added": {}}]', 12, 1),
	(6, '2019-05-13 18:04:04.900408', '1', 'Медична техніка для домашнього та індуального використання', 2, '[{"changed": {"fields": ["name"]}}]', 9, 1),
	(7, '2019-05-13 18:04:15.770145', '1', 'Тонометри', 2, '[{"changed": {"fields": ["name"]}}]', 12, 1),
	(8, '2019-05-13 18:05:50.748577', '1', 'Тонометр автоматичний Gamma Smart', 1, '[{"added": {}}]', 8, 1),
	(9, '2019-05-13 18:08:36.337835', '2', 'Автоматичний тонометр Gamma M 1-3', 1, '[{"added": {}}]', 8, 1),
	(10, '2019-05-13 18:09:38.687328', '2', 'Товари для здоров’я та краси', 1, '[{"added": {}}]', 9, 1),
	(11, '2019-05-13 18:09:56.781534', '3', 'Професійна медична техніка', 1, '[{"added": {}}]', 9, 1),
	(12, '2019-05-13 18:14:01.036863', '2', 'Японія', 1, '[{"added": {}}]', 7, 1),
	(13, '2019-05-13 18:14:04.601755', '2', 'Nissei', 1, '[{"added": {}}]', 13, 1),
	(14, '2019-05-13 18:14:27.203166', '3', 'Omron', 1, '[{"added": {}}]', 13, 1),
	(15, '2019-05-13 18:16:01.400602', '3', 'Швейцарія', 1, '[{"added": {}}]', 7, 1),
	(16, '2019-05-13 18:16:07.754029', '4', 'Microlife', 1, '[{"added": {}}]', 13, 1),
	(17, '2019-05-13 18:16:45.038809', '4', 'Китай', 1, '[{"added": {}}]', 7, 1),
	(18, '2019-05-13 18:16:48.846090', '5', 'Paramed', 1, '[{"added": {}}]', 13, 1),
	(19, '2019-05-13 18:17:28.850433', '2', 'Термометри', 1, '[{"added": {}}]', 12, 1),
	(20, '2019-05-13 18:17:57.266442', '3', 'Косметичні засоби', 1, '[{"added": {}}]', 12, 1),
	(21, '2019-05-13 18:18:19.009095', '4', 'Вітаміни, чаї', 1, '[{"added": {}}]', 12, 1),
	(22, '2019-05-13 18:18:36.994419', '5', 'Лабораторне облад.', 1, '[{"added": {}}]', 12, 1),
	(23, '2019-05-13 18:20:07.935817', '2', 'Тонометр напівавтоматичний', 1, '[{"added": {}}]', 11, 1),
	(24, '2019-05-13 18:20:20.250113', '3', 'Механічні тонометри', 1, '[{"added": {}}]', 11, 1),
	(25, '2019-05-13 18:20:33.832285', '4', 'Термометри медичні', 1, '[{"added": {}}]', 11, 1),
	(26, '2019-05-13 18:20:48.684178', '5', 'Термометри побутові', 1, '[{"added": {}}]', 11, 1),
	(27, '2019-05-13 18:21:19.191517', '6', 'Косметика для волосся', 1, '[{"added": {}}]', 11, 1),
	(28, '2019-05-13 18:21:30.604606', '7', 'Косметика для тіла', 1, '[{"added": {}}]', 11, 1),
	(29, '2019-05-13 18:21:42.018870', '8', 'Вітаміни', 1, '[{"added": {}}]', 11, 1),
	(30, '2019-05-13 18:21:51.155161', '9', 'Фіточаї, чаї для схуднення', 1, '[{"added": {}}]', 11, 1),
	(31, '2019-05-13 18:22:01.604743', '10', 'Центрифуги', 1, '[{"added": {}}]', 11, 1),
	(32, '2019-05-13 18:22:15.069576', '11', 'Мікроскопи', 1, '[{"added": {}}]', 11, 1),
	(33, '2019-05-13 18:22:25.094853', '12', 'Термостати', 1, '[{"added": {}}]', 11, 1),
	(34, '2019-05-13 18:27:16.047522', '3', 'Тонометр напівавтоматичний S1 Omron', 1, '[{"added": {}}]', 8, 1),
	(35, '2019-05-13 18:29:14.047504', '4', 'Напівавтоматичний тонометр Microlife BP N1 Basic', 1, '[{"added": {}}]', 8, 1),
	(36, '2019-05-13 18:31:08.342884', '5', 'Механічний тонометр Comfort PARAMED', 1, '[{"added": {}}]', 8, 1),
	(37, '2019-05-13 18:33:09.763685', '5', 'Україна', 1, '[{"added": {}}]', 7, 1),
	(38, '2019-05-13 18:33:13.022400', '6', 'Склоприлад', 1, '[{"added": {}}]', 13, 1),
	(39, '2019-05-13 18:34:16.332189', '6', 'Термометр кімнатний П-1 Склоприлад', 1, '[{"added": {}}]', 8, 1),
	(40, '2019-05-13 18:35:46.497442', '7', 'Електронний термометр OMRON Eco Temp Basic', 1, '[{"added": {}}]', 8, 1),
	(41, '2019-05-13 18:38:32.944199', '6', 'Франція', 1, '[{"added": {}}]', 7, 1),
	(42, '2019-05-13 18:38:35.771984', '7', 'Avene', 1, '[{"added": {}}]', 13, 1),
	(43, '2019-05-13 18:40:15.071464', '8', 'AVENE Trixera( Авен Тріксера) Бальзам для пом\'якшення шкіри 200', 1, '[{"added": {}}]', 8, 1),
	(44, '2019-05-13 18:45:13.614758', '7', 'Угорщина', 1, '[{"added": {}}]', 7, 1),
	(45, '2019-05-13 18:45:16.280724', '8', 'Kallos', 1, '[{"added": {}}]', 13, 1),
	(46, '2019-05-13 18:45:26.656757', '9', 'Kallos ( Каллос ) Маска для волосся з кератином 1000 мл', 1, '[{"added": {}}]', 8, 1),
	(47, '2019-05-13 18:47:07.318474', '9', 'Swiss Energy', 1, '[{"added": {}}]', 13, 1),
	(48, '2019-05-13 18:47:18.283753', '10', 'Вітаміни в капсулах BeautyVit №30 Swiss Energy', 1, '[{"added": {}}]', 8, 1),
	(49, '2019-05-13 18:47:54.250171', '10', 'Біомед', 1, '[{"added": {}}]', 13, 1),
	(50, '2019-05-13 18:49:06.348547', '11', 'Мікроскоп бінокулярний XSG - 109L Біомед', 1, '[{"added": {}}]', 8, 1),
	(51, '2019-05-13 18:51:18.748866', '1', 'МегаМедМаркет', 1, '[{"added": {}}]', 10, 1),
	(52, '2019-05-13 18:52:06.007180', '2', 'Медтехника', 1, '[{"added": {}}]', 10, 1),
	(53, '2019-05-13 18:52:49.405386', '3', 'Dopomoga', 1, '[{"added": {}}]', 10, 1),
	(54, '2019-05-13 18:53:25.506206', '4', 'Мed-magazin.ua', 1, '[{"added": {}}]', 10, 1),
	(55, '2019-05-13 18:54:56.727154', '1', 'Тонометр автоматичний Gamma Smart --> Медтехника', 1, '[{"added": {}}]', 14, 1),
	(56, '2019-05-13 18:55:25.071066', '2', 'Автоматичний тонометр Gamma M 1-3 --> Медтехника', 1, '[{"added": {}}]', 14, 1),
	(57, '2019-05-13 18:55:58.901992', '3', 'Тонометр напівавтоматичний S1 Omron --> Мed-magazin.ua', 1, '[{"added": {}}]', 14, 1),
	(58, '2019-05-13 18:57:00.760550', '4', 'Тонометр автоматичний Gamma Smart --> Мed-magazin.ua', 1, '[{"added": {}}]', 14, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table med.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.django_content_type: ~16 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT IGNORE INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'equipment', 'country'),
	(8, 'equipment', 'equipment'),
	(14, 'equipment', 'equipmentmarketconnection'),
	(9, 'equipment', 'group'),
	(13, 'equipment', 'manufacturer'),
	(10, 'equipment', 'market'),
	(12, 'equipment', 'subgroup'),
	(11, 'equipment', 'type'),
	(15, 'knox', 'authtoken'),
	(16, 'personal_area', 'featuredequipment'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table med.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.django_migrations: ~30 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT IGNORE INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2019-05-13 08:21:29.650056'),
	(2, 'auth', '0001_initial', '2019-05-13 08:21:29.866560'),
	(3, 'admin', '0001_initial', '2019-05-13 08:21:30.177877'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2019-05-13 08:21:30.221180'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-05-13 08:21:30.235065'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2019-05-13 08:21:30.315490'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2019-05-13 08:21:30.330802'),
	(8, 'auth', '0003_alter_user_email_max_length', '2019-05-13 08:21:30.351486'),
	(9, 'auth', '0004_alter_user_username_opts', '2019-05-13 08:21:30.365714'),
	(10, 'auth', '0005_alter_user_last_login_null', '2019-05-13 08:21:30.417687'),
	(11, 'auth', '0006_require_contenttypes_0002', '2019-05-13 08:21:30.419982'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2019-05-13 08:21:30.435402'),
	(13, 'auth', '0008_alter_user_username_max_length', '2019-05-13 08:21:30.481173'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2019-05-13 08:21:30.534624'),
	(15, 'auth', '0010_alter_group_name_max_length', '2019-05-13 08:21:30.567938'),
	(16, 'auth', '0011_update_proxy_permissions', '2019-05-13 08:21:30.581896'),
	(17, 'equipment', '0001_initial', '2019-05-13 08:21:30.792192'),
	(18, 'equipment', '0002_auto_20190416_2058', '2019-05-13 08:21:31.447297'),
	(19, 'equipment', '0003_equipmentmarketconnection_market_url', '2019-05-13 08:21:31.480480'),
	(20, 'equipment', '0004_auto_20190501_1652', '2019-05-13 08:21:31.502570'),
	(21, 'knox', '0001_initial', '2019-05-13 08:21:31.523231'),
	(22, 'knox', '0002_auto_20150916_1425', '2019-05-13 08:21:31.586898'),
	(23, 'knox', '0003_auto_20150916_1526', '2019-05-13 08:21:31.626538'),
	(24, 'knox', '0004_authtoken_expires', '2019-05-13 08:21:31.644130'),
	(25, 'knox', '0005_authtoken_token_key', '2019-05-13 08:21:31.662801'),
	(26, 'knox', '0006_auto_20160818_0932', '2019-05-13 08:21:31.802342'),
	(27, 'knox', '0007_auto_20190111_0542', '2019-05-13 08:21:31.820530'),
	(28, 'personal_area', '0001_initial', '2019-05-13 08:21:31.827922'),
	(29, 'personal_area', '0002_auto_20190501_1652', '2019-05-13 08:21:31.986473'),
	(30, 'sessions', '0001_initial', '2019-05-13 08:21:32.010483');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table med.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.django_session: ~1 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT IGNORE INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('5qr3csph26q9p4e50m5het5lcpdvl2id', 'MTZlNDYzNmI5YjlhYTgxZmM4ZDE2ZDljMTZhNTYwNTFjYThhNDA2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMTk1MmFkNDVhYTg4Y2E2NTM2OTY5NTJjMjY2NTZkNDg5M2VlNGM0In0=', '2019-05-27 17:53:53.778647');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping structure for table med.equipment_country
CREATE TABLE IF NOT EXISTS `equipment_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_country_name_003f93ca` (`name`),
  KEY `equipment_country_code_f98cbd59` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.equipment_country: ~7 rows (approximately)
/*!40000 ALTER TABLE `equipment_country` DISABLE KEYS */;
INSERT IGNORE INTO `equipment_country` (`id`, `name`, `code`) VALUES
	(1, 'Англия', 'en'),
	(2, 'Японія', 'JP'),
	(3, 'Швейцарія', 'CH'),
	(4, 'Китай', 'CN'),
	(5, 'Україна', 'ua'),
	(6, 'Франція', 'FR'),
	(7, 'Угорщина', 'HUN');
/*!40000 ALTER TABLE `equipment_country` ENABLE KEYS */;

-- Dumping structure for table med.equipment_equipment
CREATE TABLE IF NOT EXISTS `equipment_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `currency` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guarantee` decimal(10,3) NOT NULL,
  `in_case` tinyint(1) NOT NULL,
  `image` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacture_id` int(11) NOT NULL,
  `subgroup_id` int(11) NOT NULL,
  `type_of_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_equipment_price_086bc289` (`price`),
  KEY `equipment_equipment_guarantee_0c9c9eb2` (`guarantee`),
  KEY `equipment_equipment_in_case_b2ca9ace` (`in_case`),
  KEY `equipment_equipment_manufacture_id_0c88afd2_fk_equipment` (`manufacture_id`),
  KEY `equipment_equipment_subgroup_id_9ee39ac1_fk_equipment` (`subgroup_id`),
  KEY `equipment_equipment_type_of_id_250e0606_fk_equipment_type_id` (`type_of_id`),
  CONSTRAINT `equipment_equipment_manufacture_id_0c88afd2_fk_equipment` FOREIGN KEY (`manufacture_id`) REFERENCES `equipment_manufacturer` (`id`),
  CONSTRAINT `equipment_equipment_subgroup_id_9ee39ac1_fk_equipment` FOREIGN KEY (`subgroup_id`) REFERENCES `equipment_subgroup` (`id`),
  CONSTRAINT `equipment_equipment_type_of_id_250e0606_fk_equipment_type_id` FOREIGN KEY (`type_of_id`) REFERENCES `equipment_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.equipment_equipment: ~11 rows (approximately)
/*!40000 ALTER TABLE `equipment_equipment` DISABLE KEYS */;
INSERT IGNORE INTO `equipment_equipment` (`id`, `name`, `description`, `price`, `currency`, `guarantee`, `in_case`, `image`, `manufacture_id`, `subgroup_id`, `type_of_id`) VALUES
	(1, 'Тонометр автоматичний Gamma Smart', '"Тонометр автоматичний з манжетою на плече Gamma Smart призначений для визначення артеріального тиску і пульсу осцилометричним методом.\r\nРівень артеріального тиску відображається у вигляді індикації в лівій частині дисплея: зелена зона - оптимальний тиск, жовта - підвищений, помаранчева - занадто висока, червона - загрозливо високий. Ця функція дозволить Вам самостійно орієнтуватися в отриманих результатах АТ.\r\nУ тонометрі застосована IHD функція виявлення порушень частоти серцевих скорочень. Ця функція дозволяє визначити нерегулярне биття серця. Якщо постійно після проведення вимірювання на дисплеї з\'являється символ (серце) - рекомендується звернутися до лікаря. "', 1124.000, 'грн', 5.000, 1, 'equipment/2019/05/13/gm-smart.jpg', 1, 1, 1),
	(2, 'Автоматичний тонометр Gamma M 1-3', 'Автоматичний тонометр Gamma M1-3 комплектується мережним адаптером 220 В. Прилад виготовлений з двома кнопками пам\'яті для вимірювання для 2-х користувачів. На кольоровому дисплеї відображається індикатор аритмії серця і є заряд батареї.', 849.000, 'грн', 3.000, 0, 'equipment/2019/05/13/products.1754.1.b.jpg', 1, 1, 1),
	(3, 'Тонометр напівавтоматичний S1 Omron', 'Напівавтоматичний Тонометр Omron S1 відрізняється демократичною вартістю і компактними розмірами, що дозволяє брати його в дорогу. Манжета, завдяки віялоподібної форми, зменшує больові відчуття при накачуванні. А основне – точність результату, завдяки тому, що, на відміну від звичайної манжети, віялоподібна форма гарантує під нею рівномірний розподіл тиску, оскільки не залишається зазору у вузькій частині руки. В тонометрі Omron S1 є індикатор підвищеного тиску, допомагає самостійно визначити, чи виходять показники Вашого ПЕКЛО за межі норми. Прилад запам\'ятовує 14 останніх результатів, а великий трьохрядковий дисплей дозволяє добре розгледіти значення навіть людям з поганим зором.', 659.000, 'грн', 5.000, 1, '', 3, 1, 2),
	(4, 'Напівавтоматичний тонометр Microlife BP N1 Basic', 'Тонометр напівавтоматичний з манжетою на плече Microlife BP N1 Basic, високоточний і зручний прилад, виробництва « Microlife AG », (Швейцарія).  \r\n \r\nВимірювання відбувається осцилометричним способом за методом Короткова (I фаза тонів відповідає рівню систолічного тиску, V – діастолічного).\r\n \r\nФункції:\r\n \r\n1. Вимірювання артеріального тиску осцилометричним способом;\r\n2. Визначення пульсу (частоти серцевих скорочень);\r\n3. Визначення нерівномірності серцебиття (аритмії) в початковому стані.', 952.000, 'грн', 5.000, 0, '', 4, 1, 2),
	(5, 'Механічний тонометр Comfort PARAMED', 'Тонометр механічний PARAMED КОМФОРТ - класичного типу для вимірювання артеріального тиску.\r\n \r\nособливості:\r\n \r\nНевпинний механізм манометра\r\nУніверсальна манжета підійде будь-якому користувачеві - 22-42 см\r\nМеталевий корпус манометра\r\nВеликі цифри на циферблаті\r\nЛипучка якісна і довговічна\r\nПовітряний голчастий клапан - металевий\r\nНаявність петлі для фіксації стетоскопа\r\nСітчастий фільтр зворотного клапа\r\nЗворотний клапан нагнітача - покращений\r\nПневмокамера за безшовною технологією\r\nСтетоскоп і сумка в комплекті\r\n \r\nЦей апарат можна використовувати як вдома, в поїздках, так і в клінічній практиці.', 359.000, 'грн', 2.000, 1, '', 5, 1, 3),
	(6, 'Термометр кімнатний П-1 Склоприлад', 'Термометр кімнатний П-1, Склоприлад - це компактний пристрій для вимірювання температури повітря в приміщенні. Ви зможете легко контролювати показники температури, встановлюючи термометр саме там, де це необхідно. Завдяки тому, що для отримання свідчень не використовується ртуть, цей термометр можна вважати повністю безпечним для людини і навколишнього середовища. Компактні розміри і висока точність вимірювання роблять цей кімнатний термометр затребуваним серед широкого кола покупців.', 27.000, 'грн', 1.000, 0, '', 6, 2, 5),
	(7, 'Електронний термометр OMRON Eco Temp Basic', 'Зовнішній вигляд упаковки може змінюватися.\r\n\r\nЕлектронний термометр для вимірювання аксилярним, оральним, ректальним способами.\r\n\r\nЧас вимірювання від 60 секунд\r\nводонепроникний\r\nЗвуковий сигнал закінчення вимірювання\r\nПам\'ять останнього вимірювання\r\nзмінна батарейка\r\nВибір одиниці виміру (С або F)\r\nАвтоматичне вимкнення для збільшення терміну служби елемента живлення\r\nФутляр для зберігання\r\nТермін гарантії: 3 роки', 169.000, 'грн', 1.000, 1, '', 3, 2, 4),
	(8, 'AVENE Trixera( Авен Тріксера) Бальзам для пом\'якшення шкіри 200', 'Крем створений на основі термальної води Авен , не містить парабенів і ароматів, володіє чудовим пом\'якшувальною і протисвербіжну дію . Покликаний відновлювати природну структуру шкіри і захисний бар\'єр , насичувати цілющою вологою . Так , селектіоза зменшує запалення , гліколь усуває свербіж , термальна вода Авен знімає роздратування і заспокоює , а тріо ліпідів відповідально за відновлення шкірного бар\'єру . Засіб відрізняється насиченою і разом з тим дуже ніжною текстурою. Легко наноситься , сприяючи швидкому поверненню почуття комфорту. Дарує шкірі еластичність і м\'якість.', 659.000, 'грн', 0.000, 1, '', 7, 3, 7),
	(9, 'Kallos ( Каллос ) Маска для волосся з кератином 1000 мл', 'Кератіновая маска від Kallos – це ніжний аромат, густа і зручна консистенція, швидкий результат, прийнятна вартість, солідний об\'єм в одній банці (1 літр).  У складі дива-маски від Kallos є молочні протеїни, кератин і коштовні мікроелементи. Працюючи в «команді», всі ці складові надають комплексну оздоравлівающе дію на локони. Тут представлені маски для зміцнення волосся.', 98.000, 'грн', 0.000, 1, '', 8, 3, 6),
	(10, 'Вітаміни в капсулах BeautyVit №30 Swiss Energy', 'Beautyvit Swiss Energy виробництва Швейцарії - вітамінний комплекс в формі капсул з поступовим вивільненням активних речовин, що забезпечує добову потребу в вітамінних і мінеральних сполуках, для краси і здоров\'я.', 386.000, 'грн', 0.000, 1, '', 9, 4, 8),
	(11, 'Мікроскоп бінокулярний XSG - 109L Біомед', 'Бінокулярний тип мікроскопів використовується з метою здійснення рутинного, або загальноклінічного дослідження за методом світлого поля, або проходить світла в умовах лабораторій медичного, дослідницького закладу.\r\n\r\nЧотирьохгніздовою револьвер і коаксіальний механізм для грубого й точного фокусування полегшує експлуатацію апарату. Координатний столик мікроскопа розпорядженні знімним препаратоводієм з діапазоном переміщення 50х76мм. Джерело живлення вбудований в основу пристрою, а його освітлювальна система висвітлює поле зору об\'єктиву навіть без перебудов зі збільшенням х4-100. Замінити лампи освітлювальної системи можна дуже швидко. В комплекті передбачені жовтий, блакитний і зелений світлофільтри.', 14976.000, 'грн', 0.000, 0, '', 10, 5, 11);
/*!40000 ALTER TABLE `equipment_equipment` ENABLE KEYS */;

-- Dumping structure for table med.equipment_equipmentmarketconnection
CREATE TABLE IF NOT EXISTS `equipment_equipmentmarketconnection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_id` int(11) NOT NULL,
  `market_id` int(11) NOT NULL,
  `eq_in_market_url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_equipmentm_equipment_id_b0c605d4_fk_equipment` (`equipment_id`),
  KEY `equipment_equipmentm_market_id_2d4ab602_fk_equipment` (`market_id`),
  CONSTRAINT `equipment_equipmentm_equipment_id_b0c605d4_fk_equipment` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_equipment` (`id`),
  CONSTRAINT `equipment_equipmentm_market_id_2d4ab602_fk_equipment` FOREIGN KEY (`market_id`) REFERENCES `equipment_market` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.equipment_equipmentmarketconnection: ~4 rows (approximately)
/*!40000 ALTER TABLE `equipment_equipmentmarketconnection` DISABLE KEYS */;
INSERT IGNORE INTO `equipment_equipmentmarketconnection` (`id`, `equipment_id`, `market_id`, `eq_in_market_url`) VALUES
	(1, 1, 2, 'https://www.medtechnika.com.ua/tonometr-automat-gm-smart.html'),
	(2, 2, 2, 'https://www.medtechnika.com.ua/tonometr-avtomaticheskiy-gamma-plus.html'),
	(3, 3, 4, 'https://med-magazin.ua/ua/item_n1246.htm'),
	(4, 1, 4, 'https://med-magazin.ua/cat_116.htm/gamma/');
/*!40000 ALTER TABLE `equipment_equipmentmarketconnection` ENABLE KEYS */;

-- Dumping structure for table med.equipment_group
CREATE TABLE IF NOT EXISTS `equipment_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_group_name_3d9649c9` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.equipment_group: ~3 rows (approximately)
/*!40000 ALTER TABLE `equipment_group` DISABLE KEYS */;
INSERT IGNORE INTO `equipment_group` (`id`, `name`) VALUES
	(1, 'Медична техніка для домашнього та індуального використання'),
	(3, 'Професійна медична техніка'),
	(2, 'Товари для здоров’я та краси');
/*!40000 ALTER TABLE `equipment_group` ENABLE KEYS */;

-- Dumping structure for table med.equipment_manufacturer
CREATE TABLE IF NOT EXISTS `equipment_manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_manufactur_country_id_aa38818c_fk_equipment` (`country_id`),
  KEY `equipment_manufacturer_name_8d58c535` (`name`),
  CONSTRAINT `equipment_manufactur_country_id_aa38818c_fk_equipment` FOREIGN KEY (`country_id`) REFERENCES `equipment_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.equipment_manufacturer: ~10 rows (approximately)
/*!40000 ALTER TABLE `equipment_manufacturer` DISABLE KEYS */;
INSERT IGNORE INTO `equipment_manufacturer` (`id`, `name`, `description`, `image`, `country_id`) VALUES
	(1, 'Gamma', 'Gamma (Англия)', '', 1),
	(2, 'Nissei', 'Nissei (Япония)', '', 2),
	(3, 'Omron', 'Omron (Япония)', '', 2),
	(4, 'Microlife', 'Microlife ( Швейцарія )', '', 3),
	(5, 'Paramed', 'Paramed (Китай)', '', 4),
	(6, 'Склоприлад', 'Склоприлад (Україна)', '', 5),
	(7, 'Avene', 'Avene (Франція)', '', 6),
	(8, 'Kallos', 'Kallos ( Угорщина )', '', 7),
	(9, 'Swiss Energy', 'Swiss Energy (Швейцарія)', '', 3),
	(10, 'Біомед', 'Біомед (Україна)', '', 5);
/*!40000 ALTER TABLE `equipment_manufacturer` ENABLE KEYS */;

-- Dumping structure for table med.equipment_market
CREATE TABLE IF NOT EXISTS `equipment_market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_market_name_5bf1126a` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.equipment_market: ~4 rows (approximately)
/*!40000 ALTER TABLE `equipment_market` DISABLE KEYS */;
INSERT IGNORE INTO `equipment_market` (`id`, `name`, `url`, `location`) VALUES
	(1, 'МегаМедМаркет', 'https://med-mm.com/special', '[{x:1, y1:1}]'),
	(2, 'Медтехника', 'https://www.medtechnika.com.ua', '[{x:1, y1:1}]'),
	(3, 'Dopomoga', 'https://dopomoga.ua', '[{x:1, y1:1}]'),
	(4, 'Мed-magazin.ua', 'https://med-magazin.ua/ua/cat_92.htm', '[{x:1, y1:1}]');
/*!40000 ALTER TABLE `equipment_market` ENABLE KEYS */;

-- Dumping structure for table med.equipment_subgroup
CREATE TABLE IF NOT EXISTS `equipment_subgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_subgroup_group_id_a4f0132d_fk_equipment_group_id` (`group_id`),
  KEY `equipment_subgroup_name_19762bdd` (`name`),
  CONSTRAINT `equipment_subgroup_group_id_a4f0132d_fk_equipment_group_id` FOREIGN KEY (`group_id`) REFERENCES `equipment_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.equipment_subgroup: ~5 rows (approximately)
/*!40000 ALTER TABLE `equipment_subgroup` DISABLE KEYS */;
INSERT IGNORE INTO `equipment_subgroup` (`id`, `name`, `group_id`) VALUES
	(1, 'Тонометри', 1),
	(2, 'Термометри', 1),
	(3, 'Косметичні засоби', 2),
	(4, 'Вітаміни, чаї', 2),
	(5, 'Лабораторне облад.', 3);
/*!40000 ALTER TABLE `equipment_subgroup` ENABLE KEYS */;

-- Dumping structure for table med.equipment_type
CREATE TABLE IF NOT EXISTS `equipment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_type_name_33f5a19e` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.equipment_type: ~12 rows (approximately)
/*!40000 ALTER TABLE `equipment_type` DISABLE KEYS */;
INSERT IGNORE INTO `equipment_type` (`id`, `name`) VALUES
	(1, 'Автоматичні тонометри'),
	(8, 'Вітаміни'),
	(6, 'Косметика для волосся'),
	(7, 'Косметика для тіла'),
	(3, 'Механічні тонометри'),
	(11, 'Мікроскопи'),
	(4, 'Термометри медичні'),
	(5, 'Термометри побутові'),
	(12, 'Термостати'),
	(2, 'Тонометр напівавтоматичний'),
	(9, 'Фіточаї, чаї для схуднення'),
	(10, 'Центрифуги');
/*!40000 ALTER TABLE `equipment_type` ENABLE KEYS */;

-- Dumping structure for table med.knox_authtoken
CREATE TABLE IF NOT EXISTS `knox_authtoken` (
  `digest` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expiry` datetime(6) DEFAULT NULL,
  `token_key` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`digest`),
  UNIQUE KEY `salt` (`salt`),
  KEY `knox_authtoken_user_id_e5a5d899_fk_auth_user_id` (`user_id`),
  KEY `knox_authtoken_token_key_8f4f7d47` (`token_key`),
  CONSTRAINT `knox_authtoken_user_id_e5a5d899_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.knox_authtoken: ~0 rows (approximately)
/*!40000 ALTER TABLE `knox_authtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `knox_authtoken` ENABLE KEYS */;

-- Dumping structure for table med.personal_area_featuredequipment
CREATE TABLE IF NOT EXISTS `personal_area_featuredequipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_id` int(11) NOT NULL,
  `equipment_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `personal_area_featuredequipment_user_id_625888c0` (`user_id_id`),
  KEY `personal_area_featuredequipment_equipment_id_19439ea5` (`equipment_id_id`),
  CONSTRAINT `personal_area_featur_equipment_id_id_57c89b53_fk_equipment` FOREIGN KEY (`equipment_id_id`) REFERENCES `equipment_equipment` (`id`),
  CONSTRAINT `personal_area_featur_user_id_id_e50b2042_fk_auth_user` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table med.personal_area_featuredequipment: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_area_featuredequipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_area_featuredequipment` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
