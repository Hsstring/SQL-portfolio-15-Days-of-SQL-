-- Challenge 4
-- Topic: Group by multiple columns
-- Database: GreenCycle
/*
In 2020, April 28,29 and 30 were days with very high revenue. 
That's why we want to focus in this task only on these days...

What is the average payment amount grouped by customer and day
consider only the days/customers with more than 1 payment (per customer and day)
*/
SELECT customer_id,DATE(payment_date),ROUND(AVG(amount),2) AS average, COUNT(*)
FROM payment 
WHERE DATE(payment_date) BETWEEN '2020-4-28' AND '2020-4-30'
GROUP BY customer_id,DATE(payment_date)
HAVING COUNT(*)>1
ORDER BY ROUND(AVG(amount),2) DESC