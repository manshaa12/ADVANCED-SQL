-- concerts table
-- artist_name | concert_revenue
-- A | 800
-- B | 700
-- C | 700
-- D | 600

-- Question:
-- Show ranking using DENSE_RANK() and verify no gaps in ranks.
WITH ranked AS (
    SELECT 
        artist_name,
        concert_revenue,
        DENSE_RANK() OVER (ORDER BY concert_revenue DESC) AS dense_rank_num
    FROM concerts
)
SELECT * FROM ranked;
--p6