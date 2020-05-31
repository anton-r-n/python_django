create database if not exists djangodb character set utf8;

create user if not exists 'djangoadmin'@'localhost'
  identified with mysql_native_password by 'djangoadmin';

grant all on djangodb.* to 'djangoadmin'@'localhost';

flush privileges;
