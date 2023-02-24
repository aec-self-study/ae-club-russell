SELECT
EXTRACT(YEAR FROM created_at),
EXTRACT(WEEK FROM created_at)
, SUM(ORDER_AMOUNT)
FROM {{ ref(stg_orders) }}
GROUP BY 1,2
