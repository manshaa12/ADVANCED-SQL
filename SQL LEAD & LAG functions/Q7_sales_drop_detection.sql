-- Table: sales_data(sales_date, product_id, sales_quantity)

-- Question:
-- Identify days where the next day's sales are lower than the current day.
select *
from(
    select
     dales_date,
     product_id,
     sales_quantity,
     LEAD(sales_quantity) over (order by sales_date) AS next_day_sales
    from sales_data 
)
where next_day_sales < sales_quantity;