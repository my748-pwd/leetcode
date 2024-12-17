# 175. Combine Two Tables
select 
    p.lastName, 
    p.firstName,
    a.city, 
    a.state
from Person p 
left join Address a on p.personId = a.personId
