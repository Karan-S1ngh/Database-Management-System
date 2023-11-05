/*
Create DEPARTMENT Table with columns Department_Id,
Name,Location_ID. Constraints on DEPARTMENT table, Department_Id
Primary Key,Location_Id references LOCATION table.
*/
create table LOCATION  
( 
    Location_Id varchar2(10) primary key, 
    Location_name varchar2(15) 
)
create table DEPARTMENT 
( 
    Department_Id number(5) primary key, 
    Name varchar2(10), 
    Location_Id varchar2(10) references LOCATION(Location_Id) 
)





/*
TABLE QUESTION
*/
create table EMPLOYEE 
(
    EMPLOYEE_ID number(4) primary key,
    LAST_NAME varchar(10),
    FIRST_NAME varchar(10),
    MIDDLE_NAME varchar(10),
    JOB_ID number(3),
    MANAGER_ID number(4),
    HIRE_DATE date,
    SALARY number(7),
    COMM number(4),
    DEPARTMENT_ID number(2)
);

insert into EMPLOYEE values(7369,'SMITH','JOHN','Q',667,7902,'17-DEC-1984',800,NULL,20);
insert into EMPLOYEE values(7499,'ALLEN','KEVIN','J',670,7698,'20-FEB-1985',1600,300,30);
insert into EMPLOYEE values(7505,'DOYLE','JEAN','K',671,7839,'04-APR-1985',2850,NULL,30);
insert into EMPLOYEE values(7506,'DENNIS','LYNN','S',671,7839,'15-MAY-1985',2750,NULL,30);
insert into EMPLOYEE values(7507,'BAKER','LESLIE','D',671,7839,'10-JUN-1985',2200,NULL,40);
insert into EMPLOYEE values(7521,'WARK','CYNTHIA','D',670,7698,'22-FEB-1985',1250,500,30);


/*1ST QUESTION*/
select * from EMPLOYEE; 
/* List all job details.*/
select JOB_ID, MANAGER_ID, DEPARTMENT_ID 
from EMPLOYEE

/List out the employee id, name in descending order based on salary/
select EMPLOYEE_ID, LAST_NAME, FIRST_NAME, SALARY
from EMPLOYEE 
order by SALARY DESC;


/*2ND QUESTION*/
/* List out first name,last_name,salary, commission for all employees. */
select FIRST_NAME, LAST_NAME, SALARY, COMM
from EMPLOYEE
    
/*. List out the employee’s annual salary with their names only.*/
select FIRST_NAME, SALARY*12 as ANNUAL_SALARY
from EMPLOYEE


/*3RD QUESTION*/
/*List out the employees who are working in department 20. */
select * from EMPLOYEE
where DEPARTMENT_ID=20;

/*List out the employees who are earning salary between 3000 and 4500.*/
select * from EMPLOYEE
where SALARY between 3000 and 4500   /*where (3000<=SALARY<=4500) cannot do this*/ 


/*4TH QUESTION*/
/*List out the employees who are working in department 10 or 20.*/
select * from EMPLOYEE
where DEPARTMENT_ID=10 or DEPARTMENT_ID=20;   /*where DEPARTMENT_ID=10 or 20 won't work*/

/*List out the employees whose name starts with “S”.*/
select * from EMPLOYEE 
where FIRST_NAME like 'S%';

/*List out the employees whose name length is 4 and start with “S” */
select * from EMPLOYEE 
where FIRST_NAME like 'J___';
