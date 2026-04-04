-- Table: stock_prices(date, ticker, open, high, low, close)

-- Question:
-- Calculate the difference in closing price between the current month
-- and the next month for ticker 'GOOG' in 2023.
select 
 date,
 close,
 LEAD(close) OVER(ORDER BY date) as next_month_close,
 LEAD(close) OVER (order by date) - close AS difference
from stock_prices
where ticker = 'GOOG'
  and extract (YEAR FROM DATE) = 2022 ;
--imp  