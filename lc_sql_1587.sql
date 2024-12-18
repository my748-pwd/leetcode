# 1587. Bank Account Summary II
# Write your MySQL query statement below
with balance as(
    select 
        account,
        sum(amount) as balance
    from transactions
    group by 1
)

select 
    u.name,
    b.balance
from Users u 
join balance b on u.account = b.account 
where balance > 10000
