-- adding experience column
alter table candidate add exp float;
alter table candidate add constraint uk_ph unique key(ph_num);
alter table candidate modify notice varchar(30);



truncate candidate;
truncate applied_cand;
truncate join_company;

alter table join_company drop constraint eid ;