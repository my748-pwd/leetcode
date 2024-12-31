# 1173 - Immediate Food Delivery I
# break the orders into immediate and scheduled 

with orders_category as(
select 
    SUM(case when order_date = customer_pref_delivery_date then 1 else 0 end) as immediate_orders,
    SUM(case when order_date != customer_pref_delivery_date then 1 else 0 end) as scheduled_orders,
    COUNT(delivery_id) as total_delivery 
From Delivery)

# num of immediate orders / total number of orders, round them by 2 decimals 
select 
    ROUND((immediate_orders/total_delivery),4) * 100 as immediate_percentage
from orders_category