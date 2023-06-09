create table student(
reg_no number(10),
t_id varchar(10) not null,
name varchar(20) not null,
age number(3) not null check(age between 1 and 99),
sex varchar(10) not null check(sex in ('M','F')),
bdate date not null,
sem number(1) not null,
contact_no number(10) not null,
mail varchar(30) not null,
cgpa number(4,2) not null,
section varchar(1) not null,
branch varchar(20) not null,
address varchar(40) not null,
passwd varchar(30) not null,
primary key(reg_no));

create table takes(
reg_no number(10),
c_id varchar(10),
grade varchar(1) not null,
attendance number(5,2) not null,
primary key (reg_no,c_id));

create table courses(
c_id varchar(10),
c_name varchar(50) not null,
i_id varchar(10) not null,
primary key(c_id));

create table instructor(
i_id varchar(10),
name varchar(20) not null,
contact_no number(10) not null,
mail varchar(30) not null,
primary key(i_id));

create table feedback(
f_id number(10),
type varchar(15) not null check(type in('Instructor','Course','Portal')),
feedb varchar(200) not null,
reg_no number(10) not null,
primary key(f_id));

create table timetable(
t_id varchar(10),
tble varchar(200) not null,
primary key(t_id));


alter table student add foreign key(t_id) references timetable(t_id);
alter table takes add foreign key(c_id) references courses(c_id);
alter table courses add foreign key(i_id) references instructor(i_id);