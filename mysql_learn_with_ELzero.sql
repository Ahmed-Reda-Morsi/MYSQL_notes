create database if not exists Learn_mysql;
    default character set utf8 default collate utf8_general_ci;

#drop database if exists  sqltest;
use Learn_mysql;
create table products
(
    ID    int          not null AUTO_INCREMENT,
    num   tinyint      not null,
    items varchar(255) null,
    primary key (ID)
);
create table items
(
    id int not null auto_increment,

);
create table students
(
    id    int(11),
    name  varchar(255),
    email varchar(255)
);
#remove certain table
drop table students;

# return all info. for all table in certain database.
show table status;

# return the Schema of certain table.
show create table students;

#_____________________________ALTER__________________________________
# alter => changes in  tables
# alter table  _table name_  _method_(add drop change modify ) _column name_


#__methods_________
# change engine of column.
alter table students
    engine =innodb;

# add  new column .
# add  _column name_  _datatype_  _location_(first after end) if after used   _certain column name_
alter table students
    add city varchar(255);

# change columns name and structure and you can change location also by (after)
# change  _old name_  _new name_  _datatype_  _location_(first after end) if after used   _certain column name_
alter table students
    change city city varchar(255) after email;

#change datatype only
# modify _column name_  _new datatype_
alter table students
    modify city char(255);


# drop  columns.
# drop  _column name_
alter table students
    drop column {test1,test };


#to describe everything about certain table
describe products;
show fields from products;


