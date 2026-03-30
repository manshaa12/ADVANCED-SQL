-- global_song_rank table
-- artist_name | rank
-- A | 1
-- A | 5
-- B | 2
-- B | 3
-- C | 1

-- Question:
-- Find top 2 artists whose songs appear most frequently.
-- Use DENSE_RANK to handle ties.
WITH counts as(
    select 
     artist_name,
     count(*) as appearances
    from global_song_rank
    group by artist_name 
),

ranked as(
    select 
     artist_name,
     rank,
     DENSE_RANK() OVER(
        order by apperances desc)as artist_rank
    from counts    

)
select *
from ranked 
where artist_rank <= 2;
--imp p8