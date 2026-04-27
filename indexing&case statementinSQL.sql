use sqlcm;
create index index5 on course(id,name);
drop index index5 on course;

create table product (
product_id int ,
name varchar(100),
rating varchar(100)
);
insert into product values(1,'p1',5);
insert into product values(2,'p2',6);
insert into product values(3,'p3',10);
insert into product values(4,'p4',3);
insert into product values(5,'p5',6);
select * from product;
select product_id,name,rating,
case 
when rating>5 then 'good'
when rating<5 then 'bad'
else 'average'
end feedback
from product;