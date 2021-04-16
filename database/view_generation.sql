use safeya_dbms;

create view student3 as
select Remarks,Rating,Complaint_ID from complaints;

create view FMS_admin_update_complaint as
select End_time,Resolved,Complaint_ID from complaints;

create view worker1 as
select ID,First_name, Last_name,Age,Gender,Contact_number,Duty,Temperature from workers;

CREATE view complaint_assign as SELECT assigns.Complaint_ID, assigns.FMS_ID, assigns.Worker_ID, complaints.Rating, complaints.Remarks FROM assigns, complaints WHERE complaints.Complaint_ID = assigns.Complaint_ID;

create view currently_working as
select * from workers NATURAL JOIN assignments;
