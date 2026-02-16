1. Table name: Customer

Column Data Type Constraint
customer_id INT Primary Key
customer_name VARCHAR(60)
branch_name VARCHAR(50)
phone VARCHAR(15)
city VARCHAR(40)

2. Table name: Account

Column Data Type Constraint
account_no BIGINT PRIMARY KEY
customer_id INT FOREIGN KEY →
Customer(customer_id)
account_type VARCHAR(10) CHECK (Savings/Current)
Account balance DECIMAL(12,2) NOT NULL
open_date DATE NOT NULL

Tasks: Add valid & suitable data (minimum 10 records) to all tables using
INSERT,
Q1. Customers who belong to Mangalgiri branch.
Q2. Display customer_name and account_no of all Savings account holders
Q3. Display the customer name whose names are staring with “a” and having
current account.
Q4. Customers having more than one account.

Q5. Total number of accounts held by each customer.
Q6. Display customer names whose account balance is greater than ₹50,000.
Q7. Display the Customer names who has the minimum balance among all
accounts.
Q8. Display the Customer names who opened accounts after 01-01-2025.
