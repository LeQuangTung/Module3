-- hiển thị thông tin môn học có credit lớn nhất
select subject.subId, subject.subname, subject.credit, subject.status from subject
where credit >= all (select credit from subject order by subId);

-- hiển thị thông tin môn học có điểm thi lớn nhất
select subject.subId, subject.subname, subject.status, mark.mark from subject
join mark on mark.subId = subject.subId
where mark.mark >= all (select mark.mark from mark group by mark.subId);

-- hiển thị thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp theo điểm giảm dần
select student.studentID, student.studentname, avg(mark.mark) as AvgPoint from student
join mark on mark.studentId = student.studentID
group by student.studentID
order by AvgPoint desc, studentname asc;