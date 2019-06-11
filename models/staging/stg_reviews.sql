{{ config(materialized='view') }}

SELECT *
FROM source_data.reviews
