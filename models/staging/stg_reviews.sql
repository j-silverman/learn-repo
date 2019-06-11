{{ config(materialized='view') }}

SELECT *
FROM {{source('airbnb','reviews')}}
