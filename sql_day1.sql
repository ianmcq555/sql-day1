-- question 1
SELECT first_name,last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- question 2
SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;

-- question 3
SELECT film_id, COUNT(*)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(*) DESC;

-- question 4
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';

-- question 5
SELECT staff_id, COUNT(*)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;

-- question 6
SELECT COUNT(district)
FROM address;

-- question 7
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(*) DESC;

-- question 8
SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es'
GROUP BY last_name, store_id
HAVING store_id = 1;

-- question 9
SELECT amount, COUNT(amount), customer_id
FROM payment
WHERE customer_id >= 380 AND customer_id <= 430
GROUP BY customer_id, amount
HAVING COUNT(amount) > 10;

-- question 10
SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC;