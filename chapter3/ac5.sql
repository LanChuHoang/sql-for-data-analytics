SELECT
  c.*,
  p.*,
  COALESCE(s.dealership_id, -1) AS dealership_id,
  CASE
    WHEN p.base_msrp - s.sales_amount > 500 THEN 1
    ELSE 0
  END AS high_savings
FROM
  customers AS c
  INNER JOIN sales AS s ON c.customer_id = s.customer_id
  INNER JOIN products AS p ON p.product_id = s.product_id
  LEFT JOIN dealerships AS d ON d.dealership_id = s.dealership_id
ORDER BY
  c.customer_id