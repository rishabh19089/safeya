USE b1hjbod5x53zcqbm37to;

CREATE TABLE `warden` (
  `ID` INT primary KEY NOT NULL,
  `last_checked` DATETIME NOT NULL,
  `hostel_no` INT NOT NULL
);

INSERT INTO `warden` (`ID`,`last_checked`,`hostel_no`) VALUES (11,"2021-02-07 15:37:15",3),(12,"2021-02-03 01:16:29",2),(13,"2021-02-15 20:46:47",3),(14,"2021-02-02 05:06:52",4),(15,"2021-02-01 03:21:10",2),(16,"2021-02-18 14:54:04",2),(17,"2021-02-02 10:13:03",1),(18,"2021-02-09 19:52:33",2),(19,"2021-02-11 11:07:35",1),(20,"2021-02-11 08:27:55",4);
