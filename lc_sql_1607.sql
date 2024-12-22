# 1607. Game Play Analysis I

with sellers_2020 as(
select
    seller_id 
from Orders 
where year(sale_date) = 2020)

select
    s.seller_name
from Seller s
where s.seller_id not in (select seller_id from sellers_2020)
order by seller_name asc 