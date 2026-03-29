-- concerts table
-- artist_name | concert_revenue
-- A | 500
-- B | 700
-- C | 700
-- D | 300

-- Question:
-- Display artists sorted by concert_revenue (descending)
-- and assign ROW_NUMBER, RANK, and DENSE_RANK.
select 
 artist_name,
 concert_revenue, 
 row_number() OVER(
    order by concert_revenue) AS row_num
 rank() over(order by  concert_revenue) AS rank_num
 dense_rank() over(order by concert_revenue) as dense_rank_num
from concerts_table 
this is the concept 


