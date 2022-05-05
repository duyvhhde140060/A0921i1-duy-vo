USE QuanLySinhVien;
SELECT StudentName 
FROM student
WHERE LEFT(StudentName, 1) = 'h';
Select ClassName from class where month(StartDate) = 12;
select * from Subject where Credit between 3 and 5;
UPDATE student set student.ClassId = 2 where student.StudentName = 'hung';
select student.StudentName, subject.SubName, Mark.Mark from student, subject, mark order by mark.mark asc

 