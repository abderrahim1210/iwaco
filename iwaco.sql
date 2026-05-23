/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: iwaco
-- ------------------------------------------------------
-- Server version	11.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,'Smartphones','Découvrez les derniers smartphones des plus grandes marques mondiales.',NULL,NULL,'smartphones'),
(2,'Accessoires','Large gamme d\'accessoires : chargeurs, écouteurs, et protections.',NULL,NULL,'accessoires'),
(3,'Informatique','Laptops, desktops et composants informatiques de haute performance.',NULL,NULL,'informatique'),
(4,'Tablettes','Tablettes polyvalentes pour le travail et le divertissement.',NULL,NULL,'tablettes'),
(5,'Objets Connectés','Montres intelligentes et gadgets high-tech pour votre quotidien.',NULL,NULL,'smart-devices');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` VALUES
(1,'02f85501-7725-48bf-b268-de3e837890d2','database','default','{\"uuid\":\"02f85501-7725-48bf-b268-de3e837890d2\",\"displayName\":\"App\\\\Listeners\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":26:{s:5:\\\"class\\\";s:22:\\\"App\\\\Listeners\\\\SendMail\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:26:\\\"App\\\\Events\\\\UserSendMessage\\\":1:{s:4:\\\"user\\\";O:8:\\\"stdClass\\\":5:{s:4:\\\"name\\\";s:11:\\\"Abdeerrahim\\\";s:5:\\\"email\\\";s:28:\\\"abderrahimkhaliali@gmail.com\\\";s:3:\\\"tel\\\";s:10:\\\"0565434567\\\";s:7:\\\"subject\\\";s:7:\\\"support\\\";s:4:\\\"text\\\";s:12:\\\"Support this\\\";}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:14:\\\"shouldBeUnique\\\";b:0;s:29:\\\"shouldBeUniqueUntilProcessing\\\";b:0;s:8:\\\"uniqueId\\\";N;s:9:\\\"uniqueFor\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\",\"batchId\":null},\"createdAt\":1775553228,\"delay\":null}','InvalidArgumentException: Mailer [stmp] is not defined. in C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php:116\nStack trace:\n#0 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(100): Illuminate\\Mail\\MailManager->resolve(\'stmp\')\n#1 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(78): Illuminate\\Mail\\MailManager->get(\'stmp\')\n#2 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(623): Illuminate\\Mail\\MailManager->mailer()\n#3 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(363): Illuminate\\Mail\\MailManager->__call(\'to\', Array)\n#4 C:\\IWACO\\backend\\app\\Listeners\\SendMail.php(26): Illuminate\\Support\\Facades\\Facade::__callStatic(\'to\', Array)\n#5 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\CallQueuedListener.php(134): App\\Listeners\\SendMail->handle(Object(App\\Events\\UserSendMessage))\n#6 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#7 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#12 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#13 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#14 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(136): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#16 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#17 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#18 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#20 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#21 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(485): Illuminate\\Queue\\Jobs\\Job->fire()\n#22 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(435): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(201): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#26 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#27 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#28 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#29 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#30 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#31 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#32 C:\\IWACO\\backend\\vendor\\symfony\\console\\Command\\Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(1117): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\IWACO\\backend\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#40 {main}','2026-04-07 08:17:02'),
(2,'4681774a-bc33-48ac-a53a-bfb5d3e14e8f','database','default','{\"uuid\":\"4681774a-bc33-48ac-a53a-bfb5d3e14e8f\",\"displayName\":\"App\\\\Listeners\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":26:{s:5:\\\"class\\\";s:22:\\\"App\\\\Listeners\\\\SendMail\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:26:\\\"App\\\\Events\\\\UserSendMessage\\\":1:{s:4:\\\"user\\\";O:8:\\\"stdClass\\\":5:{s:4:\\\"name\\\";s:11:\\\"Abdeerrahim\\\";s:5:\\\"email\\\";s:28:\\\"abderrahimkhaliali@gmail.com\\\";s:3:\\\"tel\\\";s:10:\\\"0565434567\\\";s:7:\\\"subject\\\";s:7:\\\"support\\\";s:4:\\\"text\\\";s:12:\\\"Support this\\\";}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:14:\\\"shouldBeUnique\\\";b:0;s:29:\\\"shouldBeUniqueUntilProcessing\\\";b:0;s:8:\\\"uniqueId\\\";N;s:9:\\\"uniqueFor\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\",\"batchId\":null},\"createdAt\":1775553228,\"delay\":null}','InvalidArgumentException: Mailer [stmp] is not defined. in C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php:116\nStack trace:\n#0 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(100): Illuminate\\Mail\\MailManager->resolve(\'stmp\')\n#1 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(78): Illuminate\\Mail\\MailManager->get(\'stmp\')\n#2 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(623): Illuminate\\Mail\\MailManager->mailer()\n#3 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(363): Illuminate\\Mail\\MailManager->__call(\'to\', Array)\n#4 C:\\IWACO\\backend\\app\\Listeners\\SendMail.php(26): Illuminate\\Support\\Facades\\Facade::__callStatic(\'to\', Array)\n#5 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\CallQueuedListener.php(134): App\\Listeners\\SendMail->handle(Object(App\\Events\\UserSendMessage))\n#6 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#7 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#12 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#13 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#14 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(136): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#16 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#17 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#18 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#20 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#21 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(485): Illuminate\\Queue\\Jobs\\Job->fire()\n#22 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(435): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(201): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#26 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#27 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#28 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#29 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#30 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#31 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#32 C:\\IWACO\\backend\\vendor\\symfony\\console\\Command\\Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(1117): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\IWACO\\backend\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#40 {main}','2026-04-07 08:17:02'),
(3,'9d35a07d-9d1a-4466-8db1-6bdd4dab50d6','database','default','{\"uuid\":\"9d35a07d-9d1a-4466-8db1-6bdd4dab50d6\",\"displayName\":\"App\\\\Listeners\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":26:{s:5:\\\"class\\\";s:22:\\\"App\\\\Listeners\\\\SendMail\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:26:\\\"App\\\\Events\\\\UserSendMessage\\\":1:{s:4:\\\"user\\\";O:8:\\\"stdClass\\\":5:{s:4:\\\"name\\\";s:10:\\\"Abderrahim\\\";s:5:\\\"email\\\";s:28:\\\"abderrahimkhaliali@gmail.com\\\";s:3:\\\"tel\\\";s:10:\\\"0678564678\\\";s:7:\\\"subject\\\";s:7:\\\"support\\\";s:4:\\\"text\\\";s:7:\\\"sUPPORT\\\";}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:14:\\\"shouldBeUnique\\\";b:0;s:29:\\\"shouldBeUniqueUntilProcessing\\\";b:0;s:8:\\\"uniqueId\\\";N;s:9:\\\"uniqueFor\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\",\"batchId\":null},\"createdAt\":1775553650,\"delay\":null}','Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"ssl://smtp.gmail.com:465\": stream_socket_client(): Unable to connect to ssl://smtp.gmail.com:465 (Une tentative de connexion a échoué car le parti connecté n’a pas répondu convenablement au-delà d’une certaine durée ou une connexion établie a échoué car l’hôte de connexion n’a pas répondu) in C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\{closure}(2, \'stream_socket_c...\', \'C:\\\\IWACO\\\\backen...\', 157)\n#1 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'ssl://smtp.gmai...\', 0, \'\', 60.0, 4, Resource id #884)\n#2 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(268): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(200): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(207): Illuminate\\Mail\\Mailer->send(\'email.welcome\', Array, Object(Closure))\n#9 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(200): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\WelcomeMail))\n#13 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\WelcomeMail))\n#14 C:\\IWACO\\backend\\app\\Listeners\\SendMail.php(26): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\WelcomeMail))\n#15 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\CallQueuedListener.php(134): App\\Listeners\\SendMail->handle(Object(App\\Events\\UserSendMessage))\n#16 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#17 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#18 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#19 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#20 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#21 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#22 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#23 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#24 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(136): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#26 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#27 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#28 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#30 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#31 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(485): Illuminate\\Queue\\Jobs\\Job->fire()\n#32 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(435): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(201): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#35 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#36 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#37 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#42 C:\\IWACO\\backend\\vendor\\symfony\\console\\Command\\Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(1117): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 C:\\IWACO\\backend\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#50 {main}','2026-04-07 08:21:13'),
(4,'bbb3b9dd-ab1a-42d0-b7e9-4450c7a36096','database','default','{\"uuid\":\"bbb3b9dd-ab1a-42d0-b7e9-4450c7a36096\",\"displayName\":\"App\\\\Listeners\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":26:{s:5:\\\"class\\\";s:22:\\\"App\\\\Listeners\\\\SendMail\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:26:\\\"App\\\\Events\\\\UserSendMessage\\\":1:{s:4:\\\"user\\\";O:8:\\\"stdClass\\\":5:{s:4:\\\"name\\\";s:10:\\\"Abderrahim\\\";s:5:\\\"email\\\";s:28:\\\"abderrahimkhaliali@gmail.com\\\";s:3:\\\"tel\\\";s:10:\\\"0678564678\\\";s:7:\\\"subject\\\";s:7:\\\"support\\\";s:4:\\\"text\\\";s:7:\\\"sUPPORT\\\";}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:14:\\\"shouldBeUnique\\\";b:0;s:29:\\\"shouldBeUniqueUntilProcessing\\\";b:0;s:8:\\\"uniqueId\\\";N;s:9:\\\"uniqueFor\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\",\"batchId\":null},\"createdAt\":1775553650,\"delay\":null}','Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"ssl://smtp.gmail.com:465\": stream_socket_client(): Unable to connect to ssl://smtp.gmail.com:465 (Une tentative de connexion a échoué car le parti connecté n’a pas répondu convenablement au-delà d’une certaine durée ou une connexion établie a échoué car l’hôte de connexion n’a pas répondu) in C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\{closure}(2, \'stream_socket_c...\', \'C:\\\\IWACO\\\\backen...\', 157)\n#1 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'ssl://smtp.gmai...\', 0, \'\', 60.0, 4, Resource id #950)\n#2 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(268): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(200): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(207): Illuminate\\Mail\\Mailer->send(\'email.welcome\', Array, Object(Closure))\n#9 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(200): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\WelcomeMail))\n#13 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\WelcomeMail))\n#14 C:\\IWACO\\backend\\app\\Listeners\\SendMail.php(26): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\WelcomeMail))\n#15 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\CallQueuedListener.php(134): App\\Listeners\\SendMail->handle(Object(App\\Events\\UserSendMessage))\n#16 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#17 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#18 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#19 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#20 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#21 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#22 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#23 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#24 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(136): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#26 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#27 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#28 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#30 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#31 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(485): Illuminate\\Queue\\Jobs\\Job->fire()\n#32 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(435): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(201): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#35 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#36 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#37 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#42 C:\\IWACO\\backend\\vendor\\symfony\\console\\Command\\Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(1117): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 C:\\IWACO\\backend\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#50 {main}','2026-04-07 08:21:34'),
(5,'a83ae0c5-e7e1-4eab-94ae-7cda60c89817','database','default','{\"uuid\":\"a83ae0c5-e7e1-4eab-94ae-7cda60c89817\",\"displayName\":\"App\\\\Listeners\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":26:{s:5:\\\"class\\\";s:22:\\\"App\\\\Listeners\\\\SendMail\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:26:\\\"App\\\\Events\\\\UserSendMessage\\\":1:{s:4:\\\"user\\\";O:8:\\\"stdClass\\\":5:{s:4:\\\"name\\\";s:10:\\\"Abderrahim\\\";s:5:\\\"email\\\";s:28:\\\"abderrahimkhaliali@gmail.com\\\";s:3:\\\"tel\\\";s:10:\\\"0656543456\\\";s:7:\\\"subject\\\";s:7:\\\"support\\\";s:4:\\\"text\\\";s:8:\\\"I neeeed\\\";}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:14:\\\"shouldBeUnique\\\";b:0;s:29:\\\"shouldBeUniqueUntilProcessing\\\";b:0;s:8:\\\"uniqueId\\\";N;s:9:\\\"uniqueFor\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\",\"batchId\":null},\"createdAt\":1775553979,\"delay\":null}','Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"ssl://smtp.gmail.com:465\": stream_socket_client(): Unable to connect to ssl://smtp.gmail.com:465 (Une tentative de connexion a échoué car le parti connecté n’a pas répondu convenablement au-delà d’une certaine durée ou une connexion établie a échoué car l’hôte de connexion n’a pas répondu) in C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\{closure}(2, \'stream_socket_c...\', \'C:\\\\IWACO\\\\backen...\', 157)\n#1 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'ssl://smtp.gmai...\', 0, \'\', 60.0, 4, Resource id #953)\n#2 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(268): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(200): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(207): Illuminate\\Mail\\Mailer->send(\'email.welcome\', Array, Object(Closure))\n#9 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(200): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\WelcomeMail))\n#13 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\WelcomeMail))\n#14 C:\\IWACO\\backend\\app\\Listeners\\SendMail.php(26): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\WelcomeMail))\n#15 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\CallQueuedListener.php(134): App\\Listeners\\SendMail->handle(Object(App\\Events\\UserSendMessage))\n#16 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#17 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#18 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#19 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#20 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#21 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#22 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#23 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#24 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(136): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#26 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#27 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#28 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#30 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#31 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(485): Illuminate\\Queue\\Jobs\\Job->fire()\n#32 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(435): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(201): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#35 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#36 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#37 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#42 C:\\IWACO\\backend\\vendor\\symfony\\console\\Command\\Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(1117): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 C:\\IWACO\\backend\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#50 {main}','2026-04-07 08:26:42'),
(6,'9b932711-6dfe-4c68-ac99-485cc6c782ff','database','default','{\"uuid\":\"9b932711-6dfe-4c68-ac99-485cc6c782ff\",\"displayName\":\"App\\\\Listeners\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":26:{s:5:\\\"class\\\";s:22:\\\"App\\\\Listeners\\\\SendMail\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:26:\\\"App\\\\Events\\\\UserSendMessage\\\":1:{s:4:\\\"user\\\";O:8:\\\"stdClass\\\":5:{s:4:\\\"name\\\";s:10:\\\"Abderrahim\\\";s:5:\\\"email\\\";s:28:\\\"abderrahimkhaliali@gmail.com\\\";s:3:\\\"tel\\\";s:10:\\\"0656543456\\\";s:7:\\\"subject\\\";s:7:\\\"support\\\";s:4:\\\"text\\\";s:8:\\\"I neeeed\\\";}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:14:\\\"shouldBeUnique\\\";b:0;s:29:\\\"shouldBeUniqueUntilProcessing\\\";b:0;s:8:\\\"uniqueId\\\";N;s:9:\\\"uniqueFor\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\",\"batchId\":null},\"createdAt\":1775553979,\"delay\":null}','Symfony\\Component\\Mailer\\Exception\\TransportException: Connection could not be established with host \"ssl://smtp.gmail.com:465\": stream_socket_client(): Unable to connect to ssl://smtp.gmail.com:465 (Une tentative de connexion a échoué car le parti connecté n’a pas répondu convenablement au-delà d’une certaine durée ou une connexion établie a échoué car l’hôte de connexion n’a pas répondu) in C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php:154\nStack trace:\n#0 [internal function]: Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\{closure}(2, \'stream_socket_c...\', \'C:\\\\IWACO\\\\backen...\', 157)\n#1 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\SocketStream.php(157): stream_socket_client(\'ssl://smtp.gmai...\', 0, \'\', 60.0, 4, Resource id #956)\n#2 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(268): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\SocketStream->initialize()\n#3 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(200): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#4 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\IWACO\\backend\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(138): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(584): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(331): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(207): Illuminate\\Mail\\Mailer->send(\'email.welcome\', Array, Object(Closure))\n#9 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(200): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\WelcomeMail))\n#13 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\WelcomeMail))\n#14 C:\\IWACO\\backend\\app\\Listeners\\SendMail.php(26): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\WelcomeMail))\n#15 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\CallQueuedListener.php(134): App\\Listeners\\SendMail->handle(Object(App\\Events\\UserSendMessage))\n#16 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#17 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#18 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#19 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#20 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#21 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#22 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#23 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#24 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(136): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#26 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#27 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#28 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(129): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#30 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#31 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(485): Illuminate\\Queue\\Jobs\\Job->fire()\n#32 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(435): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(201): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#35 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#36 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#37 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#42 C:\\IWACO\\backend\\vendor\\symfony\\console\\Command\\Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(1117): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\IWACO\\backend\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\IWACO\\backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 C:\\IWACO\\backend\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#50 {main}','2026-04-07 08:27:03');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES
(7,'default','{\"uuid\":\"0f53fc2e-5787-414a-823b-ed373c803f27\",\"displayName\":\"App\\\\Listeners\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":26:{s:5:\\\"class\\\";s:22:\\\"App\\\\Listeners\\\\SendMail\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:26:\\\"App\\\\Events\\\\UserSendMessage\\\":1:{s:4:\\\"user\\\";O:8:\\\"stdClass\\\":5:{s:4:\\\"name\\\";s:5:\\\"Ahmed\\\";s:5:\\\"email\\\";s:21:\\\"ahmed123123@gmail.com\\\";s:3:\\\"tel\\\";s:10:\\\"0567654567\\\";s:7:\\\"subject\\\";s:7:\\\"support\\\";s:4:\\\"text\\\";s:8:\\\"Suppport\\\";}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:14:\\\"shouldBeUnique\\\";b:0;s:29:\\\"shouldBeUniqueUntilProcessing\\\";b:0;s:8:\\\"uniqueId\\\";N;s:9:\\\"uniqueFor\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\",\"batchId\":null},\"createdAt\":1775554193,\"delay\":null}',0,NULL,1775554193,1775554193),
(8,'default','{\"uuid\":\"58391a2e-ee1b-4418-82b8-0e7ea4008a82\",\"displayName\":\"App\\\\Listeners\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":26:{s:5:\\\"class\\\";s:22:\\\"App\\\\Listeners\\\\SendMail\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:26:\\\"App\\\\Events\\\\UserSendMessage\\\":1:{s:4:\\\"user\\\";O:8:\\\"stdClass\\\":5:{s:4:\\\"name\\\";s:5:\\\"Ahmed\\\";s:5:\\\"email\\\";s:21:\\\"ahmed123123@gmail.com\\\";s:3:\\\"tel\\\";s:10:\\\"0567654567\\\";s:7:\\\"subject\\\";s:7:\\\"support\\\";s:4:\\\"text\\\";s:8:\\\"Suppport\\\";}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:14:\\\"shouldBeUnique\\\";b:0;s:29:\\\"shouldBeUniqueUntilProcessing\\\";b:0;s:8:\\\"uniqueId\\\";N;s:9:\\\"uniqueFor\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\",\"batchId\":null},\"createdAt\":1775554193,\"delay\":null}',0,NULL,1775554193,1775554193);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2026_04_01_092821_create_produits_table',1),
(5,'2026_04_01_100659_create_personal_access_tokens_table',1),
(6,'2026_04_02_074941_create_categories_table',1),
(7,'2026_04_02_075506_create_table_message_contact_table',1),
(8,'2026_04_02_080033_update_produits_table',1),
(9,'2026_04_02_080253_rename_price_to_prix_in_produits_table',1),
(10,'2026_04_02_090831_rename_name_to_nom_in_produits_table',1),
(11,'2026_04_03_144813_update_categories_table',1),
(12,'2026_04_03_145428_rename_name_to_nom_in_categories_table',1),
(13,'2026_04_06_082756_update_produits_table',1),
(14,'2026_04_06_083007_update_produits_table',1),
(15,'2026_04_06_132912_update_categories_table',1),
(16,'2026_04_06_155443_update_table_message_contact_table',2),
(17,'2026_04_06_161725_add_column_tel_to_table_message_contact_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `produits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` varchar(355) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `brand` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produits_category_id_foreign` (`category_id`),
  CONSTRAINT `produits_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES
(1,'Infinix Note 40 Pro','Ecran AMOLED 120Hz, Charge Rapide 70W, MagCharge.','infinix_note40_pro.png',2800.00,NULL,NULL,1,'Infinix'),
(2,'Infinix Hot 40i','8GB RAM, 256GB Stockage, Caméra 50MP Dual AI.','infinix_hot40i.png',1450.00,NULL,NULL,1,'Infinix'),
(3,'Infinix Smart 8','Design brillant, Batterie 5000mAh, Ecran 90Hz.','infinix_smart8.png',1100.00,NULL,NULL,1,'Infinix'),
(4,'Samsung Galaxy S24 Ultra','Le summum de la technologie avec Galaxy AI et stylet S Pen.','samsung_s24_ultra.png',13500.00,NULL,NULL,1,'Samsung'),
(5,'Samsung Galaxy A55 5G','Design premium en métal et verre, résistant à l\'eau IP67.','samsung_a55.png',4200.00,NULL,NULL,1,'Samsung'),
(6,'Oppo Reno 11 5G','Expert en portrait, design incurvé ultra mince.','oppo_reno11.png',4500.00,NULL,NULL,1,'Oppo'),
(7,'Oppo A78','Charge SUPERVOOC 67W, double haut-parleurs stéréo.','oppo_a78.png',2300.00,NULL,NULL,1,'Oppo'),
(8,'Realme C67','Appareil photo 108MP, Snapdragon 685 ultra fluide.','realme_c67.png',1950.00,NULL,NULL,1,'Realme'),
(9,'Infinix Zero 30','Ecran incurvé 144Hz AMOLED, Caméra 108MP, 45W Super Charge.','infinix_zero30.png',3100.00,NULL,NULL,1,'Infinix'),
(10,'Realme 12 Pro+ 5G','Design Premium cuir végétal, Caméra périscope portrait, Snapdragon 7s Gen 2.','realme_12pro_plus.png',4800.00,NULL,NULL,1,'Realme'),
(11,'Xiaomi Redmi Note 13 Pro','Ultra-clarté 200MP avec OIS, Ecran 1.5K AMOLED, 67W Turbo Charge.','redmi_note13.png',3450.00,NULL,NULL,1,'Xiaomi'),
(12,'Realme 11 5G','Charge 67 SUPERVOOC, Appareil photo 108MP avec zoom 3x, Ecran 120Hz.','realme_11.png',2600.00,NULL,NULL,1,'Realme'),
(13,'HP Victus 15','Processeur i5-13th, 16GB RAM, RTX 3050. Parfait pour le gaming et design.','hp_victus.png',8500.00,NULL,NULL,3,'HP'),
(14,'HP Laptop 15-dw','Intel Core i3, 8GB RAM, 256GB SSD. Idéal pour la bureautique simple.','hp_15dw.png',3800.00,NULL,NULL,3,'HP'),
(15,'HP Pavilion x360','Écran tactile convertible, Intel i5, 8GB RAM. Flexible et performant.','hp_x360.png',6900.00,NULL,NULL,3,'HP'),
(16,'Lenovo IdeaPad 3','Ryzen 5, 8GB RAM, 512GB SSD. Excellent rapport qualité/prix.','lenovo_ip3.png',4600.00,NULL,NULL,3,'Lenovo'),
(17,'Lenovo ThinkPad E14','Intel i7, 16GB RAM, Sécurité renforcée. Conçu pour les professionnels.','lenovo_e14.png',9500.00,NULL,NULL,3,'Lenovo'),
(18,'Lenovo Legion 5','Ryzen 7, RTX 4060, Écran 165Hz. Performance extrême pour gaming.','lenovo_legion5.png',13500.00,NULL,NULL,3,'Lenovo'),
(19,'Asus Vivobook 15','Écran OLED, Intel i5, 16GB RAM. Couleurs éclatantes et design fin.','asus_vivo.png',7200.00,NULL,NULL,3,'Asus'),
(20,'Asus TUF Gaming F15','Intel i5-12th, RTX 3050, Robuste et puissant pour les joueurs.','asus_tuf.png',8900.00,NULL,NULL,3,'Asus'),
(21,'Asus Zenbook 14','Intel i7 Evo, 16GB RAM, Écran 2.8K. Ultra-portable haut de gamme.','asus_zenbook.png',11800.00,NULL,NULL,3,'Asus'),
(22,'Dell Latitude 3540','Intel i5, 8GB RAM, Clavier rétroéclairé. Fiabilité pour l entreprise.','dell_lat.png',7800.00,NULL,NULL,3,'Dell'),
(23,'Dell Vostro 3510','Intel i3, 4GB RAM, 256GB SSD. Solution économique pour le bureau.','dell_vostro.png',3950.00,NULL,NULL,3,'Dell'),
(24,'Dell Inspiron 15','Intel i7-13th, 16GB RAM, SSD 512GB. Polyvalence et rapidité.','dell_inspiron.png',10200.00,NULL,NULL,3,'Dell'),
(25,'Logitech G435 Wireless','Casque Gamer ultra-léger, Bluetooth et Lightspeed. Son immersif.','logi_g435.png',950.00,NULL,NULL,2,'Logitech'),
(26,'Sony WH-CH520','Casque sans fil, Autonomie 50h, Connexion multipoint. Design élégant.','sony_ch520.png',650.00,NULL,NULL,2,'Sony'),
(27,'JBL Tune 520BT','Son JBL Pure Bass, Bluetooth 5.3, Appels mains libres.','jbl_520bt.png',580.00,NULL,NULL,2,'JBL'),
(28,'Logitech G502 Hero','Souris Gamer haute performance, Capteur 25K DPI, 11 boutons programmables.','logi_g502.png',750.00,NULL,NULL,2,'Logitech'),
(29,'Razer DeathAdder V2','Souris ergonomique, Switch optique, Capteur 20K DPI Focus+.','razer_deathadder.png',820.00,NULL,NULL,2,'Razer'),
(30,'Mechanical Keyboard RGB','Clavier mécanique Red Switches, Anti-ghosting, Rétroéclairage RGB personnalisable.','mech_kb.png',1200.00,NULL,NULL,2,'Generic'),
(31,'SanDisk Extreme SSD 1TB','SSD externe portable, Vitesse 1050Mo/s, Résistant aux chutes et à l eau.','sandisk_ssd.png',1450.00,NULL,NULL,2,'SanDisk'),
(32,'Hub USB-C 7-en-1','Adaptateur avec HDMI 4K, Lecteur SD, Ports USB 3.0. Idéal pour Laptops.','hub_usb.png',450.00,NULL,NULL,2,'Generic'),
(33,'HyperX QuadCast S','Microphone USB à condensateur, Éclairage RGB, Support anti-vibration.','hyperx_mic.png',1800.00,NULL,NULL,2,'HyperX'),
(34,'SteelSeries Arctis 7+','Casque sans fil multi-plateforme, Audio 7.1 spatial, Micro ClearCast.','ss_arctis7.png',2100.00,NULL,NULL,2,'SteelSeries'),
(35,'Logitech MX Master 3S','Souris bureautique haute précision, Silencieuse, Défilement ultra-rapide.','logi_mx3s.png',1100.00,NULL,NULL,2,'Logitech'),
(36,'Tapis de Souris XXL RGB','Surface micro-texturée, Base antidérapante, Contour éclairé RGB.','rgb_mousepad.png',350.00,NULL,NULL,2,'Generic'),
(37,'iPad Air M2','Puce M2 surpuissante, Écran Liquid Retina 11\", Compatible Apple Pencil Pro.','ipad_air.png',7900.00,NULL,NULL,4,'Apple'),
(38,'iPad 10th Gen','Écran 10.9\", Puce A14 Bionic, Idéal pour les étudiants et le multimédia.','ipad_10.png',4800.00,NULL,NULL,4,'Apple'),
(39,'Samsung Galaxy Tab S9 FE','Écran 90Hz, S Pen inclus dans la boîte, Résistant à l eau et à la poussière IP68.','tab_s9fe.png',5200.00,NULL,NULL,4,'Samsung'),
(40,'Samsung Galaxy Tab A9+','Écran 11\" fluide 90Hz, 4 haut-parleurs Dolby Atmos. Parfait pour le streaming.','tab_a9.png',2400.00,NULL,NULL,4,'Samsung'),
(41,'Infinix XPAD','Écran 11\" 90Hz, Design élégant en métal, Idéal pour le divertissement familial.','infinix_xpad.png',1900.00,NULL,NULL,4,'Infinix'),
(42,'Realme Pad 2','Écran 2K 120Hz, Charge rapide 33W, 4 haut-parleurs stéréo ultra-puissants.','realme_pad2.png',2800.00,NULL,NULL,4,'Realme'),
(43,'Realme Pad Mini','Format compact 8.7\", Batterie longue durée 6400mAh, Design ultra-fin.','realme_pad_mini.png',1550.00,NULL,NULL,4,'Realme'),
(44,'Xiaomi Pad 6','Écran 144Hz WQHD+, Snapdragon 870, Finition premium en aluminium.','xiaomi_pad6.png',4100.00,NULL,NULL,4,'Xiaomi'),
(45,'Redmi Pad SE','Écran 11\" 90Hz Eye Care, Batterie 8000mAh, Très bon rapport qualité/prix.','redmi_pad_se.png',2100.00,NULL,NULL,4,'Xiaomi'),
(46,'Lenovo Tab P11 Gen 2','Écran 2K, Stylet et clavier en option, Parfait pour la productivité mobile.','lenovo_p11.png',3600.00,NULL,NULL,4,'Lenovo'),
(47,'Lenovo Tab M10 Plus','Écran 10.6\" 2K, Mode lecture spécial, Système audio à 4 haut-parleurs.','lenovo_m10.png',2300.00,NULL,NULL,4,'Lenovo'),
(48,'Huawei MatePad 11.5','Écran 120Hz sans scintillement, Design monocoque, Super Device integration.','huawei_matepad.png',3300.00,NULL,NULL,4,'Huawei'),
(49,'Apple Watch Series 9','Écran Retina toujours activé, Capteur d oxygène sanguin, Suivi avancé du sommeil.','apple_watch_s9.png',4600.00,NULL,NULL,5,'Apple'),
(50,'Samsung Galaxy Watch 6','Suivi de la composition corporelle, Coaching de sommeil personnalisé, Design iconique.','galaxy_watch6.png',2800.00,NULL,NULL,5,'Samsung'),
(51,'Huawei Watch GT 4','Autonomie jusqu à 14 jours, Gestion de la santé Pro, Compatible iOS et Android.','huawei_gt4.png',2200.00,NULL,NULL,5,'Huawei'),
(52,'Xiaomi Watch S3','Lunette interchangeable, Écran AMOLED 1.43\", Plus de 150 modes sportifs.','xiaomi_s3.png',1450.00,NULL,NULL,5,'Xiaomi'),
(53,'Xiaomi Smart Band 8','Écran AMOLED fluide 60Hz, Plus de 150 modes sport, Charge rapide en 1h.','mi_band8.png',450.00,NULL,NULL,5,'Xiaomi'),
(54,'Huawei Band 9','Design ultra-fin, Suivi scientifique du sommeil, Autonomie de 2 semaines.','huawei_band9.png',490.00,NULL,NULL,5,'Huawei'),
(55,'AirPods Pro (2nd Gen)','Réduction active du bruit, Audio spatial personnalisé, Boîtier de charge USB-C.','airpods_pro2.png',2600.00,NULL,NULL,5,'Apple'),
(56,'Samsung Galaxy Buds2 Pro','Son Hi-Fi 24 bits, Réduction active du bruit intelligente, Confort ergonomique.','buds2_pro.png',1800.00,NULL,NULL,5,'Samsung'),
(57,'Xiaomi Buds 5','Son haute résolution, Annulation active du bruit, Design semi-intra-auriculaire.','xiaomi_buds5.png',950.00,NULL,NULL,5,'Xiaomi'),
(58,'Xiaomi Smart Camera C400','Vision nocturne 2.5K, Rotation 360°, Détection humaine par IA.','mi_camera_c400.png',550.00,NULL,NULL,5,'Xiaomi'),
(59,'Huawei FreeClip','Design C-bridge innovant, Écoute à oreilles libres, Confort toute la journée.','huawei_freeclip.png',1900.00,NULL,NULL,5,'Huawei'),
(60,'Xiaomi Mi Smart Scale 2','Analyse précise de la composition corporelle, Synchronisation avec Mi Fit.','mi_scale2.png',350.00,NULL,NULL,5,'Xiaomi');
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('99dB2uKAOlhfqEh57IeIJ2xliCZBfy2hw2p0J4E9',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZE5hVHF2NWc5bnEycGd1RjFsQTU3M3pSbDZSYnZZNzh3WTl4MDJaaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9nZXRfYWxsX3Byb2R1Y3RzIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1775654530),
('BAcWM9UQmYbEop2gGKkZ9GRSxafgIL4CFhXg1Lsw',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0tpS0RobjFNUXowbHo4YVJnYXh1azFyblp2VndkYkJMUFNsV2ttcyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9nZXRfY2F0ZWdvcmllcyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1775654532),
('mDpMHkSN5E1lCm0VszJaEJ19mJvrfsqgj5XXxsC7',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEE4VWMyTElVUTRPSmNWTmpYNTFoVmNhSDNBOGRwM3RTRW15cmxSZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9nZXRfY2F0ZWdvcmllcyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1775661975),
('TP2kfvM2gm2H8dmZ2YQSqqYCIZQraoa90vg7E09c',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHh3RERXVEFDeXZtc3dIcEVvZ2t3cEthd25UUUNqOEpSUkhieGN6SCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9nZXRfYWxsX3Byb2R1Y3RzIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1775654535);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_message_contact`
--

DROP TABLE IF EXISTS `table_message_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_message_contact` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_message_contact`
--

LOCK TABLES `table_message_contact` WRITE;
/*!40000 ALTER TABLE `table_message_contact` DISABLE KEYS */;
INSERT INTO `table_message_contact` VALUES
(1,'Abderrahim','abdou123@gmail.com','support','Signup makaynach',NULL,NULL,'06545654'),
(2,'Khadija','khadija123@gmail.com','devis','Blabaablalalallallallalalalala','2026-04-07 06:48:28',NULL,'0669054064'),
(3,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need to signup','2026-04-07 07:03:53',NULL,'0669451209'),
(4,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need to signup','2026-04-07 07:04:09',NULL,'0669451209'),
(5,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need to signup','2026-04-07 07:04:58',NULL,'0669451209'),
(6,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need signup','2026-04-07 07:08:28',NULL,'0654567643'),
(7,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need signup','2026-04-07 07:10:21',NULL,'0787543456'),
(8,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need signup','2026-04-07 07:14:06',NULL,'0765452312'),
(9,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need signup','2026-04-07 07:14:16',NULL,'0765452312'),
(10,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need signup','2026-04-07 07:14:18',NULL,'0765452312'),
(11,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need to login','2026-04-07 07:18:01',NULL,'0656431234'),
(12,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need','2026-04-07 07:58:13',NULL,'0778765645'),
(13,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need','2026-04-07 08:01:29',NULL,'0665675434'),
(14,'Abderrahim','abderrahimkhaliali@gmail.com','support','I need','2026-04-07 08:03:36',NULL,'0667565432'),
(15,'Abderrahim','abderrahimkhaliali@gmail.com','support','SUPPPPPORT PLEAAASE FIXXXX','2026-04-07 08:12:39',NULL,'0776765456'),
(16,'Abdeerrahim','abderrahimkhaliali@gmail.com','support','Support this','2026-04-07 08:13:48',NULL,'0565434567'),
(17,'Abderrahim','abderrahimkhaliali@gmail.com','support','sUPPORT','2026-04-07 08:20:50',NULL,'0678564678'),
(18,'Abderrahim','abderrahimkhaliali@gmail.com','support','I neeeed','2026-04-07 08:26:19',NULL,'0656543456'),
(19,'Ahmed','ahmed123123@gmail.com','support','Suppport','2026-04-07 08:29:53',NULL,'0567654567'),
(20,'Ahmed','ahmed123@gmail.com','support','I nnnnnnnnnnnnnnnned','2026-04-07 08:31:38',NULL,'0656765456'),
(21,'Khadija','khadijakhadija23@gmail.com','support','SUPPORT URGENT','2026-04-07 08:32:35',NULL,'0789876545');
/*!40000 ALTER TABLE `table_message_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-04-08 17:11:55
