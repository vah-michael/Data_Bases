-- задание 1
use sample;


delimiter //
create procedure qqq (IN id_in int)
    if not exists (select id from sample.users where id=id_in)
     then INSERT INTO sample.users (id,name, birthday_at, created_at, updated_at) SELECT * FROM shop.users WHERE id= id_in;
     end if;
//

start transaction;

call qqq (1);

commit;
