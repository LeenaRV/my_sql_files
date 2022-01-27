create database college;
use college;

create table department(dept_id int primary key,
dname varchar(20),
phone_no int unique);

create table teacher(teacher_id int primary key,
tname varchar(30),
dept_id int,
foreign key(dept_id) references department(dept_id));

alter table teacher add salary int;

desc teacher;

create table course(c_id int primary key,
c_name varchar(20),
credits varchar(10),
dept_id int,
foreign key(dept_id) references department(dept_id)
);


insert into department(dept_id,dname,phone_no) values 
(100,"mechanical",225678);

insert into department(dept_id,dname,phone_no) values (90,"physics",223459);
insert into department(dept_id,dname,phone_no) values (200,"IT",213673);
insert into department(dept_id,dname,phone_no) values (300,"civil",245012);
insert into department(dept_id,dname,phone_no) values (400,"EXTC",289001);
insert into department(dept_id,dname,phone_no) values (500,"Computer",280000);
select * from department;

insert into teacher(teacher_id,tname,dept_id,salary) values (101,"ajay",90,50000);
insert into teacher(teacher_id,tname,dept_id,salary) values (102,"sameer",400,55000);
insert into teacher(teacher_id,tname,dept_id,salary) values (105,"ahruti",200,50000);
insert into teacher(teacher_id,tname,dept_id,salary) values (103,"shaily",200,65000);
insert into teacher(teacher_id,tname,dept_id,salary) values (104,"aman",500,85000);
insert into teacher(teacher_id,tname,dept_id,salary) values (106,"amira",500,95000);
insert into teacher(teacher_id,tname,dept_id,salary) values (107,"shirin",500,80000);
insert into teacher(teacher_id,tname,dept_id,salary) values (108,"leena",200,85000);
insert into teacher(teacher_id,tname,dept_id,salary) values (109,"sonal",300,70000);
insert into teacher(teacher_id,tname,dept_id,salary) values (110,"apeksha",500,71000);
insert into teacher(teacher_id,tname,dept_id,salary) values (111,"ankita",500,65000);
insert into teacher(teacher_id,tname,dept_id,salary) values (112,"selina",300,60000);
insert into teacher(teacher_id,tname,dept_id,salary) values (113,"pranali",300,70000);


insert into course(c_id,c_name,credits,dept_id) values 
(24500,"BE(CIVIL)","5/sem=40",300);

insert into course(c_id,c_name,credits,dept_id) values 
(24501,"B.COM","5/sem=30",90);
insert into course(c_id,c_name,credits,dept_id) values 
(24502,"CONSTRUCTION.MANGT","5/sem=20",300);
insert into course(c_id,c_name,credits,dept_id) values 
(24504,"BCA","5/sem=30",200);
insert into course(c_id,c_name,credits,dept_id) values 
(24503,"M.COM","5/sem=20",90);
insert into course(c_id,c_name,credits,dept_id) values 
(24506,"BE(e&tc)","5/sem=40",400);
insert into course(c_id,c_name,credits,dept_id) values 
(24505,"MCA","5/sem=30",200);
insert into course(c_id,c_name,credits,dept_id) values 
(24508,"BE(mech)","5/sem=40",100);
insert into course(c_id,c_name,credits,dept_id) values 
(24507,"Automation","5/sem=20",400);
insert into course(c_id,c_name,credits,dept_id) values 
(24509,"ME(mech)","5/sem=20",100);
select * from course;
insert into course(c_id,c_name,credits,dept_id) values 
(24510,"B.COM","5/sem=30",90);
select * from course;
insert into course(c_id,c_name,credits,dept_id) values (24511,"datascience","5/sem=30",500);
insert into course(c_id,c_name,credits,dept_id) values (24512,"RDBMS","5/sem=30",500);

create table teaches(teacher_id int,course_id int);
alter table teaches add constraint c11 primary key(teacher_id,course_id);
 alter table teaches add constraint c022 foreign key(teacher_id) references teacher(teacher_id);
 alter table teaches add constraint ccourse1 foreign key(course_id) references course(c_id);


insert into teaches(teacher_id,course_id) values (101,24503);
insert into teaches(teacher_id,course_id) values (102,24506);
insert into teaches(teacher_id,course_id) values (102,24507);
insert into teaches(teacher_id,course_id) values (103,24504);
insert into teaches(teacher_id,course_id) values (105,24505);
insert into teaches(teacher_id,course_id) values (104,24511);
insert into teaches(teacher_id,course_id) values (106,24512);
insert into teaches(teacher_id,course_id) values (107,24511);
insert into teaches(teacher_id,course_id) values (110,24512);
insert into teaches(teacher_id,course_id) values (111,24511);
insert into teaches(teacher_id,course_id) values (107,24511);
insert into teaches(teacher_id,course_id) values (109,24500);
insert into teaches(teacher_id,course_id) values (112,24502);
insert into teaches(teacher_id,course_id) values (113,24500);
insert into teaches(teacher_id,course_id) values (108,24505);

select * from department;
select * from teacher;
select * from course;
select * from teaches;


/*find the names of all teachers in computer department who have salary greater than 70000*/
select t.tname 
from teacher t,department d 
where t.dept_id=d.dept_id
and d.dname="Computer"
and t.salary>70000;


/*find the names of teachers who are working in IT department*/
select t.tname 
from teacher t,department d 
where t.dept_id=d.dept_id
and dname="IT";

/*find record of teacher name "ajay" and "sameer" using in construct*/
select * from teacher t,department d
where t.tname in("ajay","sameer")
and t.dept_id=d.dept_id;




















