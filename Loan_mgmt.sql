drop database if exists Loan_Mgmt;
create database Loan_Mgmt;
use Loan_Mgmt;

drop table if exists customer;

drop table if exists Loan;
drop table if exists EMI;
drop table if exists Loan_status;

create table customer(
Id int primary key,
Name varchar(30),
Email varchar(20),
Phone varchar(10),
Address varchar(10));

create table Loan(
loan_id int primary key auto_increment,
amount int,
date date,
loan_type varchar(20));

create table EMI(
Amount int,
balance int,
foreign key(loan_id) references Loan(loan_id));

create table Loan_status(
last_date date,
Fine int,
status enum("Pending", "Fined", "Cleared"),
foreign key(Id) references customer(Id),
foreign key(loan_id) references Loan(loan_id));

insert into customer values(100, "Heena", "heena@gmail.com", '3990947568', 'Jaipur'),
(901, "Nishan", "nishan12@gmail.com", '9036542789', 'Kerala'),
(888, "Jay", "jay1234@gmail.com", '9087654321', 'Chennai');

insert into Loan values(10, 100000, '2022-09-20', 'Home loan'),
(340000, '2022-08-10', 'Education Loan'),
(400000, '2022-09-20', 'Business Loan'),
(5500000, '2022-09-27', 'Education Loan'),
(2000000, '2022-19-28', 'Business Loan')
(340000, '2022-08-10', 'Education Loan');

insert into EMI values(8000, 890000, 11),
(10000, 9000000, 13),
(7000, 1000000, 10);

insert into loan_status('2022-09-09', 0, 'Cleared', 888, 13),
('2022-09-27', 10000, 'Fined' 901, 10);


