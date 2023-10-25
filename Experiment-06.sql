create table customer    
(    
    ID varchar(9) not null,  
    Name varchar(20) not null,    
    DOB date,    
    Gender varchar(9),    
    PhoneNo number(10) not null,    
    mail varchar(18) not null  
)
insert into customer(ID,Name,PhoneNo,mail) values (04,'Suresh','1234567893','sur44@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (06,'Run','1234567895','rn66@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (07,'Saksham','1234567896','sk77@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (01,'Ramesh','1234567890','rm11@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (02,'Rakesh','1234567891','rk22@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (03,'Sarvesh','1234567892','srv33@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (05,'Karan','1234567894','ks55@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (08,'Santosh','1234567897','st88@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (09,'Thomas','1234567898','ts99@gmail.com')
  
select * from customer where Name like'K____' 
/*
ID	NAME	DOB	GENDER	PHONENO	    MAIL
5	  Karan	 - 	 - 	    1234567894	ks55@gmail.com
*/

select * from customer where Name like't%' 
/*no data found */

select * from customer where Name like'T%' 
/*
ID	NAME	  DOB	GENDER	PHONENO	    MAIL
9	  Thomas	 - 	 - 	    1234567898	tj99@gmail.com
*/

select LPAD ('Parma',10,'$') from DUAL
/*
LPAD('Parma',10,'$')
$$$$$Parma
*/

select LPAD ('Parma',5,'$') from DUAL
/*
LPAD('Parma',5,'$')
Parma
*/
  
select RPAD ('Param',5,'$') from DUAL
/*
RPAD('Parma',5,'$')
Parma
*/

select RPAD ('Param',9,'$') from DUAL
/*
RPAD('Parma',9,'$')
Parma$$$$
*/
  
select ltrim ('Karan Singh','Karan') from DUAL 
/*
LTRIM('KARANSINGH','KARAN')
 Singh
*/

select initcap('karansingh') from DUAL 
/*
INITCAP('KARANSINGH')
Karansingh
*/

select initcap('karan singh') from DUAL 
/*
INITCAP('KARANSINGH')
Karan Singh
*/
  
select length('Karan singh') from DUAL 
/*
LENGTH('KARANSINGH')
11
*/

select substr('karan singh',5,6) from DUAL 
/*
SUBSTR('KARANSINGH',5,6)
n sing
*/
  
select count (ID), avg (ID), sum (ID), min (ID), max (ID) from Customer 
/*
COUNT(ID) AVG(ID) SUM(ID) MIN(ID) MAX(ID)
 9         5       45      1       9
*/

select distinct (ID) from Customer order by id 
/*
ID
1
2
3
4
5
6
7
8
9
9 rows selected.
*/
select count (ID),Name from Customer group by name
/*
COUNT(ID)	NAME	  
1	        Ramesh	 
1	        Rakesh	 
1	        Sarvesh	 
1	        Suresh	 
1	        Karan	   
1	        Run	     
1	        Saksham	 
1	        Santosh	
1         Thomas 
9 rows selected.
*/
