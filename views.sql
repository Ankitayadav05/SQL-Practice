use sqlCM;
create view view2 as select * from employee2 where (id%2)=0;
select * from view2;
create or replace view view2 as select * from employee2 where (id%2)!=0;
select * from view2;
drop view view2;
