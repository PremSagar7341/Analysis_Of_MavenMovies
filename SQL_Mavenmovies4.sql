-- Q1) Find the 3rd maximum amount from paymnets table

with third_max as(
select max(amount) from payment where amount < (
select max(amount) from payment where amount < (
select max(amount) from payment))) select * from payment where amount in (select * from third_max);

-- Q2) Select the staff who has done maximum sales based on amount.

select * from (
select staff_id, sum(amount) as sum_val from payment group by staff_id) as t1
 
-- Q3) Using Subquery find the actors who played a role in the movie 'Annie IDENTITY’. Return all the fields of the actor table.

select first_name, last_name from actor where actor_id in (
select actor_id from film_actor where film_id in (
select film_id from film where title="Annie Identity"));

-- Q4) Using view find the total payments made by all customers grouped by country. Find the least paid country.

Create View total_payments as (

create view payments_by_country as (
select cn.country, sum(p.amount) from payment p
inner join customer c on c.customer_id = p.customer_id
inner join address a on a.address_id = c.address_id
inner join city ct on ct.city_id = a.city_id
inner join country cn on cn.country_id = ct.country_id
group by cn.country
order by sum(p.amount));

select * from payments_by_country limit 1;

-- Q5) Create a view definition which groups all the films by their rating.

create view filmRatings as (
select count(film_id), rating from film group by rating);

select * from filmRatings;
 