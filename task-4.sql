SELECT country, COUNT(country)
FROM customers
GROUP BY country
HAVING COUNT(country) > 5
ORDER BY COUNT DESC;