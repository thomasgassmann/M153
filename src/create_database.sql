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
    Text varchar(1000) not null,
    CreatedBy integer foreign key references User(ID)
    CreatedDate datetime not null,
    ParentPost integer null foreign key references Post(ID)
);