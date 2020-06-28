create or replace view contractor_worker as
select w.workername,w.wid,w.phonenumberw, c.contractorname,c.cid,c.phonenumberc
from contractor c,worker w
where c.cid=w.cid
order by w.wid
