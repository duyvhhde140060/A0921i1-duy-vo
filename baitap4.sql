use quanlysinhvien;
SELECT * FROM QuanLySinhVien.Subject;
select *, MAX(credit) from Subject group by SubId ;
select * from mark where mark = (select MAX(mark) from mark) ;
select student.StudentID, student.StudentName, student.Address, 
student.Phone, avg(Mark) from student inner join mark on student.StudentID = mark.StudentID 
group by student.StudentID order by avg(Mark) desc;


