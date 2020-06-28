create or replace view area_contractor as
select a.areaname,a.areaid ,c1.cid,c1.contractorname,c1.phonenumberc,c1.email
from contractor c1,constructionproject p1,projectin pi, area a
where c1.cid=p1.cid and p1.pid=pi.pid and pi.areaid=a.areaid
order by a.areaid
