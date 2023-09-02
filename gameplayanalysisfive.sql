-- 550. Game Play Analysis IV

select Round(count(distinct player_id)/(select count(distinct player_id) from Activity), 2)  fraction  from Activity where (player_id, event_date)  in 
(select player_id, date_add(first_date, INTERVAL 1 DAY) the_date_after from 
(select player_id, min(event_date) first_date from Activity group by player_id ) t1)
