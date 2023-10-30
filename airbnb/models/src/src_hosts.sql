WITH src_hosts AS (
    SELECT
        *
    FROM
        {{ source('AIRBNB', 'RAW_HOSTS') }}
)

SELECT
    id as host_id,
    name as host_name,
    CREATED_AT,
    UPDATED_AT,
    IS_SUPERHOST
FROM
    src_hosts