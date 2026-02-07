use sqlclass
select * from cardekho_dataset
select * from student_performance
--Answer1--
select * , rank() over (order by score desc)as rnk from student_performance
--Answer2--
select student_id,name, score,lag(score,1) over(order by score desc)  as previous_student_score from student_performance
--Answer3--
select upper(name), month(join_date) from  student_performance
--Answer4--
select student_id , attendance, lead(attendance,1) over(order by attendance) as next_student_attendance from student_performance
--Answer5--
select student_id,name, attendance, ntile(4) over (order by attendance desc) as performance_group from student_performance;
--Answer6--
select *, row_number() over (partition by course order by attendance desc) as a from student_performance
--Answer7--
select student_id,name,datediff('2025-01-01',join_date)as Result  from student_performance
--Answer8--
select date_format(join_date,'%M-%Y') as formatted_date from student_performance
--Answer9--
select replace(city,'Mumbai','MUM') as city from student_performance
--Answer10--
select course, first_value(score) over(partition by course) from student_performance






