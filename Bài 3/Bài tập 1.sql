select * from student where studentname like 'h%';

select * from class where startdate like '%12%';

select * from subject where credit between 3 and 5;

update student
set classId = 2
where studentname = 'Hung';

select s.studentname, sub.subname, m.mark 
from student s join mark m on s.studentID = m.studentId join subject sub on m.subId = sub.subId
order by m.mark desc, s.studentname asc;