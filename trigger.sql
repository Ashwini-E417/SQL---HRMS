-- create a triggger to stores employee id, name,ctc,ectc,notice,job id and application status in action_taken table

create table action_taken (ename varchar(100),ctc float,ectc float, notice varchar(30),jid varchar(20),app_status varchar(20),action_date datetime,action_taken varchar(20));
alter table action_taken rename before_update_insert;
show tables;

delimiter //
create trigger before_update
before update on candidate
for each row
begin
	insert into before_update_insert
    set 
    ename=old.ename,
    ctc=old.ctc,
    ectc=old.ectc,
    notice=old.notice,
    jid=old.jid,
    app_status=old.app_status,
    action_date=now(),
    action_taken="UPDATE";
end//

drop trigger before_update;

select * from candidate;
update candidate set app_status="pending" where eid=4;
select * from before_update_insert;

-- insert trigger
delimiter //
create trigger before_insert
before insert on candidate
for each row
begin
	insert into before_update_insert
    set 
    ename=new.ename,
    ctc=new.ctc,
    ectc=new.ectc,
    notice=new.notice,
    jid=new.jid,
    app_status="pending",
    action_date=now(),
    action_taken="INSERT";
end//

-- drop trigger before_insert;

insert into candidate (ename,ctc,ectc,notice,eloc,jid,exp) value ("Harish Poojary",1200000,1750000,"LWD-25-09-2024","Mumbai","j3",6);

select * from candidate;
select * from before_update_insert;

