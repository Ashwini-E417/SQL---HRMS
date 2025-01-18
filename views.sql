
-- company and job details merge
select j.jid,position,cname,j_loc,j_status from job_details j inner join company c using (cid);
create view jobvacancy as (select j.jid as Job_id,position,cname as Company,j_loc as Location,j_status as Status from job_details j inner join company c using (cid));

select * from jobvacancy;

-- recruiter view
select eid,ename,eloc,notice,position,Company,app_status from candidate c inner join jobvacancy j where c.jid=Job_id;

create view Cand_details as select eid,ename as Name,eloc as Location,notice,position,Company,app_status as Status from candidate c inner join jobvacancy j where c.jid=Job_id;
select * from Cand_details order by eid;