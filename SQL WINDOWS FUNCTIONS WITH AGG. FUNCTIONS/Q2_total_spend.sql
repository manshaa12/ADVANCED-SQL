-- Table: transactions(user_id, spend)
-- Question:
-- Show each transaction with total spend per user (without using GROUP BY).
select user_id, spend, sum(spend) over(
    PARTITION BY user_id
)AS total_spend
from transactions;