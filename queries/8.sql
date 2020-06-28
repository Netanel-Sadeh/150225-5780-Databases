Select w.workername,w.wid,w.age,w.age + (( p.finishdate - to_date('01/01/2020','DD/MM/YYYY'))/360) as workerAgeAtfinish
from CONTRACTOR c, worker w,constructionproject p
where c.cid=w.cid and c.cid = p.cid 
order by w.age + (( p.finishdate - to_date('01/06/2020','DD/MM/YYYY'))/360),p.startdate,p.finishdate
