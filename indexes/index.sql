create Index inx_contractor_salary on contractor(salary);

create Index inx_startdate on constructionproject(startdate);
create Index inx_finishdate on constructionproject(finishdate);

create index idx_worker_phoneNumberW on worker(phonenumberw);
create index idx_contractor_phoneNumberC on contractor(phonenumberc);

create index idx_worker_yearsofwork on worker(yearsofwork);

