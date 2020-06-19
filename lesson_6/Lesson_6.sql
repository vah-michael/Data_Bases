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

select distinct total_user, percent_activity from(	
-- процент активности каждого пользователя в Posts
(select distinct 
	user_id as total_user,
	(select ((
		select count(*) as activity from posts where total_user = user_id group by user_id order by user_id
		) / (
		select count(*) from posts
		) * 100)) as percent_activity
from
posts 
order by percent_activity)

union 

-- процент активности каждого пользователя Messages (исходящие)
(select distinct 
	from_user_id as total_user,
	(select ((
		select count(*) as activity from messages where total_user = from_user_id group by from_user_id order by from_user_id
		) / (
		select count(*) from messages
		) * 100)) as percent_activity
from
messages
order by percent_activity)

union 

-- процент активности каждого пользователя Media
(select distinct 
	user_id as total_user,
	(select ((
		select count(*) as activity from messages where total_user = user_id group by user_id order by user_id
		) / (
		select count(*) from media
		) * 100)) as percent_activity
from
media
order by percent_activity)

union 

-- процент активности каждого пользователя Messages (входящие)
(select distinct 
	to_user_id as total_user,
	(select ((
		select count(*) as activity from messages where total_user = to_user_id group by to_user_id order by to_user_id
		) / (
		select count(*) from messages
		) * 100)) as percent_activity
from
messages
order by percent_activity)) as total_tabl group by total_user order by percent_activity limit 1;

-- и т.д. (можно добавлять и другие статьи активности)

