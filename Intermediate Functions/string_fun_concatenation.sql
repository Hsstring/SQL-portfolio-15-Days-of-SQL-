-- Challenge 3
-- Topic : string functions: Concatenation
-- Database: GreenCycles
/*
Anonymize the email addresses. 
It should be the first character followed by '***' and then the last part starting with '@'
email address always ends with '@sakilacustomer.org'
*/

SELECT LEFT(email,1) || '***' || RIGHT(email,19) AS anonymized_email
FROM customer

