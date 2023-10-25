create table customer
(  
    ID varchar(9),  
    Name varchar(20),  
    DOB number(8),  
    Gender varchar(9),  
    PhoneNo number(10),  
    mail varchar(18)  
) 
/*Table created. */

desc customer
/*TABLE CUSTOMER
Column	Null?	   Type
ID	      - 	VARCHAR2(9)
NAME	    - 	VARCHAR2(20)
DOB	      - 	NUMBER(8,0)
GENDER	  - 	VARCHAR2(9)
PHONENO	  - 	NUMBER(10,0)
MAIL	    - 	VARCHAR2(18)
*/

alter table customer ADD address varchar(30) 
/*Table altered. */

desc customer 
/*TABLE CUSTOMER
Column	Null?	   Type
ID	      - 	VARCHAR2(9)
NAME	    - 	VARCHAR2(20)
DOB	      - 	NUMBER(8,0)
GENDER	  - 	VARCHAR2(9)
PHONENO	  - 	NUMBER(10,0)
MAIL	    - 	VARCHAR2(18)
ADDRESS	  - 	VARCHAR2(30)
*/

alter table customer MODIFY (address varchar(50)) 
/*Table altered. */

RENAME customer to Cusinfo 
/*Statement processed. */

drop table Cusinfo 
/*Table dropped. */

insert into customer Values('One','ran',0272006,'Male',12345,'tp@gmail.com') 
/*1 row(s) inserted. */

insert into customer Values('two','run',2262005,'Male',12045,'trfjp@gmail.com') 
/*1 row(s) inserted. */

select * from customer 
/*
ID	NAME	DOB	   GENDER	 PHONENO	MAIL
One	ran	 272006	  Male	 12345	  tp@gmail.com
two	run	 2262005	Male	 12045	  trfjp@gmail.com
*/

update customer set Name='karan' where ID='One'
/*1 row(s) updated. */

select * from customer 
/*
ID	NAME	DOB	     GENDER	 PHONENO	MAIL
One	karan	272006	 Male	   12345	  tp@gmail.com
two	run	  2262005	 Male	   12045	  trfjp@gmail.com
*/

select Name from customer
/*
NAME
karan
run
*/

delete customer where ID='One'
/*1 row(s) deleted. */

select distinct Phoneno from customer
/*
PHONENO
12345
12045
*/

select * from customer where Phoneno IN 12345
/*
ID	NAME	DOB	    GENDER	PHONENO	 MAIL
One	karan	272006	Male	  12345	   tp@gmail.com
*/

select ID as something from customer
/*
SOMETHING
One
Two
*/

select * from CUSTOMER where ID='One' OR ID='Two'
/*
ID	NAME	DOB	     GENDER	 PHONENO	MAIL
One	karan	272006	 Male	   12345	  tp@gmail.com
two	run	  2262005	 Male	   12045	  trfjp@gmail.com
*/

delete from customer
/*2 row(s) deleted. */
