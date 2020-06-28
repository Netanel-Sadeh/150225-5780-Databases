create or replace view projecr_area as
select a.areaname,a.areaid, p1.projectname,p1.pid 
from worker w, contractor c1,constructionproject p1, projectin pi, area a
where c1.cid=w.cid and c1.cid=p1.cid and p1.pid=pi.pid and pi.areaid=a.areaid
order by a.areaid,a.areaname
