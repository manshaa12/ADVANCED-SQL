-- Table: product_spend(category, product)
-- Question:
-- Count number of products per category using window function.
select category, product, count(*) OVER(
    partition by category 
    order by product
)as no_of_products
from product_spend;
