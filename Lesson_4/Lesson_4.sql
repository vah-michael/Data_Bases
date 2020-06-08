-- DML (data manipulation language) - язык манипулирования данными
-- CRUD (create, read, update, delete, truncate)

use vk_test;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('58', 'Dean', 'Satterfield', 'orin69@example.net', '9160120629');

INSERT INTO users VALUES
('3', 'Reuben', 'Nienow', 'arlo51566@example.org', NULL)
;

INSERT INTO users
SET
	firstname = 'Иван',
	lastname = 'Диванов',
	email = 'ivan@mail.ru',
	phone = '987654321'
;

INSERT INTO `users` 
	(`id`, `firstname`, `lastname`, `email`, `phone`) 
select 
 	`id`, `firstname`, `lastname`, `email`, `phone`
from vk.users
where id = 85
;

-- select
SELECT 10+20;

SELECT distinct firstname, lastname
FROM users;

SELECT *
FROM users
LIMIT 1 offset 5;

SELECT *
FROM users
WHERE id = 5 OR firstname = 'Reuben';

SELECT *
FROM users
WHERE id IN (5,6,7,8);

-- UPDATE

-- отправка запроса в друзья
INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('5', '6', 'requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('5', '7', 'requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('5', '8', 'requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('1', '3', 'requested');

-- отклонить запрос в друзья
UPDATE friend_requests
SET 
	status = 'declined',
	confirmed_at = now()
WHERE
	initiator_user_id = 5 and target_user_id = 8
-- 	and status = 'requested'
	;

-- DELETE

-- добавим несколько пользователей
insert into users (id, firstname, lastname, email, phone) values
('102', 'Reuben', 'Nienow', 'arlo50102@example.org', '9374071116'),
('200', 'Frederik', 'Upton', 'terrence.cartwright@example.org', '9127498182'),
('300', 'Unique', 'Windler', 'rupert55@example.org', '9921090703'),
('400', 'Norene', 'West', 'rebekah29@example.net', '9592139196'),
('500', 'Frederick', 'Effertz', 'von.bridget@example.net', '9909791725')
;

-- добавим несколько сообщений
INSERT INTO messages values
(default, '1','58','Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.','1995-08-28 22:44:29'),
(default, '5','58','Sint dolores et debitis est ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.',now()),
(default, '5','58','Sed mollitia quo sequi nisi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.','1993-09-14 19:45:58'),
(default, '5','58','Quod dicta omnis placeat id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.','1985-11-25 16:56:25'),
(default, '5','58','Voluptas omnis enim quia porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.','1999-09-19 04:35:46')
;

delete from messages
where from_user_id = 1
;

delete from users
where id = 1;

-- TRUNCATE

truncate table messages;
-- delete from messages

INSERT INTO messages (id, from_user_id, to_user_id, body, created_at) values
(default,'1','200','Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.','1995-08-28 22:44:29'),
(default,'200','1','Sint dolores et debitis est ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.',now()),
(default,'3','1','Sed mollitia quo sequi nisi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.','1993-09-14 19:45:58'),
(default,'1','3','Quod dicta omnis placeat id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.','1985-11-25 16:56:25'),
(default,'1','500','Voluptas omnis enim quia porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.','1999-09-19 04:35:46')
;



























