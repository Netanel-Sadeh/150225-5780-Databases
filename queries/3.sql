Select p.projectName, p.pid, c.cid ,c.contractorname
From  ConstructionProject p inner join contractor c on p.cid=c.cid
Where p.finishdate - p.startdate > 10000
