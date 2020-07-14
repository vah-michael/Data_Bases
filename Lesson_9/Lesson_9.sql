
-- Практическое задание по теме “Транзакции, переменные, представления”
-- задание 1
-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.


delimiter //
create procedure qqq (IN id_in int)
    if not exists (select id from sample.users where id=id_in)
     then INSERT INTO sample.users (id,name, birthday_at, created_at, updated_at) SELECT * FROM shop.users WHERE id= id_in;
     end if;
//

start transaction;

call qqq (1);

commit;

-- Практическое задание по теме “Транзакции, переменные, представления”
-- задание 2
-- Создайте представление, которое выводит название name товарной позиции из таблицы products и 
--     соответствующее название каталога name из таблицы catalogs.
use shop;

create view new_cat (name_product, catalog_name) as 
select 
name,
(select name from catalogs where id = catalog_id) as catalog_name
from products;
	

select * from new_cat;

-- Практическое задание по теме “Транзакции, переменные, представления”
-- задание 3
--- пока не закончено
use sample;

DROP TABLE IF EXISTS august;
CREATE TABLE august(
created_at DATE);



insert into august values ('2018-08-01');
insert into august values ('2016-08-04');
insert into august values ('2018-08-16');
insert into august values ('2018-08-17');
--- не закончено задание


-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"
-- задание 1 
-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер",
-- с 00:00 до 6:00 — "Доброй ночи".



DROP function IF EXISTS hello;

delimiter //
create function hello()
RETURNS tinytext deterministic
-- RETURNS tinytext
BEGIN	
	DECLARE hours INT;
	set hours = HOUR (NOW());
	case
		when (hours > 6 and hours < 12) then 
			return "Доброе утро!";
		when (hours > 12 and hours < 18) then 
			return "Добрый день!";
		when (hours > 18 and hours < 0) then 
			return "Добрый вечер!";
		when (hours > 0 and hours < 6) then 
			return "Доброй ночи!";
	end case;

end//

select hello();

-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"
-- задание 2
-- В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. 
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.


DROP trigger IF EXISTS check_product_insert ;

delimiter //
create trigger check_product_insert before insert on products
for each row
begin
	if new.description is null and New.name is null then
		signal sqlstate '45000' set message_text = 'Description and Name are NUll. Insert is not executed.'; 		
	end if;
end//
delimiter ;


insert into products (name, description, price, catalog_id)
values (null, null, 1200, 1);
