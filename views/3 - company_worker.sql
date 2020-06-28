create or replace view company_worker as
select w.workername,w.wid, c.companyname
from contractor c,worker w
where c.cid=w.cid
order by w.wid
