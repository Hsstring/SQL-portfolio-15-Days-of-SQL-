-- Challenge 2 (part1)
-- Topic: Group by
-- Database: GreenCycle
/*
your manager wants to which of the two employees is responsible for more payments?
Which of the two is responsible for a higher overall payment amoun?
*/
SELECT staff_id, SUM(amount),COUNT(staff_id) FROM payment
GROUP BY staff_id
ORDER BY SUM(amount) DESC
