---I want to know their names, when they gave their first review which neighborhoods they stayed in, how many reviews did they give, etc
SELECT id, reviewer_name, MIN(date), COUNT(distinct listing_id)
FROM {{ref('stg_reviews')}}
GROUP BY 1,2
