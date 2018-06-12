create database Bluedit;
go
use Bluedit;

create table User(
    ID integer primary key identity(1, 1),
    UserName varchar(100) not null,
    PasswordSalt varbinary(max) not null,
    PasswordHash varbinary(max) not null
);

go
create table Post(
    ID integer primary key identity(1, 1),
    Text
);