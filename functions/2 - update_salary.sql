create or replace function update_salary(salary in number,age in number,workers in number) return number is
  FunctionResult number;
begin
  FunctionResult := salary-workers*300+(age-20)*0.01*salary;
  return(FunctionResult);
end update_salary;
