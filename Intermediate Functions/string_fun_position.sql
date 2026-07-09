-- Challenge 4
-- Topic : string functions: Position
-- Database: GreenCycles
/*
you have only the email address and the last name of the customer, 
you need to extract the first name from the email address and concatenate it with the last name.
in the form: 'last name, first name'
*/

SELECT  last_name || ', '|| LEFT(email, POSITION(last_name IN email)-2) AS full_name
FROM customer

