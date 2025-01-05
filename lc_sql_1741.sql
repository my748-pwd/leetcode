# 1741. Find Total Time Spent by Each Employee

select 
    event_day as day, 
    emp_id,
    (SUM(out_time) - SUM(in_time)) as total_time
from Employees
group by 1, 2