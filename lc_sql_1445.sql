# 1445. Apples and Oranges
with sold as(
select 
    sale_date,
    SUM(case when fruit = 'apples' then sold_num else 0 end) as apples_sold,
    SUM(case when fruit = 'oranges' then sold_num else 0 end) as oranges_sold
from Sales
group by 1)

select 
    sale_date,
    (apples_sold - oranges_sold) as diff
from sold
order by sale_date asc