# 1077. Project Employees III
with exp_ranking as(
select 
    p.project_id, 
    p.employee_id, 
    rank() over (partition by p.project_id order by e.experience_years desc) as exp_rank
from Project p
join Employee e on p.employee_id = e.employee_id)

select 
    project_id, 
    employee_id 
from exp_ranking 
where exp_rank = 1