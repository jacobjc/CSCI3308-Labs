1.) select * from store order by sname;
2.) select * from store order by sname limit 3;
3.) select * from store order by sname DESC limit 3;
4.) select *  from store where price>=1;
5.) select price*qty as extended_price from store;
6.) select sum(price*qty) from store;
7.) select *  from course where department_id=1;
8.) select sum(count) from enrollment;
9.) select count(id) from department;
10.) update course set department_id=3 where cname='112';
11a.) alter table enrollment add drop_count text;
11b.) alter table enrollment alter column drop_count type varchar;
11c.) alter table enrollment alter column drop_count type integer using drop_count::integer;
12.) update enrollment set drop_count=(count*(0.2));
     select * from enrollment;
/*
output:

 id | count | drop_count 
----+-------+------------
  1 |    40 |          8
  2 |    15 |          3
  3 |    10 |          2
  4 |    12 |          2
  5 |    60 |         12
  6 |    14 |          3
  7 |   200 |         40
*/

13.) select concat('CSC',cname) from course where department_id=1;
14.) select course.cname, department.name, enrollment.count from course
join department on department.id=course.department_id
join enrollment on enrollment.id=course.id
order by name, cname;
/*
output:

 cname | name | count 
-------+------+-------
 111   | CHM  |   200
 111   | CSC  |    40
 231   | CSC  |    12
 250   | CSC  |    10
 112   | EGR  |    15
 250   | EGR  |    14
 111   | MTH  |    60
*/
15a.) alter table enrollment drop column drop_count;
15b.) delete from enrollment;
15c.) drop table enrollment;
15d.) create table new_enrollment(
	id serial primary key,
	department_name varchar not null,
	count integer not null,
	drop_count integer
15e.) insert into new_enrollment(department_name, count, drop_count)
values
('CSC',100,20),
('CHM',120,5),
('MTH',90,3),
('EGR',122,12),
('MTH',68,6),
('CSC',100,3),
('CHM',30,1);
select department_name from new_enrollment order by count desc limit 1;