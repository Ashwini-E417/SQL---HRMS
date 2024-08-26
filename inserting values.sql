-- candidate table
select * from candidate;

insert into candidate (ename,eloc,ctc,ectc,notice,ph_num,email,jid,doa,app_status,exp) value ("Rahul Sharma","Mumbai",250000,350000,"1 month",9764318264,"rahul@gmail.com","j1","2024-05-24","reject",2);
insert into candidate (eid,ename,eloc,ctc,ectc,notice,ph_num,email,jid,doa,app_status,exp) value (2,"Pratik Gajne","Pune",450000,650000,"LWD-12-08-2024",7946328640,"pratik@gmail.com","j2","2024-06-15","select",4.2);

insert into candidate (ename,eloc,ctc,ectc,notice,ph_num,email,jid,doa,app_status,exp) values 
("Mansi Sharma","Delhi",750000,1000000,"2 month",8765012349,"mansi@gmail.com","j4","2024-04-06","reject",5),
("Priya Rane","Bangalore",650000,850000,"1 month",8945320714,"priya@yahoo.com","j2","2024-05-01","pending",3),
("Hemant Rathod","Pune",105000,1400000,"LWD-26-09-2024",6842397011,"hemant@gmail.com","j3","2024-04-26","pending",1)
;
insert into candidate (eid,ename,eloc,ctc,ectc,notice,ph_num,email,jid,doa,app_status,exp) values
(6,"Tanya Mehta","Bangalore",750000,1200000,"1 month",8523690174,"tanya@gmail.com","j1","2024-07-20","pending",5),
(7,"Preeti Yadav","Delhi",750000,1000000,"1 month",739146028,"priti@redmail.com","j4","2024-07-20","select",4.5),
(8,"Joseph D","Noida",480000,750000,"1 month",9761340280,"jd@yahoo.com","j3","2024-08-20","pending",3),
(9,"Sanjay Rathod","Pune",105000,1400000,"LWD-15-10-2024",7530159846,"sanjay@gmail.com","j2","2024-08-04","pending",7)
;

insert into candidate (ename,eloc,ctc,ectc,notice,ph_num,email,jid,doa,app_status,exp) value ("Sneha Shetty","Bangalore",480000,70000,"LWD-08-09-2024",7610349289,"sneha@gmail.com","j1","2024-08-24","reject",3);
-- company table
select * from company;
insert into company values
("c1","Wipro Ltd","Mumbai"),
("c2","Deloitte","Bangalore"),
("c3","Capgemini","Delhi");

-- job details
select * from job_details;
insert into job_details values
("j1","Full stack java developer","Mumbai","Open","c1"),
("j2","Automation tester","Bangalore","Hold","c2"),
("j3","Devops Engineer","Pune","Close","c1"),
("j4","Python Developer","Delhi","Open","c3");

-- join candidate
select * from join_company;
insert into join_company values (2 ,"j2","2024-08-15",700000 ,"joined");
insert into join_company values (7 ,"j4","2024-06-10",900000 ,"backout");


select j.jid,position,cname from job_details j inner join company c using (cid);