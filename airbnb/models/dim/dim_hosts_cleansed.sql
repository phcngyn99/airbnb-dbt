WITH src_hosts AS (
    SELECT * FROM {{ ref('src_hosts') }}
)

SELECT 
    host_id,
    COALESCE(host_name, 'Anonymous') AS host_name,
    CREATED_AT,
    UPDATED_AT,
    IS_SUPERHOST

FROM
    src_hosts