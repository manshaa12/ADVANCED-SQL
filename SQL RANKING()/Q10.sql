-- sensor_data table
-- measurement_id | value
-- 1 | 10
-- 2 | 15
-- 3 | 20
-- 4 | 25

-- Question:
-- Calculate sum of values for odd and even measurement_id separately.
WITH categorized AS (
    SELECT 
        measurement_id,
        value,
        CASE 
            WHEN measurement_id % 2 = 1 THEN 'odd'
            ELSE 'even'
        END AS type
    FROM sensor_data
)
SELECT 
    SUM(CASE WHEN type = 'odd' THEN value ELSE 0 END) AS odd_sum,
    SUM(CASE WHEN type = 'even' THEN value ELSE 0 END) AS even_sum
FROM categorized;
--imp p10