SELECT
    ID AS product_price_id,
    product_id,
    price,
    created_at,
    ended_at
FROM {{ source('coffee_shop', 'product_prices') }}
