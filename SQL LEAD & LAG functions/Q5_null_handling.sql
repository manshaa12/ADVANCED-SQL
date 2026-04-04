-- Table: stock_prices(date, ticker, open, high, low, close)

-- Question:
-- Replace NULL values from LEAD/LAG outputs with 0.
select
 date,
 close,
 coalesce(LEAD(close) over(order by date), 0) as next_month_close,
 coalesce(lag(close) over (order by date),0) as prev_month_close
from stock_prices;
 --imp new