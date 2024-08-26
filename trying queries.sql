select c.eid,ename,position,app_status from candidate c inner join applied_cand a, job_details j where c.eid=a.eid and a.jid=j.jid;
update candidate set ctc=1050000 where eid=5;
update candidate set ectc=720000,ctc=415000 where eid=10;
update candidate set ctc=800000,ectc=1200000 where eid=9;


delete from candidate where eid=11;
delete from candidate where eid=12;
delete from candidate where eid=13;

select * from candidate;
select * from join_company;
select * from company;
select * from job_details;