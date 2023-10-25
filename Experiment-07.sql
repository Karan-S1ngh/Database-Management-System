create table customer     
(     
    ID varchar(9) not null,   
    Name varchar(20) not null,     
    DOB date,     
    Gender varchar(9),     
    PhoneNo number(10) not null,     
    mail varchar(18) not null   
)
/*Table created. */

insert into customer(ID,Name,PhoneNo,mail) values (04,'Suresh','1234567893','sur44@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (06,'Run','1234567895','rn66@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (07,'Saksham','1234567896','sk77@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (01,'Ramesh','1234567890','rm11@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (02,'Rakesh','1234567891','rk22@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (03,'Sarvesh','1234567892','srv33@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (05,'Karan','1234567894','ks55@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (08,'Santosh','1234567897','st88@gmail.com')  
insert into customer(ID,Name,PhoneNo,mail) values (09,'Thomas','1234567898','ts99@gmail.com')

select * from customer where ID IN (SELECT ID FROM CUSTOMER WHERE ID>5) ORDER BY ID
/*
select * from customer where ID IN (SELECT ID FROM CUSTOMER WHERE ID>5) ORDER BY ID
ID	NAME	  DOB	GENDER	PHONENO	    MAIL
6	  Run	     - 	 - 	    1234567895	rn66@gmail.com
7	  Saksham	 - 	 - 	    1234567896	sk77@gmail.com
8	  Santosh	 - 	 -      1234567897	st88@gmail.com
9	  Thomas     - 	 - 	    1234567898	ts99@gmail.com
4 rows selected
*/
     
CREATE TABLE CUS_DUPP1(ID VARCHAR(9),NAME VARCHAR(20),DOB DATE,GENDER VARCHAR(9),PHONE NUMBER(10),MAIL VARCHAR(18)) 
/*Table created. */
INSERT INTO CUS_DUPP1 SELECT * FROM CUSTOMER WHERE ID IN(SELECT ID FROM CUSTOMER) 
/*9 row(s) inserted. */
SELECT * FROM CUS_DUPP1 ORDER BY ID 
/*
ID	NAME	  DOB	GENDER	  PHONE	        MAIL
1	  Ramesh	 - 	  - 	  1234567890	rm11@gmail.com
2	  Rakesh	 - 	  - 	  1234567891	rk22@gmail.com
3	  Sarvesh	 - 	  - 	  1234567892	srv33@gmail.com
4	  Suresh	 - 	  - 	  1234567893	sur44@gmail.com
5	  Karan	     - 	  - 	  1234567894	ks55@gmail.com
6	  Run	     - 	  - 	  1234567895	rn66@gmail.com
7	  Saksham	 - 	  - 	  1234567896	sk77@gmail.com
8	  Santosh	 - 	  - 	  1234567897	st88@gmail.com
9	  Thomas     - 	  - 	  1234567898	ts99@gmail.com
9 rows selected.
*/
 
UPDATE CUS_DUPP1 SET ID=ID-1 WHERE ID IN (SELECT ID FROM CUSTOMER WHERE ID>=5)
/*5 row(s) updated. */
SELECT * FROM CUS_DUPP1 ORDER BY ID 
/*
ID	NAME	  DOB	GENDER	  PHONE	      MAIL
1	  Ramesh	 - 	  - 	  1234567890	rm11@gmail.com
2	  Rakesh	 - 	  - 	  1234567891	rk22@gmail.com
3	  Sarvesh	 - 	  - 	  1234567892	srv33@gmail.com
4	  Suresh	 - 	  - 	  1234567893	sur44@gmail.com
4	  Karan	     - 	  - 	  1234567894	ks55@gmail.com
5	  Run	     - 	  - 	  1234567895	rn66@gmail.com
6	  Saksham	 - 	  - 	  1234567896	sk77@gmail.com
7	  Santosh	 - 	  - 	  1234567897	st88@gmail.com
8	  Thomas     - 	  - 	  1234567898	ts99@gmail.com
9 rows selected.
*/
 
DELETE FROM CUS_DUPP1 WHERE ID IN (SELECT ID FROM CUSTOMER WHERE ID>=5) 
/*4 row(s) deleted. */
SELECT * FROM CUS_DUPP1 ORDER BY ID
/*
ID	NAME	  DOB	GENDER	  PHONE	      MAIL
1	  Ramesh	 - 	  - 	  1234567890	rm11@gmail.com
2	  Rakesh	 - 	  - 	  1234567891	rk22@gmail.com
3	  Sarvesh	 - 	  - 	  1234567892	srv33@gmail.com
4	  Suresh	 - 	  - 	  1234567893	sur44@gmail.com
4	  Karan	     - 	  - 	  1234567894	ks55@gmail.com
5 rows selected.
*/
