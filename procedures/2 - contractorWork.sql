create or replace procedure contractorWork is
cursor contractorIterator
is Select c.contractorname, c.CID,p.projectname,p.pid,p.finishdate,p.startdate 
    From  contractor c, constructionproject p
    Where c.cid = p.CID
    order by p.finishdate;
begin
  for conI in contractorIterator
  loop
    if conI.Finishdate >=to_date('01/01/2020','DD/MM/YYYY') then
        dbms_output.put_line('the project: ' || conI.Projectname ||' 
        will end in '|| conI.Finishdate|| '
        total years: '|| (conI.finishdate-conI.startdate)/360);
    end if;
  end loop;
end contractorWork;
