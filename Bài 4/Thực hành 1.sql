-- hiển thị số lượng sinh viên ở từng nơi--
select address, count(studentID) as 'Số lượng học viên' from student
group by address;


-- tính điểm trung bình
select student.studentID, student.studentname, avg(mark)
from student join mark on student.studentID = mark.studentId
group by student.studentID, student.studentname;


-- hiển thị học viên có điểm trung bình trên 15
select student.studentID, student.studentname, avg(mark)
from student join mark on student.studentID = mark.studentId
group by student.studentID, student.studentname
having avg(mark) > 15;


-- hiển thị thông tin học viên có điểm trung bình lớn nhất
select student.studentID, student.studentname, avg(mark)
from student join mark on student.studentID = mark.studentId
group by student.studentID, student.studentname
having avg(mark) >= all (select avg(mark) from mark group by mark.studentId);