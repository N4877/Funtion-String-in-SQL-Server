/* Transformation function in SQL Server
The transformation function include 
- LOWER(character-expression) retun lower case 
- UPPER(chracter-expression) return upper case
- LEFT(character-expression, number-of character int)
- RIGHT(character-expression number of characterint)
- TRIM(character, FROM ) return string after removing the blanks or other specified character
- LTRIM(charater-expression) return string after removing the leading blanks
- RTRIM(character-expression) return string after removing the trailing blanks
- REPLACE(character-expressin, searched-expressin, replacement) return string where are appearance of an expression
CHARINDEX aspecific characters return position of charcters
SUBSTRING return sub string has three parameters string, number of string you want and number chracters you want to aextract
-- Replace has three parameters string, replase and replasement*/ 

SELECT TOP 5 *,
LTRIM(street, '') AS  leading_space
FROM sales.customers

SELECT RTRIM('This is the frist lesson end   ') As trailing_space



-- String in sql server
SELECT TOP(10) *,
LEN(product_name) AS length
FROM production.products
ORDER BY length

-- LEFT get characters from left side
SELECT TOP(10)*,
LEFT(product_name, 5) AS first_char
FROM production.products

SELECT TOP(10) *,
LEFT(product_name, 10) AS first_10_char
FROM production.products
ORDER BY product_id

--Right take characters from right side or last characters
SELECT TOP(10)*,
RIGht(product_name, 5) AS first_5_Rchar
FROM production.products
ORDER BY product_id


SELECT TOP(10)*,
RIGht(product_name, 10) AS first_10_Rchar
FROM production.products
ORDER BY product_id

--CHARINDEX aspecific characters return position of charcters
SELECT TOP(10)*,
CHARINDEX('-', product_name) AS specific_char
FROM production.products




SELECT * FROM sales.customers

-- Use charindex to search about ot
SELECT *,
CHARINDEX('.', email) As dot
FROM sales.customers
WHERE customer_id > 100 AND phone IS NOT NULL


SELECT *,
CHARINDEX('@', email) as ad_email
FROM sales.customers
WHERE customer_id > 100 AND phone IS NOT NULL


-- SUBSTRING return sub string has three parameters string, number of string you want and number chracters you want to aextract
SELECT * ,
SUBSTRING(email, 8, 8) AS sub_string
FROM sales.customers
WHERE phone is not null;


-- Replace has three parameters string, replase and replasement
SELECT *,
REPLACE(email, '@msn', '@outlook') As change
FROM sales.customers
WHERE phone IS NOT NULL

SELECT *,
REPLACE(product_name, '2016', '') AS remove_number

FROM production.products



-- Select first nsame, last name and phone from staff table concate first name with last name order by staff id
select first_name, last_name, phone,
CONCAT(first_name, ' ', last_name) AS full_names
FROM sales.staffs
order by first_name;

