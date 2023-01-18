SELECT
    SUM(number_of_orders) AS total_orders
FROM
{{ ref('customers' )}}
