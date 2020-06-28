create or replace function fisrtName(Name in varchar2) return varchar2 is
  FunctionResult varchar2(100);
begin
  FunctionResult:= regexp_substr(Name,'\S*');
  return(FunctionResult);
end fisrtName;

create or replace function LastName(Name in varchar2 ) return varchar2 is
  FunctionResult varchar2(100);
begin
   FunctionResult:= regexp_replace(Name,fisrtName(Name), '');
FunctionResult:= regexp_replace(FunctionResult,' ', '');
  return(FunctionResult);
end LastName;
