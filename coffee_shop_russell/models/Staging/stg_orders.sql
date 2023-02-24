SELECT
    ID AS order_id,
    created_at,
    customer_id,
    total AS order_amount,
    address as customer_address,
    state as customer_adress_state,
    zip as customer_zip
FROM
{{ source('coffee_shop', 'orders') }}
