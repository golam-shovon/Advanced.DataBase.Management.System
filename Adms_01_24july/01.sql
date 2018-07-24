create or replace procedure pp(dn in dept.deptno%TYPE, dm out dept.dname%type ,l out dept.loc%type,en out number)
is 
begin 
select dname,loc into dm,l from dept where deptno=dn;
select count(*) into en from emp where deptno=dn;
end;




declare
dn dept.deptno%type:=:Enter_Department_number;
dm dept.dname%type ;
l dept.loc%type;
en number;
begin
pp(dn,dm,l,en);
dbms_output.put_line(dm||l||en);
end;
