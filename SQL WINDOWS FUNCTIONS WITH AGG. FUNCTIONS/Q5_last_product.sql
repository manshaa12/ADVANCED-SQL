-- Table: product_spend(user_id, product, transaction_date)
-- Question:
-- Find the last product purchased by each user.
SELECT 
  user_id,
  product,
  LAST_VALUE(product) OVER (
    PARTITION BY user_id
    ORDER BY transaction_date
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
  ) AS last_product
FROM product_spend;
--ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING

--❌ LAST_VALUE will give wrong output (very common interview trap)
