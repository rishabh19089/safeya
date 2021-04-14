#database name change here
use bn2buig34duyzy4zkxh8;

ALTER TABLE `complaints` 
CHANGE COLUMN `Category` `Category` TINYINT NOT NULL ,
CHANGE COLUMN `Rating` `Rating` TINYINT NULL DEFAULT NULL ,
CHANGE COLUMN `Resolved` `Resolved` TINYINT NOT NULL ;

alter table `hostel_room`
change column `Request_Active` `Request_Active` TINYINT NOT NULL;

alter table `institute_admins`
change column `Age` `Age` TINYINT NOT NULL,
change column `Gender` `Gender` TINYINT NOT NULL,
change column `Designation` `Designation` TINYINT NOT NULL;

alter table `Location`
change column `Request_Active` `Request_Active` TINYINT NOT NULL;

alter table `security`
change column `Age` `Age` TINYINT NOT NULL,
change column `Gender` `Gender` TINYINT NOT NULL,
change column `Temperature` `Temperature` TINYINT NOT NULL;

alter table `students`
change column `Age` `Age` TINYINT NOT NULL,
change column `Gender` `Gender` TINYINT NOT NULL;

alter table `workers`
change column `Age` `Age` TINYINT NOT NULL,
change column `Gender` `Gender` TINYINT NOT NULL,
change column `Duty` `Duty` TINYINT NOT NULL,
change column `Temperature` `Temperature` TINYINT NOT NULL,
change column `num_complaints` `num_complaints` TINYINT NOT NULL;





