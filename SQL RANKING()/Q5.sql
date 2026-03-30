-- concerts table
-- artist_name | concert_revenue
-- A | 800
-- B | 700
-- C | 700
-- D | 600

-- Question:
-- Show ranking using RANK() and explain skipped ranks in output.
WITH ranked AS (
    SELECT 
        artist_name,
        concert_revenue,
        RANK() OVER (ORDER BY concert_revenue DESC) AS rank_num
    FROM concerts
)
SELECT * FROM ranked;