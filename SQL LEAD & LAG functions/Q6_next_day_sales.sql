-- Table: sales_data(sales_date, product_id, sales_quantity)

-- Question:
-- Retrieve each day's sales along with the next day's sales for each product.
SELECT
    sales_date,
    product_id,
    sales_quantity,
    LEAD(sales_quantity) OVER (ORDER BY sales_date) AS next_day_sales
FROM sales_data;