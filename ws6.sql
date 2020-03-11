set serveroutput on ;

create table Person(name varchar(255) primary key, age int, gender varchar(8));
create table Frequents(name varchar(255), pizzeria varchar(255),primary key(name,pizzeria));
create table Eats(name varchar(255), pizza varchar(255),primary key(name,pizza));
create table Serves(pizzeria varchar(255), pizza varchar(255), price decimal,primary key(pizzeria,pizza));

insert into Person values('Amy', 16, 'female');
insert into Person values('Ben', 21, 'male');
insert into Person values('Cal', 33, 'male');
insert into Person values('Dan', 13, 'male');

insert into Person values('Eli', 45, 'male');
insert into Person values('Fay', 21, 'female');
insert into Person values('Gus', 24, 'male');
insert into Person values('Hil', 30, 'female');
insert into Person values('Ian', 18, 'male');

insert into Frequents values('Amy', 'Pizza Hut');
insert into Frequents values('Ben', 'Pizza Hut');

insert into Frequents values('Ben', 'Chicago Pizza');
insert into Frequents values('Cal', 'Straw Hat');

insert into Frequents values('Cal', 'New York Pizza');
insert into Frequents values('Dan', 'Straw Hat');

insert into Frequents values('Dan', 'New York Pizza');
insert into Frequents values('Eli', 'Straw Hat');

insert into Frequents values('Eli', 'Chicago Pizza');
insert into Frequents values('Fay', 'Dominos');

insert into Frequents values('Fay', 'Little Caesars');
insert into Frequents values('Gus', 'Chicago Pizza');

insert into Frequents values('Gus', 'Pizza Hut');
insert into Frequents values('Hil', 'Dominos');
insert into Frequents values('Hil', 'Straw Hat');
insert into Frequents values('Hil', 'Pizza Hut');

insert into Frequents values('Ian', 'New York Pizza');
insert into Frequents values('Ian', 'Straw Hat');
insert into Frequents values('Ian', 'Dominos');


insert into Eats values('Amy', 'pepperoni');
insert into Eats values('Amy', 'mushroom');
insert into Eats values('Ben', 'pepperoni');
insert into Eats values('Ben', 'cheese');

insert into Eats values('Cal', 'supreme');
insert into Eats values('Dan', 'pepperoni');
insert into Eats values('Dan', 'cheese');
insert into Eats values('Dan', 'sausage');

insert into Eats values('Dan', 'supreme');
insert into Eats values('Dan', 'mushroom');
insert into Eats values('Eli', 'supreme');
insert into Eats values('Eli', 'cheese');

insert into Eats values('Fay', 'mushroom');
insert into Eats values('Gus', 'mushroom');
insert into Eats values('Gus', 'supreme');
insert into Eats values('Gus', 'cheese'); 

insert into Eats values('Hil', 'supreme');
insert into Eats values('Hil', 'cheese');
insert into Eats values('Ian', 'supreme');
insert into Eats values('Ian', 'pepperoni');


insert into Serves values('Pizza Hut', 'pepperoni', 12);
insert into Serves values('Pizza Hut', 'sausage', 12);
insert into Serves values('Pizza Hut', 'cheese', 9);

insert into Serves values('Pizza Hut', 'supreme', 12);
insert into Serves values('Little Caesars', 'pepperoni', 9.75);

insert into Serves values('Little Caesars', 'sausage', 9.5);
insert into Serves values('Little Caesars', 'cheese', 7);

insert into Serves values('Little Caesars', 'mushroom', 9.25);
insert into Serves values('Dominos', 'cheese', 9.75);

insert into Serves values('Dominos', 'mushroom', 11);
insert into Serves values('Straw Hat', 'pepperoni', 8);

insert into Serves values('Straw Hat', 'cheese', 9.25);
insert into Serves values('Straw Hat', 'sausage', 9.75);

insert into Serves values('New York Pizza', 'pepperoni', 8);
insert into Serves values('New York Pizza', 'cheese', 7);

insert into Serves values('New York Pizza', 'supreme', 8.5);
insert into Serves values('Chicago Pizza', 'cheese', 7.75);

insert into Serves values('Chicago Pizza', 'supreme', 8.5);



select * from person;
select * from frequents;
select * from eats;
select * from serves;

--Query 1
BEGIN
  FOR consumer IN 
  (
    SELECT * FROM PERSON
  )
  LOOP
    dbms_output.put_line('Name = ' || consumer.name ||
      ',Age = ' || consumer.age ||
      ',Gender = ' || consumer.gender);
  END LOOP;
END;

--Query 2
BEGIN
  FOR ITEM IN
  (
    SELECT * FROM (SELECT PIZZA ,COUNT(PIZZA) AS COUNT FROM EATS GROUP BY PIZZA ORDER BY COUNT(PIZZA) DESC) WHERE ROWNUM <=3
  )
  LOOP
    dbms_output.put_line('Pizza : ' || item.pizza || '   Count : ' || item.count);
  END LOOP;
END;

--Query 3
DECLARE
  VAR_NM VARCHAR(255);
  VAR_AG NUMBER;
  VAR_GEND VARCHAR(8);
  PIZZERIA VARCHAR(255);
  PIZZA VARCHAR(255);
  PRICE NUMBER;
BEGIN
INSERT INTO PERSON VALUES('&VAR_NM',&VAR_AG,'&VAR_GEND');
INSERT INTO SERVES VALUES('&PIZZERIA','&PIZZA',&PRICE);
END;

--Query 4
accept X prompt 'Enter Pizza Name : ';
  
DECLARE
  PIZZANAME VARCHAR(255);
  PIZZACNT NUMBER;
  PIZZERIA SERVES.PIZZERIA%TYPE;
  PIZZA SERVES.PIZZA%TYPE;
  PRICE SERVES.PRICE%TYPE;
BEGIN
  PIZZANAME := '&x';
  SELECT COUNT(*) into pizzacnt FROM SERVES WHERE pizza=pizzaname;
  dbms_output.put_line('Your Pizza '||PIZZANAME||' count '|| pizzacnt);

  IF( PIZZACNT > 3 ) THEN 
    dbms_output.put_line('CNT > 3' ); 
    for c in (select pizzeria,pizza,price from serves WHERE pizza=pizzaname)
    loop
      dbms_output.put_line('Pizzeria : '||c.pizzeria||' Pizza : '||c.pizza||' Price: '||c.price);
    end loop;
  ELSE
    dbms_output.put_line('CNT < 3'); 
    for c in (select pizzeria,pizza from serves WHERE pizza=pizzaname)
    loop
      dbms_output.put_line('Pizzeria : '||c.pizzeria||' Pizza : '||c.pizza);
    end loop;
  END IF;
END;


--Query 5

BEGIN
  UPDATE SERVES SET PRICE=PRICE+PRICE*0.1 WHERE PIZZERIA='Dominos';
  DBMS_OUTPUT.PUT_LINE('Updated ' || SQL%ROWCOUNT || ' rows.');
  COMMIT;
END;

--Query 6
/*BEGIN
  FOR C IN (
  SELECT (
  SELECT NAME FROM (
  SELECT NAME,COUNT(NAME) AS C FROM  GROUP BY NAME WHERE (C=5);
  );
  )
  FROM PERSON WHERE GENDER='female' and AGE>20);
END;*/

select name,age from person 
where name in (select eatsname from (SELECT NAME AS EATSNAME,COUNT(DISTINCT(PIZZA)) AS C FROM EATS GROUP BY NAME) where c=(select count(distinct(pizza)) from eats))
and gender='female' and age > 20;


--Query 7
SELECT DISTINCT PERSON.NAME,PERSON.GENDER FROM PERSON JOIN FREQUENTS ON FREQUENTS.NAME=PERSON.NAME WHERE PERSON.GENDER='female' AND FREQUENTS.PIZZERIA='Straw Hat';

--Query 8
SELECT EATS.NAME,SERVES.PIZZERIA,SERVES.PIZZA,SERVES.PRICE FROM SERVES JOIN EATS ON SERVES.PIZZA=EATS.PIZZA AND SERVES.PRICE<10 AND EATS.NAME='Amy' OR EATS.NAME='Fay';

--Query 9
SELECT PERSON.NAME,PERSON.AGE,SERVES.PIZZERIA,SERVES.PIZZA,SERVES.PRICE FROM SERVES 
JOIN EATS ON SERVES.PIZZA=EATS.PIZZA JOIN PERSON ON EATS.NAME=PERSON.NAME
AND SERVES.PRICE<10 OR PERSON.AGE<24;

--Query 10
SELECT * FROM (SELECT NAME,AGE FROM PERSON WHERE PERSON.NAME IN (SELECT NAME FROM EATS WHERE PIZZA='mushroom') ORDER BY AGE DESC) WHERE ROWNUM = 1;

--Query 11
SELECT PERSON.NAME,PERSON.AGE,SERVES.PIZZERIA,SERVES.PIZZA,SERVES.PRICE FROM SERVES 
JOIN EATS ON SERVES.PIZZA=EATS.PIZZA JOIN PERSON ON EATS.NAME=PERSON.NAME
AND PERSON.AGE>30;
