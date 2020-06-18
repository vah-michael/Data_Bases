use vk;


-- задание 2
select 
	-- id
	firstname,
	lastname 
from 
	users
where id in (
(select initiator_user_id from friend_requests where target_user_id = 5 and status = 'approved')
 	union
select target_user_id from friend_requests where initiator_user_id = 5 and status = 'approved'
)
and id = (select from_user_id	from messages where	to_user_id = 5 group by from_user_id ORDER by 'COUNT' limit 1)
;


-- задание 2 (edit)
select * from(

select from_user_id, count(*) from messages where to_user_id = 5 and from_user_id in 
(
select initiator_user_id from friend_requests where target_user_id = 5 and status = 'approved'
union
select target_user_id from friend_requests where initiator_user_id = 5 and status = 'approved'
) group by from_user_id 

union

select to_user_id, count(*) from messages where from_user_id = 5 and to_user_id in 
(
select initiator_user_id from friend_requests where target_user_id = 5 and status = 'approved'
union
select target_user_id from friend_requests where initiator_user_id = 5 and status = 'approved'
) group by to_user_id
) as total_table

group by from_user_id limit 1
;




-- задание 3
select sum(likes_count) as total_likes_count from 
(
	select  
		from_user_id as like_user,
		(select birthday from profiles where like_user = user_id) as birthday,
		count(*) as likes_count
	from likes_users 
	group by like_user
	order by birthday desc limit 10
) as total_tbl;


-- задание 4
-- сравниваем количество лайков от мужчин и женщин "пользователю"

select 
	(select gender from profiles where gender = "f" limit 1) as gender, count(*) as likes_count
	from likes_users
	where from_user_id in (select user_id from profiles where gender = "f")
union
select 
	(select gender from profiles where gender = "m" limit 1) as gender, count(*) as likes_count 
	from likes_users
	where from_user_id in (select user_id from profiles where gender = "m")


-- задание 5


