-- Stored Procedure to get details of selected,joined,backout candidates

delimiter //
create procedure joining(in status varchar(20))
begin
	select Name,position,Company,doj,ctc_offered from Cand_details c inner join join_company j where c.eid=j.eid and join_status=status;
end//

call joining("joined");
call joining("backout");