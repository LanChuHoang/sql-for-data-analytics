-- ac3.2
SELECT
  email
FROM
  customers
WHERE
  state = 'FL'
ORDER BY
  email;

-- ac3.3
SELECT
  first_name,
  last_name,
  email
FROM
  customers
WHERE
  city = 'New York City'
  AND state = 'NY'
ORDER BY
  last_name,
  first_name;

-- ac3.4
SELECT
  *
FROM
  customers
WHERE
  phone IS NOT NULL
ORDER BY
  date_added