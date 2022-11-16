select * from student;

select * from student
where status = true;

select * from subject
where credit < 10;

select s.studentId, s.studentname, c.classname
from student s join class c on s.classId = c.classID;

select s.studentId, s.studentname, c.classname
from student s join class c on s.classId = c.classID
where c.className = 'A1';

select s.studentId, s.studentname, sub.subname, m.mark
from student s join mark m on s.studentID = m.studentId join subject sub on m.subId = sub.subId;

select s.studentId, s.studentname, sub.subname, m.mark
from student s join mark m on s.studentID = m.studentId join subject sub on m.subId = sub.subId
where sub.subname = 'CF';