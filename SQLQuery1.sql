create database ProjectsDB;

create table Products(
pid int primary key identity,
pname varchar(30),
price money)

drop table Products

create table Customer(
mobno bigint primary key,
custname varchar(30),
loc varchar(30),
addr varchar(30),
pass varchar(20))

create table Orders(
oid int primary key identity,
prid int references Products(pid),
cuid bigint references Customer(mobno),
qty money,
totalamt money
)

drop table Orders