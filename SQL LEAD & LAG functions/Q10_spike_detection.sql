-- Table: website_traffic(visit_date, page_views)

-- Question:
-- Find days where page views increased compared to the previous day.
SELECT *
FROM (
    SELECT
        visit_date,
        page_views,
        LAG(page_views) OVER (ORDER BY visit_date) AS prev_day_views
    FROM website_traffic
) t --temporary table creation
WHERE page_views > prev_day_views;
--ns