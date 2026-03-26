-- Table: transactions(user_id, transaction_date, spend)
-- Question:
-- Find rolling average spend per user ordered by transaction date.
select user_id, transaction_date, spend, avg(spend) OVER(
    partition by user_id
    order by transaction_date
)as rolling average
from transactions;
