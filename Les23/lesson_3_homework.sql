--task1  (lesson3)
-- oracle: https://www.hackerrank.com/challenges/the-report/problem
select case when g.Grade > 7 then s.Name else 'NULL' end as err, G.Grade, S.Marks
from Students s
join Grades g ON s.Marks between g.Min_mark and g.Max_mark
order by g.Grade desc, err, s.Marks;

--task2  (lesson3)
-- oracle: https://www.hackerrank.com/challenges/occupations/problem
select doc, prof, sng, act from
(select Name, Occupation, (row_number() over(partition by Occupation order by Name)) as num from Occupations)
pivot (max(Name) for Occupation in ('Doctor' as doc, 'Professor' as prof, 'Singer' as sng, 'Actor' as act)) order by num;

--task3  (lesson3)
-- oracle: https://www.hackerrank.com/challenges/weather-observation-station-9/problem
select distinct city
from station
where city not like 'A%' and
city not like 'E%' and
city not like 'I%' and
city not like 'O%' and
city not like 'U%';

--task4  (lesson3)
-- oracle: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
select distinct city
from station
where city not like '%a' and
city not like '%e' and
city not like '%i' and
city not like '%o' and
city not like '%u';

--task5  (lesson3)
-- oracle: https://www.hackerrank.com/challenges/weather-observation-station-11/problem

select distinct city
from station
where (not(city  like 'A%' or city like 'E%' or city like 'O%' or city like 'I%' or city like 'U%')) or
(not (city like '%a' or city  like '%e' or city like '%i' or city like '%o' or city like '%u'))
order by city;

--task6  (lesson3)
-- oracle: https://www.hackerrank.com/challenges/weather-observation-station-12/problem
select distinct city from station where regexp_like(city, '^[^aeiouAEIOU].*[^aeiouAEIOU]$');

--task7  (lesson3)
-- oracle: https://www.hackerrank.com/challenges/salary-of-employees/problem
select name
from employee
where months < 10 and salary > 2000
order by employee_id asc;

--task8  (lesson3)
-- oracle: https://www.hackerrank.com/challenges/the-report/problem
select case when g.Grade > 7 then s.Name else 'NULL' end as err, G.Grade, S.Marks
from Students s
join Grades g ON s.Marks between g.Min_mark and g.Max_mark
order by g.Grade desc, err, s.Marks;