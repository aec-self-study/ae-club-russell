SELECT
    id as product_id,
    name as product_name,
    category as product_category,
    created_at
FROM {{ source('coffee_shop', 'products') }}
