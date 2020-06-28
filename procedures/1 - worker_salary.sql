create or replace procedure worker_salary is
cid number;
totalSalaries number;
cursor workerIterator
is Select w.WID, w.YEARSOFWORK, c.CID,c.companyname 
     From worker w, contractor c
    Where w.CID = c.CID
    Order By w.CID; 
begin
   totalSalaries := 0;
   cid := 0 ;
   for work_rec in workerIterator
       loop
           if work_rec.cid!=cid and cid!=0 then
              dbms_output.put_line('Total Salaries for all workers of company: ' ||  
              work_rec.companyname || ' is '|| totalSalaries);   
              totalSalaries:=0;
           end if;
           dbms_output.put_line('worker_id: ' || work_rec.wid || ', worker year salary :'  ||      
           8000*12*1.1*work_rec.yearsofwork );
           totalSalaries:= totalSalaries+8000*12*1.1*work_rec.yearsofwork;
           cid:=work_rec.cid;
      end loop;
end worker_salary;
