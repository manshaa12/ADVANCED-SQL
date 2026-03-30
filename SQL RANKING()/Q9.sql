-- user_transactions table
-- user_id | product_id | transaction_date
-- 101 | 1 | 2022-01-01
-- 101 | 2 | 2022-01-01
-- 101 | 3 | 2022-02-01
-- 102 | 4 | 2022-01-05

-- Question:
-- For each user, find most recent transaction date
-- and count number of products bought on that date.
WITH latest AS (
    SELECT 
        *,
        MAX(transaction_date) OVER (PARTITION BY user_id) AS latest_date
    FROM user_transactions
),
filtered AS (
    SELECT *
    FROM latest
    WHERE transaction_date = latest_date
)
SELECT 
    transaction_date,
    user_id,
    COUNT(product_id) AS purchase_count
FROM filtered
GROUP BY transaction_date, user_id
ORDER BY transaction_date;
--imp p9