-- 602. Friend Requests II: Who Has the Most Friends

select id , count(id) as num
from (

    select requester_id as id from requestaccepted
    union all
    select accepter_id from requestaccepted
)s
group by id
order by count(id) desc limit 1 ;