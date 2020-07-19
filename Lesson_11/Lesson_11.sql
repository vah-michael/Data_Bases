

-- Практическое задание по теме “Оптимизация запросов”
-- задание 1
-- Создайте таблицу logs типа Archive. 
-- Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи,
-- название таблицы, идентификатор первичного ключа и содержимое поля name.

DROP TABLE IF EXISTS logs;

CREATE TABLE IF NOT EXISTS logs (
   created_at datetime default current_timestamp,
   name_table varchar(255),
   name varchar(255),
   id int
 ) ENGINE=ARCHIVE;


-- триггер на изменение добавление записи в таблицу users
DROP trigger IF EXISTS change_shop_users_log ;

delimiter //
create trigger change_shop_users_log after insert on users
for each row
begin
	if New.name is not null then
		insert into logs (name_table, name, id) values ('users', new.name, new.id);
	end if;
end//
delimiter ;


-- триггер на изменение добавление записи в таблицу catalogs
DROP trigger IF EXISTS change_shop_catalogs_log ;

delimiter //
create trigger change_shop_catalogs_log after insert on catalogs
for each row
begin
	if New.name is not null then
		insert into logs (name_table, name, id) values ('catalogs', new.name, new.id);
	end if;
end//
delimiter ;



-- триггер на изменение добавление записи в таблицу 
DROP trigger IF EXISTS change_shop_products_log ;

delimiter //
create trigger change_shop_products_log after insert on products
for each row
begin
	if New.name is not null then
		insert into logs (name_table, name, id) values ('users', new.name, new.id);
	end if;
end//
delimiter ;

insert into users (id, name, birthday_at, created_at) values (13,'Виталий', '1999-04-16',now());
insert into catalogs (name) values ('Корпуса');
insert into products (name, description, price, catalog_id) values ('ASUS PRIME H-270 pro', 'Материнская плата ASUS PRIME H-270 pro','6050', 2);

select * from logs;