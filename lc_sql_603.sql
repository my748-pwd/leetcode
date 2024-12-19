
# 603. Two Consecutive Seats

with seat_order as(
select 
    seat_id,
    free, 
    lag(free, 1) over (order by seat_id) as free_lag, 
    lead(free, 1) over (order by seat_id) as free_lead
from Cinema)

select 
    seat_id 
from seat_order
where
(free = 1 and free_lag = 1) or (free = 1 and free_lead = 1)
order by seat_id asc