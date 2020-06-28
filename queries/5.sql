Select c.CONTRACTORNAME,w.workername,c.CID,w.wid
from CONTRACTOR c inner join worker w on c.cid=w.cid
Where c.age < w.age
