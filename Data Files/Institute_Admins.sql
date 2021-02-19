#DROP TABLE `Institute_Admins`;

CREATE TABLE if not exists`Institute_Admins` (
  `ID` mediumint primary key,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Age` mediumint NOT NULL,
  `Gender` mediumint NOT NULL,
  `Contact_number` varchar(100) NOT NULL,
  `Designation` mediumint NOT NULL,
  CHECK(0<=Gender<=2 and 0<=Designation<=4 and Age>=0)
);

INSERT INTO `Institute_Admins` (`ID`,`First_name`,`Last_name`,`Age`,`Gender`,`Contact_number`,`Designation`) VALUES (1,"Shalaka","Khan",45,1,"+91 7618288150",3),(2,"Arvinda","Ismail",42,2,"+91 0379340202",4),(3,"Atreya","Jain",25,1,"+91 2566658607",3),(4,"Sanchaya","Khan",44,1,"+91 3316411217",2),(5,"Neepa","Khan",50,2,"+91 1950750069",1),(6,"Iraiyavan","Jain",49,0,"+91 9983578294",3),(7,"Parantapa","Patel",44,0,"+91 9746396653",3),(8,"Omanand","Singh",33,0,"+91 5190611154",0),(9,"Prakash","Raj",38,2,"+91 1420846959",1),(10,"Suhrid","Khan",28,2,"+91 4886054287",4);
INSERT INTO `Institute_Admins` (`ID`,`First_name`,`Last_name`,`Age`,`Gender`,`Contact_number`,`Designation`) VALUES (11,"Abhilasha","Jain",31,1,"+91 2858295209",3),(12,"Sujit","Kumar",36,2,"+91 8368834840",4),(13,"Katyayani","Ismail",50,1,"+91 0649267687",1),(14,"Chellamuthu","Raj",43,2,"+91 8008898112",1),(15,"Mugdha","Ismail",45,0,"+91 0303571625",4),(16,"Edhas","Patel",36,2,"+91 1709603723",0),(17,"Bhagirath","Singh",35,1,"+91 1532723350",4),(18,"Shivangi","Raj",32,1,"+91 9350030011",0),(19,"Talat","Khan",38,0,"+91 9578189942",4),(20,"Vibhuti","Khan",38,2,"+91 9952389071",3);
INSERT INTO `Institute_Admins` (`ID`,`First_name`,`Last_name`,`Age`,`Gender`,`Contact_number`,`Designation`) VALUES (21,"Chandrodaya","Khan",41,0,"+91 9311452070",4),(22,"Kanchana","Raj",30,2,"+91 7179152504",3),(23,"Shantipriya","Ismail",43,2,"+91 0532561856",2),(24,"Indukanta","Patel",37,1,"+91 7664595361",4),(25,"Nivrutti","Kumar",46,0,"+91 5014762600",0),(26,"Tariq","Singh",40,0,"+91 9529431886",4),(27,"Rupashi","Ismail",44,0,"+91 5237215103",2),(28,"Gaurang","Ismail",43,0,"+91 3805064219",3),(29,"Akhilesh","Ismail",26,1,"+91 7675837067",4),(30,"Quamar","Patel",28,1,"+91 5028437385",3);
INSERT INTO `Institute_Admins` (`ID`,`First_name`,`Last_name`,`Age`,`Gender`,`Contact_number`,`Designation`) VALUES (31,"Abhyudita","Raj",45,0,"+91 5301606443",2),(32,"Samarendra","Jain",33,1,"+91 5357039012",0),(33,"Vani","Kumar",43,1,"+91 0310884105",3),(34,"Madhukar","Ismail",33,2,"+91 2410467117",0),(35,"Edhas","Kumar",35,2,"+91 9153167996",4),(36,"Chitta","Khan",45,2,"+91 9669377848",3),(37,"Nilima","Ismail",49,1,"+91 6148110884",3),(38,"Kamalnayan","Patel",29,0,"+91 4809759455",3),(39,"Qudamah","Singh",39,1,"+91 0453372416",1),(40,"Ajeeta","Patel",44,2,"+91 3183666188",4);
INSERT INTO `Institute_Admins` (`ID`,`First_name`,`Last_name`,`Age`,`Gender`,`Contact_number`,`Designation`) VALUES (41,"Gagana","Khan",38,0,"+91 9229046734",3),(42,"Punyabrata","Ismail",45,0,"+91 4578546452",4),(43,"Chinthanaichelvan","Patel",48,2,"+91 5153100219",4),(44,"Sultana","Patel",49,1,"+91 8426335424",0),(45,"Tanima","Ismail",39,2,"+91 9953855599",3),(46,"Dakshakanya","Raj",39,1,"+91 3366897796",3),(47,"Phoolan","Khan",39,0,"+91 9612881264",3),(48,"Shamita","Kumar",45,2,"+91 1575668124",4),(49,"Dharmendra","Kumar",27,2,"+91 9174914782",2),(50,"Nagendra","Raj",34,1,"+91 2001786471",2);