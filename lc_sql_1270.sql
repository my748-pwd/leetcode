# 1270. All People Report to the Given Manager

with recursive cte as(
    select 
        employee_id 
    from Employees 
    where manager_id = 1 and employee_id != 1
    union all
    select 
        a.employee_id 
    from Employees a
    join cte b on a.manager_id = b.employee_id 
)

select 
    employee_id 
from cte 
