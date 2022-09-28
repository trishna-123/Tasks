drop database if exists StudentDB;

create database StudentDB;
use StudentDB;

drop table if exists student;

drop table if exists courses;
drop table if exists admin;
drop table if exists payment;

create table student(
StudentId int primary key,
StudentName varchar(30),
Email varchar(20),
Phone varchar(10),
Address varchar(30),
dob date);


create table Admin(
ID int primary key,
Name varchar(20),
Email varchar(20),
Phone varchar(10));

create table payment(
payId int primary key,
payDate date,
fees int,
status varchar(10)
);

create table courses(
course_id int primary key,
courseName varchar(10));

insert into student values(101, "Diksha", "diksha@gmail.com", '9098883334', 'Jharkhand', '1999-02-10'); 
insert into student values(112, "Nishan", "nishan12@gmail.com", '8098456732', 'Agartala', '2000-05-20'); 
insert into student values(21, "Mannat", "mannat34@gmail.com", '3409827634', 'Amritsar', '1998-12-10'); 

insert into admin values( 1, 'Ritesh', 'rit12@gmail.com', '9999999999');
insert into admin values(2, 'Himangshu', 'himangshu@gmail.com', '8888888888');

insert into payment values(1001, '2022-05-10', 70000, 'Pending');
insert into payment values(2001, '2022-03-19', 40000, 'Cleared');
insert into payment values(1003, '2022-10-30', 78000, 'Pending');

insert into courses values(12, 'Java');
insert into courses values(20, 'AWS');
insert into courses values(90, 'DS');

select * from student;

select * from payment;
select * from courses;

