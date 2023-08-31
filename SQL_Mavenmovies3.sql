-- Q) Join three tables Customer, Rental, Address tables

select * from customer c
inner join rental r
on c.customer_id=r.customer_id
inner join address a
on c.address_id=a.address_id;

-- Q) Fetch the data of payments collected by mike. For payments details use payments table.

select * from payment p
inner join staff s
on p.staff_id=s.staff_id
where first_name="Mike";

-- Q) Write a SQL query to find the actors who played a role in the movie 'Annie IDENTITY’. Return all the fields of the actor table.

select a.first_name, a.last_name from film f
inner join film_actor fa on fa.film_id = f.film_id
inner join actor a ON a.actor_id = fa.actor_id
where title = 'annie identity';

-- Q) Which customer has the highest customer ID number, whose first name starts with an 'E' and has an address ID lower than 500?

select first_name, last_name from customer
where address_id < 500 and first_name like 'e%'
order by customer_id desc
limit 1;

-- Q) Find the customers who paid a sum of 100 dollars or more, for all the rentals taken by them.

select c.first_name, c.last_name, sum(amount) from payment p
inner join customer c on c.customer_id = p.customer_id
group by c.customer_id
having sum(amount) > 100
order by sum(amount) desc;

-- 1Q) Find all the films that starts with 'A' and ends with 'H'

select * from film
where title like 'A%H';

-- Q2) Retrive Full names of the customer and the length of their names.

select concat(first_name," ",last_name) as Full_Name,(length(first_name)+length(last_name)) as Total_length from customer;

-- Q3) Find the year, month, monthname, day from the date column of payments table

select year(payment_date) as Year, month(payment_date) as Month, 
monthname(payment_date) as Month_Name, day(payment_date) as Day, dayname(payment_date) as Day_Name from payment;

-- Q4) 