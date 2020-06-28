Select c.contractorname,c.cid,p.startdate,p.finishdate,c.age,c.age + (( p.finishdate - to_date('01/01/2020','DD/MM/YYYY'))/360) 
as contractorAgeAtfinish
from CONTRACTOR c ,constructionproject p
where c.cid = p.cid 
order by c.age + (( p.finishdate - to_date('01/06/2020','DD/MM/YYYY'))/360),p.startdate,p.finishdate
