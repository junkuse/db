-- CREATE TABLE

CREATE TABLE EMPLOYEE (
  EMPID NUMBER,
  NAME VARCHAR(255), 
  CITY VARCHAR(255),
  DoB  VARCHAR(255), 
  GENDER VARCHAR(1), 
  DoJ  VARCHAR(255),
  SALARY NUMBER, 
  DEPARTMENT VARCHAR(255)
);

-- INSERT VALUES INTO TABLE 

INSERT INTO EMPLOYEE VALUES (5001, 'Aashish', 'Coimbatore', '21-aug-75', 'M', '09-apr-90', 40000, 'Admin'); 
INSERT INTO EMPLOYEE VALUES (5002, 'Varshith', 'Madurai', '09-apr-70', 'M', '14-jul-99', 50000, 'Acc');
INSERT INTO EMPLOYEE VALUES (5003, 'Dony', 'Delhi', '12-jun-66', 'M', '06-jun-98', 39000, 'Acc');
INSERT INTO EMPLOYEE VALUES (5004, 'Priya', 'Bombay', '15-dec-58', 'F', '13-apr-70', 140000, 'Admin');
INSERT INTO EMPLOYEE VALUES (5005,	'Madhu',	'Delhi',	'14-jul-67',	'F',	'16-jun-78',	39000,	'Acc');
INSERT INTO EMPLOYEE VALUES (5006,	'Lashmi', 	'Bombay',	'11-dec-68',	'F',	'23-apr-71',	100000,	'Prod');
INSERT INTO EMPLOYEE VALUES (5007,	'Arjun',	'Coimbatore',	'21-aug-75',	'M',	'06-AUG-99',	40000,	'Admin');
INSERT INTO EMPLOYEE VALUES (5008,	'Robert',	'Coimbatore',	'09-apr-70',	'M',	'07-DEC-99',	50000,	'Acc');
INSERT INTO EMPLOYEE VALUES (5009,	'Smyth',	'Ooty',	'12-jun-66',	'M',	'05-JAN-05', 39000,	'Acc');
INSERT INTO EMPLOYEE VALUES (5010,	'Mary',	'Salem',	'15-dec-58',	'F',	'09-FEB-01',	140000,	'Admin');
INSERT INTO EMPLOYEE VALUES (5011,	'Rani',	'Vellore', 	'14-jul-67',	'F',	'06-MAR-80',	39000,	'Acc');
INSERT INTO EMPLOYEE VALUES (5012,	'Xavier',	'Trichy',	'11-dec-68',	'F',	'04-MAY-05',	'100000',	'Prod');
INSERT INTO EMPLOYEE VALUES (5013,	'Arjun',	'chennai',	'14-jul-67',	'M',	'09-FEB-01',	140000,	'Acc');

-- SAVE THE INPUT VALUES

COMMIT;

-- VIEW THE TABLE

SELECT *FROM EMPLOYEE;

-- QUERY 1

SELECT NAME FROM EMPLOYEE
WHERE CITY = 'Delhi';

-- QUERY 2

SELECT NAME FROM EMPLOYEE
WHERE SALARY > 40000 ;

-- QUERY 3

SELECT MAX(SALARY) FROM EMPLOYEE;

-- QUERY 4

SELECT NAME FROM EMPLOYEE
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEE) ;

-- QUERY 5

SELECT NAME FROM EMPLOYEE
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEE) ;

-- QUERY 6

SELECT CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12) AS Age FROM DUAL,EMPLOYEE;

-- QUERY 7

SELECT CEIL(MONTHS_BETWEEN(SYSDATE,DoJ)/12) AS EXPERIENCE FROM DUAL,EMPLOYEE;

-- QUERY 8

SELECT NAME FROM EMPLOYEE
WHERE CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12)  = (SELECT MAX(CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12)) FROM DUAL,EMPLOYEE);

-- QUERY 9

SELECT NAME FROM EMPLOYEE
WHERE FLOOR(MONTHS_BETWEEN(SYSDATE,DoB)/12)  = (SELECT MIN(FLOOR(MONTHS_BETWEEN(SYSDATE,DoB)/12)) FROM DUAL,EMPLOYEE);

-- QUERY 10

SELECT FLOOR(MONTHS_BETWEEN(SYSDATE,DoB)/12) FROM DUAL,EMPLOYEE
WHERE SALARY > 50000;

-- QUERY 11

SELECT NAME,FLOOR(MONTHS_BETWEEN(SYSDATE,DoB)/12) FROM DUAL,EMPLOYEE
WHERE SALARY = 100000;

-- QUERY 12

SELECT FLOOR(MONTHS_BETWEEN(SYSDATE,DoB)/12) FROM DUAL,EMPLOYEE
WHERE CITY = 'Bombay';

-- QUERY 13

SELECT NAME,FLOOR(MONTHS_BETWEEN(SYSDATE,DoB)/12) FROM DUAL,EMPLOYEE
WHERE NAME LIKE '%i%';

-- QUERY 14

SELECT NAME FROM EMPLOYEE 
WHERE CITY IN (SELECT CITY FROM EMPLOYEE WHERE DoB = '15-dec-58');

-- QUERY 15

SELECT FLOOR(MONTHS_BETWEEN(SYSDATE,DoB)/12) FROM DUAL,EMPLOYEE
WHERE SALARY < 40000 AND DEPARTMENT = 'Prod';

-- QUERY 16

SELECT CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12) AS Age FROM DUAL,EMPLOYEE
WHERE CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12)  = (SELECT MAX(CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12)) FROM DUAL,EMPLOYEE);

-- QUERY 17

SELECT CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12) AS Age FROM DUAL,EMPLOYEE
WHERE CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12)  = (SELECT MIN(CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12)) FROM DUAL,EMPLOYEE);

-- QUERY 18

SELECT NAME FROM EMPLOYEE 
WHERE CITY IN (SELECT CITY FROM EMPLOYEE WHERE SALARY = 100000);

-- QUERY 19

SELECT CITY,COUNT(*) FROM EMPLOYEE
GROUP BY CITY;

-- QUERY 20

SELECT CITY FROM (SELECT CITY FROM EMPLOYEE GROUP BY CITY ORDER BY COUNT(CITY) DESC)
WHERE ROWNUM <=1;

-- QUERY 21

SELECT NAME FROM EMPLOYEE
WHERE CITY IN (SELECT CITY FROM (SELECT CITY FROM EMPLOYEE GROUP BY CITY ORDER BY COUNT(CITY) DESC) WHERE ROWNUM <=1);

-- QUERY 23

SELECT MAX(SALARY),MIN(SALARY),CEIL(AVG(SALARY)) FROM EMPLOYEE
WHERE SALARY > 40000;

-- QUERY 24 

SELECT NAME FROM EMPLOYEE
WHERE CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12)  = (SELECT MIN(CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12)) FROM DUAL,EMPLOYEE WHERE GENDER = 'M');

-- QUERY 25

SELECT NAME FROM EMPLOYEE
WHERE CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12)  = (SELECT MAX(CEIL(MONTHS_BETWEEN(SYSDATE,DoB)/12)) FROM DUAL,EMPLOYEE  WHERE GENDER = 'F');

-- QUERY 28

SELECT NAME FROM EMPLOYEE
WHERE GENDER = 'M' AND SALARY < (SELECT AVG(SALARY) FROM EMPLOYEE WHERE GENDER = 'F') ;

-- QUERY 29

SELECT NAME FROM EMPLOYEE
WHERE GENDER = 'F' AND SALARY < (SELECT AVG(SALARY) FROM EMPLOYEE WHERE GENDER = 'M') ;

-- QUERY 30

SELECT NAME,SALARY FROM EMPLOYEE 
WHERE SALARY IN (SELECT SALARY FROM EMPLOYEE GROUP BY SALARY HAVING COUNT(*) > 1);



$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

create table emptable(empid int unique,empname varchar(255) not null,designation varchar(255),department varchar(255),salary number,city varchar(255),phonenumber varchar(255),doj date not null,
check ((salary between 5000 AND 150000) AND (
   department LIKE '%Accounts%'
   OR department LIKE '%Computer centre%'
   OR department LIKE '%ECE%'
   OR department LIKE '%EEE%'
   OR department LIKE '%Maths%'
   OR department LIKE '%Main office%'
   ) 
   ));             
   
insert into emptable values(101,'Smith','Manager','Accounts',20000,'Chennai','9290249125','17-DEC-80');
insert into emptable values(407,'Allen','Clerk','Accounts',5000,'Coimbatore','9945533992','09-JUN-81');
insert into emptable values(678,'Scott','Lecturer','ECE',30000,'Trichy','9965542211','01-MAY-80');
insert into emptable values(747,'Jones','Professor','Maths',35000,'Coimbatore','9946673321','06-NOV-1999');
insert into emptable values(690,'Adams','Professor','EEE',50000,'Vellore','9866544332','04-MAY-79');
insert into emptable values(579,'Miller','Lecturer','ECE',25000,'Chennai','9955778890','07-DEC-99');
insert into emptable values(671,'Ram','Asst. Professor','EEE',48000,'Chennai','9877466335','09-OCT-80');
insert into emptable values(745,'Allex','Senior lecturer','ECE',46000,'Trichy','9942266788','06-AUG-99');
insert into emptable values(742,'Arjun','Professor','EEE',48000,'Coimbatore','9977886765','07-DEC-99');
insert into emptable values(749,'Robert','Lecturer','EEE',30000,'Ooty','9866778855','05-JAN-05');
insert into emptable values(845,'Smyth','Clerk','Accounts',9000,'Salem','9900007722','09-FEB-01');
insert into emptable values(762,'Mary','Office asst','Main office',5000,'Vellore','9977554422','06-MAR-80');
insert into emptable values(900,'Rani','Lecturer','ECE',15000,'Trichy','9900887766','04-MAY-05');
insert into emptable values(905,'Xavier','Programmer','Computer centre',5000,'Chennai','9442277558','01-JAN-02');

--Query 1   
select empid from emptable where empname='Robert';  

--Query2
select empname from emptable where department='ECE';

--Query3
select empname from emptable where city='Chennai';

--Query4
select department from emptable where empid=747;

--Query 5
select empname from emptable where phonenumber='9966544332';

--Query6
DELETE FROM emptable WHERE empid=742;

--Query7
select empid,empname,city from emptable where department='ECE' and city='Trichy';

--Query 8
select empid,empname,designation,city from emptable where department!='ECE';

--Query 9
SELECT empname, salary from emptable where salary in (SELECT salary FROM emptable GROUP BY salary HAVING COUNT(salary) > 1);

--Query 10
select sum(salary) from emptable;

--Query11
select department,sum(salary) from emptable group by department;

--Query12
select department,sum(salary) from emptable group by department having (department='ECE');

--Query 13
select avg(salary) from emptable;

--Query 14
select empname,salary-(select avg(salary) from emptable) from emptable;

--query 15
select empname from emptable where salary > (select avg(salary) from emptable);

--query 16
select count(*) from emptable;

--query 17
select count(*) from emptable group by department having (department='ECE');

--query 18
select count(distinct(department)) from emptable;

--query 19
select count(*) from emptable where salary > 30000;

--query 20
select empname,salary from emptable where salary=(select min(salary) from emptable where department='EEE');

--query 21
select empname,salary from emptable where salary=(select max(salary) from emptable where department='ECE');

--query 22
select upper(empname), upper(city) from emptable;

--query 23
select city,length(city) from emptable;

--query 24
alter table emptable add gender varchar(1);

--query 25
update emptable set gender='M' where empid=101;
update emptable set gender='M' where empid=407;
update emptable set gender='M' where empid=678;
update emptable set gender='M' where empid=747;
update emptable set gender='M' where empid=690;
update emptable set gender='M' where empid=579;
update emptable set gender='M' where empid=671;
update emptable set gender='M' where empid=745;
update emptable set gender='M' where empid=742;
update emptable set gender='M' where empid=749;
update emptable set gender='M' where empid=845;
update emptable set gender='F' where empid=762;
update emptable set gender='F' where empid=900;
update emptable set gender='M' where empid=905;

--query 26
alter table emptable add tender varchar(1);
alter table emptable drop column tender;

--query 27
select empname from emptable where empname like '%a%' or empname like '%A%';

--query 28
select empname from emptable where empname not like '%a%' and empname not like '%A%';

--query 29
select empname,salary from emptable where salary between 30000 AND 60000;

--query 30
select empname from emptable where length(empname)=5 and empname like 'Sm%th';

--query 31
select empname from emptable where empname like '%a%' or empname like '%e%';

--query 32
select * from emptable where city like 'C%' or empname like 'V%';

--query 33
select empname,empid from emptable where empid like '74%';

--query 34
select empname from emptable where empname like '%ll%';

--query 35
select empname from emptable where empname like '_o%';

--Query 36
select avg(salary) from emptable;

--Query 37
select empname from emptable where department like 'EC%' order by empname;

--Query 38
select city,empname from emptable where salary<40000 order by city desc;

--Query 39
select empname from emptable where salary>=30000 and empname like 'S%';

--Query 40
select empname,doj from emptable where doj>'01-OCT-80';

--Query 41
select empname,doj from emptable where doj between '01-OCT-80' and '07-DEC-99';

--Query 42
select empname,doj from emptable where doj>='07-DEC-99';

--Query 43
select empid,empname,department from emptable where doj between '07-DEC-80' and '07-DEC-99';

--Query 44
select empid from emptable where designation='Professor' and city='Chennai';

--Query 45
select * from emptable where empname='Alex' or empname='Adams';

--Query 46

select ((select sysdate from dual )-doj) as difference from emptable;


select * from emptable;

$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

create table emp(empid varchar(255) unique,empname varchar(255) default 'ajay',dob date not null,doj date not null);

insert into EMP values('C01','Abu','01-FEB-91','01-FEB-12');
insert into EMP values('C02','gay','09-DEC-85','01-FEB-08');
insert into EMP values('C03','chen','09-DEC-80','01-FEB-06');
insert into EMP values('C04','chen','09-DEC-87','01-FEB-11');
insert into EMP values('C05','gay','01-FEB-83','01-FEB-10');
insert into EMP values('C06','jay','08-APR-89','01-FEB-11');
insert into EMP values('C07','jay','08-APR-84','01-FEB-08');

select * from emp;

--QUERY 1
select empname from EMP where dob in (select max(dob) from EMP);

--QUERY 2
select empname from EMP where dob in (select min(dob) from EMP);

--QUERY 3
select empname from EMP where doj in (select min(doj) from EMP);

--QUERY 4
select empname from EMP where doj in (select max(doj) from EMP);

--QUERY 5
select empname from EMP where doj in (select min(doj) from EMP);

--QUERY 6
select empname from EMP where doj in (select max(doj) from EMP);

--QUERY 7
select empname from EMP where extract(month from dob)=1;

--QUERY 8 
select empname,TO_CHAR(dob,'DAY') as datename FROM emp where rtrim(TO_CHAR(dob,'DAY'))='MONDAY';

--QUERY 9
select * from EMP where extract(month from dob) in (select extract(month from dob) from emp where dob=(select max(dob) from EMP));

--Query 10
select empname from (select empname,rownum as rn from (select empname from emp order by doj desc )) where rn=2;

--Query 11
select empname from (select empname,rownum as rn from (select empname from emp order by doj)) where rn=2;

--QUERY 12
select extract(year from dob) from emp;

--Query 13
SELECT empid, empname,CEIL(MONTHS_BETWEEN(SYSDATE,dob)/12) AS Age FROM DUAL,EMP;

--Query 15
SELECT empid, empname,CEIL(MONTHS_BETWEEN(doj,dob)/12) AS AgeJob FROM DUAL,EMP;

--select extract(month from dob), count(extract(month from dob)) from emp group by extract(month from dob);
UPDATE emp SET year from dob='2019';
SELECT TO_CHAR(dob,'DAY') from emp;



$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

create table supplier (SNo varchar(255) primary key,SName varchar(255),DOB date,City varchar(255));
insert into supplier values('S001','KENSTAR','01/JAN/2002','Chennai');
insert into supplier values('S002','SAMSUNG','12/OCT/2001','Cbe');
insert into supplier values('S003','ELGI','20/FEB/1999','Cbe');
insert into supplier values('S004','PHILIPS','10/DEC/1999','Delhi');
select * from supplier;

create table article (ANo varchar(255) primary key,AName	varchar(255),Color varchar(255)
check (Color LIKE '%BLACK%'
   OR Color LIKE '%WHITE%'
   OR Color LIKE '%RED%'
   ) ,Weight int,City varchar(255)
);
insert into article values('A01','MOBILE','BLACK',100,'Cbe');
insert into article values('A02','MICROWAVE','WHITE',1500,'Bombay');
insert into article values('A03','AIR COOLER','WHITE',2000,'Cbe');
insert into article values('A04','REFRIGIRATOR','RED',10000,'Delhi');
select * from article;

create table delivery(SNo varchar(255),ANo varchar(255),Qty int,
foreign key(SNo) references supplier(SNo),
foreign key(ANo) references article(ANo));
insert into delivery values('S003','A01',1000);
insert into delivery values('S002','A02',200);
insert into delivery values('S003','A02',500);
insert into delivery values('S004','A03',10);
insert into delivery values('S002','A04',50);
insert into delivery values('S003','A03',25);
insert into delivery values('S001','A02',55);
insert into delivery values('S001','A03',200);
select * from delivery;

--Query 1
select supplier.sno,article.ano from supplier,article where supplier.city=article.city;

--Query 2
select ano,sum(qty) from delivery group by ano;

--Query 3
select article.aname,sum(delivery.qty) from article,delivery where delivery.ano=article.ano group by delivery.ano,article.aname;

--Query 4
select sname from supplier where sno =
(select sno from delivery where ano=(select ano from article WHERE color='BLACK'));

--Query 5
select sno,sname from supplier where sno =
(select sno from delivery where ano=(select ano from article WHERE color='BLACK'));

--Query 6
select sname,CEIL(MONTHS_BETWEEN(SYSDATE,dob)/12) as years from dual,supplier;

--Query 7
select sname from supplier where dob=(select max(dob) from supplier);

--Query 8
select sno,count(ano) from delivery group by sno order by count(sno);

--Query 9
select sno,count(distinct ano) from delivery group by sno;

--Query 10
select sno,sum(qty) from delivery group by sno;

--Query 11
select delivery.sno,supplier.sname,sum(delivery.qty) from delivery join supplier on supplier.sno=delivery.sno group by delivery.sno,supplier.sname;

--Query 12
select * from (select sno,count(distinct(ano)) from delivery group by sno order by count(distinct(ano)) desc) where rownum=1 ;

--Query 13
select sname,sno from supplier where sno=(select sno from (select sno,count(distinct(ano)) from delivery group by sno order by count(distinct(ano)) desc) where rownum=1);

--Query 14
select * from (select sno,sum(qty) from delivery group by sno order by sum(qty) desc) where rownum=1;

--Query 15
select sno,sname from supplier where sno=(select sno from (select sno,sum(qty) from delivery group by sno order by sum(qty) desc) where rownum=1);

--Query 16
select aname from article where ano in (select ano from delivery where sno=(select sno from supplier where city='Delhi'));

--Query 17
select supplier.sname,article.aname,article.ano from supplier join delivery on delivery.sno=supplier.sno 
join article on delivery.ano=article.ano order by ano;

--Query 18
select supplr,count(articl) from (select supplier.sname as supplr,article.aname as articl,article.ano from supplier join delivery on delivery.sno=supplier.sno 
join article on delivery.ano=article.ano order by ano) group by supplr order by count(articl);

--Query 19
select sno from delivery where ano in (select ano from article where aname='MOBILE');

--Query 20
select sname from supplier where sno in (select sno from delivery where ano=(select ano from article where aname='MOBILE'));
