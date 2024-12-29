# 1596. The Most Frequently Ordered Products for Each Customer
# rank the number of orders for product per customer 
with order_rank as(
    select 
        o.customer_id,
        o.product_id, 
        p.product_name,
        rank () over (partition by customer_id order by count(order_id) desc) as order_rank
    from Orders o
    join Products p on o.product_id = p.product_id 
    group by 1,2,3
)
# filter to the highest ranked product 
select 
    customer_id, 
    product_id, 
    product_name
from order_rank 
where order_rank = 1