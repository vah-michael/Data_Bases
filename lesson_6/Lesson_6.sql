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

	
-- задание 3
select 
	user_id as like_user,
	(select birthday from profiles where like_user = user_id) as birthday,
	count(*)
from likes_users 
group by like_user
order by birthday desc
limit 10;

-- задание 4

-- задание 5

