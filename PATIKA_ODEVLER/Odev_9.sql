select c.city, c2.country from city c
inner join country c2 
on c2.country_id = c.country_id ;

select p.payment_id, c.first_name, c.last_name from payment p 
inner join customer c 
on p.customer_id = c.customer_id;

select r.rental_id, c.first_name, c.last_name from customer c
inner join rental r
on r.customer_id = c.customer_id ;