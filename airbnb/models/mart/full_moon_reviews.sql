{{
  config(
    materialized = 'table',
    )
}}

WITH src_reviews AS (
    SELECT * FROM {{ ref('src_reviews') }}
),
src_fullmoon AS (
    SELECT * FROM {{ ref('seed_full_moon_dates') }}
)

SELECT
    r.*,
    CASE
        WHEN f.full_moon_date IS NULL THEN 'Not full moon'
        ELSE 'Full moon'
    END AS is_full_moon
FROM
    src_reviews r LEFT JOIN src_fullmoon f ON
        (r.review_date)::DATE = DATEADD(DAY,1,f.full_moon_date)