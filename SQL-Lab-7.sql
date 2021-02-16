

-- Sakila Lab 7

-- In the table actor, which are the actors whose last names are not repeated?
select last_name
from sakila.actor
group by last_name
having count(last_name) = 1;

-- Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once
select last_name
from sakila.actor
group by last_name
having count(last_name) <> 1;


-- Using the rental table, find out how many rentals were processed by each employee.
select count(*), staff_id
from sakila.rental
group by staff_id;


-- Using the film table, find out how many films were released each year.
select count(title), release_year
from sakila.film
group by release_year;


-- Using the film table, find out for each rating how many films were there.
select count(title), rating
from sakila.film
group by rating;


-- What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
select round(avg(length), 2), rating
from sakila.film
group by rating;


-- Which kind of movies (rating) have a mean duration of more than two hours?
select round(avg(length), 2), rating
from sakila.film
group by rating
having avg(length) > 120;