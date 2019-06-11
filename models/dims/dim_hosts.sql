--- Make a host model. I want to see how many listings a host has and all useful information related to them.

SELECT host_id, host_name, COUNT(id)
FROM  {{ref('stg_listings')}}
GROUP BY 1,2
