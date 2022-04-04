--task1  (lesson7)

--task2  (lesson7)
-- oracle: https://leetcode.com/problems/duplicate-emails/
select email from person group by email having count(*) > 1;

--task3  (lesson7)
-- oracle: https://leetcode.com/problems/employees-earning-more-than-their-managers/
select emp1.name as Employee
from employee emp1
join employee emp2 on emp1.managerid = emp2.id
where emp1.salary > emp2.salary

--task4  (lesson7)
-- oracle: https://leetcode.com/problems/rank-scores/
select s.score, dense_rank() over (order by s.score desc) as rank
from scores s

--task5  (lesson7)
-- oracle: https://leetcode.com/problems/combine-two-tables/
select p.firstname, p.lastname, a.city, a.state from person p
left join address a on p.personid = a.personid
