/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT co.country, SUM(p.amount) AS profit
FROM country co
JOIN city ci ON co.country_id = ci.country_id
JOIN address a ON ci.city_id = a.city_id
JOIN customer cu ON a.address_id = cu.address_id
JOIN payment p ON cu.customer_id = p.customer_id
GROUP BY co.country
ORDER BY co.country ASC;
