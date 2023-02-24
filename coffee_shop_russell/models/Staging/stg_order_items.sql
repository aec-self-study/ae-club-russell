SELECT
    ID AS order_items_id,
    order_id AS order_id,
    product_id
FROM {{ source('coffee_shop', 'order_items') }}
