-- Challenge 2 (part2)
-- Topic: Group by
-- Database: GreenCycle
/*
your manager wants to which of the two employees is responsible for more payments? 
How d these amounts change if we don't consider amounts equal to 0?
*/
SELECT staff_id, SUM(amount), COUNT(staff_id) FROM payment 
WHERE amount!= 0
GROUP BY staff_id