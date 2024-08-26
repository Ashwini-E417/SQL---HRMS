create database hrms;
show databases;
use hrms;

-- table creation

-- candidate table
create table candidate (eid int primary key auto_increment, ename varchar(100), eloc varchar(100), ctc float, ectc float, notice varchar(10), ph_num decimal(10),email varchar(50) unique key, jid varchar(20), foreign key (jid) references job_details (jid),doa date, app_status enum ("pending","select","reject"));

/*-- Applied table
create table applied_cand (
eid int, foreign key (eid) references candidate (eid),
jid varchar(20), foreign key (jid) references job_details (jid),
doa date, app_status enum ("pending","select","reject")
);*/

-- company table
create table company (cid varchar(30) primary key,cname varchar(100),c_loc varchar(100));

-- job details
create table job_details(jid varchar(20) primary key, position varchar(50),j_loc varchar(100),j_status enum ("Open","Hold","Close"),cid varchar(30), foreign key (cid) references company (cid));

-- join company
create table join_company(
eid int, foreign key (eid) references candidate (eid),
jid varchar(20), foreign key (jid) references job_details (jid),
doj date,ctc_offered float, join_status enum("selected","joined","backout","drop")
);

show tables;


-- drop table candidate;
-- drop table join_company;


desc candidate;
