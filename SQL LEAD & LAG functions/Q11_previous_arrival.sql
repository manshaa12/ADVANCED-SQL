-- Table: route_schedule(route_id, departure_time, arrival_time)

-- Question:
-- Retrieve the previous trip’s arrival time for each route.
select 
 route_id,
 arrival_time,
 lag(arrival_time) over(
    partition by route_id
    order by route_id
 ) as prv_arrv_time
from route_schedule 
