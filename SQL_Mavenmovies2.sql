-- Q1) Find all the films that have a length 100 minutes or more and sort the length in descending order.

select film_id, title from film 
where length>=100 
order by length desc;

-- Q2) Find the total no.of films that are released in the year 2006.

select count(film_id) as Total_films from film 
where release_year=2006;

-- Q3) Find the distinct ratings given to films and sort the result in ascending order.

select distinct rating from film
order by rating asc;

-- Q4) Find the films that has rating as 'G' and length greater than 100 minutes.

select * from film
where rating="G" and length>100;

-- Q5) Add a column age in actor table and update the age of penelope Guiness to 24.

alter table actor
add column age int;

update actor
set age=24
where first_name="Penelope" and last_name="Guiness";

-- Q6) rename the column age to actor age and delete the actor age column.

alter table actor 
change column age actor_age int;

alter table actor
drop column actor_age;
