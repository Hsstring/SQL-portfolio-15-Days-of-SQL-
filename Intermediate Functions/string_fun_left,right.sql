-- Challenge 2
-- Topic : string functions: LEFT, RIGHT
-- Database: GreenCycles
/*
Extract the last 5 characters of the email address first.
The email address always end with .'org'.
How can you exctract just the dot '.' from the email address?
*/

SELECT email,
RIGHT(email, 4) AS last_char,RIGHT(LEFT(RIGHT(email, 5),2),1)  FROM customer

