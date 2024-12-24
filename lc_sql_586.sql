# 586. Customer Placing the Largest Number of Orders

with number_of_orders as(
select 
    customer_number, 
    count(order_number) as num_orders 
from Orders 
group by 1)

# rank the number of orders, and find the max()
select 
    customer_number
from number_of_orders
order by num_orders desc
limit 1