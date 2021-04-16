
CREATE USER 'Students'@'localhost' IDENTIFIED BY 'a';
CREATE USER 'FMS_Admin'@'localhost' IDENTIFIED BY 'a';
CREATE USER 'Worker'@'localhost' IDENTIFIED BY 'a';
CREATE USER 'other'@'localhost' IDENTIFIED BY 'a';
CREATE USER 'Security'@'localhost' IDENTIFIED BY 'a';
CREATE USER 'Higher_Authorities'@'localhost' IDENTIFIED BY 'a';



# student grant permissions
grant select on safeya_dbms.location to 'Students'@'localhost';
grant update(First_name,Last_name,Age,Gender,Contact_Number,Last_Health_Check,Year,Location_ID) on safeya_dbms.students to 'Students'@'localhost';
grant update(Remarks,Rating) on safeya_dbms.complaints to 'Students'@'localhost';

#FMS_ADMIN grant permissions
grant ALL on safeya_dbms.assigns to 'FMS_Admin'@'localhost';
grant update(End_time,Resolved),select on safeya_dbms.complaints to 'FMS_Admin'@'localhost';
grant update(First_name,Last_name,Age,Gender,Contact_Number,Salary,Duty,Temperature), select on safeya_dbms.workers to 'FMS_Admin'@'localhost';
grant update(First_name,Last_name,Age,Gender,Contact_Number) on safeya_dbms.institute_admins to 'FMS_Admin'@'localhost';
grant update,select,insert on safeya_dbms.location to 'FMS_Admin'@'localhost';
grant select on safeya_dbms.washroom to 'FMS_Admin'@'localhost';
grant select on safeya_dbms.fms_admin to 'FMS_Admin'@'localhost';
grant select,delete on safeya_dbms.assignments to 'FMS_Admin'@'localhost';


#Worker
grant select,update(First_name,Last_name,Age,Gender,Contact_Number,Duty,Temperature) on safeya_dbms.workers to 'Worker'@'localhost';
grant select on safeya_dbms.assignments to 'Worker'@'localhost';
grant select on safeya_dbms.complaints to 'Worker'@'localhost';
grant select on safeya_dbms.location to 'Worker'@'localhost';
grant update(Image) on safeya_dbms.washroom to 'Worker'@'localhost';

#other 
grant select on safeya_dbms.checkin to 'other'@'localhost';
grant select on safeya_dbms.warden to 'other'@'localhost';

#Security
grant update,insert on safeya_dbms.checkin to 'Security'@'localhost';
grant update,insert on safeya_dbms.visitor to 'Security'@'localhost';

#Higher Authorities
grant ALL on safeya_dbms.* to 'Higher_Authorities'@'localhost';
