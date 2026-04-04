-- Table: sales_data(sales_date, product_id, sales_quantity)

-- Question:
-- Calculate the difference between current sales and previous day sales.
select
 sales_date,
 sales_quantity,
 sales_quantity - LAG(sales_quantity) OVER (order by sales _date) as difference
from sales_data; 