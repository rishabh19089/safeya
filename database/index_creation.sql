create index idx_students
on Students(Last_Health_Check);

create index idx_worker
on workers(Last_Assigned,num_complaints);

create index idx_reslovedanddate
on complaints(Resolved,Start_time);

create index idx_complaint_id
on complaints(Complaint_ID);

create index idx_Assign
on assigns(Worker_ID,Complaint_ID);

create index idx_Location
on Location(Last_Cleaned,Request_Active);


