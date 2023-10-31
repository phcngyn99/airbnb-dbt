SELECT *
FROM
    {{ ref('fct_reviews') }} f JOIN {{ ref('dim_hosts_listings') }} l
        ON f.LISTING_ID = l.LISTING_ID 
        AND
        f.REVIEW_DATE <= l.CREATED_AT
