SELECT
EXTRACT(YEAR FROM created_at) as order_year,
EXTRACT(WEEK FROM created_at) as order_week
, SUM(ORDER_AMOUNT) as revenue_totaldb
FROM {{ ref('stg_orders') }}
GROUP BY 1,2
