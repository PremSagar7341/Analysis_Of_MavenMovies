USE mavenmovies;

-- Q1) Retrieve all the records from the customer table.

select * from customer;

-- Q2) Retrive the first name, last name, and email of each customer from customer table.

SELECT first_name,last_name,email from customer;

-- Q3) Retrive the count of all customer email addresses stored in the database.

select count(email) as Total_emails from customer;

-- Q4) Retrieve all the columns from the film table, but only return 20 rows.

select * from film limit 20;