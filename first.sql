create database sqlCM;
use sqlCM;
create table students (
  id int primary key,
  name varchar(100) not null,
  marks int
);
select *
from students;
insert into students (id, name, marks)
values(1, 'abc', 90);
insert into students
values (2, 'def', 90);
insert into students
values(3, 100);
drop table students;
create table course (
  id int primary key,
  name varchar(100),
  duration int
);
insert into course
values(1, 'btechcse', 4);
insert into course
values(2, 'it', 4);
insert into course
values(3, 'ece', 4);
create table students (
  id int primary key,
  name varchar(100) not null,
  course_id int,
  foreign key (course_id) references course(id)
);
insert into students
values(1, 'jenny', 1);
insert into students
values(2, 'tonny', 5);
/*since 5 is not in course ka id */
drop table students;
create table students (
  id int primary key,
  name varchar (100) not null,
  age int check (age >= 18),
  college_name varchar(100) default 'IIT',
  course_id int
);
alter table students
add constraint F_key foreign key (course_id) references course (id);
insert into students
values (1, 'jenny', 18, 'MIT', 1);
insert into students
values(2, 'nenny', 19, 'IIT', 2);
select *
from students;
alter table students
  rename column college_name to col_name;
alter table students
add column marks int;
select *
from students;
alter table students drop column marks;
select *
from students;
select *
from course;
truncate table course;
alter table students drop constraint F_key;
update students
set name = 'renny'
where id = 1;
delete from students
where id = 2;
insert into students
values(1, 'abc', 19, 'MIT', 1);
savepoint s1;
insert into students
values(2, 'def', 19, 'MIT', 2);
savepoint s2;
insert into students
values(3, 'ghi', 20, 'MIT', 1);
savepoint s3;
rollback;
insert into students
values(1, 'abc', 19, 'MIT', 1);
commit;
rollback;
select *
from students;
rollback;
select *
from students;
insert into students
values (3, 'ghi', 20, 'MIT', 1);
commit;
rollback;
select *
from students;