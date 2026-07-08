-- Challenge 1
-- Topic : Aggregate functions
-- Database: GreenCycles
/* 
Manager wants to get a better understanding of the films. write a query to see:
- Minimum
- Maximum
- Average (Rounded)
- Sum
of the replacement cost of the films
*/
SELECT 
MIN(replacement_cost) AS minimum,
MAX(replacement_cost) AS maximum,
ROUND(AVG(replacement_cost), 2) AS average,
SUM(replacement_cost) AS summation
FROM film