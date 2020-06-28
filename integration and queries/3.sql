select kahna.claims.claim_status,constructionproject.pid,constructionproject.projectname,contractor.cid,contractor.contractorname,contractor.phonenumberc,contractor.email 
from  contractor,constructionproject full outer join kahna.claims on constructionproject.pid=kahna.claims.pid
where contractor.cid=constructionproject.cid
order by kahna.claims.claim_status
