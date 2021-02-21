USE b1hjbod5x53zcqbm37to;

CREATE TABLE `checkin` (
  `Security_ID` mediumint  NOT NULL,
  `visitor_id` mediumint PRIMARY KEY,
  foreign key (Security_ID) references Security(Security_ID)
);
