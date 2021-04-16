#show permissions

show grants for 'Students'@'localhost';
show grants for 'Security'@'localhost';
show grants for 'FMS_Admin'@'localhost';
show grants for 'other'@'localhost';
show grants for 'Higher_Authorities'@'localhost';
show grants for 'Worker'@'localhost';

#show index
SHOW INDEX FROM safeya_dbms.complaints;