-- concerts table
-- artist_name | country | concert_revenue
-- A | India | 500
-- B | India | 700
-- C | USA | 400
-- D | USA | 600

-- Question:
-- Show how ranking resets when using PARTITION BY country.
WITH ranked AS (
    SELECT 
        artist_name,
        country,
        concert_revenue,
        RANK() OVER (PARTITION BY country ORDER BY concert_revenue DESC) AS rank_num
    FROM concerts
)
SELECT * FROM ranked;