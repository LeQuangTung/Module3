create database Quanlysinhvien;
create table class(
classID int not null auto_increment primary key,
className varchar(60) not null,
startdate datetime not null,
status bit
);

create table student(
studentID int not null auto_increment primary key,
studentname varchar(30) not null,
address varchar(50),
phone varchar(20),
status bit,
classId int not null,
foreign key (classId) references class (classID)
);

create table subject(
subId int not null auto_increment primary key,
subname varchar(30) not null,
credit tinyint not null default 1 check ( credit >= 1),
status bit default 1
);

create table Mark(
markId int not null auto_increment primary key,
subId int not null,
studentId int not null,
mark float default 0 check (mark between 0 and 100),
examtimes tinyint default 1,
unique (subId, studentId),
foreign key (subId) references subject (subId),
foreign key (studentId) references student (studentId)
);

