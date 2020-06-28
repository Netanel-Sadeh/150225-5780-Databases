Select w.WORKERNAME,w.WID
from WORKER W inner JOIN CONTRACTOR C on W.CID=C.CID
where W.YEARSOFWORK >30 and w.yearsofwork*1000>c.salary;
