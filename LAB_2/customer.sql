CREATE TABLE Customer (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(60),
branch_name VARCHAR(50),
phone VARCHAR(15),
city VARCHAR(40)
);
-- insert
INSERT INTO Customer VALUES
(1,'Akhil','Mangalgiri','9876543210','Guntur'),
(2,'Bhanu','Vijayawada','9123456780','Vijayawada'),
(3,'Anusha','Mangalgiri','9988776655','Guntur'),
(4,'Charan','Hyderabad','9871234567','Hyderabad'),
(5,'Arjun','Mangalgiri','9012345678','Guntur'),
(6,'Divya','Vijayawada','9345678901','Vijayawada'),
(7,'Eshwar','Hyderabad','9445566778','Hyderabad'),
(8,'Farhan','Mangalgiri','9556677889','Guntur'),
(9,'Aman','Chennai','9667788990','Chennai'),
(10,'Gopi','Vijayawada','9778899001','Vijayawada');
-- fetch
select *from Customer;
CREATE TABLE Account (
account_no BIGINT PRIMARY KEY,
customer_id INT,
account_type VARCHAR(10) CHECK (account_type IN ('Savings','Current')),
balance DECIMAL(12,2) NOT NULL,
open_date DATE NOT NULL,
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
-- insert
INSERT INTO Account VALUES
(10001,1,'Savings',75000,'2024-12-01'),
(10002,1,'Current',45000,'2025-01-15'),
(10003,2,'Savings',25000,'2023-06-10'),
(10004,3,'Current',90000,'2025-02-20'),
(10005,4,'Savings',15000,'2022-08-11'),
(10006,5,'Savings',60000,'2025-03-01'),
(10007,6,'Current',30000,'2024-09-18'),
(10008,7,'Savings',12000,'2023-05-25'),
(10009,8,'Savings',80000,'2025-04-10'),
(10010,9,'Current',5000,'2025-01-05'),
(10011,10,'Savings',55000,'2024-11-11');
-- fetch

select *from Account;
SELECT * FROM Customer
where branch_name='mangalagiri';
SELECT customer_name,
(SELECT account_no
FROM Account
WHERE Account.customer_id = Customer.customer_id
AND account_type = 'Savings') AS account_no
FROM Customer
WHERE customer_id IN
(SELECT customer_id

FROM Account
WHERE account_type = 'Savings');
SELECT customer_name
FROM Customer
WHERE customer_name LIKE 'A%'
AND customer_id IN
(SELECT customer_id
FROM Account
WHERE account_type = 'Current');
SELECT customer_name
FROM Customer
WHERE customer_id IN
(SELECT customer_id
FROM Account
GROUP BY customer_id
HAVING COUNT(account_no) > 1);
SELECT customer_id,
COUNT(account_no) AS total_accounts
FROM Account
GROUP BY customer_id;
SELECT customer_name
FROM Customer
WHERE customer_id IN
(SELECT customer_id
FROM Account
WHERE balance > 50000);
SELECT customer_name
FROM Customer
WHERE customer_id =
(SELECT customer_id
FROM Account
WHERE balance = (SELECT MIN(balance) FROM Account));
SELECT customer_name
FROM Customer
WHERE customer_id IN
(SELECT customer_id
FROM Account
WHERE open_date > '2025-01-01');
