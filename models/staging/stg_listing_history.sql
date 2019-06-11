{{ config(materialized='view') }}

SELECT listing_id, nullif(replace(split_part(price, '$', 2), ',', ''), '')::float as price, available, date
FROM source_data.listing_history
