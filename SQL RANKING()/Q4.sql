-- concerts table
-- artist_name | country | concert_revenue
-- A | India | 500
-- B | India | 700
-- C | USA | 400
-- D | USA | 400

-- Question:
-- Rank artists within each country based on concert_revenue (descending).
-- Compare ROW_NUMBER vs RANK vs DENSE_RANK.
WITH ranked AS (
    SELECT 
        artist_name,
        country,
        concert_revenue,
        ROW_NUMBER() OVER (PARTITION BY country ORDER BY concert_revenue DESC) AS row_num,
        RANK() OVER (PARTITION BY country ORDER BY concert_revenue DESC) AS rank_num,
        DENSE_RANK() OVER (PARTITION BY country ORDER BY concert_revenue DESC) AS dense_rank_num
    FROM concerts
)
SELECT * FROM ranked;