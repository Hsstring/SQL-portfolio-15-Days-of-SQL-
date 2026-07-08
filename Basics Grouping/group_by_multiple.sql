-- Challenge 3
-- Topic: Group by multiple columns
-- Database: GreenCycle
/*
There are two competitions between the two employees.
Which employee had the highest sales amount in a single day?
*/
SELECT staff_id, DATE(payment_date), SUM(amount), COUNT(*)
FROM payment 
WHERE amount!=0
GROUP BY staff_id, DATE(payment_date)
ORDER BY SUM(amount) DESC