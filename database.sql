--creating the table

-- 1.	Table callcost:
create table callcost(
    duration number(10) not null,
    cost number(10,5),
    primary key (duration)
);

-- 2.	Table customer details:
create table customer_details(
    cust_id number(10) not null,
    cust_name varchar2(15),
    city varchar2(15),
    nid_no number(20),
    gender varchar2(8),
    age number(10,2),
    primary key (cust_id)
);

-- 3.	Table operators:
create table operators (
    op_id number(10) not null,
    op_name varchar2(20),
    duration number(10),
    primary key (op_id),
    foreign key (duration) references callcost ON DELETE CASCADE );
-- 4.	Table sim:
create table sim(
    sim_type varchar2(10) not null,
    sim_number number(15),
    cost number(10,5),
    cust_id number(10),
    op_id number(10),
    primary key (sim_type),
    foreign key (cust_id) references customer_details ON DELETE CASCADE ,
    foreign key (op_id) references operators ON DELETE CASCADE 
);

-- Insertion into table

-- insert data into callcost
insert into callcost (duration , cost) values (1, 20);
insert into callcost (duration , cost) values (2, 29);
insert into callcost (duration , cost) values (3, 38);
insert into callcost (duration , cost) values (4, 47);
insert into callcost (duration , cost) values (5, 56);
insert into callcost (duration , cost) values (6, 65);
insert into callcost (duration , cost) values (7, 74);
insert into callcost (duration , cost) values (8, 83);
insert into callcost (duration , cost) values (9, 92);
insert into callcost (duration , cost) values (10, 100);
insert into callcost (duration , cost) values (20, 200);

-- insert into custormer details table 
insert into customer_details (cust_id, cust_name, city, nid_no, gender, age) values (301 , 'Hafsa' , 'Dhaka' , 12345678, 'Female', 23);
insert into customer_details (cust_id, cust_name, city, nid_no, gender, age) values (302 , 'Naboni' , 'Natore' , 22345632, 'Female', 33);
insert into customer_details (cust_id, cust_name, city, nid_no, gender, age) values (303 , 'Samiha' , 'Dhaka' , 32345623, 'Female', 54);
insert into customer_details (cust_id, cust_name, city, nid_no, gender, age) values (304 , 'Hanium' , 'Bogra' , 92345623, 'Female', 34);
insert into customer_details (cust_id, cust_name, city, nid_no, gender, age) values (305 , 'Fariha' , 'Rajshahi' , 72345232, 'Female', 12);
insert into customer_details (cust_id, cust_name, city, nid_no, gender, age) values (306 , 'Ani' , 'Khulna' , 52323678, 'Female', 43);
insert into customer_details (cust_id, cust_name, city, nid_no, gender, age) values (307 , 'Sumaiya' , 'Lalmonirhat' , 12354678, 'Female', 75);
insert into customer_details (cust_id, cust_name, city, nid_no, gender, age) values (308 , 'Wamia' , 'Cumilla' , 43345678, 'Female', 64);
insert into customer_details (cust_id, cust_name, city, nid_no, gender, age) values (309 , 'Munira' , 'Dhaka' , 23325678, 'Female', 32);
insert into customer_details (cust_id, cust_name, city, nid_no, gender, age) values (310 , 'Jabeen' , 'Dhaka' , 43245678, 'Female', 65);
insert into customer_details (cust_id, cust_name, city, nid_no, gender, age) values (311 , 'Saiyara' , 'Chittagong' , 432324678, 'Female', 75);

-- insert into operators table
insert into operators (op_id, op_name , duration) values (401, 'Grammen Phone', 1);
insert into operators (op_id, op_name , duration) values (402, 'Grammen Phone', 3);
insert into operators (op_id, op_name , duration) values (403, 'Grammen Phone', 5);
insert into operators (op_id, op_name , duration) values (404, 'Robi', 7);
insert into operators (op_id, op_name , duration) values (405, 'Robi', 9);
insert into operators (op_id, op_name , duration) values (406, 'Robi', 2);
insert into operators (op_id, op_name , duration) values (407, 'Airtel', 4);
insert into operators (op_id, op_name , duration) values (408, 'Airtel', 6);
insert into operators (op_id, op_name , duration) values (409, 'Bangla Link', 8);
insert into operators (op_id, op_name , duration) values (410, 'Teletalk', 10);

-- insert into sim table
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (501, 2123534678, 421.342, 301, 410);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (502, 8632343435, 433.454, 301, 409);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (503, 5454345345, 434.454, 303, 403);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (504, 5454345454, 878.455, 303, 403);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (505, 6656565654, 989.454, 302, 401);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (506, 8677665434, 323.453, 310, 402);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (507, 5653343432, 554.334, 304, 401);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (508, 6565645123, 656.342, 310, 404);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (509, 8998676543, 767.876, 309, 406);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (510, 7566543431, 345.765, 305, 405);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (511, 3434343235, 546.655, 301, 408);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (512, 2323243434, 565.565, 305, 409);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (513, 5454632567, 656.778, 308, 408);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (514, 8787554554, 766.345, 306, 406);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (515, 8765644554, 676.565, 307, 404);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (516, 4987454333, 565.655, 302, 407);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (517, 4354643454, 876.876, 308, 404);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (518, 3435445655, 876.876, 307, 405);
insert into sim (sim_type, sim_number , cost, cust_id , op_id) values (519, 3435445655, null, 308, 405);

-- Show all table 
select * from tab;

-- describe table
describe callcost;

-- add new column in callcost table
alter table callcost add demo_column varchar2(10);
describe callcost;

-- modify callcost table column defination
alter table callcost modify demo_column number(10);
describe callcost;

--delete a column from callcost table
alter table callcost drop column demo_column;
describe callcost;

-- add old column in callcost table
alter table callcost add old_column varchar2(10);
describe callcost;

-- rename the column name in callcost table
alter table callcost rename column old_column to new_column;
describe callcost;

--delete the new column from call_record table
alter table callcost drop column new_column;
describe callcost;

-- show all the values from operators table
select * from operators;

-- update a existing column content from operators table
update operators set op_name = 'Bangla Link' where op_id = 408;
select * from operators;

-- insert demo data into operators table
insert into operators (op_name, op_id,duration) values ('demo',12,1);
select * from operators;

-- delete a row from the operators table
delete from operators where op_id = 12;
select * from operators;

-- show the content from operators table
select * from operators;
-- show the content from callcost table
select * from callcost;

-- now try to remove a table row
-- this row has been linked with the operator table row

savepoint main1;
delete from callcost where duration = 1;
rollback to main1;

--now the correct row
delete from callcost where duration = 20;
select * from callcost;

-- show the column of cust_id from the sim table
select cust_id from sim;

--show distinct row of cust_id from the sim table
select distinct cust_id from sim;

-- show all the rows from the sim table
select * from sim;

-- calculated area
select cost as current_cost, (cost/5) as reduced_cost from sim where cust_id = 301;

-- applying condition in the table 
select cost,cust_id from sim where cust_id = 301 or cust_id = 302;

-- range
select cost,cust_id from sim where cust_id between 301 and 303;

-- In close
select cost,cust_id from sim where cust_id IN (301,303,304);

-- not In close
select cost,cust_id from sim where cust_id not IN (301,303,304);

--like 
select op_id , op_name as name from operators where op_name like '%one';
select op_id , op_name as name from operators where op_name like '%o%';

-- order by
select sim_number , sim_type , cost , cust_id, op_id as sim_cost from sim order by cost;

-- desc order 
select sim_number , sim_type , cost , cust_id , op_id as sim_cost from sim order by cost desc;

-- order by using two column
select sim_number , sim_type , cost , cust_id , op_id as sim_cost from sim order by cust_id,op_id;

--- Union operations
select city from customer_details where city like '%t%' union select city from customer_details where city like '%a'

select sim_number , cust_id from sim where cost > 500 
UNION
select sim_number , cust_id from sim where op_id in (
        select op_id from operators where op_name like '%o%'
            );

--union all
select sim_number , cust_id from sim where cost > 500 
UNION ALL 
select sim_number , cust_id from sim where op_id in (
        select op_id from operators where op_name like '%o%'
            );


---Intersect operations
select cust_id from customer_details intersect select cust_id from sim;

select sim_number , cust_id from sim where cost > 500 
INTERSECT
select sim_number , cust_id from sim where op_id in (
        select op_id from operators where op_name like '%o%'
            );

--except/minus operations
select sim_number , cust_id from sim where cost > 500 
minus
select sim_number , cust_id from sim where op_id in (
        select op_id from operators where op_name like '%o%'
            );

---with clause
with max_cost(val) as (select max(cost) from sim)
select * from sim,max_cost where sim.cost=max_cost.val;



-- aggregate function

-- count 
select count(*) , count(cost) from sim;

-- sum and average
select count(*) , sum(cost) , avg(cost) from sim;

--using alias
select count(cost) as number_of_cost from sim;

--using distinct and all
select count (cost), count (distinct cost), count (all cost) from sim;

--max and min
select max(cost), min(cost) from sim;

-- Group by close
select cust_id , count(op_id) from sim group by cust_id;
select cust_id , count(op_id) from sim where cost >= 500 group by cust_id;

-- using having
select cust_id , count(op_id) from sim group by cust_id having count(op_id) > 1;

-- nested query
select sim_number , cust_id from sim where op_id in (
        select op_id from operators where op_name like '%o%'
            );

--AND clause
select * from customer_details where city= 'Dhaka' AND age= '23';

--OR clause
select * from customer_details where city= 'Dhaka' OR age= '23';

--not clause
select * from customer_details where NOT cust_id=301;

--some clause
select * from sim where cust_id > some (select cust_id from customer_details where cust_id >= 305);
--all clause
select * from sim where cust_id > all (select cust_id from customer_details where cust_id >= 305);

--exists construct (finding all sims where the corresponding operator’s name contains specific letter)
select  * from sim s where EXISTS ( select 1 from operators o where s.op_id = o.op_id and o.op_name like  '%e%');

--string operations
--starting with A
select * from customer_details where cust_name like 'A%';
--ending with a
select * from customer_details where cust_name like '%a';
--exactly 5 characters ending with a
select * from customer_details where cust_name like '____a';


--join operation

-- using where
select c.cust_name, c.city, s.sim_number from customer_details c , sim s where c.cust_id = s.cust_id;

-- using join operation
select c.cust_name, c.city, s.sim_number from customer_details c join sim s on c.cust_id = s.cust_id;

-- now using using keyword
select c.cust_name, c.city, s.sim_number from customer_details c join sim s using( cust_id );

-- Natural Join operation
select s.sim_number, s.cost , o.op_name from sim s Natural join operators o ;

-- Inner join
select c.cust_name, c.city, s.sim_number from customer_details c inner join sim s on c.cust_id = s.cust_id;

-- outer join
-- left outer join
select c.cust_name, c.city, s.sim_number from customer_details c left outer join sim s on c.cust_id = s.cust_id;

-- Full outer join
select c.cust_name, c.city, s.sim_number from customer_details c left outer join sim s on c.cust_id = s.cust_id;


--view
-- view
create or replace view show_table_content as
    select s.sim_number, s.cost , o.op_name from sim s Natural join operators o ;

select * from show_table_content;

-- drop in view
drop view show_table_content;

-- view 
create view show_table_content as
    select s.sim_type, s.sim_number, s.cost from sim s;
select * from show_table_content;	

-- insert into view
insert into show_table_content values (520, 11111111, null);
select * from show_table_content;

--view from other view
create view custom as select * from show_table_content where cost >=400;
select * from custom;

--PLSQL:


--plsql variable declaration and print value

SET SERVEROUTPUT ON
DECLARE
    cust_id customer_details.cust_id%TYPE;
    cust_name customer_details.cust_name%TYPE;
    city customer_details.city%TYPE;
    nid_no customer_details.nid_no%TYPE;
    gender customer_details.gender%TYPE;
    age customer_details.age%TYPE;
BEGIN
    SELECT cust_id, cust_name, city, nid_no, gender, age
    INTO cust_id, cust_name, city, nid_no, gender, age
    FROM customer_details
    WHERE cust_id = 306;
    DBMS_OUTPUT.put_line('Cust_id: ' || cust_id || 
                         ' Cust_name: ' || cust_name || 
                         ' City: ' || city || 
                         ' NID_no: ' || nid_no || 
                         ' Gender: ' || gender || 
                         ' Age: ' || age);
END;
/

--insert and set default value

SET SERVEROUTPUT ON;
DECLARE
    -- Initialize variables with values for a new customer entry
    cust_id customer_details.cust_id%TYPE := 312;
    cust_name customer_details.cust_name%TYPE := 'Faria';
    city customer_details.city%TYPE := 'Cumilla';
    nid_no customer_details.nid_no%TYPE := 1234567893;
    gender customer_details.gender%TYPE := 'Female';
    age customer_details.age%TYPE := 35;
BEGIN
    -- Insert the new customer into the customer_details table
    INSERT INTO customer_details (cust_id, cust_name, city, nid_no, gender, age)
    VALUES (cust_id, cust_name, city, nid_no, gender, age);

    -- Output inserted data as confirmation
    DBMS_OUTPUT.put_line('Cust_id: ' || cust_id || 
                         ' Cust_name: ' || cust_name || 
                         ' City: ' || city || 
                         ' NID_no: ' || nid_no || 
                         ' Gender: ' || gender || 
                         ' Age: ' || age);
END;
/

-- row type
SET SERVEROUTPUT ON;
DECLARE
    cust_row customer_details%ROWTYPE;
BEGIN
    SELECT * INTO cust_row FROM customer_details WHERE cust_id = 306;
    DBMS_OUTPUT.put_line('Cust_id: ' || cust_row.cust_id || 
                         ' Cust_name: ' || cust_row.cust_name || 
                         ' City: ' || cust_row.city || 
                         ' NID_no: ' || cust_row.nid_no || 
                         ' Gender: ' || cust_row.gender || 
                         ' Age: ' || cust_row.age);
END;
/

--cursor and row count
SET SERVEROUTPUT ON;
DECLARE
    cursor cust_cursor IS SELECT * FROM customer_details;
    cust_row customer_details%ROWTYPE;
BEGIN
    OPEN cust_cursor;
    FETCH cust_cursor INTO cust_row;
    WHILE cust_cursor%FOUND LOOP
        DBMS_OUTPUT.put_line('Cust_id: ' || cust_row.cust_id || 
                             ' Cust_name: ' || cust_row.cust_name || 
                             ' City: ' || cust_row.city || 
                             ' NID_no: ' || cust_row.nid_no || 
                             ' Gender: ' || cust_row.gender || 
                             ' Age: ' || cust_row.age);
        DBMS_OUTPUT.put_line('Row count: ' || cust_cursor%ROWCOUNT);
    FETCH cust_cursor INTO cust_row;
    END LOOP;
    CLOSE cust_cursor;
END;
/

--loop with extend
SET SERVEROUTPUT ON;
DECLARE
  counter NUMBER;
  op_name2 operators.op_name%TYPE;  
  TYPE NAMEARRAY IS VARRAY(5) OF operators.op_name%TYPE; 
  A_NAME NAMEARRAY := NAMEARRAY();
BEGIN
  counter := 1;
  FOR x IN 401..405 LOOP  -- Adjusted from 12..16 to 401..405 to match your data
       SELECT op_name INTO op_name2 FROM operators WHERE op_id = x;
       A_NAME.EXTEND();
 A_NAME(counter) := op_name2;
 counter := counter + 1;
 END LOOP;
       counter := 1;
 WHILE counter <= A_NAME.COUNT LOOP
    DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
    counter := counter + 1;
  END LOOP;
END;
/

--loop without extend
DECLARE 
   counter NUMBER := 1;
   op_name2 operators.op_name%TYPE;
   TYPE NAMEARRAY IS VARRAY(5) OF operators.op_name%TYPE;
   A_NAME NAMEARRAY := NAMEARRAY('Grammen Phone', 'Robi', 'Airtel', 'BanglaLink', 'Teletalk'); 
BEGIN
   counter := 1;
   FOR x IN 401..405  
   LOOP
      SELECT op_name INTO op_name2 FROM operators WHERE op_id = x;
      A_NAME(counter) := op_name2;
      counter := counter + 1;
   END LOOP;
   
   counter := 1;
   WHILE counter <= A_NAME.COUNT 
   LOOP 
      DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
      counter := counter + 1;
   END LOOP;
END;

--if/else
DECLARE 
   counter NUMBER := 1;
   sim_type_val sim.sim_type%TYPE;
   TYPE SIMTYPEARRAY IS VARRAY(5) OF sim.sim_type%TYPE;
   A_SIM SIMTYPEARRAY := SIMTYPEARRAY('501', '502', '503', '504', '505'); 
BEGIN
   counter := 1;
   FOR x IN 501..505  
   LOOP
      SELECT sim_type INTO sim_type_val FROM sim WHERE sim_type = TO_CHAR(x);
      IF sim_type_val = '501' THEN
        DBMS_OUTPUT.PUT_LINE(sim_type_val || ' is associated with operator 410');
      ELSIF sim_type_val = '502' THEN
        DBMS_OUTPUT.PUT_LINE(sim_type_val || ' is associated with operator 409');
      ELSE 
        DBMS_OUTPUT.PUT_LINE(sim_type_val || ' is associated with other operators');
      END IF;
   END LOOP;
END;


--procedure
CREATE OR REPLACE PROCEDURE proc_sim(
  v_sim_type IN VARCHAR2,
  v_cost OUT NUMBER,
  v_op_id IN OUT NUMBER
)
AS
  t_show VARCHAR2(30) := 'From procedure: ';
BEGIN
  SELECT cost INTO v_cost FROM sim WHERE sim_type = v_sim_type;
  v_op_id := v_op_id + 1;
   DBMS_OUTPUT.PUT_LINE(t_show || 'Cost for SIM type ' || v_sim_type || ' is ' || v_cost || '. In out parameter (op_id): ' || v_op_id);
END;
/
--calling procedure
SET SERVEROUTPUT ON;
DECLARE 
  sim_type sim.sim_type%TYPE := '501';  
  cost sim.cost%TYPE;
  op_id sim.op_id%TYPE := 410;  
BEGIN
  proc_sim(sim_type, cost, op_id);
END;
/


--function
CREATE OR REPLACE FUNCTION get_sim_cost(var1 IN VARCHAR2) RETURN NUMBER AS
  sim_cost sim.cost%TYPE;
BEGIN
  SELECT cost INTO sim_cost FROM sim WHERE sim_type = var1; 
  RETURN sim_cost;
END;
/
--calling function
SET SERVEROUTPUT ON;
DECLARE 
  sim_type VARCHAR2(10) := '501'; 
  cost_result NUMBER;
BEGIN
  cost_result := get_sim_cost(sim_type);
  DBMS_OUTPUT.PUT_LINE('The cost for SIM type ' || sim_type || ' is: ' || cost_result);
END;
/
--drop function and procedure
DROP FUNCTION get_sim_cost;
DROP PROCEDURE proc_sim;


--trigger
SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER callcost_cleanup
BEFORE DELETE ON callcost
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Deleting cost record for duration ' || :OLD.duration || ' with cost ' || :OLD.cost);
    DBMS_OUTPUT.PUT_LINE('Note: This will also delete any operators linked to this duration ' || :OLD.duration);
END;
/
DELETE FROM callcost WHERE duration = 5;


SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER trigger_cost_update
AFTER UPDATE ON callcost 
REFERENCING OLD AS o NEW AS n
FOR EACH ROW
ENABLE
BEGIN
  UPDATE operators 
  SET op_name = 'Updated because cost changed to ' || :n.cost 
  WHERE duration = :o.duration;
END;
/
UPDATE callcost SET cost = 210 WHERE duration = 1;


SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER trigger_cost_insert
AFTER INSERT ON callcost 
REFERENCING NEW AS n
FOR EACH ROW
BEGIN
  UPDATE operators
  SET cost_updates = cost_updates + 1
  WHERE duration = :n.duration;
END;
/
-- Insert a new record to trigger the action
INSERT INTO callcost (duration, cost) VALUES (11, 110);
-- Show errors if any exist from the trigger compilation
SHOW ERRORS;
-- To list all triggers to confirm creation and check trigger details
SELECT TRIGGER_NAME, TRIGGER_TYPE, TABLE_NAME, STATUS FROM USER_TRIGGERS WHERE TABLE_NAME = 'CALLCOST';

-- To drop the trigger if needed
DROP TRIGGER trigger_cost_insert;
