{{ config(
    materialized='table'
 ) }}

SELECT
  customers.id AS customer_id,
  customers.name,
  customers.email,
  MIN(orders.created_at) AS first_order_at,
  SUM(CASE WHEN orders.created_at IS NOT NULL THEN 1 ELSE 0 END) as number_of_orders
FROM `analytics-engineers-club.coffee_shop.customers` customers
LEFT JOIN `analytics-engineers-club.coffee_shop.orders` orders
ON customers.id = orders.customer_id
GROUP BY 1,2,3
order by first_order_at
limit 5
