-- concerts table
-- artist_name | country | year_of_formation
-- A | India | 2000
-- B | India | 1990
-- C | USA | 2010
-- D | USA | 2010

-- Question:
-- Rank artists within each country based on year_of_formation (oldest first).
-- Use ROW_NUMBER, RANK, and DENSE_RANK.
WITH ranked as (
 select
  artists,
  country,
  year_of_formation,
  ROW_NUMBER() OVER(partition over country
  order by year_of_formation ) AS row_num
  RANK() OVER(partition over country
  order by year_of_formation) AS rank_num
  DENSE_RANK() OVER(partition over country
  order by year_of_formation) AS dense_rank_num
  from concerts;
)
select *
from ranked;