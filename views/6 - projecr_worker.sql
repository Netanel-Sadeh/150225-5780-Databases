create or replace view projecr_worker as
select p1.projectname,p1.pid,w.workername, w.wid, w.phonenumberw,w.email 
from worker w, contractor c1,constructionproject p1
where c1.cid=w.cid and c1.cid=p1.cid
order by p1.pid
