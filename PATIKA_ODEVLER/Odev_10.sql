select city.city, country.country from city
left join country on city.country_id = country.country_id;

select customer.first_name, customer.last_name, payment.payment_id from customer
right join payment on payment.customer_id = customer.customer_id;

select rental.rental_id, customer.first_name, customer.last_name from customer
join rental on customer.customer_id = rental.customer_id ;

