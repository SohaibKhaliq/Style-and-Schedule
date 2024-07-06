-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: khushnood
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `admin_access` longtext COLLATE utf8mb4_unicode_ci,
  `last_login` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','admin','admin@gmail.com','$2y$10$ekVQaUt3.4336p5ZZiEdU.nB3/NIlIdEAu6hudIAvvULfc8QrgoPy','6648d89925d9d1716050073.jpg','+923221869455','Gujrat, Pakistan','[\"admin.dashboard\",\"admin.staff\",\"admin.storeStaff\",\"admin.updateStaff\",\"admin.identify-form\",\"admin.identify-form.store\",\"admin.identify-form.store\",\"admin.scheduleManage\",\"admin.planList\",\"admin.store.schedule\",\"admin.update.schedule\",\"admin.planCreate\",\"admin.planEdit\",\"admin.plans-active\",\"admin.plans-inactive\",\"admin.referral-commission\",\"admin.referral-commission.store\",\"admin.transaction\",\"admin.transaction.search\",\"admin.investments\",\"admin.investments.search\",\"admin.commissions\",\"admin.commissions.search\",\"admin.users\",\"admin.users.search\",\"admin.email-send\",\"admin.user.transaction\",\"admin.user.fundLog\",\"admin.user.withdrawal\",\"admin.user.commissionLog\",\"admin.user.referralMember\",\"admin.user.plan-purchaseLog\",\"admin.user.userKycHistory\",\"admin.kyc.users.pending\",\"admin.kyc.users\",\"admin.user-edit\",\"admin.user-multiple-active\",\"admin.user-multiple-inactive\",\"admin.send-email\",\"admin.user.userKycHistory\",\"admin.user-balance-update\",\"admin.payment.methods\",\"admin.deposit.manual.index\",\"admin.deposit.manual.create\",\"admin.edit.payment.methods\",\"admin.deposit.manual.edit\",\"admin.payment.pending\",\"admin.payment.log\",\"admin.payment.search\",\"admin.payment.action\",\"admin.payout-method\",\"admin.payout-log\",\"admin.payout-request\",\"admin.payout-log.search\",\"admin.payout-method.create\",\"admin.payout-method.edit\",\"admin.payout-action\",\"admin.ticket\",\"admin.ticket.view\",\"admin.ticket.reply\",\"admin.ticket.delete\",\"admin.subscriber.index\",\"admin.subscriber.sendEmail\",\"admin.subscriber.remove\",\"admin.basic-controls\",\"admin.email-controls\",\"admin.email-template.show\",\"admin.sms.config\",\"admin.sms-template\",\"admin.notify-config\",\"admin.notify-template.show\",\"admin.notify-template.edit\",\"admin.basic-controls.update\",\"admin.email-controls.update\",\"admin.email-template.edit\",\"admin.sms-template.edit\",\"admin.notify-config.update\",\"admin.notify-template.update\",\"admin.language.index\",\"admin.language.create\",\"admin.language.edit\",\"admin.language.keywordEdit\",\"admin.language.delete\",\"admin.manage.theme\",\"admin.logo-seo\",\"admin.breadcrumb\",\"admin.template.show\",\"admin.content.index\",\"admin.content.create\",\"admin.logoUpdate\",\"admin.seoUpdate\",\"admin.breadcrumbUpdate\",\"admin.content.show\",\"admin.content.delete\"]','2024-05-18 17:46:48',1,'SKqL8NeiQDbJWxkbuxxBVxVjS2YeyAtSorPcMg2Bh5ODliNLYzkoUD58lRA1','2021-12-17 10:00:01','2024-05-18 12:46:48','admin'),(2,'Demo','staffs','staff@gmail.com','$2y$10$q0LXqeH6qhL4OseJ6wqlGeldysjYNr8n7gVrmInccuLSx9Nc8o0Na','66274bc41e4111713851332.jpg','923221223123','Gujrat, Pakistan','[ \"admin.dashboard\", \"admin.staff.view\", \"admin.staff.search\",\"admin.transaction\",\"admin.transaction.search\",\"admin.users\",\"admin.users.search\", \"admin.email-send\", \"admin.manage.theme\", \"admin.language.index\",\"admin.content.index\"]','2024-05-14 11:01:05',1,'','2021-12-17 10:00:01','2024-05-14 06:01:05','appointer'),(3,'demo','demo','demostafssaaf@gmail.com','$2y$10$PV/jygCLhnvNqt7W2cUvOOTLuA1p8pFYNXat8SdTG//YksEb6Dm.S','66274bc41e4111713851332.jpg','923221223123','Gujrat, Pakistan','[ \"admin.dashboard\", \"admin.staff.view\", \"admin.staff.search\",\"admin.transaction\",\"admin.transaction.search\",\"admin.users\",\"admin.users.search\", \"admin.email-send\", \"admin.manage.theme\", \"admin.language.index\",\"admin.content.index\"]','2024-04-23 05:52:31',1,NULL,'2021-12-17 10:00:01','2024-04-25 00:20:09','order_manager'),(5,'abc','abc','manager@gmail.com','$2y$10$gJSxv3jonVqvG6JW7AVE3Ospre0FTVNsD0Kv099tZ4TQHrs3SP3lC','66277209d4b121713861129.jpg','1212123','GIMS','[\"admin.dashboard\",\"admin.staff\",\"admin.storeStaff\",\"admin.updateStaff\",\"admin.identify-form\",\"admin.identify-form.store\",\"admin.identify-form.store\",\"admin.scheduleManage\",\"admin.planList\",\"admin.store.schedule\",\"admin.update.schedule\",\"admin.planCreate\",\"admin.planEdit\",\"admin.plans-active\",\"admin.plans-inactive\",\"admin.referral-commission\",\"admin.referral-commission.store\",\"admin.transaction\",\"admin.transaction.search\",\"admin.investments\",\"admin.investments.search\",\"admin.commissions\",\"admin.commissions.search\",\"admin.users\",\"admin.users.search\",\"admin.email-send\",\"admin.user.transaction\",\"admin.user.fundLog\",\"admin.user.withdrawal\",\"admin.user.commissionLog\",\"admin.user.referralMember\",\"admin.user.plan-purchaseLog\",\"admin.user.userKycHistory\",\"admin.kyc.users.pending\",\"admin.kyc.users\",\"admin.user-edit\",\"admin.user-multiple-active\",\"admin.user-multiple-inactive\",\"admin.send-email\",\"admin.user.userKycHistory\",\"admin.user-balance-update\",\"admin.payment.methods\",\"admin.deposit.manual.index\",\"admin.deposit.manual.create\",\"admin.edit.payment.methods\",\"admin.deposit.manual.edit\",\"admin.payment.pending\",\"admin.payment.log\",\"admin.payment.search\",\"admin.payment.action\",\"admin.payout-method\",\"admin.payout-log\",\"admin.payout-request\",\"admin.payout-log.search\",\"admin.payout-method.create\",\"admin.payout-method.edit\",\"admin.payout-action\",\"admin.ticket\",\"admin.ticket.view\",\"admin.ticket.reply\",\"admin.ticket.delete\",\"admin.subscriber.index\",\"admin.subscriber.sendEmail\",\"admin.subscriber.remove\",\"admin.basic-controls\",\"admin.email-controls\",\"admin.email-template.show\",\"admin.sms.config\",\"admin.sms-template\",\"admin.notify-config\",\"admin.notify-template.show\",\"admin.notify-template.edit\",\"admin.basic-controls.update\",\"admin.email-controls.update\",\"admin.email-template.edit\",\"admin.sms-template.edit\",\"admin.notify-config.update\",\"admin.notify-template.update\",\"admin.language.index\",\"admin.language.create\",\"admin.language.edit\",\"admin.language.keywordEdit\",\"admin.language.delete\",\"admin.manage.theme\",\"admin.logo-seo\",\"admin.breadcrumb\",\"admin.template.show\",\"admin.content.index\",\"admin.content.create\",\"admin.logoUpdate\",\"admin.seoUpdate\",\"admin.breadcrumbUpdate\",\"admin.content.show\",\"admin.content.delete\"]','2024-05-18 17:48:02',1,NULL,'2024-04-23 03:32:10','2024-05-18 12:48:02','order_manager');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

--
-- Table structure for table `attributes_lists`
--

DROP TABLE IF EXISTS `attributes_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes_lists`
--

/*!40000 ALTER TABLE `attributes_lists` DISABLE KEYS */;
INSERT INTO `attributes_lists` VALUES (1,1,NULL,'2024-04-21 09:52:32','2024-04-21 09:52:32'),(3,4,NULL,'2024-04-21 09:53:02','2024-04-21 09:53:02'),(4,2,NULL,'2024-04-21 09:54:42','2024-04-21 09:54:42'),(5,2,'Small','2024-04-21 09:55:12','2024-04-21 09:55:12'),(6,2,'Medium','2024-04-21 09:55:12','2024-04-21 09:55:12'),(7,2,'Large','2024-04-21 09:55:12','2024-04-21 09:55:12');
/*!40000 ALTER TABLE `attributes_lists` ENABLE KEYS */;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;

--
-- Table structure for table `blog_category_details`
--

DROP TABLE IF EXISTS `blog_category_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_category_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category_details`
--

/*!40000 ALTER TABLE `blog_category_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_category_details` ENABLE KEYS */;

--
-- Table structure for table `blog_details`
--

DROP TABLE IF EXISTS `blog_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `language_id` int NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_details`
--

/*!40000 ALTER TABLE `blog_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_details` ENABLE KEYS */;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_category_id` int DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;

--
-- Table structure for table `book_appointments`
--

DROP TABLE IF EXISTS `book_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_appointments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `service_id` int DEFAULT NULL,
  `plan_id` int DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_appointment` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 => pending, 1 => confirm, 2 => cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int DEFAULT NULL COMMENT 'updated by which user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_appointments`
--

/*!40000 ALTER TABLE `book_appointments` DISABLE KEYS */;
INSERT INTO `book_appointments` VALUES (2,3,1,NULL,'test user','veronica27400@9vcdg.cashbenties.com','921231212234','2024-04-25','12:47:00','hello world',3,'2024-04-23 06:19:31','2024-05-11 10:47:42',NULL),(3,1,1,NULL,'Sohaib Khaliq','abs@gmail.com','+9232221869455','2024-04-26','14:53:00','cutting kar do meri',2,'2024-04-25 11:41:14','2024-05-11 10:47:13',NULL),(4,1,1,NULL,'Sohaib Khaliq','abs@gmail.com','+9232221869455','2024-04-30','13:22:00','mera appointment time theek karo',2,'2024-04-25 13:19:56','2024-04-25 13:32:17',NULL),(6,9,1,NULL,'Shehroz Imran','ads@gmail.com','+923211223123','2024-05-17','21:13:00','I want Haircut',3,'2024-05-11 06:47:49','2024-05-11 11:10:59',NULL),(7,3,1,NULL,'Demo User','veronica27400@9vcdg.cashbenties.com','+923211232123','2024-05-23',NULL,'cssdsa',2,'2024-05-18 11:14:52','2024-05-18 12:38:26',NULL),(8,9,1,NULL,'Shehroz Imran','ads@gmail.com','+923211223123','2024-05-29','21:53:00','sdasdsa',2,'2024-05-18 11:41:16','2024-05-18 12:37:09',NULL);
/*!40000 ALTER TABLE `book_appointments` ENABLE KEYS */;

--
-- Table structure for table `configures`
--

DROP TABLE IF EXISTS `configures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configures` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_zone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fraction_number` int DEFAULT NULL,
  `paginate` int DEFAULT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT '0',
  `email_notification` tinyint(1) NOT NULL DEFAULT '0',
  `sms_verification` tinyint(1) NOT NULL DEFAULT '0',
  `sms_notification` tinyint(1) NOT NULL DEFAULT '0',
  `sender_email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_email_name` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_description` longtext COLLATE utf8mb4_unicode_ci,
  `email_configuration` text COLLATE utf8mb4_unicode_ci,
  `push_notification` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `error_log` tinyint(1) NOT NULL,
  `strong_password` tinyint(1) NOT NULL,
  `registration` tinyint(1) NOT NULL,
  `address_verification` tinyint(1) NOT NULL,
  `identity_verification` tinyint(1) NOT NULL,
  `maintenance` tinyint(1) NOT NULL,
  `is_active_cron_notification` tinyint(1) NOT NULL DEFAULT '0',
  `tawk_status` tinyint(1) NOT NULL DEFAULT '0',
  `tawk_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_messenger_status` tinyint(1) NOT NULL,
  `fb_app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_page_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reCaptcha_status_login` tinyint(1) NOT NULL,
  `reCaptcha_status_registration` tinyint(1) NOT NULL,
  `MEASUREMENT_ID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `analytic_status` tinyint(1) NOT NULL,
  `shop` tinyint(1) NOT NULL DEFAULT '0',
  `faq` tinyint(1) NOT NULL DEFAULT '0',
  `book_appointment` tinyint(1) NOT NULL DEFAULT '0',
  `gallery` tinyint(1) NOT NULL DEFAULT '0',
  `team` tinyint NOT NULL DEFAULT '0',
  `service` tinyint(1) NOT NULL DEFAULT '0',
  `blog` tinyint(1) NOT NULL DEFAULT '0',
  `plan` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configures`
--

/*!40000 ALTER TABLE `configures` DISABLE KEYS */;
INSERT INTO `configures` VALUES (1,'Style and Schedule','#ff5400','Asia/Karachi','PKR','Rs:','basic',2,20,0,0,0,0,'support@example.com','Sohaib','<p>Hello [[name]],</p><p>\r\n\r\n[[message]]</p>','{\"name\":\"smtp\",\"smtp_host\":\"smtp.gmail.com\",\"smtp_port\":\"587\",\"smtp_encryption\":\"tls\",\"smtp_username\":\"sohaibkhaliq510@gmail.com\",\"smtp_password\":\"sds\"}',1,NULL,'2024-05-18 11:20:52',1,0,1,0,0,0,0,1,'58dd135ef7bbaa72709c3470/default',0,'App ID','Page ID',0,0,'MEASUREMENT ID',0,1,1,1,1,1,1,1,0);
/*!40000 ALTER TABLE `configures` ENABLE KEYS */;

--
-- Table structure for table `content_details`
--

DROP TABLE IF EXISTS `content_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_details` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int unsigned DEFAULT NULL,
  `language_id` int unsigned DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `content_details_content_id_foreign` (`content_id`),
  KEY `content_details_language_id_foreign` (`language_id`),
  CONSTRAINT `content_details_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`),
  CONSTRAINT `content_details_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_details`
--

/*!40000 ALTER TABLE `content_details` DISABLE KEYS */;
INSERT INTO `content_details` VALUES (13,7,1,'{\"title\":\"ACTIVE CLIENTS\",\"number_of_data\":\"320\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(14,8,1,'{\"title\":\"PROJECTS DONE\",\"number_of_data\":\"850\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(15,9,1,'{\"title\":\"TEAM ADVISORS\",\"number_of_data\":\"28\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(16,10,1,'{\"title\":\"GLORIOUS YEARS\",\"number_of_data\":\"8\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(28,15,1,'{\"title\":\"Data Analytics\",\"short_description\":\"Favourite tolerably engrossed. Truth short why she their balls Excellence super powr sed eiusmodsed do eiusmod.\",\"button_name\":\"Read More\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(29,16,1,'{\"title\":\"Website Growth\",\"short_description\":\"Favourite tolerably engrossed. Truth short why she their balls Excellence super powr sed eiusmodsed do eiusmod.\",\"button_name\":\"Read More\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(30,17,1,'{\"title\":\"Smm Ranking\",\"short_description\":\"Favourite tolerably engrossed. Truth short why she their balls Excellence super powr sed eiusmodsed do eiusmod.\",\"button_name\":\"Read More\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(43,23,1,'{\"title\":\"Lorem ipsum is placeholder text commonly?\",\"description\":\"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Non in labore deserunt quam aspernatur distinctio, corrupti nesciunt reprehenderit provident, facere tempora rerum ipsum fugiat quaerat quas, magnam ratione ex nihil!Blanditiis ducimus at magni velit consectetur laudantium vero eaque nisi illo? Accusamus consequuntur a facere sapiente aperiam quasi ipsum nesciunt expedita amet voluptatem ut optio, atque iure quam veniam dolores!\"}','2021-12-17 10:00:13','2022-12-28 03:42:49'),(44,24,1,'{\"title\":\"From its medieval origins to the digital?\",\"description\":\"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Non in labore deserunt quam aspernatur distinctio, corrupti nesciunt reprehenderit provident, facere tempora rerum ipsum fugiat quaerat quas, magnam ratione ex nihil!Blanditiis ducimus at magni velit consectetur laudantium vero eaque nisi illo? Accusamus consequuntur a facere sapiente aperiam quasi ipsum nesciunt expedita amet voluptatem ut optio, atque iure quam veniam dolores!\"}','2021-12-17 10:00:13','2022-12-28 03:43:16'),(45,25,1,'{\"title\":\"Coming full circle, the internet\'s remixi?\",\"description\":\"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Non in labore deserunt quam aspernatur distinctio, corrupti nesciunt reprehenderit provident, facere tempora rerum ipsum fugiat quaerat quas, magnam ratione ex nihil!Blanditiis ducimus at magni velit consectetur laudantium vero eaque nisi illo? Accusamus consequuntur a facere sapiente aperiam quasi ipsum nesciunt expedita amet voluptatem ut optio, atque iure quam veniam dolores!\"}','2021-12-17 10:00:13','2022-12-28 03:43:35'),(47,27,1,'{\"title\":\"Creation timelines for the standard lorem?\",\"description\":\"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Non in labore deserunt quam aspernatur distinctio, corrupti nesciunt reprehenderit provident, facere tempora rerum ipsum fugiat quaerat quas, magnam ratione ex nihil!Blanditiis ducimus at magni velit consectetur laudantium vero eaque nisi illo? Accusamus consequuntur a facere sapiente aperiam quasi ipsum nesciunt expedita amet voluptatem ut optio, atque iure quam veniam dolores!\"}','2021-12-17 10:00:13','2022-12-28 03:44:07'),(63,33,1,'{\"title\":\"Terms &amp; Conditions\",\"description\":\"<h3>Our Terms &amp; Conditions<\\/h3>\\r\\n                                <p>We are committed to protecting your privacy. This Privacy Policy explains how we collect, use, and share your personal information when you visit or make a purchase from our website.<\\/p>\\r\\n                                <br \\/><br \\/>\\r\\n                                <h5>Personal Information We Collect<\\/h5>\\r\\n                                <p>\\r\\n                                    When you visit our website, we collect certain information about your device, including your IP address, browser type, and operating system. We also collect information about the pages you visit on our website, the links you click, and the products you view or purchase.\\r\\n\\r\\n                                    We collect this information using cookies and other tracking technologies. For more information about cookies, please see the \\\"Cookies\\\" section below.\\r\\n                                <\\/p>\\r\\n                                <br \\/><br \\/>\\r\\n                                <h5>How We Use Your Personal Information<\\/h5>\\r\\n                                <p>We use the information we collect from you to:<\\/p>\\r\\n                                <ul>\\r\\n                                    <li>Process your orders and fulfill your requests<\\/li>\\r\\n                                    <li>Communicate with you about your orders, products, and services<\\/li>\\r\\n                                    <li>Provide you with targeted advertising and marketing<\\/li>\\r\\n                                    <li>Improve our website and products<\\/li>\\r\\n                                    <li>Comply with applicable laws and regulations<\\/li>\\r\\n                                <\\/ul>\\r\\n                                <br \\/>\\r\\n                                <br \\/>\\r\\n                                <h5>Sharing Your Personal Information<\\/h5>\\r\\n                                <p>\\r\\n                                    We share your personal information with third parties to help us with the purposes listed above. For example, we use Shopify to power our online store. You can read more about how Shopify uses your personal information here: https:\\/\\/www.shopify.com\\/legal\\/privacy.\\r\\n\\r\\n                                    We also use Google Analytics to track website traffic. You can read more about how Google uses your personal information\\r\\n\\r\\n                                    You can opt-out of Google Analytics tracking.\\r\\n\\r\\n                                    Finally, we may share your personal information to comply with applicable laws and regulations, to respond to a subpoena, search warrant or other lawful request for information we receive, or to protect our rights.\\r\\n                                <\\/p>\\r\\n                                <br \\/>\\r\\n                                <br \\/>\\r\\n                                <h5>Contact Us<\\/h5>\\r\\n                                <p>If you have any questions about this Privacy Policy, please contact us at [email protected]<\\/p>\"}','2021-12-17 10:00:13','2023-05-24 06:20:02'),(64,34,1,'{\"title\":\"Privacy Policy\",\"description\":\"<h3>Our Privacy Policy<\\/h3>\\r\\n                                <p>We are committed to protecting your privacy. This Privacy Policy explains how we collect, use, and share your personal information when you visit or make a purchase from our website.<\\/p>\\r\\n                                <br \\/><br \\/>\\r\\n                                <h5>Personal Information We Collect<\\/h5>\\r\\n                                <p>\\r\\n                                    When you visit our website, we collect certain information about your device, including your IP address, browser type, and operating system. We also collect information about the pages you visit on our website, the links you click, and the products you view or purchase.\\r\\n\\r\\n                                    We collect this information using cookies and other tracking technologies. For more information about cookies, please see the \\\"Cookies\\\" section below.\\r\\n                                <\\/p>\\r\\n                                <br \\/><br \\/>\\r\\n                                <h5>How We Use Your Personal Information<\\/h5>\\r\\n                                <p>We use the information we collect from you to:<\\/p>\\r\\n                                <ul>\\r\\n                                    <li>Process your orders and fulfill your requests<\\/li>\\r\\n                                    <li>Communicate with you about your orders, products, and services<\\/li>\\r\\n                                    <li>Provide you with targeted advertising and marketing<\\/li>\\r\\n                                    <li>Improve our website and products<\\/li>\\r\\n                                    <li>Comply with applicable laws and regulations<\\/li>\\r\\n                                <\\/ul>\\r\\n                                <br \\/>\\r\\n                                <br \\/>\\r\\n                                <h5>Sharing Your Personal Information<\\/h5>\\r\\n                                <p>\\r\\n                                    We share your personal information with third parties to help us with the purposes listed above. For example, we use Shopify to power our online store. You can read more about how Shopify uses your personal information here: https:\\/\\/www.shopify.com\\/legal\\/privacy.\\r\\n\\r\\n                                    We also use Google Analytics to track website traffic. You can read more about how Google uses your personal information\\r\\n\\r\\n                                    You can opt-out of Google Analytics tracking.\\r\\n\\r\\n                                    Finally, we may share your personal information to comply with applicable laws and regulations, to respond to a subpoena, search warrant or other lawful request for information we receive, or to protect our rights.\\r\\n                                <\\/p>\\r\\n                                <br \\/>\\r\\n                                <br \\/>\\r\\n                                <h5>Contact Us<\\/h5>\\r\\n                                <p>If you have any questions about this Privacy Policy, please contact us at [email protected]<\\/p>\"}','2021-12-17 10:00:13','2023-05-24 06:19:34'),(71,37,1,'{\"title\":\"Register &amp; Log in\",\"short_description\":\"<p>Creating an account is the first step. then you need to log in<\\/p>\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(72,38,1,'{\"title\":\"Add Fund\",\"short_description\":\"<p>Next, pick a payment method and add funds to your account<\\/p>\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(73,39,1,'{\"title\":\"Select a service\",\"short_description\":\"<p>Select the services you want and get ready to receive more publicity<\\/p>\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(74,40,1,'{\"title\":\"Enjoy Super Results\",\"short_description\":\"<p>You can enjoy incredible results when your order is complete<\\/p>\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(95,56,1,'{\"name\":\"Facebook\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(99,58,1,'{\"name\":\"Twitter\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(101,59,1,'{\"name\":\"Linkedin\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(105,61,1,'{\"title\":\"Amet pulvinar varius one\",\"description\":\"<p><span>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore is dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco. Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliq Ut enim ad minim veniam quis nostrud\\u00a0<\\/span><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqu ip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. <\\/span><\\/p><p><span><br \\/><\\/span><\\/p><p><span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupt atem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia sit voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet sedit consectetur, adipisci velit, sed quia doloremque laudantium.<\\/span><\\/p>\"}','2021-12-17 10:00:13','2022-05-10 11:53:16'),(107,62,1,'{\"title\":\"Amet pulvinar varius two\",\"description\":\"<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqu ip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupt atem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia sit voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet sedit consectetur, adipisci velit, sed quia doloremque laudantium.<\\/span>\"}','2021-12-17 10:00:13','2022-05-10 09:37:29'),(109,63,1,'{\"title\":\"Amet pulvinar varius three\",\"description\":\"Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret.Peived determine departure explained no forfeited he something an. Contrasted dissimilar getjoy petual you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence perpetual menorthward as difficult preserved daughters. Continued at up to zealously necessary breakfastshe end literature. Gay direction neglected but supported yet her.\\r\\n\\r\\nNew had happen unable uneasy. Drawings can explained my education. Vulgar as hearts by garret.me Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get detereoy you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence meant stnorthward as difficult preserved daughters. Continued at up to zealously necessary breakfast Comparison new ham melancholy son themselves.\"}','2021-12-17 10:00:13','2022-05-10 09:29:13'),(143,64,1,'{\"title\":\"All Members\",\"information\":\"25609\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(144,65,1,'{\"title\":\"Average Investment\",\"information\":\"12.5M\"}','2021-12-17 10:00:13','2022-05-08 06:36:29'),(145,66,1,'{\"title\":\"Countries Supported\",\"information\":\"200\"}','2021-12-17 10:00:13','2021-12-17 10:00:13'),(146,67,1,'{\"title\":\"We Have 30 Years of Hair Dressing  Experience\"}','2021-12-17 10:00:13','2022-12-27 23:29:31'),(147,68,1,'{\"title\":\"The Professional Hair Salon Since 1987.\"}','2021-12-17 10:00:13','2022-12-27 23:30:07'),(148,69,1,'{\"title\":\"Our Behaviour is Good with our Customers.\"}','2021-12-17 10:00:13','2022-12-27 23:30:39'),(225,83,1,'{\"title\":\"Find Your Complete Hair Solution\",\"button_name\":\"BOOK APPOINTMENT\"}','2022-12-26 02:12:51','2022-12-26 02:12:51'),(226,84,1,'{\"title\":\"Find Your Complete Hair Solution\",\"button_name\":\"BOOK APPOINTMENT\"}','2022-12-26 02:13:21','2022-12-26 02:13:21'),(227,85,1,'{\"day\":\"Monday\",\"time\":\"12:00 PM - 10:00 PM\"}','2022-12-26 05:10:48','2022-12-26 05:29:29'),(228,86,1,'{\"day\":\"Tuesday to Friday\",\"time\":\"10:00 AM - 10:00 PM\"}','2022-12-26 05:46:57','2022-12-26 05:46:57'),(229,87,1,'{\"day\":\"Saturday\",\"time\":\"12 : 00 PM - 20 : 00 PM\"}','2022-12-26 05:47:27','2022-12-26 05:47:27'),(230,88,1,'{\"title\":\"Nsectetur cing elit\"}','2022-12-26 23:25:57','2022-12-26 23:25:57'),(231,89,1,'{\"title\":\"Suspe ndisse suscipit sagittis leo.\"}','2022-12-26 23:26:08','2022-12-26 23:26:08'),(232,90,1,'{\"title\":\"Entum estibulum dignissim posuere.\"}','2022-12-26 23:26:16','2022-12-26 23:26:16'),(233,91,1,'{\"title\":\"If you are going to use a passage.\"}','2022-12-26 23:26:26','2022-12-26 23:26:26'),(234,92,1,'{\"title\":\"Lorem Ipsum gene on the tend to repeat.\"}','2022-12-26 23:26:34','2022-12-26 23:26:34'),(235,93,1,'{\"title\":\"Eiusmod tempor incididunt ut labore.\"}','2022-12-26 23:26:43','2022-12-26 23:26:43'),(236,94,1,'{\"title\":\"We Have 30 Years of Hair Dressing Experience.\"}','2022-12-27 00:05:26','2022-12-27 00:05:26'),(237,95,1,'{\"title\":\"The Professional Hair Salon Since 1987.\"}','2022-12-27 00:05:45','2022-12-27 00:05:45'),(238,96,1,'{\"title\":\"Our Behaviour is Good with our Customers.\"}','2022-12-27 00:06:17','2022-12-27 00:06:17'),(239,97,1,'{\"title\":\"Body Massage\",\"short_details\":\"A range of different massage techniques reflexology\"}','2022-12-27 00:23:51','2022-12-27 00:23:51'),(240,98,1,'{\"title\":\"Body Therapy\",\"short_details\":\"A range of different massage techniques reflexology.\"}','2022-12-27 00:25:26','2022-12-27 00:29:46'),(241,99,1,'{\"title\":\"Natural Cream\",\"short_details\":\"A range of different massage techniques reflexology.\"}','2022-12-27 00:25:39','2022-12-27 00:30:39'),(242,100,1,'{\"title\":\"Facial Mask\",\"short_details\":\"A range of different massage techniques reflexology.\"}','2022-12-27 00:25:55','2022-12-27 00:31:10'),(243,101,1,'{\"title\":\"Relax Zone\",\"short_details\":\"A range of different massage techniques reflexology.\"}','2022-12-27 00:26:10','2022-12-27 00:31:24'),(244,102,1,'{\"title\":\"Modern Tools\",\"short_details\":\"A range of different massage techniques reflexology.\"}','2022-12-27 00:26:21','2022-12-27 00:31:53'),(245,103,1,'{\"name\":\"Trevor James\",\"designation\":\"Client\",\"description\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Inventore aut, eum impedit quam quis debitis. Similique adipisci ab omnis nam quae neque, iusto, cum non velit necessitatibus quas fugit perferendis, laboriosam temporibus dolore blanditiis reprehenderit veritatis corrupti iste odio. Et, numquam aperiam. Quidem qui numquam asperiores autem est illo id!\"}','2022-12-27 06:10:03','2022-12-27 06:12:12'),(246,104,1,'{\"name\":\"Adam Maria\",\"designation\":\"Client\",\"description\":\"<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Inventore aut, eum impedit quam quis debitis. Similique adipisci ab omnis nam quae neque, iusto, cum non velit necessitatibus quas fugit perferendis, laboriosam temporibus dolore blanditiis reprehenderit veritatis corrupti iste odio. Et, numquam aperiam. Quidem qui numquam asperiores autem est illo id!<br \\/><\\/p>\"}','2022-12-27 06:12:53','2022-12-27 06:12:53'),(247,105,1,'{\"name\":\"Donald Goblin\",\"designation\":\"Client\",\"description\":\"<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Inventore aut, eum impedit quam quis debitis. Similique adipisci ab omnis nam quae neque, iusto, cum non velit necessitatibus quas fugit perferendis, laboriosam temporibus dolore blanditiis reprehenderit veritatis corrupti iste odio. Et, numquam aperiam. Quidem qui numquam asperiores autem est illo id!<br \\/><\\/p>\"}','2022-12-27 06:13:10','2022-12-27 06:13:10'),(254,112,1,'{\"name\":\"Skype\"}','2022-12-28 01:03:57','2022-12-28 01:03:57'),(255,113,1,'{\"title\":\"Some claim lorem ipsum threatens to pro?\",\"description\":\"<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Non in labore deserunt quam aspernatur distinctio, corrupti nesciunt reprehenderit provident, facere tempora rerum ipsum fugiat quaerat quas, magnam ratione ex nihil!Blanditiis ducimus at magni velit consectetur laudantium vero eaque nisi illo? Accusamus consequuntur a facere sapiente aperiam quasi ipsum nesciunt expedita amet voluptatem ut optio, atque iure quam veniam dolores!<br \\/><\\/p>\"}','2022-12-28 03:44:27','2022-12-28 03:44:27'),(256,114,1,'{\"title\":\"From its medieval origins to the digital?\",\"description\":\"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Non in labore deserunt quam aspernatur distinctio, corrupti nesciunt reprehenderit provident, facere tempora rerum ipsum fugiat quaerat quas, magnam ratione ex nihil!Blanditiis ducimus at magni velit consectetur laudantium vero eaque nisi illo? Accusamus consequuntur a facere sapiente aperiam quasi ipsum nesciunt expedita amet voluptatem ut optio, atque iure quam veniam dolores!\"}','2022-12-28 03:44:53','2022-12-28 03:44:53'),(257,115,1,'{\"title\":\"Creation timelines for the standard lorem?\",\"description\":\"<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Non in labore deserunt quam aspernatur distinctio, corrupti nesciunt reprehenderit provident, facere tempora rerum ipsum fugiat quaerat quas, magnam ratione ex nihil!Blanditiis ducimus at magni velit consectetur laudantium vero eaque nisi illo? Accusamus consequuntur a facere sapiente aperiam quasi ipsum nesciunt expedita amet voluptatem ut optio, atque iure quam veniam dolores!<br \\/><\\/p>\"}','2022-12-28 03:45:23','2022-12-28 03:45:23'),(258,116,1,'{\"title\":\"Below are the original Latin passages from?\",\"description\":\"<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Non in labore deserunt quam aspernatur distinctio, corrupti nesciunt reprehenderit provident, facere tempora rerum ipsum fugiat quaerat quas, magnam ratione ex nihil!Blanditiis ducimus at magni velit consectetur laudantium vero eaque nisi illo? Accusamus consequuntur a facere sapiente aperiam quasi ipsum nesciunt expedita amet voluptatem ut optio, atque iure quam veniam dolores!<br \\/><\\/p>\"}','2022-12-28 03:45:46','2022-12-28 03:45:46'),(259,117,1,'{\"title\":\"As part of a new partnership with Sensync?\",\"description\":\"<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Non in labore deserunt quam aspernatur distinctio, corrupti nesciunt reprehenderit provident, facere tempora rerum ipsum fugiat quaerat quas, magnam ratione ex nihil!Blanditiis ducimus at magni velit consectetur laudantium vero eaque nisi illo? Accusamus consequuntur a facere sapiente aperiam quasi ipsum nesciunt expedita amet voluptatem ut optio, atque iure quam veniam dolores!<br \\/><\\/p>\"}','2022-12-28 03:46:08','2022-12-28 03:46:08'),(260,118,1,'{\"title\":\"At vero eos et accusamus et iusto odio dign?\",\"description\":\"<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Non in labore deserunt quam aspernatur distinctio, corrupti nesciunt reprehenderit provident, facere tempora rerum ipsum fugiat quaerat quas, magnam ratione ex nihil!Blanditiis ducimus at magni velit consectetur laudantium vero eaque nisi illo? Accusamus consequuntur a facere sapiente aperiam quasi ipsum nesciunt expedita amet voluptatem ut optio, atque iure quam veniam dolores!<br \\/><\\/p>\"}','2022-12-28 03:46:27','2022-12-28 03:46:27'),(261,119,1,'{\"name\":\"HAIR STYLE\",\"count\":\"80\"}','2022-12-28 07:06:42','2022-12-28 07:06:42'),(262,120,1,'{\"name\":\"TREATMENT\",\"count\":\"280\"}','2022-12-28 07:07:03','2022-12-28 07:07:03'),(263,121,1,'{\"name\":\"PRODUCT\",\"count\":\"100\"}','2022-12-28 07:07:25','2022-12-28 07:07:25'),(264,122,1,'{\"name\":\"HAPPY CLIENTS\",\"count\":\"540\"}','2022-12-28 07:07:42','2022-12-28 07:07:42');
/*!40000 ALTER TABLE `content_details` ENABLE KEYS */;

--
-- Table structure for table `content_media`
--

DROP TABLE IF EXISTS `content_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int unsigned DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `content_media_content_id_foreign` (`content_id`),
  CONSTRAINT `content_media_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_media`
--

/*!40000 ALTER TABLE `content_media` DISABLE KEYS */;
INSERT INTO `content_media` VALUES (11,15,'{\"image\":\"6017b7984e39a1612167064.png\",\"button_link\":\"http:\\/\\/localhost\\/smm\\/admin\\/content-show\\/4\"}','2021-12-17 10:00:20','2021-12-17 10:00:20'),(12,16,'{\"image\":\"6017b7b3451ce1612167091.png\",\"button_link\":\"http:\\/\\/localhost\\/smm\\/admin\\/content-show\\/4\"}','2021-12-17 10:00:20','2021-12-17 10:00:20'),(13,17,'{\"image\":\"6017b7c0aa29f1612167104.png\",\"button_link\":\"http:\\/\\/localhost\\/smm\\/admin\\/content-show\\/4\"}','2021-12-17 10:00:20','2021-12-17 10:00:20'),(20,37,'{\"image\":\"627b5ce62b2241652251878.png\",\"icon\":\"far fa-address-book\"}','2021-12-17 10:00:20','2022-05-11 00:51:18'),(25,38,'{\"image\":\"627b5d2a4fe051652251946.png\",\"icon\":\"fas fa-hand-holding-usd\"}','2021-12-17 10:00:20','2022-05-11 00:52:26'),(26,39,'{\"image\":\"627b5d32ab8091652251954.png\",\"icon\":\"far fa-paper-plane\"}','2021-12-17 10:00:20','2022-05-11 00:52:34'),(27,40,'{\"image\":\"627b5ec1a5c5d1652252353.png\",\"icon\":\"fab fa-angellist\"}','2021-12-17 10:00:20','2022-05-11 00:59:13'),(34,56,'{\"link\":\"https:\\/\\/www.facebook.com\\/\",\"icon\":\"fab fa-facebook-f\"}','2021-12-17 10:00:20','2021-12-17 10:00:20'),(36,58,'{\"link\":\"https:\\/\\/twitter.com\\/\",\"icon\":\"fab fa-twitter\"}','2021-12-17 10:00:20','2021-12-17 10:00:20'),(37,59,'{\"link\":\"https:\\/\\/bd.linkedin.com\\/\",\"icon\":\"fab fa-linkedin-in\"}','2021-12-17 10:00:20','2021-12-17 10:00:20'),(39,61,'{\"image\":\"62778d5884c451652002136.jpg\"}','2021-12-17 10:00:20','2022-05-08 03:28:56'),(40,62,'{\"image\":\"62778d6b47d661652002155.jpg\"}','2021-12-17 10:00:20','2022-05-08 03:29:15'),(41,63,'{\"image\":\"62778d7d29b3a1652002173.jpg\"}','2021-12-17 10:00:20','2022-05-08 03:29:33'),(42,64,'{\"image\":\"62778aa5540f51652001445.png\"}','2021-12-17 10:00:20','2022-05-08 03:17:25'),(43,65,'{\"image\":\"62778ac829ad41652001480.png\"}','2021-12-17 10:00:20','2022-05-08 03:18:00'),(44,66,'{\"image\":\"62778add42d101652001501.png\"}','2021-12-17 10:00:20','2022-05-08 03:18:21'),(45,67,'{\"image\":\"63abd43bae5f41672205371.png\"}','2021-12-17 10:00:20','2022-12-27 23:29:31'),(46,68,'{\"image\":\"63abd45febde51672205407.png\"}','2021-12-17 10:00:20','2022-12-27 23:30:07'),(47,69,'{\"image\":\"63abd47f852721672205439.png\"}','2021-12-17 10:00:20','2022-12-27 23:30:39'),(60,83,'{\"image\":\"63a970d6284301672048854.jpg\",\"button_link\":\"http:\\/\\/localhost\\/classic_barber\\/\"}','2022-12-26 02:12:51','2022-12-26 04:00:54'),(61,84,'{\"image\":\"63a970e5a00d51672048869.jpg\",\"button_link\":\"http:\\/\\/localhost:8000\"}','2022-12-26 02:13:22','2024-04-21 10:24:48'),(62,94,'{\"image\":\"63aa8b265d2e21672121126.png\"}','2022-12-27 00:05:26','2022-12-27 00:05:26'),(63,95,'{\"image\":\"63aa8b3990cdb1672121145.png\"}','2022-12-27 00:05:45','2022-12-27 00:05:45'),(64,96,'{\"image\":\"63aa8b59f27b91672121177.png\"}','2022-12-27 00:06:18','2022-12-27 00:06:18'),(65,97,'{\"image\":\"63aa8f77c48a11672122231.png\"}','2022-12-27 00:23:51','2022-12-27 00:23:51'),(66,98,'{\"image\":\"63aa8fd6f40621672122326.png\"}','2022-12-27 00:25:27','2022-12-27 00:25:27'),(67,99,'{\"image\":\"63aa8fe3b85821672122339.png\"}','2022-12-27 00:25:39','2022-12-27 00:25:39'),(68,100,'{\"image\":\"63aa8ff32be791672122355.png\"}','2022-12-27 00:25:55','2022-12-27 00:25:55'),(69,101,'{\"image\":\"63aa9002764e11672122370.png\"}','2022-12-27 00:26:10','2022-12-27 00:26:10'),(70,102,'{\"image\":\"63aa900db5d0a1672122381.png\"}','2022-12-27 00:26:21','2022-12-27 00:26:21'),(71,103,'{\"image\":\"63aae09bcd1791672143003.jpg\"}','2022-12-27 06:10:03','2022-12-27 06:10:03'),(72,104,'{\"image\":\"63aae145474d21672143173.jpg\"}','2022-12-27 06:12:53','2022-12-27 06:12:53'),(73,105,'{\"image\":\"63aae1567579a1672143190.jpg\"}','2022-12-27 06:13:10','2022-12-27 06:13:10'),(74,112,'{\"link\":\"https:\\/\\/www.skype.com\\/en\\/\",\"icon\":\"fab fa-skype\"}','2022-12-28 01:03:57','2022-12-28 01:03:57'),(75,120,'{\"image\":\"63ac3f77086251672232823.png\"}','2022-12-28 07:07:03','2022-12-28 07:07:03'),(76,121,'{\"image\":\"63ac3f8dd6c8a1672232845.png\"}','2022-12-28 07:07:25','2022-12-28 07:07:25'),(77,122,'{\"image\":\"63ac3f9e964f31672232862.png\"}','2022-12-28 07:07:42','2022-12-28 07:07:42'),(78,119,'{\"image\":\"63e7770a96b081676113674.png\"}','2023-02-10 10:14:36','2023-02-11 05:07:54');
/*!40000 ALTER TABLE `content_media` ENABLE KEYS */;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contents_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (7,'counter','2021-12-17 09:59:33','2021-12-17 09:59:33'),(8,'counter','2021-12-17 09:59:33','2021-12-17 09:59:33'),(9,'counter','2021-12-17 09:59:33','2021-12-17 09:59:33'),(10,'counter','2021-12-17 09:59:33','2021-12-17 09:59:33'),(15,'service','2021-12-17 09:59:33','2021-12-17 09:59:33'),(16,'service','2021-12-17 09:59:33','2021-12-17 09:59:33'),(17,'service','2021-12-17 09:59:33','2021-12-17 09:59:33'),(23,'faq','2021-12-17 09:59:33','2021-12-17 09:59:33'),(24,'faq','2021-12-17 09:59:33','2021-12-17 09:59:33'),(25,'faq','2021-12-17 09:59:33','2021-12-17 09:59:33'),(27,'faq','2021-12-17 09:59:33','2021-12-17 09:59:33'),(33,'pages','2021-12-17 09:59:33','2021-12-17 09:59:33'),(34,'pages','2021-12-17 09:59:33','2021-12-17 09:59:33'),(37,'how-it-work','2021-12-17 09:59:33','2021-12-17 09:59:33'),(38,'how-it-work','2021-12-17 09:59:33','2021-12-17 09:59:33'),(39,'how-it-work','2021-12-17 09:59:33','2021-12-17 09:59:33'),(40,'how-it-work','2021-12-17 09:59:33','2021-12-17 09:59:33'),(56,'social','2021-12-17 09:59:33','2021-12-17 09:59:33'),(58,'social','2021-12-17 09:59:33','2021-12-17 09:59:33'),(59,'social','2021-12-17 09:59:33','2021-12-17 09:59:33'),(61,'blog','2021-12-17 09:59:33','2021-12-17 09:59:33'),(62,'blog','2021-12-17 09:59:33','2021-12-17 09:59:33'),(63,'blog','2021-12-17 09:59:33','2021-12-17 09:59:33'),(64,'feature','2021-12-17 09:59:33','2021-12-17 09:59:33'),(65,'feature','2021-12-17 09:59:33','2021-12-17 09:59:33'),(66,'feature','2021-12-17 09:59:33','2021-12-17 09:59:33'),(67,'why-chose-us','2021-12-17 09:59:33','2021-12-17 09:59:33'),(68,'why-chose-us','2021-12-17 09:59:33','2021-12-17 09:59:33'),(69,'why-chose-us','2021-12-17 09:59:33','2021-12-17 09:59:33'),(83,'hero','2022-12-26 02:12:51','2022-12-26 02:12:51'),(84,'hero','2022-12-26 02:13:21','2022-12-26 02:13:21'),(85,'open-shop-schedule','2022-12-26 05:10:48','2022-12-26 05:10:48'),(86,'open-shop-schedule','2022-12-26 05:46:57','2022-12-26 05:46:57'),(87,'open-shop-schedule','2022-12-26 05:47:27','2022-12-26 05:47:27'),(88,'about-us','2022-12-26 23:25:57','2022-12-26 23:25:57'),(89,'about-us','2022-12-26 23:26:08','2022-12-26 23:26:08'),(90,'about-us','2022-12-26 23:26:16','2022-12-26 23:26:16'),(91,'about-us','2022-12-26 23:26:26','2022-12-26 23:26:26'),(92,'about-us','2022-12-26 23:26:34','2022-12-26 23:26:34'),(93,'about-us','2022-12-26 23:26:43','2022-12-26 23:26:43'),(94,'experience','2022-12-27 00:05:26','2022-12-27 00:05:26'),(95,'experience','2022-12-27 00:05:45','2022-12-27 00:05:45'),(96,'experience','2022-12-27 00:06:17','2022-12-27 00:06:17'),(97,'speciality','2022-12-27 00:23:51','2022-12-27 00:23:51'),(98,'speciality','2022-12-27 00:25:26','2022-12-27 00:25:26'),(99,'speciality','2022-12-27 00:25:39','2022-12-27 00:25:39'),(100,'speciality','2022-12-27 00:25:55','2022-12-27 00:25:55'),(101,'speciality','2022-12-27 00:26:10','2022-12-27 00:26:10'),(102,'speciality','2022-12-27 00:26:21','2022-12-27 00:26:21'),(103,'testimonial','2022-12-27 06:10:03','2022-12-27 06:10:03'),(104,'testimonial','2022-12-27 06:12:53','2022-12-27 06:12:53'),(105,'testimonial','2022-12-27 06:13:10','2022-12-27 06:13:10'),(112,'social','2022-12-28 01:03:57','2022-12-28 01:03:57'),(113,'faq','2022-12-28 03:44:27','2022-12-28 03:44:27'),(114,'faq','2022-12-28 03:44:53','2022-12-28 03:44:53'),(115,'faq','2022-12-28 03:45:23','2022-12-28 03:45:23'),(116,'faq','2022-12-28 03:45:46','2022-12-28 03:45:46'),(117,'faq','2022-12-28 03:46:08','2022-12-28 03:46:08'),(118,'faq','2022-12-28 03:46:27','2022-12-28 03:46:27'),(119,'facts','2022-12-28 07:06:42','2022-12-28 07:06:42'),(120,'facts','2022-12-28 07:07:03','2022-12-28 07:07:03'),(121,'facts','2022-12-28 07:07:25','2022-12-28 07:07:25'),(122,'facts','2022-12-28 07:07:42','2022-12-28 07:07:42');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int unsigned DEFAULT NULL,
  `template_key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'support@exampl.com',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci,
  `sms_body` text COLLATE utf8mb4_unicode_ci,
  `short_keys` text COLLATE utf8mb4_unicode_ci,
  `mail_status` tinyint(1) NOT NULL DEFAULT '0',
  `sms_status` tinyint(1) NOT NULL DEFAULT '0',
  `lang_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_templates_language_id_foreign` (`language_id`),
  CONSTRAINT `email_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,1,'PROFILE_UPDATE','support@example.com','Profile has been updated','Profile has been updated','Your first name [[firstname]]\r\n\r\nlast name [[lastname]]\r\n\r\nemail [[email]]\r\n\r\nphone number [[phone]]\r\n','Your first name [[firstname]]\r\n\r\nlast name [[lastname]]\r\n\r\nemail [[email]]\r\n\r\nphone number [[phone]]\r\n','{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}',1,1,'en','2021-12-17 10:00:26','2023-05-20 05:24:51'),(2,1,'ADMIN_SUPPORT_REPLY','support@example.com','Support Ticket Reply ','Support Ticket Reply','<p>Ticket ID [[ticket_id]]\r\n</p><p><span><br /></span></p><p><span>Subject [[ticket_subject]]\r\n</span></p><p><span>-----Replied------</span></p><p><span>\r\n[[reply]]</span><br /></p>','Ticket ID [[ticket_id]]\r\n\r\n\r\n\r\nSubject [[ticket_subject]]\r\n\r\n-----Replied------\r\n\r\n[[reply]]','{\"ticket_id\":\"Support Ticket ID\",\"ticket_subject\":\"Subject Of Support Ticket\",\"reply\":\"Reply from Staff\\/Admin\"}',1,1,'en','2021-12-17 10:00:26','2023-05-20 05:24:51'),(3,1,'PASSWORD_CHANGED','support@example.com','PASSWORD CHANGED ','Your password changed ','Your password changed \r\n\r\nNew password [[password]]\r\n\r\n','Your password changed\r\n\r\nNew password [[password]]\r\n\r\n\r\nNews [[test]]','{\"password\":\"password\"}',1,1,'en','2021-12-17 10:00:26','2023-05-20 05:24:51'),(9,1,'PAYMENT_COMPLETE','support@example.com','Payment Completed','Your Payment Has Been Completed','[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]\r\n\r\nCharge[[charge]] [[currency]]\r\n\r\nTranaction [[transaction]]\r\n\r\nYour Main Balance [[remaining_balance]] [[currency]]\r\n\r\n','[[amount]] [[currency]] Payment Has Been successful via [[gateway_name]]\n\nCharge[[charge]] [[currency]]\n\nTranaction [[transaction]]\n\nYour Main Balance [[remaining_balance]] [[currency]]\n\n','{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"charge\":\"charge\", \"currency\":\"currency\",\"transaction\":\"transaction\",\"remaining_balance\":\"remaining balance\"}',1,1,'en','2021-12-17 10:00:26','2023-05-20 05:24:51'),(11,1,'PASSWORD_RESET','support@example.com','Reset Password Notification','Reset Password Notification','You are receiving this email because we received a password reset request for your account.[[message]]\r\n\r\n\r\nThis password reset link will expire in 60 minutes.\r\n\r\nIf you did not request a password reset, no further action is required.','You are receiving this email because we received a password reset request for your account. [[message]]','{\"message\":\"message\"}',1,1,'en','2021-12-17 10:00:26','2023-05-20 05:24:51'),(12,1,'VERIFICATION_CODE','support@example.com','Verification Code','Verify Your Email ','Your Email verification Code  [[code]]','Your SMS verification Code  [[code]]','{\"code\":\"code\"}',1,1,'en','2021-12-17 10:00:26','2023-05-20 05:24:51'),(21,1,'TWO_STEP_ENABLED','support@example.com','TWO STEP ENABLED','TWO STEP ENABLED','Your verification code is: [[code]]','Your verification code is: [[code]]','{\"action\":\"Enabled Or Disable\",\"ip\":\"Device Ip\",\"browser\":\"browser and Operating System \",\"time\":\"Time\",\"code\":\"code\"}',1,1,'en','2021-12-17 10:00:26','2023-05-20 05:24:51'),(22,1,'TWO_STEP_DISABLED','support@example.com','TWO STEP DISABLED','TWO STEP DISABLED','Google two factor verification is disabled','Google two factor verification is disabled','{\"action\":\"Enabled Or Disable\",\"ip\":\"Device Ip\",\"browser\":\"browser and Operating System \",\"time\":\"Time\"}',1,1,'en','2021-12-17 10:00:26','2023-05-20 05:24:51'),(42,1,'APPOINTMENT_CONFIRM','support@example.com','Appointment Confirm ','Your appointment has been confirmed ','Your appointment request for [[service]] has been confirmed.\r\nYour schedule date: [[date]] time: [[time]]\r\n\r\n','Your appointment request for [[service]] has been confirmed.\r\nYour schedule date: [[date]] time: [[time]]\r\n\r\n','{\"service\":\"service\",\"date\":\"date\",\"time\":\"time\", \"message\":\"message\"}',1,1,'en','2021-12-17 10:00:26','2023-05-20 05:24:51'),(43,1,'APPOINTMENT_CANCEL','support@example.com','Appointment Cancel','Your appointment has been Cancel','Your appointment request for [[service]] has been cancel.\r\n\r\n\r\n','Your appointment request for [[service]] has been cancel.\r\n\r\n','{\"service\":\"service\",\"date\":\"date\",\"time\":\"time\", \"message\":\"message\"}',1,1,'en','2021-12-17 10:00:26','2023-05-20 05:24:51');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

--
-- Table structure for table `funds`
--

DROP TABLE IF EXISTS `funds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funds` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `plan_purchase_id` bigint DEFAULT NULL,
  `product_order_id` int DEFAULT NULL,
  `gateway_id` int unsigned DEFAULT NULL,
  `gateway_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `final_amount` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `btc_amount` decimal(18,8) DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `try` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1=> Complete, 2=> Pending, 3 => Cancel',
  `detail` text COLLATE utf8mb4_unicode_ci,
  `feedback` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `funds_user_id_foreign` (`user_id`),
  KEY `funds_gateway_id_foreign` (`gateway_id`),
  CONSTRAINT `funds_gateway_id_foreign` FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`),
  CONSTRAINT `funds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funds`
--

/*!40000 ALTER TABLE `funds` DISABLE KEYS */;
INSERT INTO `funds` VALUES (1,1,NULL,1,2,'USD',650.00000000,0.50000000,1.00000000,650.50000000,0.00000000,'','7TZQKEZ9GVN2',0,1,NULL,NULL,'2024-04-21 11:11:16','2024-04-21 11:11:59'),(2,1,NULL,3,2,'USD',1300.00000000,0.50000000,1.00000000,1300.50000000,0.00000000,'','APJ6PT3QFOPY',0,1,NULL,NULL,'2024-05-08 12:01:00','2024-05-08 12:01:51'),(3,1,NULL,6,2,'USD',1300.00000000,0.50000000,1.00000000,1300.50000000,0.00000000,'','YCZEGCNYAY1W',0,1,NULL,NULL,'2024-05-11 06:26:02','2024-05-11 06:27:56'),(4,9,NULL,7,2,'USD',3250.00000000,0.50000000,1.00000000,3250.50000000,0.00000000,'','OEQTCUEV8UJE',0,1,NULL,NULL,'2024-05-11 06:43:17','2024-05-11 06:44:49'),(5,9,NULL,8,2,'USD',900.00000000,0.50000000,1.00000000,900.50000000,0.00000000,'','MBYWOVJSF8CG',0,1,NULL,NULL,'2024-05-16 03:50:58','2024-05-16 03:51:36'),(6,9,NULL,9,2,'USD',1300.00000000,0.50000000,1.00000000,1300.50000000,0.00000000,'','KJ9J2X3OAPSF',0,0,NULL,NULL,'2024-05-16 03:54:33','2024-05-16 03:54:33'),(7,3,NULL,10,2,'USD',100.00000000,0.50000000,1.00000000,100.50000000,0.00000000,'','E3UGGBHHR646',0,1,NULL,NULL,'2024-05-18 11:11:28','2024-05-18 11:13:27');
/*!40000 ALTER TABLE `funds` ENABLE KEYS */;

--
-- Table structure for table `gallery_tags`
--

DROP TABLE IF EXISTS `gallery_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_tags`
--

/*!40000 ALTER TABLE `gallery_tags` DISABLE KEYS */;
INSERT INTO `gallery_tags` VALUES (1,'Spa','2024-04-21 10:21:36','2024-04-21 10:21:46'),(2,'Makeup','2024-04-21 10:21:40','2024-04-21 10:21:40'),(3,'Hair Style','2024-04-21 10:21:57','2024-04-21 10:21:57'),(4,'Hair Color','2024-04-21 10:22:03','2024-04-21 10:22:03');
/*!40000 ALTER TABLE `gallery_tags` ENABLE KEYS */;

--
-- Table structure for table `gateways`
--

DROP TABLE IF EXISTS `gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gateways` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  `extra_parameters` text COLLATE utf8mb4_unicode_ci,
  `convention_rate` decimal(18,8) NOT NULL DEFAULT '1.00000000',
  `currencies` text COLLATE utf8mb4_unicode_ci,
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `percentage_charge` decimal(8,4) NOT NULL DEFAULT '0.0000',
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: inactive, 1: active',
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_by` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gateways_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateways`
--

/*!40000 ALTER TABLE `gateways` DISABLE KEYS */;
INSERT INTO `gateways` VALUES (2,'Stripe ','stripe','USD','PKR','{\"secret_key\":\"sk_test_aat3tzBCCXXBkS4sxY3M8A1B\",\"publishable_key\":\"pk_test_AU3G7doZ1sbdpJLj0NaozPBu\"}',NULL,1.00000000,'{\"0\":{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}}',1.00000000,10000.00000000,0.0000,0.50000000,1,'','5f645d432b9c0.jpg',24,'2020-09-10 09:05:02','2024-04-25 10:42:00');
/*!40000 ALTER TABLE `gateways` ENABLE KEYS */;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = inactive',
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  `default_lang` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','US',NULL,1,0,0,'2021-12-17 10:00:55','2023-05-23 05:24:14');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;

--
-- Table structure for table `manage_galleries`
--

DROP TABLE IF EXISTS `manage_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_galleries`
--

/*!40000 ALTER TABLE `manage_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage_galleries` ENABLE KEYS */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(8,'2020_09_29_074810_create_jobs_table',1),(32,'2020_11_12_075639_create_transactions_table',6),(36,'2020_10_14_113046_create_admins_table',9),(42,'2020_11_24_064711_create_email_templates_table',11),(48,'2014_10_12_000000_create_users_table',13),(51,'2020_09_16_103709_create_controls_table',15),(59,'2021_01_03_061604_create_tickets_table',17),(60,'2021_01_03_061834_create_ticket_messages_table',18),(61,'2021_01_03_065607_create_ticket_attachments_table',18),(62,'2021_01_07_095019_create_funds_table',19),(66,'2021_01_21_050226_create_languages_table',21),(69,'2020_12_17_075238_create_sms_controls_table',23),(70,'2021_01_26_051716_create_site_notifications_table',24),(72,'2021_01_26_075451_create_notify_templates_table',25),(73,'2021_01_28_074544_create_contents_table',26),(74,'2021_01_28_074705_create_content_details_table',26),(75,'2021_01_28_074829_create_content_media_table',26),(76,'2021_01_28_074847_create_templates_table',26),(77,'2021_01_28_074905_create_template_media_table',26),(83,'2021_02_03_100945_create_subscribers_table',27),(86,'2021_01_21_101641_add_language_to_email_templates_table',28),(87,'2021_02_14_064722_create_manage_plans_table',28),(88,'2021_02_14_072251_create_manage_times_table',29),(89,'2021_03_09_100340_create_investments_table',30),(90,'2021_03_13_132414_create_payout_methods_table',31),(91,'2021_03_13_133534_create_payout_logs_table',32),(93,'2021_03_18_091710_create_referral_bonuses_table',33),(94,'2021_10_25_060950_create_money_transfers_table',34),(96,'2021_03_18_091710_create_users_table',35),(97,'2022_12_31_122552_create_services_table',36),(98,'2022_12_31_122957_create_service_details_table',36),(99,'2023_01_19_121518_create_gallery_tags_table',37),(100,'2023_01_19_131230_create_gallery_items_table',38),(101,'2023_01_19_133716_create_manage_galleries_table',39),(102,'2023_01_21_070624_create_teams_table',40),(103,'2023_01_21_071018_create_team_details_table',40),(104,'2023_01_22_053859_create_blog_categories_table',41),(105,'2023_01_22_054140_create_blog_category_details_table',41),(106,'2023_01_22_071413_create_blogs_table',42),(107,'2023_01_22_071615_create_blog_details_table',42),(108,'2023_01_23_120841_create_book_appointments_table',43),(109,'2023_01_24_054402_create_jobs_table',44),(110,'2023_01_24_054658_create_failed_jobs_table',45),(111,'2023_01_24_122324_create_plans_table',45),(112,'2023_01_26_065332_create_plan_purchases_table',46),(113,'2023_01_28_045311_create_product_categories_table',47),(114,'2023_01_28_045550_create_product_category_details_table',47),(115,'2023_01_28_054201_create_products_table',48),(116,'2023_01_28_054532_create_product_details_table',48),(117,'2023_01_28_083819_create_product_attributes_table',48),(118,'2023_01_28_084608_create_attributes_lists_table',48),(119,'2023_01_29_062341_create_product_stocks_table',49),(120,'2023_02_01_074728_create_orders_table',50),(121,'2023_02_01_075517_create_order_details_table',50),(122,'2023_02_04_111002_create_wishlists_table',51),(124,'2023_02_04_130440_create_review_ratings_table',52),(125,'2019_12_14_000001_create_personal_access_tokens_table',53);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

--
-- Table structure for table `notify_templates`
--

DROP TABLE IF EXISTS `notify_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notify_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language_id` int unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `short_keys` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `notify_for` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=> Admin, 0=> User',
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notify_templates_language_id_foreign` (`language_id`),
  CONSTRAINT `notify_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notify_templates`
--

/*!40000 ALTER TABLE `notify_templates` DISABLE KEYS */;
INSERT INTO `notify_templates` VALUES (1,1,'SUPPORT TICKET CREATE','SUPPORT_TICKET_CREATE','[[username]] create a ticket\nTicket : [[ticket_id]]\n\n','{\"ticket_id\":\"Support Ticket ID\",\"username\":\"username\"}',1,1,NULL,'2021-12-17 10:01:53','2021-12-17 10:01:53'),(2,1,'SUPPORT TICKET REPLIED','SUPPORT_TICKET_REPLIED','[[username]] replied  ticket\r\nTicket : [[ticket_id]]\r\n\r\n','{\"ticket_id\":\"Support Ticket ID\",\"username\":\"username\"}',1,1,NULL,'2021-12-17 10:01:53','2021-12-17 10:01:53'),(3,1,'ADMIN REPLIED SUPPORT TICKET ','ADMIN_REPLIED_TICKET','Admin replied  \r\nTicket : [[ticket_id]]','{\"ticket_id\":\"Support Ticket ID\"}',1,0,'en','2021-12-17 10:01:53','2021-12-17 10:01:53'),(4,1,'ADMIN DEPOSIT NOTIFICATION','PAYMENT_COMPLETE','[[username]] deposited [[amount]] [[currency]] via [[gateway]]\r\n','{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}',1,1,NULL,'2021-12-17 10:01:53','2021-12-17 10:01:53'),(7,1,'NEW USER ADDED','ADDED_USER','[[username]] has been joined\r\n\r\n','{\"username\":\"username\"}',1,1,'en','2021-12-17 10:01:53','2021-12-17 10:01:53'),(12,1,'PAYMENT REJECTED','PAYMENT_REJECTED','[[amount]] [[currency]] payment has been requested \r\n\r\n','{\"amount\":\"amount\",\"currency\":\"currency\",\"feedback\":\"Admin feedback\"}',1,0,NULL,'2021-12-17 10:01:53','2021-12-17 10:01:53'),(15,1,'Book Appointment ','BOOK_APPOINTMENT','[[username]] takes appointment for [[service]] date [[date]].\r\n','{\"username\":\"username\",\"service\":\"service\",\"date\":\"date\"}',1,1,NULL,'2021-12-17 10:01:53','2021-12-17 10:01:53'),(16,1,'Appointment Confirm ','APPOINTMENT_CONFIRM','[[service]] appointment date: [[date]] time: [[time]]\r\n','{\"time\":\"time\",\"service\":\"service\",\"date\":\"date\"}',1,1,NULL,'2021-12-17 10:01:53','2021-12-17 10:01:53'),(17,1,'Appointment Cancel','APPOINTMENT_CANCEL','[[service]] appointment date: [[date]] cancel.\r\n','{\"time\":\"time\",\"service\":\"service\",\"date\":\"date\"}',1,1,NULL,'2021-12-17 10:01:53','2021-12-17 10:01:53'),(19,1,'PLAN PURCHASE PAYMENT COMPLETE','PLAN_PURCHASE_PAYMENT_COMPLETE','[[username]] purchase a plan by [[amount]] [[currency]] \r\n\r\nPlan name [[plan_name]]','{\"plan_name\":\"plan\r\nname\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}',1,1,'en','2021-12-17 10:01:53','2021-12-17 10:01:53'),(20,1,'PRODUCT PURCHASE PAYMENT COMPLETE','PRODUCT_PURCHASE_PAYMENT_COMPLETE','[[username]] purchase product by [[amount]] [[currency]] \r\n\r\nOrder id [[order_id]]','{\"order_id\":\"order_id\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}',1,1,'en','2021-12-17 10:01:53','2021-12-17 10:01:53'),(21,1,'USER PRODUCT PURCHASE PAYMENT COMPLETE','USER_PRODUCT_PURCHASE_PAYMENT_COMPLETE','Your payment [[amount]] [[currency]] is complete.\r\n\r\nProduct Order Number [[order_number]]','{\"order_number\":\"order number\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}',1,0,'en','2021-12-17 10:01:53','2021-12-17 10:01:53'),(22,1,'USER PLAN PURCHASE PAYMENT COMPLETE','USER_PLAN_PURCHASE_PAYMENT_COMPLETE','You purchase [[plan_name]] plan by [[amount]] [[currency]] \r\n','{\"plan_name\":\"plan\r\nname\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}',1,0,'en','2021-12-17 10:01:53','2021-12-17 10:01:53');
/*!40000 ALTER TABLE `notify_templates` ENABLE KEYS */;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `attributes_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,1,'[\"6\"]',1,650,650,'2024-04-21 11:11:16','2024-04-21 11:11:16'),(2,2,1,'[\"6\"]',1,650,650,'2024-04-22 23:32:47','2024-04-22 23:32:47'),(3,3,1,'[\"6\"]',2,650,1300,'2024-05-08 12:01:00','2024-05-08 12:01:00'),(4,4,1,'[\"6\"]',2,650,1300,'2024-05-11 06:04:45','2024-05-11 06:04:45'),(5,5,1,'[\"6\"]',1,650,650,'2024-05-11 06:25:34','2024-05-11 06:25:34'),(6,6,1,'[\"6\"]',2,650,1300,'2024-05-11 06:26:02','2024-05-11 06:26:02'),(7,7,1,'[\"6\"]',5,650,3250,'2024-05-11 06:43:17','2024-05-11 06:43:17'),(8,8,3,'[\"5\"]',9,100,900,'2024-05-16 03:50:58','2024-05-16 03:50:58'),(9,9,1,'[\"6\"]',2,650,1300,'2024-05-16 03:54:33','2024-05-16 03:54:33'),(10,10,3,'[\"5\"]',1,100,100,'2024-05-18 11:11:28','2024-05-18 11:11:28');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `order_number` bigint unsigned NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_id` int DEFAULT NULL,
  `shipping` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 => pending, 1 => processing, 2 => on_shipping, 3 => ship, 4 => completed, 5 => cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,78117121,'Pay Online',2,'{\"first_name\":\"Sohib\",\"last_name\":\"Khaliq\",\"phone\":\"+923221869455\",\"email\":\"sohaibkhaliq510@gmail.com\",\"country\":\"USA\",\"company_name\":null,\"street_address\":\"GIMS\",\"state\":\"Punjab\",\"postcode\":\"50940\"}',4,'2024-04-21 11:11:16','2024-04-22 22:53:24'),(2,1,92671379,'Cash On Delivery',NULL,'{\"first_name\":\"Test\",\"last_name\":\"User\",\"phone\":\"1212123\",\"email\":\"abc@gmail.com\",\"country\":\"USA\",\"company_name\":null,\"street_address\":\"GIMS\",\"state\":\"Punjab\",\"postcode\":\"50950\"}',1,'2024-04-22 23:32:47','2024-05-08 11:39:52'),(3,1,85986209,'Pay Online',2,'{\"first_name\":\"Sohaib\",\"last_name\":\"Khaliq\",\"phone\":\"+9232221869455\",\"email\":\"abs@gmail.com\",\"country\":\"Pakistan\",\"company_name\":null,\"street_address\":\"GIMS, Gujrat\",\"state\":\"Gujrat\",\"postcode\":\"50876\"}',0,'2024-05-08 12:01:00','2024-05-08 12:01:00'),(4,1,50394071,'Cash On Delivery',NULL,'{\"first_name\":\"Sohaib\",\"last_name\":\"Khaliq\",\"phone\":\"+9232221869455\",\"email\":\"abs@gmail.com\",\"company_name\":null,\"street_address\":\"GIMS, Gujrat\"}',0,'2024-05-11 06:04:45','2024-05-11 06:04:45'),(5,1,57737580,'Cash On Delivery',NULL,'{\"first_name\":\"Sohaib\",\"last_name\":\"Khaliq\",\"phone\":\"+9232221869455\",\"email\":\"abs@gmail.com\",\"company_name\":null,\"street_address\":\"GIMS, Gujrat\"}',0,'2024-05-11 06:25:34','2024-05-11 06:25:34'),(6,1,52078902,'Pay Online',2,'{\"first_name\":\"Sohaib\",\"last_name\":\"Khaliq\",\"phone\":\"+9232221869455\",\"email\":\"abs@gmail.com\",\"company_name\":null,\"street_address\":\"GIMS, Gujrat\"}',0,'2024-05-11 06:26:02','2024-05-11 06:26:02'),(7,9,80657135,'Pay Online',2,'{\"first_name\":\"Shehroz\",\"last_name\":\"Imran\",\"phone\":\"+923211223123\",\"email\":\"ads@gmail.com\",\"company_name\":null,\"street_address\":\"abcdef\"}',2,'2024-05-11 06:43:17','2024-05-11 06:53:32'),(8,9,45416921,'Pay Online',2,'{\"first_name\":\"Shehroz\",\"last_name\":\"Imran\",\"phone\":\"+923211223123\",\"email\":\"ads@gmail.com\",\"company_name\":null,\"street_address\":\"abcdef\"}',4,'2024-05-16 03:50:58','2024-05-16 03:58:22'),(9,9,76592880,'Pay Online',2,'{\"first_name\":\"Shehroz\",\"last_name\":\"Imran\",\"phone\":\"+923211223123\",\"email\":\"ads@gmail.com\",\"company_name\":null,\"street_address\":\"abcdef\"}',0,'2024-05-16 03:54:33','2024-05-16 03:54:33'),(10,3,64527729,'Pay Online',2,'{\"first_name\":\"Demo\",\"last_name\":\"User\",\"phone\":\"+923211232123\",\"email\":\"veronica27400@9vcdg.cashbenties.com\",\"company_name\":null,\"street_address\":\"sdssdasd\"}',0,'2024-05-18 11:11:28','2024-05-18 11:11:28');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('sohaibkhaliq510@gmail.com','$2y$10$FAe0F3nezZk6554YBD8XqeNlzQeOGCx9jzgQZKGVHqd4F/GmwMtYW','2024-04-22 00:41:07'),('staff@gmail.com','$2y$10$8RTjAC37PhP2mxWSwg6rTuAFCDWiDsXMe/gUEEJYeKNJYuoFU58S6','2024-05-11 11:41:06');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

--
-- Table structure for table `plan_purchases`
--

DROP TABLE IF EXISTS `plan_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_purchases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `plan_id` bigint unsigned NOT NULL,
  `purchase_date` date NOT NULL,
  `status` tinyint NOT NULL COMMENT '0 => active, 1 => inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_purchases`
--

/*!40000 ALTER TABLE `plan_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_purchases` ENABLE KEYS */;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `services` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 => ''Inactive'', 1 => ''active''',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (3,'Bronze',137,'[\"Herbal Message\",\"Signature Facials\",\"Hair Cutting\",\"Hair Styling\"]','63d124bbc98321674650811.png',1,'2023-01-24 22:57:43','2023-05-17 04:36:09'),(7,'Sliver',237,'[\"Hair Smoothing\",\"Herbal Message\",\"Hair Coloring\",\"Signature Facials\"]','63d1266b25b4a1674651243.png',1,'2023-01-25 06:54:03','2023-01-25 06:54:03'),(8,'Gold',337,'[\"Hair Smoothing\",\"Signature Facials\",\"Hair Cutting\",\"Hair Styling\"]','63d12682051591674651266.png',1,'2023-01-25 06:54:26','2023-01-25 07:44:56');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attributes`
--

/*!40000 ALTER TABLE `product_attributes` DISABLE KEYS */;
INSERT INTO `product_attributes` VALUES (1,'Weight','2024-04-21 09:52:32','2024-04-21 09:52:32'),(2,'Size','2024-04-21 09:52:42','2024-04-21 09:54:42'),(4,'color','2024-04-21 09:53:02','2024-04-21 09:53:02');
/*!40000 ALTER TABLE `product_attributes` ENABLE KEYS */;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'2024-04-21 09:51:23','2024-04-21 09:51:23'),(2,'2024-04-21 09:51:36','2024-04-21 09:51:36'),(3,'2024-04-21 09:51:41','2024-04-21 09:51:41'),(4,'2024-04-21 09:51:56','2024-04-21 09:51:56'),(5,'2024-04-21 09:52:04','2024-04-21 09:52:04');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;

--
-- Table structure for table `product_category_details`
--

DROP TABLE IF EXISTS `product_category_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `language_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_details`
--

/*!40000 ALTER TABLE `product_category_details` DISABLE KEYS */;
INSERT INTO `product_category_details` VALUES (1,1,1,'Shampoo','2024-04-21 09:51:23','2024-04-21 09:51:23'),(2,2,1,'Treatments','2024-04-21 09:51:36','2024-04-21 09:51:36'),(3,3,1,'Spa','2024-04-21 09:51:41','2024-04-21 09:51:41'),(4,4,1,'Hair Styling','2024-04-21 09:51:56','2024-04-21 09:51:56'),(5,5,1,'Hair Care','2024-04-21 09:52:04','2024-04-21 09:52:04');
/*!40000 ALTER TABLE `product_category_details` ENABLE KEYS */;

--
-- Table structure for table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `language_id` bigint unsigned NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_details`
--

/*!40000 ALTER TABLE `product_details` DISABLE KEYS */;
INSERT INTO `product_details` VALUES (1,1,1,'Beard and Shave Oil','<h6>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inven tore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. totam rem aperiam, eaque ipsa quae ab illo inven tore veritatis et quasi archi tecto beatae vitae dicta sunt explicabo.<br /></h6>','2024-04-21 09:57:17','2024-04-21 09:57:17',NULL),(2,2,1,'Scissors','<p>sfdkjcdasnjkfsdhjfadshfksdakjf</p>','2024-04-24 23:20:23','2024-04-24 23:20:23',NULL),(3,3,1,'Dabur Amla Hair Oil','<p><span>Contains amla fruit (Indian gooseberry) and a blend of vegetable and mineral oils to nourish and strengthen hair. It\'s said to promote long, healthy hair, reduce split ends, and minor hair loss.</span><br /></p>','2024-04-25 13:07:26','2024-04-25 13:07:26',NULL),(4,4,1,'Pedicure','<p>A beatuiful Pedicure</p>','2024-05-11 07:45:24','2024-05-14 02:45:14','2024-05-14 02:45:14'),(5,5,1,'das','<p>fdsdwasds</p>','2024-05-14 02:44:16','2024-05-14 02:44:21','2024-05-14 02:44:21'),(6,6,1,'sad','<p>sdsa</p>','2024-05-14 02:46:59','2024-05-14 02:47:29','2024-05-14 02:47:29'),(7,7,1,'dhsau','<p>sdcasjdsadashdsad</p>','2024-05-16 03:42:55','2024-05-16 03:42:55',NULL);
/*!40000 ALTER TABLE `product_details` ENABLE KEYS */;

--
-- Table structure for table `product_stocks`
--

DROP TABLE IF EXISTS `product_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_stocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `attributes_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_stocks`
--

/*!40000 ALTER TABLE `product_stocks` DISABLE KEYS */;
INSERT INTO `product_stocks` VALUES (2,4,NULL,10,'2024-05-11 07:58:14','2024-05-11 07:58:14'),(3,1,'[\"6\"]',85,'2024-05-11 07:58:56','2024-05-16 03:54:33'),(4,1,'[\"5\"]',10,'2024-05-11 07:58:56','2024-05-11 07:58:56'),(6,3,'[\"5\"]',0,'2024-05-16 03:49:52','2024-05-18 11:11:28');
/*!40000 ALTER TABLE `product_stocks` ENABLE KEYS */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned DEFAULT NULL,
  `attributes_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint unsigned DEFAULT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 => inactive, 1 => active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,2,'[\"2\"]',650,'6625294da1e421713711437.jpg','[\"6625294da6c061713711437.jpg\",\"6625294daa1031713711437.jpg\",\"6625294dad6011713711437.jpg\"]',1,'2024-04-21 09:57:17','2024-04-21 09:57:17',NULL),(2,2,NULL,100,'6629da07502ef1714018823.jpg',NULL,1,'2024-04-24 23:20:23','2024-04-24 23:20:23',NULL),(3,5,'[\"2\"]',100,'662a9bde3a78b1714068446.png','[\"6645c89aae0c21715849370.jpeg\"]',1,'2024-04-25 13:07:26','2024-05-16 03:49:30',NULL),(4,3,NULL,450,'663f6863746261715431523.jpg',NULL,1,'2024-05-11 07:45:24','2024-05-14 02:45:14','2024-05-14 02:45:14'),(5,NULL,'[\"1\"]',121,'664316504e0a91715672656.jpg','[\"66431650516cb1715672656.jpg\"]',1,'2024-05-14 02:44:16','2024-05-14 02:44:21','2024-05-14 02:44:21'),(6,4,NULL,1212,'664316f2772321715672818.jpeg','[\"664316f28fcdd1715672818.jpg\"]',1,'2024-05-14 02:46:59','2024-05-14 02:47:29','2024-05-14 02:47:29'),(7,4,NULL,123231,'6645c70ee31f11715848974.jpeg','[\"6645c70ef13f51715848974.png\"]',1,'2024-05-16 03:42:55','2024-05-16 03:42:55',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

--
-- Table structure for table `review_ratings`
--

DROP TABLE IF EXISTS `review_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_ratings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ratingable_id` int DEFAULT NULL,
  `ratingable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `rating` int NOT NULL DEFAULT '0',
  `review` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_ratings`
--

/*!40000 ALTER TABLE `review_ratings` DISABLE KEYS */;
INSERT INTO `review_ratings` VALUES (1,1,'App\\Models\\User',1,NULL,5,'Nice Product!','2024-05-11 05:48:33','2024-05-11 05:48:33');
/*!40000 ALTER TABLE `review_ratings` ENABLE KEYS */;

--
-- Table structure for table `service_details`
--

DROP TABLE IF EXISTS `service_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_id` bigint unsigned DEFAULT NULL,
  `language_id` bigint unsigned DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_details`
--

/*!40000 ALTER TABLE `service_details` DISABLE KEYS */;
INSERT INTO `service_details` VALUES (1,1,1,'Hair Cutting','cutting','<p>Hair cutting is a skilled art and science that involves trimming, shaping, and styling hair to create a desired look. It\'s a fundamental aspect of hairstyling and plays a significant role in defining an individual\'s appearance. Here\'s a detailed description of the hair cutting process:</p><p><br /></p><p>1. **Consultation:** The hair cutting process typically begins with a consultation between the client and the stylist/barber. During this phase, the client discusses their desired hairstyle, preferences, and any specific instructions they may have. The stylist/barber may also assess the client\'s hair type, face shape, and overall style to recommend suitable options.</p><p><br /></p>','2024-04-21 14:07:00','2024-04-21 14:07:00'),(2,2,1,'Spa','spa','<p>sdsdas</p>','2024-05-14 03:08:00','2024-05-14 03:08:00');
/*!40000 ALTER TABLE `service_details` ENABLE KEYS */;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `price` int DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,200,'662563d4ca96c1713726420.jpg',NULL,'2024-04-21 14:07:00','2024-04-21 14:07:00'),(2,300,'66431bdfc608b1715674079.jpg','66431bdfcba031715674079.jpg','2024-05-14 03:08:00','2024-05-14 03:08:00');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

--
-- Table structure for table `site_notifications`
--

DROP TABLE IF EXISTS `site_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_notifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `site_notificational_id` int NOT NULL,
  `site_notificational_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_notifications`
--

/*!40000 ALTER TABLE `site_notifications` DISABLE KEYS */;
INSERT INTO `site_notifications` VALUES (7,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/2\",\"icon\":\"fas fa-user text-white\",\"text\":\"sohaibkhaliq has been joined\\r\\n\\r\\n\"}','2024-04-23 05:53:48','2024-04-23 05:53:48'),(8,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/2\",\"icon\":\"fas fa-user text-white\",\"text\":\"sohaibkhaliq has been joined\\r\\n\\r\\n\"}','2024-04-23 05:53:49','2024-04-23 05:53:49'),(11,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tickets\\/view\\/1\",\"icon\":\"fas fa-ticket-alt text-white\",\"text\":\"sohaibkhaliq create a ticket\\nTicket : 769820\\n\\n\"}','2024-04-23 05:55:47','2024-04-23 05:55:47'),(12,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tickets\\/view\\/1\",\"icon\":\"fas fa-ticket-alt text-white\",\"text\":\"sohaibkhaliq create a ticket\\nTicket : 769820\\n\\n\"}','2024-04-23 05:55:47','2024-04-23 05:55:47'),(15,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/3\",\"icon\":\"fas fa-user text-white\",\"text\":\"demouser has been joined\\r\\n\\r\\n\"}','2024-04-23 06:18:13','2024-04-23 06:18:13'),(16,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/3\",\"icon\":\"fas fa-user text-white\",\"text\":\"demouser has been joined\\r\\n\\r\\n\"}','2024-04-23 06:18:13','2024-04-23 06:18:13'),(19,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/2\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"demouser takes appointment for Hair Cutting date 2024-04-25.\\r\\n\"}','2024-04-23 06:19:31','2024-04-23 06:19:31'),(20,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/2\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"demouser takes appointment for Hair Cutting date 2024-04-25.\\r\\n\"}','2024-04-23 06:19:31','2024-04-23 06:19:31'),(21,2,'App\\Models\\User','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/user\\/ticket\\/view\\/769820\",\"icon\":\"fas fa-ticket-alt text-white\",\"text\":\"Admin replied \\u00a0\\r\\nTicket : 769820\"}','2024-04-23 06:45:09','2024-04-23 06:45:09'),(24,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tickets\\/view\\/2\",\"icon\":\"fas fa-ticket-alt text-white\",\"text\":\"sohaib create a ticket\\nTicket : 909842\\n\\n\"}','2024-04-24 23:13:37','2024-04-24 23:13:37'),(25,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tickets\\/view\\/2\",\"icon\":\"fas fa-ticket-alt text-white\",\"text\":\"sohaib create a ticket\\nTicket : 909842\\n\\n\"}','2024-04-24 23:13:37','2024-04-24 23:13:37'),(29,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/4\",\"icon\":\"fas fa-user text-white\",\"text\":\"alihamza has been joined\\r\\n\\r\\n\"}','2024-04-25 00:23:10','2024-04-25 00:23:10'),(30,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/4\",\"icon\":\"fas fa-user text-white\",\"text\":\"alihamza has been joined\\r\\n\\r\\n\"}','2024-04-25 00:23:10','2024-04-25 00:23:10'),(33,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/3\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"sohaib takes appointment for Hair Cutting date 2024-04-26.\\r\\n\"}','2024-04-25 11:41:14','2024-04-25 11:41:14'),(34,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/3\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"sohaib takes appointment for Hair Cutting date 2024-04-26.\\r\\n\"}','2024-04-25 11:41:14','2024-04-25 11:41:14'),(37,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/5\",\"icon\":\"fas fa-user text-white\",\"text\":\"testuser1232 has been joined\\r\\n\\r\\n\"}','2024-04-25 12:05:10','2024-04-25 12:05:10'),(38,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/5\",\"icon\":\"fas fa-user text-white\",\"text\":\"testuser1232 has been joined\\r\\n\\r\\n\"}','2024-04-25 12:05:10','2024-04-25 12:05:10'),(41,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/6\",\"icon\":\"fas fa-user text-white\",\"text\":\"testuser1232 has been joined\\r\\n\\r\\n\"}','2024-04-25 12:14:49','2024-04-25 12:14:49'),(42,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/6\",\"icon\":\"fas fa-user text-white\",\"text\":\"testuser1232 has been joined\\r\\n\\r\\n\"}','2024-04-25 12:14:49','2024-04-25 12:14:49'),(45,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/7\",\"icon\":\"fas fa-user text-white\",\"text\":\"testuser1232 has been joined\\r\\n\\r\\n\"}','2024-04-25 12:18:38','2024-04-25 12:18:38'),(46,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/7\",\"icon\":\"fas fa-user text-white\",\"text\":\"testuser1232 has been joined\\r\\n\\r\\n\"}','2024-04-25 12:18:38','2024-04-25 12:18:38'),(49,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/8\",\"icon\":\"fas fa-user text-white\",\"text\":\"testuser1232 has been joined\\r\\n\\r\\n\"}','2024-04-25 12:22:35','2024-04-25 12:22:35'),(50,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/8\",\"icon\":\"fas fa-user text-white\",\"text\":\"testuser1232 has been joined\\r\\n\\r\\n\"}','2024-04-25 12:22:35','2024-04-25 12:22:35'),(54,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/4\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"sohaib takes appointment for Hair Cutting date 2024-04-30.\\r\\n\"}','2024-04-25 13:19:56','2024-04-25 13:19:56'),(55,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/4\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"sohaib takes appointment for Hair Cutting date 2024-04-30.\\r\\n\"}','2024-04-25 13:19:56','2024-04-25 13:19:56'),(59,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/5\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"sohaib takes appointment for Hair Cutting date 2024-04-30.\\r\\n\"}','2024-04-25 14:26:13','2024-04-25 14:26:13'),(60,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/5\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"sohaib takes appointment for Hair Cutting date 2024-04-30.\\r\\n\"}','2024-04-25 14:26:13','2024-04-25 14:26:13'),(64,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/1\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"sohaib purchase product by 1300 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-08 12:01:51','2024-05-08 12:01:51'),(65,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/1\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"sohaib purchase product by 1300 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-08 12:01:51','2024-05-08 12:01:51'),(69,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/1\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"sohaib purchase product by 1300 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-11 06:27:56','2024-05-11 06:27:56'),(70,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/1\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"sohaib purchase product by 1300 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-11 06:27:56','2024-05-11 06:27:56'),(73,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/9\",\"icon\":\"fas fa-user text-white\",\"text\":\"shehroz has been joined\\r\\n\\r\\n\"}','2024-05-11 06:39:48','2024-05-11 06:39:48'),(74,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/9\",\"icon\":\"fas fa-user text-white\",\"text\":\"shehroz has been joined\\r\\n\\r\\n\"}','2024-05-11 06:39:48','2024-05-11 06:39:48'),(78,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/9\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz purchase product by 3250 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-11 06:44:49','2024-05-11 06:44:49'),(79,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/9\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz purchase product by 3250 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-11 06:44:49','2024-05-11 06:44:49'),(82,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/6\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz takes appointment for Hair Cutting date 2024-05-17.\\r\\n\"}','2024-05-11 06:47:49','2024-05-11 06:47:49'),(83,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/6\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz takes appointment for Hair Cutting date 2024-05-17.\\r\\n\"}','2024-05-11 06:47:49','2024-05-11 06:47:49'),(86,1,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/9\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz purchase product by 900 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-16 03:51:36','2024-05-16 03:51:36'),(87,2,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/9\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz purchase product by 900 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-16 03:51:36','2024-05-16 03:51:36'),(88,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/9\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz purchase product by 900 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-16 03:51:36','2024-05-16 03:51:36'),(89,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/9\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz purchase product by 900 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-16 03:51:36','2024-05-16 03:51:36'),(90,1,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/10\",\"icon\":\"fas fa-user text-white\",\"text\":\"dsdas has been joined\\r\\n\\r\\n\"}','2024-05-18 11:08:40','2024-05-18 11:08:40'),(91,2,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/10\",\"icon\":\"fas fa-user text-white\",\"text\":\"dsdas has been joined\\r\\n\\r\\n\"}','2024-05-18 11:08:40','2024-05-18 11:08:40'),(92,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/10\",\"icon\":\"fas fa-user text-white\",\"text\":\"dsdas has been joined\\r\\n\\r\\n\"}','2024-05-18 11:08:40','2024-05-18 11:08:40'),(93,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/10\",\"icon\":\"fas fa-user text-white\",\"text\":\"dsdas has been joined\\r\\n\\r\\n\"}','2024-05-18 11:08:40','2024-05-18 11:08:40'),(94,3,'App\\Models\\User','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/3\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"Your payment 100 PKR is complete.\\r\\n\\r\\nProduct Order Number 64527729\"}','2024-05-18 11:13:27','2024-05-18 11:13:27'),(95,1,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/3\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"demouser purchase product by 100 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-18 11:13:27','2024-05-18 11:13:27'),(96,2,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/3\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"demouser purchase product by 100 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-18 11:13:27','2024-05-18 11:13:27'),(97,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/3\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"demouser purchase product by 100 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-18 11:13:27','2024-05-18 11:13:27'),(98,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/fundLog\\/3\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"demouser purchase product by 100 PKR \\r\\n\\r\\nOrder id [[order_id]]\"}','2024-05-18 11:13:27','2024-05-18 11:13:27'),(99,1,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/7\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"demouser takes appointment for Hair Cutting date 2024-05-23.\\r\\n\"}','2024-05-18 11:14:52','2024-05-18 11:14:52'),(100,2,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/7\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"demouser takes appointment for Hair Cutting date 2024-05-23.\\r\\n\"}','2024-05-18 11:14:52','2024-05-18 11:14:52'),(101,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/7\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"demouser takes appointment for Hair Cutting date 2024-05-23.\\r\\n\"}','2024-05-18 11:14:52','2024-05-18 11:14:52'),(102,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/7\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"demouser takes appointment for Hair Cutting date 2024-05-23.\\r\\n\"}','2024-05-18 11:14:52','2024-05-18 11:14:52'),(103,1,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/8\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz takes appointment for Hair Cutting date 2024-05-29.\\r\\n\"}','2024-05-18 11:41:16','2024-05-18 11:41:16'),(104,2,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/8\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz takes appointment for Hair Cutting date 2024-05-29.\\r\\n\"}','2024-05-18 11:41:16','2024-05-18 11:41:16'),(105,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/8\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz takes appointment for Hair Cutting date 2024-05-29.\\r\\n\"}','2024-05-18 11:41:16','2024-05-18 11:41:16'),(106,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/edit-book-appointment\\/8\",\"icon\":\"fa fa-money-bill-alt text-white\",\"text\":\"shehroz takes appointment for Hair Cutting date 2024-05-29.\\r\\n\"}','2024-05-18 11:41:16','2024-05-18 11:41:16'),(107,1,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/11\",\"icon\":\"fas fa-user text-white\",\"text\":\"aashehroz has been joined\\r\\n\\r\\n\"}','2024-05-18 12:39:55','2024-05-18 12:39:55'),(108,2,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/11\",\"icon\":\"fas fa-user text-white\",\"text\":\"aashehroz has been joined\\r\\n\\r\\n\"}','2024-05-18 12:39:55','2024-05-18 12:39:55'),(109,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/11\",\"icon\":\"fas fa-user text-white\",\"text\":\"aashehroz has been joined\\r\\n\\r\\n\"}','2024-05-18 12:39:55','2024-05-18 12:39:55'),(110,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/11\",\"icon\":\"fas fa-user text-white\",\"text\":\"aashehroz has been joined\\r\\n\\r\\n\"}','2024-05-18 12:39:55','2024-05-18 12:39:55'),(111,1,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/12\",\"icon\":\"fas fa-user text-white\",\"text\":\"shehrozssss has been joined\\r\\n\\r\\n\"}','2024-05-18 12:45:52','2024-05-18 12:45:52'),(112,2,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/12\",\"icon\":\"fas fa-user text-white\",\"text\":\"shehrozssss has been joined\\r\\n\\r\\n\"}','2024-05-18 12:45:52','2024-05-18 12:45:52'),(113,3,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/12\",\"icon\":\"fas fa-user text-white\",\"text\":\"shehrozssss has been joined\\r\\n\\r\\n\"}','2024-05-18 12:45:52','2024-05-18 12:45:52'),(114,5,'App\\Models\\Admin','{\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/user\\/edit\\/12\",\"icon\":\"fas fa-user text-white\",\"text\":\"shehrozssss has been joined\\r\\n\\r\\n\"}','2024-05-18 12:45:52','2024-05-18 12:45:52');
/*!40000 ALTER TABLE `site_notifications` ENABLE KEYS */;

--
-- Table structure for table `sms_controls`
--

DROP TABLE IF EXISTS `sms_controls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_controls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `actionMethod` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actionUrl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headerData` text COLLATE utf8mb4_unicode_ci,
  `paramData` text COLLATE utf8mb4_unicode_ci,
  `formData` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_controls`
--

/*!40000 ALTER TABLE `sms_controls` DISABLE KEYS */;
INSERT INTO `sms_controls` VALUES (1,'POST','https://rest.nexmo.com/sms/json','{\"Content-Type\":\"application\\/x-www-form-urlencoded\"}',NULL,'{\"from\":\"sohaib\",\"text\":\"[[message]]\",\"to\":\"[[receiver]]\",\"api_key\":\"930cc608\",\"api_secret\":\"2pijsaMOUw5YKOK5\"}','2021-12-17 10:02:43','2021-12-17 10:02:43');
/*!40000 ALTER TABLE `sms_controls` ENABLE KEYS */;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;

--
-- Table structure for table `team_details`
--

DROP TABLE IF EXISTS `team_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `team_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `biography` longtext COLLATE utf8mb4_unicode_ci,
  `my_working_process` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `userrole` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_details`
--

/*!40000 ALTER TABLE `team_details` DISABLE KEYS */;
INSERT INTO `team_details` VALUES (1,1,1,'Demo Staff','sohaibkhaliq510@gmail.com','Barber','I am professional who specializes in cutting, styling, and grooming hair, particularly men\'s hair. Barbers typically work in barbershops, where they provide services such as haircuts, beard trims, shaves, and hairstyling. They often have expertise in using various tools like clippers, scissors, and razors to achieve the desired look for their clients. Additionally, barbers may also offer hair and scalp treatments, provide hair care advice, and sell grooming products.','<p><span><b>John Smith</b> is a skilled <b>barber</b> with over a decade of experience in the industry. Starting his career in a local barbershop, he quickly gained a reputation for his precise haircuts and attention to detail. <b>John</b> is known for his friendly demeanor and ability to create customized styles that suit each client\'s personality and preferences. He is passionate about staying updated with the latest trends and techniques in men\'s grooming, ensuring that his clients always leave the chair looking and feeling their best.</span><br /></p>','<ol><li><p><span><b>Consultation</b>:</span> The barber starts by consulting with the client to understand their desired hairstyle or haircut. They may also assess the client\'s hair type, texture, and condition during this phase.</p></li><li><p><span><b>Preparation</b>:</span> Before cutting, the barber prepares the client\'s hair by washing and conditioning it if necessary. This step helps make the hair more manageable and ensures a clean canvas for the haircut.</p></li><li><p><span><b>Cutting</b>:</span> Using a combination of scissors and clippers, the barber begins cutting the hair according to the agreed-upon style. They may use different techniques such as layering, texturizing, and blending to achieve the desired look.</p></li><li><p><span><b>Detailing</b>:</span> Once the main haircut is done, the barber focuses on detailing. This includes refining the edges, shaping the hairline, and trimming any stray hairs to create a polished finish.</p></li><li><p><span><b>Styling</b>:</span> After the haircut is complete, the barber may style the hair using products like pomade, gel, or wax. They can also provide styling tips and advice to help the client maintain their hairstyle at home.</p></li><li><p><span><b>Final Touches</b>:</span> Before the client leaves, the barber performs final touches such as cleaning up any hair clippings around the neckline and offering a mirror for the client to inspect their haircut from different angles.</p></li></ol>','2024-04-21 10:21:09','2024-04-21 10:21:09',NULL,'12345678'),(2,2,1,'Mason Kunde','your.email+fakedata72560@gmail.com','Qui enim commodi ipsam.','Labore eius earum suscipit cum in maxime quia fugit.','<p>Labore eius earum suscipit cum in maxime quia fugit.<br /></p>','<p>Labore eius earum suscipit cum in maxime quia fugit.<br /></p>','2024-04-21 11:36:22','2024-04-21 11:36:22',NULL,NULL),(3,3,1,'Luciano Grady','your.email+fakedata79369@gmail.com','Minima ea quas vitae velit aperiam.','Consequatur cum non eveniet cumque rerum dolor iusto pariatur.','<p>Consequatur cum non eveniet cumque rerum dolor iusto pariatur.<br /></p>','<p>Consequatur cum non eveniet cumque rerum dolor iusto pariatur.<br /></p>','2024-04-21 13:15:14','2024-04-21 13:15:14',NULL,NULL),(4,4,1,'test','demostaff@gmail.com','Barber','Mollitia laboriosam corrupti ullam ab suscipit tempora qui.aa','<p>Mollitia laboriosam corrupti ullam ab suscipit tempora qui.<br /></p>','<p>Mollitia laboriosam corrupti ullam ab suscipit tempora qui.<br /></p>','2024-04-22 05:08:04','2024-04-23 02:29:34',NULL,NULL);
/*!40000 ALTER TABLE `team_details` ENABLE KEYS */;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_skills` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'2 years','Expert','+923215463543','https://facebook.com','https://x.com','https://linkedin.com','https://skype.com','{\"Cutting\":{\"field_name\":\"Cutting\",\"field_value\":\"100\"}}','66252ee59fc681713712869.jpg','2024-04-21 10:21:09','2024-04-21 10:21:09',NULL,1),(2,'Reprehenderit debitis nulla iste excepturi neque.','Tempora natus tempore earum assumenda eveniet libero inventore nostrum rem.','712-633-9629',NULL,NULL,NULL,NULL,'{\"test\":{\"field_name\":\"test\",\"field_value\":\"12\"}}','66254085ebecd1713717381.jpg','2024-04-21 11:36:22','2024-04-21 11:36:22',NULL,1),(3,'Veritatis dolorum harum eaque in laborum consequatur voluptates quod.','Veniam fugiat sequi facere eaque.','360-631-9156',NULL,NULL,NULL,NULL,'{\"cutting\":{\"field_name\":\"cutting\",\"field_value\":\"12\"}}','662557b2c23691713723314.png','2024-04-21 13:15:14','2024-04-21 13:18:44',NULL,1),(4,'5 years','Expert','1223123',NULL,NULL,NULL,NULL,'{\"barber\":{\"field_name\":\"barber\",\"field_value\":\"12\"}}','662637030640c1713780483.jpg','2024-04-22 05:08:04','2024-04-22 11:40:01','demostaff@gmail.com',1);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;

--
-- Table structure for table `template_media`
--

DROP TABLE IF EXISTS `template_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `template_media_section_name_index` (`section_name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_media`
--

/*!40000 ALTER TABLE `template_media` DISABLE KEYS */;
INSERT INTO `template_media` VALUES (1,'hero','{\"image\":\"6059cf96cc1ca1616498582.jpg\",\"button_link\":\"http:\\/\\/localhost\\/smm\\/admin\\/content-show\\/4\"}','2021-12-17 10:02:53','2021-12-17 10:02:53'),(2,'about-us','{\"image\":\"63abdbbd0928c1672207293.jpg\",\"youtube_link\":\"https:\\/\\/www.youtube.com\\/embed\\/LXb3EKWsInQ?controls=0\",\"button_link_one\":\"http:\\/\\/localhost\\/classic_barber\\/\",\"button_link_two\":\"http:\\/\\/localhost\\/classic_barber\\/\"}','2021-12-17 10:02:53','2022-12-28 00:01:33'),(3,'call-to-action','{\"image\":\"60193254de30d1612264020.png\",\"button_link\":\"http:\\/\\/localhost\\/smm\\/admin\\/content-show\\/4\"}','2021-12-17 10:02:53','2021-12-17 10:02:53'),(4,'how-it-work','{\"image\":\"6059d2c2654921616499394.jpg\",\"youtube_link\":\"https:\\/\\/www.youtube.com\\/embed\\/LXb3EKWsInQ?controls=0\"}','2021-12-17 10:02:53','2021-12-17 10:02:53'),(5,'request-a-call','{\"button_link\":\"http:\\/\\/localhost\\/hyip_pro\\/contact\"}','2022-05-17 01:03:05','2022-05-17 01:03:05'),(6,'open-shop','{\"image\":\"63a98274d20a41672053364.png\"}','2022-12-26 05:16:04','2022-12-26 05:16:04'),(7,'experience','{\"image\":\"63e79a73894d01676122739.png\"}','2022-12-26 23:58:08','2023-02-11 07:38:59'),(8,'speciality','{\"image\":\"63aa90654d8cb1672122469.png\"}','2022-12-27 00:27:49','2022-12-27 00:27:49'),(9,'process-behind','{\"image\":\"63aaa1a29a4231672126882.jpg\",\"video_link\":\"https:\\/\\/youtu.be\\/Jm_xSq7DZac\",\"background_image\":\"63e79d9c2021f1676123548.jpg\"}','2022-12-27 01:41:22','2023-02-11 07:52:28'),(10,'book-appointment','{\"image\":\"63d0c8399eebc1674627129.jpg\",\"map_link\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d158857.7281080726!2d-0.24168024584704462!3d51.528771840474214!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C%20UK!5e0!3m2!1sen!2sbd!4v1672148839384!5m2!1sen!2sbd\",\"background_image\":\"63d0cca607ae91674628262.jpg\"}','2022-12-27 07:17:50','2023-01-25 00:31:02'),(11,'about-area','{\"image\":\"63ab05f7bc9f21672152567.png\",\"button_link_one\":\"http:\\/\\/127.0.0.1:8000\",\"button_link_two\":\"http:\\/\\/127.0.0.1:8000\"}','2022-12-27 08:49:27','2024-04-21 10:22:50'),(12,'why-chose-us','{\"image\":\"63abd38579be51672205189.png\"}','2022-12-27 23:26:29','2022-12-27 23:26:29'),(13,'contact-us','{\"embed_map_link\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d193596.00927712952!2d-74.14448721717689!3d40.69737092133079!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1684824656005!5m2!1sen!2sbd\"}','2022-12-28 00:42:05','2023-05-23 01:54:19'),(14,'login','{\"logo_image\":\"63cd343e9b5df1674392638.png\",\"image\":\"63cd2d4799ea51674390855.jpg\"}','2023-01-22 06:34:15','2023-01-22 07:03:58'),(15,'need-help','{\"image\":\"63cfbb102f07a1674558224.png\"}','2023-01-24 05:03:44','2023-01-24 05:03:44'),(16,'services','{\"background_image\":\"63e79c0af1e2a1676123146.jpg\"}','2023-02-11 07:45:47','2023-02-11 07:45:47'),(17,'facts','{\"image\":\"646c772687b611684829990.jpg\"}','2023-05-23 03:19:50','2023-05-23 03:19:50');
/*!40000 ALTER TABLE `template_media` ENABLE KEYS */;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int unsigned DEFAULT NULL,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,1,'hero','{\"title\":\"BEST INVESTMENTS\",\"sub_title\":\"PLAN FOR WORLDWIDE\",\"short_description\":\"A Profitable platform for high-margin investment\",\"button_name\":\"Learn More\"}','2021-12-17 10:02:59','2022-05-12 04:51:22'),(3,1,'about-us','{\"title\":\"WE EXCEL AT PREMUM HAIR CARE AND STYLING\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua utat enim ad minim veniam.\"}','2021-12-17 10:02:59','2022-12-28 00:01:33'),(5,1,'service','{\"title\":\"Services\",\"sub_title\":\"WHAT WE DO\",\"short_title\":\"How We\'re Helping\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(7,1,'call-to-action','{\"title\":\"We Will Drive More Customers To Your Business Than Any Other Online Source.\",\"sub_title\":\"Multiply your Business\\u2019 Facebook Traffic 10x\",\"button_name\":\"Learn More\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(9,1,'contact-us','{\"heading\":\"Call Now or Write A Message\",\"address\":\"66 broklyn golden street line New York, USA\",\"email_one\":\"admin@example.com\",\"email_two\":\"support@expamle.com\",\"phone_one\":\"+8 (123) 985 789\",\"phone_two\":\"+787 878897 87\",\"short_details\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br \\/><\\/p>\"}','2021-12-17 10:02:59','2023-05-23 01:33:16'),(11,1,'testimonial','{\"title\":\"TESTIMONIALS\",\"short_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\"}','2021-12-17 10:02:59','2022-12-27 03:24:41'),(13,1,'login','{\"title\":\"Welcome Back. Log In\"}','2021-12-17 10:02:59','2023-01-22 07:03:19'),(15,1,'register','{\"title\":\"Proclamations About Us\",\"description\":\"<ul>\\r\\n                                    <li>\\r\\n                                        <p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Adipisicing elit. Beatae, repellendus!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Consectetur adipisicing elit. A, eos!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Aliquid numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Voluptas est nesciunt qui necessitatibus<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Lorem numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li><\\/ul>\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(17,1,'forget-password','{\"title\":\"Proclamations About Us\",\"description\":\"<ul>\\r\\n                                    <li>\\r\\n                                        <p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Adipisicing elit. Beatae, repellendus!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Consectetur adipisicing elit. A, eos!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Aliquid numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Voluptas est nesciunt qui necessitatibus<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Lorem numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li><\\/ul>\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(19,1,'reset-password','{\"title\":\"Proclamations About Us\",\"description\":\"<ul>\\r\\n                                    <li>\\r\\n                                        <p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Adipisicing elit. Beatae, repellendus!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Consectetur adipisicing elit. A, eos!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Aliquid numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Voluptas est nesciunt qui necessitatibus<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Lorem numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li><\\/ul>\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(21,1,'how-it-work','{\"title\":\"How It Work?\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(23,1,'blog','{\"title\":\"Blog\",\"sub_title\":\"READ OUR BLOG\",\"short_title\":\"Help agencies to define their new business objectives and then create professional software.\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(25,1,'faq','{\"title\":\"Frequently Asked Questions\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\"}','2021-12-17 10:02:59','2022-12-28 03:36:54'),(39,1,'investment','{\"title\":\"INVEST OFFER\",\"sub_title\":\"Investment Plans\",\"short_details\":\"Help agencies to define their new business objectives and then create professional software.\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(40,1,'why-chose-us','{\"title\":\"MOST TALENTED HAIR DRESSERS &amp; STYLERS\",\"short_details\":\"<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form injected humour, or randomised words.<\\/p><p><br \\/><\\/p><p>Curaemil Etiam porttitor, lacus in luctus molestie, lacus in luctus molestie, libero justo ullamcorper nulla, sed lacinia erat metus Morbi vestibioas beauty products.<br \\/><\\/p>\",\"about_us_text_one\":\"Styling with experience\",\"about_us_text_two\":\"A professional salon\",\"about_us_text_three\":\"We understand styles\",\"about_us_text_four\":\"You will need best style\",\"ceo_name\":\"Jessica Rose\"}','2021-12-17 10:02:59','2022-12-27 23:38:24'),(42,1,'investor','{\"title\":\"INVESTOR\",\"sub_title\":\"World Wide Top Investor\",\"short_title\":\"Help agencies to define their new business objectives and then create professional software.\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(43,1,'news-letter','{\"title\":\"Subscribe to Newslatter\",\"sub_title\":\"TO GET EXCLUSIVE BENEFITS\"}','2021-12-17 10:02:59','2022-05-12 05:50:19'),(45,1,'we-accept','{\"title\":\"PAYMENTS\",\"sub_title\":\"Payments Gateway\",\"short_details\":\"Help agencies to define their new business objectives and then create professional software.\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(74,19,'hero','{\"title\":\"\\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u0627\\u062a\",\"sub_title\":\"\\u062e\\u0637\\u0629 \\u0644\\u062c\\u0645\\u064a\\u0639 \\u0623\\u0646\\u062d\\u0627\\u0621 \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645\",\"short_description\":\"\\u0636\\u0639 \\u0623\\u0641\\u0643\\u0627\\u0631\\u0643 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u064a\\u0629 \\u0645\\u0648\\u0636\\u0639 \\u0627\\u0644\\u062a\\u0646\\u0641\\u064a\\u0630 \\u0645\\u0639 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 \\u0643\\u0627\\u0645\\u0644\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u0627\\u062a. \\u062a\\u0645\\u062a\\u0639 \\u0628\\u0627\\u0644\\u0645\\u0632\\u0627\\u064a\\u0627 \\u0648\\u0627\\u0644\\u0645\\u0643\\u0627\\u0641\\u0622\\u062a \\u0627\\u0644\\u062d\\u0642\\u064a\\u0642\\u064a\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u0627\\u062a\\u0643 \\u0627\\u0644\\u0645\\u062a\\u0631\\u0627\\u0643\\u0645\\u0629.\",\"button_name\":\"\\u064a\\u062a\\u0639\\u0644\\u0645 \\u0623\\u0643\\u062b\\u0631\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(75,19,'about-us','{\"title\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"sub_title\":\"\\u0645\\u0631\\u062d\\u0628\\u0627 \\u0628\\u0643\\u0645 \\u0641\\u064a \\u0628\\u0644\\u0627\\u0646\\u0634\\u064a\\u0628\",\"short_title\":\"Planshyip \\u0647\\u064a \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u064a\\u0629 \\u060c \\u064a\\u0639\\u0645\\u0644 \\u0634\\u0627\\u064a\\u0647\\u0627 \\u0639\\u0644\\u0649 \\u062c\\u0646\\u064a \\u0627\\u0644\\u0623\\u0645\\u0648\\u0627\\u0644 \\u0645\\u0646 \\u062a\\u0642\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u0634\\u0641\\u0631\\u0629 \\u0648\\u064a\\u0642\\u062f\\u0645 \\u0639\\u0648\\u0627\\u0626\\u062f \\u0643\\u0628\\u064a\\u0631\\u0629 \\u0644\\u0639\\u0645\\u0644\\u0627\\u0626\\u0646\\u0627.\",\"short_description\":\"<p>\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u0627\\u062a \\u0622\\u0645\\u0646\\u0629<\\/p><p>\\u0623\\u0635\\u0628\\u062d \\u0627\\u0644\\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u0639\\u0628\\u0631\\u064a \\u0644\\u0646\\u0635 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0648\\u0627\\u0633\\u0639 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0634\\u0627\\u0631 \\u0627\\u0644\\u0622\\u0646 \\u0644\\u062f\\u0631\\u062c\\u0629 \\u0623\\u0646 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629<\\/p><p><br \\/><\\/p><p>\\u0645\\u0636\\u0645\\u0648\\u0646<\\/p><p>\\u0623\\u0635\\u0628\\u062d \\u0627\\u0644\\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u062c\\u0645\\u0627\\u0644\\u064a \\u0644\\u0646\\u0635 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0648\\u0627\\u0633\\u0639 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0634\\u0627\\u0631 \\u0627\\u0644\\u0622\\u0646 \\u0644\\u062f\\u0631\\u062c\\u0629 \\u0623\\u0646 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629<\\/p><p><br \\/><\\/p><p>\\u0622\\u0645\\u0646 \\u0648\\u0645\\u0648\\u062b\\u0648\\u0642<\\/p><p>\\u0623\\u0635\\u0628\\u062d \\u0627\\u0644\\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u0639\\u0628\\u0631\\u064a \\u0644\\u0646\\u0635 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0648\\u0627\\u0633\\u0639 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0634\\u0627\\u0631 \\u0627\\u0644\\u0622\\u0646 \\u0644\\u062f\\u0631\\u062c\\u0629 \\u0623\\u0646 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629<\\/p>\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(76,19,'investment','{\"title\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\",\"sub_title\":\"\\u062e\\u0637\\u0637 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\",\"short_details\":\"<p>\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0648\\u0643\\u0627\\u0644\\u0627\\u062a \\u0639\\u0644\\u0649 \\u062a\\u062d\\u062f\\u064a\\u062f \\u0623\\u0647\\u062f\\u0627\\u0641 \\u0623\\u0639\\u0645\\u0627\\u0644\\u0647\\u0627 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629 \\u062b\\u0645 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u062d\\u062a\\u0631\\u0627\\u0641\\u064a\\u0629.<br \\/><\\/p>\"}','2021-12-17 10:02:59','2021-12-17 10:02:59'),(78,1,'know-more-us','{\"title\":\"INVESTON HISTORY\",\"sub_title\":\"KNOW MORE US\",\"short_details\":\"Help agencies to define their new business objectives and then create professional software.\"}','2022-05-11 03:10:19','2022-05-11 03:10:19'),(79,1,'calculate-profit','{\"title\":\"PLANS CALCULATOR\",\"sub_title\":\"CALCULATE THE AMAZING PROFITS\",\"short_details\":\"worldwide investment company who are committed provides a straight forward and transparent mechanism\",\"profit_title\":\"YOUR PROFIT\",\"profit_sub_title\":\"Calculate how much your invest profit\"}','2022-05-16 00:48:16','2022-05-16 00:48:16'),(81,1,'open-shop','{\"title\":\"Opening Hour\",\"address\":\"Gujrat Institute of Management Sciences, GT Road, Gujrat\"}','2022-12-26 05:16:04','2024-04-21 10:23:25'),(82,1,'experience','{\"title\":\"We Understand Your Proper Demand\",\"sub_title\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form injected humour, or randomised words.\"}','2022-12-26 23:58:08','2022-12-26 23:58:08'),(83,1,'speciality','{\"title\":\"OUR SPECALITY\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\"}','2022-12-27 00:21:39','2022-12-27 00:21:39'),(84,1,'process-behind','{\"title\":\"The Process Behind The Beauty You See\",\"short_details\":\"<p style=\\\"font-size:15px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco.<\\/p><p style=\\\"font-size:15px;\\\"><br \\/><\\/p><p style=\\\"font-size:15px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco.<\\/p>\"}','2022-12-27 01:41:22','2022-12-27 01:44:18'),(85,1,'team','{\"title\":\"OUR TEAM\",\"short_details\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\"}','2022-12-27 06:51:37','2022-12-27 06:51:37'),(86,1,'news-feed','{\"title\":\"NEWS FEEDS\",\"short_details\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\"}','2022-12-27 06:52:58','2022-12-27 06:52:58'),(87,1,'book-appointment','{\"title\":\"Do You Need To Make An Enquiry ?\",\"short_details\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\"}','2022-12-27 07:17:22','2023-01-25 00:28:11'),(88,1,'about-area','{\"title\":\"The Right Place for Your Hair &amp; Beard\",\"short_title\":\"We are offering all hair salon services in your area with the best quality you can ever imagine from a salon.\",\"details\":\"<ul><li>Nsectetur cing elit.<\\/li><li>Suspe ndisse suscipit sagittis leo.<\\/li><li>Entum estibulum dignissim posuere.<\\/li><li>If you are going to use a passage.<\\/li><li>Lorem Ipsum gene on the tend to repeat.<\\/li><li>Eiusmod tempor incididunt ut labore.<\\/li><\\/ul>\",\"button_name_one\":\"Hair Coloring\",\"button_name_two\":\"Hair Styling\"}','2022-12-27 08:49:27','2023-05-25 03:31:25'),(89,1,'facts','{\"title\":\"SOME MAIN FACTS OF OUR BARBER SHOP\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipising elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua uaht enim ad minim veniam sed do eiusmod tempor.\"}','2022-12-28 07:01:41','2022-12-28 07:01:41'),(90,1,'gallery','{\"title\":\"PHOTO GALLERY\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\"}','2023-01-21 00:36:52','2023-01-21 00:36:52'),(91,1,'need-help','{\"title\":\"NEED HELP?\",\"sub_title\":\"Speak with a human to filling out a form? call corporate office and we will connect you with a team member who can help.\",\"phone\":\"+(444) 555-6666\"}','2023-01-24 05:03:44','2023-01-24 05:03:44'),(92,1,'services','{\"title\":\"OUR SERVICES\",\"short_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\"}','2023-01-24 05:30:03','2023-01-24 05:30:03'),(93,1,'plan','{\"title\":\"Pricing Plan\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\"}','2023-01-25 07:50:39','2023-01-25 07:50:39'),(108,1,'topbar','{\"title\":\"Pampering you from top to toe with everything your hair, needs!\"}','2023-05-20 06:37:26','2023-05-20 06:37:26'),(110,1,'business-policy','{\"delivery_policy\":\"30 Days Return Policy\",\"return_policy\":\"Cash on Delivery Available\"}','2023-05-21 04:02:17','2023-05-21 04:02:17');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;

--
-- Table structure for table `ticket_attachments`
--

DROP TABLE IF EXISTS `ticket_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_attachments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ticket_message_id` int unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_attachments_ticket_message_id_foreign` (`ticket_message_id`),
  CONSTRAINT `ticket_attachments_ticket_message_id_foreign` FOREIGN KEY (`ticket_message_id`) REFERENCES `ticket_messages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_attachments`
--

/*!40000 ALTER TABLE `ticket_attachments` DISABLE KEYS */;
INSERT INTO `ticket_attachments` VALUES (1,1,'662793b3109271713869747.png','2024-04-23 05:55:47','2024-04-23 05:55:47');
/*!40000 ALTER TABLE `ticket_attachments` ENABLE KEYS */;

--
-- Table structure for table `ticket_messages`
--

DROP TABLE IF EXISTS `ticket_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int unsigned DEFAULT NULL,
  `admin_id` int unsigned DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_messages_ticket_id_foreign` (`ticket_id`),
  KEY `ticket_messages_admin_id_foreign` (`admin_id`),
  CONSTRAINT `ticket_messages_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  CONSTRAINT `ticket_messages_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_messages`
--

/*!40000 ALTER TABLE `ticket_messages` DISABLE KEYS */;
INSERT INTO `ticket_messages` VALUES (1,1,NULL,'Hy i bought a plan accidently','2024-04-23 05:55:47','2024-04-23 05:55:47'),(2,1,1,'why','2024-04-23 06:45:09','2024-04-23 06:45:09'),(3,2,NULL,'I got the service and paid twice, can you revert it?','2024-04-24 23:13:37','2024-04-24 23:13:37'),(4,2,1,'ok','2024-04-24 23:14:16','2024-04-24 23:14:16'),(5,2,1,'actually, we cannot return payment','2024-05-11 11:42:43','2024-05-11 11:42:43');
/*!40000 ALTER TABLE `ticket_messages` ENABLE KEYS */;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed	',
  `last_reply` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_user_id_foreign` (`user_id`),
  CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,2,'sohaibkhaliq','sohaibkhaliq510@gmail.com','769820','I want a refund',1,'2024-04-23 06:45:09','2024-04-23 05:55:47','2024-04-23 06:45:09'),(2,1,'sohaib','abs@gmail.com','909842','I want a refund',1,'2024-05-11 11:42:43','2024-04-24 23:13:37','2024-05-11 11:42:43');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `amount` double(11,2) DEFAULT NULL,
  `charge` decimal(11,2) NOT NULL DEFAULT '0.00',
  `final_balance` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trx_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,650.00,0.50,'0.00','+','7TZQKEZ9GVN2','purchase product','2024-04-21 11:11:59','2024-04-21 11:11:59'),(2,1,1300.00,0.50,'0.00','+','APJ6PT3QFOPY','purchase product','2024-05-08 12:01:51','2024-05-08 12:01:51'),(3,1,1300.00,0.50,'0.00','+','YCZEGCNYAY1W','purchase product','2024-05-11 06:27:56','2024-05-11 06:27:56'),(4,9,3250.00,0.50,'0.00','+','OEQTCUEV8UJE','purchase product','2024-05-11 06:44:49','2024-05-11 06:44:49'),(5,9,900.00,0.50,'0.00','+','MBYWOVJSF8CG','purchase product','2024-05-16 03:51:36','2024-05-16 03:51:36'),(6,3,100.00,0.50,'0.00','+','E3UGGBHHR646','purchase product','2024-05-18 11:13:27','2024-05-18 11:13:27');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(11,2) NOT NULL DEFAULT '0.00',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `identity_verify` tinyint NOT NULL COMMENT '	0 => Not Applied, 1=> Applied, 2=> Approved, 3 => Rejected	',
  `address_verify` tinyint NOT NULL COMMENT '0 => Not Applied, 1=> Applied, 2=> Approved, 3 => Rejected	',
  `two_fa` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: two-FA off, 1: two-FA on',
  `two_fa_verify` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: two-FA unverified, 1: two-FA verified',
  `two_fa_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT '1',
  `sms_verification` tinyint(1) NOT NULL DEFAULT '1',
  `verify_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sohaib','Khaliq','sohaib',NULL,1,'abs@gmail.com',NULL,'+92','+9232221869455',0.00,'663bb0cd8796c1715187917.jpg','GIMS, Gujrat',NULL,NULL,1,0,0,0,1,NULL,1,1,'884998','2024-04-21 16:08:03','2024-05-14 06:57:31','$2y$10$DX3fBHIk/S7HVFwNIEYBEOqtF5bENJXjZXF4BP1dceWxypdqwwdhC',NULL,NULL,'2024-04-21 11:00:24','2024-05-14 01:57:31'),(2,'Sohaib','Khaliq','sohaibkhaliq',NULL,NULL,'abcd@gmail.com',NULL,'+92','+923221869455',0.00,NULL,NULL,NULL,NULL,1,0,0,0,1,NULL,1,1,NULL,NULL,'2024-04-23 10:53:49','$2y$10$KZfe8SwXHWaNfjLaBP7yqebSgtyKB4vGje4m62HOuIwEPdlToV8fa',NULL,NULL,'2024-04-23 05:53:48','2024-04-23 05:54:28'),(3,'Demo','User','demouser',NULL,NULL,'veronica27400@9vcdg.cashbenties.com',NULL,'+92','+923211232123',0.00,NULL,NULL,NULL,NULL,1,0,0,0,1,NULL,1,1,NULL,NULL,'2024-05-18 16:10:43','$2y$10$JnE3l.5Oia6AgLjJHHu0H.szIDclF16T0AdFwaeDF23ZkeW2T7HJG',NULL,NULL,'2024-04-23 06:18:13','2024-05-18 11:10:43'),(4,'ali','hamza','alihamza',NULL,NULL,'hamza@gmail.com',NULL,'+92','+923221765432',0.00,NULL,NULL,NULL,NULL,1,0,0,0,1,NULL,1,1,NULL,NULL,'2024-04-25 05:23:10','$2y$10$A68/mkfiHfyDCYbDF0CYaO2FF.IbMCwJIz5m8zMK.oH3EhciMlsnG',NULL,NULL,'2024-04-25 00:23:09','2024-04-25 00:23:10'),(9,'Shehroz','Imran','shehroz',NULL,1,'ads@gmail.com',NULL,'+92','+923211223123',0.00,'6645c7980f8371715849112.jpg','abcdef',NULL,NULL,1,0,0,0,1,NULL,1,1,NULL,NULL,'2024-05-18 16:40:31','$2y$10$SOLr8su1yULF26crKsDxQ.tD63LK7nrUsfoa/J0HbBrCmMt17/.3m',NULL,NULL,'2024-05-11 06:39:48','2024-05-18 11:40:31'),(10,'sdasds','sadsdas','dsdas',NULL,NULL,'abcdef@gmail.com',NULL,'+92','+923221765433',0.00,NULL,'dsjdsdsda',NULL,NULL,1,0,0,0,1,NULL,1,1,NULL,NULL,'2024-05-18 16:08:40','$2y$10$K6gdKzdpQw2BCDCnS1mnCOWiSXjIFd7b3mFDb.VNvKZ7slfIpiQXO',NULL,NULL,'2024-05-18 11:08:40','2024-05-18 11:08:40'),(11,'sdasd','asdasda','aashehroz',NULL,NULL,'shse@gmail.com',NULL,'+92','+9223123',0.00,NULL,'sdsds',NULL,NULL,1,0,0,0,1,NULL,1,1,NULL,NULL,'2024-05-18 17:39:55','$2y$10$/0OApyHz94RMCW8omSLYReBuifo2DNdrlZyYxfFXkGxHOW5ltWQH2',NULL,NULL,'2024-05-18 12:39:55','2024-05-18 12:39:55'),(12,'asdas','sdas','shehrozssss',NULL,NULL,'sdasdas@fmail.com',NULL,'+92','+923001234567',0.00,NULL,'adsad',NULL,NULL,1,0,0,0,1,NULL,1,1,NULL,NULL,'2024-05-18 17:45:52','$2y$10$oeO7A2aRuMoaxyaXtEVWI.b1LhD6OMnsFaW/La84GLc6DTfy9njRm',NULL,NULL,'2024-05-18 12:45:52','2024-05-18 12:45:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (1,1,1,'2024-04-21 11:09:55','2024-04-21 11:09:55');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;

--
-- Dumping routines for database 'khushnood'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-18 22:52:02
