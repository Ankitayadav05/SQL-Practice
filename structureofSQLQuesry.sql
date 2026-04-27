use sqlcm;
create table employee2
(id int ,
name varchar(100),
dep_id int);
create table department(
dep_id int,
name varchar(100));
insert into employee2 values(1,'ram',1);
insert into employee2 values(2,'abc',2);
insert into employee2 values(3,'def',2);
insert into employee2 values(4,'ghi',1);
insert into employee2 values(5,'ijk',3);
insert into department values(1,'hr');
insert into department values(2,'R&D');
insert into department values(3,'Technical');
select *from employee2;
select *from department;
select d.name, count(e.dep_id)no_of_empl from employee2 e left join department d on e.dep_id=d.dep_id
group by d.name
having count(e.id)>=2;
;