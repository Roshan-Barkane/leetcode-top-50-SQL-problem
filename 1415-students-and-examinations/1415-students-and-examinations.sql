# Write your MySQL query statement below
select std.student_id , std.student_name , sub.subject_name ,
count(exam.subject_name) as attended_exams
from Students std
cross join Subjects sub
left join Examinations exam
on std.student_id = exam.student_id 
and exam.subject_name = sub.subject_name
group by std.student_id , std.student_name , sub.subject_name 
order by std.student_id , std.student_name
