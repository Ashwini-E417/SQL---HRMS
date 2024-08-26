-- create a function to calculate the percentage of hike candidate is expecting.
delimiter //
create function percentage (ctc float,ectc float)
returns decimal (10,2)
deterministic
begin
	declare temp1 float default 0;
    declare temp2 decimal(10,2) default 0;
	-- select 600-350,250/350*100;
    set temp1=ectc-ctc;
    set temp2=temp1/ctc*100;
    return temp2;
end//

select eid,ename,ctc,ectc,percentage(ctc,ectc) as Hike from candidate order by eid; 