create database Truely_Terrific_Appetite_By_Francesca_Worsnop;

use Truely_Terrific_Appetite_By_Francesca_Worsnop;
create table Manager(MId int primary key, Name varchar(100), Shift varchar(100), Salary double);

insert into Manager(MId, Name, Shift, Salary) values(1001, 'Max Purnell', 'Weekend (Evenings)', 1800.00);
insert into Manager(MId, Name, Shift, Salary) values(1002, 'Sophie Southwell', 'Weekend (Afternoons)', 1550.00);
insert into Manager(MId, Name, Shift, Salary) values(1003, 'Hannah Edmunds', 'Weekend (Mornings)', 1300.00);
insert into Manager(MId, Name, Shift, Salary) values(1004, 'Emily Worsnop', 'Wednesday,Thursday,Friday', 1600.00);
update Manager set Shift = 'Wednesday (AM), Thursday (PM), Friday (PM)' where MId = 1004;
insert into Manager(MId, Name, Shift, Salary) values(1005, 'Lottie Lee', 'Monday (PM), Thursday (AM), Friday(AM)', 1500.00);
insert into Manager(MId, Name, Shift, Salary) values(1006, 'Katie Lucas', 'Monday (AM), Tuesday (AM), Wednesday(PM)', 1500.00);
insert into Manager(MId, Name, Shift, Salary) values(1007, 'Lottie Lee', 'Tuesday (PM), Saturday (PM)', 1500.00);
insert into Manager(MId, Name, Shift, Salary) values(1008, 'Dan Shaw', 'Friday (PM), Sunday (PM)', 1400.00);
insert into Manager(MId, Name, Shift, Salary) values(1009, 'Sharon Purnell', 'Thursday (PM), Saturday (AM)', 1200.00);
insert into Manager(MId, Name, Shift, Salary) values(1010, 'Matty Eastwood', 'Friday (AM), Sunday (AM)', 1400.00);

select * from Manager

/*Average salary of manager(*/
select avg(Salary) as ASalary from Manager;


