-- задание 1
------------ вариант 1
select 
	(select name from users where id = user_id) as name,
	(select birthday_at from users where id = user_id) as birthday,
	count(*) as orders_count
from orders
group by name
order by orders_count desc;

------------ вариант 2
select name, birthday_at, count(*) as orders_count from 
users u right join orders o
	on u.id = o.user_id
group by name
order by orders_count desc;


-- задание 2
select p.name as products, c.name as catalogs from 
products p join catalogs c
	on p.id = c.id;


