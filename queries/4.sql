Select p.projectName,p.startdate,p.finishdate, p.pid ,c.contractorname, c.cid
From  ConstructionProject p inner join contractor c on p.cid=c.cid
Where p.finishdate < to_date('01/01/2030','DD/MM/YYYY')
and p.startdate > to_date('01/01/2000','DD/MM/YYYY')
order by p.startdate,p.finishdate
