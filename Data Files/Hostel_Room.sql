#DROP TABLE `Hostel_Room`;

CREATE TABLE if not exists `Hostel_Room` (
  `Location_ID` mediumint primary key,
  `Request_Active` mediumint NOT NULL,
  `Description` TEXT default NULL,
  `Last_Cleaned` datetime NULL,
   CHECK(0<=Request_Active<=2)
);

INSERT INTO `Hostel_Room` (`Location_ID`,`Request_Active`,`Description`,`Last_Cleaned`) VALUES (1,1,"Lorem","2020-11-10 20:59:44"),(2,1,"Lorem ipsum","2020-06-03 05:50:48"),(3,1,"Lorem ipsum dolor sit amet,","2020-10-01 01:31:49"),(4,1,"Lorem ipsum","2020-10-21 07:45:44"),(5,0,"Lorem ipsum dolor sit","2020-06-22 03:59:36"),(6,1,"Lorem ipsum","2020-11-28 04:57:01"),(7,0,"Lorem ipsum dolor sit","2021-01-04 14:55:02"),(8,0,"Lorem ipsum","2021-01-13 15:30:42"),(9,0,"Lorem ipsum dolor","2020-07-09 16:00:47"),(10,0,"Lorem","2020-04-23 21:10:08");
INSERT INTO `Hostel_Room` (`Location_ID`,`Request_Active`,`Description`,`Last_Cleaned`) VALUES (11,0,"Lorem ipsum dolor sit","2020-09-14 07:55:21"),(12,0,"Lorem ipsum","2020-06-19 13:34:42"),(13,1,"Lorem ipsum dolor sit amet,","2021-01-02 17:54:07"),(14,0,"Lorem ipsum dolor sit","2020-08-01 23:51:28"),(15,1,"Lorem ipsum dolor","2020-12-24 11:39:24"),(16,0,"Lorem","2020-08-01 14:56:17"),(17,0,"Lorem ipsum dolor sit","2020-08-06 09:50:27"),(18,1,"Lorem ipsum dolor","2020-07-26 03:15:58"),(19,1,"Lorem ipsum dolor sit","2020-10-10 17:37:13"),(20,0,"Lorem ipsum dolor sit","2020-09-09 15:45:56");
INSERT INTO `Hostel_Room` (`Location_ID`,`Request_Active`,`Description`,`Last_Cleaned`) VALUES (21,0,"Lorem ipsum dolor","2020-06-30 20:57:13"),(22,0,"Lorem","2020-10-18 15:24:49"),(23,0,"Lorem ipsum dolor sit","2020-05-14 16:49:28"),(24,0,"Lorem","2020-03-12 21:16:47"),(25,0,"Lorem ipsum dolor sit","2020-12-09 18:04:26"),(26,1,"Lorem ipsum","2021-01-11 02:41:37"),(27,1,"Lorem ipsum","2020-11-03 02:14:32"),(28,1,"Lorem ipsum dolor sit","2020-12-19 15:04:07"),(29,1,"Lorem ipsum dolor sit amet,","2020-12-02 10:43:37"),(30,1,"Lorem ipsum dolor sit amet,","2020-02-25 00:37:00");
INSERT INTO `Hostel_Room` (`Location_ID`,`Request_Active`,`Description`,`Last_Cleaned`) VALUES (31,0,"Lorem ipsum dolor","2020-05-29 09:10:07"),(32,0,"Lorem ipsum","2020-08-23 06:10:13"),(33,0,"Lorem","2020-03-06 03:07:15"),(34,1,"Lorem ipsum dolor","2020-09-10 15:53:20"),(35,0,"Lorem ipsum","2020-12-17 06:39:27"),(36,0,"Lorem ipsum dolor sit amet,","2020-10-10 04:13:01"),(37,1,"Lorem ipsum dolor","2021-02-09 05:24:13"),(38,1,"Lorem ipsum dolor sit","2020-03-28 03:26:15"),(39,1,"Lorem","2020-08-24 07:41:51"),(40,0,"Lorem ipsum","2020-03-26 02:24:26");
INSERT INTO `Hostel_Room` (`Location_ID`,`Request_Active`,`Description`,`Last_Cleaned`) VALUES (41,0,"Lorem ipsum dolor sit amet,","2020-12-01 21:26:39"),(42,1,"Lorem","2021-01-23 10:45:56"),(43,0,"Lorem ipsum dolor sit","2020-04-25 02:15:28"),(44,1,"Lorem ipsum dolor sit amet,","2021-02-04 07:41:24"),(45,0,"Lorem","2020-11-19 16:05:22"),(46,0,"Lorem ipsum dolor","2020-04-25 17:52:50"),(47,0,"Lorem ipsum dolor sit amet,","2021-01-17 12:44:10"),(48,1,"Lorem ipsum dolor sit","2020-11-02 16:59:56"),(49,1,"Lorem ipsum dolor sit","2020-06-13 23:28:48"),(50,1,"Lorem","2020-05-27 16:50:13");
INSERT INTO `Hostel_Room` (`Location_ID`,`Request_Active`,`Description`,`Last_Cleaned`) VALUES (51,0,"Lorem ipsum dolor sit amet,","2021-01-17 12:54:12"),(52,0,"Lorem ipsum dolor sit amet,","2021-01-26 10:17:22"),(53,0,"Lorem ipsum dolor sit","2020-07-02 06:23:13"),(54,1,"Lorem ipsum dolor sit","2021-02-15 00:09:09"),(55,1,"Lorem ipsum","2020-05-25 14:48:34"),(56,0,"Lorem ipsum dolor sit","2020-04-05 04:11:36"),(57,0,"Lorem ipsum dolor sit","2021-02-18 01:17:19"),(58,1,"Lorem ipsum dolor","2020-08-17 13:10:38"),(59,1,"Lorem ipsum dolor sit amet,","2020-10-09 19:45:21"),(60,1,"Lorem ipsum","2020-10-28 10:44:22");
INSERT INTO `Hostel_Room` (`Location_ID`,`Request_Active`,`Description`,`Last_Cleaned`) VALUES (61,1,"Lorem","2020-09-15 04:39:28"),(62,0,"Lorem ipsum dolor sit amet,","2020-05-23 03:52:54"),(63,1,"Lorem ipsum dolor sit","2020-06-04 15:45:30"),(64,1,"Lorem ipsum","2020-10-02 23:18:03"),(65,0,"Lorem ipsum dolor sit","2020-09-18 07:53:14"),(66,1,"Lorem ipsum","2020-09-30 15:16:30"),(67,1,"Lorem ipsum","2020-12-16 22:47:56"),(68,0,"Lorem","2020-12-12 12:22:15"),(69,0,"Lorem ipsum dolor sit","2020-11-23 11:04:58"),(70,1,"Lorem ipsum dolor","2020-10-21 03:55:19");
INSERT INTO `Hostel_Room` (`Location_ID`,`Request_Active`,`Description`,`Last_Cleaned`) VALUES (71,0,"Lorem ipsum dolor sit amet,","2021-01-09 10:03:25"),(72,0,"Lorem ipsum dolor sit amet,","2021-02-06 05:33:40"),(73,0,"Lorem ipsum dolor sit","2020-04-14 21:17:59"),(74,0,"Lorem","2020-10-28 09:41:21"),(75,0,"Lorem ipsum dolor","2020-09-10 02:11:24"),(76,0,"Lorem ipsum dolor sit","2020-12-08 04:34:52"),(77,0,"Lorem ipsum dolor sit","2020-07-28 13:01:16"),(78,0,"Lorem ipsum dolor","2020-09-22 19:45:50"),(79,1,"Lorem ipsum dolor sit amet,","2020-06-11 20:23:40"),(80,1,"Lorem ipsum dolor","2020-09-05 14:34:21");
INSERT INTO `Hostel_Room` (`Location_ID`,`Request_Active`,`Description`,`Last_Cleaned`) VALUES (81,1,"Lorem ipsum dolor sit amet,","2020-09-14 02:53:30"),(82,1,"Lorem ipsum dolor","2021-02-14 11:08:14"),(83,1,"Lorem ipsum dolor","2020-08-16 00:23:29"),(84,0,"Lorem ipsum dolor","2020-06-17 23:17:24"),(85,0,"Lorem","2020-08-19 18:13:25"),(86,0,"Lorem ipsum dolor sit amet,","2020-07-10 04:44:21"),(87,0,"Lorem ipsum dolor sit","2020-04-21 14:25:10"),(88,1,"Lorem ipsum","2020-04-29 16:59:58"),(89,0,"Lorem","2021-01-19 07:17:27"),(90,1,"Lorem","2020-10-12 15:43:46");
INSERT INTO `Hostel_Room` (`Location_ID`,`Request_Active`,`Description`,`Last_Cleaned`) VALUES (91,1,"Lorem ipsum","2020-05-20 09:24:47"),(92,1,"Lorem ipsum","2020-07-17 08:01:04"),(93,1,"Lorem ipsum dolor","2020-10-05 23:39:14"),(94,1,"Lorem ipsum dolor sit amet,","2020-08-31 18:08:47"),(95,0,"Lorem ipsum dolor","2020-03-21 22:26:52"),(96,1,"Lorem ipsum dolor","2020-11-18 00:33:11"),(97,0,"Lorem ipsum dolor","2021-01-09 02:00:24"),(98,1,"Lorem ipsum dolor sit amet,","2020-06-14 16:36:00"),(99,0,"Lorem ipsum dolor sit amet,","2020-09-12 04:43:08"),(100,0,"Lorem ipsum dolor sit","2020-04-15 20:40:00");
