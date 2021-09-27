--SQL is a standard language for storing, manipulating and retrieving data in databases.

--RDBMS stands for Relational Database Management System.RDBMS is the basis for SQL, and for all modern database systems such as MS SQL Server, IBM DB2, Oracle, MySQL, and Microsoft Access.

-- Variables in SQL
INT;                           -- Whole Numbers
DECIMAL(M,N);                  -- Decimal Numbers - Exact Value
VARCHAR(l);                    -- String of text of length l
BLOB;                          -- Binary Large Object, Stores large data
DATE;                          -- 'YYYY-MM-DD'
TIMESTAMP;                     -- 'YYYY-MM-DD HH:MM:SS'  used for recording event

--CREATE A TABLE 
create table EmployeeInfo(
    EmpId int,
    EmpFirstname varchar(40),
    EmpLastname varchar(40),
    Department varchar(40),
    Salary int

    --primary key(EmpId)    [DELETE THIS LINE BEFORE EXECUTING THE QUERY]
);

--DISPLAY A TABLE
select * from EmployeeInfo;

--DESCRIBE THE VARIABLES OF A TABLE
describe EmployeeInfo;

--DELETE A TABLE
drop table EmployeeInfo;

--INSERING DATA 
insert into EmployeeInfo VALUES(1,'Karan','Mehta','HR',300000);
--Here inside VALUES() we pass parameters set by TABLE EmployeeInfo as
--(EmpId,EmpFirstname,EmpLastname,Department,Salary) we can repeat this for rest of the data sets as well
insert into EmployeeInfo VALUES(2,'Rohit','Sharma','Admin',75000);
insert into EmployeeInfo VALUES(3,'Ankush','Rajput','Account',60000);
insert into EmployeeInfo VALUES(4,'Priyanshi','Sharma','HR',500000);
insert into EmployeeInfo VALUES(5,'Sanket','Gupta' ,'Developer',100000);
insert into EmployeeInfo VALUES(6,'Shruti','Kapoor' ,'Admin',80000);

--DELETE DATA FROM A TABLE
delete from EmployeeInfo;
--DELETE A SPECIFIED DATA FROM THE TABLE
delete from employeeinfo
where EmpId=1 AND Department='HR';


--UPDATE ALL THE DATA OF A COLUMN
update EmployeeInfo
set Department='Accountant'
where Department='Account'; --Here we are updating employee who are in 'Account' dept as 'Accountant' dept.

--FIND ALL THE EMPLOYEES ORDERED BY EMPID IN ASCENDING OR DESECNDING ORDERc
select * from EmployeeInfo
order by EmpId asc;  -- Change [asc/desc] according to requirement 

--FIND ALL THE EMPLOYEES ORDERED BY SALARY WITH THEIR FIRSTNAME IN ASCENDING OR DESECNDING ORDERc
select EmpFirstname,Salary  -- Change [other parameters] according to requirement 
from EmployeeInfo
order by Salary asc; -- Change [asc/desc] according to requirement 

--FIND FIRST THREE(3) EMPLOYEES IN THE TABLE
select * from EmployeeInfo
limit 3;

--FIND THE THIRD HIGHEST SALARY EMPLOYEE
select * from EmployeeInfo 
order by Salary desc
limit 2,1;             --limit(m,n) show n number of rows just after mth row

--FIND ALL THE DISTINCT/DIFFERENT Departments
select distinct Department from EmployeeInfo;

--FIND ALL THE HRs IN THE TABLE
select * from EmployeeInfo 
where Department='HR';

--COUNT THE NUMBER OF HRs
select COUNT(Department)
from EmployeeInfo
where Department='HR';

--GROUP BY: statement often used with aggregate functions (COUNT, MAX, MIN, SUM, AVG) to group the result-set by one or more columns

--FIND THE TOTAL SALARY OF THE EMPLOYEES
select sum(Salary)
from EmployeeInfo
group by Salary;

--FIND THE EMOLOYEES WHO EARN MORE THAN 80,000
select * from EmployeeInfo
where Salary>80000;

--FIND THE NUMBER OF EMOLOYEES WHO EARN MORE THAN 80,000
select count(Salary)
from EmployeeInfo
where Salary>80000;

--FIND ALL THE EMPLOYEE EARNING BETWEEN 60000 to 100000
select * from EmployeeInfo
where Salary BETWEEN 60000 AND 100000;
