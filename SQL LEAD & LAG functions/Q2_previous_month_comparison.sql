-- Table: stock_prices(date, ticker, open, high, low, close)

-- Question:
-- Retrieve each row along with the previous month's closing price.
select 
 date,
 close,
 LAG(close) OVER (order by date) as prev_month_close
from stock_prices; 