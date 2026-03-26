-- Table: product_spend(product, transaction_date, spend)
-- Question:
-- Calculate running total spend per product ordered by transaction date.
select product, transaction_date, spend,
  SUM(spend) OVER(
    PARTITION BY product
    ORDER BY transaction_date
  )as running_total
from product_spend;
