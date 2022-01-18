--Question 1
select *
from actor
where last_name like 'Wahlberg';
--Answer = 2

--Question 2
select count(*)
from payment
where amount between 3.99 and 5.99;
--Answer = 5,607

--Question 3
select film_id, count(*)
from inventory
group by film_id
order by count(*) desc; 
--Answer = 72 films have 8 copies


--Question 4
select last_name
from customer
where last_name = 'William';
--Answer = NOne


--Question 5 
select staff_id, count(*)
from payment
group by staff_id;
--Answer = Employee 2


--Question 6 
select count(distinct district) 
from address
--Answer = 378


--Question 7
select film_id, count(actor_id)
from film_actor
group by film_id
order by count(actor_id) desc;
--Answer = Lambs Cincinatti


--Question 8
select *
from customer
where last_name like '%es'
;
--Answer = 13


--Question 9
select amount, count(*) as rentals
from payment p
where customer_id between 380 and 430
group by amount having count(*) > 250;
--Answer = 3 payment amounts: .99, 2.99, 4.99.


--Question 10




