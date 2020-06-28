select c.age , avg(c.salary) 
from contractor c
group by c.age
order by c.age, avg(c.salary);

select w.age , avg(w.yearsofwork) 
from worker w 
group by w.age
order by w.age, avg(w.yearsofwork);

select w.gender ,count(*) 
from worker w
group by w.gender;

select c.gender ,count(*) 
from contractor c
group by c.gender;

select  a.areaname , count(*) 
from area a
group by a.areaname
order by a.areaname, count(*);




