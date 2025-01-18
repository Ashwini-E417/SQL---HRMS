-- Stored Procedure to get details of selected,joined,backout candidates

delimiter //
create procedure joining(in status varchar(20))
begin
	select eName,doj,ctc_offered from candidate c inner join join_company j where c.eid=j.eid and join_status=status;
end//

call joining("joined");
call joining("backout");

select * from candidate;
drop procedure joining;
desc candidate;
desc join_company;