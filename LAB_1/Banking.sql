CREATE TABLE Banking_System (
branch_name varchar(20),
customer_id int,
customer_name varchar(20),
account_number int primary key,
employee_name varchar(20),
transaction_type varchar(20),
transaction_amount decimal(10,3),
transaction_date DATE
);

-- insert
INSERT INTO Banking_System VALUES ('mangalagiri',1,'niroop',1000,'ABD','savings',5678.87,'2020-01-30');
INSERT INTO Banking_System VALUES ('mangalagiri',2,'Hazar',1001,'Rohit','savings',1278.07,'2021-01-30');
INSERT INTO Banking_System VALUES ('mangalagiri',3,'vishnu',1002,'virat','savings',8778.87,'2020-01-30');
INSERT INTO Banking_System VALUES ('guntur',4,'puppy',1003,'koteswar','savings',5078.87,'2020-01-30');
INSERT INTO Banking_System VALUES ('vijayawada',5,'rushi',1004,'Bharath','savings',7878.87,'2021-01-
30');
INSERT INTO Banking_System VALUES ('guntur',6,'vignesh',1005,'chandu','savings',1378.87,'2021-01-30');
INSERT INTO Banking_System VALUES ('guntur',7,'gowtham',1006,'Bharath','savings',5698.87,'2020-01-
30');
INSERT INTO Banking_System VALUES ('vijayawada',8,'nikhil',1007,'chandu','savings',8078.87,'2022-01-
30');
INSERT INTO Banking_System VALUES ('kadapa',9,'chanduu',1008,'Koteswar','savings',7078.87,'2022-01-
30');
INSERT INTO Banking_System VALUES ('kadapa',10,'CR',1009,'chandu','savings',6678.87,'2022-02-27');

-- fetch
SELECT * FROM Banking_System;
SELECT * FROM Banking_System
where branch_name='mangalagiri';
SELECT account_number,customer_name from Banking_System;
select * from Banking_System where customer_name like 'a%';
SELECT *
FROM Banking_System
ORDER BY transaction_amount DESC
LIMIT 4;
SELECT MAX(transaction_amount) AS max_transaction_amount
FROM Banking_System;
FROM Banking_System
WHERE transaction_amount > 5000;
SET transaction_amount = transaction_amount + 15000
WHERE transaction_type = 'savings';
SELECT * FROM Banking_System;
