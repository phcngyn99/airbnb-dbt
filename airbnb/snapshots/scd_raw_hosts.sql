{% snapshot scd_raw_hosts %}

{{
   config(
       target_database='AIRBNB',
       target_schema='SNAPSHOT',
       unique_key='id',

       strategy='timestamp',
       updated_at='updated_at',
   )
}}

SELECT * 
FROM 
    {{ source('AIRBNB', 'RAW_HOSTS') }}

{% endsnapshot %}