create or replace view area_worker as
select a.areaname,a.areaid , w.workername, w.wid, w.phonenumberw,w.email 
from worker w, contractor c1,constructionproject p1,projectin pi, area a
where c1.cid=w.cid and c1.cid=p1.cid and p1.pid=pi.pid and pi.areaid=a.areaid
order by a.areaid
