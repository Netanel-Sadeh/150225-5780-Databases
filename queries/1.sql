Select CONTRACTORNAME,CID
from CONTRACTOR
Where CID in 
(
select CONTRACTOR.Cid
From WORKER inner join CONTRACTOR on worker.cid = contractor.cid
group by CONTRACTOR.CID
having count(*)>= 5
);
