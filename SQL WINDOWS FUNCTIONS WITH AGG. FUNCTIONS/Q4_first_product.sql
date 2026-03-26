-- Table: product_spend(user_id, product, transaction_date)
-- Question:
-- Find the first product purchased by each user.
select user_id, product,FIRST_VALUE(product) OVER(
    PARTITION BY user_id
    order by transaction_date
)as first_product
from product_spend;
