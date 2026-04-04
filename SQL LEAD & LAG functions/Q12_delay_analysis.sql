-- Table: route_schedule(route_id, departure_time, arrival_time)

-- Question:
-- Find the gap between current departure time and previous arrival time.
select
 route_id,
 departure_time,
 arrival_time,
 departure_time - lag(arrival_time) over(order by route_id) as gap
from route_schedule; 