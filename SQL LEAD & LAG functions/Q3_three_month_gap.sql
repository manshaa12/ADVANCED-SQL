-- Table: stock_prices(date, ticker, open, high, low, close)

-- Question:
-- Find the difference between the current month's closing price
-- and the closing price from 3 months prior.
select
 date,
 close,
 lag(close, 3) over (order by date) as three_months_ago
 close - lag(close,3) over (order by date) as difference
from stock_prices;  --see this tricky