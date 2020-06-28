select kahna.claims.claim_status,constructionproject.pid,constructionproject.projectname,contractor.cid,contractor.contractorname,contractor.phonenumberc,contractor.email,constructionproject.startdate,constructionproject.finishdate
from  contractor,constructionproject full outer join kahna.claims on constructionproject.pid=kahna.claims.pid
where contractor.cid=constructionproject.cid
and kahna.claims.claim_status like 'at court'
order by constructionproject.finishdate,constructionproject.startdate
