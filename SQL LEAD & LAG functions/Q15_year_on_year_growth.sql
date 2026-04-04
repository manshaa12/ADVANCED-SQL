-- Table: transactions(product_id, transaction_date, spend)

-- Question:
-- Calculate the year-on-year growth rate of total spend per product.
SELECT
    product_id,
    EXTRACT(YEAR FROM transaction_date) AS year,
    SUM(spend) AS total_spend,
    LAG(SUM(spend)) OVER (ORDER BY EXTRACT(YEAR FROM transaction_date)) AS prev_year_spend,
    (SUM(spend) - LAG(SUM(spend)) OVER (ORDER BY EXTRACT(YEAR FROM transaction_date)))
    / LAG(SUM(spend)) OVER (ORDER BY EXTRACT(YEAR FROM transaction_date)) AS yoy_growth
FROM transactions
GROUP BY product_id, EXTRACT(YEAR FROM transaction_date);
--difficult