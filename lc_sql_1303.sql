# 1303. Find the Team Size 
with team_size as(
select 
    team_id, 
    count(distinct employee_id) as team_size
from Employee
group by 1)

select 
    e.employee_id,
    t.team_size
from Employee e 
join team_size t on e.team_id = t.team_id