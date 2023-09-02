-- 1633. Percentage of Users Attended a Contest

select contest_id, round(count(user_id)*100.00/(select count(*) from users),2) as percentage
from register
group by contest_id  
order by percentage desc, contest_id
