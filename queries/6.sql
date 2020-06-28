Select c.CONTRACTORNAME,w.workername,c.CID,w.wid, c.phonenumberc,w.phonenumberw
from CONTRACTOR c inner join worker w on c.cid=w.cid
Where (c.phonenumberc like '0%' and w.phonenumberw like '0%') or
(c.phonenumberc like'1%' and w.phonenumberw like '1%') or
(c.phonenumberc like '2%' and w.phonenumberw like '2%') or
(c.phonenumberc like '3%' and w.phonenumberw like '3%') or
(c.phonenumberc like '4%' and w.phonenumberw like '4%') or
(c.phonenumberc like '5%' and w.phonenumberw like '5%') or
(c.phonenumberc like '6%' and w.phonenumberw like '6%') or
(c.phonenumberc like '7%' and w.phonenumberw like '7%') or
(c.phonenumberc like '8%' and w.phonenumberw like '8%') or
(c.phonenumberc like '9%' and w.phonenumberw like '9%')
order by c.phonenumberc
