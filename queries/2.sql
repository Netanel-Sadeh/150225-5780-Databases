SELECT C.Cid,(select C2.contractorname from contractor c2 where c.cid = c2.cid) as contractor_name,COUNT(*)
FROM CONTRACTOR C inner join Worker W on c.cid = w.cid 
WHERE c.salary >= (SELECT avg(salary)
   FROM CONTRACTOR)
group by C.cid
