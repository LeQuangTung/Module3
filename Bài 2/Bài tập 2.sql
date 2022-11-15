create database quanlybanhang;

create table customer(
cID int not null auto_increment primary key,
cName varchar(20) not null,
cAge int not null
);

create table orders(
oID int not null auto_increment primary key,
cID int not null,
oDate datetime not null,
oTotalPrice double,
foreign key (cID) references customer (cID)
);

create table product(
pID int not null auto_increment primary key,
pName varchar(20) not null,
pPrice double not null
);

create table orderDetail(
oID int not null,
pID int not null,
odQTY int not null,
unique (oID, pID),
foreign key (oID) references orders (oID),
foreign key (pID) references product (pID)
);
