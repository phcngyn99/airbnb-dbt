WITH src_reviews AS (
    SELECT
        *
    FROM
        {{ source('AIRBNB', 'RAW_REVIEWS') }}
)

SELECT
    comments AS review_text,
    date AS review_date,
    sentiment as review_sentiment,
    listing_id,
    reviewer_name
FROM
    src_reviews