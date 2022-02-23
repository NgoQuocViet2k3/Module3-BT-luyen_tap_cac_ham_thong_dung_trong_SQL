use quanlisinhvien;
select * from subject
WHERE credit = (SELECT MAX(credit) FROM subject);

select * 
from subject Sub join mark M on Sub.SubID = M.SubID
WHERE mark >= ALL(SELECT mark FROM mark)
;

select S.*,avg(M.mark) as "Điểm TB"
from student S join Mark M on S.StudentID = M.StudentID
group by S.StudentID
order by "Điểm TB" desc;