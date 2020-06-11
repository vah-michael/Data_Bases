USE shop;

-- задание 1
UPDATE users
SET
	created_at = now() ,
	updated_at = now() ;
	

-- задание 2
-- так как таблица users была заполнена предыдущим уроком, то создаем новую таблицу с неверными параметрами полей created_at и updated_at

DROP TABLE IF EXISTS users_test;
CREATE TABLE users_test (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';


INSERT INTO users_test (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '2020-06-10 23:43', '2020-06-10 23:43'),
  ('Наталья', '1984-11-12', '2020-06-10 23:43', '2020-06-10 23:43'),
  ('Александр', '1985-05-20', '2020-06-10 23:43', '2020-06-10 23:43'),
  ('Сергей', '1988-02-14', '2020-06-10 23:43', '2020-06-10 23:43'),
  ('Иван', '1998-01-12', '2020-06-10 23:43', '2020-06-10 23:43'),
  ('Мария', '1992-08-29', '2020-06-10 23:43', '2020-06-10 23:43');


 

-- чтобы преобразовать поля created_at и updated_at в DATETIME и сохранить значения этих полей создаем временную таблицу users_tmp
-- и заполняем значениями исходной таблицы
 
DROP TABLE IF EXISTS users_tmp;
CREATE TABLE users_tmp (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO 
	users_tmp
SELECT
	null, 
	name, 
	birthday_at, 
	created_at, 
	updated_at
FROM 
	users_test;

-- удаляем исходную таблицу и присваиваем временной таблице имя исходной
DROP TABLE IF EXISTS users_test;

ALTER table users_tmp rename users_test;





-- задание 3
-- заполним таблицы storehouses и storehouses_products
INSERT into storehouses (name)
VALUES
	('Основной(удаленный)'),
	('Склад Магазин 1'),
	('Склад Магазин 1');



INSERT INTO storehouses_products
  (storehouse_id, product_id, value)
VALUES
  (1, 2, 2500),
  (2, 1, 30),
  (3, 4, 0),
  (2, 5, 2),
  (1, 8, 500),
  (2, 3, 0);


SELECT *
FROM storehouses_products
ORDER BY IF(value = 0, 999999999, value)


-- задание 4
select 
	name,
	case 
		WHEN DATE_FORMAT(birthday_at,'%m') = '05' then 'MAY'
		WHEN DATE_FORMAT(birthday_at,'%m') = '08' then 'AUGUST'
	end as birthday_at

from users
where 
DATE_FORMAT(birthday_at,'%m') = '05' or DATE_FORMAT(birthday_at,'%m') = '08';


-- задание 5

select * from catalogs
where id in (5, 1, 2) order by field(id, 5, 1, 2) ;



-- ------------------
-- агрегация данных

-- задание 1
select 
	avg(floor((to_days(now()) - to_days(birthday_at)) / 365.25)) as age
from users;



-- задание 2
-- добавим пользователей
 INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Илья', '1990-10-06', '2020-06-10 23:43', '2020-06-10 23:43'),
  ('Валерий', '1984-11-16', '2020-06-10 23:43', '2020-06-10 23:43'),
  ('Ксения', '1985-05-22', '2020-06-10 23:43', '2020-06-10 23:43'),
  ('Андрей', '1988-02-16', '2020-06-10 23:43', '2020-06-10 23:43'),
  ('Ульяна', '1998-01-19', '2020-06-10 23:43', '2020-06-10 23:43'),
  ('Злата', '1992-08-21', '2020-06-10 23:43', '2020-06-10 23:43');



select 
	
	date_format(concat(DATE_FORMAT(now(),'%Y-'), DATE_FORMAT(birthday_at,'%m-%d')),'%W')  as day_week,
	count(*)
	
from 
	users 
group by day_week;
 

-- задание 3
select 
	-- id
	exp(sum(ln(id))) as product_numbers
from catalogs;
