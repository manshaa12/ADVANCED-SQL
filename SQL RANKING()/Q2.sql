-- concerts table
-- artist_name | concert_revenue
-- A | 500
-- B | 700
-- C | 700
-- D | 300

-- Question:
-- Identify how RANK() and DENSE_RANK() behave when there are ties in revenue.
-- Show both ranks.
select 
 artist_name, 
 concert_revenue,
 RANK() OVER(order by concert_revenue) AS rank_num
 DENSE_RANK() OVER(order by concert_revenue) AS dense_rank_num
from concerts_table;  