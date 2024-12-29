# 1440. Evaluate Boolean Expression

select 
    e.left_operand, 
    e.operator,
    e.right_operand,
    case
        when operator = '>' and v1.value > v2.value then 'true'
        when operator = '<' and v1.value < v2.value then 'true'
        when operator = '=' and v1.value = v2.value then 'true'
    else 'false' end as value 
from Expressions e 
left join Variables v1 on e.left_operand = v1.name 
left join Variables v2 on e.right_operand = v2.name 