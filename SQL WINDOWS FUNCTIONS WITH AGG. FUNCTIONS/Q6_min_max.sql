-- Table: product_spend(product, spend)
-- Question:
-- Find minimum and maximum spend for each product.
select product , spend, 
min(spend), OVER(
    PARTITION BY product
    order by spend
)AS MIN_SPEND
max(spend), over(
    partition by product 
    order by spend
)AS MAX_SPEND
from product_spend;