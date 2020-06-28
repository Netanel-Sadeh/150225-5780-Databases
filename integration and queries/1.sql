select contractor.cid,contractor.contractorname,count(*),contractor.age,contractor.phonenumberc,contractor.email
from contractor join kahna.claims
on contractor.cid = kahna.claims.contractorid
where kahna.claims.claim_status like 'appeal' or kahna.claims.claim_status like 'at court' 
group by contractor.cid,contractor.contractorname,contractor.age,contractor.phonenumberc,contractor.email
having count(*)>1
order by count(*)
