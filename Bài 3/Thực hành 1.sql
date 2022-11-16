insert into class
value (1, 'A1', '2008-12-20', 1);
insert into class
value (2, 'A2', '2008-12-22', 1);
insert into class
value (3, 'B3', current_date(), 0);

insert into student (studentname, address, phone, status, classId)
value ('Hung', 'Ha Noi', '0912113113', 1, 1);
insert into student (studentname, address, status, classId)
value ('Hoa', 'Hai Phong', 1, 1);
insert into student (studentname, address, phone, status, classId)
value ('Manh', 'HCM', '0123123123', 0, 2);
insert into student (studentname, address, phone, status, classId)
value ('Duc', 'Ha Noi', '0123321321', 1, 2);

insert into subject
value (1, 'CF', 5, 1),
	  (2, 'C', 6, 1),
      (3, 'HDJ', 5, 1),
      (4, 'RDBMS', 10, 1),
      (8, 'AA', 7, 1);
      
insert into mark (subId, studentId, mark, examtimes)
value (1, 1, 8, 1),
	  (1, 2, 10, 2),
      (2, 1, 12, 1),
      (2, 4, 20, 1);