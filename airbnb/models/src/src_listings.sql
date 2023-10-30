WITH src_listings AS (
    SELECT
        *
    FROM
        {{ source('AIRBNB', 'RAW_LISTINGS') }}
)

SELECT
    id as listing_id,
    name as listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price as price_str,
    created_at,
    updated_at
FROM
    src_listings