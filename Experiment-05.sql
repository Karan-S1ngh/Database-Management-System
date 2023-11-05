/* UNIQUE */
create table customers 
(   
    ID number(5) unique, 
    Name varchar(20) not null,   
    DOB date,   
    Gender varchar(9),   
    PhoneNo number(10) not null,   
    mail varchar(18) not null 
)
/*Table created. */

insert into customers(ID,Name,PhoneNo,mail) values (1,'karan',1234567890,'ks@gmail.com')
/*1 row(s) inserted. */

insert into customers(ID,Name,PhoneNo,mail) values (1,'ran',1244567890,'kr@gmail.com')
/*
ORA-00001: unique constraint (SQL_MIKHVAAHPHRMOSWCAKQRDZTPQ.SYS_C00130275927) violated ORA-06512: at "SYS.DBMS_SQL", line 1721
More Details: https://docs.oracle.com/error-help/db/ora-00001
*/

select * from customers 
/*
ID	NAME	  DOB	GENDER	PHONENO	    MAIL
1	karan	  - 	 - 	    1234567890	ks@gmail.com
*/



  
/* NOT NULL */
create table customers   
(    
    ID varchar(9) not null,  
    Name varchar(20) not null,    
    DOB date,    
    Gender varchar(9),    
    PhoneNo number(10) not null   
)
/*Table created. */

insert into customers(ID,Name) values (2,'Rakesh')
/*
ORA-01400: cannot insert NULL into ("SQL_NXQXXAOXSHOVMNJNCAPEIAWEK"."CUSTOMERS"."PHONENO") ORA-06512: at "SYS.DBMS_SQL", line 1721
More Details: https://docs.oracle.com/error-help/db/ora-01400
*/

insert into customers(ID,Name,PhoneNo) values (1,'karan',1234567890)
/*1 row(s) inserted. */

select * from customers 
/*
ID	NAME	  DOB	GENDER	PHONENO	  
1	karan	   - 	   -    1234567890	
*/



  
/* PRIMARY KEY AND DEFAULT */
create table customers   
(    
    ID varchar(9) primary key,  
    Name varchar(20) not null,    
    DOB date,    
    Gender varchar(9),    
    PhoneNo number(10) not null, 
    country varchar(10) default 'India' 
)
/*Table created. */

insert into customers(ID,PhoneNo) values (2,'1234567892')  
/*
ORA-01400: cannot insert NULL into ("SQL_NXQXXAOXSHOVMNJNCAPEIAWEK"."CUSTOMERS"."NAME") ORA-06512: at "SYS.DBMS_SQL", line 1721
More Details: https://docs.oracle.com/error-help/db/ora-01400
*/

insert into customers(ID,Name,PhoneNo) values (1,'Ramesh','1234567890') 
/*1 row(s) inserted. */

select * from customers 
/*
ID	NAME	  DOB	GENDER	PHONENO	    COUNTRY
1	Ramesh	   - 	 - 	    1234567890	India
*/




/* CHECK */
create table customers   
(    
    ID varchar(9) primary key check(ID>2),  
    Name varchar(20) not null,    
    DOB date,    
    Gender varchar(9),    
    PhoneNo number(10) not null, 
    country varchar(10) default 'India' 
)
/*Table created. */

insert into customers(ID,Name,PhoneNo) values (2,'Rakesh','1234567892') 
/*
ORA-02290: check constraint (SQL_NXQXXAOXSHOVMNJNCAPEIAWEK.SYS_C00131160733) violated ORA-06512: at "SYS.DBMS_SQL", line 1721
More Details: https://docs.oracle.com/error-help/db/ora-02290
*/

insert into customers(ID,Name,PhoneNo) values (3,'Suresh', 1234567892) 
/*1 row(s) inserted. */

select * from customers 
/*
ID	NAME	  DOB	GENDER	PHONENO	    COUNTRY
3	Suresh	   - 	 - 	    1234567892	 India
*/




/* FOREIGN KEY */
create table customers   
(    
    ID number(5) primary key,  
    Name varchar(20) not null,    
    DOB date,    
    Gender varchar(9),    
    PhoneNo number(10) not null, 
    country varchar(10) default 'India' 
)
/*Table created. */

create table payment   
(  
    bill number(20),  
    paymentmode varchar(20),  
    p_id number(10) references customers(ID)  
)
/*Table created. */

insert into customers(ID,Name,PhoneNo) values (1,'Ramesh', 1234567890) 
/*1 row(s) inserted. */

insert into customers(ID,Name,PhoneNo) values (2,'Rakesh', 1234567892)
/*1 row(s) inserted. */

insert into customers(ID,Name,PhoneNo) values (3,'Suresh', 1234567892)
/*1 row(s) inserted. */

insert into payment(bill,p_id) values (1111,1)  
/*1 row(s) inserted. */

insert into payment(bill,p_id) values (1131,4)  
/*
ORA-02291: integrity constraint (SQL_NXQXXAOXSHOVMNJNCAPEIAWEK.SYS_C00131161324) violated - parent key not found ORA-06512: at "SYS.DBMS_SQL", line 1721
More Details: https://docs.oracle.com/error-help/db/ora-02291
*/

insert into payment(bill,p_id) values (1121,2)   
/*1 row(s) inserted. */

select * from customers order by ID 
/*
ID	NAME	DOB	GENDER	PHONENO	   COUNTRY
1	Ramesh	 - 	 - 	   1234567890	India
2	Rakesh	 - 	 - 	   1234567892	India
3	Suresh	 - 	 - 	   1234567892	India
*/

select * from payment 
/*
BILL	PAYMENTMODE	 P_ID
1111	     - 	       1
1121	     - 	       2
*/
