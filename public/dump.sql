
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `action_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` bigint(20) unsigned NOT NULL,
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` text COLLATE utf8mb4_unicode_ci,
  `changes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  KEY `action_events_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `action_events` WRITE;
/*!40000 ALTER TABLE `action_events` DISABLE KEYS */;
INSERT INTO `action_events` VALUES (1,'911108db-27c6-4917-9507-136f50067b9f',1,'Create','App\\User',2,'App\\User',2,'App\\User',2,'','finished','','2020-07-18 02:04:50','2020-07-18 02:04:50',NULL,'{\"name\":\"Taylor Otwell\",\"email\":\"taylor.otwell@laravel.com\",\"updated_at\":\"2020-07-17T22:04:50.000000Z\",\"created_at\":\"2020-07-17T22:04:50.000000Z\",\"id\":2}'),(2,'911108fb-ac41-45c2-b742-750c75f4fc03',1,'Create','App\\User',3,'App\\User',3,'App\\User',3,'','finished','','2020-07-18 02:05:11','2020-07-18 02:05:11',NULL,'{\"name\":\"Maisie Williams\",\"email\":\"maisie.williams@gmail.com\",\"updated_at\":\"2020-07-17T22:05:11.000000Z\",\"created_at\":\"2020-07-17T22:05:11.000000Z\",\"id\":3}'),(3,'91110932-07b8-4c1b-a8b9-9687192829eb',1,'Create','App\\User',4,'App\\User',4,'App\\User',4,'','finished','','2020-07-18 02:05:47','2020-07-18 02:05:47',NULL,'{\"name\":\"Jannatun Nayeem Kumu\",\"email\":\"kumu2@jannat.com\",\"updated_at\":\"2020-07-17T22:05:47.000000Z\",\"created_at\":\"2020-07-17T22:05:47.000000Z\",\"id\":4}'),(4,'91110961-1984-4f89-99b0-5504f678ca6e',1,'Create','App\\User',5,'App\\User',5,'App\\User',5,'','finished','','2020-07-18 02:06:18','2020-07-18 02:06:18',NULL,'{\"name\":\"Sakhawat H Sumit\",\"email\":\"sumit@gmail.com\",\"updated_at\":\"2020-07-17T22:06:18.000000Z\",\"created_at\":\"2020-07-17T22:06:18.000000Z\",\"id\":5}'),(5,'91110a56-3192-4852-b2bb-d4f3dae77286',1,'Create','App\\Tag',1,'App\\Tag',1,'App\\Tag',1,'','finished','','2020-07-18 02:08:58','2020-07-18 02:08:58',NULL,'{\"tag\":\"Laravel\",\"updated_at\":\"2020-07-17T22:08:58.000000Z\",\"created_at\":\"2020-07-17T22:08:58.000000Z\",\"id\":1}'),(6,'91110a5d-8634-4b93-a5b4-bc5f9de7cdfe',1,'Create','App\\Tag',2,'App\\Tag',2,'App\\Tag',2,'','finished','','2020-07-18 02:09:03','2020-07-18 02:09:03',NULL,'{\"tag\":\"Nova\",\"updated_at\":\"2020-07-17T22:09:03.000000Z\",\"created_at\":\"2020-07-17T22:09:03.000000Z\",\"id\":2}'),(7,'91110ab3-a347-4c05-8075-8696a6dfb20b',1,'Create','App\\Post',1,'App\\Post',1,'App\\Post',1,'','finished','','2020-07-18 02:10:00','2020-07-18 02:10:00',NULL,'{\"title\":\"Laravel REST API Tutorial\",\"body\":\"<div>Building RESTFUL API using laravel<\\/div>\",\"publish_at\":\"2020-07-17T16:00:00.000000Z\",\"publish_until\":\"2020-07-24T16:00:00.000000Z\",\"is_published\":true,\"category\":\"tutorials\",\"user_id\":3,\"updated_at\":\"2020-07-17T22:10:00.000000Z\",\"created_at\":\"2020-07-17T22:10:00.000000Z\",\"id\":1}'),(8,'91110b02-2fef-4eed-be34-e9d1d3dc41bd',1,'Create','App\\Post',2,'App\\Post',2,'App\\Post',2,'','finished','','2020-07-18 02:10:51','2020-07-18 02:10:51',NULL,'{\"title\":\"Laravel Nova\",\"body\":\"<div>Nova Laravel tutorial on laracats<\\/div>\",\"publish_at\":\"2020-07-17T16:00:00.000000Z\",\"publish_until\":\"2020-07-25T16:00:00.000000Z\",\"is_published\":true,\"category\":\"news\",\"user_id\":2,\"updated_at\":\"2020-07-17T22:10:51.000000Z\",\"created_at\":\"2020-07-17T22:10:51.000000Z\",\"id\":2}'),(9,'91110b0e-4aa6-4122-8d7a-3ac2232ceb86',1,'Attach','App\\Post',2,'App\\Tag',2,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-18 02:10:59','2020-07-18 02:10:59',NULL,'{\"post_id\":\"2\",\"tag_id\":\"2\"}'),(10,'91110b16-9745-4cef-962c-f26f4591e036',1,'Attach','App\\Post',2,'App\\Tag',2,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-18 02:11:05','2020-07-18 02:11:05',NULL,'{\"post_id\":\"2\",\"tag_id\":\"1\"}'),(11,'91125980-38b9-46ce-a5cf-204d3b4e90db',1,'Unpublish Post','App\\Post',2,'App\\Post',2,'App\\Post',2,'a:0:{}','finished','','2020-07-18 17:46:10','2020-07-18 17:46:10',NULL,NULL),(12,'9112598a-1d52-4908-8d4f-71cd288d41ce',1,'Publish Post','App\\Post',2,'App\\Post',2,'App\\Post',2,'a:0:{}','finished','','2020-07-18 17:46:16','2020-07-18 17:46:16',NULL,NULL),(13,'9113b317-dce6-4b8d-8613-a138452de86b',1,'Unpublish Post','App\\Post',2,'App\\Post',2,'App\\Post',2,'a:0:{}','finished','','2020-07-19 09:52:30','2020-07-19 09:52:30',NULL,NULL),(14,'9113b317-dce6-4b8d-8613-a138452de86b',1,'Unpublish Post','App\\Post',1,'App\\Post',1,'App\\Post',1,'a:0:{}','finished','','2020-07-19 09:52:30','2020-07-19 09:52:30',NULL,NULL),(15,'9113b33e-4833-404e-84a2-ec12d7b6791a',1,'Publish Post','App\\Post',2,'App\\Post',2,'App\\Post',2,'a:0:{}','finished','','2020-07-19 09:52:56','2020-07-19 09:52:56',NULL,NULL),(16,'9113b33e-4833-404e-84a2-ec12d7b6791a',1,'Publish Post','App\\Post',1,'App\\Post',1,'App\\Post',1,'a:0:{}','finished','','2020-07-19 09:52:56','2020-07-19 09:52:56',NULL,NULL),(17,'9113b3f1-4a19-419e-9ca2-70528dd39d56',1,'Create','App\\Post',3,'App\\Post',3,'App\\Post',3,'','finished','','2020-07-19 09:54:53','2020-07-19 09:54:53',NULL,'{\"title\":\"Socket.io Tutorial\",\"body\":\"<div>Node server uses socket.io to do real time work.<\\/div>\",\"publish_at\":\"2020-07-19T16:00:00.000000Z\",\"publish_until\":\"2020-07-28T16:00:00.000000Z\",\"is_published\":false,\"category\":\"tutorials\",\"user_id\":4,\"updated_at\":\"2020-07-19T05:54:53.000000Z\",\"created_at\":\"2020-07-19T05:54:53.000000Z\",\"id\":3}'),(18,'9113b415-0487-4249-a156-954c5b60be00',1,'Create','App\\Tag',3,'App\\Tag',3,'App\\Tag',3,'','finished','','2020-07-19 09:55:16','2020-07-19 09:55:16',NULL,'{\"tag\":\"NodeJs\",\"updated_at\":\"2020-07-19T05:55:16.000000Z\",\"created_at\":\"2020-07-19T05:55:16.000000Z\",\"id\":3}'),(19,'9113b425-f2f0-444e-9b60-3e9bbc6b4901',1,'Attach','App\\Tag',3,'App\\Post',3,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-19 09:55:27','2020-07-19 09:55:27',NULL,'{\"tag_id\":\"3\",\"post_id\":\"3\"}'),(20,'9113b515-1a7c-46f4-ba38-20e66e841931',1,'Publish Post','App\\Post',2,'App\\Post',2,'App\\Post',2,'a:0:{}','finished','','2020-07-19 09:58:04','2020-07-19 09:58:04',NULL,NULL),(21,'9113b51e-f732-4c55-a3cc-538f706342ce',1,'Publish Post','App\\Post',3,'App\\Post',3,'App\\Post',3,'a:0:{}','finished','','2020-07-19 09:58:11','2020-07-19 09:58:11',NULL,NULL),(22,'9113b53c-45ed-4041-a4c7-4f457b6530a1',1,'Unpublish Post','App\\Post',3,'App\\Post',3,'App\\Post',3,'a:0:{}','finished','','2020-07-19 09:58:30','2020-07-19 09:58:30',NULL,NULL),(23,'9113b764-0207-4427-891f-5b1fae40f5f3',1,'Publish Post','App\\Post',3,'App\\Post',3,'App\\Post',3,'a:1:{s:7:\"message\";s:15:\"Kumu succeeded.\";}','finished','','2020-07-19 10:04:31','2020-07-19 10:04:31',NULL,NULL),(24,'9113c3d3-f66b-40b5-990e-15fa7d9b4454',1,'Create','App\\Post',4,'App\\Post',4,'App\\Post',4,'','finished','','2020-07-19 10:39:18','2020-07-19 10:39:18',NULL,'{\"title\":\"Golang Tutorial\",\"body\":\"<div>Building RESTFUL API using Golang<\\/div>\",\"publish_at\":\"2020-07-19T16:00:00.000000Z\",\"publish_until\":\"2020-07-23T16:00:00.000000Z\",\"is_published\":false,\"category\":\"tutorials\",\"user_id\":4,\"updated_at\":\"2020-07-19T06:39:18.000000Z\",\"created_at\":\"2020-07-19T06:39:18.000000Z\",\"id\":4}'),(25,'9113c41b-b786-49f0-a023-dd5e342f0b2d',1,'Create','App\\Post',5,'App\\Post',5,'App\\Post',5,'','finished','','2020-07-19 10:40:05','2020-07-19 10:40:05',NULL,'{\"title\":\"C++ Game Developmemt\",\"body\":\"<div>Game development using C++<\\/div>\",\"publish_at\":\"2020-07-20T16:00:00.000000Z\",\"publish_until\":\"2020-07-31T16:00:00.000000Z\",\"is_published\":false,\"category\":\"tutorials\",\"user_id\":4,\"updated_at\":\"2020-07-19T06:40:05.000000Z\",\"created_at\":\"2020-07-19T06:40:05.000000Z\",\"id\":5}'),(26,'9113c69f-dabe-45c5-a046-8c95347a8791',1,'Publish Post','App\\Post',5,'App\\Post',5,'App\\Post',5,'a:1:{s:7:\"message\";N;}','finished','','2020-07-19 10:47:07','2020-07-19 10:47:07',NULL,NULL),(27,'9113c69f-dabe-45c5-a046-8c95347a8791',1,'Publish Post','App\\Post',4,'App\\Post',4,'App\\Post',4,'a:1:{s:7:\"message\";N;}','finished','','2020-07-19 10:47:07','2020-07-19 10:47:07',NULL,NULL),(28,'9113cd81-8e1e-4cab-930a-1c946bbc3d8e',1,'Create','App\\Post',6,'App\\Post',6,'App\\Post',6,'','finished','','2020-07-19 11:06:22','2020-07-19 11:06:22',NULL,'{\"title\":\"Action Model Optimization\",\"body\":\"<div>Action related models optimizations need some lookups<\\/div>\",\"publish_at\":\"2020-07-19T16:00:00.000000Z\",\"publish_until\":\"2020-07-20T16:00:00.000000Z\",\"is_published\":true,\"category\":\"news\",\"user_id\":5,\"updated_at\":\"2020-07-19T07:06:22.000000Z\",\"created_at\":\"2020-07-19T07:06:22.000000Z\",\"id\":6}'),(29,'91143e7a-9359-4403-ac52-640bfdd96d5b',1,'Unpublish Post','App\\Post',5,'App\\Post',5,'App\\Post',5,'a:0:{}','finished','','2020-07-19 16:22:15','2020-07-19 16:22:15',NULL,NULL),(30,'91143e8e-7908-4c69-b630-4905c33becb4',1,'Publish Post','App\\Post',5,'App\\Post',5,'App\\Post',5,'a:1:{s:7:\"message\";s:8:\"Whats up\";}','finished','','2020-07-19 16:22:28','2020-07-19 16:22:28',NULL,NULL),(31,'91160085-4fb7-414e-b19f-db3d5dd5afbb',1,'Create','App\\Post',7,'App\\Post',7,'App\\Post',7,'','finished','','2020-07-20 13:20:40','2020-07-20 13:20:40',NULL,'{\"title\":\"Latravel Nova Custom Tool\",\"body\":\"<div>Custom tool is possible in Laravel Nova<\\/div>\",\"publish_at\":\"2020-07-20T06:00:00.000000Z\",\"publish_until\":\"2020-07-22T06:00:00.000000Z\",\"is_published\":true,\"category\":\"tutorials\",\"user_id\":3,\"updated_at\":\"2020-07-20T09:20:40.000000Z\",\"created_at\":\"2020-07-20T09:20:40.000000Z\",\"id\":7}'),(32,'911602c2-0460-411e-95d9-cf486bd0baa3',1,'Unpublish Post','App\\Post',7,'App\\Post',7,'App\\Post',7,'a:0:{}','finished','','2020-07-20 13:26:55','2020-07-20 13:26:55',NULL,NULL),(33,'911604e0-7eb7-488e-b25c-4754f22b3010',1,'Create','App\\Tag',4,'App\\Tag',4,'App\\Tag',4,'','finished','','2020-07-20 13:32:51','2020-07-20 13:32:51',NULL,'{\"tag\":\"C++\",\"updated_at\":\"2020-07-20T09:32:51.000000Z\",\"created_at\":\"2020-07-20T09:32:51.000000Z\",\"id\":4}'),(34,'9116566a-edef-4f2f-be50-d828061dcbcc',1,'Update','App\\User',2,'App\\User',2,'App\\User',2,'','finished','','2020-07-20 17:20:51','2020-07-20 17:20:51','{\"profile_img\":null}','{\"profile_img\":\"ScRWYOnDzdAvShGAu6dcO8kQjUV5D13P2kZB5KnN.jpeg\"}'),(35,'9116576f-f312-45fe-8f5a-86d47e01b35b',1,'Update','App\\User',2,'App\\User',2,'App\\User',2,'','finished','','2020-07-20 17:23:42','2020-07-20 17:23:42','{\"profile_img\":\"ScRWYOnDzdAvShGAu6dcO8kQjUV5D13P2kZB5KnN.jpeg\"}','{\"profile_img\":\"lI7LzjjTTMusoT43iEBzNhVCRsqF6FIh0VJ5iPfE.jpeg\"}'),(36,'91165cc2-c2af-4c06-944b-96f49ad74f15',1,'Update','App\\User',2,'App\\User',2,'App\\User',2,'','finished','','2020-07-20 17:38:35','2020-07-20 17:38:35','{\"profile_img\":\"lI7LzjjTTMusoT43iEBzNhVCRsqF6FIh0VJ5iPfE.jpeg\"}','{\"profile_img\":\"5O7tn2CNyNtFy2KmDGgJElk8d4YtZcqrI74WNUJI.jpeg\"}'),(37,'91165ff6-a1ff-4e9d-848c-477b12490e51',1,'Update','App\\User',2,'App\\User',2,'App\\User',2,'','finished','','2020-07-20 17:47:33','2020-07-20 17:47:33','[]','[]'),(38,'9116601a-40fb-495b-a7c5-3152b119192f',1,'Update','App\\User',2,'App\\User',2,'App\\User',2,'','finished','','2020-07-20 17:47:56','2020-07-20 17:47:56','{\"profile_img\":null}','{\"profile_img\":\"fQmVUKQa39R2zPYSuqYCpBEf7tWACXUnSAuBuli2.jpeg\"}'),(39,'9116613d-874c-4d25-9e1b-66b1446eff07',1,'Update','App\\User',3,'App\\User',3,'App\\User',3,'','finished','','2020-07-20 17:51:07','2020-07-20 17:51:07','{\"profile_img\":null}','{\"profile_img\":\"YXTtnPuo2UXKGHBe4sVxLK3lpU3lQHufx9pbMdVa.png\"}'),(40,'91166169-8170-4464-981e-abefa6ae7e0b',1,'Update','App\\User',5,'App\\User',5,'App\\User',5,'','finished','','2020-07-20 17:51:36','2020-07-20 17:51:36','{\"profile_img\":null}','{\"profile_img\":\"CxGABrBKlc8Yj4igifyRrY2gY7uJ9iAQBoHZWRVg.png\"}'),(41,'911661a0-894d-44e8-8b0e-a5dce338bffb',1,'Update','App\\User',1,'App\\User',1,'App\\User',1,'','finished','','2020-07-20 17:52:12','2020-07-20 17:52:12','{\"profile_img\":null}','{\"profile_img\":\"64sRVhma9zrGSGcF6SLz7qydg54lAOgPxsZxWfaB.jpeg\"}'),(42,'911662d8-ae5b-4078-bd87-2e657d4f4671',1,'Update','App\\User',4,'App\\User',4,'App\\User',4,'','finished','','2020-07-20 17:55:36','2020-07-20 17:55:36','{\"profile_img\":null}','{\"profile_img\":\"6aHBZLqMbbRvecBB7N5H5gnfbFRJGY5O8qmCt8BM.jpeg\"}'),(43,'9117deb5-63a5-4dba-a7cf-1a1711f95db2',1,'Unpublish Post','App\\Post',6,'App\\Post',6,'App\\Post',6,'a:0:{}','finished','','2020-07-21 01:37:47','2020-07-21 01:37:47',NULL,NULL),(44,'9117deb5-63a5-4dba-a7cf-1a1711f95db2',1,'Unpublish Post','App\\Post',5,'App\\Post',5,'App\\Post',5,'a:0:{}','finished','','2020-07-21 01:37:47','2020-07-21 01:37:47',NULL,NULL),(45,'9118271c-ccb9-4ad8-a375-2d4268aaab70',1,'Create','App\\Post',8,'App\\Post',8,'App\\Post',8,'','finished','','2020-07-21 05:00:14','2020-07-21 05:00:14',NULL,'{\"title\":\"Vue and Laravel\",\"body\":\"<div>Fullstack project development using Vue.js&nbsp; and Laravel.<\\/div>\",\"publish_at\":\"2020-07-30T06:00:00.000000Z\",\"publish_until\":\"2020-07-31T06:00:00.000000Z\",\"is_published\":true,\"category\":\"tutorials\",\"user_id\":1,\"updated_at\":\"2020-07-21T11:00:14.000000Z\",\"created_at\":\"2020-07-21T11:00:14.000000Z\",\"id\":8}'),(46,'91182875-5288-4f7f-95e3-2adcdb0b9ccf',1,'Attach','App\\Post',8,'App\\Tag',8,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-21 05:04:00','2020-07-21 05:04:00',NULL,'{\"post_id\":\"8\",\"tag_id\":\"1\"}'),(47,'9118287c-3ab6-4a5a-945b-b60486dc3132',1,'Attach','App\\Post',8,'App\\Tag',8,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-21 05:04:04','2020-07-21 05:04:04',NULL,'{\"post_id\":\"8\",\"tag_id\":\"2\"}'),(48,'91186c81-c9c1-4674-bc83-5e1b6f61a6c8',1,'Unpublish Post','App\\Post',3,'App\\Post',3,'App\\Post',3,'a:0:{}','finished','','2020-07-21 08:14:16','2020-07-21 08:14:16',NULL,NULL),(49,'91186c8a-7ef7-40b3-84b2-0adc3e250cd8',1,'Publish Post','App\\Post',3,'App\\Post',3,'App\\Post',3,'a:1:{s:7:\"message\";N;}','finished','','2020-07-21 08:14:22','2020-07-21 08:14:22',NULL,NULL),(50,'911be3a9-b68c-41d0-92e3-92bc1bcc5ede',1,'Attach','App\\Post',1,'App\\Tag',1,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 01:34:56','2020-07-23 01:34:56',NULL,'{\"post_id\":\"1\",\"tag_id\":\"1\",\"can_view\":\"1\",\"can_create\":\"0\"}'),(51,'911be455-01be-4780-858c-af832486772f',1,'Update Attached','App\\Post',1,'App\\Tag',1,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 01:36:49','2020-07-23 01:36:49','[]','{\"can_view\":\"0\",\"can_create\":\"1\"}'),(52,'911be471-678e-4f09-96d6-17f3a0c9e0e1',1,'Update Attached','App\\Post',1,'App\\Tag',1,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 01:37:07','2020-07-23 01:37:07','[]','{\"can_view\":\"1\",\"can_create\":\"1\"}'),(54,'911be54c-d694-4855-ad23-afb63ae59689',1,'Update Attached','App\\Post',1,'App\\Tag',1,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 01:39:31','2020-07-23 01:39:31','[]','{\"can_view\":true,\"can_create\":true}'),(55,'911be565-5617-4b47-838c-b0ecec4718f5',1,'Update Attached','App\\Post',1,'App\\Tag',1,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 01:39:47','2020-07-23 01:39:47','[]','{\"can_view\":false,\"can_create\":false}'),(56,'911be621-7033-4811-96ee-ce1bf1fae661',1,'Update Attached','App\\Post',1,'App\\Tag',1,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 01:41:50','2020-07-23 01:41:50','[]','{\"can_view\":true,\"can_create\":true}'),(57,'911be637-55b8-4444-a214-9e68ba2e93ca',1,'Update Attached','App\\Post',1,'App\\Tag',1,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 01:42:05','2020-07-23 01:42:05','[]','{\"can_view\":true,\"can_create\":false}'),(58,'911be671-be6a-4388-8275-c0e52dbd63ee',1,'Update Attached','App\\Post',1,'App\\Tag',1,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 01:42:43','2020-07-23 01:42:43','[]','{\"can_view\":true,\"can_create\":true}'),(59,'911be873-60ac-404a-97fb-81d4c6fbf76f',1,'Update Attached','App\\Post',1,'App\\Tag',1,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 01:48:20','2020-07-23 01:48:20','[]','{\"can_view\":true,\"can_create\":true}'),(60,'911be94b-071c-4bf5-aa24-43577b443107',1,'Update Attached','App\\Tag',1,'App\\Post',8,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 01:50:41','2020-07-23 01:50:41','[]','{\"can_view\":true,\"can_create\":true}'),(61,'911bea63-8da1-433f-ae2f-4fbe99553c2e',1,'Update Attached','App\\Post',8,'App\\Tag',2,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 01:53:45','2020-07-23 01:53:45','{\"can_view\":0,\"can_create\":0}','{\"can_view\":true,\"can_create\":false}'),(62,'911bedc2-8715-41a5-ba96-d0a1581f14a7',1,'Update Attached','App\\Post',8,'App\\Tag',2,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 02:03:10','2020-07-23 02:03:10','{\"can_view\":1,\"can_create\":0}','{\"can_view\":true,\"can_create\":true}'),(63,'911bedfe-6aab-43cb-a24a-91fb6b1edd3a',1,'Update Attached','App\\Tag',2,'App\\Post',2,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 02:03:50','2020-07-23 02:03:50','{\"can_view\":0,\"can_create\":0}','{\"can_view\":true,\"can_create\":false}'),(64,'911bef85-5393-4c79-aba7-eaee047f3f8a',1,'Update Attached','App\\Tag',1,'App\\Post',2,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 02:08:06','2020-07-23 02:08:06','{\"can_view\":0,\"can_create\":0}','{\"can_view\":true,\"can_create\":false}'),(65,'911bf06e-a91c-4217-af82-cb5e4363ad2b',1,'Update Attached','App\\Tag',1,'App\\Post',2,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 02:10:39','2020-07-23 02:10:39','{\"can_view\":1,\"can_create\":0}','{\"can_view\":true,\"can_create\":true}'),(66,'911bfbe8-85f8-4a88-8de9-07d7aac37420',1,'Update Attached','App\\Tag',1,'App\\Post',2,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 02:42:44','2020-07-23 02:42:44','{\"can_view\":1,\"can_create\":1}','{\"can_view\":true,\"can_create\":true}'),(67,'911bfbeb-550a-4796-9660-285790f82330',1,'Update Attached','App\\Tag',1,'App\\Post',2,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 02:42:46','2020-07-23 02:42:46','{\"can_view\":1,\"can_create\":1}','{\"can_view\":false,\"can_create\":true}'),(68,'911bfcbe-79ef-47bb-aac5-12853cbf500d',1,'Update Attached','App\\Tag',1,'App\\Post',2,'Illuminate\\Database\\Eloquent\\Relations\\Pivot',NULL,'','finished','','2020-07-23 02:45:04','2020-07-23 02:45:04','{\"can_view\":0,\"can_create\":1}','{\"can_view\":false,\"can_create\":true}');
/*!40000 ALTER TABLE `action_events` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2018_01_01_000000_create_action_events_table',1),(3,'2019_05_10_000000_add_fields_to_action_events_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2020_07_15_101919_create_posts_table',1),(6,'2020_07_15_104220_add_more_posts_columns',1),(7,'2020_07_15_120720_alter_posts_table',1),(8,'2020_07_15_133747_create_tags_table',1),(9,'2020_07_16_055036_create_post_tag_table',1),(11,'2020_07_20_131714_alter_users_table',2),(12,'2020_07_23_063514_alter_post_tag_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_tag_post_id_foreign` (`post_id`),
  KEY `post_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (1,2,2,1,0),(2,2,1,0,1),(3,3,3,0,0),(4,8,1,1,1),(5,8,2,1,1),(6,1,1,1,1);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` datetime DEFAULT NULL,
  `publish_until` datetime DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,3,'Laravel REST API Tutorial','<div>Building RESTFUL API using laravel</div>','2020-07-17 16:00:00','2020-07-24 16:00:00',1,'tutorials','2020-07-19 02:10:00','2020-07-19 09:52:56'),(2,2,'Laravel Nova','<div>Nova Laravel tutorial on laracats</div>','2020-07-17 16:00:00','2020-07-25 16:00:00',1,'news','2020-07-19 02:10:51','2020-07-19 09:58:04'),(3,4,'Socket.io Tutorial','<div>Node server uses socket.io to do real time work.</div>','2020-07-19 16:00:00','2020-07-28 16:00:00',1,'tutorials','2020-07-18 09:54:53','2020-07-21 08:14:22'),(4,4,'Golang Tutorial','<div>Building RESTFUL API using Golang</div>','2020-07-19 16:00:00','2020-07-23 16:00:00',1,'tutorials','2020-06-25 10:39:18','2020-07-19 10:47:07'),(5,4,'C++ Game Developmemt','<div>Game development using C++</div>','2020-07-20 16:00:00','2020-07-31 16:00:00',0,'tutorials','2020-07-18 10:40:05','2020-07-21 01:37:47'),(6,5,'Action Model Optimization','<div>Action related models optimizations need some lookups</div>','2020-07-19 16:00:00','2020-07-20 16:00:00',0,'news','2020-07-19 11:06:22','2020-07-21 01:37:47'),(7,3,'Latravel Nova Custom Tool','<div>Custom tool is possible in Laravel Nova</div>','2020-07-20 06:00:00','2020-07-22 06:00:00',0,'tutorials','2020-07-20 13:20:40','2020-07-20 13:26:55'),(8,1,'Vue and Laravel','<div>Fullstack project development using Vue.js&nbsp; and Laravel.</div>','2020-07-30 06:00:00','2020-07-31 06:00:00',1,'tutorials','2020-07-21 05:00:14','2020-07-21 05:00:14');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Laravel','2020-07-18 02:08:58','2020-07-18 02:08:58'),(2,'Nova','2020-07-18 02:09:03','2020-07-18 02:09:03'),(3,'NodeJs','2020-07-19 09:55:16','2020-07-19 09:55:16'),(4,'C++','2020-07-20 13:32:51','2020-07-20 13:32:51');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('Admin','Merchant','Vendor','Normal') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Monir Ahmed','monir@fastsolutioninc.com',NULL,'$2y$10$om4Gcmbyua/.tKqnmazbveTrOem27FChD6pTQreq2yrXzLB6qgpGS','64sRVhma9zrGSGcF6SLz7qydg54lAOgPxsZxWfaB.jpeg','Admin',NULL,'2020-07-18 02:03:38','2020-07-20 17:52:12'),(2,'Taylor Otwell','taylor.otwell@laravel.com',NULL,'$2y$10$4RbxLpgpGUhqDzloE/tj8uecScfy95GaU2DdydFmIj.PpEWY3uILK','fQmVUKQa39R2zPYSuqYCpBEf7tWACXUnSAuBuli2.jpeg','Merchant',NULL,'2020-07-18 02:04:50','2020-07-20 17:47:56'),(3,'Maisie Williams','maisie.williams@gmail.com',NULL,'$2y$10$x3ycJAnHo4u3B1u6eXlUkObfXL7wUmbzuEDrKvdnKaTP/IrZkVOKG','YXTtnPuo2UXKGHBe4sVxLK3lpU3lQHufx9pbMdVa.png','Vendor',NULL,'2020-07-18 02:05:11','2020-07-20 17:51:07'),(4,'Jannatun Nayeem Kumu','kumu2@jannat.com',NULL,'$2y$10$rGh1o/zSBYgAb6rO61WuC.kApIldDs.wedhGMpe.O4AR1LzIYTV2q','6aHBZLqMbbRvecBB7N5H5gnfbFRJGY5O8qmCt8BM.jpeg',NULL,NULL,'2020-07-18 02:05:47','2020-07-20 17:55:36'),(5,'Sakhawat H Sumit','sumit@gmail.com',NULL,'$2y$10$iKxMbk2ULz68LPQ/NLiMBedKKvvVF.7AoVFP2L1eGnu4pEKOU/TRW','CxGABrBKlc8Yj4igifyRrY2gY7uJ9iAQBoHZWRVg.png','Normal',NULL,'2020-07-18 02:06:18','2020-07-20 17:51:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

