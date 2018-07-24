create or replace procedure NEW_EMP(enp in emp.empno%type,em in emp.ename%TYPE,dpno in emp.deptno%type)
is 

begin 
if(VALID_DEPTNO(dpno)=1)
then
insert into emp (empno,ename,deptno) values (enp,em,dpno);
else
dbms_output.put_line('error occured');
end if;
end;

create or replace function VALID_DEPTNO (dno in dept.deptno%type)return number
is 
c number;
begin
select  count(1)into c from dept where deptno=dno;
return c;
end;


declare
dpno dept.deptno%type:=:Enter_Department_number;
em emp.ename%type:=:Enter_Employee_name;
en emp.empno%type:=:Enter_Employee_number;
begin
NEW_EMP (en,em,dpno);
end;
 