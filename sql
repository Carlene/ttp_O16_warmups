-- get all customers whose first names contain 'dan' (eg Dan, Daniel, Jordan)

SELECT
	first_name

FROM
	customer

WHERE
	first_name ILIKE '%dan%';

-- get all customers whose last names contain 'dan' (eg Dan, Daniel, Jordan) 

SELECT
	last_name

FROM
	customer

WHERE
	last_name ILIKE '%dan%';

-- now add the results of the first query to the results of the second (UNION)

SELECT
	first_name 

FROM
	customer

WHERE
	first_name ILIKE '%dan%'

UNION

SELECT
	last_name

FROM
	customer

WHERE
	last_name ILIKE '%dan%';

-- find customers exist in both queries
-- hint: there's one

SELECT
	first_name
	,last_name

FROM
	customer

WHERE
	first_name ILIKE '%dan%'
	AND 
	last_name ILIKE '%dan%';

-- find all film with 'Fred' in the title


--find all films that mention squirrels in the description


--find the intersection of the two previous subqueries
-- hint: there's two