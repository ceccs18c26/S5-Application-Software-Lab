create table employee( 
 empid CHAR(5) ,
 name CHAR(10) NOT NULL, 
 designation CHAR(30) NOT NULL,
 salary NUMERIC
 );

create table employdetails(
sex CHAR(1),
nationality CHAR(10),
gno INT PRIMARY KEY,
empid CHAR(5) REFERENCES employee(empid)
);

insert into employee(empid,name,designation,salary)
values("e1","Jeff","AO","31250"),
      ("e2","Jo","MO","45380");

insert into employdetails(sex,nationality,gno,empid)
values("M","Indian","27","e2"),
      ("M","Mexican","56","e5");

select * from employee where
empid in (select empid from employdetails);

select * from employee where 
empid not in(select empid from employdetails);
