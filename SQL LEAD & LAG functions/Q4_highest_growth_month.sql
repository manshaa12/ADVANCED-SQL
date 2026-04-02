-- Table: stock_prices(date, ticker, open, high, low, close)

-- Question:
-- Identify the month with the highest increase in closing price
-- compared to the next month.
select *
from(
    select 
     date,
     close,
     LEAD(close) over(order by date) - close as growth,
     RANK() over (order by LEAD(close) Over (order by date) - close desc as rnnk

) -- difficult