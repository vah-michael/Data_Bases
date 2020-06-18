-- задание 1
select 
id,
name, 
birthday_at
(
select count(*) as orders_count from orders group by user_id order by orders_count desc
)
from users where id in (select user_id from orders);

select name from users where id in (select user_id from orders);



select user_id from orders;






