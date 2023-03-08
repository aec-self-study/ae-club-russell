SELECT *
FROM {{ source('web_tracking', 'pageviews') }}
