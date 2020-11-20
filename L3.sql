create table employee( 
 empid CHAR(4) ,
 name CHAR(10) not null, 
 designation CHAR(30) not null,
 dob date not null,
 salary numeric
 );
 
 insert into employee(empid,name,designation,dob,salary)
values("em1","Ash","MD","1982-4-11","50000"),
("em2","Bas","AG","1970-8-6","45380");

create table employdetails(
sex char(1),
nationality char(10),
gno int,
primary key (gno),
empid char(4) references employee(empid)
);


insert into employdetails(sex,nationality,gno,empid)
values("M","Indian","30","em2"),
("M","Italian","43","em5");

select * from employee where
empid in (select empid from employdetails);


select * from employee where 
empid not in(select empid from employdetails);
