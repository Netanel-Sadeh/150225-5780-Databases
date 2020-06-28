create or replace view project_contractor as
select p1.pid,p1.projectname,c1.cid,c1.contractorname ,(select count (*) from constructionproject p2 join contractor c2 on  p2.cid=c2.cid where c1.cid=c2.cid ) as count,( p1.finishdate - to_date('01/01/2020','DD/MM/YYYY'))/360 as timeLeftToFinsh
from contractor c1 join constructionproject p1 on c1.cid=p1.cid
order by (p1.finishdate - to_date('01/01/2020','DD/MM/YYYY'))/360 desc
