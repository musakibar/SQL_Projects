select COUNT(*) from film where `length` > (select avg(`length`) from film);

select count(*) from film where rental_rate = (select max(rental_rate) from film);

select * from film where rental_rate =  (select min(rental_rate) from film) and replacement_cost = (select min(replacement_cost) from film);

select customer_id, count(payment_id) from payment
group by customer_id
having COUNT(payment_id) = 
(
    select MAX(count) from (select customer_id, COUNT(payment_id) count from payment group by customer_id) as sq
);
