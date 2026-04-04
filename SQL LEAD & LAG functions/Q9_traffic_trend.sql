-- Table: website_traffic(visit_date, page_views)

-- Question:
-- Show previous day and next day page views for each date.
select
 visit_date,
 page_views,
 lag(page_views) over(
    partition by visit_date
    order by visit_date) as prv_day_views,
 lead(page_views) over(
    partition by visit_date
    order by visit_date) as nxt_day_views
from website_traffic;    