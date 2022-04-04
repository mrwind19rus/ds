--task1  (lesson2)
-- oracle: https://leetcode.com/problems/department-top-three-salaries/

--task2  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/17
select fm.member_name, fm.status,  SUM(pay.amount * pay.unit_price) costs
from FamilyMembers fm
join Payments pay on pay.family_member = fm.member_id
WHERE YEAR(pay.DATE) = 2005
GROUP BY fm.status, fm.member_name

--task3  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/13
select name from Passenger GROUP BY name HAVING COUNT(name) > 1

--task4  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/38
select COUNT(*) as COUNT from Student WHERE first_name like 'Anna'

--task5  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/35
select COUNT(classroom) count from Schedule where date = '2019-09-02'

--task6  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/38
select COUNT(*) as COUNT from Student WHERE first_name like 'Anna'

--task7  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/32
SELECT round(avg((year(current_date()) - YEAR(birthday)))) age from FamilyMembers

--task8  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/27
SELECT gt.good_type_name, SUM(p.unit_price* p.amount) costs
from GoodTypes gt
JOIN Goods g on g.type = gt.good_type_id
join Payments p on p.good = g.good_id
where YEAR(p.DATE) = 2005
GROUP by gt.good_type_name

--task9  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/37
SELECT min((year(current_date()) - YEAR(birthday))) year from Student

--task10  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/44
SELECT max((year(current_date()) - YEAR(st.birthday))) max_year from Student st
join Student_in_class sic on st.id = sic.student
join class c on c.id = sic.class
where c.name like '10%'

--task11 (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/20
SELECT fm.status, fm.member_name, SUM(p.amount * p.unit_price) costs from FamilyMembers fm
JOIN Payments p on fm.member_id = p.family_member
JOIN Goods g on g.good_id = p.good
JOIN GoodTypes gt on gt.good_type_id = g.type
where gt.good_type_name like 'entertainment'
GROUP BY fm.status, fm.member_name

--task12  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/55
DELETE from Company where Company.id in (
select Company FROM trip GROUP BY Company
HAVING COUNT(id) = (
select min(cnt) from (
select COUNT(id) cnt from Trip GROUP BY Company) min_cnt))

--task13  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/45
select classroom from Schedule
GROUP BY classroom
HAVING COUNT(classroom) = (
SELECT COUNT(classroom) cnt from Schedule
GROUP BY classroom
ORDER BY cnt DESC LIMIT 1)

--task14  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/43
select t.last_name FROM Teacher t
JOIN Schedule s on s.teacher = t.id
join Subject sub on sub.id = s.subject
where sub.name like 'Physical Culture'
ORDER by t.last_name

--task15  (lesson2)
-- https://sql-academy.org/ru/trainer/tasks/63
--Тут не понятно как можно склеить имена
