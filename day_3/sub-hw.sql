--Question 1
select customer_id, first_name, last_name, district
from address
join customer
on address.address_id = customer_id 
where district = 'Texas';


--Question 2
select c.customer_id, c.first_name, c.last_name, p.payment_id, p.amount 
from payment p
join customer c
on p.customer_id = c.customer_id 
where amount > 6.99;


--Question 3
select customer_id, first_name, last_name
from customer
where customer_id in (
	select customer_id 
	from payment
	group by customer_id 
	having sum(amount) > 1.75
);


--Question 4
select * from customer;
select * from address;
select * from city;
select * from country;

select *
from country c 
where c.country = 'Nepal'

select city_id
from city
where country_id in (
	select country_id 
	from country c 
	where c.country = 'Nepal'
);

select address_id
from address 
where city_id in (
	select city_id 
	from city c where country_id in (
		select country_id
		from country c2
		where c2.country = 'Nepal'
	)
	
)

select *
from customer
where address_id in (
	select address_id 
	from address 
	where city_id in(
		select city_id
		from city
		where country_id in (
		select country_id
		from country c 
		where .country = 'Nepal'
		
		)
	)
);

--Question 5

SELECT staff_id , COUNT(*) AS num_transactions
FROM payment
GROUP BY staff_id 
ORDER BY transactions DESC 
-- Jon Stephens, 7304


--Question 6

SELECT film_id, COUNT(*) AS total_actors
FROM film_actor fa
join film f 
on fa.film_id = f.film_id 
GROUP BY film_id, f.title 
ORDER BY total_actors DESC
LIMIT 1;


--Question 7

SELECT a.actor_id, a.first_name, a.last_name, COUNT(*) AS num_of_films
FROM film_actor fa
JOIN actor a 
ON a.actor_id = fa.actor_id
GROUP BY a.actor_id
ORDER BY num_of_films
LIMIT 1;


--Question 8

SELECT district, count(*) 
FROM address
GROUP BY district
HAVING COUNT(*) > 5
ORDER BY COUNT(a.district);


